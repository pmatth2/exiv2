#include <clocale>
#include <cstdint>
#include <system_error>

#include "enforce.hpp"
#include "helper_functions.hpp"

#include <gtest/gtest.h>

TEST(string_from_unterminated, terminatedArray)
{
    const char data[5] = {'a', 'b', 'c', 0, 'd'};
    const std::string res = string_from_unterminated(data, 5);

    ASSERT_EQ(res.size(), 3u);
    ASSERT_STREQ(res.c_str(), "abc");
}

TEST(string_from_unterminated, unterminatedArray)
{
    const char data[4] = {'a', 'b', 'c', 'd'};
    const std::string res = string_from_unterminated(data, 4);

    ASSERT_EQ(res.size(), 4u);
    ASSERT_STREQ(res.c_str(), "abcd");
}

struct WideStr2Utf8Test : public ::testing::Test
{
    WideStr2Utf8Test()
    {
        if (std::setlocale(LC_ALL, "en_US.UTF-8") == nullptr) {
            throw std::system_error(errno, std::system_category(), "Could not set locale to 'en_US.UTF-8'");
        }
    }

    ~WideStr2Utf8Test()
    {
        std::setlocale(LC_ALL, "C");
    }
};

TEST_F(WideStr2Utf8Test, asciiString)
{
    const std::wstring wStr{L"this is an ordinary ASCII string"};
    const std::string res = wideStr2Str(wStr);

    ASSERT_STREQ(res.c_str(), "this is an ordinary ASCII string");
}

TEST_F(WideStr2Utf8Test, UtfString)
{
    const std::wstring wStr{L"This String cöntains Special characters: zß水"};
    const std::string res = wideStr2Str(wStr);

    ASSERT_STREQ(res.c_str(), u8"This String cöntains Special characters: zß水");
}

TEST_F(WideStr2Utf8Test, invalidUnicodeStringConversion)
{
    const std::wstring wStr{L"\000"};
    const std::string res = wideStr2Str(wStr);

    ASSERT_STREQ(res.c_str(), "");
}
