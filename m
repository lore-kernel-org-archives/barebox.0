Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-11.arcor-online.net ([151.189.21.51])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bnMSt-000715-4q
 for barebox@lists.infradead.org; Fri, 23 Sep 2016 09:08:16 +0000
Received: from mail-in-05-z2.arcor-online.net (mail-in-05-z2.arcor-online.net
 [151.189.8.17])
 by mx.arcor.de (Postfix) with ESMTP id 3sgSF42SZBz3203
 for <barebox@lists.infradead.org>; Fri, 23 Sep 2016 11:07:52 +0200 (CEST)
From: Giorgio Dal Molin <iw3gtf@arcor.de>
Date: Fri, 23 Sep 2016 11:07:38 +0200
Message-Id: <20160923090739.25517-2-iw3gtf@arcor.de>
In-Reply-To: <20160923090739.25517-1-iw3gtf@arcor.de>
References: <20160923090739.25517-1-iw3gtf@arcor.de>
In-Reply-To: <20160922080408.rpqeithibjfga2rm@pengutronix.de>
References: <20160922080408.rpqeithibjfga2rm@pengutronix.de>
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
Subject: [PATCH 1/2] mtd: ubi: add API call to rename volumes.
To: barebox@lists.infradead.org
Cc: Giorgio Dal Molin <iw3gtf@arcor.de>

Signed-off-by: Giorgio Dal Molin <iw3gtf@arcor.de>
---
 drivers/mtd/ubi/barebox.c | 156 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/ubi/vmt.c     |   3 +
 include/linux/mtd/ubi.h   |   1 +
 3 files changed, 160 insertions(+)

diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index 23c4bfd..329cf45 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -280,6 +280,162 @@ int ubi_api_remove_volume(struct ubi_volume_desc *desc, int no_vtbl)
 	return ubi_remove_volume(desc, no_vtbl);
 }
 
+int ubi_api_rename_volumes(int ubi_num, struct ubi_rnvol_req *req)
+{
+	int i, n, err;
+	struct list_head rename_list;
+	struct ubi_rename_entry *re, *re1;
+	struct ubi_device *ubi;
+
+	if (req->count < 0 || req->count > UBI_MAX_RNVOL)
+		return -EINVAL;
+
+	if (req->count == 0)
+		return 0;
+
+	ubi = ubi_get_device(ubi_num);
+	if (!ubi)
+		return -ENODEV;
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
 static int ubi_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
 {
 	struct ubi_device *ubi = cdev->priv;
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
diff --git a/include/linux/mtd/ubi.h b/include/linux/mtd/ubi.h
index c72f95b..c215ff2 100644
--- a/include/linux/mtd/ubi.h
+++ b/include/linux/mtd/ubi.h
@@ -220,6 +220,7 @@ int ubi_flush(int ubi_num, int vol_id, int lnum);
 
 int ubi_api_create_volume(int ubi_num, struct ubi_mkvol_req *req);
 int ubi_api_remove_volume(struct ubi_volume_desc *desc, int no_vtbl);
+int ubi_api_rename_volumes(int ubi_num, struct ubi_rnvol_req *req);
 
 /*
  * This function is the same as the 'ubi_leb_read()' function, but it does not
-- 
2.10.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
