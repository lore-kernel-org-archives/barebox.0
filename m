Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJKcW-00069N-0t
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 10:24:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2014 11:24:20 +0100
Message-Id: <1393583061-796-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393583061-796-1-git-send-email-s.hauer@pengutronix.de>
References: <1393583061-796-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] mtd: ubi: rework logging
To: barebox@lists.infradead.org

By default UBI is very verbose. Decrease the verbosity, turn
printf messages into ubi_ messages and add device parameters
for the values which are not printed anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/build.c   | 30 +++++++++++++++++++++---------
 drivers/mtd/ubi/cdev.c    | 18 +++++++++---------
 drivers/mtd/ubi/fastmap.c |  4 ++--
 drivers/mtd/ubi/ubi.h     |  1 +
 4 files changed, 33 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 202b046..093f703 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -578,8 +578,8 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 		ubi->fm_disabled = 1;
 	}
 
-	ubi_msg("default fastmap pool size: %d", ubi->fm_pool.max_size);
-	ubi_msg("default fastmap WL pool size: %d", ubi->fm_wl_pool.max_size);
+	ubi_debug("default fastmap pool size: %d", ubi->fm_pool.max_size);
+	ubi_debug("default fastmap WL pool size: %d", ubi->fm_wl_pool.max_size);
 #else
 	ubi->fm_disabled = 1;
 #endif
@@ -619,23 +619,35 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 
 	ubi_msg("attached mtd%d (name \"%s\", size %llu MiB) to ubi%d",
 		mtd->index, mtd->name, ubi->flash_size >> 20, ubi_num);
