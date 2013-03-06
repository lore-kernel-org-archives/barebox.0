Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjn-0000XN-69
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:35:14 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 83C86104E791
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:17 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:39 +0100
Message-Id: <1362562189-17783-10-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 10/20] app: printf: use HelenOS verison with wide char support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 apps/include/stdio.h               |   21 +-
 apps/include/stdlib.h              |    3 +
 apps/include/{stdlib.h => wchar.h} |   24 +-
 apps/libc/Kconfig                  |   10 +
 apps/libc/Makefile                 |    1 +
 apps/libc/helenos/Makefile         |    4 +
 apps/libc/helenos/align.h          |   63 ++
 apps/libc/helenos/assert.h         |    2 +
 apps/libc/helenos/ctype.c          |   52 ++
 apps/libc/helenos/printf_core.c    |  905 +++++++++++++++++++
 apps/libc/helenos/printf_core.h    |   59 ++
 apps/libc/helenos/stdio.c          |  153 ++++
 apps/libc/helenos/str.c            | 1755 ++++++++++++++++++++++++++++++++++++
 apps/libc/helenos/str.h            |  135 +++
 apps/libc/helenos/vsnprintf.c      |  187 ++++
 15 files changed, 3353 insertions(+), 21 deletions(-)
 copy apps/include/{stdlib.h => wchar.h} (70%)
 create mode 100644 apps/libc/helenos/Makefile
 create mode 100644 apps/libc/helenos/align.h
 create mode 100644 apps/libc/helenos/assert.h
 create mode 100644 apps/libc/helenos/ctype.c
 create mode 100644 apps/libc/helenos/printf_core.c
 create mode 100644 apps/libc/helenos/printf_core.h
 create mode 100644 apps/libc/helenos/stdio.c
 create mode 100644 apps/libc/helenos/str.c
 create mode 100644 apps/libc/helenos/str.h
 create mode 100644 apps/libc/helenos/vsnprintf.c

diff --git a/apps/include/stdio.h b/apps/include/stdio.h
index 32a7d25..9c9720e 100644
--- a/apps/include/stdio.h
+++ b/apps/include/stdio.h
@@ -49,6 +49,16 @@ size_t fread(void *buf, size_t size, size_t nb, FILE *f);
 size_t fwrite(const void *buf, size_t size, size_t nb, FILE *f);
 int fseek(FILE *stream, long offset, int whence);
 
