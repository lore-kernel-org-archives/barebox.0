Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVlXN-0000kt-Dl
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 13:16:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Jul 2010 15:16:34 +0200
Message-Id: <1278335795-16289-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
References: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] barebox ubi changes
To: barebox@lists.infradead.org

This adds the layer between barebox and UBI.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/Makefile |    2 +-
 drivers/mtd/ubi/build.c  |  160 +++----------------------------
 drivers/mtd/ubi/cdev.c   |  238 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/ubi/kapi.c   |    4 +-
 drivers/mtd/ubi/ubi.h    |    9 ++-
 drivers/mtd/ubi/upd.c    |   36 ++++---
 drivers/mtd/ubi/vmt.c    |   14 ++--
 include/mtd/ubi-user.h   |   32 ++++++
 8 files changed, 323 insertions(+), 172 deletions(-)
 create mode 100644 drivers/mtd/ubi/cdev.c

diff --git a/drivers/mtd/ubi/Makefile b/drivers/mtd/ubi/Makefile
index 425c185..cef1141 100644
--- a/drivers/mtd/ubi/Makefile
+++ b/drivers/mtd/ubi/Makefile
@@ -1,3 +1,3 @@
-obj-y += build.o vtbl.o vmt.o upd.o kapi.o eba.o io.o wl.o scan.o misc.o debug.o
+obj-y += build.o vtbl.o vmt.o upd.o kapi.o eba.o io.o wl.o scan.o misc.o debug.o cdev.o
 
 
diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 03ce392..a59972f 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -399,7 +399,7 @@ static int uif_init(struct ubi_device *ubi)
 #ifdef UBI_LINUX
 	ubi->cdev.owner = THIS_MODULE;
 #endif
