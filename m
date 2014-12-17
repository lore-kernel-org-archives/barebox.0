Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y1FLA-0006Bd-9L
 for barebox@lists.infradead.org; Wed, 17 Dec 2014 14:12:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Dec 2014 15:12:09 +0100
Message-Id: <1418825531-29433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] console: Add set_active callback
To: barebox@lists.infradead.org

The netconsole needs to be able to deny activation when the network
has not been enabled. Add an optional callback to the console for
this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c  | 7 +++++++
 include/console.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/common/console.c b/common/console.c
index e5f4267..c092621 100644
--- a/common/console.c
+++ b/common/console.c
@@ -64,6 +64,7 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 	struct console_device *cdev = to_console_dev(dev);
 	char active[4];
 	unsigned int flag = 0, i = 0;
+	int ret;
 
 	if (val) {
 		if (strchr(val, 'i') && cdev->getc) {
@@ -90,6 +91,12 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 			cdev->setbrg(cdev, cdev->baudrate);
 	}
 
+	if (cdev->set_active) {
+		ret = cdev->set_active(cdev, flag);
+		if (ret)
+			return ret;
+	}
+
 	active[i] = 0;
 	cdev->f_active = flag;
 
diff --git a/include/console.h b/include/console.h
index 97a406d..beafb4d 100644
--- a/include/console.h
+++ b/include/console.h
@@ -44,6 +44,7 @@ struct console_device {
 	int (*setbrg)(struct console_device *cdev, int baudrate);
 	void (*flush)(struct console_device *cdev);
 	int (*set_mode)(struct console_device *cdev, enum console_mode mode);
+	int (*set_active)(struct console_device *cdev, unsigned active);
 
 	char *devname;
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