+int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+int vprintf(const char *fmt, va_list args);
+int sprintf(char *buf, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
+int snprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
+int vsprintf(char *buf, const char *fmt, va_list args);
+char *asprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+char *vasprintf(const char *fmt, va_list ap);
+int vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
+int vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
+
 /* barebox API */
 void eputc(char c);
 int eputs(const char *str);
@@ -56,15 +66,4 @@ int tstc(void);
 int flush(int fd);
 char* itoa(int i);
 
-static int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
-static inline int printf(const char *fmt, ...)
-{
-	return 0;
-}
-
-static inline int vprintf(const char *fmt, va_list args)
-{
-	return 0;
-}
-
 #endif /* __STDIO_H__ */
diff --git a/apps/include/stdlib.h b/apps/include/stdlib.h
index 7ae78ad..e08775f 100644
--- a/apps/include/stdlib.h
+++ b/apps/include/stdlib.h
@@ -26,4 +26,7 @@ int atoi(const char *s);
 long atol(const char *s);
 long long atoll(const char *s);
 
+#define min(x, y) ((x) < (y) ? (x) : (y))
+#define max(x, y) ((x) > (y) ? (x) : (y))
+
 #endif /* __STDLIB_H__ */
diff --git a/apps/include/stdlib.h b/apps/include/wchar.h
similarity index 70%
copy from apps/include/stdlib.h
copy to apps/include/wchar.h
index 7ae78ad..8610569 100644
--- a/apps/include/stdlib.h
+++ b/apps/include/wchar.h
@@ -14,16 +14,20 @@
  * this file might be covered by the GNU General Public License.
  */
 
-#ifndef __STDLIB_H__
-#define __STDLIB_H__
+#ifndef __WCHAR_H__
+#define __WCHAR_H__
 
-#define EXIT_FAILURE 1
-#define EXIT_SUCCESS 0
+#include <stdio.h>
 
-char *getenv(const char *name);
-void exit(int num);
-int atoi(const char *s);
-long atol(const char *s);
-long long atoll(const char *s);
+typedef unsigned long wchar_t;
+typedef long wint_t;
 
-#endif /* __STDLIB_H__ */
+
+#define wprintf printf
+#define fwprintf fprintf
+#define swprintf sprintf
+#define vwprintf vprintf
+#define vfwprintf vfwprintf
+#define vswprintf vswprintf
+
+#endif /* __WCHAR_H__ */
diff --git a/apps/libc/Kconfig b/apps/libc/Kconfig
index b9478b5..25b35ee 100644
--- a/apps/libc/Kconfig
+++ b/apps/libc/Kconfig
@@ -22,4 +22,14 @@ config APP_PRINTF_STACK_SIZE
 	hex "printf stack size"
 	default 0x1000
 
+choice
+	prompt "printf implementation"
+
+config APPS_PRINTF_HELENOS
+	bool "helen os"
+	help
+	  support wide char
+
+endchoice
+
 endmenu
diff --git a/apps/libc/Makefile b/apps/libc/Makefile
index 844ea9b..c84f00e 100644
--- a/apps/libc/Makefile
+++ b/apps/libc/Makefile
@@ -15,6 +15,7 @@ app-y += unistd.o
 app-$(CONFIG_APPS_MALLOC_DUMMY) += dummy_malloc.o
 app-$(CONFIG_APPS_MALLOC_TLSF) += tlsf_malloc.o tlsf.o
 app-y += string.o
+obj-$(CONFIG_APPS_PRINTF_HELENOS) += helenos/
 obj-y += sys/
 app-y += time.o
 
diff --git a/apps/libc/helenos/Makefile b/apps/libc/helenos/Makefile
new file mode 100644
index 0000000..1c34aff
--- /dev/null
+++ b/apps/libc/helenos/Makefile
@@ -0,0 +1,4 @@
+app-y += printf_core.o
+app-y += vsnprintf.o
+app-y += str.o
+app-y += stdio.o
diff --git a/apps/libc/helenos/align.h b/apps/libc/helenos/align.h
new file mode 100644
index 0000000..8ca4270
--- /dev/null
+++ b/apps/libc/helenos/align.h
@@ -0,0 +1,63 @@
+/*
+ * Copyright (c) 2005 Jakub Jermar
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ *
+ * - Redistributions of source code must retain the above copyright
+ *   notice, this list of conditions and the following disclaimer.
+ * - Redistributions in binary form must reproduce the above copyright
+ *   notice, this list of conditions and the following disclaimer in the
+ *   documentation and/or other materials provided with the distribution.
+ * - The name of the author may not be used to endorse or promote products
+ *   derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
+ * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
+ * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
+ * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
+ * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
+ * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
+
+/** @addtogroup libc
+ * @{
+ */
+/** @file
+ */
+
+#ifndef LIBC_ALIGN_H_
+#define LIBC_ALIGN_H_
+
+/** Align to the nearest lower address which is a power of two.
+ *
+ * @param s		Address or size to be aligned.
+ * @param a		Size of alignment, must be power of 2.
+ */
+#define ALIGN_DOWN(s, a)	((s) & ~((a) - 1))
+
+
+/** Align to the nearest higher address which is a power of two.
+ *
+ * @param s		Address or size to be aligned.
+ * @param a		Size of alignment, must be power of 2.
+ */
+#define ALIGN_UP(s, a)		((long)((s) + ((a) - 1)) & ~((long) (a) - 1))
+
+/** Round up to the nearest higher boundary.
+ *
+ * @param n		Number to be aligned.
+ * @param b		Boundary, arbitrary unsigned number.
+ */
+#define ROUND_UP(n, b)		(((n) / (b) + ((n) % (b) != 0)) * (b))
+
+#endif
+
+/** @}
+ */
diff --git a/apps/libc/helenos/assert.h b/apps/libc/helenos/assert.h
new file mode 100644
index 0000000..16fedb4
--- /dev/null
+++ b/apps/libc/helenos/assert.h
@@ -0,0 +1,2 @@
+
+#define assert(x)
diff --git a/apps/libc/helenos/ctype.c b/apps/libc/helenos/ctype.c
new file mode 100644
index 0000000..6d20da5
--- /dev/null
+++ b/apps/libc/helenos/ctype.c
@@ -0,0 +1,52 @@
+/*
+ * (C) Copyright 2000
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+/*
+ *  linux/lib/ctype.c
+ *
+ *  Copyright (C) 1991, 1992  Linus Torvalds
+ */
+
+#include <linux/ctype.h>
+
+unsigned char _ctype[] = {
+_C,_C,_C,_C,_C,_C,_C,_C,			/* 0-7 */
+_C,_C|_S,_C|_S,_C|_S,_C|_S,_C|_S,_C,_C,		/* 8-15 */
+_C,_C,_C,_C,_C,_C,_C,_C,			/* 16-23 */
+_C,_C,_C,_C,_C,_C,_C,_C,			/* 24-31 */
+_S|_SP,_P,_P,_P,_P,_P,_P,_P,			/* 32-39 */
+_P,_P,_P,_P,_P,_P,_P,_P,			/* 40-47 */
+_D,_D,_D,_D,_D,_D,_D,_D,			/* 48-55 */
+_D,_D,_P,_P,_P,_P,_P,_P,			/* 56-63 */
+_P,_U|_X,_U|_X,_U|_X,_U|_X,_U|_X,_U|_X,_U,	/* 64-71 */
+_U,_U,_U,_U,_U,_U,_U,_U,			/* 72-79 */
+_U,_U,_U,_U,_U,_U,_U,_U,			/* 80-87 */
+_U,_U,_U,_P,_P,_P,_P,_P,			/* 88-95 */
+_P,_L|_X,_L|_X,_L|_X,_L|_X,_L|_X,_L|_X,_L,	/* 96-103 */
+_L,_L,_L,_L,_L,_L,_L,_L,			/* 104-111 */
+_L,_L,_L,_L,_L,_L,_L,_L,			/* 112-119 */
+_L,_L,_L,_P,_P,_P,_P,_C,			/* 120-127 */
+0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,		/* 128-143 */
+0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,		/* 144-159 */
+_S|_SP,_P,_P,_P,_P,_P,_P,_P,_P,_P,_P,_P,_P,_P,_P,_P,   /* 160-175 */
+_P,_P,_P,_P,_P,_P,_P,_P,_P,_P,_P,_P,_P,_P,_P,_P,       /* 176-191 */
+_U,_U,_U,_U,_U,_U,_U,_U,_U,_U,_U,_U,_U,_U,_U,_U,       /* 192-207 */
+_U,_U,_U,_U,_U,_U,_U,_P,_U,_U,_U,_U,_U,_U,_U,_L,       /* 208-223 */
+_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,       /* 224-239 */
+_L,_L,_L,_L,_L,_L,_L,_P,_L,_L,_L,_L,_L,_L,_L,_L};      /* 240-255 */
diff --git a/apps/libc/helenos/printf_core.c b/apps/libc/helenos/printf_core.c
new file mode 100644
index 0000000..ccfaaa9
--- /dev/null
+++ b/apps/libc/helenos/printf_core.c
@@ -0,0 +1,905 @@
+/*
+ * Copyright (c) 2001-2004 Jakub Jermar
+ * Copyright (c) 2006 Josef Cejka
+ * Copyright (c) 2009 Martin Decky
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ *
+ * - Redistributions of source code must retain the above copyright
+ *   notice, this list of conditions and the following disclaimer.
+ * - Redistributions in binary form must reproduce the above copyright
+ *   notice, this list of conditions and the following disclaimer in the
+ *   documentation and/or other materials provided with the distribution.
+ * - The name of the author may not be used to endorse or promote products
+ *   derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
+ * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
+ * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
+ * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
+ * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
+ * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
+
+#include <stdlib.h>
+#include <stdarg.h>
+#include <ctype.h>
+
+#include "printf_core.h"
+#include "str.h"
+
+/** show prefixes 0x or 0 */
+#define __PRINTF_FLAG_PREFIX       0x00000001
+
+/** show the decimal point even if no fractional digits present */
+#define __PRINTF_FLAG_DECIMALPT    0x00000001
+
+/** signed / unsigned number */
+#define __PRINTF_FLAG_SIGNED       0x00000002
+
+/** print leading zeroes */
+#define __PRINTF_FLAG_ZEROPADDED   0x00000004
+
+/** align to left */
+#define __PRINTF_FLAG_LEFTALIGNED  0x00000010
+
+/** always show + sign */
+#define __PRINTF_FLAG_SHOWPLUS     0x00000020
+
+/** print space instead of plus */
+#define __PRINTF_FLAG_SPACESIGN    0x00000040
+
+/** show big characters */
+#define __PRINTF_FLAG_BIGCHARS     0x00000080
+
+/** number has - sign */
+#define __PRINTF_FLAG_NEGATIVE     0x00000100
+
+/** don't print trailing zeros in the fractional part */
+#define __PRINTF_FLAG_NOFRACZEROS  0x00000200
+
+
+/**
+ * Buffer big enough for 64-bit number printed in base 2, sign, prefix and 0
+ * to terminate string... (last one is only for better testing end of buffer by
+ * zero-filling subroutine)
+ */
+#define PRINT_NUMBER_BUFFER_SIZE  (64 + 5)
+
+/** Enumeration of possible arguments types.
+ */
+typedef enum {
+	PrintfQualifierByte = 0,
+	PrintfQualifierShort,
+	PrintfQualifierInt,
+	PrintfQualifierLong,
+	PrintfQualifierLongLong,
+	PrintfQualifierPointer,
+	PrintfQualifierSize
+} qualifier_t;
+
+static const char *nullstr = "(NULL)";
+static const char digits_small[] = "0123456789abcdef";
+static const char digits_big[] = "0123456789ABCDEF";
+static const char invalch = U_SPECIAL;
+
+/** Print one or more characters without adding newline.
+ *
+ * @param buf  Buffer holding characters with size of
+ *             at least size bytes. NULL is not allowed!
+ * @param size Size of the buffer in bytes.
+ * @param ps   Output method and its data.
+ *
+ * @return Number of characters printed.
+ *
+ */
+static int printf_putnchars(const char *buf, size_t size,
+    printf_spec_t *ps)
+{
+	return ps->str_write((void *) buf, size, ps->data);
+}
+
+/** Print one or more wide characters without adding newline.
+ *
+ * @param buf  Buffer holding wide characters with size of
+ *             at least size bytes. NULL is not allowed!
+ * @param size Size of the buffer in bytes.
+ * @param ps   Output method and its data.
+ *
+ * @return Number of wide characters printed.
+ *
+ */
+static int printf_wputnchars(const wchar_t *buf, size_t size,
+    printf_spec_t *ps)
+{
+	return ps->wstr_write((void *) buf, size, ps->data);
+}
+
+/** Print string without adding a newline.
+ *
+ * @param str String to print.
+ * @param ps  Write function specification and support data.
+ *
+ * @return Number of characters printed.
+ *
+ */
+static int printf_putstr(const char *str, printf_spec_t *ps)
+{
+	if (str == NULL)
+		return printf_putnchars(nullstr, str_size(nullstr), ps);
+	
+	return ps->str_write((void *) str, str_size(str), ps->data);
+}
+
+/** Print one ASCII character.
+ *
+ * @param c  ASCII character to be printed.
+ * @param ps Output method.
+ *
+ * @return Number of characters printed.
+ *
+ */
+static int printf_putchar(const char ch, printf_spec_t *ps)
+{
+	if (!ascii_check(ch))
+		return ps->str_write((void *) &invalch, 1, ps->data);
+	
+	return ps->str_write(&ch, 1, ps->data);
+}
+
+/** Print one wide character.
+ *
+ * @param c  Wide character to be printed.
+ * @param ps Output method.
+ *
+ * @return Number of characters printed.
+ *
+ */
+static int printf_putwchar(const wchar_t ch, printf_spec_t *ps)
+{
+	if (!chr_check(ch))
+		return ps->str_write((void *) &invalch, 1, ps->data);
+	
+	return ps->wstr_write(&ch, sizeof(wchar_t), ps->data);
+}
+
+/** Print one formatted ASCII character.
+ *
+ * @param ch    Character to print.
+ * @param width Width modifier.
+ * @param flags Flags that change the way the character is printed.
+ *
+ * @return Number of characters printed, negative value on failure.
+ *
+ */
+static int print_char(const char ch, int width, uint32_t flags, printf_spec_t *ps)
+{
+	size_t counter = 0;
+	if (!(flags & __PRINTF_FLAG_LEFTALIGNED)) {
+		while (--width > 0) {
+			/*
+			 * One space is consumed by the character itself, hence
+			 * the predecrement.
+			 */
+			if (printf_putchar(' ', ps) > 0)
+				counter++;
+		}
+	}
+	
+	if (printf_putchar(ch, ps) > 0)
+		counter++;
+	
+	while (--width > 0) {
+		/*
+		 * One space is consumed by the character itself, hence
+		 * the predecrement.
+		 */
+		if (printf_putchar(' ', ps) > 0)
+			counter++;
+	}
+	
+	return (int) (counter);
+}
+
+/** Print one formatted wide character.
+ *
+ * @param ch    Character to print.
+ * @param width Width modifier.
+ * @param flags Flags that change the way the character is printed.
+ *
+ * @return Number of characters printed, negative value on failure.
+ *
+ */
+static int print_wchar(const wchar_t ch, int width, uint32_t flags, printf_spec_t *ps)
+{
+	size_t counter = 0;
+	if (!(flags & __PRINTF_FLAG_LEFTALIGNED)) {
+		while (--width > 0) {
+			/*
+			 * One space is consumed by the character itself, hence
+			 * the predecrement.
+			 */
+			if (printf_putchar(' ', ps) > 0)
+				counter++;
+		}
+	}
+	
+	if (printf_putwchar(ch, ps) > 0)
+		counter++;
+	
+	while (--width > 0) {
+		/*
+		 * One space is consumed by the character itself, hence
+		 * the predecrement.
+		 */
+		if (printf_putchar(' ', ps) > 0)
+			counter++;
+	}
+	
+	return (int) (counter);
+}
+
+/** Print string.
+ *
+ * @param str       String to be printed.
+ * @param width     Width modifier.
+ * @param precision Precision modifier.
+ * @param flags     Flags that modify the way the string is printed.
+ *
+ * @return Number of characters printed, negative value on failure.
+ */
+static int print_str(char *str, int width, unsigned int precision,
+    uint32_t flags, printf_spec_t *ps)
+{
+	size_t strw;
+	size_t counter = 0;
+	size_t size;
+	int retval;
+
+	if (str == NULL)
+		return printf_putstr(nullstr, ps);
+	
+	strw = str_length(str);
+
+	/* Precision unspecified - print everything. */
+	if ((precision == 0) || (precision > strw))
+		precision = strw;
+	
+	/* Left padding */
+	width -= precision;
+	if (!(flags & __PRINTF_FLAG_LEFTALIGNED)) {
+		while (width-- > 0) {
+			if (printf_putchar(' ', ps) == 1)
+				counter++;
+		}
+	}
+	
+	/* Part of @a str fitting into the alloted space. */
+	size = str_lsize(str, precision);
+	if ((retval = printf_putnchars(str, size, ps)) < 0)
+		return -counter;
+
+	counter += retval;
+
+	/* Right padding */
+	while (width-- > 0) {
+		if (printf_putchar(' ', ps) == 1)
+			counter++;
+	}
+
+	return ((int) counter);
+
+}
+
+/** Print wide string.
+ *
+ * @param str       Wide string to be printed.
+ * @param width     Width modifier.
+ * @param precision Precision modifier.
+ * @param flags     Flags that modify the way the string is printed.
+ *
+ * @return Number of wide characters printed, negative value on failure.
+ */
+static int print_wstr(wchar_t *str, int width, unsigned int precision,
+    uint32_t flags, printf_spec_t *ps)
+{
+	size_t counter = 0;
+	size_t strw;
+	int retval;
+	size_t size;
+
+	if (str == NULL)
+		return printf_putstr(nullstr, ps);
+	
+	strw = wstr_length(str);
+
+	/* Precision not specified - print everything. */
+	if ((precision == 0) || (precision > strw))
+		precision = strw;
+	
+	/* Left padding */
+	width -= precision;
+	if (!(flags & __PRINTF_FLAG_LEFTALIGNED)) {
+		while (width-- > 0) {
+			if (printf_putchar(' ', ps) == 1)
+				counter++;
+		}
+	}
+	
+	/* Part of @a wstr fitting into the alloted space. */
+	size = wstr_lsize(str, precision);
+	if ((retval = printf_wputnchars(str, size, ps)) < 0)
+		return -counter;
+	
+	counter += retval;
+	
+	/* Right padding */
+	while (width-- > 0) {
+		if (printf_putchar(' ', ps) == 1)
+			counter++;
+	}
+
+	return ((int) counter);
+}
+
+/** Print a number in a given base.
+ *
+ * Print significant digits of a number in given base.
+ *
+ * @param num       Number to print.
+ * @param width     Width modifier.
+ * @param precision Precision modifier.
+ * @param base      Base to print the number in (must be between 2 and 16).
+ * @param flags     Flags that modify the way the number is printed.
+ *
+ * @return Number of characters printed.
+ *
+ */
+static int print_number(uint64_t num, int width, int precision, int base,
+			uint64_t flags, printf_spec_t *ps)
+{
+	const char *digits;
+	char d[PRINT_NUMBER_BUFFER_SIZE];
+	char *ptr = &d[PRINT_NUMBER_BUFFER_SIZE - 1];
+	int size = 0;		/* Size of number with all prefixes and signs. */
+	int number_size;	/* Size of plain number. */
+	char sgn;
+	int retval;
+	int counter = 0;
+
+	if (flags & __PRINTF_FLAG_BIGCHARS)
+		digits = digits_big;
+	else
+		digits = digits_small;
+	
+	/* Put zero at end of string */
+	*ptr-- = 0;
+	
+	if (num == 0) {
+		*ptr-- = '0';
+		size++;
+	} else {
+		do {
+			*ptr-- = digits[num % base];
+			size++;
+		} while (num /= base);
+	}
+	
+	/* Size of plain number */
+	number_size = size;
+	
+	/*
+	 * Collect the sum of all prefixes/signs/etc. to calculate padding and
+	 * leading zeroes.
+	 */
+	if (flags & __PRINTF_FLAG_PREFIX) {
+		switch (base) {
+		case 2:
+			/* Binary formating is not standard, but usefull */
+			size += 2;
+			break;
+		case 8:
+			size++;
+			break;
+		case 16:
+			size += 2;
+			break;
+		}
+	}
+	
+	sgn = 0;
+	if (flags & __PRINTF_FLAG_SIGNED) {
+		if (flags & __PRINTF_FLAG_NEGATIVE) {
+			sgn = '-';
+			size++;
+		} else if (flags & __PRINTF_FLAG_SHOWPLUS) {
+			sgn = '+';
+			size++;
+		} else if (flags & __PRINTF_FLAG_SPACESIGN) {
+			sgn = ' ';
+			size++;
+		}
+	}
+	
+	if (flags & __PRINTF_FLAG_LEFTALIGNED)
+		flags &= ~__PRINTF_FLAG_ZEROPADDED;
+	
+	/*
+	 * If the number is left-aligned or precision is specified then
+	 * padding with zeros is ignored.
+	 */
+	if (flags & __PRINTF_FLAG_ZEROPADDED) {
+		if ((precision == 0) && (width > size))
+			precision = width - size + number_size;
+	}
+	
+	/* Print leading spaces */
+	if (number_size > precision) {
+		/* Print the whole number, not only a part */
+		precision = number_size;
+	}
+	
+	width -= precision + size - number_size;
+	
+	if (!(flags & __PRINTF_FLAG_LEFTALIGNED)) {
+		while (width-- > 0) {
+			if (printf_putchar(' ', ps) == 1)
+				counter++;
+		}
+	}
+	
+	/* Print sign */
+	if (sgn) {
+		if (printf_putchar(sgn, ps) == 1)
+			counter++;
+	}
+	
+	/* Print prefix */
+	if (flags & __PRINTF_FLAG_PREFIX) {
+		switch (base) {
+		case 2:
+			/* Binary formating is not standard, but usefull */
+			if (printf_putchar('0', ps) == 1)
+				counter++;
+			if (flags & __PRINTF_FLAG_BIGCHARS) {
+				if (printf_putchar('B', ps) == 1)
+					counter++;
+			} else {
+				if (printf_putchar('b', ps) == 1)
+					counter++;
+			}
+			break;
+		case 8:
+			if (printf_putchar('o', ps) == 1)
+				counter++;
+			break;
+		case 16:
+			if (printf_putchar('0', ps) == 1)
+				counter++;
+			if (flags & __PRINTF_FLAG_BIGCHARS) {
+				if (printf_putchar('X', ps) == 1)
+					counter++;
+			} else {
+				if (printf_putchar('x', ps) == 1)
+					counter++;
+			}
+			break;
+		}
+	}
+	
+	/* Print leading zeroes */
+	precision -= number_size;
+	while (precision-- > 0) {
+		if (printf_putchar('0', ps) == 1)
+			counter++;
+	}
+	
+	/* Print the number itself */
+	if ((retval = printf_putstr(++ptr, ps)) > 0)
+		counter += retval;
+	
+	/* Print trailing spaces */
+	
+	while (width-- > 0) {
+		if (printf_putchar(' ', ps) == 1)
+			counter++;
+	}
+	
+	return ((int) counter);
+}
+
+/** Print formatted string.
+ *
+ * Print string formatted according to the fmt parameter and variadic arguments.
+ * Each formatting directive must have the following form:
+ *
+ *  \% [ FLAGS ] [ WIDTH ] [ .PRECISION ] [ TYPE ] CONVERSION
+ *
+ * FLAGS:@n
+ *  - "#" Force to print prefix. For \%o conversion, the prefix is 0, for
+ *        \%x and \%X prefixes are 0x and 0X and for conversion \%b the
+ *        prefix is 0b.
+ *
+ *  - "-" Align to left.
+ *
+ *  - "+" Print positive sign just as negative.
+ *
+ *  - " " If the printed number is positive and "+" flag is not set,
+ *        print space in place of sign.
+ *
+ *  - "0" Print 0 as padding instead of spaces. Zeroes are placed between
+ *        sign and the rest of the number. This flag is ignored if "-"
+ *        flag is specified.
+ *
+ * WIDTH:@n
+ *  - Specify the minimal width of a printed argument. If it is bigger,
+ *    width is ignored. If width is specified with a "*" character instead of
+ *    number, width is taken from parameter list. And integer parameter is
+ *    expected before parameter for processed conversion specification. If
+ *    this value is negative its absolute value is taken and the "-" flag is
+ *    set.
+ *
+ * PRECISION:@n
+ *  - Value precision. For numbers it specifies minimum valid numbers.
+ *    Smaller numbers are printed with leading zeroes. Bigger numbers are not
+ *    affected. Strings with more than precision characters are cut off. Just
+ *    as with width, an "*" can be used used instead of a number. An integer
+ *    value is then expected in parameters. When both width and precision are
+ *    specified using "*", the first parameter is used for width and the
+ *    second one for precision.
+ *
+ * TYPE:@n
+ *  - "hh" Signed or unsigned char.@n
+ *  - "h"  Signed or unsigned short.@n
+ *  - ""   Signed or unsigned int (default value).@n
+ *  - "l"  Signed or unsigned long int.@n
+ *         If conversion is "c", the character is wint_t (wide character).@n
+ *         If conversion is "s", the string is wchar_t * (wide string).@n
+ *  - "ll" Signed or unsigned long long int.@n
+ *  - "z"  Signed or unsigned ssize_t or site_t.@n
+ *
+ * CONVERSION:@n
+ *  - % Print percentile character itself.
+ *
+ *  - c Print single character. The character is expected to be plain
+ *      ASCII (e.g. only values 0 .. 127 are valid).@n
+ *      If type is "l", then the character is expected to be wide character
+ *      (e.g. values 0 .. 0x10ffff are valid).
+ *
+ *  - s Print zero terminated string. If a NULL value is passed as
+ *      value, "(NULL)" is printed instead.@n
+ *      If type is "l", then the string is expected to be wide string.
+ *
+ *  - P, p Print value of a pointer. Void * value is expected and it is
+ *         printed in hexadecimal notation with prefix (as with
+ *         \%#0.8X / \%#0.8x for 32-bit or \%#0.16lX / \%#0.16lx for 64-bit
+ *         long pointers).
+ *
+ *  - b Print value as unsigned binary number. Prefix is not printed by
+ *      default. (Nonstandard extension.)
+ *
+ *  - o Print value as unsigned octal number. Prefix is not printed by
+ *      default.
+ *
+ *  - d, i Print signed decimal number. There is no difference between d
+ *         and i conversion.
+ *
+ *  - u Print unsigned decimal number.
+ *
+ *  - X, x Print hexadecimal number with upper- or lower-case. Prefix is
+ *         not printed by default.
+ *
+ * All other characters from fmt except the formatting directives are printed
+ * verbatim.
+ *
+ * @param fmt Format NULL-terminated string.
+ *
+ * @return Number of characters printed, negative value on failure.
+ *
+ */
+int printf_core(const char *fmt, printf_spec_t *ps, va_list ap)
+{
+	size_t i;        /* Index of the currently processed character from fmt */
+	size_t nxt = 0;  /* Index of the next character from fmt */
+	size_t j = 0;    /* Index to the first not printed nonformating character */
+	
+	size_t counter = 0;   /* Number of characters printed */
+	int retval;           /* Return values from nested functions */
+	
+	while (true) {
+		wchar_t uc;
+
+		i = nxt;
+		uc = str_decode(fmt, &nxt, STR_NO_LIMIT);
+		
+		if (uc == 0)
+			break;
+		
+		/* Control character */
+		if (uc == '%') {
+			uint32_t flags = 0;
+			bool end = false;
+			int width = 0;
+			int precision = -1;
+			qualifier_t qualifier;
+			unsigned int base = 10;
+			size_t size;
+			uint64_t number;
+
+			/* Print common characters if any processed */
+			if (i > j) {
+				if ((retval = printf_putnchars(&fmt[j], i - j, ps)) < 0) {
+					/* Error */
+					counter = -counter;
+					goto out;
+				}
+				counter += retval;
+			}
+			
+			j = i;
+			
+			/* Parse modifiers */
+			do {
+				i = nxt;
+				uc = str_decode(fmt, &nxt, STR_NO_LIMIT);
+				switch (uc) {
+				case '#':
+					flags |= __PRINTF_FLAG_PREFIX;
+					flags |= __PRINTF_FLAG_DECIMALPT;
+					break;
+				case '-':
+					flags |= __PRINTF_FLAG_LEFTALIGNED;
+					break;
+				case '+':
+					flags |= __PRINTF_FLAG_SHOWPLUS;
+					break;
+				case ' ':
+					flags |= __PRINTF_FLAG_SPACESIGN;
+					break;
+				case '0':
+					flags |= __PRINTF_FLAG_ZEROPADDED;
+					break;
+				default:
+					end = true;
+				};
+			} while (!end);
+			
+			/* Width & '*' operator */
+			if (isdigit(uc)) {
+				while (true) {
+					width *= 10;
+					width += uc - '0';
+					
+					i = nxt;
+					uc = str_decode(fmt, &nxt, STR_NO_LIMIT);
+					if (uc == 0)
+						break;
+					if (!isdigit(uc))
+						break;
+				}
+			} else if (uc == '*') {
+				/* Get width value from argument list */
+				i = nxt;
+				uc = str_decode(fmt, &nxt, STR_NO_LIMIT);
+				width = (int) va_arg(ap, int);
+				if (width < 0) {
+					/* Negative width sets '-' flag */
+					width *= -1;
+					flags |= __PRINTF_FLAG_LEFTALIGNED;
+				}
+			}
+			
+			/* Precision and '*' operator */
+			if (uc == '.') {
+				i = nxt;
+				uc = str_decode(fmt, &nxt, STR_NO_LIMIT);
+				if (isdigit(uc)) {
+					precision = 0;
+					while (true) {
+						precision *= 10;
+						precision += uc - '0';
+						
+						i = nxt;
+						uc = str_decode(fmt, &nxt, STR_NO_LIMIT);
+						if (uc == 0)
+							break;
+						if (!isdigit(uc))
+							break;
+					}
+				} else if (uc == '*') {
+					/* Get precision value from the argument list */
+					i = nxt;
+					uc = str_decode(fmt, &nxt, STR_NO_LIMIT);
+					precision = (int) va_arg(ap, int);
+					if (precision < 0) {
+						/* Ignore negative precision - use default instead */
+						precision = -1;
+					}
+				}
+			}
+			
+			switch (uc) {
+			/** @todo Unimplemented qualifiers:
+			 *        t ptrdiff_t - ISO C 99
+			 */
+			case 'h':
+				/* Char or short */
+				qualifier = PrintfQualifierShort;
+				i = nxt;
+				uc = str_decode(fmt, &nxt, STR_NO_LIMIT);
+				if (uc == 'h') {
+					i = nxt;
+					uc = str_decode(fmt, &nxt, STR_NO_LIMIT);
+					qualifier = PrintfQualifierByte;
+				}
+				break;
+			case 'l':
+				/* Long or long long */
+				qualifier = PrintfQualifierLong;
+				i = nxt;
+				uc = str_decode(fmt, &nxt, STR_NO_LIMIT);
+				if (uc == 'l') {
+					i = nxt;
+					uc = str_decode(fmt, &nxt, STR_NO_LIMIT);
+					qualifier = PrintfQualifierLongLong;
+				}
+				break;
+			case 'z':
+				qualifier = PrintfQualifierSize;
+				i = nxt;
+				uc = str_decode(fmt, &nxt, STR_NO_LIMIT);
+				break;
+			default:
+				/* Default type */
+				qualifier = PrintfQualifierInt;
+			}
+			
+			switch (uc) {
+			/*
+			 * String and character conversions.
+			 */
+			case 's':
+				precision = max(0,  precision);
+				
+				if (qualifier == PrintfQualifierLong)
+					retval = print_wstr(va_arg(ap, wchar_t *), width, precision, flags, ps);
+				else
+					retval = print_str(va_arg(ap, char *), width, precision, flags, ps);
+				
+				if (retval < 0) {
+					counter = -counter;
+					goto out;
+				}
+				
+				counter += retval;
+				j = nxt;
+				goto next_char;
+			case 'c':
+				if (qualifier == PrintfQualifierLong)
+					retval = print_wchar(va_arg(ap, wint_t), width, flags, ps);
+				else
+					retval = print_char(va_arg(ap, unsigned int), width, flags, ps);
+				
+				if (retval < 0) {
+					counter = -counter;
+					goto out;
+				};
+				
+				counter += retval;
+				j = nxt;
+				goto next_char;
+				
+			/*
+			 * Integer values
+			 */
+			case 'P':
+				/* Pointer */
+				flags |= __PRINTF_FLAG_BIGCHARS;
+			case 'p':
+				flags |= __PRINTF_FLAG_PREFIX;
+				flags |= __PRINTF_FLAG_ZEROPADDED;
+				base = 16;
+				qualifier = PrintfQualifierPointer;
+				break;
+			case 'b':
+				base = 2;
+				break;
+			case 'o':
+				base = 8;
+				break;
+			case 'd':
+			case 'i':
+				flags |= __PRINTF_FLAG_SIGNED;
+			case 'u':
+				break;
+			case 'X':
+				flags |= __PRINTF_FLAG_BIGCHARS;
+			case 'x':
+				base = 16;
+				break;
+			
+			/* Percentile itself */
+			case '%':
+				j = i;
+				goto next_char;
+			
+			/*
+			 * Bad formatting.
+			 */
+			default:
+				/*
+				 * Unknown format. Now, j is the index of '%'
+				 * so we will print whole bad format sequence.
+				 */
+				goto next_char;
+			}
+			
+			/* Print integers */
+			switch (qualifier) {
+			case PrintfQualifierByte:
+				size = sizeof(unsigned char);
+				number = (uint64_t) va_arg(ap, unsigned int);
+				break;
+			case PrintfQualifierShort:
+				size = sizeof(unsigned short);
+				number = (uint64_t) va_arg(ap, unsigned int);
+				break;
+			case PrintfQualifierInt:
+				size = sizeof(unsigned int);
+				number = (uint64_t) va_arg(ap, unsigned int);
+				break;
+			case PrintfQualifierLong:
+				size = sizeof(unsigned long);
+				number = (uint64_t) va_arg(ap, unsigned long);
+				break;
+			case PrintfQualifierLongLong:
+				size = sizeof(unsigned long long);
+				number = (uint64_t) va_arg(ap, unsigned long long);
+				break;
+			case PrintfQualifierPointer:
+				size = sizeof(void *);
+				precision = size << 1;
+				number = (uint64_t) (unsigned long)va_arg(ap, void *);
+				break;
+			case PrintfQualifierSize:
+				size = sizeof(size_t);
+				number = (uint64_t) va_arg(ap, size_t);
+				break;
+			default:
+				/* Unknown qualifier */
+				counter = -counter;
+				goto out;
+			}
+			
+			if ((retval = print_number(number, width, precision,
+			    base, flags, ps)) < 0) {
+				counter = -counter;
+				goto out;
+			}
+			
+			counter += retval;
+			j = nxt;
+		}
+next_char:
+		;
+	}
+	
+	if (i > j) {
+		if ((retval = printf_putnchars(&fmt[j], i - j, ps)) < 0) {
+			/* Error */
+			counter = -counter;
+			goto out;
+		}
+		counter += retval;
+	}
+	
+out:
+	return ((int) counter);
+}
diff --git a/apps/libc/helenos/printf_core.h b/apps/libc/helenos/printf_core.h
new file mode 100644
index 0000000..71c725a
--- /dev/null
+++ b/apps/libc/helenos/printf_core.h
@@ -0,0 +1,59 @@
+/*
+ * Copyright (c) 2006 Josef Cejka
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ *
+ * - Redistributions of source code must retain the above copyright
+ *   notice, this list of conditions and the following disclaimer.
+ * - Redistributions in binary form must reproduce the above copyright
+ *   notice, this list of conditions and the following disclaimer in the
+ *   documentation and/or other materials provided with the distribution.
+ * - The name of the author may not be used to endorse or promote products
+ *   derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
+ * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
+ * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
+ * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
+ * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
+ * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
+
+/** @addtogroup libc
+ * @{
+ */
+/** @file
+ */
+
+#ifndef LIBC_PRINTF_CORE_H_
+#define LIBC_PRINTF_CORE_H_
+
+#include <sys/types.h>
+#include <stdarg.h>
+#include <wchar.h>
+
+/** Structure for specifying output methods for different printf clones. */
+typedef struct {
+	/* String output function, returns number of printed characters or EOF */
+	int (*str_write)(const char *, size_t, void *);
+	
+	/* Wide string output function, returns number of printed characters or EOF */
+	int (*wstr_write)(const wchar_t *, size_t, void *);
+	
+	/* User data - output stream specification, state, locks, etc. */
+	void *data;
+} printf_spec_t;
+
+extern int printf_core(const char *, printf_spec_t *, va_list);
+
+#endif
+
+/** @}
+ */
diff --git a/apps/libc/helenos/stdio.c b/apps/libc/helenos/stdio.c
new file mode 100644
index 0000000..e4bf3c6
--- /dev/null
+++ b/apps/libc/helenos/stdio.c
@@ -0,0 +1,153 @@
+/*
+ * Copyright (c) 2011 Jiri Zarevucky
+ * Copyright (c) 2011 Petr Koupy
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ *
+ * - Redistributions of source code must retain the above copyright
+ *   notice, this list of conditions and the following disclaimer.
+ * - Redistributions in binary form must reproduce the above copyright
+ *   notice, this list of conditions and the following disclaimer in the
+ *   documentation and/or other materials provided with the distribution.
+ * - The name of the author may not be used to endorse or promote products
+ *   derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
+ * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
+ * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
+ * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
+ * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
+ * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
+
+/** @addtogroup libposix
+ * @{
+ */
+/** @file Standard buffered input/output.
+ */
+
+#include <stdio.h>
+#include <stdarg.h>
+#include <unistd.h>
+#include <malloc.h>
+
+#include "printf_core.h"
+#include "str.h"
+
+
+/**
+ * Write ordinary string to the opened file.
+ *
+ * @param str String to be written.
+ * @param size Size of the string (in bytes)..
+ * @param fd File descriptor of the opened file.
+ * @return The number of written characters.
+ */
+static int _dprintf_str_write(const char *str, size_t size, void *fd)
+{
+	ssize_t wr = write(*(int *) fd, str, size);
+	return str_nlength(str, wr);
+}
+
+/**
+ * Write wide string to the opened file.
+ * 
+ * @param str String to be written.
+ * @param size Size of the string (in bytes).
+ * @param fd File descriptor of the opened file.
+ * @return The number of written characters.
+ */
+static int _dprintf_wstr_write(const wchar_t *str, size_t size, void *fd)
+{
+	size_t offset = 0;
+	size_t chars = 0;
+	size_t sz;
+	char buf[4];
+	
+	while (offset < size) {
+		sz = 0;
+		if (chr_encode(str[chars], buf, &sz, sizeof(buf)) != 0) {
+			break;
+		}
+		
+		if (write(*(int *) fd, buf, sz) != (ssize_t) sz) {
+			break;
+		}
+		
+		chars++;
+		offset += sizeof(wchar_t);
+	}
+	
+	return chars;
+}
+
+/**
+ * Print formatted output to the opened file.
+ * 
+ * @param fildes File descriptor of the opened file.
+ * @param format Format description.
+ * @param ap Print arguments.
+ * @return Either the number of printed characters or negative value on error.
+ */
+int vdprintf(int fildes, const char * format, va_list ap)
+{
+	printf_spec_t spec = {
+		.str_write = _dprintf_str_write,
+		.wstr_write = _dprintf_wstr_write,
+		.data = &fildes
+	};
+	
+	return printf_core(format, &spec, ap);
+}
+
+/**
+ * Print formatted output to the string.
+ * 
+ * @param s Output string.
+ * @param format Format description.
+ * @return Either the number of printed characters (excluding null byte) or
+ *     negative value on error.
+ */
+int sprintf(char *s, const char * format, ...)
+{
+	va_list list;
+	int result;
+
+	va_start(list, format);
+	result = vsprintf(s, format, list);
+	va_end(list);
+	return result;
+}
+
+/**
+ * Print formatted output to the string.
+ * 
+ * @param s Output string.
+ * @param format Format description.
+ * @param ap Print arguments.
+ * @return Either the number of printed characters (excluding null byte) or
+ *     negative value on error.
+ */
+int vsprintf(char *s, const char * format, va_list ap)
+{
+	return vsnprintf(s, STR_NO_LIMIT, format, ap);
+}
+
+int snprintf(char *str, size_t size, const char *fmt, ...)
+{
+	int ret;
+	va_list args;
+
+	va_start(args, fmt);
+	ret = vsnprintf(str, size, fmt, args);
+	va_end(args);
+
+	return ret;
+}
diff --git a/apps/libc/helenos/str.c b/apps/libc/helenos/str.c
new file mode 100644
index 0000000..cb350e9
--- /dev/null
+++ b/apps/libc/helenos/str.c
@@ -0,0 +1,1755 @@
+/*
+ * Copyright (c) 2005 Martin Decky
+ * Copyright (c) 2008 Jiri Svoboda
+ * Copyright (c) 2011 Martin Sucha
+ * Copyright (c) 2011 Oleg Romanenko
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ *
+ * - Redistributions of source code must retain the above copyright
+ *   notice, this list of conditions and the following disclaimer.
+ * - Redistributions in binary form must reproduce the above copyright
+ *   notice, this list of conditions and the following disclaimer in the
+ *   documentation and/or other materials provided with the distribution.
+ * - The name of the author may not be used to endorse or promote products
+ *   derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
+ * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
+ * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
+ * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
+ * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
+ * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
+
+/** @addtogroup libc
+ * @{
+ */
+/** @file
+ */
+
+#include <stdlib.h>
+#include <stdint.h>
+#include <string.h>
+#include <ctype.h>
+#include <malloc.h>
+#include <errno.h>
+#include <limits.h>
+#include <wchar.h>
+#include "align.h"
+#include "assert.h"
+#include "str.h"
+
+/** Check the condition if wchar_t is signed */
+#ifdef WCHAR_IS_UNSIGNED
+	#define WCHAR_SIGNED_CHECK(cond)  (true)
+#else
+	#define WCHAR_SIGNED_CHECK(cond)  (cond)
+#endif
+
+/** Byte mask consisting of lowest @n bits (out of 8) */
+#define LO_MASK_8(n)  ((uint8_t) ((1 << (n)) - 1))
+
+/** Byte mask consisting of lowest @n bits (out of 32) */
+#define LO_MASK_32(n)  ((uint32_t) ((1 << (n)) - 1))
+
+/** Byte mask consisting of highest @n bits (out of 8) */
+#define HI_MASK_8(n)  (~LO_MASK_8(8 - (n)))
+
+/** Number of data bits in a UTF-8 continuation byte */
+#define CONT_BITS  6
+
+/** Decode a single character from a string.
+ *
+ * Decode a single character from a string of size @a size. Decoding starts
+ * at @a offset and this offset is moved to the beginning of the next
+ * character. In case of decoding error, offset generally advances at least
+ * by one. However, offset is never moved beyond size.
+ *
+ * @param str    String (not necessarily NULL-terminated).
+ * @param offset Byte offset in string where to start decoding.
+ * @param size   Size of the string (in bytes).
+ *
+ * @return Value of decoded character, U_SPECIAL on decoding error or
+ *         NULL if attempt to decode beyond @a size.
+ *
+ */
+wchar_t str_decode(const char *str, size_t *offset, size_t size)
+{
+	uint8_t b0;
+	unsigned int b0_bits;  /* Data bits in first byte */
+	unsigned int cbytes;   /* Number of continuation bytes */
+	wchar_t ch;
+
+	if (*offset + 1 > size)
+		return 0;
+	
+	/* First byte read from string */
+	b0 = (uint8_t) str[(*offset)++];
+	
+	/* Determine code length */
+	
+	if ((b0 & 0x80) == 0) {
+		/* 0xxxxxxx (Plain ASCII) */
+		b0_bits = 7;
+		cbytes = 0;
+	} else if ((b0 & 0xe0) == 0xc0) {
+		/* 110xxxxx 10xxxxxx */
+		b0_bits = 5;
+		cbytes = 1;
+	} else if ((b0 & 0xf0) == 0xe0) {
+		/* 1110xxxx 10xxxxxx 10xxxxxx */
+		b0_bits = 4;
+		cbytes = 2;
+	} else if ((b0 & 0xf8) == 0xf0) {
+		/* 11110xxx 10xxxxxx 10xxxxxx 10xxxxxx */
+		b0_bits = 3;
+		cbytes = 3;
+	} else {
+		/* 10xxxxxx -- unexpected continuation byte */
+		return U_SPECIAL;
+	}
+	
+	if (*offset + cbytes > size)
+		return U_SPECIAL;
+	
+	ch = b0 & LO_MASK_8(b0_bits);
+	
+	/* Decode continuation bytes */
+	while (cbytes > 0) {
+		uint8_t b = (uint8_t) str[(*offset)++];
+		
+		/* Must be 10xxxxxx */
+		if ((b & 0xc0) != 0x80)
+			return U_SPECIAL;
+		
+		/* Shift data bits to ch */
+		ch = (ch << CONT_BITS) | (wchar_t) (b & LO_MASK_8(CONT_BITS));
+		cbytes--;
+	}
+	
+	return ch;
+}
+
+/** Decode a single character from a string to the left.
+ *
+ * Decode a single character from a string of size @a size. Decoding starts
+ * at @a offset and this offset is moved to the beginning of the previous
+ * character. In case of decoding error, offset generally decreases at least
+ * by one. However, offset is never moved before 0.
+ *
+ * @param str    String (not necessarily NULL-terminated).
+ * @param offset Byte offset in string where to start decoding.
+ * @param size   Size of the string (in bytes).
+ *
+ * @return Value of decoded character, U_SPECIAL on decoding error or
+ *         NULL if attempt to decode beyond @a start of str.
+ *
+ */
+wchar_t str_decode_reverse(const char *str, size_t *offset, size_t size)
+{
+	size_t processed = 0;
+
+	if (*offset == 0)
+		return 0;
+	
+	/* Continue while continuation bytes found */
+	while (*offset > 0 && processed < 4) {
+		uint8_t b = (uint8_t) str[--(*offset)];
+		
+		if (processed == 0 && (b & 0x80) == 0) {
+			/* 0xxxxxxx (Plain ASCII) */
+			return b & 0x7f;
+		}
+		else if ((b & 0xe0) == 0xc0 || (b & 0xf0) == 0xe0 ||
+		    (b & 0xf8) == 0xf0) {
+			/* Start byte */
+			size_t start_offset = *offset;
+			return str_decode(str, &start_offset, size);
+		}
+		else if ((b & 0xc0) != 0x80) {
+			/* Not a continuation byte */
+			return U_SPECIAL;
+		}
+		processed++;
+	}
+	/* Too many continuation bytes */
+	return U_SPECIAL;
+}
+
+/** Encode a single character to string representation.
+ *
+ * Encode a single character to string representation (i.e. UTF-8) and store
+ * it into a buffer at @a offset. Encoding starts at @a offset and this offset
+ * is moved to the position where the next character can be written to.
+ *
+ * @param ch     Input character.
+ * @param str    Output buffer.
+ * @param offset Byte offset where to start writing.
+ * @param size   Size of the output buffer (in bytes).
+ *
+ * @return 0 if the character was encoded successfully, EOVERFLOW if there
+ *         was not enough space in the output buffer or EINVAL if the character
+ *         code was invalid.
+ */
+int chr_encode(const wchar_t ch, char *str, size_t *offset, size_t size)
+{
+	unsigned int i;
+	uint32_t cc = (uint32_t) ch;
+	unsigned int b0_bits;  /* Data bits in first byte */
+	unsigned int cbytes;   /* Number of continuation bytes */
+
+	if (*offset >= size)
+		return EOVERFLOW;
+	
+	if (!chr_check(ch))
+		return EINVAL;
+	
+	/* Unsigned version of ch (bit operations should only be done
+	   on unsigned types). */
+	
+	/* Determine how many continuation bytes are needed */
+	
+	if ((cc & ~LO_MASK_32(7)) == 0) {
+		b0_bits = 7;
+		cbytes = 0;
+	} else if ((cc & ~LO_MASK_32(11)) == 0) {
+		b0_bits = 5;
+		cbytes = 1;
+	} else if ((cc & ~LO_MASK_32(16)) == 0) {
+		b0_bits = 4;
+		cbytes = 2;
+	} else if ((cc & ~LO_MASK_32(21)) == 0) {
+		b0_bits = 3;
+		cbytes = 3;
+	} else {
+		/* Codes longer than 21 bits are not supported */
+		return EINVAL;
+	}
+	
+	/* Check for available space in buffer */
+	if (*offset + cbytes >= size)
+		return EOVERFLOW;
+	
+	/* Encode continuation bytes */
+	for (i = cbytes; i > 0; i--) {
+		str[*offset + i] = 0x80 | (cc & LO_MASK_32(CONT_BITS));
+		cc = cc >> CONT_BITS;
+	}
+	
+	/* Encode first byte */
+	str[*offset] = (cc & LO_MASK_32(b0_bits)) | HI_MASK_8(8 - b0_bits - 1);
+	
+	/* Advance offset */
+	*offset += cbytes + 1;
+	
+	return 0;
+}
+
+/** Get size of string.
+ *
+ * Get the number of bytes which are used by the string @a str (excluding the
+ * NULL-terminator).
+ *
+ * @param str String to consider.
+ *
+ * @return Number of bytes used by the string
+ *
+ */
+size_t str_size(const char *str)
+{
+	size_t size = 0;
+	
+	while (*str++ != 0)
+		size++;
+	
+	return size;
+}
+
+/** Get size of wide string.
+ *
+ * Get the number of bytes which are used by the wide string @a str (excluding the
+ * NULL-terminator).
+ *
+ * @param str Wide string to consider.
+ *
+ * @return Number of bytes used by the wide string
+ *
+ */
+size_t wstr_size(const wchar_t *str)
+{
+	return (wstr_length(str) * sizeof(wchar_t));
+}
+
+/** Get size of string with length limit.
+ *
+ * Get the number of bytes which are used by up to @a max_len first
+ * characters in the string @a str. If @a max_len is greater than
+ * the length of @a str, the entire string is measured (excluding the
+ * NULL-terminator).
+ *
+ * @param str     String to consider.
+ * @param max_len Maximum number of characters to measure.
+ *
+ * @return Number of bytes used by the characters.
+ *
+ */
+size_t str_lsize(const char *str, size_t max_len)
+{
+	size_t len = 0;
+	size_t offset = 0;
+	
+	while (len < max_len) {
+		if (str_decode(str, &offset, STR_NO_LIMIT) == 0)
+			break;
+		
+		len++;
+	}
+	
+	return offset;
+}
+
+/** Get size of string with size limit.
+ *
+ * Get the number of bytes which are used by the string @a str
+ * (excluding the NULL-terminator), but no more than @max_size bytes.
+ *
+ * @param str      String to consider.
+ * @param max_size Maximum number of bytes to measure.
+ *
+ * @return Number of bytes used by the string
+ *
+ */
+size_t str_nsize(const char *str, size_t max_size)
+{
+	size_t size = 0;
+	
+	while ((*str++ != 0) && (size < max_size))
+		size++;
+	
+	return size;
+}
+
+/** Get size of wide string with size limit.
+ *
+ * Get the number of bytes which are used by the wide string @a str
+ * (excluding the NULL-terminator), but no more than @max_size bytes.
+ *
+ * @param str      Wide string to consider.
+ * @param max_size Maximum number of bytes to measure.
+ *
+ * @return Number of bytes used by the wide string
+ *
+ */
+size_t wstr_nsize(const wchar_t *str, size_t max_size)
+{
+	return (wstr_nlength(str, max_size) * sizeof(wchar_t));
+}
+
+/** Get size of wide string with length limit.
+ *
+ * Get the number of bytes which are used by up to @a max_len first
+ * wide characters in the wide string @a str. If @a max_len is greater than
+ * the length of @a str, the entire wide string is measured (excluding the
+ * NULL-terminator).
+ *
+ * @param str     Wide string to consider.
+ * @param max_len Maximum number of wide characters to measure.
+ *
+ * @return Number of bytes used by the wide characters.
+ *
+ */
+size_t wstr_lsize(const wchar_t *str, size_t max_len)
+{
+	return (wstr_nlength(str, max_len * sizeof(wchar_t)) * sizeof(wchar_t));
+}
+
+/** Get number of characters in a string.
+ *
+ * @param str NULL-terminated string.
+ *
+ * @return Number of characters in string.
+ *
+ */
+size_t str_length(const char *str)
+{
+	size_t len = 0;
+	size_t offset = 0;
+	
+	while (str_decode(str, &offset, STR_NO_LIMIT) != 0)
+		len++;
+	
+	return len;
+}
+
+/** Get number of characters in a wide string.
+ *
+ * @param str NULL-terminated wide string.
+ *
+ * @return Number of characters in @a str.
+ *
+ */
+size_t wstr_length(const wchar_t *wstr)
+{
+	size_t len = 0;
+	
+	while (*wstr++ != 0)
+		len++;
+	
+	return len;
+}
+
+/** Get number of characters in a string with size limit.
+ *
+ * @param str  NULL-terminated string.
+ * @param size Maximum number of bytes to consider.
+ *
+ * @return Number of characters in string.
+ *
+ */
+size_t str_nlength(const char *str, size_t size)
+{
+	size_t len = 0;
+	size_t offset = 0;
+	
+	while (str_decode(str, &offset, size) != 0)
+		len++;
+	
+	return len;
+}
+
+/** Get number of characters in a string with size limit.
+ *
+ * @param str  NULL-terminated string.
+ * @param size Maximum number of bytes to consider.
+ *
+ * @return Number of characters in string.
+ *
+ */
+size_t wstr_nlength(const wchar_t *str, size_t size)
+{
+	size_t len = 0;
+	size_t limit = ALIGN_DOWN(size, sizeof(wchar_t));
+	size_t offset = 0;
+	
+	while ((offset < limit) && (*str++ != 0)) {
+		len++;
+		offset += sizeof(wchar_t);
+	}
+	
+	return len;
+}
+
+/** Get character display width on a character cell display.
+ *
+ * @param ch	Character
+ * @return	Width of character in cells.
+ */
+size_t chr_width(wchar_t ch)
+{
+	return 1;
+}
+
+/** Get string display width on a character cell display.
+ *
+ * @param str	String
+ * @return	Width of string in cells.
+ */
+size_t str_width(const char *str)
+{
+	size_t width = 0;
+	size_t offset = 0;
+	wchar_t ch;
+	
+	while ((ch = str_decode(str, &offset, STR_NO_LIMIT)) != 0)
+		width += chr_width(ch);
+	
+	return width;
+}
+
+/** Check whether character is plain ASCII.
+ *
+ * @return True if character is plain ASCII.
+ *
+ */
+bool ascii_check(wchar_t ch)
+{
+	if (WCHAR_SIGNED_CHECK(ch >= 0) && (ch <= 127))
+		return true;
+	
+	return false;
+}
+
+/** Check whether character is valid
+ *
+ * @return True if character is a valid Unicode code point.
+ *
+ */
+bool chr_check(wchar_t ch)
+{
+	if (WCHAR_SIGNED_CHECK(ch >= 0) && (ch <= 1114111))
+		return true;
+	
+	return false;
+}
+
+/** Compare two NULL terminated strings.
+ *
+ * Do a char-by-char comparison of two NULL-terminated strings.
+ * The strings are considered equal iff their length is equal
+ * and both strings consist of the same sequence of characters.
+ *
+ * A string S1 is less than another string S2 if it has a character with
+ * lower value at the first character position where the strings differ.
+ * If the strings differ in length, the shorter one is treated as if
+ * padded by characters with a value of zero.
+ *
+ * @param s1 First string to compare.
+ * @param s2 Second string to compare.
+ *
+ * @return 0 if the strings are equal, -1 if the first is less than the second,
+ *         1 if the second is less than the first.
+ *
+ */
+int str_cmp(const char *s1, const char *s2)
+{
+	wchar_t c1 = 0;
+	wchar_t c2 = 0;
+	
+	size_t off1 = 0;
+	size_t off2 = 0;
+
+	while (true) {
+		c1 = str_decode(s1, &off1, STR_NO_LIMIT);
+		c2 = str_decode(s2, &off2, STR_NO_LIMIT);
+
+		if (c1 < c2)
+			return -1;
+		
+		if (c1 > c2)
+			return 1;
+
+		if (c1 == 0 || c2 == 0)
+			break;		
+	}
+
+	return 0;
+}
+
+/** Compare two NULL terminated strings with length limit.
+ *
+ * Do a char-by-char comparison of two NULL-terminated strings.
+ * The strings are considered equal iff
+ * min(str_length(s1), max_len) == min(str_length(s2), max_len)
+ * and both strings consist of the same sequence of characters,
+ * up to max_len characters.
+ *
+ * A string S1 is less than another string S2 if it has a character with
+ * lower value at the first character position where the strings differ.
+ * If the strings differ in length, the shorter one is treated as if
+ * padded by characters with a value of zero. Only the first max_len
+ * characters are considered.
+ *
+ * @param s1      First string to compare.
+ * @param s2      Second string to compare.
+ * @param max_len Maximum number of characters to consider.
+ *
+ * @return 0 if the strings are equal, -1 if the first is less than the second,
+ *         1 if the second is less than the first.
+ *
+ */
+int str_lcmp(const char *s1, const char *s2, size_t max_len)
+{
+	wchar_t c1 = 0;
+	wchar_t c2 = 0;
+	
+	size_t off1 = 0;
+	size_t off2 = 0;
+	
+	size_t len = 0;
+
+	while (true) {
+		if (len >= max_len)
+			break;
+
+		c1 = str_decode(s1, &off1, STR_NO_LIMIT);
+		c2 = str_decode(s2, &off2, STR_NO_LIMIT);
+
+		if (c1 < c2)
+			return -1;
+
+		if (c1 > c2)
+			return 1;
+
+		if (c1 == 0 || c2 == 0)
+			break;
+
+		++len;	
+	}
+
+	return 0;
+
+}
+
+/** Test whether p is a prefix of s.
+ *
+ * Do a char-by-char comparison of two NULL-terminated strings
+ * and determine if p is a prefix of s.
+ *
+ * @param s The string in which to look
+ * @param p The string to check if it is a prefix of s
+ *
+ * @return true iff p is prefix of s else false
+ *
+ */
+bool str_test_prefix(const char *s, const char *p)
+{
+	wchar_t c1 = 0;
+	wchar_t c2 = 0;
+	
+	size_t off1 = 0;
+	size_t off2 = 0;
+
+	while (true) {
+		c1 = str_decode(s, &off1, STR_NO_LIMIT);
+		c2 = str_decode(p, &off2, STR_NO_LIMIT);
+		
+		if (c2 == 0)
+			return true;
+
+		if (c1 != c2)
+			return false;
+		
+		if (c1 == 0)
+			break;
+	}
+
+	return false;
+}
+
+/** Copy string.
+ *
+ * Copy source string @a src to destination buffer @a dest.
+ * No more than @a size bytes are written. If the size of the output buffer
+ * is at least one byte, the output string will always be well-formed, i.e.
+ * null-terminated and containing only complete characters.
+ *
+ * @param dest  Destination buffer.
+ * @param count Size of the destination buffer (must be > 0).
+ * @param src   Source string.
+ *
+ */
+void str_cpy(char *dest, size_t size, const char *src)
+{
+	/* There must be space for a null terminator in the buffer. */
+	size_t src_off = 0;
+	size_t dest_off = 0;
+	wchar_t ch;
+
+	assert(size > 0);
+
+	while ((ch = str_decode(src, &src_off, STR_NO_LIMIT)) != 0) {
+		if (chr_encode(ch, dest, &dest_off, size - 1) != 0)
+			break;
+	}
+	
+	dest[dest_off] = '\0';
+}
+
+/** Copy size-limited substring.
+ *
+ * Copy prefix of string @a src of max. size @a size to destination buffer
+ * @a dest. No more than @a size bytes are written. The output string will
+ * always be well-formed, i.e. null-terminated and containing only complete
+ * characters.
+ *
+ * No more than @a n bytes are read from the input string, so it does not
+ * have to be null-terminated.
+ *
+ * @param dest  Destination buffer.
+ * @param count Size of the destination buffer (must be > 0).
+ * @param src   Source string.
+ * @param n     Maximum number of bytes to read from @a src.
+ *
+ */
+void str_ncpy(char *dest, size_t size, const char *src, size_t n)
+{
+	/* There must be space for a null terminator in the buffer. */
+	size_t src_off = 0;
+	size_t dest_off = 0;
+	wchar_t ch;
+
+	assert(size > 0);
+
+	while ((ch = str_decode(src, &src_off, n)) != 0) {
+		if (chr_encode(ch, dest, &dest_off, size - 1) != 0)
+			break;
+	}
+	
+	dest[dest_off] = '\0';
+}
+
+/** Append one string to another.
+ *
+ * Append source string @a src to string in destination buffer @a dest.
+ * Size of the destination buffer is @a dest. If the size of the output buffer
+ * is at least one byte, the output string will always be well-formed, i.e.
+ * null-terminated and containing only complete characters.
+ *
+ * @param dest   Destination buffer.
+ * @param count Size of the destination buffer.
+ * @param src   Source string.
+ */
+void str_append(char *dest, size_t size, const char *src)
+{
+	size_t dstr_size;
+
+	dstr_size = str_size(dest);
+	if (dstr_size >= size)
+		return;
+	
+	str_cpy(dest + dstr_size, size - dstr_size, src);
+}
+
+/** Convert space-padded ASCII to string.
+ *
+ * Common legacy text encoding in hardware is 7-bit ASCII fitted into
+ * a fixed-width byte buffer (bit 7 always zero), right-padded with spaces
+ * (ASCII 0x20). Convert space-padded ascii to string representation.
+ *
+ * If the text does not fit into the destination buffer, the function converts
+ * as many characters as possible and returns EOVERFLOW.
+ *
+ * If the text contains non-ASCII bytes (with bit 7 set), the whole string is
+ * converted anyway and invalid characters are replaced with question marks
+ * (U_SPECIAL) and the function returns EIO.
+ *
+ * Regardless of return value upon return @a dest will always be well-formed.
+ *
+ * @param dest		Destination buffer
+ * @param size		Size of destination buffer
+ * @param src		Space-padded ASCII.
+ * @param n		Size of the source buffer in bytes.
+ *
+ * @return		0 on success, EOVERFLOW if the text does not fit
+ *			destination buffer, EIO if the text contains
+ *			non-ASCII bytes.
+ */
+int spascii_to_str(char *dest, size_t size, const uint8_t *src, size_t n)
+{
+	size_t sidx;
+	size_t didx;
+	size_t dlast;
+	uint8_t byte;
+	int rc;
+	int result;
+
+	/* There must be space for a null terminator in the buffer. */
+	assert(size > 0);
+	result = 0;
+
+	didx = 0;
+	dlast = 0;
+	for (sidx = 0; sidx < n; ++sidx) {
+		byte = src[sidx];
+		if (!ascii_check(byte)) {
+			byte = U_SPECIAL;
+			result = EIO;
+		}
+
+		rc = chr_encode(byte, dest, &didx, size - 1);
+		if (rc != 0) {
+			assert(rc == EOVERFLOW);
+			dest[didx] = '\0';
+			return rc;
+		}
+
+		/* Remember dest index after last non-empty character */
+		if (byte != 0x20)
+			dlast = didx;
+	}
+
+	/* Terminate string after last non-empty character */
+	dest[dlast] = '\0';
+	return result;
+}
+
+/** Convert wide string to string.
+ *
+ * Convert wide string @a src to string. The output is written to the buffer
+ * specified by @a dest and @a size. @a size must be non-zero and the string
+ * written will always be well-formed.
+ *
+ * @param dest	Destination buffer.
+ * @param size	Size of the destination buffer.
+ * @param src	Source wide string.
+ */
+void wstr_to_str(char *dest, size_t size, const wchar_t *src)
+{
+	wchar_t ch;
+	size_t src_idx;
+	size_t dest_off;
+
+	/* There must be space for a null terminator in the buffer. */
+	assert(size > 0);
+	
+	src_idx = 0;
+	dest_off = 0;
+
+	while ((ch = src[src_idx++]) != 0) {
+		if (chr_encode(ch, dest, &dest_off, size - 1) != 0)
+			break;
+	}
+
+	dest[dest_off] = '\0';
+}
+
+/** Convert UTF16 string to string.
+ *
+ * Convert utf16 string @a src to string. The output is written to the buffer
+ * specified by @a dest and @a size. @a size must be non-zero and the string
+ * written will always be well-formed. Surrogate pairs also supported.
+ *
+ * @param dest	Destination buffer.
+ * @param size	Size of the destination buffer.
+ * @param src	Source utf16 string.
+ *
+ * @return 0, if success, negative otherwise.
+ */
+int utf16_to_str(char *dest, size_t size, const uint16_t *src)
+{
+	size_t idx = 0, dest_off = 0;
+	wchar_t ch;
+	int rc = 0;
+
+	/* There must be space for a null terminator in the buffer. */
+	assert(size > 0);
+
+	while (src[idx]) {
+		if ((src[idx] & 0xfc00) == 0xd800) {
+			if (src[idx + 1] && (src[idx + 1] & 0xfc00) == 0xdc00) {
+				ch = 0x10000;
+				ch += (src[idx] & 0x03FF) << 10;
+				ch += (src[idx + 1] & 0x03FF);
+				idx += 2;
+			}
+			else
+				break;
+		} else {
+			ch = src[idx];
+			idx++;
+		}
+		rc = chr_encode(ch, dest, &dest_off, size - 1);
+		if (rc != 0)
+			break;
+	}
+	dest[dest_off] = '\0';
+	return rc;
+}
+
+int str_to_utf16(uint16_t *dest, size_t size, const char *src)
+{
+	int rc = 0;
+	size_t offset = 0;
+	size_t idx = 0;
+	wchar_t c;
+
+	assert(size > 0);
+	
+	while ((c = str_decode(src, &offset, STR_NO_LIMIT)) != 0) {
+		if (c > 0x10000) {
+			if (idx + 2 >= size - 1) {
+				rc = EOVERFLOW;
+				break;
+			}
+			c = (c - 0x10000);
+			dest[idx] = 0xD800 | (c >> 10);
+			dest[idx + 1] = 0xDC00 | (c & 0x3FF);
+			idx++;
+		} else {
+			 dest[idx] = c;
+		}
+
+		idx++;
+		if (idx >= size - 1) {
+			rc = EOVERFLOW;
+			break;
+		}
+	}
+
+	dest[idx] = '\0';
+	return rc;
+}
+
+
+/** Convert wide string to new string.
+ *
+ * Convert wide string @a src to string. Space for the new string is allocated
+ * on the heap.
+ *
+ * @param src	Source wide string.
+ * @return	New string.
+ */
+char *wstr_to_astr(const wchar_t *src)
+{
+	char dbuf[STR_BOUNDS(1)];
+	char *str;
+	wchar_t ch;
+
+	size_t src_idx;
+	size_t dest_off;
+	size_t dest_size;
+
+	/* Compute size of encoded string. */
+
+	src_idx = 0;
+	dest_size = 0;
+
+	while ((ch = src[src_idx++]) != 0) {
+		dest_off = 0;
+		if (chr_encode(ch, dbuf, &dest_off, STR_BOUNDS(1)) != 0)
+			break;
+		dest_size += dest_off;
+	}
+
+	str = malloc(dest_size + 1);
+	if (str == NULL)
+		return NULL;
+
+	/* Encode string. */
+
+	src_idx = 0;
+	dest_off = 0;
+
+	while ((ch = src[src_idx++]) != 0) {
+		if (chr_encode(ch, str, &dest_off, dest_size) != 0)
+			break;
+	}
+
+	str[dest_size] = '\0';
+	return str;
+}
+
+
+/** Convert string to wide string.
+ *
+ * Convert string @a src to wide string. The output is written to the
+ * buffer specified by @a dest and @a dlen. @a dlen must be non-zero
+ * and the wide string written will always be null-terminated.
+ *
+ * @param dest	Destination buffer.
+ * @param dlen	Length of destination buffer (number of wchars).
+ * @param src	Source string.
+ */
+void str_to_wstr(wchar_t *dest, size_t dlen, const char *src)
+{
+	size_t offset;
+	size_t di;
+	wchar_t c;
+
+	assert(dlen > 0);
+
+	offset = 0;
+	di = 0;
+
+	do {
+		if (di >= dlen - 1)
+			break;
+
+		c = str_decode(src, &offset, STR_NO_LIMIT);
+		dest[di++] = c;
+	} while (c != '\0');
+
+	dest[dlen - 1] = '\0';
+}
+
+/** Convert string to wide string.
+ *
+ * Convert string @a src to wide string. A new wide NULL-terminated
+ * string will be allocated on the heap.
+ *
+ * @param src	Source string.
+ */
+wchar_t *str_to_awstr(const char *str)
+{
+	size_t len = str_length(str);
+	
+	wchar_t *wstr = calloc(len+1, sizeof(wchar_t));
+	if (wstr == NULL)
+		return NULL;
+	
+	str_to_wstr(wstr, len + 1, str);
+	return wstr;
+}
+
+/** Find first occurence of character in string.
+ *
+ * @param str String to search.
+ * @param ch  Character to look for.
+ *
+ * @return Pointer to character in @a str or NULL if not found.
+ */
+char *str_chr(const char *str, wchar_t ch)
+{
+	wchar_t acc;
+	size_t off = 0;
+	size_t last = 0;
+	
+	while ((acc = str_decode(str, &off, STR_NO_LIMIT)) != 0) {
+		if (acc == ch)
+			return (char *) (str + last);
+		last = off;
+	}
+	
+	return NULL;
+}
+
+/** Removes specified trailing characters from a string.
+ *
+ * @param str String to remove from.
+ * @param ch  Character to remove.
+ */
+void str_rtrim(char *str, wchar_t ch)
+{
+	size_t off = 0;
+	size_t pos = 0;
+	wchar_t c;
+	bool update_last_chunk = true;
+	char *last_chunk = NULL;
+
+	while ((c = str_decode(str, &off, STR_NO_LIMIT))) {
+		if (c != ch) {
+			update_last_chunk = true;
+			last_chunk = NULL;
+		} else if (update_last_chunk) {
+			update_last_chunk = false;
+			last_chunk = (str + pos);
+		}
+		pos = off;
+	}
+
+	if (last_chunk)
+		*last_chunk = '\0';
+}
+
+/** Removes specified leading characters from a string.
+ *
+ * @param str String to remove from.
+ * @param ch  Character to remove.
+ */
+void str_ltrim(char *str, wchar_t ch)
+{
+	wchar_t acc;
+	size_t off = 0;
+	size_t pos = 0;
+	size_t str_sz = str_size(str);
+
+	while ((acc = str_decode(str, &off, STR_NO_LIMIT)) != 0) {
+		if (acc != ch)
+			break;
+		else
+			pos = off;
+	}
+
+	if (pos > 0) {
+		memmove(str, &str[pos], str_sz - pos);
+		pos = str_sz - pos;
+		str[str_sz - pos] = '\0';
+	}
+}
+
+/** Find last occurence of character in string.
+ *
+ * @param str String to search.
+ * @param ch  Character to look for.
+ *
+ * @return Pointer to character in @a str or NULL if not found.
+ */
+char *str_rchr(const char *str, wchar_t ch)
+{
+	wchar_t acc;
+	size_t off = 0;
+	size_t last = 0;
+	const char *res = NULL;
+	
+	while ((acc = str_decode(str, &off, STR_NO_LIMIT)) != 0) {
+		if (acc == ch)
+			res = (str + last);
+		last = off;
+	}
+	
+	return (char *) res;
+}
+
+/** Insert a wide character into a wide string.
+ *
+ * Insert a wide character into a wide string at position
+ * @a pos. The characters after the position are shifted.
+ *
+ * @param str     String to insert to.
+ * @param ch      Character to insert to.
+ * @param pos     Character index where to insert.
+ @ @param max_pos Characters in the buffer.
+ *
+ * @return True if the insertion was sucessful, false if the position
+ *         is out of bounds.
+ *
+ */
+bool wstr_linsert(wchar_t *str, wchar_t ch, size_t pos, size_t max_pos)
+{
+	size_t len = wstr_length(str);
+	size_t i;
+	
+	if ((pos > len) || (pos + 1 > max_pos))
+		return false;
+	
+	for (i = len; i + 1 > pos; i--)
+		str[i + 1] = str[i];
+	
+	str[pos] = ch;
+	
+	return true;
+}
+
+/** Remove a wide character from a wide string.
+ *
+ * Remove a wide character from a wide string at position
+ * @a pos. The characters after the position are shifted.
+ *
+ * @param str String to remove from.
+ * @param pos Character index to remove.
+ *
+ * @return True if the removal was sucessful, false if the position
+ *         is out of bounds.
+ *
+ */
+bool wstr_remove(wchar_t *str, size_t pos)
+{
+	size_t len = wstr_length(str);
+	size_t i;
+	
+	if (pos >= len)
+		return false;
+	
+	for (i = pos + 1; i <= len; i++)
+		str[i - 1] = str[i];
+	
+	return true;
+}
+
+int stricmp(const char *a, const char *b)
+{
+	int c = 0;
+	
+	while (a[c] && b[c] && (!(tolower(a[c]) - tolower(b[c]))))
+		c++;
+	
+	return (tolower(a[c]) - tolower(b[c]));
+}
+
+/** Convert string to a number. 
+ * Core of strtol and strtoul functions.
+ *
+ * @param nptr		Pointer to string.
+ * @param endptr	If not NULL, function stores here pointer to the first
+ * 			invalid character.
+ * @param base		Zero or number between 2 and 36 inclusive.
+ * @param sgn		It's set to 1 if minus found.
+ * @return		Result of conversion.
+ */
+static unsigned long
+_strtoul(const char *nptr, char **endptr, int base, char *sgn)
+{
+	unsigned char c;
+	unsigned long result = 0;
+	unsigned long a, b;
+	const char *str = nptr;
+	const char *tmpptr;
+	
+	while (isspace(*str))
+		str++;
+	
+	if (*str == '-') {
+		*sgn = 1;
+		++str;
+	} else if (*str == '+')
+		++str;
+	
+	if (base) {
+		if ((base == 1) || (base > 36)) {
+			/* FIXME: set errno to EINVAL */
+			return 0;
+		}
+		if ((base == 16) && (*str == '0') && ((str[1] == 'x') ||
+		    (str[1] == 'X'))) {
+			str += 2;
+		}
+	} else {
+		base = 10;
+		
+		if (*str == '0') {
+			base = 8;
+			if ((str[1] == 'X') || (str[1] == 'x'))  {
+				base = 16;
+				str += 2;
+			}
+		} 
+	}
+	
+	tmpptr = str;
+
+	while (*str) {
+		c = *str;
+		c = (c >= 'a' ? c - 'a' + 10 : (c >= 'A' ? c - 'A' + 10 :
+		    (c <= '9' ? c - '0' : 0xff)));
+		if (c >= base) {
+			break;
+		}
+		
+		a = (result & 0xff) * base + c;
+		b = (result >> 8) * base + (a >> 8);
+		
+		if (b > (ULONG_MAX >> 8)) {
+			/* overflow */
+			/* FIXME: errno = ERANGE*/
+			return ULONG_MAX;
+		}
+	
+		result = (b << 8) + (a & 0xff);
+		++str;
+	}
+	
+	if (str == tmpptr) {
+		/*
+		 * No number was found => first invalid character is the first
+		 * character of the string.
+		 */
+		/* FIXME: set errno to EINVAL */
+		str = nptr;
+		result = 0;
+	}
+	
+	if (endptr)
+		*endptr = (char *) str;
+
+	if (nptr == str) { 
+		/*FIXME: errno = EINVAL*/
+		return 0;
+	}
+
+	return result;
+}
+
+/** Convert initial part of string to long int according to given base.
+ * The number may begin with an arbitrary number of whitespaces followed by
+ * optional sign (`+' or `-'). If the base is 0 or 16, the prefix `0x' may be
+ * inserted and the number will be taken as hexadecimal one. If the base is 0
+ * and the number begin with a zero, number will be taken as octal one (as with
+ * base 8). Otherwise the base 0 is taken as decimal.
+ *
+ * @param nptr		Pointer to string.
+ * @param endptr	If not NULL, function stores here pointer to the first
+ * 			invalid character.
+ * @param base		Zero or number between 2 and 36 inclusive.
+ * @return		Result of conversion.
+ */
+long int strtol(const char *nptr, char **endptr, int base)
+{
+	char sgn = 0;
+	unsigned long number = 0;
+	
+	number = _strtoul(nptr, endptr, base, &sgn);
+
+	if (number > LONG_MAX) {
+		if ((sgn) && (number == (unsigned long) (LONG_MAX) + 1)) {
+			/* FIXME: set 0 to errno */
+			return number;		
+		}
+		/* FIXME: set ERANGE to errno */
+		return (sgn ? LONG_MIN : LONG_MAX);	
+	}
+	
+	return (sgn ? -number : number);
+}
+
+/** Convert initial part of string to unsigned long according to given base.
+ * The number may begin with an arbitrary number of whitespaces followed by
+ * optional sign (`+' or `-'). If the base is 0 or 16, the prefix `0x' may be
+ * inserted and the number will be taken as hexadecimal one. If the base is 0
+ * and the number begin with a zero, number will be taken as octal one (as with
+ * base 8). Otherwise the base 0 is taken as decimal.
+ *
+ * @param nptr		Pointer to string.
+ * @param endptr	If not NULL, function stores here pointer to the first
+ * 			invalid character
+ * @param base		Zero or number between 2 and 36 inclusive.
+ * @return		Result of conversion.
+ */
+unsigned long strtoul(const char *nptr, char **endptr, int base)
+{
+	char sgn = 0;
+	unsigned long number = 0;
+	
+	number = _strtoul(nptr, endptr, base, &sgn);
+
+	return (sgn ? -number : number);
+}
+
+char *strtok(char *s, const char *delim)
+{
+	static char *next;
+
+	return strtok_r(s, delim, &next);
+}
+
+char *strtok_r(char *s, const char *delim, char **next)
+{
+	char *start, *end;
+
+	if (s == NULL)
+		s = *next;
+
+	/* Skip over leading delimiters. */
+	while (*s && (str_chr(delim, *s) != NULL)) ++s;
+	start = s;
+
+	/* Skip over token characters. */
+	while (*s && (str_chr(delim, *s) == NULL)) ++s;
+	end = s;
+	*next = (*s ? s + 1 : s);
+
+	if (start == end) {
+		return NULL;	/* No more tokens. */
+	}
+
+	/* Overwrite delimiter with NULL terminator. */
+	*end = '\0';
+	return start;
+}
+
+/** Convert string to uint64_t (internal variant).
+ *
+ * @param nptr   Pointer to string.
+ * @param endptr Pointer to the first invalid character is stored here.
+ * @param base   Zero or number between 2 and 36 inclusive.
+ * @param neg    Indication of unary minus is stored here.
+ * @apram result Result of the conversion.
+ *
+ * @return 0 if conversion was successful.
+ *
+ */
+static int str_uint(const char *nptr, char **endptr, unsigned int base,
+    bool *neg, uint64_t *result)
+{
+	const char *str = nptr;
+	const char *startstr;
+
+	assert(endptr != NULL);
+	assert(neg != NULL);
+	assert(result != NULL);
+	
+	*neg = false;
+	
+	/* Ignore leading whitespace */
+	while (isspace(*str))
+		str++;
+	
+	if (*str == '-') {
+		*neg = true;
+		str++;
+	} else if (*str == '+')
+		str++;
+	
+	if (base == 0) {
+		/* Decode base if not specified */
+		base = 10;
+		
+		if (*str == '0') {
+			base = 8;
+			str++;
+			
+			switch (*str) {
+			case 'b':
+			case 'B':
+				base = 2;
+				str++;
+				break;
+			case 'o':
+			case 'O':
+				base = 8;
+				str++;
+				break;
+			case 'd':
+			case 'D':
+			case 't':
+			case 'T':
+				base = 10;
+				str++;
+				break;
+			case 'x':
+			case 'X':
+				base = 16;
+				str++;
+				break;
+			default:
+				str--;
+			}
+		}
+	} else {
+		/* Check base range */
+		if ((base < 2) || (base > 36)) {
+			*endptr = (char *) str;
+			return EINVAL;
+		}
+	}
+	
+	*result = 0;
+	startstr = str;
+	
+	while (*str != 0) {
+		unsigned int digit;
+		uint64_t prev;
+		
+		if ((*str >= 'a') && (*str <= 'z'))
+			digit = *str - 'a' + 10;
+		else if ((*str >= 'A') && (*str <= 'Z'))
+			digit = *str - 'A' + 10;
+		else if ((*str >= '0') && (*str <= '9'))
+			digit = *str - '0';
+		else
+			break;
+		
+		if (digit >= base)
+			break;
+		
+		prev = *result;
+		*result = (*result) * base + digit;
+		
+		if (*result < prev) {
+			/* Overflow */
+			*endptr = (char *) str;
+			return EOVERFLOW;
+		}
+		
+		str++;
+	}
+	
+	if (str == startstr) {
+		/*
+		 * No digits were decoded => first invalid character is
+		 * the first character of the string.
+		 */
+		str = nptr;
+	}
+	
+	*endptr = (char *) str;
+	
+	if (str == nptr)
+		return EINVAL;
+	
+	return 0;
+}
+
+/** Convert string to uint8_t.
+ *
+ * @param nptr   Pointer to string.
+ * @param endptr If not NULL, pointer to the first invalid character
+ *               is stored here.
+ * @param base   Zero or number between 2 and 36 inclusive.
+ * @param strict Do not allow any trailing characters.
+ * @param result Result of the conversion.
+ *
+ * @return 0 if conversion was successful.
+ *
+ */
+int str_uint8_t(const char *nptr, char **endptr, unsigned int base,
+    bool strict, uint8_t *result)
+{
+	bool neg;
+	char *lendptr;
+	uint64_t res;
+	int ret;
+	uint8_t _res;
+
+	assert(result != NULL);
+
+	ret = str_uint(nptr, &lendptr, base, &neg, &res);
+	
+	if (endptr != NULL)
+		*endptr = (char *) lendptr;
+	
+	if (ret != 0)
+		return ret;
+	
+	/* Do not allow negative values */
+	if (neg)
+		return EINVAL;
+	
+	/* Check whether we are at the end of
+	   the string in strict mode */
+	if ((strict) && (*lendptr != 0))
+		return EINVAL;
+	
+	/* Check for overflow */
+	_res = (uint8_t) res;
+	if (_res != res)
+		return EOVERFLOW;
+	
+	*result = _res;
+	
+	return 0;
+}
+
+/** Convert string to uint16_t.
+ *
+ * @param nptr   Pointer to string.
+ * @param endptr If not NULL, pointer to the first invalid character
+ *               is stored here.
+ * @param base   Zero or number between 2 and 36 inclusive.
+ * @param strict Do not allow any trailing characters.
+ * @param result Result of the conversion.
+ *
+ * @return 0 if conversion was successful.
+ *
+ */
+int str_uint16_t(const char *nptr, char **endptr, unsigned int base,
+    bool strict, uint16_t *result)
+{
+	bool neg;
+	char *lendptr;
+	uint64_t res;
+	int ret;
+	uint16_t _res;
+
+	assert(result != NULL);
+
+	ret = str_uint(nptr, &lendptr, base, &neg, &res);
+	
+	if (endptr != NULL)
+		*endptr = (char *) lendptr;
+	
+	if (ret != 0)
+		return ret;
+	
+	/* Do not allow negative values */
+	if (neg)
+		return EINVAL;
+	
+	/* Check whether we are at the end of
+	   the string in strict mode */
+	if ((strict) && (*lendptr != 0))
+		return EINVAL;
+	
+	/* Check for overflow */
+	_res = (uint16_t) res;
+	if (_res != res)
+		return EOVERFLOW;
+	
+	*result = _res;
+	
+	return 0;
+}
+
+/** Convert string to uint32_t.
+ *
+ * @param nptr   Pointer to string.
+ * @param endptr If not NULL, pointer to the first invalid character
+ *               is stored here.
+ * @param base   Zero or number between 2 and 36 inclusive.
+ * @param strict Do not allow any trailing characters.
+ * @param result Result of the conversion.
+ *
+ * @return 0 if conversion was successful.
+ *
+ */
+int str_uint32_t(const char *nptr, char **endptr, unsigned int base,
+    bool strict, uint32_t *result)
+{
+	bool neg;
+	char *lendptr;
+	uint64_t res;
+	int ret;
+	uint32_t _res;
+
+	assert(result != NULL);
+
+	ret = str_uint(nptr, &lendptr, base, &neg, &res);
+	
+	if (endptr != NULL)
+		*endptr = (char *) lendptr;
+	
+	if (ret != 0)
+		return ret;
+	
+	/* Do not allow negative values */
+	if (neg)
+		return EINVAL;
+	
+	/* Check whether we are at the end of
+	   the string in strict mode */
+	if ((strict) && (*lendptr != 0))
+		return EINVAL;
+	
+	/* Check for overflow */
+	_res = (uint32_t) res;
+	if (_res != res)
+		return EOVERFLOW;
+	
+	*result = _res;
+	
+	return 0;
+}
+
+/** Convert string to uint64_t.
+ *
+ * @param nptr   Pointer to string.
+ * @param endptr If not NULL, pointer to the first invalid character
+ *               is stored here.
+ * @param base   Zero or number between 2 and 36 inclusive.
+ * @param strict Do not allow any trailing characters.
+ * @param result Result of the conversion.
+ *
+ * @return 0 if conversion was successful.
+ *
+ */
+int str_uint64_t(const char *nptr, char **endptr, unsigned int base,
+    bool strict, uint64_t *result)
+{
+	bool neg;
+	char *lendptr;
+	int ret;
+
+	assert(result != NULL);
+	
+	ret = str_uint(nptr, &lendptr, base, &neg, result);
+	
+	if (endptr != NULL)
+		*endptr = (char *) lendptr;
+	
+	if (ret != 0)
+		return ret;
+	
+	/* Do not allow negative values */
+	if (neg)
+		return EINVAL;
+	
+	/* Check whether we are at the end of
+	   the string in strict mode */
+	if ((strict) && (*lendptr != 0))
+		return EINVAL;
+	
+	return 0;
+}
+
+/** Convert string to size_t.
+ *
+ * @param nptr   Pointer to string.
+ * @param endptr If not NULL, pointer to the first invalid character
+ *               is stored here.
+ * @param base   Zero or number between 2 and 36 inclusive.
+ * @param strict Do not allow any trailing characters.
+ * @param result Result of the conversion.
+ *
+ * @return 0 if conversion was successful.
+ *
+ */
+int str_size_t(const char *nptr, char **endptr, unsigned int base,
+    bool strict, size_t *result)
+{
+	bool neg;
+	char *lendptr;
+	uint64_t res;
+	int ret;
+	size_t _res;
+
+	assert(result != NULL);
+	
+	ret = str_uint(nptr, &lendptr, base, &neg, &res);
+	
+	if (endptr != NULL)
+		*endptr = (char *) lendptr;
+	
+	if (ret != 0)
+		return ret;
+	
+	/* Do not allow negative values */
+	if (neg)
+		return EINVAL;
+	
+	/* Check whether we are at the end of
+	   the string in strict mode */
+	if ((strict) && (*lendptr != 0))
+		return EINVAL;
+	
+	/* Check for overflow */
+	_res = (size_t) res;
+	if (_res != res)
+		return EOVERFLOW;
+	
+	*result = _res;
+	
+	return 0;
+}
+
+void order_suffix(const uint64_t val, uint64_t *rv, char *suffix)
+{
+	if (val > UINT64_C(10000000000000000000)) {
+		*rv = val / UINT64_C(1000000000000000000);
+		*suffix = 'Z';
+	} else if (val > UINT64_C(1000000000000000000)) {
+		*rv = val / UINT64_C(1000000000000000);
+		*suffix = 'E';
+	} else if (val > UINT64_C(1000000000000000)) {
+		*rv = val / UINT64_C(1000000000000);
+		*suffix = 'T';
+	} else if (val > UINT64_C(1000000000000)) {
+		*rv = val / UINT64_C(1000000000);
+		*suffix = 'G';
+	} else if (val > UINT64_C(1000000000)) {
+		*rv = val / UINT64_C(1000000);
+		*suffix = 'M';
+	} else if (val > UINT64_C(1000000)) {
+		*rv = val / UINT64_C(1000);
+		*suffix = 'k';
+	} else {
+		*rv = val;
+		*suffix = ' ';
+	}
+}
+
+void bin_order_suffix(const uint64_t val, uint64_t *rv, const char **suffix,
+    bool fixed)
+{
+	if (val > UINT64_C(1152921504606846976)) {
+		*rv = val / UINT64_C(1125899906842624);
+		*suffix = "EiB";
+	} else if (val > UINT64_C(1125899906842624)) {
+		*rv = val / UINT64_C(1099511627776);
+		*suffix = "TiB";
+	} else if (val > UINT64_C(1099511627776)) {
+		*rv = val / UINT64_C(1073741824);
+		*suffix = "GiB";
+	} else if (val > UINT64_C(1073741824)) {
+		*rv = val / UINT64_C(1048576);
+		*suffix = "MiB";
+	} else if (val > UINT64_C(1048576)) {
+		*rv = val / UINT64_C(1024);
+		*suffix = "KiB";
+	} else {
+		*rv = val;
+		if (fixed)
+			*suffix = "B  ";
+		else
+			*suffix = "B";
+	}
+}
+
+/** @}
+ */
diff --git a/apps/libc/helenos/str.h b/apps/libc/helenos/str.h
new file mode 100644
index 0000000..f114543
--- /dev/null
+++ b/apps/libc/helenos/str.h
@@ -0,0 +1,135 @@
+/*
+ * Copyright (c) 2005 Martin Decky
+ * Copyright (c) 2011 Oleg Romanenko
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ *
+ * - Redistributions of source code must retain the above copyright
+ *   notice, this list of conditions and the following disclaimer.
+ * - Redistributions in binary form must reproduce the above copyright
+ *   notice, this list of conditions and the following disclaimer in the
+ *   documentation and/or other materials provided with the distribution.
+ * - The name of the author may not be used to endorse or promote products
+ *   derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
+ * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
+ * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
+ * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
+ * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
+ * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
+
+/** @addtogroup libc
+ * @{
+ */
+/** @file
+ */
+
+#ifndef LIBC_STR_H_
+#define LIBC_STR_H_
+
+#include <sys/types.h>
+#include <stdbool.h>
+#include <wchar.h>
+
+#define U_SPECIAL  '?'
+
+/** No size limit constant */
+#define STR_NO_LIMIT  ((size_t) -1)
+
+/** Maximum size of a string containing @c length characters */
+#define STR_BOUNDS(length)  ((length) << 2)
+
+/**
+ * Maximum size of a buffer needed to a string converted from space-padded
+ * ASCII of size @a spa_size using spascii_to_str().
+ */
+#define SPASCII_STR_BUFSIZE(spa_size) ((spa_size) + 1)
+
+extern wchar_t str_decode(const char *str, size_t *offset, size_t sz);
+extern wchar_t str_decode_reverse(const char *str, size_t *offset, size_t sz);
+extern int chr_encode(const wchar_t ch, char *str, size_t *offset, size_t sz);
+
+extern size_t str_size(const char *str);
+extern size_t wstr_size(const wchar_t *str);
+
+extern size_t str_nsize(const char *str, size_t max_size);
+extern size_t wstr_nsize(const wchar_t *str, size_t max_size);
+
+extern size_t str_lsize(const char *str, size_t max_len);
+extern size_t wstr_lsize(const wchar_t *str, size_t max_len);
+
+extern size_t str_length(const char *str);
+extern size_t wstr_length(const wchar_t *wstr);
+
+extern size_t str_nlength(const char *str, size_t size);
+extern size_t wstr_nlength(const wchar_t *str, size_t size);
+
+extern size_t chr_width(wchar_t ch);
+extern size_t str_width(const char *str);
+
+extern bool ascii_check(wchar_t ch);
+extern bool chr_check(wchar_t ch);
+
+extern int str_cmp(const char *s1, const char *s2);
+extern int str_lcmp(const char *s1, const char *s2, size_t max_len);
+
+extern bool str_test_prefix(const char *s, const char *p);
+
+extern void str_cpy(char *dest, size_t size, const char *src);
+extern void str_ncpy(char *dest, size_t size, const char *src, size_t n);
+extern void str_append(char *dest, size_t size, const char *src);
+
+extern int spascii_to_str(char *dest, size_t size, const uint8_t *src, size_t n);
+extern void wstr_to_str(char *dest, size_t size, const wchar_t *src);
+extern char *wstr_to_astr(const wchar_t *src);
+extern void str_to_wstr(wchar_t *dest, size_t dlen, const char *src);
+extern wchar_t *str_to_awstr(const char *src);
+extern int utf16_to_str(char *dest, size_t size, const uint16_t *src);
+extern int str_to_utf16(uint16_t *dest, size_t size, const char *src);
+
+extern char *str_chr(const char *str, wchar_t ch);
+extern char *str_rchr(const char *str, wchar_t ch);
+
+extern void str_rtrim(char *str, wchar_t ch);
+extern void str_ltrim(char *str, wchar_t ch);
+
+extern bool wstr_linsert(wchar_t *str, wchar_t ch, size_t pos, size_t max_pos);
+extern bool wstr_remove(wchar_t *str, size_t pos);
+
+extern char *str_dup(const char *);
+extern char *str_ndup(const char *, size_t max_size);
+
+extern int str_uint8_t(const char *, char **, unsigned int, bool, uint8_t *);
+extern int str_uint16_t(const char *, char **, unsigned int, bool, uint16_t *);
+extern int str_uint32_t(const char *, char **, unsigned int, bool, uint32_t *);
+extern int str_uint64_t(const char *, char **, unsigned int, bool, uint64_t *);
+extern int str_size_t(const char *, char **, unsigned int, bool, size_t *);
+
+extern void order_suffix(const uint64_t, uint64_t *, char *);
+extern void bin_order_suffix(const uint64_t, uint64_t *, const char **, bool);
+
+/*
+ * TODO: Get rid of this.
+ */
+
+extern int stricmp(const char *, const char *);
+
+extern long int strtol(const char *, char **, int);
+extern unsigned long strtoul(const char *, char **, int);
+
+extern char * strtok_r(char *, const char *, char **);
+extern char * strtok(char *, const char *);
+
+#endif
+
+/** @}
+ */
diff --git a/apps/libc/helenos/vsnprintf.c b/apps/libc/helenos/vsnprintf.c
new file mode 100644
index 0000000..7b54719
--- /dev/null
+++ b/apps/libc/helenos/vsnprintf.c
@@ -0,0 +1,187 @@
+/*
+ * Copyright (c) 2006 Josef Cejka
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ *
+ * - Redistributions of source code must retain the above copyright
+ *   notice, this list of conditions and the following disclaimer.
+ * - Redistributions in binary form must reproduce the above copyright
+ *   notice, this list of conditions and the following disclaimer in the
+ *   documentation and/or other materials provided with the distribution.
+ * - The name of the author may not be used to endorse or promote products
+ *   derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
+ * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
+ * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
+ * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
+ * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
+ * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
+
+/** @addtogroup libc
+ * @{
+ */
+/** @file
+ */
+
+#include <stdarg.h>
+#include <stdio.h>
+#include <string.h>
+#include "str.h"
+#include "printf_core.h"
+#include <errno.h>
+
+typedef struct {
+	size_t size;    /* Total size of the buffer (in bytes) */
+	size_t len;     /* Number of already used bytes */
+	char *dst;      /* Destination */
+} vsnprintf_data_t;
+
+/** Write string to given buffer.
+ *
+ * Write at most data->size plain characters including trailing zero.
+ * According to C99, snprintf() has to return number of characters that
+ * would have been written if enough space had been available. Hence
+ * the return value is not the number of actually printed characters
+ * but size of the input string.
+ *
+ * @param str  Source string to print.
+ * @param size Number of plain characters in str.
+ * @param data Structure describing destination string, counter
+ *             of used space and total string size.
+ *
+ * @return Number of characters to print (not characters actually
+ *         printed).
+ *
+ */
+static int vsnprintf_str_write(const char *str, size_t size, vsnprintf_data_t *data)
+{
+	size_t left = data->size - data->len;
+	
+	if (left == 0)
+		return ((int) size);
+	
+	if (left == 1) {
+		/* We have only one free byte left in buffer
+		 * -> store trailing zero
+		 */
+		data->dst[data->size - 1] = 0;
+		data->len = data->size;
+		return ((int) size);
+	}
+	
+	if (left <= size) {
+		/* We do not have enough space for the whole string
+		 * with the trailing zero => print only a part
+		 * of string
+		 */
+		size_t index = 0;
+		
+		while (index < size) {
+			wchar_t uc = str_decode(str, &index, size);
+			
+			if (chr_encode(uc, data->dst, &data->len, data->size - 1) != 0)
+				break;
+		}
+		
+		/* Put trailing zero at end, but not count it
+		 * into data->len so it could be rewritten next time
+		 */
+		data->dst[data->len] = 0;
+		
+		return ((int) size);
+	}
+	
+	/* Buffer is big enough to print the whole string */
+	memcpy((void *)(data->dst + data->len), (void *) str, size);
+	data->len += size;
+	
+	/* Put trailing zero at end, but not count it
+	 * into data->len so it could be rewritten next time
+	 */
+	data->dst[data->len] = 0;
+	
+	return ((int) size);
+}
+
+/** Write wide string to given buffer.
+ *
+ * Write at most data->size plain characters including trailing zero.
+ * According to C99, snprintf() has to return number of characters that
+ * would have been written if enough space had been available. Hence
+ * the return value is not the number of actually printed characters
+ * but size of the input string.
+ *
+ * @param str  Source wide string to print.
+ * @param size Number of bytes in str.
+ * @param data Structure describing destination string, counter
+ *             of used space and total string size.
+ *
+ * @return Number of wide characters to print (not characters actually
+ *         printed).
+ *
+ */
+static int vsnprintf_wstr_write(const wchar_t *str, size_t size, vsnprintf_data_t *data)
+{
+	size_t index = 0;
+	
+	while (index < (size / sizeof(wchar_t))) {
+		size_t left = data->size - data->len;
+		
+		if (left == 0)
+			return ((int) size);
+		
+		if (left == 1) {
+			/* We have only one free byte left in buffer
+			 * -> store trailing zero
+			 */
+			data->dst[data->size - 1] = 0;
+			data->len = data->size;
+			return ((int) size);
+		}
+		
+		if (chr_encode(str[index], data->dst, &data->len, data->size - 1) != 0)
+			break;
+		
+		index++;
+	}
+	
+	/* Put trailing zero at end, but not count it
+	 * into data->len so it could be rewritten next time
+	 */
+	data->dst[data->len] = 0;
+	
+	return ((int) size);
+}
+
+int vsnprintf(char *str, size_t size, const char *fmt, va_list ap)
+{
+	vsnprintf_data_t data = {
+		size,
+		0,
+		str
+	};
+	printf_spec_t ps = {
+		(int(*) (const char *, size_t, void *)) vsnprintf_str_write,
+		(int(*) (const wchar_t *, size_t, void *)) vsnprintf_wstr_write,
+		&data
+	};
+	
+	/* Print 0 at end of string - fix the case that nothing will be printed */
+	if (size > 0)
+		str[0] = 0;
+	
+	/* vsnprintf_write ensures that str will be terminated by zero. */
+	return printf_core(fmt, &ps, ap);
+}
+
+/** @}
+ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
