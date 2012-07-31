Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwINu-00044I-Or
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 19:45:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jul 2012 21:45:11 +0200
Message-Id: <1343763911-4410-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1343763911-4410-1-git-send-email-s.hauer@pengutronix.de>
References: <1343763911-4410-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ubi: align ubi writes to LEB size
To: barebox@lists.infradead.org

Otherwise incomplete LEBs are not written.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/cdev.c |   33 ++++++++++++++++++++++++++-------
 1 file changed, 26 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
index 6b1e432..93c3491 100644
--- a/drivers/mtd/ubi/cdev.c
+++ b/drivers/mtd/ubi/cdev.c
@@ -8,7 +8,7 @@
 struct ubi_volume_cdev_priv {
 	struct ubi_device *ubi;
 	struct ubi_volume *vol;
-	int updating;
+	int written;
 };
 
 static ssize_t ubi_volume_cdev_read(struct cdev *cdev, void *buf, size_t size,
@@ -63,13 +63,12 @@ static ssize_t ubi_volume_cdev_write(struct cdev* cdev, const void *buf,
 	struct ubi_device *ubi = priv->ubi;
 	int err;
 
-	if (!priv->updating) {
-		err = ubi_start_update(ubi, vol, 16*1024*1024);
+	if (!priv->written) {
+		err = ubi_start_update(ubi, vol, vol->used_bytes);
 		if (err < 0) {
 			printf("Cannot start volume update\n");
 			return err;
 		}
-		priv->updating = 1;
 	}
 
 	err = ubi_more_update_data(ubi, vol, buf, size);
@@ -78,6 +77,8 @@ static ssize_t ubi_volume_cdev_write(struct cdev* cdev, const void *buf,
 		return err;
 	}
 
+	priv->written += size;
+
 	return size;
 }
 
@@ -85,7 +86,7 @@ static int ubi_volume_cdev_open(struct cdev *cdev, unsigned long flags)
 {
 	struct ubi_volume_cdev_priv *priv = cdev->priv;
 
-	priv->updating = 0;
+	priv->written = 0;
 
 	return 0;
 }
@@ -97,7 +98,25 @@ static int ubi_volume_cdev_close(struct cdev *cdev)
 	struct ubi_device *ubi = priv->ubi;
 	int err;
 
-	if (priv->updating) {
+	if (priv->written) {
+		int remaining = vol->usable_leb_size -
+				(priv->written % vol->usable_leb_size);
+
+		if (remaining) {
+			void *buf = xzalloc(remaining);
+
+			memset(buf, 0xff, remaining);
+
+			err = ubi_more_update_data(ubi, vol, buf, remaining);
+
+			free(buf);
+
+			if (err < 0) {
+				printf("Couldnt or partially wrote data \n");
+				return err;
+			}
+		}
+
 		err = ubi_finish_update(ubi, vol);
 		if (err)
 			return err;
@@ -126,7 +145,7 @@ static loff_t ubi_volume_cdev_lseek(struct cdev *cdev, loff_t ofs)
 	struct ubi_volume_cdev_priv *priv = cdev->priv;
 
 	/* We can only update ubi volumes sequentially */
-	if (priv->updating)
+	if (priv->written)
 		return -EINVAL;
 
 	return ofs;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
