Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo4.mail-out.ovh.net ([46.105.72.36]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjk-0000WK-Pg
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:34:57 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id B0D96104E71C
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:15 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:34 +0100
Message-Id: <1362562189-17783-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130306092643.GF4401@game.jcrosoft.org>
 <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/20] app: Introduce libc support
To: barebox@lists.infradead.org

with dummy malloc or tslf malloc

and provide a pseudo libc to simplify application porting

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 apps/Kconfig               |   19 ++
 apps/Makefile              |   10 +-
 apps/include/appinfo.h     |    2 +
 apps/include/assert.h      |   32 +++
 apps/include/common.h      |   28 ++
 apps/include/ctype.h       |  100 +++++++
 apps/include/dirent.h      |   24 ++
 apps/include/errno.h       |   24 ++
 apps/include/fcntl.h       |   25 ++
 apps/include/getopt.h      |   76 ++++++
 apps/include/libc_config.h |  139 ++++++++++
 apps/include/limits.h      |   38 +++
 apps/include/malloc.h      |   30 +++
 apps/include/module.h      |    3 +
 apps/include/sections.h    |   29 ++
 apps/include/setjmp.h      |   25 ++
 apps/include/stddef.h      |    1 +
 apps/include/stdint.h      |   23 ++
 apps/include/stdio.h       |   70 +++++
 apps/include/stdlib.h      |   29 ++
 apps/include/string.h      |   53 ++++
 apps/include/sys/ioctl.h   |   12 +
 apps/include/sys/stat.h    |   14 +
 apps/include/sys/syscall.h |   14 +
 apps/include/sys/types.h   |   15 ++
 apps/include/time.h        |   27 ++
 apps/include/unistd.h      |   46 ++++
 apps/libc/Kconfig          |   25 ++
 apps/libc/Makefile         |   36 +++
 apps/libc/appinfo.c        |   35 +++
 apps/libc/dirent.c         |   59 +++++
 apps/libc/errno.c          |   19 ++
 apps/libc/fcntl.c          |   25 ++
 apps/libc/flags.c          |   76 ++++++
 apps/libc/getopt.c         |  127 +++++++++
 apps/libc/getopt_long.c    |  625 ++++++++++++++++++++++++++++++++++++++++++++
 apps/libc/malloc.c         |   50 ++++
 apps/libc/malloc.h         |    2 +
 apps/libc/private.h        |   18 ++
 apps/libc/stdio.c          |  275 +++++++++++++++++++
 apps/libc/stdlib.c         |   77 ++++++
 apps/libc/string.c         |  159 +++++++++++
 apps/libc/sys/Makefile     |    2 +
 apps/libc/sys/stat.c       |   25 ++
 apps/libc/syscalls.c       |  103 ++++++++
 apps/libc/time.c           |   41 +++
 apps/libc/unistd.c         |  108 ++++++++
 47 files changed, 2791 insertions(+), 4 deletions(-)
 create mode 100644 apps/include/assert.h
 create mode 100644 apps/include/common.h
 create mode 100644 apps/include/ctype.h
 create mode 100644 apps/include/dirent.h
 create mode 100644 apps/include/errno.h
 create mode 100644 apps/include/fcntl.h
 create mode 100644 apps/include/getopt.h
 create mode 100644 apps/include/libc_config.h
 create mode 100644 apps/include/limits.h
 create mode 100644 apps/include/malloc.h
 create mode 100644 apps/include/module.h
 create mode 100644 apps/include/sections.h
 create mode 100644 apps/include/setjmp.h
 create mode 100644 apps/include/stddef.h
 create mode 100644 apps/include/stdint.h
 create mode 100644 apps/include/stdio.h
 create mode 100644 apps/include/stdlib.h
 create mode 100644 apps/include/string.h
 create mode 100644 apps/include/sys/ioctl.h
 create mode 100644 apps/include/sys/stat.h
 create mode 100644 apps/include/sys/syscall.h
 create mode 100644 apps/include/sys/types.h
 create mode 100644 apps/include/time.h
 create mode 100644 apps/include/unistd.h
 create mode 100644 apps/libc/Kconfig
 create mode 100644 apps/libc/Makefile
 create mode 100644 apps/libc/appinfo.c
 create mode 100644 apps/libc/dirent.c
 create mode 100644 apps/libc/errno.c
 create mode 100644 apps/libc/fcntl.c
 create mode 100644 apps/libc/flags.c
 create mode 100644 apps/libc/getopt.c
 create mode 100644 apps/libc/getopt_long.c
 create mode 100644 apps/libc/malloc.c
 create mode 100644 apps/libc/malloc.h
 create mode 100644 apps/libc/private.h
 create mode 100644 apps/libc/stdio.c
 create mode 100644 apps/libc/stdlib.c
 create mode 100644 apps/libc/string.c
 create mode 100644 apps/libc/sys/Makefile
 create mode 100644 apps/libc/sys/stat.c
 create mode 100644 apps/libc/syscalls.c
 create mode 100644 apps/libc/time.c
 create mode 100644 apps/libc/unistd.c

diff --git a/apps/Kconfig b/apps/Kconfig
index 92899b5..4805c50 100644
--- a/apps/Kconfig
+++ b/apps/Kconfig
@@ -7,6 +7,8 @@ menuconfig APPLICATIONS
 
 if APPLICATIONS
 
+source "apps/libc/Kconfig"
+
 menu "memory layout"
 
 source "arch/$SRCARCH/apps/Kconfig"
@@ -16,6 +18,23 @@ config APP_MALLOC_SIZE
 	default 0x400000
 	prompt "malloc area size"
 
+config APP_PATH_MAX
+	hex
+	default 4096
+	prompt "path max"
+
+config APP_ENV_MAX
+	hex
+	default 4096
+	prompt "env var max size"
+
+config APP_FILE_MAX
+	int
+	default 128
+	prompt "maximun number of FILE"
+	help
+	  this does not include stdin, stderr, stdout
+
 endmenu
 
 endif
diff --git a/apps/Makefile b/apps/Makefile
index 65adfdc..c5c5c48 100644
--- a/apps/Makefile
+++ b/apps/Makefile
@@ -1,5 +1,9 @@
 
-CPPFLAGS += -I$(srctree)/apps/include
+APP_CPPFLAGS += -include $(srctree)/apps/include/libc_config.h
+APP_CPPFLAGS += -I$(srctree)/apps/include
+export APP_CPPFLAGS
+
+apps-$(CONFIG_APP_EXAMPLE) += example
 
 $(obj)/application: $(apps-lds) $(apps-y)
 
@@ -11,9 +15,7 @@ $(obj)/include/types.h: $(srctree)/include/types.h
 $(obj)/include/barebox/syscalls.h: $(srctree)/include/apps/syscalls.h
 	$(call cmd,shipped)
 
-$(obj)/include/errno.h: $(srctree)/include/asm-generic/errno.h
-	$(call cmd,shipped)
+obj-y += libc/
 
 barebox-app-header += $(obj)/include/types.h
-barebox-app-header += $(obj)/include/errno.h
 barebox-app-header += $(obj)/include/barebox/syscalls.h
diff --git a/apps/include/appinfo.h b/apps/include/appinfo.h
index 94409d7..ba95e65 100644
--- a/apps/include/appinfo.h
+++ b/apps/include/appinfo.h
@@ -55,4 +55,6 @@
 /* What your application does. */
 #define APP_DESCRIPTION(_description) APP_INFO(description, _description)
 
+void print_appinfo(void);
+
 #endif /* __APPINFO_H__ */
