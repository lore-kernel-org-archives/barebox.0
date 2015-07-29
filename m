Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKOPF-0007Er-SL
 for barebox@lists.infradead.org; Wed, 29 Jul 2015 10:16:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Jul 2015 12:15:36 +0200
Message-Id: <1438164937-2349-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] PBL: console: Make independent of DEBUG_LL
To: Barebox List <barebox@lists.infradead.org>

With more stuff being done in PBL regular console support gets more and more
useful. This makes the PBL console independent of DEBUG_LL which is only
meant for early debugging but not regular output.
To use the regular PBL console a board must call pbl_set_putc() which stores
a pointer to the putc function to be used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig    | 23 +++++++++++------------
 include/console.h |  2 ++
 pbl/console.c     | 50 +++++++++++++++++++++++++++++++++++++++++++-------
 3 files changed, 56 insertions(+), 19 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 983d305..9af0a54 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -594,6 +594,17 @@ config CONSOLE_ACTIVATE_NONE
 
 endchoice
 
+config PBL_CONSOLE
+	depends on PBL_IMAGE
+	depends on !CONSOLE_NONE
+	bool "Enable console support in PBL"
+	help
+	  This enables printf/pr_* support in the PBL to get more
+	  informational output earlier during startup. Note that
+	  printf/pr_* need a valid C environment, so the binary
+	  must be running at the address it's linked at and bss must
+	  be cleared. On ARM that would be after setup_c().
+
 config PARTITION
 	bool
 	prompt "Enable Partitions"
@@ -935,18 +946,6 @@ config DEBUG_INITCALLS
 	help
 	  If enabled this will print initcall traces.
 
-config PBL_CONSOLE
-	depends on PBL_IMAGE
-	depends on DEBUG_LL
-	depends on !CONSOLE_NONE
-	bool "Enable console support in PBL"
-	help
-	  This enables printf/pr_* support in the PBL to get more
-	  informational output earlier during startup. Note that
-	  printf/pr_* need a valid C environment, so the binary
-	  must be running at the address it's linked at and bss must
-	  be cleared. On ARM that would be after setup_c().
-
 endmenu
 
 config HAS_DEBUG_LL
diff --git a/include/console.h b/include/console.h
index 839ec17..bdf3a7d 100644
--- a/include/console.h
+++ b/include/console.h
@@ -83,4 +83,6 @@ unsigned console_get_active(struct console_device *cdev);
 int console_set_baudrate(struct console_device *cdev, unsigned baudrate);
 unsigned console_get_baudrate(struct console_device *cdev);
 
+void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx);
+
 #endif
diff --git a/pbl/console.c b/pbl/console.c
index a9859ad..3574753 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -1,6 +1,47 @@
 #include <common.h>
 #include <debug_ll.h>
 
+static void (*__putc)(void *ctx, int c);
+static void *putc_ctx;
+
+/**
+ * pbl_set_putc() - setup UART used for PBL console
+ * @putc: The putc function.
+ * @ctx: The context pointer passed back to putc
+ *
+ * This sets the putc function which is afterwards used to output
+ * characters in the PBL.
+ */
+void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx)
+{
+	__putc = putcf;
+	putc_ctx = ctx;
+}
+
+void console_putc(unsigned int ch, char c)
+{
+	if (!__putc)
+		putc_ll(c);
+	else
+		__putc(putc_ctx, c);
+}
+
+int console_puts(unsigned int ch, const char *str)
+{
+	int n = 0;
+
+	while (*str) {
+		if (*str == '\n')
+			putc_ll('\r');
+
+		console_putc(CONSOLE_STDOUT, *str);
+		str++;
+		n++;
+	}
+
+	return n;
+}
+
 int printf(const char *fmt, ...)
 {
 	va_list args;
@@ -11,7 +52,7 @@ int printf(const char *fmt, ...)
 	i = vsprintf(printbuffer, fmt, args);
 	va_end(args);
 
-	puts_ll(printbuffer);
+	console_puts(CONSOLE_STDOUT, printbuffer);
 
 	return i;
 }
@@ -26,7 +67,7 @@ int pr_print(int level, const char *fmt, ...)
 	i = vsprintf(printbuffer, fmt, args);
 	va_end(args);
 
-	puts_ll(printbuffer);
+	console_puts(CONSOLE_STDOUT, printbuffer);
 
 	return i;
 }
@@ -35,8 +76,3 @@ int ctrlc(void)
 {
 	return 0;
 }
-
-void console_putc(unsigned int ch, char c)
-{
-	putc_ll(c);
-}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
