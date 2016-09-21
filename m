Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-11.arcor-online.net ([151.189.21.51])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmcXY-0000bG-9S
 for barebox@lists.infradead.org; Wed, 21 Sep 2016 08:06:02 +0000
From: Giorgio Dal Molin <iw3gtf@arcor.de>
Date: Wed, 21 Sep 2016 10:04:42 +0200
Message-Id: <20160921080443.21522-2-iw3gtf@arcor.de>
In-Reply-To: <20160921080443.21522-1-iw3gtf@arcor.de>
References: <20160921080443.21522-1-iw3gtf@arcor.de>
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
Subject: [PATCH 1/2] mtd: UBI: add support (ioctl) for renaming ubi volumes.
To: barebox@lists.infradead.org
Cc: Giorgio Dal Molin <giorgio.dal.molin@mobotix.com>, Giorgio Dal Molin <iw3gtf@arcor.de>

From: Giorgio Dal Molin <giorgio.dal.molin@mobotix.com>

The actual implementation was taken from the current linux kernel v4.7.4.

Signed-off-by: Giorgio Dal Molin <iw3gtf@arcor.de>
---
 drivers/mtd/ubi/barebox.c | 182 ++++++++++++++++++++++++++++++++++++++++++++--
 drivers/mtd/ubi/vmt.c     |   3 +
 2 files changed, 180 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index fc60aae..6d3bdaf 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -203,6 +203,168 @@ static int ubi_volume_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
 	return err;
 }
 
