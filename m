Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo5.mail-out.ovh.net ([46.105.40.108]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxIhO-0008RD-D7
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 14:50:12 +0000
Received: from mail178.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id CDD13FFAC40
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2013 15:59:55 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 15:48:42 +0100
Message-Id: <1358779722-322-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] introduce console none support
To: barebox@lists.infradead.org

this will allow to have no console support

Use full for bootstrap as we can save 900bytes (barebox.bin) and
500bytes (zbarebox.bin lzo) on at91sam9263 as example.

As on bootstrap we have often very limited size.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig        |    6 ++++
 common/Makefile       |    1 +
 common/console_none.c |   85 +++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 92 insertions(+)
 create mode 100644 common/console_none.c

diff --git a/common/Kconfig b/common/Kconfig
index 9d26abb..8704a42 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -506,10 +506,16 @@ config CONSOLE_ACTIVATE_NONE
 endchoice
 
 config CONSOLE_SIMPLE
+	prompt "Enable simple console support"
 	bool
 	default y
 	depends on !CONSOLE_FULL
 
+config CONSOLE_NONE
+	bool
+	default y
+	depends on !CONSOLE_FULL && !CONSOLE_SIMPLE
+
 config PARTITION
 	bool
 	prompt "Enable Partitions"
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
index 0000000..f8aa1ed
--- /dev/null
+++ b/common/console_none.c
@@ -0,0 +1,85 @@
+#include <config.h>
+#include <common.h>
+#include <fs.h>
+#include <errno.h>
+#include <debug_ll.h>
+
+LIST_HEAD(console_list);
+EXPORT_SYMBOL(console_list);
+
+int printf (const char *fmt, ...)
+{
+	return 0;
+}
+EXPORT_SYMBOL(printf);
+
+int vprintf (const char *fmt, va_list args)
+{
+	return 0;
+}
+EXPORT_SYMBOL(vprintf);
+
+int fprintf(int file, const char *fmt, ...)
+{
+	return 0;
+}
+EXPORT_SYMBOL(fprintf);
+
+int console_puts(unsigned int ch, const char *str)
+{
+	return 0;
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
+	return 0;
+}
+EXPORT_SYMBOL(fputc);
+
+int fputs(int fd, const char *s)
+{
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
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