-	ubi_msg("PEB size: %d bytes (%d KiB), LEB size: %d bytes",
+	ubi_debug("PEB size: %d bytes (%d KiB), LEB size: %d bytes",
 		ubi->peb_size, ubi->peb_size >> 10, ubi->leb_size);
-	ubi_msg("min./max. I/O unit sizes: %d/%d, sub-page size %d",
+	ubi_debug("min./max. I/O unit sizes: %d/%d, sub-page size %d",
 		ubi->min_io_size, ubi->max_write_size, ubi->hdrs_min_io_size);
-	ubi_msg("VID header offset: %d (aligned %d), data offset: %d",
+	ubi_debug("VID header offset: %d (aligned %d), data offset: %d",
 		ubi->vid_hdr_offset, ubi->vid_hdr_aloffset, ubi->leb_start);
-	ubi_msg("good PEBs: %d, bad PEBs: %d, corrupted PEBs: %d",
+	ubi_debug("good PEBs: %d, bad PEBs: %d, corrupted PEBs: %d",
 		ubi->good_peb_count, ubi->bad_peb_count, ubi->corr_peb_count);
-	ubi_msg("user volume: %d, internal volumes: %d, max. volumes count: %d",
+	ubi_debug("user volume: %d, internal volumes: %d, max. volumes count: %d",
 		ubi->vol_count - UBI_INT_VOL_COUNT, UBI_INT_VOL_COUNT,
 		ubi->vtbl_slots);
-	ubi_msg("max/mean erase counter: %d/%d, WL threshold: %d, image sequence number: %u",
+	ubi_debug("max/mean erase counter: %d/%d, WL threshold: %d, image sequence number: %u",
 		ubi->max_ec, ubi->mean_ec, CONFIG_MTD_UBI_WL_THRESHOLD,
 		ubi->image_seq);
-	ubi_msg("available PEBs: %d, total reserved PEBs: %d, PEBs reserved for bad PEB handling: %d",
+	ubi_debug("available PEBs: %d, total reserved PEBs: %d, PEBs reserved for bad PEB handling: %d",
 		ubi->avail_pebs, ubi->rsvd_pebs, ubi->beb_rsvd_pebs);
 
+	dev_add_param_int_ro(&ubi->dev, "peb_size", ubi->peb_size, "%d");
+	dev_add_param_int_ro(&ubi->dev, "leb_size", ubi->leb_size, "%d");
+	dev_add_param_int_ro(&ubi->dev, "vid_header_offset", ubi->vid_hdr_offset, "%d");
+	dev_add_param_int_ro(&ubi->dev, "min_io_size", ubi->min_io_size, "%d");
+	dev_add_param_int_ro(&ubi->dev, "sub_page_size", ubi->hdrs_min_io_size, "%d");
+	dev_add_param_int_ro(&ubi->dev, "good_peb_count", ubi->good_peb_count, "%d");
+	dev_add_param_int_ro(&ubi->dev, "bad_peb_count", ubi->bad_peb_count, "%d");
+	dev_add_param_int_ro(&ubi->dev, "max_erase_counter", ubi->max_ec, "%d");
+	dev_add_param_int_ro(&ubi->dev, "mean_erase_counter", ubi->mean_ec, "%d");
+	dev_add_param_int_ro(&ubi->dev, "available_pebs", ubi->avail_pebs, "%d");
+	dev_add_param_int_ro(&ubi->dev, "reserved_pebs", ubi->rsvd_pebs, "%d");
+
 	/*
 	 * The below lock makes sure we do not race with 'ubi_thread()' which
 	 * checks @ubi->thread_enabled. Otherwise we may fail to wake it up.
diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
index 129f2e2..d64e6cf 100644
--- a/drivers/mtd/ubi/cdev.c
+++ b/drivers/mtd/ubi/cdev.c
@@ -25,7 +25,7 @@ static ssize_t ubi_volume_cdev_read(struct cdev *cdev, void *buf, size_t size,
 	loff_t offp = offset;
 	int usable_leb_size = vol->usable_leb_size;
 
-	debug("%s: %zd @ 0x%08llx\n", __func__, size, offset);
+	ubi_debug("%s: %zd @ 0x%08llx\n", __func__, size, offset);
 
 	len = size > usable_leb_size ? usable_leb_size : size;
 
@@ -38,7 +38,7 @@ static ssize_t ubi_volume_cdev_read(struct cdev *cdev, void *buf, size_t size,
 
 		err = ubi_eba_read_leb(ubi, vol, lnum, buf, off, len, 0);
 		if (err) {
-			printf("read err %x\n", err);
+			ubi_err("read error: %s\n", strerror(-err));
 			break;
 		}
 		off += len;
@@ -68,14 +68,14 @@ static ssize_t ubi_volume_cdev_write(struct cdev* cdev, const void *buf,
 	if (!priv->written) {
 		err = ubi_start_update(ubi, vol, vol->used_bytes);
 		if (err < 0) {
-			printf("Cannot start volume update\n");
+			ubi_err("Cannot start volume update\n");
 			return err;
 		}
 	}
 
 	err = ubi_more_update_data(ubi, vol, buf, size);
 	if (err < 0) {
-		printf("Couldnt or partially wrote data \n");
+		ubi_err("Couldnt or partially wrote data \n");
 		return err;
 	}
 
@@ -117,7 +117,7 @@ static int ubi_volume_cdev_close(struct cdev *cdev)
 			kfree(buf);
 
 			if (err < 0) {
-				printf("Couldnt or partially wrote data \n");
+				ubi_err("Couldnt or partially wrote data \n");
 				return err;
 			}
 		}
@@ -128,7 +128,7 @@ static int ubi_volume_cdev_close(struct cdev *cdev)
 
 		err = ubi_check_volume(ubi, vol->vol_id);
 		if (err < 0) {
-			printf("check failed: %s\n", strerror(err));
+			ubi_err("ubi volume check failed: %s\n", strerror(err));
 			return err;
 		}
 
@@ -179,7 +179,7 @@ int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
 	cdev->name = asprintf("ubi%d.%s", ubi->ubi_num, vol->name);
 	cdev->priv = priv;
 	cdev->size = vol->used_bytes;
-	printf("registering %s as /dev/%s\n", vol->name, cdev->name);
+	ubi_msg("registering %s as /dev/%s\n", vol->name, cdev->name);
 	ret = devfs_create(cdev);
 	if (ret) {
 		kfree(priv);
@@ -241,7 +241,7 @@ int ubi_cdev_add(struct ubi_device *ubi)
 	cdev->priv = ubi;
 	cdev->size = 0;
 
-	printf("registering /dev/%s\n", cdev->name);
+	ubi_msg("registering /dev/%s", cdev->name);
 	ret = devfs_create(cdev);
 	if (ret)
 		kfree(cdev->name);
@@ -253,7 +253,7 @@ void ubi_cdev_remove(struct ubi_device *ubi)
 {
 	struct cdev *cdev = &ubi->cdev;
 
-	printf("removing %s\n", cdev->name);
+	ubi_msg("removing %s", cdev->name);
 
 	devfs_remove(cdev);
 	kfree(cdev->name);
diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 1ba1571..de68c32 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -1054,8 +1054,8 @@ int ubi_scan_fastmap(struct ubi_device *ubi, struct ubi_attach_info *ai,
 	ubi->fm_pool.max_size = ubi->fm->max_pool_size;
 	ubi->fm_wl_pool.max_size = ubi->fm->max_wl_pool_size;
 	ubi_msg("attached by fastmap");
-	ubi_msg("fastmap pool size: %d", ubi->fm_pool.max_size);
-	ubi_msg("fastmap WL pool size: %d", ubi->fm_wl_pool.max_size);
+	ubi_debug("fastmap pool size: %d", ubi->fm_pool.max_size);
+	ubi_debug("fastmap WL pool size: %d", ubi->fm_wl_pool.max_size);
 	ubi->fm_disabled = 0;
 
 	ubi_free_vid_hdr(ubi, vh);
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index aa2cf02..a3bb704 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -39,6 +39,7 @@
 /* UBI name used for character devices, sysfs, etc */
 #define UBI_NAME_STR "ubi"
 
+#define ubi_debug(fmt, ...) pr_debug("UBI: " fmt "\n", ##__VA_ARGS__)
 /* Normal UBI messages */
 #define ubi_msg(fmt, ...) pr_info("UBI: " fmt "\n", ##__VA_ARGS__)
 /* UBI warning messages */
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
