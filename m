Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtUk-0001JN-K3
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:26:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:25:35 +0100
Message-Id: <1392287135-445-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
References: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] ubi: register ubi devices and volumes as devices
To: barebox@lists.infradead.org

struct ubi_device and struct ubi_volume have devices attached
to them. Register them to make them part of the barebox device
hierarchy.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/build.c | 13 ++++++++++++-
 drivers/mtd/ubi/cdev.c  |  2 ++
 drivers/mtd/ubi/vmt.c   | 12 ++++++++++++
 3 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 202b046..9c75442 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -157,10 +157,18 @@ static int uif_init(struct ubi_device *ubi, int *ref)
 	*ref = 0;
 	sprintf(ubi->ubi_name, UBI_NAME_STR "%d", ubi->ubi_num);
 
+	sprintf(ubi->dev.name, "ubi");
+	ubi->dev.id = DEVICE_ID_DYNAMIC;
+	ubi->dev.parent = &ubi->mtd->class_dev;
+
+	err = register_device(&ubi->dev);
+	if (err)
+		goto out_unreg;
+
 	err = ubi_cdev_add(ubi);
 	if (err) {
 		ubi_err("cannot add character device");
-		goto out_unreg;
+		goto out_dev;
 	}
 
 	for (i = 0; i < ubi->vtbl_slots; i++)
@@ -177,6 +185,8 @@ static int uif_init(struct ubi_device *ubi, int *ref)
 out_volumes:
 	kill_volumes(ubi);
 	devfs_remove(&ubi->cdev);
+out_dev:
+	unregister_device(&ubi->dev);
 out_unreg:
 	ubi_err("cannot initialize UBI %s, error %d", ubi->ubi_name, err);
 	return err;
@@ -193,6 +203,7 @@ out_unreg:
 static void uif_close(struct ubi_device *ubi)
 {
 	kill_volumes(ubi);
+	unregister_device(&ubi->dev);
 	ubi_cdev_remove(ubi);
 }
 
diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
index 129f2e2..e8beaa5 100644
--- a/drivers/mtd/ubi/cdev.c
+++ b/drivers/mtd/ubi/cdev.c
@@ -179,6 +179,7 @@ int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
 	cdev->name = asprintf("ubi%d.%s", ubi->ubi_num, vol->name);
 	cdev->priv = priv;
 	cdev->size = vol->used_bytes;
+	cdev->dev = &vol->dev;
 	printf("registering %s as /dev/%s\n", vol->name, cdev->name);
 	ret = devfs_create(cdev);
 	if (ret) {
@@ -199,6 +200,7 @@ void ubi_volume_cdev_remove(struct ubi_volume *vol)
 	list_del(&vol->list);
 
 	devfs_remove(cdev);
+	unregister_device(&vol->dev);
 	kfree(cdev->name);
 	kfree(priv);
 }
diff --git a/drivers/mtd/ubi/vmt.c b/drivers/mtd/ubi/vmt.c
index 65339ef..e7a5d9a 100644
--- a/drivers/mtd/ubi/vmt.c
+++ b/drivers/mtd/ubi/vmt.c
@@ -147,6 +147,11 @@ int ubi_create_volume(struct ubi_device *ubi, struct ubi_mkvol_req *req)
 			vol->last_eb_bytes = vol->usable_leb_size;
 	}
 
+	sprintf(vol->dev.name, "%s.%s", dev_name(&ubi->dev), vol->name);
+	vol->dev.id = DEVICE_ID_SINGLE;
+	vol->dev.parent = &ubi->dev;
+	register_device(&vol->dev);
+
 	/* Register character device for the volume */
 	err = ubi_volume_cdev_add(ubi, vol);
 	if (err) {
@@ -190,6 +195,7 @@ out_sysfs:
 out_mapping:
 	if (do_free)
 		kfree(vol->eba_tbl);
+	unregister_device(&vol->dev);
 out_acc:
 	ubi->rsvd_pebs -= vol->reserved_pebs;
 	ubi->avail_pebs += vol->reserved_pebs;
@@ -427,6 +433,11 @@ int ubi_add_volume(struct ubi_device *ubi, struct ubi_volume *vol)
 
 	dbg_gen("add volume");
 
+	sprintf(vol->dev.name, "%s.%s", dev_name(&ubi->dev), vol->name);
+	vol->dev.id = DEVICE_ID_SINGLE;
+	vol->dev.parent = &ubi->dev;
+	register_device(&vol->dev);
+
 	/* Register character device for the volume */
 	err = ubi_volume_cdev_add(ubi, vol);
 	if (err) {
@@ -454,6 +465,7 @@ void ubi_free_volume(struct ubi_device *ubi, struct ubi_volume *vol)
 	dbg_gen("free volume %d", vol->vol_id);
 
 	ubi->volumes[vol->vol_id] = NULL;
+	unregister_device(&vol->dev);
 	devfs_remove(&vol->cdev);
 }
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
