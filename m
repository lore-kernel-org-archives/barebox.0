Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TjBrB-0007qs-6e
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 16:42:05 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B3565DC1F2A
 for <barebox@lists.infradead.org>; Thu, 13 Dec 2012 17:50:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 13 Dec 2012 17:40:05 +0100
Message-Id: <1355416810-26555-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1355416810-26555-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121213163758.GB26483@game.jcrosoft.org>
 <1355416810-26555-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/9] introduce printk support
To: barebox@lists.infradead.org

this will allow to fill the output buffer

and now have 2 output mode pr_xxx for drivers and printf for application

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/console.c                |   47 +++++++++++++++++++++++++++++++++++++++
 include/common.h                |   28 ++++++++++++++---------
 include/linux/barebox-wrapper.h |    2 --
 3 files changed, 65 insertions(+), 12 deletions(-)

diff --git a/common/console.c b/common/console.c
index 2d2d20a..d8fe5b6 100644
--- a/common/console.c
+++ b/common/console.c
@@ -435,6 +435,7 @@ int ctrlc (void)
 EXPORT_SYMBOL(ctrlc);
 #endif /* ARCH_HAS_CTRC */
 
+#ifdef CONFIG_CMD_DMESG
 #include <command.h>
 #include <complete.h>
 
@@ -454,3 +455,49 @@ BAREBOX_CMD_START(dmesg)
 	BAREBOX_CMD_HELP(cmd_dmesg_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
+
+int vprintk (const char *fmt, va_list args)
+{
+	uint i;
+	char printbuffer[CFG_PBSIZE];
+	char *s = printbuffer;
+
+	/* For this to work, printbuffer must be larger than
+	 * anything we ever want to print.
+	 */
+	i = vsprintf (printbuffer, fmt, args);
+
+	/* Print the string */
+	puts (printbuffer);
+
+	if (initialized < CONSOLE_INIT_FULL)
+		return i;
+
+	while (*s) {
+		if (*s == '\n')
+			kfifo_putc(console_output_fifo, '\r');
+		kfifo_putc(console_output_fifo, *s);
+		s++;
+	}
+
+	return i;
+}
+EXPORT_SYMBOL(vprintk);
+
+int printk (const char *fmt, ...)
+{
+	va_list args;
+	uint i;
+
+	va_start (args, fmt);
+
+	i = vprintk(fmt, args);
+	/* For this to work, printbuffer must be larger than
+	 * anything we ever want to print.
+	 */
+	va_end (args);
+
+	return i;
+}
+EXPORT_SYMBOL(printk);
+#endif
diff --git a/include/common.h b/include/common.h
index 6256879..168bfd1 100644
--- a/include/common.h
+++ b/include/common.h
@@ -48,22 +48,30 @@
 #error "None of __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
 #endif
 
-#define pr_info(fmt, arg...)	printf(fmt, ##arg)
-#define pr_notice(fmt, arg...)	printf(fmt, ##arg)
-#define pr_err(fmt, arg...)	printf(fmt, ##arg)
-#define pr_warning(fmt, arg...)	printf(fmt, ##arg)
-#define pr_crit(fmt, arg...)	printf(fmt, ##arg)
-#define pr_alert(fmt, arg...)	printf(fmt, ##arg)
-#define pr_emerg(fmt, arg...)	printf(fmt, ##arg)
+#ifdef CONFIG_CMD_DMESG
+int	printk(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+int	vprintk(const char *fmt, va_list args);
+#else
+#define printk			printf
+#define vprintk			vprintf
+#endif
+
+#define pr_info(fmt, arg...)	printk(fmt, ##arg)
+#define pr_notice(fmt, arg...)	printk(fmt, ##arg)
+#define pr_err(fmt, arg...)	printk(fmt, ##arg)
+#define pr_warning(fmt, arg...)	printk(fmt, ##arg)
+#define pr_crit(fmt, arg...)	printk(fmt, ##arg)
+#define pr_alert(fmt, arg...)	printk(fmt, ##arg)
+#define pr_emerg(fmt, arg...)	printk(fmt, ##arg)
 
 #ifdef DEBUG
-#define pr_debug(fmt, arg...)	printf(fmt, ##arg)
+#define pr_debug(fmt, arg...)	printk(fmt, ##arg)
+#define debug(fmt, arg...)	printf(fmt, ##arg)
 #else
 #define pr_debug(fmt, arg...)	do {} while(0)
+#define debug(fmt, arg...)	do {} while(0)
 #endif
 
-#define debug(fmt, arg...)	pr_debug(fmt, ##arg)
-
 #define BUG() do { \
 	printf("BUG: failure at %s:%d/%s()!\n", __FILE__, __LINE__, __FUNCTION__); \
 	panic("BUG!"); \
diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 1d1f846..e3825f2 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -18,8 +18,6 @@
 #define KERN_INFO       ""   /* informational                        */
 #define KERN_DEBUG      ""   /* debug-level messages                 */
 
-#define printk			printf
-
 #define pr_warn			pr_warning
 
 #define __init
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
