Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from arroyo.ext.ti.com ([192.94.94.40])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rl24t-0000zo-Lo
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 17:35:13 +0000
From: Sanjeev Premi <premi@ti.com>
Date: Wed, 11 Jan 2012 23:04:43 +0530
Message-ID: <1326303284-14444-1-git-send-email-premi@ti.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC 1/2] ARM omap: Add null console
To: barebox@lists.infradead.org

When using barebox as both 1st and 2nd stage bootloader,
same banner gets printed - date being the only difference.

For the first stage bootloader, prints are definitely
required during initial debug and development phases,
but after that, they can easily be avoided.

And if we don't need prints, then we can do without the
serial driver as well.

With this background, this patch introduces concept of
NULL console. Most Kconfig changes are quite simple.

Separate file console_null.c was created only for ease
of review and maintaining console_simple.c as-is.

In final version, appropriate #ifdefs in console_simple.c
should be used.

Visually, the prompt from barebox.bin comes up is about
a second - and appears to be much faster.

Here is comparison of the size:

   text    data     bss     dec     hex filename
  45801    3300    4024   53125    cf85 barebox  (Before)
  44221    3196    4020   51437    c8ed barebox  (After)

Tested on OMAP3EVM with xload configuration derived from
omap3530_beagle_xload_defconfig.

Signed-off-by: Sanjeev Premi <premi@ti.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---

 Although I have marked the change to be specific to
 ARM+OMAP, it could be generally applicable.

 arch/arm/mach-omap/Kconfig |    4 +-
 common/Kconfig             |   11 +++-
 common/Makefile            |    1 +
 common/console_null.c      |  135 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/serial/Kconfig     |    1 +
 5 files changed, 149 insertions(+), 3 deletions(-)
 create mode 100644 common/console_null.c

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 72c6850..9edb4a9 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -171,13 +171,13 @@ if MACH_OMAP3EVM
 
 	config OMAP3EVM_UART1
 		bool "Use UART1"
-		depends on MACH_OMAP3EVM
+		depends on MACH_OMAP3EVM && !CONSOLE_NULL
 		help
 		  Say Y here if you would like to use UART1 as console.
 
 	config OMAP3EVM_UART3
 		bool "Use UART3"
-		depends on MACH_OMAP3EVM
+		depends on MACH_OMAP3EVM && !CONSOLE_NULL
 		help
 		  Say Y here if you would like to use UART3 as console.
 	endchoice
diff --git a/common/Kconfig b/common/Kconfig
index ca4f099..a664624 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -377,10 +377,19 @@ config CONSOLE_FULL
 	  This option enables full console support capable of
 	  handling multiple consoles.
 
+config CONSOLE_NULL
+	bool
+	depends on !CONSOLE_FULL
+	prompt "Enable null console"
+	help
+	  This option enables null console i.e. there is no real
+	  read/ write operation.
+
 config CONSOLE_SIMPLE
 	bool
 	default y
-	depends on !CONSOLE_FULL
+	depends on !CONSOLE_FULL && !CONSOLE_NULL
+
 
 config CONSOLE_ACTIVATE_FIRST
 	depends on CONSOLE_FULL
diff --git a/common/Makefile b/common/Makefile
index d1132c3..6705257 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -20,6 +20,7 @@ obj-y += clock.o
 obj-y += version.o
 obj-$(CONFIG_COMMAND_SUPPORT) += command.o
 obj-$(CONFIG_CONSOLE_FULL) += console.o
+obj-$(CONFIG_CONSOLE_NULL) += console_null.o
 obj-$(CONFIG_CONSOLE_SIMPLE) += console_simple.o
 obj-$(CONFIG_DIGEST) += digest.o
 obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
diff --git a/common/console_null.c b/common/console_null.c
new file mode 100644
index 0000000..7b2db37
--- /dev/null
+++ b/common/console_null.c
@@ -0,0 +1,135 @@
+#include <config.h>
+#include <common.h>
+#include <fs.h>
+#include <errno.h>
+
+int printf (const char *fmt, ...)
+{
+	va_list args;
+	uint i;
+	char printbuffer[CFG_PBSIZE];
+
+	va_start (args, fmt);
+
+	/* For this to work, printbuffer must be larger than
+	 * anything we ever want to print.
+	 */
+	i = vsprintf (printbuffer, fmt, args);
+	va_end (args);
+
+	/* Don't put off callers who check for return value */
+	return i;
+}
+EXPORT_SYMBOL(printf);
+
+int vprintf (const char *fmt, va_list args)
+{
+	uint i;
+	char printbuffer[CFG_PBSIZE];
+
+	/* For this to work, printbuffer must be larger than
+	 * anything we ever want to print.
+	 */
+	i = vsprintf (printbuffer, fmt, args);
+
+	/* Don't put off callers who check for return value */
+	return i;
+}
+EXPORT_SYMBOL(vprintf);
+
+int fprintf(int file, const char *fmt, ...)
+{
+	va_list args;
+	uint i;
+	char printbuffer[CFG_PBSIZE];
+
+	va_start (args, fmt);
+
+	/* For this to work, printbuffer must be larger than
+	 * anything we ever want to print.
+	 */
+	i = vsprintf (printbuffer, fmt, args);
+	va_end (args);
+
+	/* Don't put off callers who check for return value */
+	return i;
+}
+EXPORT_SYMBOL(fprintf);
+
+int console_puts(unsigned int ch, const char *str)
+{
+	const char *s = str;
+	int i = 0;
+
+	while (*s)
+		i++;
+
+	/* Don't put off callers who check for return value */
+	return i;
+}
+EXPORT_SYMBOL(console_puts);
+
+void console_putc(unsigned int ch, char c)
+{
+}
+EXPORT_SYMBOL(console_putc);
+
+int fputc(int fd, char c)
+{
+	if (fd == 1)
+		putchar(c);
+	else if (fd == 2)
+		eputc(c);
+	else
+		return write(fd, &c, 1);
+	return 0;
+}
+EXPORT_SYMBOL(fputc);
+
+int fputs(int fd, const char *s)
+{
+	if (fd == 1)
+		puts(s);
+	else if (fd == 2)
+		eputs(s);
+	else
+		return write(fd, s, strlen(s));
+	return 0;
+}
+EXPORT_SYMBOL(fputs);
+
+int tstc(void)
+{
+	return 0;
+}
+EXPORT_SYMBOL(tstc);
+
+int getc(void)
+{
+	return -EINVAL;
+}
+EXPORT_SYMBOL(getc);
+
+void console_flush(void)
+{
+}
+EXPORT_SYMBOL(console_flush);
+
+#ifndef ARCH_HAS_CTRLC
+/* test if ctrl-c was pressed */
+int ctrlc (void)
+{
+	return 0;
+}
+EXPORT_SYMBOL(ctrlc);
+#endif /* ARCH_HAS_CTRC */
+
+int console_register(struct console_device *newcdev)
+{
+	return 0;
+}
+
+int console_unregister(struct console_device *cdev)
+{
+	return -EBUSY;
+}
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 186b596..cc0e583 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -56,6 +56,7 @@ config DRIVER_SERIAL_ALTERA_JTAG
 config DRIVER_SERIAL_NS16550
 	default n
 	bool "NS16550 serial driver"
+	depends on !CONSOLE_NULL
 	help
 	  Enable this to get support for NS16550 based serial devices
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
