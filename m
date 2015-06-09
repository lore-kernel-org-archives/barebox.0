Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2Cuv-0004sa-SI
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 06:21:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jun 2015 08:21:04 +0200
Message-Id: <1433830875-31119-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
References: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] console: Add functions to get/set active state of
 console
To: Barebox List <barebox@lists.infradead.org>

Currently code needs to fiddle with the active parameter of a console
device directly to enable/disable consoles. Add console_set_active()
to set the status and console_get_active() to get the current status.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c  | 87 +++++++++++++++++++++++++++++++++----------------------
 include/console.h |  4 +++
 2 files changed, 57 insertions(+), 34 deletions(-)

diff --git a/common/console.c b/common/console.c
index 0c32f06..53030b5 100644
--- a/common/console.c
+++ b/common/console.c
@@ -58,32 +58,14 @@ static struct kfifo __console_output_fifo;
 static struct kfifo *console_input_fifo = &__console_input_fifo;
 static struct kfifo *console_output_fifo = &__console_output_fifo;
 
-static int console_std_set(struct device_d *dev, struct param_d *param,
-		const char *val)
+int console_set_active(struct console_device *cdev, unsigned flag)
 {
-	struct console_device *cdev = to_console_dev(dev);
-	char active[4];
-	unsigned int flag = 0, i = 0;
-	int ret;
-
-	if (val) {
-		if (strchr(val, 'i') && cdev->getc) {
-			active[i++] = 'i';
-			flag |= CONSOLE_STDIN;
-		}
-
-		if (cdev->putc) {
-			if (strchr(val, 'o')) {
-				active[i++] = 'o';
-				flag |= CONSOLE_STDOUT;
-			}
+	int ret, i;
 
-			if (strchr(val, 'e')) {
-				active[i++] = 'e';
-				flag |= CONSOLE_STDERR;
-			}
-		}
-	}
+	if (!cdev->getc)
+		flag &= ~CONSOLE_STDIN;
+	if (!cdev->putc)
+		flag &= ~(CONSOLE_STDOUT | CONSOLE_STDERR);
 
 	if (flag && !cdev->f_active) {
 		/* The device is being activated, set its baudrate */
@@ -97,16 +79,25 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 			return ret;
 	}
 
-	active[i] = 0;
 	cdev->f_active = flag;
 
-	dev_param_set_generic(dev, param, active);
+	if (IS_ENABLED(CONFIG_PARAMETER)) {
+		i = 0;
+
+		if (flag & CONSOLE_STDIN)
+			cdev->active[i++] = 'i';
+		if (flag & CONSOLE_STDOUT)
+			cdev->active[i++] = 'o';
+		if (flag & CONSOLE_STDERR)
+			cdev->active[i++] = 'e';
+		cdev->active[i] = 0;
+	}
 
 	if (initialized < CONSOLE_INIT_FULL) {
 		char ch;
 		initialized = CONSOLE_INIT_FULL;
 		puts_ll("Switch to console [");
-		puts_ll(dev_name(dev));
+		puts_ll(dev_name(&cdev->class_dev));
 		puts_ll("]\n");
 		barebox_banner();
 		while (kfifo_getc(console_output_fifo, &ch) == 0)
@@ -116,6 +107,37 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 	return 0;
 }
 
+unsigned console_get_active(struct console_device *cdev)
+{
+	return cdev->f_active;
+}
+
+static int console_active_set(struct device_d *dev, struct param_d *param,
+		const char *val)
+{
+	struct console_device *cdev = to_console_dev(dev);
+	unsigned int flag = 0;
+
+	if (val) {
+		if (strchr(val, 'i'))
+			flag |= CONSOLE_STDIN;
+		if (strchr(val, 'o'))
+			flag |= CONSOLE_STDOUT;
+		if (strchr(val, 'e'))
+			flag |= CONSOLE_STDERR;
+	}
+
+	return console_set_active(cdev, flag);
+}
+
+static const char *console_active_get(struct device_d *dev,
+		struct param_d *param)
+{
+	struct console_device *cdev = to_console_dev(dev);
+
+	return cdev->active;
+}
+
 static int console_baudrate_set(struct param_d *param, void *priv)
 {
 	struct console_device *cdev = priv;
@@ -214,7 +236,7 @@ int console_register(struct console_device *newcdev)
 	if (newcdev->putc && !newcdev->puts)
 		newcdev->puts = __console_puts;
 
-	dev_add_param(dev, "active", console_std_set, NULL, 0);
+	dev_add_param(dev, "active", console_active_set, console_active_get, 0);
 
 	if (IS_ENABLED(CONFIG_CONSOLE_ACTIVATE_FIRST)) {
 		if (list_empty(&console_list))
@@ -230,12 +252,9 @@ int console_register(struct console_device *newcdev)
 
 	list_add_tail(&newcdev->list, &console_list);
 
-	if (activate) {
-		if (IS_ENABLED(CONFIG_PARAMETER))
-			dev_set_param(dev, "active", "ioe");
-		else
-			console_std_set(dev, NULL, "ioe");
-	}
+	if (activate)
+		console_set_active(newcdev, CONSOLE_STDIN |
+				CONSOLE_STDOUT | CONSOLE_STDERR);
 
 	return 0;
 }
diff --git a/include/console.h b/include/console.h
index 72b4a44..f7055e6 100644
--- a/include/console.h
+++ b/include/console.h
@@ -52,6 +52,7 @@ struct console_device {
 	struct list_head list;
 
 	unsigned char f_active;
+	char active[4];
 
 	unsigned int baudrate;
 
@@ -75,4 +76,7 @@ extern int barebox_loglevel;
 
 struct console_device *console_get_first_active(void);
 
+int console_set_active(struct console_device *cdev, unsigned active);
+unsigned console_get_active(struct console_device *cdev);
+
 #endif
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
