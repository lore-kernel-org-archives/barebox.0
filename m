Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5BeG-0001ms-2B
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 08:55:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Feb 2013 09:55:29 +0100
Message-Id: <1360659329-30599-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] console: consolidate common console code
To: barebox@lists.infradead.org

The full console and the simple console share a good amount of code,
share this in console_common.c.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile         |    4 +--
 common/console.c        |   85 ---------------------------------------------
 common/console_common.c |   87 +++++++++++++++++++++++++++++++++++++++++++++++
 common/console_simple.c |   83 --------------------------------------------
 4 files changed, 89 insertions(+), 170 deletions(-)
 create mode 100644 common/console_common.c

diff --git a/common/Makefile b/common/Makefile
index 7206eed..da96007 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -21,8 +21,8 @@ obj-y += clock.o
 obj-$(CONFIG_BANNER) += version.o
 obj-$(CONFIG_MEMINFO) += meminfo.o
 obj-$(CONFIG_COMMAND_SUPPORT) += command.o
-obj-$(CONFIG_CONSOLE_FULL) += console.o
-obj-$(CONFIG_CONSOLE_SIMPLE) += console_simple.o
+obj-$(CONFIG_CONSOLE_FULL) += console.o console_common.o
+obj-$(CONFIG_CONSOLE_SIMPLE) += console_simple.o console_common.o
 obj-$(CONFIG_CONSOLE_NONE) += console_none.o
 obj-$(CONFIG_DIGEST) += digest.o
 obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
diff --git a/common/console.c b/common/console.c
index a085e2d..beb37bd 100644
--- a/common/console.c
+++ b/common/console.c
@@ -305,24 +305,6 @@ void console_putc(unsigned int ch, char c)
 }
 EXPORT_SYMBOL(console_putc);
 
-int fputc(int fd, char c)
-{
-	if(list_empty(&console_list)) {
-		if(!fd)
-			console_putc(0, c);
-		return 0;
-	}
-
-	if (fd == 1)
-		putchar(c);
-	else if (fd == 2)
-		eputc(c);
-	else
-		return write(fd, &c, 1);
-	return 0;
-}
-EXPORT_SYMBOL(fputc);
-
 int console_puts(unsigned int ch, const char *str)
 {
 	const char *s = str;
@@ -341,17 +323,6 @@ int console_puts(unsigned int ch, const char *str)
 }
 EXPORT_SYMBOL(console_puts);
 
-int fputs(int fd, const char *s)
-{
-	if (fd == 1)
-		return puts(s);
-	else if (fd == 2)
-		return eputs(s);
-	else
-		return write(fd, s, strlen(s));
-}
-EXPORT_SYMBOL(fputs);
-
 void console_flush(void)
 {
 	struct console_device *cdev;
@@ -363,62 +334,6 @@ void console_flush(void)
 }
 EXPORT_SYMBOL(console_flush);
 
-int fprintf(int file, const char *fmt, ...)
-{
-	va_list args;
-	char printbuffer[CFG_PBSIZE];
-
-	va_start (args, fmt);
-
-	/* For this to work, printbuffer must be larger than
-	 * anything we ever want to print.
-	 */
-	vsprintf (printbuffer, fmt, args);
-	va_end (args);
-
-	/* Print the string */
-	return fputs(file, printbuffer);
-}
-EXPORT_SYMBOL(fprintf);
-
-int printf (const char *fmt, ...)
-{
-	va_list args;
-	uint i;
-	char printbuffer[CFG_PBSIZE];
-
-	va_start (args, fmt);
-
-	/* For this to work, printbuffer must be larger than
-	 * anything we ever want to print.
-	 */
-	i = vsprintf (printbuffer, fmt, args);
-	va_end (args);
-
-	/* Print the string */
-	puts (printbuffer);
-
-	return i;
-}
-EXPORT_SYMBOL(printf);
-
-int vprintf (const char *fmt, va_list args)
-{
-	uint i;
-	char printbuffer[CFG_PBSIZE];
-
-	/* For this to work, printbuffer must be larger than
-	 * anything we ever want to print.
-	 */
-	i = vsprintf (printbuffer, fmt, args);
-
-	/* Print the string */
-	puts (printbuffer);
-
-	return i;
-}
-EXPORT_SYMBOL(vprintf);
-
 #ifndef ARCH_HAS_CTRLC
 /* test if ctrl-c was pressed */
 int ctrlc (void)
