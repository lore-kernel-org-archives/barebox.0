Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHUy5-00005t-6f
 for barebox@lists.infradead.org; Mon, 27 Jun 2016 11:44:46 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id CA85AA004EE
 for <barebox@lists.infradead.org>; Mon, 27 Jun 2016 13:45:30 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 27 Jun 2016 13:42:18 +0200
Message-Id: <1467027740-24201-2-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1467027740-24201-1-git-send-email-t.remmet@phytec.de>
References: <1467027740-24201-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 2/4] mtd: UBI: Add support for updating static volumes
To: barebox@lists.infradead.org

Added support to update UBI static volumes in barebox.
This is mainly realized with adding the ioctl UBI_IOCVOLUP.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
Changes in v2:
	- added missing spaces around "-" operant

 drivers/mtd/ubi/barebox.c | 56 +++++++++++++++++++++++++++++++++++++++++++++--
 drivers/mtd/ubi/upd.c     | 12 ----------
 2 files changed, 54 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index 085e4a7..fc60aae 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -65,7 +65,10 @@ static ssize_t ubi_volume_cdev_write(struct cdev* cdev, const void *buf,
 	struct ubi_device *ubi = priv->ubi;
 	int err;
 
-	if (!priv->written) {
+	if (!priv->written && !vol->updating) {
+		if (vol->vol_type == UBI_STATIC_VOLUME)
+			return -EROFS;
+
 		err = ubi_start_update(ubi, vol, vol->used_bytes);
 		if (err < 0) {
 			ubi_err(ubi, "Cannot start volume update");
@@ -104,7 +107,7 @@ static int ubi_volume_cdev_close(struct cdev *cdev)
 		int remaining = vol->usable_leb_size -
 				(priv->written % vol->usable_leb_size);
 
-		if (remaining) {
+		if (remaining && vol->vol_type == UBI_DYNAMIC_VOLUME) {
 			void *buf = kmalloc(remaining, GFP_KERNEL);
 
 			if (!buf)
@@ -122,6 +125,9 @@ static int ubi_volume_cdev_close(struct cdev *cdev)
 			}
 		}
 
+		if (vol->vol_type == UBI_STATIC_VOLUME)
+			cdev->size = priv->written;
+
 		err = ubi_finish_update(ubi, vol);
 		if (err)
 			return err;
@@ -156,12 +162,54 @@ static loff_t ubi_volume_cdev_lseek(struct cdev *cdev, loff_t ofs)
 	return ofs;
 }
 
+static int ubi_volume_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
+{
+	struct ubi_volume_cdev_priv *priv = cdev->priv;
+	struct ubi_device *ubi = priv->ubi;
+	struct ubi_volume *vol = priv->vol;
+	int err = 0;
+
+	switch (cmd) {
+	/* Volume update command */
+	case UBI_IOCVOLUP:
+	{
+		int64_t bytes, rsvd_bytes;
+
+		err = copy_from_user(&bytes, buf, sizeof(int64_t));
+		if (err) {
+			err = -EFAULT;
+			break;
+		}
+
+		rsvd_bytes = (long long)vol->reserved_pebs *
+				ubi->leb_size - vol->data_pad;
+
+		if (bytes < 0 || bytes > rsvd_bytes) {
+			err = -EINVAL;
+			break;
+		}
+
+		err = ubi_start_update(ubi, vol, bytes);
+		if (bytes == 0)
+			ubi_volume_notify(ubi, vol, UBI_VOLUME_UPDATED);
+
+		break;
+	}
+
+	default:
+		err = -ENOTTY;
+		break;
+	}
+	return err;
+}
+
 static struct file_operations ubi_volume_fops = {
 	.open	= ubi_volume_cdev_open,
 	.close	= ubi_volume_cdev_close,
 	.read   = ubi_volume_cdev_read,
 	.write  = ubi_volume_cdev_write,
 	.lseek	= ubi_volume_cdev_lseek,
+	.ioctl  = ubi_volume_cdev_ioctl,
 };
 
 int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
@@ -179,6 +227,10 @@ int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
 	cdev->name = basprintf("%s.%s", ubi->cdev.name, vol->name);
 	cdev->priv = priv;
 	cdev->size = vol->used_bytes;
+
+	if (vol->vol_type == UBI_STATIC_VOLUME)
+		cdev->flags = DEVFS_IS_CHARACTER_DEV;
+
 	cdev->dev = &vol->dev;
 	ubi_msg(ubi, "registering %s as /dev/%s", vol->name, cdev->name);
 	ret = devfs_create(cdev);
diff --git a/drivers/mtd/ubi/upd.c b/drivers/mtd/ubi/upd.c
index 33d4dbf..e3deb3e 100644
--- a/drivers/mtd/ubi/upd.c
+++ b/drivers/mtd/ubi/upd.c
@@ -368,18 +368,6 @@ int ubi_more_update_data(struct ubi_device *ubi, struct ubi_volume *vol,
 	}
 
 	ubi_assert(vol->upd_received <= vol->upd_bytes);
-	if (vol->upd_received == vol->upd_bytes) {
-		err = ubi_wl_flush(ubi, UBI_ALL, UBI_ALL);
-		if (err)
-			return err;
-		/* The update is finished, clear the update marker */
-		err = clear_update_marker(ubi, vol, vol->upd_bytes);
-		if (err)
-			return err;
-		vol->updating = 0;
-		err = to_write;
-		vfree(vol->upd_buf);
-	}
 
 	return err;
 }
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
