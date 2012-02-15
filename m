Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxa8g-0004Y5-Ii
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:23:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:22:45 +0100
Message-Id: <1329294165-12089-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
References: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/12] devices: unregister children when unregistering a device
To: barebox@lists.infradead.org

We currently do not allow to unregister a device when it
has children. However, the return value is seldomly checked.
Also this breaks for hot pluggable devices like USB which we have
to unregister when they disappear. The best way to fix this is to
unregister our children and also the partitions on the unregistered
device.
We unregister the device first and then afterwards the children.
We do this because for example network devices have a miidev as
child which they unregister themselves. So we only have to
unregister the children which are not cleaned up by the drivers,
namely fs devices.
Also, unregister all partitions on a disappearing device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c |   20 +++++++++++++++-----
 1 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 0132e7d..3777f82 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -137,16 +137,26 @@ EXPORT_SYMBOL(register_device);
 
 int unregister_device(struct device_d *old_dev)
 {
-	debug("unregister_device: %s\n", dev_name(old_dev));
+	struct cdev *cdev, *ct;
+	struct device_d *child, *dt;
 
-	if (!list_empty(&old_dev->children)) {
-		errno = -EBUSY;
-		return errno;
-	}
+	dev_dbg(old_dev, "unregister\n");
 
 	if (old_dev->driver)
 		old_dev->bus->remove(old_dev);
 
+	list_for_each_entry_safe(child, dt, &old_dev->children, sibling) {
+		dev_dbg(old_dev, "unregister child %s\n", dev_name(child));
+		unregister_device(child);
+	}
+
+	list_for_each_entry_safe(cdev, ct, &old_dev->cdevs, devices_list) {
+		if (cdev->flags & DEVFS_IS_PARTITION) {
+			dev_dbg(old_dev, "unregister part %s\n", cdev->name);
+			devfs_del_partition(cdev->name);
+		}
+	}
+
 	list_del(&old_dev->list);
 	list_del(&old_dev->active);
 
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
