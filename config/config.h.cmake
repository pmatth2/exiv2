// File generated by cmake from config/config.h.cmake.

#pragma once
#ifndef _EXV_CONF_H_
#define _EXV_CONF_H_

// Defined if you want to use libssh for SshIO.
#cmakedefine EXV_USE_SSH

// Define to 1 if you want to use libcurl in httpIO.
#cmakedefine EXV_USE_CURL

// Define if you require webready support.
#cmakedefine EXV_ENABLE_WEBREADY

// Define if you have the `gmtime_r' function.
#cmakedefine EXV_HAVE_GMTIME_R

// Define if you have the <libintl.h> header file.
#cmakedefine EXV_HAVE_LIBINTL_H

// Define if you want translation of program messages to the user's native language
#cmakedefine EXV_ENABLE_NLS

// Define if you want video support.
#cmakedefine EXV_ENABLE_VIDEO

// Define if you have correct declaration of strerror_r().
#cmakedefine EXV_HAVE_DECL_STRERROR_R

// Define to enable the Windows unicode path support.
#cmakedefine EXV_UNICODE_PATH

/* Define to `const' or to empty, depending on the second argument of `iconv'. */
#cmakedefine ICONV_ACCEPTS_CONST_INPUT
#if defined ICONV_ACCEPTS_CONST_INPUT
#define EXV_ICONV_CONST const
#else
#define EXV_ICONV_CONST
#endif

// Define if you have the <regex.h> header file.
#cmakedefine EXV_HAVE_REGEX_H

// Define if have the <memory.h> header file.
#cmakedefine EXV_HAVE_MEMORY_H

// Define if you have the memset function.
#cmakedefine EXV_HAVE_MEMSET

// Define if stdbool.h conforms to C99.
#cmakedefine EXV_HAVE_STDBOOL_H

// Define if you have the <stdint.h> header file.
#cmakedefine EXV_HAVE_STDINT_H

#ifndef      EXV_HAVE_STDINT_H
#if defined(__MINGW32__) || defined(__MINGW64__)
#define      EXV_HAVE_STDINT_H
#endif
#endif

// Define if you have the <stdlib.h> header file.
#cmakedefine EXV_HAVE_STDLIB_H

// Define if you have the strerror function.
#cmakedefine EXV_HAVE_STRERROR

// Define if you have the strerror_r function.
#cmakedefine EXV_HAVE_STRERROR_R

// Define if strerror_r returns char *.
#cmakedefine STRERROR_R_CHAR_P

// Define if you have the <strings.h> header file.
#cmakedefine EXV_HAVE_STRINGS_H

// Define if you have the strtol function.
#cmakedefine EXV_HAVE_STRTOL

// Define if you have the mmap function.
#cmakedefine EXV_HAVE_MMAP

// Define if you have the munmap function.
#cmakedefine EXV_HAVE_MUNMAP

// Define if you have <sys/stat.h> header file.
#cmakedefine EXV_HAVE_SYS_STAT_H

// Define if you have  the <sys/types.h> header file.
#cmakedefine EXV_HAVE_SYS_TYPES_H

// Define if you have the timegm function.
#cmakedefine EXV_HAVE_TIMEGM

/* Define if you have the <unistd.h> header file. */
#cmakedefine EXV_HAVE_UNISTD_H 1

#if !defined( EXV_HAVE_UNISTD_H) && defined(__CYGWIN__)
#define EXV_HAVE_UNISTD_H 1
#endif

// Define if you have the <sys/mman.h> header file.
#cmakedefine EXV_HAVE_SYS_MMAN_H

// Define if you have are using the zlib library.
#cmakedefine EXV_HAVE_LIBZ

#if defined(_MSC_VER) && HAVE_LIBZ
  #if (_MSC_VER < 1400) && !defined(vsnprintf)
  #define vsnprintf _vsnprintf
  #endif
#endif

// Define if you have the <process.h> header file.
#cmakedefine EXV_HAVE_PROCESS_H

/* Define if you have (Exiv2/xmpsdk) Adobe XMP Toolkit. */
#cmakedefine EXV_HAVE_XMP_TOOLKIT

/* Define to 1 if `lstat' dereferences a symlink specified with a trailing
   slash. */
#cmakedefine EXV_LSTAT_FOLLOWS_SLASHED_SYMLINK 1

/* Define to the name of this package. */
#cmakedefine EXV_PACKAGE "@EXV_PACKAGE@"

/* Define to the full name of this package. */
#cmakedefine EXV_PACKAGE_NAME "@EXV_PACKAGE_NAME@"

/* Define to the full name and version of this package. */
#cmakedefine EXV_PACKAGE_STRING "@EXV_PACKAGE_STRING@"

/* Define to the version of this package. */
#cmakedefine EXV_PACKAGE_VERSION "@PACKAGE_VERSION@"

/* Define to empty if `const' does not conform to ANSI C. */
#cmakedefine const

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
#cmakedefine inline
#endif

/* Define to rpl_malloc if the replacement function should be used. */
#cmakedefine malloc

/* Define to rpl_realloc if the replacement function should be used. */
#cmakedefine realloc

/* Define to `unsigned' if <sys/types.h> does not define. */
#cmakedefine size_t

// ------------------------------------------------------------------
// The following features are not available for Commercial use
#ifndef EXV_COMMERCIAL_VERSION

// Definition to enable translation of Nikon lens names.
#cmakedefine EXV_HAVE_LENSDATA

// Define if you have the iconv function.
#cmakedefine EXV_HAVE_ICONV

// Definition to enable conversion of UCS2 encoded Windows tags to UTF-8.
#cmakedefine EXV_HAVE_PRINTUCS2

#endif /* !EXV_COMMERCIAL_VERSION */
// ------------------------------------------------------------------
#endif /* !_EXV_CONF_H_ */
// That's All Folks!
// ------------------------------------------------------------------