diff --git a/apps/include/assert.h b/apps/include/assert.h
new file mode 100644
index 0000000..a5d1bdd
--- /dev/null
+++ b/apps/include/assert.h
@@ -0,0 +1,32 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __ASSERT_H__
+#define __ASSERT_H__
+
+#define NDEBUG
+#if defined(NDEBUG) || defined(CONFIG_APP_NDEBUG)
+#define assert(expression)
+#else
+#define assert(expression) do {	\
+	if (expression) { \
+		fprintf(stderr, "%s:%d: ", str(expression), __FUNCTION__, __LINE__); \
+		exit(EXIT_FAILURE); \
+	} \
+} while(0)
+#endif
+
+#endif /* __ASSERT_H__ */
diff --git a/apps/include/common.h b/apps/include/common.h
new file mode 100644
index 0000000..6e991e8
--- /dev/null
+++ b/apps/include/common.h
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __COMMON_H__
+#define __COMMON_H__
+
+#include <linux/types.h>
+#include <linux/string.h>
+#include <linux/stddef.h>
+#include <stdio.h>
+
+#define BUG() do { \
+} while (0)
+
+#endif /* __COMMON_H__ */
diff --git a/apps/include/ctype.h b/apps/include/ctype.h
new file mode 100644
index 0000000..09eb175
--- /dev/null
+++ b/apps/include/ctype.h
@@ -0,0 +1,100 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __CTYPE_H__
+#define __CTYPE_H__
+
+static inline int tolower(int c)
+{
+	return (c >= 'A' && c <= 'Z') ? (c + 32) : c;
+}
+
+static inline int toupper(int c)
+{
+	return (c >= 'a' && c <= 'z') ? (c - 32) : c;
+}
+
+static inline int toascii(int c)
+{
+	return ((unsigned char)c) & 0x7f;
+}
+
+static inline int isalpha(int c)
+{
+	return ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'));
+}
+
+static inline int isascii(int c)
+{
+	return (c >= 0 && c <= 127);
+}
+
+static inline int isblank(int c)
+{
+	return (c == ' ' || c == '\t');
+}
+
+static inline int iscntrl(int c)
+{
+	return (c <= 31 || c == 127);
+}
+
+static inline int isdigit(int c)
+{
+	return (c >= '0' && c <= '9');
+}
+
+static inline int isalnum(int c)
+{
+	return isalpha(c) || isdigit(c);
+}
+
+static inline int isgraph(int c)
+{
+	return (c >= 33 && c <= 126);
+}
+
+static inline int islower(int c)
+{
+	return (c >= 'a' && c <= 'z');
+}
+
+static inline int isprint(int c)
+{
+	return (c >= 32 && c <= 126);
+}
+
+static inline int isspace(int c)
+{
+	return (c == ' ' || (c >= '\t' && c <= '\r'));
+}
+
+static inline int ispunct(int c)
+{
+	return isprint(c) && !isspace(c) && !isalnum(c);
+}
+
+static inline int isupper(int c)
+{
+	return (c >= 'A' && c <= 'Z');
+}
+
+static inline int isxdigit(int c)
+{
+	return isdigit(c) || (tolower(c) >= 'a' && tolower(c) <= 'f');
+}
+
+#endif /* __CTYPE_H__ */
diff --git a/apps/include/dirent.h b/apps/include/dirent.h
new file mode 100644
index 0000000..df26461
--- /dev/null
+++ b/apps/include/dirent.h
@@ -0,0 +1,24 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __DIRENT_H__
+#define __DIRENT_H__
+
+DIR *opendir(const char *name);
+struct dirent *readdir(DIR *dir);
+int closedir(DIR *dir);
+
+#endif /* __DIRENT_H__ */
diff --git a/apps/include/errno.h b/apps/include/errno.h
new file mode 100644
index 0000000..e7d5c90
--- /dev/null
+++ b/apps/include/errno.h
@@ -0,0 +1,24 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __ERRNO_H__
+#define __ERRNO_H__
+
+#include <asm-generic/errno.h>
+
+extern int errno;
+
+#endif /* __ERRNO_H__ */
diff --git a/apps/include/fcntl.h b/apps/include/fcntl.h
new file mode 100644
index 0000000..7bc8980
--- /dev/null
+++ b/apps/include/fcntl.h
@@ -0,0 +1,25 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __FCNTL_H__
+#define __FCNTL_H__
+
+#include <barebox/fcntl.h>
+
+/* barebox does not handle the last optionnal arg */
+int open(const char *name, int flags, ...);
+
+#endif /* __FCNTL_H__ */
diff --git a/apps/include/getopt.h b/apps/include/getopt.h
new file mode 100644
index 0000000..b6c03d1
--- /dev/null
+++ b/apps/include/getopt.h
@@ -0,0 +1,76 @@
+/*	$OpenBSD: getopt.h,v 1.2 2008/06/26 05:42:04 ray Exp $	*/
+/*	$NetBSD: getopt.h,v 1.4 2000/07/07 10:43:54 ad Exp $	*/
+
+/*-
+ * Copyright (c) 2000 The NetBSD Foundation, Inc.
+ * All rights reserved.
+ *
+ * This code is derived from software contributed to The NetBSD Foundation
+ * by Dieter Baron and Thomas Klausner.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE NETBSD FOUNDATION, INC. AND CONTRIBUTORS
+ * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
+ * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
+ * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE FOUNDATION OR CONTRIBUTORS
+ * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
+ * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
+ * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
+ * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
+ * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
+ * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
+ * POSSIBILITY OF SUCH DAMAGE.
+ */
+
+#ifndef _GETOPT_H_
+#define _GETOPT_H_
+
+#include <sys/types.h>
+
+/*
+ * GNU-like getopt_long() and 4.4BSD getsubopt()/optreset extensions
+ */
+#define no_argument        0
+#define required_argument  1
+#define optional_argument  2
+
+struct option {
+	/* name of long option */
+	const char *name;
+	/*
+	 * one of no_argument, required_argument, and optional_argument:
+	 * whether option takes an argument
+	 */
+	int has_arg;
+	/* if not NULL, set *flag to val when option found */
+	int *flag;
+	/* if flag not NULL, value to set *flag to; else return value */
+	int val;
+};
+
+int	 getopt_long(int, char * const *, const char *,
+	    const struct option *, int *);
+int	 getopt_long_only(int, char * const *, const char *,
+	    const struct option *, int *);
+#ifndef _GETOPT_DEFINED_
+#define _GETOPT_DEFINED_
+int	 getopt(int, char * const *, const char *);
+int	 getsubopt(char **, char * const *, char **);
+
+extern   char *optarg;                  /* getopt(3) external variables */
+extern   int opterr;
+extern   int optind;
+extern   int optopt;
+extern   int optreset;
+extern   char *suboptarg;               /* getsubopt(3) external variable */
+#endif
+
+#endif /* !_GETOPT_H_ */
diff --git a/apps/include/libc_config.h b/apps/include/libc_config.h
new file mode 100644
index 0000000..752a417
--- /dev/null
+++ b/apps/include/libc_config.h
@@ -0,0 +1,139 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __LIBC_CONFIG_H__
+#define __LIBC_CONFIG_H__
+
+#define LIBC_MAJOR	0
+#define LIBC_MINOR	1
+#define LIBC_SUBMINOR	0
+
+#define __str(x) #x
+#define str(x) __str(x)
+
+#define LIBC_VERSION(a,b,c) (((a) << 16) + ((b) << 8) + (c))
+#define LIBC_VERSION_CODE LIBC_VERSION(LIBC_MAJOR, LIBC_MINOR, LIBC_SUBMINOR)
+#define LIBC_VERSION_STRING str(LIBC_MAJOR) "." str(LIBC_MINOR) "." str(LIBC_SUBMINOR)
+
+/* dirent.h */
+#define LIBC_HAVE_DIRENT_H 1
+
+#define LIBC_HAVE_OPENDIR 1
+#define LIBC_HAVE_READDIR 1
+#define LIBC_HAVE_CLOSEDIR 1
+
+/* fcntl.h */
+#define LIBC_HAVE_FCNTL_H 1
+
+#define LIBC_HAVE_OPEN 1
+
+/* getopt.h */
+#define LIBC_HAVE_GETOPT_H 1
+
+#define LIBC_HAVE_GETOPT_LONG 1
+#define LIBC_HAVE_GETOPT_LONG_ONLY 1
+//#define LIBC_HAVE_GETOPT 1
+#define LIBC_HAVE_GETSUBOPT 1
+
+/* malloc.h */
+#define LIBC_HAVE_MALLOC_H 1
+
+#define LIBC_HAVE_MALLOC 1
+#define LIBC_HAVE_FREE 1
+#define LIBC_HAVE_REALLOC 1
+#define LIBC_HAVE_MEMALIGN 1
+#define LIBC_HAVE_CALLOC 1
+#define LIBC_HAVE_CFREE 1
+
+/* stdio.h */
+#define LIBC_HAVE_STDIO_H 1
+
+#define LIBC_HAVE_PUTCHAR 1
+#define LIBC_HAVE_GETCHAR 1
+#define LIBC_HAVE_PUTS 1
+
+#define LIBC_HAVE_FPRINTF 1
+#define LIBC_HAVE_VFPRINTF 1
+#define LIBC_HAVE_FPUTS 1
+#define LIBC_HAVE_FPUTC 1
+#define LIBC_HAVE_FOPEN 1
+#define LIBC_HAVE_FCLOSE 1
+#define LIBC_HAVE_FREAD 1
+#define LIBC_HAVE_FWRITE 1
+#define LIBC_HAVE_FSEEK 1
+
+#define LIBC_HAVE_PRINTF 1
+#define LIBC_HAVE_VPRINTF 1
+#define LIBC_HAVE_SPRINTF 1
+#define LIBC_HAVE_SNPRINTF 1
+#define LIBC_HAVE_VSPRINTF 1
+#define LIBC_HAVE_ASPRINTF 1
+#define LIBC_HAVE_VASPRINTF 1
+#define LIBC_HAVE_VSNPRINTF 1
+#define LIBC_HAVE_VSCNPRINTF 1
+
+/* barebox API */
+#define LIBC_HAVE_BAREBOX_API 1
+
+#define LIBC_HAVE_EPUTC 1
+#define LIBC_HAVE_EPUTS 1
+#define LIBC_HAVE_TSTC 1
+#define LIBC_HAVE_FLUSH 1
+#define LIBC_HAVE_ITOA 1
+
+/* stdlib.h */
+#define LIBC_HAVE_STDLIB_H 1
+
+#define LIBC_HAVE_GETENV 1
+#define LIBC_HAVE_EXIT 1
+
+/* unistd.h */
+#define LIBC_HAVE_UNISTD_H 1
+
+#define LIBC_HAVE_READ 1
+#define LIBC_HAVE_WRITE 1
+#define LIBC_HAVE_CLOSE 1
+#define LIBC_HAVE_STAT 1
+#define LIBC_HAVE_LSTAT 1
+
+#define LIBC_HAVE_LSEEK 1
+#define LIBC_HAVE_UNLINK 1
+#define LIBC_HAVE_SYMLINK 1
+#define LIBC_HAVE_READLINK 1
+#define LIBC_HAVE_RMDIR 1
+#define LIBC_HAVE_GETCWD 1
+#define LIBC_HAVE_GET_CURRENT_DIR_NAME 1
+#define LIBC_HAVE_CHDIR 1
+#define LIBC_HAVE_USLEEP 1
+
+#define LIBC_HAVE_GETOPT 1
+
+/* sys/ioctl.h */
+#define LIBC_HAVE_SYS_IOCTL_H 1
+
+#define LIBC_HAVE_IOCTL 1
+
+/* sys/stat.h */
+#define LIBC_HAVE_SYS_STAT_H 1
+
+#define LIBC_HAVE_MKDIR 1
+
+/* sys/syscall.h */
+#define LIBC_HAVE_SYS_SYSCALL_H 1
+
+#define LIBC_HAVE_SYSCALL 1
+
+#endif /* __LIBC_CONFIG_H__ */
diff --git a/apps/include/limits.h b/apps/include/limits.h
new file mode 100644
index 0000000..3625d07
--- /dev/null
+++ b/apps/include/limits.h
@@ -0,0 +1,38 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __LIMITS_H__
+#define __LIMITS_H__
+
+#include <sys/types.h>
+
+#define USHORT_MAX	((u16)(~0U))
+#define SHORT_MAX	((s16)(USHORT_MAX>>1))
+#define SHORT_MIN	(-SHORT_MAX - 1)
+#define INT_MAX		((int)(~0U>>1))
+#define INT_MIN		(-INT_MAX - 1)
+#define UINT_MAX	(~0U)
+#define LONG_MAX	((long)(~0UL>>1))
+#define LONG_MIN	(-LONG_MAX - 1)
+#define ULONG_MAX	(~0UL)
+#define LLONG_MAX	((long long)(~0ULL>>1))
+#define LLONG_MIN	(-LLONG_MAX - 1)
+#define ULLONG_MAX	(~0ULL)
+
+#define PATH_MAX	CONFIG_APP_PATH_MAX
+#define ENV_MAX		CONFIG_APP_ENV_MAX
+
+#endif /* __LIMITS_H__ */
diff --git a/apps/include/malloc.h b/apps/include/malloc.h
new file mode 100644
index 0000000..0017419
--- /dev/null
+++ b/apps/include/malloc.h
@@ -0,0 +1,30 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __MALLOC_H
+#define __MALLOC_H
+
+#include <types.h>
+
+void* malloc(size_t);
+void free(void*);
+void* realloc(void*, size_t);
+void* memalign(size_t, size_t);
+void* calloc(size_t, size_t);
+void cfree(void*);
+
+#endif
+
diff --git a/apps/include/module.h b/apps/include/module.h
new file mode 100644
index 0000000..c62d65b
--- /dev/null
+++ b/apps/include/module.h
@@ -0,0 +1,3 @@
+#define EXPORT_SYMBOL(sym)
+#define EXPORT_SYMBOL_GPL(sym)
+
diff --git a/apps/include/sections.h b/apps/include/sections.h
new file mode 100644
index 0000000..fc262a6
--- /dev/null
+++ b/apps/include/sections.h
@@ -0,0 +1,29 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef _APPS_GENERIC_SECTIONS_H_
+#define _APPS_GENERIC_SECTIONS_H_
+
+extern char _text[], _stext[], _etext[];
+extern char __bss_start[], __bss_stop[];
+extern char _sdata[], _edata[];
+extern char _end[];
+extern void *_barebox_app_image_size;
+extern char __appinfo_start[], __appinfo_end[];
+
+#define _barebox_app_image_size	(unsigned int)&_barebox_app_image_size
+
+#endif /* _APPS_GENERIC_SECTIONS_H_ */
diff --git a/apps/include/setjmp.h b/apps/include/setjmp.h
new file mode 100644
index 0000000..ff9dd8d
--- /dev/null
+++ b/apps/include/setjmp.h
@@ -0,0 +1,25 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __SETJMP_H__
+#define __SETJMP_H__
+
+#include <arch/setjmp.h>
+
+int setjmp(jmp_buf);
+void __attribute__((noreturn)) longjmp(jmp_buf, int);
+
+#endif /* __SETJMP_H__ */
diff --git a/apps/include/stddef.h b/apps/include/stddef.h
new file mode 100644
index 0000000..8b13789
--- /dev/null
+++ b/apps/include/stddef.h
@@ -0,0 +1 @@
+
diff --git a/apps/include/stdint.h b/apps/include/stdint.h
new file mode 100644
index 0000000..f5ad912
--- /dev/null
+++ b/apps/include/stdint.h
@@ -0,0 +1,23 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __STDINT_H__
+#define __STDINT_H__
+
+#define INT64_C(c) (c ## LL)
+#define UINT64_C(c) (c ## ULL)
+
+#endif /* __STDINT_H__ */
diff --git a/apps/include/stdio.h b/apps/include/stdio.h
new file mode 100644
index 0000000..32a7d25
--- /dev/null
+++ b/apps/include/stdio.h
@@ -0,0 +1,70 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __STDIO_H__
+#define __STDIO_H__
+
+#include <stdarg.h>
+#include <sys/types.h>
+
+#define EXIT_FAILURE	1
+#define EXIT_SUCCESS	0
+#define EOF -1
+
+void putchar(char c);
+int getchar(void);
+int puts(const char *str);
+
+struct __file;
+typedef struct __file FILE;
+
+extern FILE stdin;
+extern FILE stdout;
+extern FILE stderr;
+
+#define stdin (&stdin)
+#define stdout (&stdout)
+#define stderr (&stderr)
+
+int fprintf(FILE *f, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
+int vfprintf(FILE *f, const char *fmt, va_list args);
+int fputs(const char *s, FILE *f);
+int fputc(int c, FILE *f);
+FILE *fopen(const char *path, const char *mode);
+int fclose(FILE *f);
+size_t fread(void *buf, size_t size, size_t nb, FILE *f);
+size_t fwrite(const void *buf, size_t size, size_t nb, FILE *f);
+int fseek(FILE *stream, long offset, int whence);
+
+/* barebox API */
+void eputc(char c);
+int eputs(const char *str);
+int tstc(void);
+int flush(int fd);
+char* itoa(int i);
+
+static int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+static inline int printf(const char *fmt, ...)
+{
+	return 0;
+}
+
+static inline int vprintf(const char *fmt, va_list args)
+{
+	return 0;
+}
+
+#endif /* __STDIO_H__ */
diff --git a/apps/include/stdlib.h b/apps/include/stdlib.h
new file mode 100644
index 0000000..7ae78ad
--- /dev/null
+++ b/apps/include/stdlib.h
@@ -0,0 +1,29 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __STDLIB_H__
+#define __STDLIB_H__
+
+#define EXIT_FAILURE 1
+#define EXIT_SUCCESS 0
+
+char *getenv(const char *name);
+void exit(int num);
+int atoi(const char *s);
+long atol(const char *s);
+long long atoll(const char *s);
+
+#endif /* __STDLIB_H__ */
diff --git a/apps/include/string.h b/apps/include/string.h
new file mode 100644
index 0000000..95b94a3
--- /dev/null
+++ b/apps/include/string.h
@@ -0,0 +1,53 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __STRING_H
+#define __STRING_H
+
+#include <types.h>
+
+extern char * ___strtok;
+extern char * strpbrk(const char *,const char *);
+extern char * strtok(char *,const char *);
+extern char * strsep(char **,const char *);
+extern size_t strspn(const char *,const char *);
+
+extern char * strcpy(char *,const char *);
+extern char * strncpy(char *,const char *, size_t);
+size_t strlcpy(char *, const char *, size_t);
+extern char * strcat(char *, const char *);
+extern char * strncat(char *, const char *, size_t);
+extern int strcmp(const char *,const char *);
+extern int strncmp(const char *,const char *,size_t);
+extern char * strchr(const char *,int);
+extern char * strrchr(const char *,int);
+extern char * strstr(const char *,const char *);
+extern size_t strlen(const char *);
+extern size_t strnlen(const char *,size_t);
+extern char * strdup(const char *);
+extern char * strswab(const char *);
+
+extern void * memset(void *,int,size_t);
+extern void * memcpy(void *,const void *,size_t);
+extern void * memmove(void *,const void *,size_t);
+extern void * memscan(void *,int,size_t);
+extern int memcmp(const void *,const void *,size_t);
+extern void * memchr(const void *,int,size_t);
+extern char * skip_spaces(const char *);
+
+extern char *strim(char *);
+
+#endif /* __STRING_H */
diff --git a/apps/include/sys/ioctl.h b/apps/include/sys/ioctl.h
new file mode 100644
index 0000000..58e9760
--- /dev/null
+++ b/apps/include/sys/ioctl.h
@@ -0,0 +1,12 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+*/
+
+#ifndef __SYS_IOCTL_H__
+#define __SYS_IOCTL_H__
+
+int ioctl(int fd, int request, void *buf);
+
+#endif /* __SYS_IOCTL_H__ */
diff --git a/apps/include/sys/stat.h b/apps/include/sys/stat.h
new file mode 100644
index 0000000..c1cecf9
--- /dev/null
+++ b/apps/include/sys/stat.h
@@ -0,0 +1,14 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+*/
+
+#ifndef __SYS_STAT_H__
+#define __SYS_STAT_H__
+
+#include <linux/stat.h>
+
+int mkdir(const char *path, mode_t mode);
+
+#endif /* __SYS_STAT_H__ */
diff --git a/apps/include/sys/syscall.h b/apps/include/sys/syscall.h
new file mode 100644
index 0000000..4ffb09a
--- /dev/null
+++ b/apps/include/sys/syscall.h
@@ -0,0 +1,14 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+*/
+
+#ifndef __SYS_SYSCALL_H__
+#define __SYS_SYSCALL_H__
+
+#include <errno.h>
+
+int syscall(int num, ...);
+
+#endif /* __SYS_SYSCALL_H__ */
diff --git a/apps/include/sys/types.h b/apps/include/sys/types.h
new file mode 100644
index 0000000..ec48b2e
--- /dev/null
+++ b/apps/include/sys/types.h
@@ -0,0 +1,15 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+*/
+
+#ifndef __SYS_TYPES_H__
+#define __SYS_TYPES_H__
+
+#include <linux/types.h>
+#include <barebox/types.h>
+
+typedef unsigned int useconds_t;
+
+#endif /* __SYS_TYPES_H__ */
diff --git a/apps/include/time.h b/apps/include/time.h
new file mode 100644
index 0000000..d067e25
--- /dev/null
+++ b/apps/include/time.h
@@ -0,0 +1,27 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __TIME_H__
+#define __TIME_H__
+
+struct timespec {
+	time_t	tv_sec;		/* seconds */
+	long	tv_nsec;	/* nanoseconds */
+};
+
+int nanosleep(const struct timespec *req, struct timespec *rem);
+
+#endif /* __TIME_H__ */
diff --git a/apps/include/unistd.h b/apps/include/unistd.h
new file mode 100644
index 0000000..dbd8cef
--- /dev/null
+++ b/apps/include/unistd.h
@@ -0,0 +1,46 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#ifndef __UNISTD_H__
+#define __UNISTD_H__
+
+struct stat;
+
+ssize_t read(int fd, void *buf, size_t count);
+ssize_t write(int fd, const void *buf, size_t count);
+int close(int fd);
+int stat(const char *path, struct stat *buf);
+int lstat(const char *path, struct stat *buf);
+
+#define SEEK_SET        1
+#define SEEK_CUR        2
+#define SEEK_END        3
+
+loff_t lseek(int fd, loff_t offset, int whence);
+int unlink(const char *pathname);
+int symlink(const char *pathname, const char *newpath);
+ssize_t readlink(const char *path, char *buf, size_t bufsiz);
+int rmdir(const char *path);
+char *getcwd(char *buf, size_t size);
+char *get_current_dir_name(void);
+int chdir(const char *path);
+int usleep(unsigned int usec);
+
+int getopt(int argc, char * const argv[], const char *optstring);
+extern char *optarg;
+extern int optind, opterr, optopt;
+
+#endif /* __UNISTD_H__ */
diff --git a/apps/libc/Kconfig b/apps/libc/Kconfig
new file mode 100644
index 0000000..b9478b5
--- /dev/null
+++ b/apps/libc/Kconfig
@@ -0,0 +1,25 @@
+menu "libc"
+
+choice
+	prompt "malloc implementation"
+
+config APPS_MALLOC_TLSF
+	bool "tlsf"
+
+config APPS_MALLOC_DUMMY
+	bool "dummy malloc"
+	help
+	  select this option to use a dummy malloc implementation. With this
+	  memory is never freed. This is suitable for well tested noninteractive
+	  environments only.
+
+endchoice
+
+config APP_GETOPT_LONG_AS_GETOPT
+	bool "use getopt_long as getopt"
+
+config APP_PRINTF_STACK_SIZE
+	hex "printf stack size"
+	default 0x1000
+
+endmenu
diff --git a/apps/libc/Makefile b/apps/libc/Makefile
new file mode 100644
index 0000000..844ea9b
--- /dev/null
+++ b/apps/libc/Makefile
@@ -0,0 +1,36 @@
+app-y += appinfo.o
+app-y += dirent.o
+app-y += errno.o
+app-y += fcntl.o
+app-y += flags.o
+ifneq ($(CONFIG_APP_GETOPT_LONG_AS_GETOPT),y)
+app-y += getopt.o
+endif
+app-y += getopt_long.o
+app-y += malloc.o
+app-y += stdio.o
+app-y += stdlib.o
+app-y += syscalls.o
+app-y += unistd.o
+app-$(CONFIG_APPS_MALLOC_DUMMY) += dummy_malloc.o
+app-$(CONFIG_APPS_MALLOC_TLSF) += tlsf_malloc.o tlsf.o
+app-y += string.o
+obj-y += sys/
+app-y += time.o
+
+$(obj)/dummy_malloc.c: $(srctree)/common/dummy_malloc.c FORCE
+	$(call cmd,shipped)
+
+$(obj)/tlsf.c: $(srctree)/common/tlsf.c $(obj)/tlsfbits.h FORCE
+	$(call cmd,shipped)
+
+$(obj)/tlsf_malloc.c: $(srctree)/common/tlsf_malloc.c $(obj)/tlsf.h FORCE
+	$(call cmd,shipped)
+
+$(obj)/tlsfbits.h: $(srctree)/common/tlsfbits.h FORCE
+	$(call cmd,shipped)
+
+$(obj)/tlsf.h: $(srctree)/include/tlsf.h FORCE
+	$(call cmd,shipped)
+
+$(obj)/app-malloc.o: $(obj)/tlsfbits.h
diff --git a/apps/libc/appinfo.c b/apps/libc/appinfo.c
new file mode 100644
index 0000000..7eff526
--- /dev/null
+++ b/apps/libc/appinfo.c
@@ -0,0 +1,35 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <sections.h>
+#include <stdio.h>
+#include <string.h>
+
+#include <appinfo.h>
+#include <libc_config.h>
+
+void print_appinfo(void)
+{
+	char *info = (char*)&__appinfo_start;
+
+	for (; info < (char*)&__appinfo_end; info += strlen(info) + 1)
+		printf("%s\n", info);
+}
+
+APP_INFO(libc, "barebox libc")
+APP_INFO(libc_author, "Jean-Christophe PLANGIOL-VILLARD <plagnioj@jcrosoft.com>")
+APP_INFO(libc_license, "GPLv2 + exception")
+APP_INFO(libc_version, LIBC_VERSION_STRING)
diff --git a/apps/libc/dirent.c b/apps/libc/dirent.c
new file mode 100644
index 0000000..b2a78ad
--- /dev/null
+++ b/apps/libc/dirent.c
@@ -0,0 +1,59 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <barebox/syscalls.h>
+#include <sys/syscall.h>
+#include <sys/types.h>
+#include <dirent.h>
+#include <malloc.h>
+#include <errno.h>
+
+DIR *opendir(const char *name)
+{
+	DIR *d = malloc(sizeof(DIR));
+
+	if (!d)
+		return NULL;
+
+	if (syscall(SYS_opendir, d, name))
+		goto err;
+
+	return d;
+err:
+	free(d);
+	return NULL;
+}
+
+static struct dirent d_read;
+
+struct dirent *readdir(DIR *dir)
+{
+	if (!dir)
+		return NULL;
+
+	if (syscall(SYS_readdir, dir, &d_read))
+		return NULL;
+
+	return &d_read;
+}
+
+int closedir(DIR *dir)
+{
+	if (!dir)
+		return -EINVAL;
+
+	return syscall(SYS_closedir, dir);
+}
diff --git a/apps/libc/errno.c b/apps/libc/errno.c
new file mode 100644
index 0000000..640d09c
--- /dev/null
+++ b/apps/libc/errno.c
@@ -0,0 +1,19 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <errno.h>
+
+int errno;
diff --git a/apps/libc/fcntl.c b/apps/libc/fcntl.c
new file mode 100644
index 0000000..da26955
--- /dev/null
+++ b/apps/libc/fcntl.c
@@ -0,0 +1,25 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <barebox/syscalls.h>
+#include <sys/syscall.h>
+#include <fcntl.h>
+
+/* barebox does not handle the last optionnal arg */
+int open(const char *name, int flags, ...)
+{
+	return syscall(SYS_open, name, flags);
+}
diff --git a/apps/libc/flags.c b/apps/libc/flags.c
new file mode 100644
index 0000000..4d4487b
--- /dev/null
+++ b/apps/libc/flags.c
@@ -0,0 +1,76 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <sys/types.h>
+#include <fcntl.h>
+#include <errno.h>
+
+int __str_to_flags(const char *mode, int *flag)
+{
+	int _mode;
+	int opt;
+
+	switch (*mode++) {
+	case 'r':
+		_mode = O_RDONLY;
+		opt = 0;
+		break;
+
+	case 'w':
+		_mode = O_WRONLY;
+		opt = O_CREAT | O_TRUNC;
+		break;
+
+	case 'a':
+		_mode = O_WRONLY;
+		opt = O_CREAT | O_APPEND;
+		break;
+
+	default:
+		return -EINVAL;
+	}
+
+	/* binary ingnore it */
+	if (*mode == 'b')
+		mode++;
+
+	/* read/write */
+	if (*mode == '+') {
+		mode++;
+		_mode = O_RDWR;
+	}
+
+	/* binary ingnore it */
+	if (*mode == 'b')
+		mode++;
+
+	/*
+	 * barebox does not supprot it
+	 * just check we are not it RO mode
+	 */
+	if (*mode == 'x') {
+		mode++;
+		if (_mode == O_RDONLY)
+			return -EINVAL;
+	}
+
+	/* barebox does not support it */
+	if (*mode == 'e')
+		mode++;
+
+	*flag = _mode | opt;
+	return 0;
+}
diff --git a/apps/libc/getopt.c b/apps/libc/getopt.c
new file mode 100644
index 0000000..b445af8
--- /dev/null
+++ b/apps/libc/getopt.c
@@ -0,0 +1,127 @@
+/*	$NetBSD: getopt.c,v 1.26 2003/08/07 16:43:40 agc Exp $	*/
+
+/*
+ * Copyright (c) 1987, 1993, 1994
+ *	The Regents of the University of California.  All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ * 4. Neither the name of the University nor the names of its contributors
+ *    may be used to endorse or promote products derived from this software
+ *    without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
+ * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+ * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
+ * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
+ * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
+ * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ */
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <unistd.h>
+
+#include "private.h"
+
+int	opterr = 1,		/* if error message should be printed */
+	optind = 1,		/* index into parent argv vector */
+	optopt,			/* character checked for validity */
+	optreset;		/* reset getopt */
+char	*optarg;		/* argument associated with option */
+
+#define	BADCH	(int)'?'
+#define	BADARG	(int)':'
+#define	EMSG	""
+
+/*
+ * getopt --
+ *	Parse argc/argv argument vector.
+ */
+int
+getopt(nargc, nargv, ostr)
+	int nargc;
+	char * const nargv[];
+	const char *ostr;
+{
+	static char *place = EMSG;		/* option letter processing */
+	char *oli;				/* option letter list index */
+
+	if (optreset || *place == 0) {		/* update scanning pointer */
+		optreset = 0;
+		place = nargv[optind];
+		if (optind >= nargc || *place++ != '-') {
+			/* Argument is absent or is not an option */
+			place = EMSG;
+			return (-1);
+		}
+		optopt = *place++;
+		if (optopt == '-' && *place == 0) {
+			/* "--" => end of options */
+			++optind;
+			place = EMSG;
+			return (-1);
+		}
+		if (optopt == 0) {
+			/* Solitary '-', treat as a '-' option
+			   if the program (eg su) is looking for it. */
+			place = EMSG;
+			if (strchr(ostr, '-') == NULL)
+				return (-1);
+			optopt = '-';
+		}
+	} else
+		optopt = *place++;
+
+	/* See if option letter is one the caller wanted... */
+	if (optopt == ':' || (oli = (char*)strchr(ostr, optopt)) == NULL) {
+		if (*place == 0)
+			++optind;
+		if (opterr && *ostr != ':')
+			(void)fprintf(stderr,
+			    "%s: illegal option -- %c\n", __progname,
+			    optopt);
+		return (BADCH);
+	}
+
+	/* Does this option need an argument? */
+	if (oli[1] != ':') {
+		/* don't need argument */
+		optarg = NULL;
+		if (*place == 0)
+			++optind;
+	} else {
+		/* Option-argument is either the rest of this argument or the
+		   entire next argument. */
+		if (*place)
+			optarg = place;
+		else if (nargc > ++optind)
+			optarg = nargv[optind];
+		else {
+			/* option-argument absent */
+			place = EMSG;
+			if (*ostr == ':')
+				return (BADARG);
+			if (opterr)
+				(void)fprintf(stderr,
+				    "%s: option requires an argument -- %c\n",
+				    __progname, optopt);
+			return (BADCH);
+		}
+		place = EMSG;
+		++optind;
+	}
+	return (optopt);			/* return option letter */
+}
diff --git a/apps/libc/getopt_long.c b/apps/libc/getopt_long.c
new file mode 100644
index 0000000..ed7add7
--- /dev/null
+++ b/apps/libc/getopt_long.c
@@ -0,0 +1,625 @@
+/*	$OpenBSD: getopt_long.c,v 1.22 2006/10/04 21:29:04 jmc Exp $	*/
+/*	$NetBSD: getopt_long.c,v 1.15 2002/01/31 22:43:40 tv Exp $	*/
+
+/*
+ * Copyright (c) 2002 Todd C. Miller <Todd.Miller@courtesan.com>
+ *
+ * Permission to use, copy, modify, and distribute this software for any
+ * purpose with or without fee is hereby granted, provided that the above
+ * copyright notice and this permission notice appear in all copies.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
+ * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
+ * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
+ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
+ * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
+ * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
+ *
+ * Sponsored in part by the Defense Advanced Research Projects
+ * Agency (DARPA) and Air Force Research Laboratory, Air Force
+ * Materiel Command, USAF, under agreement number F39502-99-1-0512.
+ */
+/*-
+ * Copyright (c) 2000 The NetBSD Foundation, Inc.
+ * All rights reserved.
+ *
+ * This code is derived from software contributed to The NetBSD Foundation
+ * by Dieter Baron and Thomas Klausner.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE NETBSD FOUNDATION, INC. AND CONTRIBUTORS
+ * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
+ * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
+ * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE FOUNDATION OR CONTRIBUTORS
+ * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
+ * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
+ * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
+ * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
+ * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
+ * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
+ * POSSIBILITY OF SUCH DAMAGE.
+ */
+
+#include <errno.h>
+#include <getopt.h>
+#include <stdlib.h>
+#include <stdio.h>
+#include <stdarg.h>
+#include <string.h>
+
+#include "private.h"
+
+#define GNU_COMPATIBLE		/* Be more compatible, configure's use us! */
+
+#ifdef CONFIG_APP_GETOPT_LONG_AS_GETOPT	/* we prefer to keep our getopt(3) */
+#define	REPLACE_GETOPT		/* use this getopt as the system getopt(3) */
+#endif
+
+#ifdef REPLACE_GETOPT
+int	opterr = 1;		/* if error message should be printed */
+int	optind = 1;		/* index into parent argv vector */
+int	optopt = '?';		/* character checked for validity */
+int	optreset;		/* reset getopt */
+char    *optarg;		/* argument associated with option */
+#endif
+
+#define PRINT_ERROR	((opterr) && (*options != ':'))
+
+#define FLAG_PERMUTE	0x01	/* permute non-options to the end of argv */
+#define FLAG_ALLARGS	0x02	/* treat non-options as args to option "-1" */
+#define FLAG_LONGONLY	0x04	/* operate as getopt_long_only */
+
+/* return values */
+#define	BADCH		(int)'?'
+#define	BADARG		((*options == ':') ? (int)':' : (int)'?')
+#define	INORDER 	(int)1
+
+#define	EMSG		""
+
+#ifdef GNU_COMPATIBLE
+#define NO_PREFIX	(-1)
+#define D_PREFIX	0
+#define DD_PREFIX	1
+#define W_PREFIX	2
+#endif
+
+static int getopt_internal(int, char * const *, const char *,
+			   const struct option *, int *, int);
+static int parse_long_options(char * const *, const char *,
+			      const struct option *, int *, int, int);
+static int gcd(int, int);
+static void permute_args(int, int, int, char * const *);
+
+static char *place = EMSG; /* option letter processing */
+
+/* XXX: set optreset to 1 rather than these two */
+static int nonopt_start = -1; /* first non option argument (for permute) */
+static int nonopt_end = -1;   /* first option after non options (for permute) */
+
+/* Error messages */
+static const char recargchar[] = "option requires an argument -- %c";
+static const char illoptchar[] = "illegal option -- %c"; /* From P1003.2 */
+#ifdef GNU_COMPATIBLE
+static int dash_prefix = NO_PREFIX;
+static const char gnuoptchar[] = "invalid option -- %c";
+
+static const char recargstring[] = "option `%s%s' requires an argument";
+static const char ambig[] = "option `%s%.*s' is ambiguous";
+static const char noarg[] = "option `%s%.*s' doesn't allow an argument";
+static const char illoptstring[] = "unrecognized option `%s%s'";
+#else
+static const char recargstring[] = "option requires an argument -- %s";
+static const char ambig[] = "ambiguous option -- %.*s";
+static const char noarg[] = "option doesn't take an argument -- %.*s";
+static const char illoptstring[] = "unknown option -- %s";
+#endif
+
+void warnx(const char *fmt, ...)
+{
+	va_list ap;
+	va_start(ap, fmt);
+
+	(void)fprintf(stderr, "%s: ", __progname);
+	if (fmt != NULL)
+		(void)vfprintf(stderr, fmt, ap);
+	(void)fprintf(stderr, "\n");
+	va_end(ap);
+}
+
+/*
+ * Compute the greatest common divisor of a and b.
+ */
+static int
+gcd(int a, int b)
+{
+	int c;
+
+	c = a % b;
+	while (c != 0) {
+		a = b;
+		b = c;
+		c = a % b;
+	}
+
+	return (b);
+}
+
+/*
+ * Exchange the block from nonopt_start to nonopt_end with the block
+ * from nonopt_end to opt_end (keeping the same order of arguments
+ * in each block).
+ */
+static void
+permute_args(int panonopt_start, int panonopt_end, int opt_end,
+	char * const *nargv)
+{
+	int cstart, cyclelen, i, j, ncycle, nnonopts, nopts, pos;
+	char *swap;
+
+	/*
+	 * compute lengths of blocks and number and size of cycles
+	 */
+	nnonopts = panonopt_end - panonopt_start;
+	nopts = opt_end - panonopt_end;
+	ncycle = gcd(nnonopts, nopts);
+	cyclelen = (opt_end - panonopt_start) / ncycle;
+
+	for (i = 0; i < ncycle; i++) {
+		cstart = panonopt_end+i;
+		pos = cstart;
+		for (j = 0; j < cyclelen; j++) {
+			if (pos >= panonopt_end)
+				pos -= nnonopts;
+			else
+				pos += nopts;
+			swap = nargv[pos];
+			/* LINTED const cast */
+			((char **) nargv)[pos] = nargv[cstart];
+			/* LINTED const cast */
+			((char **)nargv)[cstart] = swap;
+		}
+	}
+}
+
+/*
+ * parse_long_options --
+ *	Parse long options in argc/argv argument vector.
+ * Returns -1 if short_too is set and the option does not match long_options.
+ */
+static int
+parse_long_options(char * const *nargv, const char *options,
+	const struct option *long_options, int *idx, int short_too, int flags)
+{
+	char *current_argv, *has_equal;
+#ifdef GNU_COMPATIBLE
+	char *current_dash;
+#endif
+	size_t current_argv_len;
+	int i, match, exact_match, second_partial_match;
+
+	current_argv = place;
+#ifdef GNU_COMPATIBLE
+	switch (dash_prefix) {
+		case D_PREFIX:
+			current_dash = "-";
+			break;
+		case DD_PREFIX:
+			current_dash = "--";
+			break;
+		case W_PREFIX:
+			current_dash = "-W ";
+			break;
+		default:
+			current_dash = "";
+			break;
+	}
+#endif
+	match = -1;
+	exact_match = 0;
+	second_partial_match = 0;
+
+	optind++;
+
+	if ((has_equal = strchr(current_argv, '=')) != NULL) {
+		/* argument found (--option=arg) */
+		current_argv_len = has_equal - current_argv;
+		has_equal++;
+	} else
+		current_argv_len = strlen(current_argv);
+
+	for (i = 0; long_options[i].name; i++) {
+		/* find matching long option */
+		if (strncmp(current_argv, long_options[i].name,
+		    current_argv_len))
+			continue;
+
+		if (strlen(long_options[i].name) == current_argv_len) {
+			/* exact match */
+			match = i;
+			exact_match = 1;
+			break;
+		}
+		/*
+		 * If this is a known short option, don't allow
+		 * a partial match of a single character.
+		 */
+		if (short_too && current_argv_len == 1)
+			continue;
+
+		if (match == -1)        /* first partial match */
+			match = i;
+		else if ((flags & FLAG_LONGONLY) ||
+			 long_options[i].has_arg !=
+			     long_options[match].has_arg ||
+			 long_options[i].flag != long_options[match].flag ||
+			 long_options[i].val != long_options[match].val)
+			second_partial_match = 1;
+	}
+	if (!exact_match && second_partial_match) {
+		/* ambiguous abbreviation */
+		if (PRINT_ERROR)
+			warnx(ambig,
+#ifdef GNU_COMPATIBLE
+			     current_dash,
+#endif
+			     (int)current_argv_len,
+			     current_argv);
+		optopt = 0;
+		return (BADCH);
+	}
+	if (match != -1) {		/* option found */
+		if (long_options[match].has_arg == no_argument
+		    && has_equal) {
+			if (PRINT_ERROR)
+				warnx(noarg,
+#ifdef GNU_COMPATIBLE
+				     current_dash,
+#endif
+				     (int)current_argv_len,
+				     current_argv);
+			/*
+			 * XXX: GNU sets optopt to val regardless of flag
+			 */
+			if (long_options[match].flag == NULL)
+				optopt = long_options[match].val;
+			else
+				optopt = 0;
+#ifdef GNU_COMPATIBLE
+			return (BADCH);
+#else
+			return (BADARG);
+#endif
+		}
+		if (long_options[match].has_arg == required_argument ||
+		    long_options[match].has_arg == optional_argument) {
+			if (has_equal)
+				optarg = has_equal;
+			else if (long_options[match].has_arg ==
+			    required_argument) {
+				/*
+				 * optional argument doesn't use next nargv
+				 */
+				optarg = nargv[optind++];
+			}
+		}
+		if ((long_options[match].has_arg == required_argument)
+		    && (optarg == NULL)) {
+			/*
+			 * Missing argument; leading ':' indicates no error
+			 * should be generated.
+			 */
+			if (PRINT_ERROR)
+				warnx(recargstring,
+#ifdef GNU_COMPATIBLE
+				    current_dash,
+#endif
+				    current_argv);
+			/*
+			 * XXX: GNU sets optopt to val regardless of flag
+			 */
+			if (long_options[match].flag == NULL)
+				optopt = long_options[match].val;
+			else
+				optopt = 0;
+			--optind;
+			return (BADARG);
+		}
+	} else {			/* unknown option */
+		if (short_too) {
+			--optind;
+			return (-1);
+		}
+		if (PRINT_ERROR)
+			warnx(illoptstring,
+#ifdef GNU_COMPATIBLE
+			      current_dash,
+#endif
+			      current_argv);
+		optopt = 0;
+		return (BADCH);
+	}
+	if (idx)
+		*idx = match;
+	if (long_options[match].flag) {
+		*long_options[match].flag = long_options[match].val;
+		return (0);
+	} else
+		return (long_options[match].val);
+}
+
+/*
+ * getopt_internal --
+ *	Parse argc/argv argument vector.  Called by user level routines.
+ */
+static int
+getopt_internal(int nargc, char * const *nargv, const char *options,
+	const struct option *long_options, int *idx, int flags)
+{
+	char *oli;				/* option letter list index */
+	int optchar, short_too;
+	int posixly_correct;	/* no static, can be changed on the fly */
+
+	if (options == NULL)
+		return (-1);
+
+	/*
+	 * Disable GNU extensions if POSIXLY_CORRECT is set or options
+	 * string begins with a '+'.
+	 */
+	posixly_correct = (getenv("POSIXLY_CORRECT") != NULL);
+#ifdef GNU_COMPATIBLE
+	if (*options == '-')
+		flags |= FLAG_ALLARGS;
+	else if (posixly_correct || *options == '+')
+		flags &= ~FLAG_PERMUTE;
+#else
+	if (posixly_correct || *options == '+')
+		flags &= ~FLAG_PERMUTE;
+	else if (*options == '-')
+		flags |= FLAG_ALLARGS;
+#endif
+	if (*options == '+' || *options == '-')
+		options++;
+
+	/*
+	 * XXX Some GNU programs (like cvs) set optind to 0 instead of
+	 * XXX using optreset.  Work around this braindamage.
+	 */
+	if (optind == 0)
+		optind = optreset = 1;
+
+	optarg = NULL;
+	if (optreset)
+		nonopt_start = nonopt_end = -1;
+start:
+	if (optreset || !*place) {		/* update scanning pointer */
+		optreset = 0;
+		if (optind >= nargc) {          /* end of argument vector */
+			place = EMSG;
+			if (nonopt_end != -1) {
+				/* do permutation, if we have to */
+				permute_args(nonopt_start, nonopt_end,
+				    optind, nargv);
+				optind -= nonopt_end - nonopt_start;
+			}
+			else if (nonopt_start != -1) {
+				/*
+				 * If we skipped non-options, set optind
+				 * to the first of them.
+				 */
+				optind = nonopt_start;
+			}
+			nonopt_start = nonopt_end = -1;
+			return (-1);
+		}
+		if (*(place = nargv[optind]) != '-' ||
+#ifdef GNU_COMPATIBLE
+		    place[1] == '\0') {
+#else
+		    (place[1] == '\0' && strchr(options, '-') == NULL)) {
+#endif
+			place = EMSG;		/* found non-option */
+			if (flags & FLAG_ALLARGS) {
+				/*
+				 * GNU extension:
+				 * return non-option as argument to option 1
+				 */
+				optarg = nargv[optind++];
+				return (INORDER);
+			}
+			if (!(flags & FLAG_PERMUTE)) {
+				/*
+				 * If no permutation wanted, stop parsing
+				 * at first non-option.
+				 */
+				return (-1);
+			}
+			/* do permutation */
+			if (nonopt_start == -1)
+				nonopt_start = optind;
+			else if (nonopt_end != -1) {
+				permute_args(nonopt_start, nonopt_end,
+				    optind, nargv);
+				nonopt_start = optind -
+				    (nonopt_end - nonopt_start);
+				nonopt_end = -1;
+			}
+			optind++;
+			/* process next argument */
+			goto start;
+		}
+		if (nonopt_start != -1 && nonopt_end == -1)
+			nonopt_end = optind;
+
+		/*
+		 * If we have "-" do nothing, if "--" we are done.
+		 */
+		if (place[1] != '\0' && *++place == '-' && place[1] == '\0') {
+			optind++;
+			place = EMSG;
+			/*
+			 * We found an option (--), so if we skipped
+			 * non-options, we have to permute.
+			 */
+			if (nonopt_end != -1) {
+				permute_args(nonopt_start, nonopt_end,
+				    optind, nargv);
+				optind -= nonopt_end - nonopt_start;
+			}
+			nonopt_start = nonopt_end = -1;
+			return (-1);
+		}
+	}
+
+	/*
+	 * Check long options if:
+	 *  1) we were passed some
+	 *  2) the arg is not just "-"
+	 *  3) either the arg starts with -- we are getopt_long_only()
+	 */
+	if (long_options != NULL && place != nargv[optind] &&
+	    (*place == '-' || (flags & FLAG_LONGONLY))) {
+		short_too = 0;
+#ifdef GNU_COMPATIBLE
+		dash_prefix = D_PREFIX;
+#endif
+		if (*place == '-') {
+			place++;		/* --foo long option */
+#ifdef GNU_COMPATIBLE
+			dash_prefix = DD_PREFIX;
+#endif
+		} else if (*place != ':' && strchr(options, *place) != NULL)
+			short_too = 1;		/* could be short option too */
+
+		optchar = parse_long_options(nargv, options, long_options,
+		    idx, short_too, flags);
+		if (optchar != -1) {
+			place = EMSG;
+			return (optchar);
+		}
+	}
+
+	if ((optchar = (int)*place++) == (int)':' ||
+	    (optchar == (int)'-' && *place != '\0') ||
+	    (oli = (char*)strchr(options, optchar)) == NULL) {
+		/*
+		 * If the user specified "-" and  '-' isn't listed in
+		 * options, return -1 (non-option) as per POSIX.
+		 * Otherwise, it is an unknown option character (or ':').
+		 */
+		if (optchar == (int)'-' && *place == '\0')
+			return (-1);
+		if (!*place)
+			++optind;
+#ifdef GNU_COMPATIBLE
+		if (PRINT_ERROR)
+			warnx(posixly_correct ? illoptchar : gnuoptchar,
+			      optchar);
+#else
+		if (PRINT_ERROR)
+			warnx(illoptchar, optchar);
+#endif
+		optopt = optchar;
+		return (BADCH);
+	}
+	if (long_options != NULL && optchar == 'W' && oli[1] == ';') {
+		/* -W long-option */
+		if (*place)			/* no space */
+			/* NOTHING */;
+		else if (++optind >= nargc) {	/* no arg */
+			place = EMSG;
+			if (PRINT_ERROR)
+				warnx(recargchar, optchar);
+			optopt = optchar;
+			return (BADARG);
+		} else				/* white space */
+			place = nargv[optind];
+#ifdef GNU_COMPATIBLE
+		dash_prefix = W_PREFIX;
+#endif
+		optchar = parse_long_options(nargv, options, long_options,
+		    idx, 0, flags);
+		place = EMSG;
+		return (optchar);
+	}
+	if (*++oli != ':') {			/* doesn't take argument */
+		if (!*place)
+			++optind;
+	} else {				/* takes (optional) argument */
+		optarg = NULL;
+		if (*place)			/* no white space */
+			optarg = place;
+		else if (oli[1] != ':') {	/* arg not optional */
+			if (++optind >= nargc) {	/* no arg */
+				place = EMSG;
+				if (PRINT_ERROR)
+					warnx(recargchar, optchar);
+				optopt = optchar;
+				return (BADARG);
+			} else
+				optarg = nargv[optind];
+		}
+		place = EMSG;
+		++optind;
+	}
+	/* dump back option letter */
+	return (optchar);
+}
+
+#ifdef REPLACE_GETOPT
+/*
+ * getopt --
+ *	Parse argc/argv argument vector.
+ *
+ * [eventually this will replace the BSD getopt]
+ */
+int
+getopt(int nargc, char * const *nargv, const char *options)
+{
+
+	/*
+	 * We don't pass FLAG_PERMUTE to getopt_internal() since
+	 * the BSD getopt(3) (unlike GNU) has never done this.
+	 *
+	 * Furthermore, since many privileged programs call getopt()
+	 * before dropping privileges it makes sense to keep things
+	 * as simple (and bug-free) as possible.
+	 */
+	return (getopt_internal(nargc, nargv, options, NULL, NULL, 0));
+}
+#endif /* REPLACE_GETOPT */
+
+/*
+ * getopt_long --
+ *	Parse argc/argv argument vector.
+ */
+int
+getopt_long(int nargc, char * const *nargv, const char *options,
+	const struct option *long_options, int *idx)
+{
+
+	return (getopt_internal(nargc, nargv, options, long_options, idx,
+	    FLAG_PERMUTE));
+}
+
+/*
+ * getopt_long_only --
+ *	Parse argc/argv argument vector.
+ */
+int
+getopt_long_only(int nargc, char * const *nargv, const char *options,
+	const struct option *long_options, int *idx)
+{
+
+	return (getopt_internal(nargc, nargv, options, long_options, idx,
+	    FLAG_PERMUTE|FLAG_LONGONLY));
+}
diff --git a/apps/libc/malloc.c b/apps/libc/malloc.c
new file mode 100644
index 0000000..ab4b8b5
--- /dev/null
+++ b/apps/libc/malloc.c
@@ -0,0 +1,50 @@
+#include <malloc.h>
+#include <types.h>
+#include <string.h>
+
+#include "malloc.h"
+/*
+ * Begin and End of memory area for malloc(), and current "brk"
+ */
+static unsigned long malloc_start;
+static unsigned long malloc_end;
+static unsigned long malloc_brk;
+
+static void *sbrk_no_zero(ptrdiff_t increment)
+{
+	unsigned long old = malloc_brk;
+	unsigned long new = old + increment;
+
+	if ((new < malloc_start) || (new > malloc_end))
+		return NULL;
+
+	malloc_brk = new;
+
+	return (void *)old;
+}
+
+void *sbrk(ptrdiff_t increment)
+{
+	void *old = sbrk_no_zero(increment);
+
+	/* Only clear increment, if valid address was returned */
+	if (old != NULL)
+		memset(old, 0, increment);
+
+	return old;
+}
+
+#ifdef CONFIG_APPS_MALLOC_TLSF
+#include <tlsf.h>
+tlsf_pool tlsf_mem_pool;
+#endif
+
+void mem_malloc_init(void *start, void *end)
+{
+	malloc_start = (unsigned long)start;
+	malloc_end = (unsigned long)end;
+	malloc_brk = malloc_start;
+#ifdef CONFIG_APPS_MALLOC_TLSF
+	tlsf_mem_pool = tlsf_create(start, end - start + 1);
+#endif
+}
diff --git a/apps/libc/malloc.h b/apps/libc/malloc.h
new file mode 100644
index 0000000..7995fb1
--- /dev/null
+++ b/apps/libc/malloc.h
@@ -0,0 +1,2 @@
+
+void mem_malloc_init(void *start, void *end);
diff --git a/apps/libc/private.h b/apps/libc/private.h
new file mode 100644
index 0000000..9a56544
--- /dev/null
+++ b/apps/libc/private.h
@@ -0,0 +1,18 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+*/
+
+#ifndef __LIBC_PRIVATE_H__
+#define __LIBC_PRIVATE_H__
+
+extern char *__progname;
+int __str_to_flags(const char *mode, int *flag);
+
+struct __file {
+	int fd;
+	struct __file *cookie; /* to check the file is open */
+};
+
+#endif /* __LIBC_PRIVATE_H__ */
diff --git a/apps/libc/stdio.c b/apps/libc/stdio.c
new file mode 100644
index 0000000..82233f7
--- /dev/null
+++ b/apps/libc/stdio.c
@@ -0,0 +1,275 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <barebox/syscalls.h>
+#include <sys/syscall.h>
+#include <errno.h>
+#include <stdio.h>
+#include <string.h>
+#include <unistd.h>
+#include <malloc.h>
+#include <fcntl.h>
+
+#include "private.h"
+
+#undef stderr
+#undef stdin
+#undef stdout
+
+FILE stdin = { .fd = 0, .cookie = &stdin, };
+FILE stdout = { .fd = 1, .cookie = &stdout, };
+FILE stderr = { .fd = 2, .cookie = &stderr, };
+
+void putchar(char c)
+{
+	syscall(SYS_putchar, c);
+}
+
+void eputc(char c)
+{
+	syscall(SYS_eputc, c);
+}
+
+int getchar(void)
+{
+	return syscall(SYS_getchar);
+}
+
+int tstc(void)
+{
+	return syscall(SYS_tstc);
+}
+
+int ioctl(int fd, int request, void *buf)
+{
+	return syscall(SYS_ioctl, fd, request, buf);
+}
+
+int eputs(const char *str)
+{
+	const char *s = str;
+	int i = 0;
+
+	while (*s) {
+		eputc(*s);
+		if (*s == '\n')
+			eputc('\r');
+		s++;
+		i++;
+	}
+
+	return i;
+}
+
+int puts(const char *str)
+{
+	const char *s = str;
+	int i = 0;
+
+	while (*s) {
+		putchar(*s);
+		if (*s == '\n')
+			putchar('\r');
+		s++;
+		i++;
+	}
+
+	return i;
+}
+
+int printf(const char *fmt, ...)
+{
+	va_list args;
+	uint i;
+	char printbuffer[CONFIG_APP_PRINTF_STACK_SIZE];
+
+	va_start(args, fmt);
+	i = vsprintf (printbuffer, fmt, args);
+	va_end(args);
+
+	puts(printbuffer);
+
+	return i;
+}
+
+int vprintf(const char *fmt, va_list args)
+{
+	uint i;
+	char printbuffer[CONFIG_APP_PRINTF_STACK_SIZE];
+
+	i = vsprintf(printbuffer, fmt, args);
+
+	puts(printbuffer);
+
+	return i;
+}
+
+/* FILE implementation */
+
+static int __files_used = 0;
+
+static void __file_free(FILE *f)
+{
+	free(f);
+	f = NULL;
+	__files_used--;
+}
+
+static bool __file_sanity_check(FILE *f)
+{
+	return f->cookie != NULL;
+}
+
+static FILE *__file_malloc(void)
+{
+	FILE *f;
+
+	if (__files_used >= CONFIG_APP_FILE_MAX)
+		return NULL;
+
+	f = calloc(1, sizeof(*f));	
+	if (!f)
+		return NULL;
+
+	f->cookie = f;
+	__files_used++;
+	return f;
+}
+
+int fputs(const char *s, FILE *f)
+{
+	if (!__file_sanity_check(f))
+		return -EINVAL;
+
+	if (f == &stdout)
+		return puts(s);
+	else if (f == &stderr)
+		return eputs(s);
+	else
+		return write(f->fd, s, strlen(s));
+}
+
+int fputc(int c, FILE *f)
+{
+	if (!__file_sanity_check(f))
+		return -EINVAL;
+
+	if (f == &stdout)
+		putchar(c);
+	else if (f == &stderr)
+		eputc(c);
+	else
+		return write(f->fd, &c, 1);
+
+	return 1;
+}
+
+int vfprintf(FILE *file, const char *fmt, va_list args)
+{
+	char printbuffer[CONFIG_APP_PRINTF_STACK_SIZE];
+
+	vsprintf(printbuffer, fmt, args);
+
+	return fputs(printbuffer, file);
+}
+
+int fprintf(FILE *file, const char *fmt, ...)
+{
+	va_list args;
+	int ret;
+
+	va_start(args, fmt);
+	ret = vfprintf(file, fmt, args);
+	va_end(args);
+
+	return ret;
+}
+
+FILE *fopen(const char *path, const char *mode)
+{
+	int flags;
+	int fd;
+	FILE *f;
+
+	fd = __str_to_flags(mode, &flags);
+	if (fd)
+		return NULL;
+
+	f = __file_malloc();
+	if (!f)
+		return NULL;
+
+	fd = open(mode, flags); 
+	if (fd < 0) {
+		__file_free(f);
+		return NULL;
+	}
+
+	f->fd = fd;
+
+	return f;
+}
+
+int fclose(FILE *f)
+{
+	if (!__file_sanity_check(f))
+		return -EINVAL;
+
+	if (f == &stderr || f == &stdout || f == &stdin)
+		return -EINVAL;
+
+	close(f->fd);
+
+	__file_free(f);
+
+	return 0;
+}
+
+size_t fread(void *buf, size_t size, size_t nb, FILE *f)
+{
+	if (!__file_sanity_check(f))
+		return -EINVAL;
+
+	return read(f->fd, buf, size * nb);
+}
+
+size_t fwrite(const void *buf, size_t size, size_t nb, FILE *f)
+{
+	if (!__file_sanity_check(f))
+		return -EINVAL;
+
+	return write(f->fd, buf, size * nb);
+}
+
+int fseek(FILE *f, long offset, int whence)
+{
+	if (!__file_sanity_check(f))
+		return -EINVAL;
+
+	return lseek(f->fd, offset, whence);
+}
+
+char* itoa(int i)
+{
+	char printbuffer[26];
+	char *p = &printbuffer[25];
+	*p-- = '\0';
+	do {
+		*p-- = '0' + i % 10;
+		i /= 10;
+	} while (i > 0);
+	return p + 1;
+}
diff --git a/apps/libc/stdlib.c b/apps/libc/stdlib.c
new file mode 100644
index 0000000..0ec07ac
--- /dev/null
+++ b/apps/libc/stdlib.c
@@ -0,0 +1,77 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <barebox/syscalls.h>
+#include <sys/syscall.h>
+#include <limits.h>
+#include <malloc.h>
+#include <errno.h>
+#include <ctype.h>
+
+static char env[ENV_MAX];
+
+char *getenv(const char *name)
+{
+	if (syscall(SYS_getenv, name, env))
+		return NULL;
+
+	return env;
+}
+
+int atoi(const char *s)
+{
+	int i = 0;
+	bool minus;
+
+	if (*s == '-') {
+		minus = true;
+		s++;
+	}
+
+	while (isdigit(*s))
+		i = i * 10 + *(s++) - '0';
+	return (minus) ? -i : i;
+}
+
+long atol(const char *s)
+{
+	long i = 0;
+	bool minus;
+
+	if (*s == '-') {
+		minus = true;
+		s++;
+	}
+
+	while (isdigit(*s))
+		i = i * 10 + *(s++) - '0';
+	return (minus) ? -i : i;
+}
+
+long long atoll(const char *s)
+{
+	long long i = 0;
+	bool minus;
+
+	if (*s == '-') {
+		minus = true;
+		s++;
+	}
+
+	while (isdigit(*s))
+		i = i * 10 + *(s++) - '0';
+	return (minus) ? -i : i;
+}
diff --git a/apps/libc/string.c b/apps/libc/string.c
new file mode 100644
index 0000000..67a34f9
--- /dev/null
+++ b/apps/libc/string.c
@@ -0,0 +1,159 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <sys/types.h>
+#include <string.h>
+#include <malloc.h>
+
+void *memcpy(void *dst, const void *src, size_t count)
+{
+	char *d = (char *)dst;
+	const char *s = (const char *)src;
+
+	while (count--)
+		*d++ = *s++;
+
+	return d;
+}
+
+void *memset(void *dst, int val, size_t count)
+{
+	char *d = (char *)dst;
+
+	while (count--)
+		*d++ = (char)val;
+
+	return d;
+}
+
+int memcmp(const void *dst, const void *src, size_t count)
+{
+	const char *d = (const char *)dst;
+	const char *s = (const char *)src;
+	int r = 0;
+
+	while (count-- && (r = *d++ - *s++) == 0) ;
+
+	return r;
+}
+
+unsigned int strlen(const char *s)
+{
+	const char *p;
+
+	for (p = s; *p != '\0'; p++)
+		;
+	return p - s;
+}
+
+char *strcpy(char *dst, const char *src)
+{
+	char *tmp = dst;
+
+	while ((*dst++ = *src++) != '\0')
+		;
+
+	return tmp;
+}
+
+int strcmp(const char *s1, const char *s2)
+{
+	signed char res;
+
+	while (1) {
+		res = *s1 - *s2++;
+		
+		if (res)
+			break;
+
+		if (!*s1++)
+			break;
+	}
+
+	return res;
+}
+
+int strncmp(const char *s1, const char *s2, size_t count)
+{
+	signed char res;
+
+	while (count--) {
+		res = *s1 - *s2++;
+		
+		if (res)
+			break;
+
+		if (!*s1++)
+			break;
+	}
+
+	return res;
+}
+
+char *strchr(const char *s, int c)
+{
+	for (; *s != (char) c; ++s)
+		if (*s == '\0')
+			return NULL;
+
+	return (char *)s;
+}
+
+void *memchr(const void *src, int val, size_t count)
+{
+	const char *s = src;
+
+	while (count--) {
+		if (*s++ == val)
+			return (void*)(s - 1);
+	}
+
+	return NULL;
+}
+
+void *memmove(void *dst, const void *src, size_t count)
+{
+	char *p, *s;
+
+	if (dst <= src) {
+		p = (char *)dst;
+		s = (char *)src;
+		while (count--)
+			*p++ = *s++;
+	} else {
+		p = (char *)dst + count;
+		s = (char *)src + count;
+		while (count--)
+			*--p = *--s;
+	}
+
+	return dst;
+}
+
+char *strdup(const char *s)
+{
+	char *p;
+
+	if (!s)
+		return NULL;
+		
+	p = malloc (strlen(s) + 1);
+	if (!p)
+		return NULL;
+
+	strcpy (p, s);
+	return p;
+}
diff --git a/apps/libc/sys/Makefile b/apps/libc/sys/Makefile
new file mode 100644
index 0000000..119f373
--- /dev/null
+++ b/apps/libc/sys/Makefile
@@ -0,0 +1,2 @@
+
+app-y += stat.o
diff --git a/apps/libc/sys/stat.c b/apps/libc/sys/stat.c
new file mode 100644
index 0000000..decc227
--- /dev/null
+++ b/apps/libc/sys/stat.c
@@ -0,0 +1,25 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <barebox/syscalls.h>
+#include <sys/syscall.h>
+#include <sys/stat.h>
+#include <sys/types.h>
+
+int mkdir(const char *path, mode_t mode)
+{
+	return syscall(SYS_mkdir, path, mode);
+}
diff --git a/apps/libc/syscalls.c b/apps/libc/syscalls.c
new file mode 100644
index 0000000..796a681
--- /dev/null
+++ b/apps/libc/syscalls.c
@@ -0,0 +1,103 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <barebox/syscalls.h>
+#include <string.h>
+#include <stdlib.h>
+#include <stdio.h>
+#include <unistd.h>
+#include <sections.h>
+
+#include "malloc.h"
+#include "private.h"
+
+int main(int argc, char **argv);
+
+static bool is_valid_syscall(void *addr)
+{
+	return strncmp(addr, SYSCALLS_MAGIC, 8) == 0;
+}
+
+void panic(char *s)
+{
+	puts(s);
+	exit(10);
+}
+
+static void **syscalls;
+static uint32_t nb_syscalls;
+
+int syscall(int num, ...)
+{
+	long (*__syscall)(unsigned long arg0, unsigned long arg1, unsigned long arg2);
+	va_list args;
+	unsigned long arg0;
+	unsigned long arg1;
+	unsigned long arg2;
+	int ret;
+
+	if (num >= nb_syscalls)
+		return -1;
+
+	va_start(args, num);
+	arg0 = va_arg(args, unsigned long);
+	arg1 = va_arg(args, unsigned long);
+	arg2 = va_arg(args, unsigned long);
+	__syscall = syscalls[num];
+	ret = __syscall(arg0, arg1, arg2);
+
+	va_end(args);
+
+	return ret;
+}
+
+int syscalls_parse(struct syscalls_header *sys)
+{
+#ifndef	CONFIG_PHYS_ADDR_T_64BIT
+	uint32_t malloc_base = sys->malloc_base & 0xffffffff;
+	uint32_t malloc_end = malloc_base + sys->malloc_size - 1;
+#else
+	uint64_t malloc_base = sys->malloc_base;
+	uint64_t malloc_end = malloc_base + sys->malloc_size - 1;
+#endif
+
+	if (!sys->syscalls)
+		return 1;
+
+	syscalls = sys->syscalls;
+	nb_syscalls = sys->nb_syscalls;
+
+	mem_malloc_init((void *)malloc_base, (void *)malloc_end);
+
+	return 0;
+}
+
+char *__progname;
+
+int app_start(int argc, char **argv)
+{
+	void *sys = _text - 0x2000;
+
+	if (!is_valid_syscall(sys))
+		return EXIT_FAILURE;
+
+	if (syscalls_parse(sys))
+		return EXIT_FAILURE;
+
+	__progname = argv[0];
+
+	return main(argc, argv);
+}
diff --git a/apps/libc/time.c b/apps/libc/time.c
new file mode 100644
index 0000000..6bb57da
--- /dev/null
+++ b/apps/libc/time.c
@@ -0,0 +1,41 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <barebox/syscalls.h>
+#include <sys/syscall.h>
+#include <time.h>
+#include <types.h>
+
+#define SECOND	1000 * 1000 * 1000
+
+int nanosleep(const struct timespec *req, struct timespec *rem)
+{
+	int ret;
+
+	if (req->tv_sec) {
+		ret = syscall(SYS_ndelay, req->tv_sec * SECOND);
+		if (ret)
+			return ret;
+	}
+
+	if (!req->tv_nsec)
+		return 0;
+
+	if (req->tv_nsec > 999999999)
+		return -1;
+
+	return syscall(SYS_ndelay, req->tv_nsec);
+}
diff --git a/apps/libc/unistd.c b/apps/libc/unistd.c
new file mode 100644
index 0000000..ea92604
--- /dev/null
+++ b/apps/libc/unistd.c
@@ -0,0 +1,108 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ * As a special exception, if other files instantiate templates or use macros
+ * or inline functions from this file, or you compile this file and link it
+ * with other works to produce a work based on this file, this file does not
+ * by itself cause the resulting work to be covered by the GNU General Public
+ * License. However the source code for this file must still be made available
+ * in accordance with section (3) of the GNU General Public License.
+
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <barebox/syscalls.h>
+#include <sys/syscall.h>
+#include <unistd.h>
+#include <string.h>
+#include <malloc.h>
+#include <limits.h>
+
+int read(int fd, void *buf, size_t count)
+{
+	return syscall(SYS_read, fd, buf, count);
+}
+
+ssize_t write(int fd, const void *buf, size_t count)
+{
+	return syscall(SYS_write, fd, buf, count);
+}
+
+int close(int fd)
+{
+	return syscall(SYS_close, fd);
+}
+
+int unlink(const char *pathname)
+{
+	return syscall(SYS_unlink, pathname);
+}
+
+int stat(const char *path, struct stat *buf)
+{
+	return syscall(SYS_stat, path, buf);
+}
+
+int lstat(const char *path, struct stat *buf)
+{
+	return syscall(SYS_lstat, path, buf);
+}
+
+loff_t lseek(int fd, loff_t offset, int whence)
+{
+	return syscall(SYS_lseek, fd, offset, whence);
+}
+
+int symlink(const char *pathname, const char *newpath)
+{
+	return syscall(SYS_symlink, pathname, newpath);
+}
+
+ssize_t readlink(const char *path, char *buf, size_t bufsiz)
+{
+	return syscall(SYS_readlink, path, buf, bufsiz);
+}
+
+int rmdir(const char *path)
+{
+	return syscall(SYS_rmdir, path);
+}
+
+char *get_current_dir_name(void)
+{
+	size_t size = sizeof(char) * PATH_MAX;
+	char *cwd = malloc(size);
+
+	if (!cwd)
+		return NULL;
+
+	if (syscall(SYS_getcwd, cwd, size))
+		goto err;
+
+	return cwd;
+
+err:
+	free(cwd);
+	return NULL;
+}
+
+char *getcwd(char *buf, size_t size)
+{
+	if (syscall(SYS_getcwd, buf, size))
+		return NULL;
+
+	return buf;
+}
+
+int chdir(const char *path)
+{
+	return syscall(SYS_chdir, path);
+}
+
+int usleep(unsigned int usec)
+{
+	return syscall(SYS_ndelay, usec * 1000);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