-	err = cdev_add(&ubi->cdev, dev, 1);
+	err = ubi_cdev_add(ubi);
 	if (err) {
 		ubi_err("cannot add character device");
 		goto out_unreg;
@@ -424,7 +424,7 @@ out_volumes:
 	kill_volumes(ubi);
 out_sysfs:
 	ubi_sysfs_close(ubi);
-	cdev_del(&ubi->cdev);
+	ubi_cdev_remove(ubi);
 out_unreg:
 	unregister_chrdev_region(ubi->cdev.dev, ubi->vtbl_slots + 1);
 	ubi_err("cannot initialize UBI %s, error %d", ubi->ubi_name, err);
@@ -439,7 +439,7 @@ static void uif_close(struct ubi_device *ubi)
 {
 	kill_volumes(ubi);
 	ubi_sysfs_close(ubi);
-	cdev_del(&ubi->cdev);
+	ubi_cdev_remove(ubi);
 	unregister_chrdev_region(ubi->cdev.dev, ubi->vtbl_slots + 1);
 }
 
@@ -724,7 +724,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num, int vid_hdr_offset)
 	 */
 	for (i = 0; i < UBI_MAX_DEVICES; i++) {
 		ubi = ubi_devices[i];
-		if (ubi && mtd->index == ubi->mtd->index) {
+		if (ubi && mtd == ubi->mtd) {
 			dbg_err("mtd%d is already attached to ubi%d",
 				mtd->index, i);
 			return -EEXIST;
@@ -879,15 +879,21 @@ out_free:
  * Note, the invocations of this function has to be serialized by the
  * @ubi_devices_mutex.
  */
-int ubi_detach_mtd_dev(int ubi_num, int anyway)
+int ubi_detach_mtd_dev(struct mtd_info *mtd, int anyway)
 {
 	struct ubi_device *ubi;
-
-	if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
-		return -EINVAL;
+	int ubi_num = 0, i;
 
 	spin_lock(&ubi_devices_lock);
-	ubi = ubi_devices[ubi_num];
+
+	for (i = 0; i < UBI_MAX_DEVICES; i++) {
+		ubi = ubi_devices[i];
+		if (ubi && mtd == ubi->mtd) {
+			ubi_num = i;
+			break;
+		}
+	}
+
 	if (!ubi) {
 		spin_unlock(&ubi_devices_lock);
 		return -EINVAL;
@@ -919,7 +925,6 @@ int ubi_detach_mtd_dev(int ubi_num, int anyway)
 	ubi_eba_close(ubi);
 	ubi_wl_close(ubi);
 	vfree(ubi->vtbl);
-	put_mtd_device(ubi->mtd);
 	vfree(ubi->peb_buf1);
 	vfree(ubi->peb_buf2);
 #ifdef CONFIG_MTD_UBI_DEBUG
@@ -931,141 +936,6 @@ int ubi_detach_mtd_dev(int ubi_num, int anyway)
 }
 
 /**
- * find_mtd_device - open an MTD device by its name or number.
- * @mtd_dev: name or number of the device
- *
- * This function tries to open and MTD device described by @mtd_dev string,
- * which is first treated as an ASCII number, and if it is not true, it is
- * treated as MTD device name. Returns MTD device description object in case of
- * success and a negative error code in case of failure.
- */
-static struct mtd_info * __init open_mtd_device(const char *mtd_dev)
-{
-	struct mtd_info *mtd;
-	int mtd_num;
-	char *endp;
-
-	mtd_num = simple_strtoul(mtd_dev, &endp, 0);
-	if (*endp != '\0' || mtd_dev == endp) {
-		/*
-		 * This does not look like an ASCII integer, probably this is
-		 * MTD device name.
-		 */
-		mtd = get_mtd_device_nm(mtd_dev);
-	} else
-		mtd = get_mtd_device(NULL, mtd_num);
-
-	return mtd;
-}
-
-int __init ubi_init(void)
-{
-	int err, i, k;
-
-	/* Ensure that EC and VID headers have correct size */
-	BUILD_BUG_ON(sizeof(struct ubi_ec_hdr) != 64);
-	BUILD_BUG_ON(sizeof(struct ubi_vid_hdr) != 64);
-
-	if (mtd_devs > UBI_MAX_DEVICES) {
-		ubi_err("too many MTD devices, maximum is %d", UBI_MAX_DEVICES);
-		return -EINVAL;
-	}
-
-	/* Create base sysfs directory and sysfs files */
-	ubi_class = class_create(THIS_MODULE, UBI_NAME_STR);
-	if (IS_ERR(ubi_class)) {
-		err = PTR_ERR(ubi_class);
-		ubi_err("cannot create UBI class");
-		goto out;
-	}
-
-	err = class_create_file(ubi_class, &ubi_version);
-	if (err) {
-		ubi_err("cannot create sysfs file");
-		goto out_class;
-	}
-
-	err = misc_register(&ubi_ctrl_cdev);
-	if (err) {
-		ubi_err("cannot register device");
-		goto out_version;
-	}
-
-#ifdef UBI_LINUX
-	ubi_wl_entry_slab = kmem_cache_create("ubi_wl_entry_slab",
-					      sizeof(struct ubi_wl_entry),
-					      0, 0, NULL);
-	if (!ubi_wl_entry_slab)
-		goto out_dev_unreg;
-#endif
-
-	/* Attach MTD devices */
-	for (i = 0; i < mtd_devs; i++) {
-		struct mtd_dev_param *p = &mtd_dev_param[i];
-		struct mtd_info *mtd;
-
-		cond_resched();
-
-		mtd = open_mtd_device(p->name);
-		if (IS_ERR(mtd)) {
-			err = PTR_ERR(mtd);
-			goto out_detach;
-		}
-
-		mutex_lock(&ubi_devices_mutex);
-		err = ubi_attach_mtd_dev(mtd, UBI_DEV_NUM_AUTO,
-					 p->vid_hdr_offs);
-		mutex_unlock(&ubi_devices_mutex);
-		if (err < 0) {
-			put_mtd_device(mtd);
-			ubi_err("cannot attach mtd%d", mtd->index);
-			goto out_detach;
-		}
-	}
-
-	return 0;
-
-out_detach:
-	for (k = 0; k < i; k++)
-		if (ubi_devices[k]) {
-			mutex_lock(&ubi_devices_mutex);
-			ubi_detach_mtd_dev(ubi_devices[k]->ubi_num, 1);
-			mutex_unlock(&ubi_devices_mutex);
-		}
-#ifdef UBI_LINUX
-	kmem_cache_destroy(ubi_wl_entry_slab);
-out_dev_unreg:
-#endif
-	misc_deregister(&ubi_ctrl_cdev);
-out_version:
-	class_remove_file(ubi_class, &ubi_version);
-out_class:
-	class_destroy(ubi_class);
-out:
-	ubi_err("UBI error: cannot initialize UBI, error %d", err);
-	return err;
-}
-module_init(ubi_init);
-
-void __exit ubi_exit(void)
-{
-	int i;
-
-	for (i = 0; i < UBI_MAX_DEVICES; i++)
-		if (ubi_devices[i]) {
-			mutex_lock(&ubi_devices_mutex);
-			ubi_detach_mtd_dev(ubi_devices[i]->ubi_num, 1);
-			mutex_unlock(&ubi_devices_mutex);
-		}
-	kmem_cache_destroy(ubi_wl_entry_slab);
-	misc_deregister(&ubi_ctrl_cdev);
-	class_remove_file(ubi_class, &ubi_version);
-	class_destroy(ubi_class);
-	mtd_devs = 0;
-}
-module_exit(ubi_exit);
-
-/**
  * bytes_str_to_int - convert a string representing number of bytes to an
  * integer.
  * @str: the string to convert
diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
new file mode 100644
index 0000000..30b8308
--- /dev/null
+++ b/drivers/mtd/ubi/cdev.c
@@ -0,0 +1,238 @@
+#include <common.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <ioctl.h>
+#include "ubi-barebox.h"
+#include "ubi.h"
+
+struct ubi_volume_cdev_priv {
+	struct ubi_device *ubi;
+	struct ubi_volume *vol;
+	int updating;
+	unsigned long mode;
+};
+
+static ssize_t ubi_volume_cdev_read(struct cdev *cdev, void *buf, size_t size,
+		unsigned long offset, unsigned long flags)
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
+	printf("%s: %d @ 0x%08x\n", __func__, size, offset);
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
+			printf("read err %x\n", err);
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
+		size_t size, unsigned long offset, unsigned long flags)
+{
+	struct ubi_volume_cdev_priv *priv = cdev->priv;
+	struct ubi_volume *vol = priv->vol;
+	struct ubi_device *ubi = priv->ubi;
+	int err;
+
+	if (!priv->updating) {
+		err = ubi_start_update(ubi, vol, 16*1024*1024);
+		if (err < 0) {
+			printf("Cannot start volume update\n");
+			return err;
+		}
+		priv->updating = 1;
+	}
+
+	err = ubi_more_update_data(ubi, vol, buf, size);
+	if (err < 0) {
+		printf("Couldnt or partially wrote data \n");
+		return err;
+	}
+
+	return err;
+}
+
+static int ubi_volume_cdev_open(struct cdev *cdev, struct filep *f)
+{
+	struct ubi_volume_cdev_priv *priv = cdev->priv;
+
+	/* only allow read or write, but not both */
+	if ((f->flags & O_ACCMODE) == O_RDWR)
+		return -EINVAL;
+
+	priv->updating = 0;
+	priv->mode = f->flags & O_ACCMODE;
+
+	return 0;
+}
+
+static int ubi_volume_cdev_close(struct cdev *cdev, struct filep *f)
+{
+	struct ubi_volume_cdev_priv *priv = cdev->priv;
+	struct ubi_volume *vol = priv->vol;
+	struct ubi_device *ubi = priv->ubi;
+	int err;
+
+	if (priv->updating) {
+		err = ubi_finish_update(ubi, vol);
+		if (err)
+			return err;
+
+		err = ubi_check_volume(ubi, vol->vol_id);
+		if (err < 0) {
+			printf("check failed: %s\n", strerror(err));
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
+		ubi_gluebi_updated(vol);
+	}
+
+	return 0;
+}
+
+static off_t ubi_volume_cdev_lseek(struct cdev *cdev, off_t ofs)
+{
+	struct ubi_volume_cdev_priv *priv = cdev->priv;
+
+	/* We can only update ubi volumes sequentially */
+	if (priv->mode == O_WRONLY)
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
+	priv = xzalloc(sizeof(*priv));
+
+	priv->vol = vol;
+	priv->ubi = ubi;
+
+	cdev->ops = &ubi_volume_fops;
+	cdev->name = asprintf("ubi%d.%s", ubi->ubi_num, vol->name);
+	cdev->priv = priv;
+	cdev->size = vol->used_bytes;
+	printf("registering %s as /dev/%s\n", vol->name, cdev->name);
+	ret = devfs_create(cdev);
+	if (ret) {
+		free(priv);
+		free(cdev->name);
+	}
+
+	return 0;
+}
+
+void ubi_volume_cdev_remove(struct ubi_volume *vol)
+{
+	struct cdev *cdev = &vol->cdev;
+	struct ubi_volume_cdev_priv *priv = cdev->priv;
+
+	devfs_remove(cdev);
+	free(cdev->name);
+	free(priv);
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
+		ubi_remove_volume(desc);
+		break;
+	case UBI_IOCMKVOL:
+		if (!req->bytes)
+			req->bytes = ubi->avail_pebs * ubi->leb_size;
+		return ubi_create_volume(ubi, req);
+	};
+
+	return 0;
+}
+
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
+	cdev->name = asprintf("ubi%d", ubi->ubi_num);
+	cdev->priv = ubi;
+	cdev->size = 0;
+
+	printf("registering /dev/%s\n", cdev->name);
+	ret = devfs_create(cdev);
+	if (ret)
+		free(cdev->name);
+
+	return ret;
+}
+
+void ubi_cdev_remove(struct ubi_device *ubi)
+{
+	struct cdev *cdev = &ubi->cdev;
+
+	printf("removing %s\n", cdev->name);
+
+	devfs_remove(cdev);
+	free(cdev->name);
+}
diff --git a/drivers/mtd/ubi/kapi.c b/drivers/mtd/ubi/kapi.c
index fac76f2..d423f87 100644
--- a/drivers/mtd/ubi/kapi.c
+++ b/drivers/mtd/ubi/kapi.c
@@ -52,7 +52,7 @@ int ubi_get_device_info(int ubi_num, struct ubi_device_info *di)
 	di->leb_size = ubi->leb_size;
 	di->min_io_size = ubi->min_io_size;
 	di->ro_mode = ubi->ro_mode;
-	di->cdev = ubi->cdev.dev;
+	di->cdev = &ubi->cdev;
 
 	ubi_put_device(ubi);
 	return 0;
@@ -81,7 +81,7 @@ void ubi_get_volume_info(struct ubi_volume_desc *desc,
 	vi->usable_leb_size = vol->usable_leb_size;
 	vi->name_len = vol->name_len;
 	vi->name = vol->name;
-	vi->cdev = vol->cdev.dev;
+	vi->cdev = &vol->cdev;
 }
 EXPORT_SYMBOL_GPL(ubi_get_volume_info);
 
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 358c8dc..5552237 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -448,6 +448,7 @@ void ubi_free_volume(struct ubi_device *ubi, struct ubi_volume *vol);
 /* upd.c */
 int ubi_start_update(struct ubi_device *ubi, struct ubi_volume *vol,
 		     long long bytes);
+int ubi_finish_update(struct ubi_device *ubi, struct ubi_volume *vol);
 int ubi_more_update_data(struct ubi_device *ubi, struct ubi_volume *vol,
 			 const void __user *buf, int count);
 int ubi_start_leb_change(struct ubi_device *ubi, struct ubi_volume *vol,
@@ -516,12 +517,18 @@ int ubi_io_write_vid_hdr(struct ubi_device *ubi, int pnum,
 
 /* build.c */
 int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num, int vid_hdr_offset);
-int ubi_detach_mtd_dev(int ubi_num, int anyway);
+int ubi_detach_mtd_dev(struct mtd_info *mtd, int anyway);
 struct ubi_device *ubi_get_device(int ubi_num);
 void ubi_put_device(struct ubi_device *ubi);
 struct ubi_device *ubi_get_by_major(int major);
 int ubi_major2num(int major);
 
+/* cdev.c */
+int ubi_cdev_add(struct ubi_device *ubi);
+void ubi_cdev_remove(struct ubi_device *ubi);
+int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol);
+void ubi_volume_cdev_remove(struct ubi_volume *vol);
+
 /*
  * ubi_rb_for_each_entry - walk an RB-tree.
  * @rb: a pointer to type 'struct rb_node' to to use as a loop counter
diff --git a/drivers/mtd/ubi/upd.c b/drivers/mtd/ubi/upd.c
index 8267b1a..fda2043 100644
--- a/drivers/mtd/ubi/upd.c
+++ b/drivers/mtd/ubi/upd.c
@@ -173,6 +173,23 @@ int ubi_start_update(struct ubi_device *ubi, struct ubi_volume *vol,
 	return 0;
 }
 
+int ubi_finish_update(struct ubi_device *ubi, struct ubi_volume *vol)
+{
+	int err;
+
+	/* The update is finished, clear the update marker */
+	err = clear_update_marker(ubi, vol, vol->upd_bytes);
+	if (err)
+		return err;
+	err = ubi_wl_flush(ubi);
+	if (err == 0) {
+		vol->updating = 0;
+		vfree(vol->upd_buf);
+	}
+
+	return err;
+}
+
 /**
  * ubi_start_leb_change - start atomic LEB change.
  * @ubi: UBI device description object
@@ -320,13 +337,12 @@ int ubi_more_update_data(struct ubi_device *ubi, struct ubi_volume *vol,
 		if (err)
 			return -EFAULT;
 
-		if (offs + len == vol->usable_leb_size ||
-		    vol->upd_received + len == vol->upd_bytes) {
+		if (offs + len == vol->usable_leb_size) {
 			int flush_len = offs + len;
 
 			/*
-			 * OK, we gathered either the whole eraseblock or this
-			 * is the last chunk, it's time to flush the buffer.
+			 * OK, we gathered the whole eraseblock, it's time to flush
+			 * the buffer.
 			 */
 			ubi_assert(flush_len <= vol->usable_leb_size);
 			err = write_leb(ubi, vol, lnum, vol->upd_buf, flush_len,
@@ -370,18 +386,6 @@ int ubi_more_update_data(struct ubi_device *ubi, struct ubi_volume *vol,
 	}
 
 	ubi_assert(vol->upd_received <= vol->upd_bytes);
-	if (vol->upd_received == vol->upd_bytes) {
-		/* The update is finished, clear the update marker */
-		err = clear_update_marker(ubi, vol, vol->upd_bytes);
-		if (err)
-			return err;
-		err = ubi_wl_flush(ubi);
-		if (err == 0) {
-			vol->updating = 0;
-			err = to_write;
-			vfree(vol->upd_buf);
-		}
-	}
 
 	return err;
 }
diff --git a/drivers/mtd/ubi/vmt.c b/drivers/mtd/ubi/vmt.c
index 935dcdc..4f1d0f4 100644
--- a/drivers/mtd/ubi/vmt.c
+++ b/drivers/mtd/ubi/vmt.c
@@ -323,7 +323,7 @@ int ubi_create_volume(struct ubi_device *ubi, struct ubi_mkvol_req *req)
 	vol->cdev.owner = THIS_MODULE;
 #endif
 	dev = MKDEV(MAJOR(ubi->cdev.dev), vol_id + 1);
-	err = cdev_add(&vol->cdev, dev, 1);
+	err = ubi_volume_cdev_add(ubi, vol);
 	if (err) {
 		ubi_err("cannot add character device");
 		goto out_mapping;
@@ -390,7 +390,7 @@ out_gluebi:
 		dbg_err("cannot destroy gluebi for volume %d:%d",
 			ubi->ubi_num, vol_id);
 out_cdev:
-	cdev_del(&vol->cdev);
+	ubi_volume_cdev_remove(vol);
 out_mapping:
 	kfree(vol->eba_tbl);
 out_acc:
@@ -457,7 +457,7 @@ int ubi_remove_volume(struct ubi_volume_desc *desc)
 
 	kfree(vol->eba_tbl);
 	vol->eba_tbl = NULL;
-	cdev_del(&vol->cdev);
+	ubi_volume_cdev_remove(vol);
 	volume_sysfs_close(vol);
 
 	spin_lock(&ubi->volumes_lock);
@@ -634,7 +634,7 @@ int ubi_add_volume(struct ubi_device *ubi, struct ubi_volume *vol)
 	vol->cdev.owner = THIS_MODULE;
 #endif
 	dev = MKDEV(MAJOR(ubi->cdev.dev), vol->vol_id + 1);
-	err = cdev_add(&vol->cdev, dev, 1);
+	err = ubi_volume_cdev_add(ubi, vol);
 	if (err) {
 		ubi_err("cannot add character device for volume %d, error %d",
 			vol_id, err);
@@ -656,7 +656,7 @@ int ubi_add_volume(struct ubi_device *ubi, struct ubi_volume *vol)
 
 	err = volume_sysfs_init(ubi, vol);
 	if (err) {
-		cdev_del(&vol->cdev);
+		ubi_volume_cdev_remove(vol);
 		err = ubi_destroy_gluebi(vol);
 		volume_sysfs_close(vol);
 		return err;
@@ -668,7 +668,7 @@ int ubi_add_volume(struct ubi_device *ubi, struct ubi_volume *vol)
 out_gluebi:
 	err = ubi_destroy_gluebi(vol);
 out_cdev:
-	cdev_del(&vol->cdev);
+	ubi_volume_cdev_remove(vol);
 	return err;
 }
 
@@ -688,7 +688,7 @@ void ubi_free_volume(struct ubi_device *ubi, struct ubi_volume *vol)
 
 	ubi->volumes[vol->vol_id] = NULL;
 	err = ubi_destroy_gluebi(vol);
-	cdev_del(&vol->cdev);
+	ubi_volume_cdev_remove(vol);
 	volume_sysfs_close(vol);
 }
 
diff --git a/include/mtd/ubi-user.h b/include/mtd/ubi-user.h
index a7421f1..62d8c93 100644
--- a/include/mtd/ubi-user.h
+++ b/include/mtd/ubi-user.h
@@ -265,4 +265,36 @@ struct ubi_leb_change_req {
 	uint8_t padding[7];
 } __attribute__ ((packed));
 
+/**
+ * ubi_attach_mtd_dev - attach an MTD device.
+ * @mtd_dev: MTD device description object
+ * @ubi_num: number to assign to the new UBI device
+ * @vid_hdr_offset: VID header offset
+ *
+ * This function attaches MTD device @mtd_dev to UBI and assign @ubi_num number
+ * to the newly created UBI device, unless @ubi_num is %UBI_DEV_NUM_AUTO, in
+ * which case this function finds a vacant device nubert and assings it
+ * automatically. Returns the new UBI device number in case of success and a
+ * negative error code in case of failure.
+ *
+ * This of course is originally not exported but is now part of the UBI
+ * interface to barebox.
+ */
+int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num, int vid_hdr_offset);
+
+/**
+ * ubi_detach_mtd_dev - detach an MTD device.
+ * @ubi_num: UBI device number to detach from
+ * @anyway: detach MTD even if device reference count is not zero
+ *
+ * This function destroys an UBI device number @ubi_num and detaches the
+ * underlying MTD device. Returns zero in case of success and %-EBUSY if the
+ * UBI device is busy and cannot be destroyed, and %-EINVAL if it does not
+ * exist.
+ *
+ * This of course is originally not exported but is now part of the UBI
+ * interface to barebox.
+ */
+int ubi_detach_mtd_dev(struct mtd_info *mtd, int anyway);
+
 #endif /* __UBI_USER_H__ */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
