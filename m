Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxTXE-0006wz-3d
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 07:14:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Apr 2017 09:14:14 +0200
Message-Id: <20170410071420.26884-5-s.hauer@pengutronix.de>
In-Reply-To: <20170410071420.26884-1-s.hauer@pengutronix.de>
References: <20170410071420.26884-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] console: Use dev_add_param_string
To: Barebox List <barebox@lists.infradead.org>

dev_add_param_string allows to pass a priv * so that the device_d *
argument is not needed and can be removed later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c  | 50 ++++++++++++++++++++++++--------------------------
 include/console.h |  2 +-
 2 files changed, 25 insertions(+), 27 deletions(-)

diff --git a/common/console.c b/common/console.c
index 74fb684b2c..1bcb13fa0b 100644
--- a/common/console.c
+++ b/common/console.c
@@ -94,7 +94,7 @@ int console_close(struct console_device *cdev)
 
 int console_set_active(struct console_device *cdev, unsigned flag)
 {
-	int ret, i;
+	int ret;
 
 	if (!cdev->getc)
 		flag &= ~CONSOLE_STDIN;
@@ -119,18 +119,6 @@ int console_set_active(struct console_device *cdev, unsigned flag)
 
 	cdev->f_active = flag;
 
-	if (IS_ENABLED(CONFIG_PARAMETER)) {
-		i = 0;
-
-		if (flag & CONSOLE_STDIN)
-			cdev->active[i++] = 'i';
-		if (flag & CONSOLE_STDOUT)
-			cdev->active[i++] = 'o';
-		if (flag & CONSOLE_STDERR)
-			cdev->active[i++] = 'e';
-		cdev->active[i] = 0;
-	}
-
 	if (initialized < CONSOLE_INIT_FULL) {
 		char ch;
 		initialized = CONSOLE_INIT_FULL;
@@ -150,30 +138,39 @@ unsigned console_get_active(struct console_device *cdev)
 	return cdev->f_active;
 }
 
-static int console_active_set(struct device_d *dev, struct param_d *param,
-		const char *val)
+static int console_active_set(struct param_d *param, void *priv)
 {
-	struct console_device *cdev = to_console_dev(dev);
+	struct console_device *cdev = priv;
 	unsigned int flag = 0;
+	int ret;
 
-	if (val) {
-		if (strchr(val, 'i'))
+	if (cdev->active_string) {
+		if (strchr(cdev->active_string, 'i'))
 			flag |= CONSOLE_STDIN;
-		if (strchr(val, 'o'))
+		if (strchr(cdev->active_string, 'o'))
 			flag |= CONSOLE_STDOUT;
-		if (strchr(val, 'e'))
+		if (strchr(cdev->active_string, 'e'))
 			flag |= CONSOLE_STDERR;
 	}
 
-	return console_set_active(cdev, flag);
+	ret = console_set_active(cdev, flag);
+	if (ret)
+		return ret;
+
+	return 0;
 }
 
-static const char *console_active_get(struct device_d *dev,
-		struct param_d *param)
+static int console_active_get(struct param_d *param, void *priv)
 {
-	struct console_device *cdev = to_console_dev(dev);
+	struct console_device *cdev = priv;
+	unsigned int flag = cdev->f_active;
 
-	return cdev->active;
+	free(cdev->active_string);
+	cdev->active_string = basprintf("%s%s%s",
+					flag & CONSOLE_STDIN ? "i" : "",
+					flag & CONSOLE_STDOUT ? "o" : "",
+					flag & CONSOLE_STDERR ? "e" : "");
+	return 0;
 }
 
 int console_set_baudrate(struct console_device *cdev, unsigned baudrate)
@@ -340,7 +337,8 @@ int console_register(struct console_device *newcdev)
 
 	newcdev->open_count = 0;
 
-	dev_add_param(dev, "active", console_active_set, console_active_get, 0);
+	dev_add_param_string(dev, "active", console_active_set, console_active_get,
+			     &newcdev->active_string, newcdev);
 
 	if (IS_ENABLED(CONFIG_CONSOLE_ACTIVATE_FIRST)) {
 		if (list_empty(&console_list))
diff --git a/include/console.h b/include/console.h
index 126c2e8aa3..724168e07c 100644
--- a/include/console.h
+++ b/include/console.h
@@ -53,7 +53,7 @@ struct console_device {
 	struct list_head list;
 
 	unsigned char f_active;
-	char active[4];
+	char *active_string;
 
 	unsigned int open_count;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
