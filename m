Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyPMT-0003hI-2v
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 18:18:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 19:17:40 +0100
Message-Id: <1418149064-26448-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
References: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] Add PBL console support
To: barebox@lists.infradead.org

This adds simple console support to the PBL which makes it
possible to print more complex messages in the PBL than just
strings or hex numbers. For now puts_ll is used to print the
messages, so it depends on CONFIG_DEBUG_LL which makes it
more a debugging option. However, this could be extended later
to get regular output from the PBL if desired.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig   | 11 +++++++++++
 include/printk.h | 15 ++++++++++-----
 include/stdio.h  | 20 +++++++++++---------
 lib/Makefile     |  2 ++
 lib/vsprintf.c   | 12 ++++++++++++
 pbl/Makefile     |  1 +
 pbl/console.c    | 32 ++++++++++++++++++++++++++++++++
 7 files changed, 79 insertions(+), 14 deletions(-)
 create mode 100644 pbl/console.c

diff --git a/common/Kconfig b/common/Kconfig
index 4614965..00e4f36 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -882,6 +882,17 @@ config DEBUG_INITCALLS
 	bool "Trace initcalls"
 	help
 	  If enabled this will print initcall traces.
+
+config PBL_CONSOLE
+	depends on DEBUG_LL
+	bool "Enable console support in PBL"
+	help
+	  This enables printf/pr_* support in the PBL to get more
+	  informational output earlier during startup. Note that
+	  printf/pr_* need a valid C environment, so the binary
+	  must be running at the address it's linked at and bss must
+	  be cleared. On ARM that would be after setup_c().
+
 endmenu
 
 config HAS_DEBUG_LL
diff --git a/include/printk.h b/include/printk.h
index 22c6c73..a27ad51 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -22,18 +22,23 @@
 /* debugging and troubleshooting/diagnostic helpers. */
 
 #ifndef CONFIG_CONSOLE_NONE
-int pr_print(int level, const char *format, ...)
-	__attribute__ ((format(__printf__, 2, 3)));
-
 int dev_printf(int level, const struct device_d *dev, const char *format, ...)
 	__attribute__ ((format(__printf__, 3, 4)));
 #else
-static inline int pr_print(int level, const char *format, ...)
+static inline int dev_printf(int level, const struct device_d *dev, const char *format, ...)
 {
 	return 0;
 }
+#endif
 
-static inline int dev_printf(int level, const struct device_d *dev, const char *format, ...)
+#if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE)) || \
+	(defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
+int pr_print(int level, const char *format, ...)
+	__attribute__ ((format(__printf__, 2, 3)));
+#else
+static int pr_print(int level, const char *format, ...)
+	__attribute__ ((format(__printf__, 2, 3)));
+static inline int pr_print(int level, const char *format, ...)
 {
 	return 0;
 }
diff --git a/include/stdio.h b/include/stdio.h
index 71dbae3..f190911 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -29,8 +29,6 @@ int	getc(void);
 int	console_puts(unsigned int ch, const char *s);
 void	console_flush(void);
 
-
-int	printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
 int	vprintf(const char *fmt, va_list args);
 #else
 static inline int tstc(void)
@@ -52,13 +50,6 @@ static inline void console_putc(unsigned int ch, char c) {}
 
 static inline void console_flush(void) {}
 
-static int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
-static inline int printf(const char *fmt, ...)
-{
-	return 0;
-}
-
-
 static inline int vprintf(const char *fmt, va_list args)
 {
 	return 0;
@@ -74,6 +65,17 @@ static inline int ctrlc (void)
 
 #endif
 
+#if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE)) || \
+	(defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
+int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+#else
+static int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+static inline int printf(const char *fmt, ...)
+{
+	return 0;
+}
+#endif
+
 static inline int puts(const char *s)
 {
 	return console_puts(CONSOLE_STDOUT, s);
diff --git a/lib/Makefile b/lib/Makefile
index 604d934..226570a 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -6,7 +6,9 @@ obj-y			+= display_options.o
 obj-y			+= string.o
 obj-y			+= strtox.o
 obj-y			+= vsprintf.o
+pbl-$(CONFIG_PBL_CONSOLE) += vsprintf.o
 obj-y			+= div64.o
+pbl-y			+= div64.o
 obj-y			+= misc.o
 obj-$(CONFIG_PARAMETER)	+= parameter.o
 obj-y			+= xfuncs.o
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 7f6b161..800ded7 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -175,6 +175,7 @@ static char *string(char *buf, char *end, char *s, int field_width, int precisio
 	return buf;
 }
 
+#ifndef __PBL__
 static char *symbol_string(char *buf, char *end, void *ptr, int field_width, int precision, int flags)
 {
 	unsigned long value = (unsigned long) ptr;
@@ -277,6 +278,17 @@ static char *pointer(const char *fmt, char *buf, char *end, void *ptr, int field
 	}
 	return number(buf, end, (unsigned long) ptr, 16, field_width, precision, flags);
 }
+#else
+static char *pointer(const char *fmt, char *buf, char *end, void *ptr, int field_width, int precision, int flags)
+{
+	flags |= SMALL;
+	if (field_width == -1) {
+		field_width = 2*sizeof(void *);
+		flags |= ZEROPAD;
+	}
+	return number(buf, end, (unsigned long) ptr, 16, field_width, precision, flags);
+}
+#endif
 
 /**
  * vsnprintf - Format a string and place it in a buffer
diff --git a/pbl/Makefile b/pbl/Makefile
index a2d7468..c5a08c1 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -4,3 +4,4 @@
 pbl-y += misc.o
 pbl-y += string.o
 pbl-y += decomp.o
+pbl-$(CONFIG_PBL_CONSOLE) += console.o
diff --git a/pbl/console.c b/pbl/console.c
new file mode 100644
index 0000000..3875e2a
--- /dev/null
+++ b/pbl/console.c
@@ -0,0 +1,32 @@
+#include <common.h>
+#include <debug_ll.h>
+
+int printf(const char *fmt, ...)
+{
+	va_list args;
+	uint i;
+	char printbuffer[CFG_PBSIZE];
+
+	va_start(args, fmt);
+	i = vsprintf(printbuffer, fmt, args);
+	va_end(args);
+
+	puts_ll(printbuffer);
+
+	return i;
+}
+
+int pr_print(int level, const char *fmt, ...)
+{
+	va_list args;
+	uint i;
+	char printbuffer[CFG_PBSIZE];
+
+	va_start(args, fmt);
+	i = vsprintf(printbuffer, fmt, args);
+	va_end(args);
+
+	puts_ll(printbuffer);
+
+	return i;
+}
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