diff --git a/common/console_common.c b/common/console_common.c
new file mode 100644
index 0000000..ee23f98
--- /dev/null
+++ b/common/console_common.c
@@ -0,0 +1,87 @@
+#include <common.h>
+#include <fs.h>
+#include <errno.h>
+
+int printf(const char *fmt, ...)
+{
+	va_list args;
+	uint i;
+	char printbuffer[CFG_PBSIZE];
+
+	va_start(args, fmt);
+
+	/*
+	 * For this to work, printbuffer must be larger than
+	 * anything we ever want to print.
+	 */
+	i = vsprintf (printbuffer, fmt, args);
+	va_end(args);
+
+	/* Print the string */
+	puts(printbuffer);
+
+	return i;
+}
+EXPORT_SYMBOL(printf);
+
+int vprintf(const char *fmt, va_list args)
+{
+	uint i;
+	char printbuffer[CFG_PBSIZE];
+
+	/*
+	 * For this to work, printbuffer must be larger than
+	 * anything we ever want to print.
+	 */
+	i = vsprintf(printbuffer, fmt, args);
+
+	/* Print the string */
+	puts(printbuffer);
+
+	return i;
+}
+EXPORT_SYMBOL(vprintf);
+
+int fprintf(int file, const char *fmt, ...)
+{
+	va_list args;
+	char printbuffer[CFG_PBSIZE];
+
+	va_start(args, fmt);
+
+	/*
+	 * For this to work, printbuffer must be larger than
+	 * anything we ever want to print.
+	 */
+	vsprintf(printbuffer, fmt, args);
+	va_end(args);
+
+	/* Print the string */
+	return fputs(file, printbuffer);
+}
+EXPORT_SYMBOL(fprintf);
+
+int fputs(int fd, const char *s)
+{
+	if (fd == 1)
+		return puts(s);
+	else if (fd == 2)
+		return eputs(s);
+	else
+		return write(fd, s, strlen(s));
+}
+EXPORT_SYMBOL(fputs);
+
+int fputc(int fd, char c)
+{
+	if (fd == 1)
+		putchar(c);
+	else if (fd == 2)
+		eputc(c);
+	else
+		return write(fd, &c, 1);
+
+	return 0;
+}
+EXPORT_SYMBOL(fputc);
+
diff --git a/common/console_simple.c b/common/console_simple.c
index a4d4315..1fe569e 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -8,65 +8,6 @@ LIST_HEAD(console_list);
 EXPORT_SYMBOL(console_list);
 static struct console_device *console;
 
-int printf (const char *fmt, ...)
-{
-	va_list args;
-	uint i;
-	char printbuffer[CFG_PBSIZE];
-
-	va_start (args, fmt);
-
-	/* For this to work, printbuffer must be larger than
-	 * anything we ever want to print.
-	 */
-	i = vsprintf (printbuffer, fmt, args);
-	va_end (args);
-
-	/* Print the string */
-	puts(printbuffer);
-
-	return i;
-}
-EXPORT_SYMBOL(printf);
-
-int vprintf (const char *fmt, va_list args)
-{
-	uint i;
-	char printbuffer[CFG_PBSIZE];
-
-	/* For this to work, printbuffer must be larger than
-	 * anything we ever want to print.
-	 */
-	i = vsprintf (printbuffer, fmt, args);
-
-	/* Print the string */
-	puts (printbuffer);
-
-	return i;
-}
-EXPORT_SYMBOL(vprintf);
-
-int fprintf(int file, const char *fmt, ...)
-{
-	va_list args;
-	uint i;
-	char printbuffer[CFG_PBSIZE];
-
-	va_start (args, fmt);
-
-	/* For this to work, printbuffer must be larger than
-	 * anything we ever want to print.
-	 */
-	i = vsprintf (printbuffer, fmt, args);
-	va_end (args);
-
-	/* Print the string */
-	fputs(file, printbuffer);
-
-	return i;
-}
-EXPORT_SYMBOL(fprintf);
-
 int console_puts(unsigned int ch, const char *str)
 {
 	const char *s = str;
@@ -97,30 +38,6 @@ void console_putc(unsigned int ch, char c)
 }
 EXPORT_SYMBOL(console_putc);
 
-int fputc(int fd, char c)
-{
-	if (fd == 1)
-		putchar(c);
-	else if (fd == 2)
-		eputc(c);
-	else
-		return write(fd, &c, 1);
-	return 0;
-}
-EXPORT_SYMBOL(fputc);
-
-int fputs(int fd, const char *s)
-{
-	if (fd == 1)
-		puts(s);
-	else if (fd == 2)
-		eputs(s);
-	else
-		return write(fd, s, strlen(s));
-	return 0;
-}
-EXPORT_SYMBOL(fputs);
-
 int tstc(void)
 {
 	if (!console)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