+/**
+ * rename_volumes - rename UBI volumes.
+ * @ubi: UBI device description object
+ * @req: volumes re-name request
+ *
+ * This is a helper function for the volume re-name IOCTL which validates the
+ * the request, opens the volume and calls corresponding volumes management
+ * function. Returns zero in case of success and a negative error code in case
+ * of failure.
+ */
+static int rename_volumes(struct ubi_device *ubi,
+			  struct ubi_rnvol_req *req)
+{
+	int i, n, err;
+	struct list_head rename_list;
+	struct ubi_rename_entry *re, *re1;
+
+	if (req->count < 0 || req->count > UBI_MAX_RNVOL)
+		return -EINVAL;
+
+	if (req->count == 0)
+		return 0;
+
+	/* Validate volume IDs and names in the request */
+	for (i = 0; i < req->count; i++) {
+		if (req->ents[i].vol_id < 0 ||
+		    req->ents[i].vol_id >= ubi->vtbl_slots)
+			return -EINVAL;
+		if (req->ents[i].name_len < 0)
+			return -EINVAL;
+		if (req->ents[i].name_len > UBI_VOL_NAME_MAX)
+			return -ENAMETOOLONG;
+		req->ents[i].name[req->ents[i].name_len] = '\0';
+		n = strlen(req->ents[i].name);
+		if (n != req->ents[i].name_len)
+			return -EINVAL;
+	}
+
+	/* Make sure volume IDs and names are unique */
+	for (i = 0; i < req->count - 1; i++) {
+		for (n = i + 1; n < req->count; n++) {
+			if (req->ents[i].vol_id == req->ents[n].vol_id) {
+				ubi_err(ubi, "duplicated volume id %d",
+					req->ents[i].vol_id);
+				return -EINVAL;
+			}
+			if (!strcmp(req->ents[i].name, req->ents[n].name)) {
+				ubi_err(ubi, "duplicated volume name \"%s\"",
+					req->ents[i].name);
+				return -EINVAL;
+			}
+		}
+	}
+
+	/* Create the re-name list */
+	INIT_LIST_HEAD(&rename_list);
+	for (i = 0; i < req->count; i++) {
+		int vol_id = req->ents[i].vol_id;
+		int name_len = req->ents[i].name_len;
+		const char *name = req->ents[i].name;
+
+		re = kzalloc(sizeof(struct ubi_rename_entry), GFP_KERNEL);
+		if (!re) {
+			err = -ENOMEM;
+			goto out_free;
+		}
+
+		re->desc = ubi_open_volume(ubi->ubi_num, vol_id, UBI_READONLY);
+		if (IS_ERR(re->desc)) {
+			err = PTR_ERR(re->desc);
+			ubi_err(ubi, "cannot open volume %d, error %d",
+				vol_id, err);
+			kfree(re);
+			goto out_free;
+		}
+
+		/* Skip this re-naming if the name does not really change */
+		if (re->desc->vol->name_len == name_len &&
+		    !memcmp(re->desc->vol->name, name, name_len)) {
+			ubi_close_volume(re->desc);
+			kfree(re);
+			continue;
+		}
+
+		re->new_name_len = name_len;
+		memcpy(re->new_name, name, name_len);
+		list_add_tail(&re->list, &rename_list);
+		dbg_gen("will rename volume %d from \"%s\" to \"%s\"",
+			vol_id, re->desc->vol->name, name);
+	}
+
+	if (list_empty(&rename_list))
+		return 0;
+
+	/* Find out the volumes which have to be removed */
+	list_for_each_entry(re, &rename_list, list) {
+		struct ubi_volume_desc *desc;
+		int no_remove_needed = 0;
+
+		/*
+		 * Volume @re->vol_id is going to be re-named to
+		 * @re->new_name, while its current name is @name. If a volume
+		 * with name @re->new_name currently exists, it has to be
+		 * removed, unless it is also re-named in the request (@req).
+		 */
+		list_for_each_entry(re1, &rename_list, list) {
+			if (re->new_name_len == re1->desc->vol->name_len &&
+			    !memcmp(re->new_name, re1->desc->vol->name,
+				    re1->desc->vol->name_len)) {
+				no_remove_needed = 1;
+				break;
+			}
+		}
+
+		if (no_remove_needed)
+			continue;
+
+		/*
+		 * It seems we need to remove volume with name @re->new_name,
+		 * if it exists.
+		 */
+		desc = ubi_open_volume_nm(ubi->ubi_num, re->new_name,
+					  UBI_EXCLUSIVE);
+		if (IS_ERR(desc)) {
+			err = PTR_ERR(desc);
+			if (err == -ENODEV)
+				/* Re-naming into a non-existing volume name */
+				continue;
+
+			/* The volume exists but busy, or an error occurred */
+			ubi_err(ubi, "cannot open volume \"%s\", error %d",
+				re->new_name, err);
+			goto out_free;
+		}
+
+		re1 = kzalloc(sizeof(struct ubi_rename_entry), GFP_KERNEL);
+		if (!re1) {
+			err = -ENOMEM;
+			ubi_close_volume(desc);
+			goto out_free;
+		}
+
+		re1->remove = 1;
+		re1->desc = desc;
+		list_add(&re1->list, &rename_list);
+		dbg_gen("will remove volume %d, name \"%s\"",
+			re1->desc->vol->vol_id, re1->desc->vol->name);
+	}
+
+	mutex_lock(&ubi->device_mutex);
+	err = ubi_rename_volumes(ubi, &rename_list);
+	mutex_unlock(&ubi->device_mutex);
+
+out_free:
+	list_for_each_entry_safe(re, re1, &rename_list, list) {
+		ubi_close_volume(re->desc);
+		list_del(&re->list);
+		kfree(re);
+	}
+	return err;
+}
+
 static struct file_operations ubi_volume_fops = {
 	.open	= ubi_volume_cdev_open,
 	.close	= ubi_volume_cdev_close,
@@ -261,10 +423,11 @@ static int ubi_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
 {
 	struct ubi_volume_desc *desc;
 	struct ubi_device *ubi = cdev->priv;
-	struct ubi_mkvol_req *req = buf;
 
 	switch (cmd) {
-	case UBI_IOCRMVOL:
+	case UBI_IOCRMVOL: {
+		struct ubi_mkvol_req *req = buf;
+
 		desc = ubi_open_volume_nm(ubi->ubi_num, req->name,
                                            UBI_EXCLUSIVE);
 		if (IS_ERR(desc))
@@ -272,13 +435,22 @@ static int ubi_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
 		ubi_remove_volume(desc, 0);
 		ubi_close_volume(desc);
 		break;
-	case UBI_IOCMKVOL:
+	}
+	case UBI_IOCMKVOL: {
+		struct ubi_mkvol_req *req = buf;
+
 		if (!req->bytes)
 			req->bytes = (__s64)ubi->avail_pebs * ubi->leb_size;
 		return ubi_create_volume(ubi, req);
-	};
+	}
+	case UBI_IOCRNVOL: {
+		struct ubi_rnvol_req *req = buf;
 
-	return 0;
+		return rename_volumes(ubi, req);
+	}
+	default:
+		return -ENOTTY;
+	};
 }
 
 static struct file_operations ubi_fops = {
diff --git a/drivers/mtd/ubi/vmt.c b/drivers/mtd/ubi/vmt.c
index 41b814c..ed04364 100644
--- a/drivers/mtd/ubi/vmt.c
+++ b/drivers/mtd/ubi/vmt.c
@@ -411,6 +411,9 @@ int ubi_rename_volumes(struct ubi_device *ubi, struct list_head *rename_list)
 
 			vol->name_len = re->new_name_len;
 			memcpy(vol->name, re->new_name, re->new_name_len + 1);
+			free(vol->cdev.name);
+			vol->cdev.name = basprintf("%s.%s", ubi->cdev.name, vol->name);
+			vol->cdev.size = vol->used_bytes;
 			ubi_volume_notify(ubi, vol, UBI_VOLUME_RENAMED);
 		}
 	}
-- 
2.10.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
