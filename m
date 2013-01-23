Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxxAO-0000wQ-BC
 for barebox@lists.infradead.org; Wed, 23 Jan 2013 10:02:50 +0000
Received: from mail176.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 90285FF9ACC
 for <barebox@lists.infradead.org>; Wed, 23 Jan 2013 11:16:35 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 23 Jan 2013 11:01:20 +0100
Message-Id: <1358935280-20387-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358935280-20387-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130123092028.GP26329@game.jcrosoft.org>
 <1358935280-20387-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] introduce console none support
To: barebox@lists.infradead.org

this will allow to have no console support

Use full for bootstrap as we can save 6.5 KiB (barebox.bin) and
3.8 KiB (zbarebox.bin lzo) on at91sam9263 as example vs console simple

As on bootstrap we have often very limited size.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig           |    3 +++
 common/Kconfig             |    4 +++
 common/Makefile            |    1 +
 common/console_none.c      |   42 +++++++++++++++++++++++++++++
 drivers/serial/Kconfig     |    1 +
 drivers/usb/gadget/Kconfig |    2 +-
 include/stdio.h            |   64 +++++++++++++++++++++++++++++++++++++-------
 net/Kconfig                |    1 +
 8 files changed, 107 insertions(+), 11 deletions(-)
 create mode 100644 common/console_none.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 53cee5c..2e8f214 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -260,6 +260,7 @@ endmenu
 menu "memory"
 
 config CMD_LOADB
+	depends on !CONSOLE_NONE
 	select CRC16
 	tristate
 	prompt "loadb"
@@ -267,10 +268,12 @@ config CMD_LOADB
 config CMD_LOADY
 	select CRC16
 	select XYMODEM
+	depends on !CONSOLE_NONE
 	tristate
 	prompt "loady"
 
 config CMD_LOADS
+	depends on !CONSOLE_NONE
 	tristate
 	prompt "loads"
 
diff --git a/common/Kconfig b/common/Kconfig
index 3231c27..eccae4c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -480,6 +480,10 @@ config CONSOLE_SIMPLE
 	bool
 	prompt "simple"
 
+config CONSOLE_NONE
+	bool
+	prompt "none"
+
 endchoice
 
 choice
diff --git a/common/Makefile b/common/Makefile
index d82fc99..7206eed 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -23,6 +23,7 @@ obj-$(CONFIG_MEMINFO) += meminfo.o
 obj-$(CONFIG_COMMAND_SUPPORT) += command.o
 obj-$(CONFIG_CONSOLE_FULL) += console.o
 obj-$(CONFIG_CONSOLE_SIMPLE) += console_simple.o
+obj-$(CONFIG_CONSOLE_NONE) += console_none.o
 obj-$(CONFIG_DIGEST) += digest.o
 obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
 obj-$(CONFIG_UIMAGE) += image.o
diff --git a/common/console_none.c b/common/console_none.c
new file mode 100644
index 0000000..b601814
--- /dev/null
+++ b/common/console_none.c
@@ -0,0 +1,42 @@
+#include <config.h>
+#include <common.h>
+#include <fs.h>
+#include <errno.h>
+#include <debug_ll.h>
+
+int fputc(int fd, char c)
+{
+	if (fd != 1 && fd != 2)
+		return write(fd, &c, 1);
+	return 0;
+}
+EXPORT_SYMBOL(fputc);
+
+int fputs(int fd, const char *s)
+{
+	if (fd != 1 && fd != 2)
+		return write(fd, s, strlen(s));
+	return 0;
+}
+EXPORT_SYMBOL(fputs);
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
+	/* Print the string */
+	fputs(file, printbuffer);
+
+	return i;
+}
+EXPORT_SYMBOL(fprintf);
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index a8be9cd..f61d670 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -1,4 +1,5 @@
 menu "serial drivers"
+	depends on !CONSOLE_NONE
 
 config DRIVER_SERIAL_ARM_DCC
 	depends on ARM
diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 6501d42..5f65cea 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -44,7 +44,7 @@ config USB_GADGET_DFU
 
 config USB_GADGET_SERIAL
 	bool
-	depends on EXPERIMENTAL
+	depends on EXPERIMENTAL && !CONSOLE_NONE
 	prompt "Serial Gadget"
 
 endif
diff --git a/include/stdio.h b/include/stdio.h
index 4901bc7..5c091a8 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -11,6 +11,15 @@
 /* serial stuff */
 void	serial_printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
 
+int	sprintf(char *buf, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
+int	snprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
+int	vsprintf(char *buf, const char *fmt, va_list args);
+char	*asprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+char	*vasprintf(const char *fmt, va_list ap);
+int	vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
+int	vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
+
+#ifndef CONFIG_CONSOLE_NONE
 /* stdin */
 int	tstc(void);
 
@@ -20,6 +29,51 @@ int	getc(void);
 int	console_puts(unsigned int ch, const char *s);
 void	console_flush(void);
 
+
+int	printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+int	vprintf(const char *fmt, va_list args);
+#else
+static inline int tstc(void)
+{
+	return 0;
+}
+
+static inline int console_puts(unsigned int ch, const char *str)
+{
+	return 0;
+}
+
+static inline int getc(void)
+{
+	return -EINVAL;
+}
+
+static inline void console_putc(unsigned int ch, char c) {}
+
+static inline void console_flush(void) {}
+
+static int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+static inline int printf(const char *fmt, ...)
+{
+	return 0;
+}
+
+
+static inline int vprintf(const char *fmt, va_list args)
+{
+	return 0;
+}
+
+#ifndef ARCH_HAS_CTRLC
+/* test if ctrl-c was pressed */
+static inline int ctrlc (void)
+{
+	return 0;
+}
+#endif /* ARCH_HAS_CTRC */
+
+#endif
+
 static inline int puts(const char *s)
 {
 	return console_puts(CONSOLE_STDOUT, s);
@@ -30,16 +84,6 @@ static inline void putchar(char c)
 	console_putc(CONSOLE_STDOUT, c);
 }
 
-int	printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
-int	vprintf(const char *fmt, va_list args);
-int	sprintf(char *buf, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
-int	snprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
-int	vsprintf(char *buf, const char *fmt, va_list args);
-char	*asprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
-char	*vasprintf(const char *fmt, va_list ap);
-int	vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
-int	vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
-
 /* stderr */
 #define eputc(c)		console_putc(CONSOLE_STDERR, c)
 #define eputs(s)		console_puts(CONSOLE_STDERR, s)
diff --git a/net/Kconfig b/net/Kconfig
index acd92ff..c12193d 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -17,6 +17,7 @@ config NET_PING
 
 config NET_NETCONSOLE
 	bool
+	depends on !CONSOLE_NONE
 	prompt "network console support"
 	help
 	  This option adds support for a simple udp based network console.
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
