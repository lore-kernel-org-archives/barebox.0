Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ykptf-00081r-K8
 for barebox@lists.infradead.org; Wed, 22 Apr 2015 08:20:42 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 22 Apr 2015 10:20:11 +0200
Message-Id: <1429690812-26083-4-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1429690812-26083-1-git-send-email-mkl@pengutronix.de>
References: <1429690812-26083-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 4/5] ubi: cdev: remove trailing newline from debug messages
To: barebox@lists.infradead.org

This patch removes the trailing newline "\n" from the ubi/cdev.c debug
messages, as the macro ifself already adds a newine.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/mtd/ubi/cdev.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
index dcd138f55382..90d5b2dd6627 100644
--- a/drivers/mtd/ubi/cdev.c
+++ b/drivers/mtd/ubi/cdev.c
@@ -25,7 +25,7 @@ static ssize_t ubi_volume_cdev_read(struct cdev *cdev, void *buf, size_t size,
 	loff_t offp = offset;
 	int usable_leb_size = vol->usable_leb_size;
 
-	ubi_debug("%s: %zd @ 0x%08llx\n", __func__, size, offset);
+	ubi_debug("%s: %zd @ 0x%08llx", __func__, size, offset);
 
 	len = size > usable_leb_size ? usable_leb_size : size;
 
@@ -38,7 +38,7 @@ static ssize_t ubi_volume_cdev_read(struct cdev *cdev, void *buf, size_t size,
 
 		err = ubi_eba_read_leb(ubi, vol, lnum, buf, off, len, 0);
 		if (err) {
-			ubi_err("read error: %s\n", strerror(-err));
+			ubi_err("read error: %s", strerror(-err));
 			break;
 		}
 		off += len;
@@ -68,14 +68,14 @@ static ssize_t ubi_volume_cdev_write(struct cdev* cdev, const void *buf,
 	if (!priv->written) {
 		err = ubi_start_update(ubi, vol, vol->used_bytes);
 		if (err < 0) {
-			ubi_err("Cannot start volume update\n");
+			ubi_err("Cannot start volume update");
 			return err;
 		}
 	}
 
 	err = ubi_more_update_data(ubi, vol, buf, size);
 	if (err < 0) {
-		ubi_err("Couldnt or partially wrote data \n");
+		ubi_err("Couldnt or partially wrote data");
 		return err;
 	}
 
@@ -117,7 +117,7 @@ static int ubi_volume_cdev_close(struct cdev *cdev)
 			kfree(buf);
 
 			if (err < 0) {
-				ubi_err("Couldnt or partially wrote data \n");
+				ubi_err("Couldnt or partially wrote data");
 				return err;
 			}
 		}
@@ -128,7 +128,7 @@ static int ubi_volume_cdev_close(struct cdev *cdev)
 
 		err = ubi_check_volume(ubi, vol->vol_id);
 		if (err < 0) {
-			ubi_err("ubi volume check failed: %s\n", strerror(err));
+			ubi_err("ubi volume check failed: %s", strerror(err));
 			return err;
 		}
 
@@ -180,7 +180,7 @@ int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
 	cdev->priv = priv;
 	cdev->size = vol->used_bytes;
 	cdev->dev = &vol->dev;
-	ubi_msg("registering %s as /dev/%s\n", vol->name, cdev->name);
+	ubi_msg("registering %s as /dev/%s", vol->name, cdev->name);
 	ret = devfs_create(cdev);
 	if (ret) {
 		kfree(priv);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
