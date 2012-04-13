Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIgxm-0004x3-8Q
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 13:54:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Apr 2012 15:54:31 +0200
Message-Id: <1334325273-1701-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] net mii: Add mii_open/mii_close functions
To: barebox@lists.infradead.org

Some phys need board specific fixups. To be able to do this
from board code add mii_open/mii_close functions so that the
board can use the regular mii_read/mii_write functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/miidev.c |   20 ++++++++++++++++++++
 include/miidev.h     |    5 +++++
 2 files changed, 25 insertions(+)

diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index 3b73133..cc84e63 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -28,6 +28,8 @@
 #include <net.h>
 #include <malloc.h>
 
+static LIST_HEAD(miidev_list);
+
 int miidev_restart_aneg(struct mii_device *mdev)
 {
 	int status, timeout;
@@ -226,6 +228,7 @@ static int miidev_probe(struct device_d *dev)
 	mdev->cdev.priv = mdev;
 	mdev->cdev.dev = dev;
 	devfs_create(&mdev->cdev);
+	list_add_tail(&mdev->list, &miidev_list);
 	return 0;
 }
 
@@ -233,10 +236,27 @@ static void miidev_remove(struct device_d *dev)
 {
 	struct mii_device *mdev = dev->priv;
 
+	list_del(&mdev->list);
+
 	free(mdev->cdev.name);
 	devfs_remove(&mdev->cdev);
 }
 
+struct mii_device *mii_open(const char *name)
+{
+	struct mii_device *mdev;
+
+	list_for_each_entry(mdev, &miidev_list, list) {
+		if (!strcmp(name, mdev->cdev.name))
+			return mdev;
+	}
+	return NULL;
+}
+
+void mii_close(struct mii_device *mdev)
+{
+}
+
 static struct driver_d miidev_drv = {
         .name  = "miidev",
         .probe = miidev_probe,
diff --git a/include/miidev.h b/include/miidev.h
index 8cd4c45..622784f 100644
--- a/include/miidev.h
+++ b/include/miidev.h
@@ -43,6 +43,7 @@ struct mii_device {
 
 	struct eth_device *edev;
 	struct cdev cdev;
+	struct list_head list;
 };
 
 int mii_register(struct mii_device *dev);
@@ -65,4 +66,8 @@ static int inline mii_read(struct mii_device *dev, int addr, int reg)
 {
 	return dev->read(dev, addr, reg);
 }
+
+struct mii_device *mii_open(const char *name);
+void mii_close(struct mii_device *mdev);
+
 #endif /* __MIIDEV_H__ */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
