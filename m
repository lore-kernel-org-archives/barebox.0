Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKpDF-0006hH-Sh
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 11:40:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Oct 2012 13:39:49 +0200
Message-Id: <1349609991-26567-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349609991-26567-1-git-send-email-s.hauer@pengutronix.de>
References: <1349609991-26567-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] console: Cleanup console activation
To: barebox@lists.infradead.org

When CONFIG_CONSOLE_ACTIVATE_ALL is set, the banner will never be printed.
Also, the console buffer is emptied when the first console is registered,
even when it's not enabled.

This patch cleans it up in a way that:

- the console buffer is emptied once the first console is activated, not
  when it's registered.
- Make sure that the banner is printed first, so that we can output things
  to the buffer before the banner is printed without ending up in having
  the banner in the middle of the other boot messages.
- Use IS_ENABLED rather than ifdefs

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c |   51 ++++++++++++++++++++++++++-------------------------
 1 file changed, 26 insertions(+), 25 deletions(-)

diff --git a/common/console.c b/common/console.c
index 3dd964c..069e66e 100644
--- a/common/console.c
+++ b/common/console.c
@@ -44,6 +44,16 @@ EXPORT_SYMBOL(console_list);
 
 static int initialized = 0;
 
+#define CONSOLE_BUFFER_SIZE	1024
+
+static char console_input_buffer[CONSOLE_BUFFER_SIZE];
+static char console_output_buffer[CONSOLE_BUFFER_SIZE];
+
+static struct kfifo __console_input_fifo;
+static struct kfifo __console_output_fifo;
+static struct kfifo *console_input_fifo = &__console_input_fifo;
+static struct kfifo *console_output_fifo = &__console_output_fifo;
+
 static int console_std_set(struct device_d *dev, struct param_d *param,
 		const char *val)
 {
@@ -74,6 +84,14 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 
 	dev_param_set_generic(dev, param, active);
 
+	if (initialized < CONSOLE_INIT_FULL) {
+		char ch;
+		initialized = CONSOLE_INIT_FULL;
+		barebox_banner();
+		while (kfifo_getc(console_output_fifo, &ch) == 0)
+			console_putc(CONSOLE_STDOUT, ch);
+	}
+
 	return 0;
 }
 
@@ -108,16 +126,6 @@ static int console_baudrate_set(struct device_d *dev, struct param_d *param,
 	return 0;
 }
 
-#define CONSOLE_BUFFER_SIZE	1024
-
-static char console_input_buffer[CONSOLE_BUFFER_SIZE];
-static char console_output_buffer[CONSOLE_BUFFER_SIZE];
-
-static struct kfifo __console_input_fifo;
-static struct kfifo __console_output_fifo;
-static struct kfifo *console_input_fifo = &__console_input_fifo;
-static struct kfifo *console_output_fifo = &__console_output_fifo;
-
 static void console_init_early(void)
 {
 	kfifo_init(console_input_fifo, console_input_buffer,
@@ -131,8 +139,7 @@ static void console_init_early(void)
 int console_register(struct console_device *newcdev)
 {
 	struct device_d *dev = &newcdev->class_dev;
-	int first = 0;
-	char ch;
+	int activate = 0;
 
 	if (initialized == CONSOLE_UNINITIALIZED)
 		console_init_early();
@@ -150,23 +157,17 @@ int console_register(struct console_device *newcdev)
 
 	dev_add_param(dev, "active", console_std_set, NULL, 0);
 
-	initialized = CONSOLE_INIT_FULL;
-#ifdef CONFIG_CONSOLE_ACTIVATE_ALL
-	dev_set_param(dev, "active", "ioe");
-#endif
-#ifdef CONFIG_CONSOLE_ACTIVATE_FIRST
-	if (list_empty(&console_list)) {
-		first = 1;
-		dev_set_param(dev, "active", "ioe");
+	if (IS_ENABLED(CONFIG_CONSOLE_ACTIVATE_FIRST)) {
+		if (list_empty(&console_list))
+			activate = 1;
+	} else if (IS_ENABLED(CONFIG_CONSOLE_ACTIVATE_ALL)) {
+		activate = 1;
 	}
-#endif
 
 	list_add_tail(&newcdev->list, &console_list);
 
-	while (kfifo_getc(console_output_fifo, &ch) == 0)
-		console_putc(CONSOLE_STDOUT, ch);
-	if (first)
-		barebox_banner();
+	if (activate)
+		dev_set_param(dev, "active", "ioe");
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
