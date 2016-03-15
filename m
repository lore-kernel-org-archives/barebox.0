Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn3u-00015l-Fi
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:22:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:22:27 +0100
Message-Id: <1458040952-6826-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040952-6826-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040952-6826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] mtd: ubi: rename cdev.c to barebox.c
To: Barebox List <barebox@lists.infradead.org>

cdev.c exists in the kernel UBI code, but barebox has completely
different content in this file. rename it to barebox.c to reduce the
number of merge conflicts. Also with the name barebox.c we now have
a place to put other barebox specific UBI code to.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/Makefile  |   2 +-
 drivers/mtd/ubi/barebox.c | 262 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/ubi/cdev.c    | 262 ----------------------------------------------
 3 files changed, 263 insertions(+), 263 deletions(-)
 create mode 100644 drivers/mtd/ubi/barebox.c
 delete mode 100644 drivers/mtd/ubi/cdev.c

diff --git a/drivers/mtd/ubi/Makefile b/drivers/mtd/ubi/Makefile
index 795b116..33ac390 100644
--- a/drivers/mtd/ubi/Makefile
+++ b/drivers/mtd/ubi/Makefile
@@ -1,5 +1,5 @@
 obj-$(CONFIG_MTD_UBI) += ubi.o
 
-ubi-y += vtbl.o vmt.o upd.o build.o cdev.o kapi.o eba.o io.o wl.o attach.o
+ubi-y += vtbl.o vmt.o upd.o build.o barebox.o kapi.o eba.o io.o wl.o attach.o
 ubi-y += misc.o debug.o
 ubi-$(CONFIG_MTD_UBI_FASTMAP) += fastmap.o
diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
new file mode 100644
index 0000000..fe71a8d
--- /dev/null
+++ b/drivers/mtd/ubi/barebox.c
@@ -0,0 +1,262 @@
+#include <common.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <ioctl.h>
+#include "ubi-barebox.h"
+#include "ubi.h"
+
+LIST_HEAD(ubi_volumes_list);
+
+struct ubi_volume_cdev_priv {
+	struct ubi_device *ubi;
+	struct ubi_volume *vol;
+	int written;
+};
+
+static ssize_t ubi_volume_cdev_read(struct cdev *cdev, void *buf, size_t size,
+		loff_t offset, unsigned long flags)
+{
+	struct ubi_volume_cdev_priv *priv = cdev->priv;
+	struct ubi_volume *vol = priv->vol;
+	struct ubi_device *ubi = priv->ubi;
+	int err, lnum, off, len;
+	size_t count_save = size;
+	unsigned long long tmp;
+	loff_t offp = offset;
+	int usable_leb_size = vol->usable_leb_size;
+
+	ubi_debug("%s: %zd @ 0x%08llx", __func__, size, offset);
+
+	len = size > usable_leb_size ? usable_leb_size : size;
+
+	tmp = offp;
+	off = do_div(tmp, usable_leb_size);
+	lnum = tmp;
+	do {
+		if (off + len >= usable_leb_size)
+			len = usable_leb_size - off;
+
+		err = ubi_eba_read_leb(ubi, vol, lnum, buf, off, len, 0);
+		if (err) {
+			ubi_err("read error: %s", strerror(-err));
+			break;
+		}
+		off += len;
+		if (off == usable_leb_size) {
+			lnum += 1;
+			off -= usable_leb_size;
+		}
+
+		size -= len;
+		offp += len;
+
+		buf += len;
+		len = size > usable_leb_size ? usable_leb_size : size;
+	} while (size);
+
+	return count_save;
+}
+
+static ssize_t ubi_volume_cdev_write(struct cdev* cdev, const void *buf,
+		size_t size, loff_t offset, unsigned long flags)
+{
+	struct ubi_volume_cdev_priv *priv = cdev->priv;
+	struct ubi_volume *vol = priv->vol;
+	struct ubi_device *ubi = priv->ubi;
+	int err;
+
+	if (!priv->written) {
+		err = ubi_start_update(ubi, vol, vol->used_bytes);
+		if (err < 0) {
+			ubi_err("Cannot start volume update");
+			return err;
+		}
+	}
+
+	err = ubi_more_update_data(ubi, vol, buf, size);
+	if (err < 0) {
+		ubi_err("Couldnt or partially wrote data");
+		return err;
+	}
+
+	priv->written += size;
+
+	return size;
+}
+
+static int ubi_volume_cdev_open(struct cdev *cdev, unsigned long flags)
+{
+	struct ubi_volume_cdev_priv *priv = cdev->priv;
+
+	priv->written = 0;
+
+	return 0;
+}
+
+static int ubi_volume_cdev_close(struct cdev *cdev)
+{
+	struct ubi_volume_cdev_priv *priv = cdev->priv;
+	struct ubi_volume *vol = priv->vol;
+	struct ubi_device *ubi = priv->ubi;
+	int err;
+
+	if (priv->written) {
+		int remaining = vol->usable_leb_size -
+				(priv->written % vol->usable_leb_size);
+
+		if (remaining) {
+			void *buf = kmalloc(remaining, GFP_KERNEL);
+
+			if (!buf)
+				return -ENOMEM;
+
+			memset(buf, 0xff, remaining);
+
+			err = ubi_more_update_data(ubi, vol, buf, remaining);
+
+			kfree(buf);
+
+			if (err < 0) {
+				ubi_err("Couldnt or partially wrote data");
+				return err;
+			}
+		}
+
+		err = ubi_finish_update(ubi, vol);
+		if (err)
+			return err;
+
+		err = ubi_check_volume(ubi, vol->vol_id);
+		if (err < 0) {
+			ubi_err("ubi volume check failed: %s", strerror(err));
+			return err;
+		}
+
+		if (err) {
+			ubi_warn("volume %d on UBI device %d is corrupted",
+					vol->vol_id, ubi->ubi_num);
+			vol->corrupted = 1;
+		}
+
+		vol->checked = 1;
+		ubi_volume_notify(ubi, vol, UBI_VOLUME_UPDATED);
+	}
+
+	return 0;
+}
+
+static loff_t ubi_volume_cdev_lseek(struct cdev *cdev, loff_t ofs)
+{
+	struct ubi_volume_cdev_priv *priv = cdev->priv;
+
+	/* We can only update ubi volumes sequentially */
+	if (priv->written)
+		return -EINVAL;
+
+	return ofs;
+}
+
+static struct file_operations ubi_volume_fops = {
+	.open	= ubi_volume_cdev_open,
+	.close	= ubi_volume_cdev_close,
+	.read   = ubi_volume_cdev_read,
+	.write  = ubi_volume_cdev_write,
+	.lseek	= ubi_volume_cdev_lseek,
+};
+
+int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
+{
+	struct cdev *cdev = &vol->cdev;
+	struct ubi_volume_cdev_priv *priv;
+	int ret;
+
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
+
+	priv->vol = vol;
+	priv->ubi = ubi;
+
+	cdev->ops = &ubi_volume_fops;
+	cdev->name = asprintf("%s.%s", ubi->cdev.name, vol->name);
+	cdev->priv = priv;
+	cdev->size = vol->used_bytes;
+	cdev->dev = &vol->dev;
+	ubi_msg("registering %s as /dev/%s", vol->name, cdev->name);
+	ret = devfs_create(cdev);
+	if (ret) {
+		kfree(priv);
+		free(cdev->name);
+	}
+
+	list_add_tail(&vol->list, &ubi_volumes_list);
+
+	return 0;
+}
+
+void ubi_volume_cdev_remove(struct ubi_volume *vol)
+{
+	struct cdev *cdev = &vol->cdev;
+	struct ubi_volume_cdev_priv *priv = cdev->priv;
+
+	list_del(&vol->list);
+
+	devfs_remove(cdev);
+	unregister_device(&vol->dev);
+	kfree(cdev->name);
+	kfree(priv);
+}
+
+static int ubi_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
+{
+	struct ubi_volume_desc *desc;
+	struct ubi_device *ubi = cdev->priv;
+	struct ubi_mkvol_req *req = buf;
+
+	switch (cmd) {
+	case UBI_IOCRMVOL:
+		desc = ubi_open_volume_nm(ubi->ubi_num, req->name,
+                                           UBI_EXCLUSIVE);
+		if (IS_ERR(desc))
+			return PTR_ERR(desc);
+		ubi_remove_volume(desc, 0);
+		ubi_close_volume(desc);
+		break;
+	case UBI_IOCMKVOL:
+		if (!req->bytes)
+			req->bytes = (__s64)ubi->avail_pebs * ubi->leb_size;
+		return ubi_create_volume(ubi, req);
+	};
+
+	return 0;
+}
+
+static struct file_operations ubi_fops = {
+	.ioctl	= ubi_cdev_ioctl,
+};
+
+int ubi_cdev_add(struct ubi_device *ubi)
+{
+	struct cdev *cdev = &ubi->cdev;
+	int ret;
+
+	cdev->ops = &ubi_fops;
+	cdev->name = asprintf("%s.ubi", ubi->mtd->cdev.name);
+	cdev->priv = ubi;
+	cdev->size = 0;
+
+	ubi_msg("registering /dev/%s", cdev->name);
+	ret = devfs_create(cdev);
+	if (ret)
+		kfree(cdev->name);
+
+	return ret;
+}
+
+void ubi_cdev_remove(struct ubi_device *ubi)
+{
+	struct cdev *cdev = &ubi->cdev;
+
+	ubi_msg("removing %s", cdev->name);
+
+	devfs_remove(cdev);
+	kfree(cdev->name);
+}
diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
deleted file mode 100644
index fe71a8d..0000000
--- a/drivers/mtd/ubi/cdev.c
+++ /dev/null
@@ -1,262 +0,0 @@
-#include <common.h>
-#include <fcntl.h>
-#include <fs.h>
-#include <ioctl.h>
-#include "ubi-barebox.h"
-#include "ubi.h"
-
-LIST_HEAD(ubi_volumes_list);
-
-struct ubi_volume_cdev_priv {
-	struct ubi_device *ubi;
-	struct ubi_volume *vol;
-	int written;
-};
-
-static ssize_t ubi_volume_cdev_read(struct cdev *cdev, void *buf, size_t size,
-		loff_t offset, unsigned long flags)
-{
-	struct ubi_volume_cdev_priv *priv = cdev->priv;
-	struct ubi_volume *vol = priv->vol;
-	struct ubi_device *ubi = priv->ubi;
-	int err, lnum, off, len;
-	size_t count_save = size;
-	unsigned long long tmp;
-	loff_t offp = offset;
-	int usable_leb_size = vol->usable_leb_size;
-
-	ubi_debug("%s: %zd @ 0x%08llx", __func__, size, offset);
-
-	len = size > usable_leb_size ? usable_leb_size : size;
-
-	tmp = offp;
-	off = do_div(tmp, usable_leb_size);
-	lnum = tmp;
-	do {
-		if (off + len >= usable_leb_size)
-			len = usable_leb_size - off;
-
-		err = ubi_eba_read_leb(ubi, vol, lnum, buf, off, len, 0);
-		if (err) {
-			ubi_err("read error: %s", strerror(-err));
-			break;
-		}
-		off += len;
-		if (off == usable_leb_size) {
-			lnum += 1;
-			off -= usable_leb_size;
-		}
-
-		size -= len;
-		offp += len;
-
-		buf += len;
-		len = size > usable_leb_size ? usable_leb_size : size;
-	} while (size);
-
-	return count_save;
-}
-
-static ssize_t ubi_volume_cdev_write(struct cdev* cdev, const void *buf,
-		size_t size, loff_t offset, unsigned long flags)
-{
-	struct ubi_volume_cdev_priv *priv = cdev->priv;
-	struct ubi_volume *vol = priv->vol;
-	struct ubi_device *ubi = priv->ubi;
-	int err;
-
-	if (!priv->written) {
-		err = ubi_start_update(ubi, vol, vol->used_bytes);
-		if (err < 0) {
-			ubi_err("Cannot start volume update");
-			return err;
-		}
-	}
-
-	err = ubi_more_update_data(ubi, vol, buf, size);
-	if (err < 0) {
-		ubi_err("Couldnt or partially wrote data");
-		return err;
-	}
-
-	priv->written += size;
-
-	return size;
-}
-
-static int ubi_volume_cdev_open(struct cdev *cdev, unsigned long flags)
-{
-	struct ubi_volume_cdev_priv *priv = cdev->priv;
-
-	priv->written = 0;
-
-	return 0;
-}
-
-static int ubi_volume_cdev_close(struct cdev *cdev)
-{
-	struct ubi_volume_cdev_priv *priv = cdev->priv;
-	struct ubi_volume *vol = priv->vol;
-	struct ubi_device *ubi = priv->ubi;
-	int err;
-
-	if (priv->written) {
-		int remaining = vol->usable_leb_size -
-				(priv->written % vol->usable_leb_size);
-
-		if (remaining) {
-			void *buf = kmalloc(remaining, GFP_KERNEL);
-
-			if (!buf)
-				return -ENOMEM;
-
-			memset(buf, 0xff, remaining);
-
-			err = ubi_more_update_data(ubi, vol, buf, remaining);
-
-			kfree(buf);
-
-			if (err < 0) {
-				ubi_err("Couldnt or partially wrote data");
-				return err;
-			}
-		}
-
-		err = ubi_finish_update(ubi, vol);
-		if (err)
-			return err;
-
-		err = ubi_check_volume(ubi, vol->vol_id);
-		if (err < 0) {
-			ubi_err("ubi volume check failed: %s", strerror(err));
-			return err;
-		}
-
-		if (err) {
-			ubi_warn("volume %d on UBI device %d is corrupted",
-					vol->vol_id, ubi->ubi_num);
-			vol->corrupted = 1;
-		}
-
-		vol->checked = 1;
-		ubi_volume_notify(ubi, vol, UBI_VOLUME_UPDATED);
-	}
-
-	return 0;
-}
-
-static loff_t ubi_volume_cdev_lseek(struct cdev *cdev, loff_t ofs)
-{
-	struct ubi_volume_cdev_priv *priv = cdev->priv;
-
-	/* We can only update ubi volumes sequentially */
-	if (priv->written)
-		return -EINVAL;
-
-	return ofs;
-}
-
-static struct file_operations ubi_volume_fops = {
-	.open	= ubi_volume_cdev_open,
-	.close	= ubi_volume_cdev_close,
-	.read   = ubi_volume_cdev_read,
-	.write  = ubi_volume_cdev_write,
-	.lseek	= ubi_volume_cdev_lseek,
-};
-
-int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
-{
-	struct cdev *cdev = &vol->cdev;
-	struct ubi_volume_cdev_priv *priv;
-	int ret;
-
-	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
-
-	priv->vol = vol;
-	priv->ubi = ubi;
-
-	cdev->ops = &ubi_volume_fops;
-	cdev->name = asprintf("%s.%s", ubi->cdev.name, vol->name);
-	cdev->priv = priv;
-	cdev->size = vol->used_bytes;
-	cdev->dev = &vol->dev;
-	ubi_msg("registering %s as /dev/%s", vol->name, cdev->name);
-	ret = devfs_create(cdev);
-	if (ret) {
-		kfree(priv);
-		free(cdev->name);
-	}
-
-	list_add_tail(&vol->list, &ubi_volumes_list);
-
-	return 0;
-}
-
-void ubi_volume_cdev_remove(struct ubi_volume *vol)
-{
-	struct cdev *cdev = &vol->cdev;
-	struct ubi_volume_cdev_priv *priv = cdev->priv;
-
-	list_del(&vol->list);
-
-	devfs_remove(cdev);
-	unregister_device(&vol->dev);
-	kfree(cdev->name);
-	kfree(priv);
-}
-
-static int ubi_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
-{
-	struct ubi_volume_desc *desc;
-	struct ubi_device *ubi = cdev->priv;
-	struct ubi_mkvol_req *req = buf;
-
-	switch (cmd) {
-	case UBI_IOCRMVOL:
-		desc = ubi_open_volume_nm(ubi->ubi_num, req->name,
-                                           UBI_EXCLUSIVE);
-		if (IS_ERR(desc))
-			return PTR_ERR(desc);
-		ubi_remove_volume(desc, 0);
-		ubi_close_volume(desc);
-		break;
-	case UBI_IOCMKVOL:
-		if (!req->bytes)
-			req->bytes = (__s64)ubi->avail_pebs * ubi->leb_size;
-		return ubi_create_volume(ubi, req);
-	};
-
-	return 0;
-}
-
-static struct file_operations ubi_fops = {
-	.ioctl	= ubi_cdev_ioctl,
-};
-
-int ubi_cdev_add(struct ubi_device *ubi)
-{
-	struct cdev *cdev = &ubi->cdev;
-	int ret;
-
-	cdev->ops = &ubi_fops;
-	cdev->name = asprintf("%s.ubi", ubi->mtd->cdev.name);
-	cdev->priv = ubi;
-	cdev->size = 0;
-
-	ubi_msg("registering /dev/%s", cdev->name);
-	ret = devfs_create(cdev);
-	if (ret)
-		kfree(cdev->name);
-
-	return ret;
-}
-
-void ubi_cdev_remove(struct ubi_device *ubi)
-{
-	struct cdev *cdev = &ubi->cdev;
-
-	ubi_msg("removing %s", cdev->name);
-
-	devfs_remove(cdev);
-	kfree(cdev->name);
-}
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
