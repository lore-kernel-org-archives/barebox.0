Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg5w-0000eB-Uf
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:37 +0000
Received: by mail-pl0-x243.google.com with SMTP id 31-v6so4675495plc.4
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:06 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:19 -0700
Message-Id: <20180615041136.23492-14-andrew.smirnov@gmail.com>
In-Reply-To: <20180615041136.23492-1-andrew.smirnov@gmail.com>
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/27] console: Simplify early console code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Simplify early console code by converting both FIFO output buffering
as well as DEBUG_LL output into dummy console devices that are added
early on and removed as soon as they are not needed.

This change allows us to remove a whole bunch of corner case
handngling from both console_puts() and console_putc() in
CONSOLE_FULL.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console.c | 54 +++++++++++++++++++++++++++++++-----------------
 lib/console.c    | 10 ++++++++-
 2 files changed, 44 insertions(+), 20 deletions(-)

diff --git a/common/console.c b/common/console.c
index 0c098c5eb..4d056b2de 100644
--- a/common/console.c
+++ b/common/console.c
@@ -59,6 +59,17 @@ static struct kfifo __console_output_fifo;
 static struct kfifo *console_input_fifo = &__console_input_fifo;
 static struct kfifo *console_output_fifo = &__console_output_fifo;
 
+static void __console_early_putc(struct console_device *cdev, char c)
+{
+	kfifo_putc(console_output_fifo, c);
+}
+
+static struct console_device console_early = {
+	.f_active = CONSOLE_STDOUT | CONSOLE_STDERR,
+	.puts = __console_puts,
+	.putc = __console_early_putc,
+};
+
 int console_open(struct console_device *cdev)
 {
 	int ret;
@@ -92,6 +103,8 @@ int console_close(struct console_device *cdev)
 	return 0;
 }
 
+static void console_destroy_early(void);
+
 int console_set_active(struct console_device *cdev, unsigned flag)
 {
 	int ret;
@@ -125,6 +138,9 @@ int console_set_active(struct console_device *cdev, unsigned flag)
 		puts_ll("Switch to console [");
 		puts_ll(dev_name(&cdev->class_dev));
 		puts_ll("]\n");
+
+		console_destroy_early();
+
 		barebox_banner();
 		while (kfifo_getc(console_output_fifo, &ch) == 0)
 			console_putc(CONSOLE_STDOUT, ch);
@@ -225,14 +241,27 @@ static int console_baudrate_set(struct param_d *param, void *priv)
 
 static void console_init_early(void)
 {
+	struct console_device *console_ll = __console_get_default();
+
 	kfifo_init(console_input_fifo, console_input_buffer,
 			CONSOLE_BUFFER_SIZE);
 	kfifo_init(console_output_fifo, console_output_buffer,
 			CONSOLE_BUFFER_SIZE);
 
+	list_add_tail(&console_ll->list, &console_list);
+	list_add_tail(&console_early.list, &console_list);
+
 	initialized = CONSOLE_INITIALIZED_BUFFER;
 }
 
+static void console_destroy_early(void)
+{
+	struct console_device *console_ll = __console_get_default();
+
+	list_del(&console_ll->list);
+	list_del(&console_early.list);
+}
+
 static void console_set_stdoutpath(struct console_device *cdev)
 {
 	int id;
@@ -496,9 +525,7 @@ void console_putc(unsigned int ch, char c)
 		/* fall through */
 
 	case CONSOLE_INITIALIZED_BUFFER:
-		kfifo_putc(console_output_fifo, c);
-		putc_ll(c);
-		return;
+		/* fall through */
 
 	case CONSOLE_INIT_FULL:
 		for_each_console(cdev) {
@@ -519,26 +546,15 @@ EXPORT_SYMBOL(console_putc);
 int console_puts(unsigned int ch, const char *str)
 {
 	struct console_device *cdev;
-	const char *s = str;
 	int n = 0;
 
-	if (initialized == CONSOLE_INIT_FULL) {
-		for_each_console(cdev) {
-			if (cdev->f_active & ch) {
-				n = cdev->puts(cdev, str);
-			}
-		}
-		return n;
-	}
+	if (initialized == CONSOLE_UNINITIALIZED)
+		console_init_early();
 
-	while (*s) {
-		if (*s == '\n') {
-			console_putc(ch, '\r');
-			n++;
+	for_each_console(cdev) {
+		if (cdev->f_active & ch) {
+			n = cdev->puts(cdev, str);
 		}
-		console_putc(ch, *s);
-		n++;
-		s++;
 	}
 	return n;
 }
diff --git a/lib/console.c b/lib/console.c
index 9f0fa9fc9..a8be7b7e3 100644
--- a/lib/console.c
+++ b/lib/console.c
@@ -21,6 +21,10 @@
  * console_ll - most basic low-level console
  */
 __data struct console_device console_ll = {
+#if defined(CONFIG_DEBUG_LL)
+	.f_active = CONSOLE_STDOUT | CONSOLE_STDERR,
+#endif
+	.puts = __console_puts,
 	.putc = NULL,
 	.ctx  = NULL,
 };
@@ -41,7 +45,7 @@ static void __console_ll_putc(struct console_device *cdev, char c)
  * __console_get_default - Return default output console
  *
  * Internal function used to determine which console to use for early
- * output. It has the following two use-cases:
+ * output. It has the following three use-cases:
  *
  *   1. PBL, where it falls back onto console_ll and whatever it is
  *      set up to (either putc_ll or custome callback set with
@@ -50,6 +54,10 @@ static void __console_ll_putc(struct console_device *cdev, char c)
  *   2. CONSOLE_SIMPLE, where it falls back onto console_ll (which in
  *      this case always boils down to a putc_ll() call) until first
  *      (and only) console is registered via console_register().
+ *
+ *   3. CONSOLE_FULL, where it is used to obtain properly initialized
+ *      early console to be used before the rest of console subsytem
+ *      gets properly initialized
  */
 struct console_device *__console_get_default(void)
 {
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
