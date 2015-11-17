Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyeAL-0004To-EF
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 11:11:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Nov 2015 12:10:49 +0100
Message-Id: <1447758651-26575-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1447758651-26575-1-git-send-email-s.hauer@pengutronix.de>
References: <1447758651-26575-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] console: Set baudrate during registration
To: Barebox List <barebox@lists.infradead.org>

This makes sure that the cdev->baudrate field is always consistent with
the hardware state.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/common/console.c b/common/console.c
index 84d4ea7..4a1d257 100644
--- a/common/console.c
+++ b/common/console.c
@@ -67,12 +67,6 @@ int console_set_active(struct console_device *cdev, unsigned flag)
 	if (!cdev->putc)
 		flag &= ~(CONSOLE_STDOUT | CONSOLE_STDERR);
 
-	if (flag && !cdev->f_active) {
-		/* The device is being activated, set its baudrate */
-		if (cdev->setbrg)
-			cdev->setbrg(cdev, cdev->baudrate);
-	}
-
 	if (!flag && cdev->f_active && cdev->flush)
 		cdev->flush(cdev);
 
@@ -240,7 +234,7 @@ static int __console_puts(struct console_device *cdev, const char *s)
 int console_register(struct console_device *newcdev)
 {
 	struct device_d *dev = &newcdev->class_dev;
-	int activate = 0;
+	int activate = 0, ret;
 
 	if (initialized == CONSOLE_UNINITIALIZED)
 		console_init_early();
@@ -258,6 +252,9 @@ int console_register(struct console_device *newcdev)
 	platform_device_register(dev);
 
 	if (newcdev->setbrg) {
+		ret = newcdev->setbrg(newcdev, CONFIG_BAUDRATE);
+		if (ret)
+			return ret;
 		newcdev->baudrate = CONFIG_BAUDRATE;
 		dev_add_param_int(dev, "baudrate", console_baudrate_set,
 			NULL, &newcdev->baudrate_param, "%u", newcdev);
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
