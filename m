Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4R6m-0006Ve-Uu
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 08:50:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 10:50:02 +0200
Message-Id: <1404809417-21477-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/21] console: Add puts callback to console devices
To: barebox@lists.infradead.org

Some devices may have a much more efficient way to output strings
rather than single characters. Let console devices implement a
callback for this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c  | 29 +++++++++++++++++++++++++++++
 include/console.h |  1 +
 2 files changed, 30 insertions(+)

diff --git a/common/console.c b/common/console.c
index aa9e3ce..b319835 100644
--- a/common/console.c
+++ b/common/console.c
@@ -162,6 +162,22 @@ static void console_set_stdoutpath(struct console_device *cdev)
 	free(str);
 }
 
+static int __console_puts(struct console_device *cdev, const char *s)
+{
+	int n = 0;
+
+	while (*s) {
+		if (*s == '\n') {
+			cdev->putc(cdev, '\r');
+			n++;
+		}
+		cdev->putc(cdev, *s);
+		n++;
+		s++;
+	}
+	return n;
+}
+
 int console_register(struct console_device *newcdev)
 {
 	struct device_d *dev = &newcdev->class_dev;
@@ -182,6 +198,9 @@ int console_register(struct console_device *newcdev)
 			NULL, &newcdev->baudrate, "%u", newcdev);
 	}
 
+	if (newcdev->putc && !newcdev->puts)
+		newcdev->puts = __console_puts;
+
 	dev_add_param(dev, "active", console_std_set, NULL, 0);
 
 	if (IS_ENABLED(CONFIG_CONSOLE_ACTIVATE_FIRST)) {
@@ -342,9 +361,19 @@ EXPORT_SYMBOL(console_putc);
 
 int console_puts(unsigned int ch, const char *str)
 {
+	struct console_device *cdev;
 	const char *s = str;
 	int n = 0;
 
+	if (initialized == CONSOLE_INIT_FULL) {
+		for_each_console(cdev) {
+			if (cdev->f_active & ch) {
+				n = cdev->puts(cdev, str);
+			}
+		}
+		return n;
+	}
+
 	while (*s) {
 		if (*s == '\n') {
 			console_putc(ch, '\r');
diff --git a/include/console.h b/include/console.h
index 6da0199..6372cfe 100644
--- a/include/console.h
+++ b/include/console.h
@@ -39,6 +39,7 @@ struct console_device {
 
 	int (*tstc)(struct console_device *cdev);
 	void (*putc)(struct console_device *cdev, char c);
+	int (*puts)(struct console_device *cdev, const char *s);
 	int  (*getc)(struct console_device *cdev);
 	int (*setbrg)(struct console_device *cdev, int baudrate);
 	void (*flush)(struct console_device *cdev);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
