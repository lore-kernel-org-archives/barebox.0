Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSq-0005Ut-Pb
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:56 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 926B8A00D45
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:59 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:49 +0200
Message-Id: <1535545212-18871-34-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
References: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 33/56] UBI: hide EBA internals
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

Create a private ubi_eba_table struct to hide EBA internals and provide
helpers to allocate, destroy, copy and assing an EBA table to a volume.

Now that external EBA users are using helpers to query/modify the EBA
state we can safely change the internal representation, which will be
needed to support the LEB consolidation concept.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fix conflicts]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/build.c |   2 +-
 drivers/mtd/ubi/eba.c   | 166 ++++++++++++++++++++++++++++++++++++++++--------
 drivers/mtd/ubi/ubi.h   |   8 ++-
 drivers/mtd/ubi/vmt.c   |  38 +++++------
 4 files changed, 164 insertions(+), 50 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index ae6181e9d162..13f39b39c8fb 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -218,7 +218,7 @@ void ubi_free_internal_volumes(struct ubi_device *ubi)
 
 	for (i = ubi->vtbl_slots;
 	     i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++) {
-		kfree(ubi->volumes[i]->eba_tbl);
+		ubi_eba_replace_table(ubi->volumes[i], NULL);
 		kfree(ubi->volumes[i]);
 	}
 }
diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index 11b85f4a6b03..652474b4ba45 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -44,6 +44,30 @@
 #define EBA_RESERVED_PEBS 1
 
 /**
+ * struct ubi_eba_entry - structure encoding a single LEB -> PEB association
+ * @pnum: the physical eraseblock number attached to the LEB
+ *
+ * This structure is encoding a LEB -> PEB association. Note that the LEB
+ * number is not stored here, because it is the index used to access the
+ * entries table.
+ */
+struct ubi_eba_entry {
+	int pnum;
+};
+
+/**
+ * struct ubi_eba_table - LEB -> PEB association information
+ * @entries: the LEB to PEB mapping (one entry per LEB).
+ *
+ * This structure is private to the EBA logic and should be kept here.
+ * It is encoding the LEB to PEB association table, and is subject to
+ * changes.
+ */
+struct ubi_eba_table {
+	struct ubi_eba_entry *entries;
+};
+
+/**
  * next_sqnum - get next sequence number.
  * @ubi: UBI device description object
  *
@@ -89,7 +113,94 @@ void ubi_eba_get_ldesc(struct ubi_volume *vol, int lnum,
 		       struct ubi_eba_leb_desc *ldesc)
 {
 	ldesc->lnum = lnum;
-	ldesc->pnum = vol->eba_tbl[lnum];
+	ldesc->pnum = vol->eba_tbl->entries[lnum].pnum;
+}
+
+/**
+ * ubi_eba_create_table - allocate a new EBA table and initialize it with all
+ *			  LEBs unmapped
+ * @vol: volume containing the EBA table to copy
+ * @nentries: number of entries in the table
+ *
+ * Allocate a new EBA table and initialize it with all LEBs unmapped.
+ * Returns a valid pointer if it succeed, an ERR_PTR() otherwise.
+ */
+struct ubi_eba_table *ubi_eba_create_table(struct ubi_volume *vol,
+					   int nentries)
+{
+	struct ubi_eba_table *tbl;
+	int err = -ENOMEM;
+	int i;
+
+	tbl = kzalloc(sizeof(*tbl), GFP_KERNEL);
+	if (!tbl)
+		return ERR_PTR(-ENOMEM);
+
+	tbl->entries = kzalloc(nentries * sizeof(*tbl->entries),
+				     GFP_KERNEL);
+	if (!tbl->entries)
+		goto err;
+
+	for (i = 0; i < nentries; i++)
+		tbl->entries[i].pnum = UBI_LEB_UNMAPPED;
+
+	return tbl;
+
+err:
+	kfree(tbl->entries);
+	kfree(tbl);
+
+	return ERR_PTR(err);
+}
+
+/**
+ * ubi_eba_destroy_table - destroy an EBA table
+ * @tbl: the table to destroy
+ *
+ * Destroy an EBA table.
+ */
+void ubi_eba_destroy_table(struct ubi_eba_table *tbl)
+{
+	if (!tbl)
+		return;
+
+	kfree(tbl->entries);
+	kfree(tbl);
+}
+
+/**
+ * ubi_eba_copy_table - copy the EBA table attached to vol into another table
+ * @vol: volume containing the EBA table to copy
+ * @dst: destination
+ * @nentries: number of entries to copy
+ *
+ * Copy the EBA table stored in vol into the one pointed by dst.
+ */
+void ubi_eba_copy_table(struct ubi_volume *vol, struct ubi_eba_table *dst,
+			int nentries)
+{
+	struct ubi_eba_table *src;
+	int i;
+
+	ubi_assert(dst && vol && vol->eba_tbl);
+
+	src = vol->eba_tbl;
+
+	for (i = 0; i < nentries; i++)
+		dst->entries[i].pnum = src->entries[i].pnum;
+}
+
+/**
+ * ubi_eba_replace_table - assign a new EBA table to a volume
+ * @vol: volume containing the EBA table to copy
+ * @tbl: new EBA table
+ *
+ * Assign a new EBA table to the volume and release the old one.
+ */
+void ubi_eba_replace_table(struct ubi_volume *vol, struct ubi_eba_table *tbl)
+{
+	ubi_eba_destroy_table(vol->eba_tbl);
+	vol->eba_tbl = tbl;
 }
 
 /**
@@ -305,7 +416,7 @@ static void leb_write_unlock(struct ubi_device *ubi, int vol_id, int lnum)
  */
 bool ubi_eba_is_mapped(struct ubi_volume *vol, int lnum)
 {
-	return vol->eba_tbl[lnum] >= 0;
+	return vol->eba_tbl->entries[lnum].pnum >= 0;
 }
 
 /**
@@ -330,14 +441,14 @@ int ubi_eba_unmap_leb(struct ubi_device *ubi, struct ubi_volume *vol,
 	if (err)
 		return err;
 
-	pnum = vol->eba_tbl[lnum];
+	pnum = vol->eba_tbl->entries[lnum].pnum;
 	if (pnum < 0)
 		/* This logical eraseblock is already unmapped */
 		goto out_unlock;
 
 	dbg_eba("erase LEB %d:%d, PEB %d", vol_id, lnum, pnum);
 
-	vol->eba_tbl[lnum] = UBI_LEB_UNMAPPED;
+	vol->eba_tbl->entries[lnum].pnum = UBI_LEB_UNMAPPED;
 	err = ubi_wl_put_peb(ubi, vol_id, lnum, pnum, 0);
 
 out_unlock:
@@ -375,7 +486,7 @@ int ubi_eba_read_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
 	if (err)
 		return err;
 
-	pnum = vol->eba_tbl[lnum];
+	pnum = vol->eba_tbl->entries[lnum].pnum;
 	if (pnum < 0) {
 		/*
 		 * The logical eraseblock is not mapped, fill the whole buffer
@@ -566,7 +677,7 @@ static int try_recover_peb(struct ubi_volume *vol, int pnum, int lnum,
 
 out_unlock:
 	if (!err)
-		vol->eba_tbl[lnum] = new_pnum;
+		vol->eba_tbl->entries[lnum].pnum = new_pnum;
 
 out_put:
 
@@ -656,7 +767,7 @@ static int try_write_vid_and_data(struct ubi_volume *vol, int lnum,
 		goto out_put;
 	}
 
-	opnum = vol->eba_tbl[lnum];
+	opnum = vol->eba_tbl->entries[lnum].pnum;
 
 	dbg_eba("write VID hdr and %d bytes at offset %d of LEB %d:%d, PEB %d",
 		len, offset, vol_id, lnum, pnum);
@@ -678,7 +789,7 @@ static int try_write_vid_and_data(struct ubi_volume *vol, int lnum,
 		}
 	}
 
-	vol->eba_tbl[lnum] = pnum;
+	vol->eba_tbl->entries[lnum].pnum = pnum;
 
 out_put:
 	if (err && pnum >= 0)
@@ -717,7 +828,7 @@ int ubi_eba_write_leb(struct ubi_device *ubi, struct ubi_volume *vol, int lnum,
 	if (err)
 		return err;
 
-	pnum = vol->eba_tbl[lnum];
+	pnum = vol->eba_tbl->entries[lnum].pnum;
 	if (pnum >= 0) {
 		dbg_eba("write %d bytes at offset %d of LEB %d:%d, PEB %d",
 			len, offset, vol_id, lnum, pnum);
@@ -835,7 +946,7 @@ int ubi_eba_write_leb_st(struct ubi_device *ubi, struct ubi_volume *vol,
 	vid_hdr->used_ebs = cpu_to_be32(used_ebs);
 	vid_hdr->data_crc = cpu_to_be32(crc);
 
-	ubi_assert(vol->eba_tbl[lnum] < 0);
+	ubi_assert(vol->eba_tbl->entries[lnum].pnum < 0);
 
 	for (tries = 0; tries <= UBI_IO_RETRIES; tries++) {
 		err = try_write_vid_and_data(vol, lnum, vid_hdr, buf, 0, len);
@@ -1041,9 +1152,9 @@ int ubi_eba_copy_leb(struct ubi_device *ubi, int from, int to,
 	 * probably waiting on @ubi->move_mutex. No need to continue the work,
 	 * cancel it.
 	 */
-	if (vol->eba_tbl[lnum] != from) {
+	if (vol->eba_tbl->entries[lnum].pnum != from) {
 		dbg_wl("LEB %d:%d is no longer mapped to PEB %d, mapped to PEB %d, cancel",
-		       vol_id, lnum, from, vol->eba_tbl[lnum]);
+		       vol_id, lnum, from, vol->eba_tbl->entries[lnum].pnum);
 		err = MOVE_CANCEL_RACE;
 		goto out_unlock_leb;
 	}
@@ -1121,8 +1232,8 @@ int ubi_eba_copy_leb(struct ubi_device *ubi, int from, int to,
 		}
 	}
 
-	ubi_assert(vol->eba_tbl[lnum] == from);
-	vol->eba_tbl[lnum] = to;
+	ubi_assert(vol->eba_tbl->entries[lnum].pnum == from);
+	vol->eba_tbl->entries[lnum].pnum = to;
 
 out_unlock_buf:
 out_unlock_leb:
@@ -1277,7 +1388,7 @@ out_free:
  */
 int ubi_eba_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 {
-	int i, j, err, num_volumes;
+	int i, err, num_volumes;
 	struct ubi_ainf_volume *av;
 	struct ubi_volume *vol;
 	struct ubi_ainf_peb *aeb;
@@ -1291,33 +1402,37 @@ int ubi_eba_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 	num_volumes = ubi->vtbl_slots + UBI_INT_VOL_COUNT;
 
 	for (i = 0; i < num_volumes; i++) {
+		struct ubi_eba_table *tbl;
+
 		vol = ubi->volumes[i];
 		if (!vol)
 			continue;
 
-		vol->eba_tbl = kmalloc(vol->reserved_pebs * sizeof(int),
-				       GFP_KERNEL);
-		if (!vol->eba_tbl) {
-			err = -ENOMEM;
+		tbl = ubi_eba_create_table(vol, vol->reserved_pebs);
+		if (IS_ERR(tbl)) {
+			err = PTR_ERR(tbl);
 			goto out_free;
 		}
 
-		for (j = 0; j < vol->reserved_pebs; j++)
-			vol->eba_tbl[j] = UBI_LEB_UNMAPPED;
+		ubi_eba_replace_table(vol, tbl);
 
 		av = ubi_find_av(ai, idx2vol_id(ubi, i));
 		if (!av)
 			continue;
 
 		ubi_rb_for_each_entry(rb, aeb, &av->root, u.rb) {
-			if (aeb->lnum >= vol->reserved_pebs)
+			if (aeb->lnum >= vol->reserved_pebs) {
 				/*
 				 * This may happen in case of an unclean reboot
 				 * during re-size.
 				 */
 				ubi_move_aeb_to_list(av, aeb, &ai->erase);
-			else
-				vol->eba_tbl[aeb->lnum] = aeb->pnum;
+			} else {
+				struct ubi_eba_entry *entry;
+
+				entry = &vol->eba_tbl->entries[aeb->lnum];
+				entry->pnum = aeb->pnum;
+			}
 		}
 	}
 
@@ -1354,8 +1469,7 @@ out_free:
 	for (i = 0; i < num_volumes; i++) {
 		if (!ubi->volumes[i])
 			continue;
-		kfree(ubi->volumes[i]->eba_tbl);
-		ubi->volumes[i]->eba_tbl = NULL;
+		ubi_eba_replace_table(ubi->volumes[i], NULL);
 	}
 	return err;
 }
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 0d2c5e8f2244..c61b2d9d0a28 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -329,7 +329,7 @@ struct ubi_volume {
 	long long upd_received;
 	void *upd_buf;
 
-	int *eba_tbl;
+	struct ubi_eba_table *eba_tbl;
 	unsigned int checked:1;
 	unsigned int corrupted:1;
 	unsigned int upd_marker:1;
@@ -799,6 +799,12 @@ static inline bool ubi_leb_valid(struct ubi_volume *vol, int lnum)
 }
 
 /* eba.c */
+struct ubi_eba_table *ubi_eba_create_table(struct ubi_volume *vol,
+					   int nentries);
+void ubi_eba_destroy_table(struct ubi_eba_table *tbl);
+void ubi_eba_copy_table(struct ubi_volume *vol, struct ubi_eba_table *dst,
+			int nentries);
+void ubi_eba_replace_table(struct ubi_volume *vol, struct ubi_eba_table *tbl);
 void ubi_eba_get_ldesc(struct ubi_volume *vol, int lnum,
 		       struct ubi_eba_leb_desc *ldesc);
 bool ubi_eba_is_mapped(struct ubi_volume *vol, int lnum);
diff --git a/drivers/mtd/ubi/vmt.c b/drivers/mtd/ubi/vmt.c
index 05a61fccefc6..61770482149e 100644
--- a/drivers/mtd/ubi/vmt.c
+++ b/drivers/mtd/ubi/vmt.c
@@ -41,6 +41,7 @@ int ubi_create_volume(struct ubi_device *ubi, struct ubi_mkvol_req *req)
 	int i, err, vol_id = req->vol_id, do_free = 1;
 	struct ubi_volume *vol;
 	struct ubi_vtbl_record vtbl_rec;
+	struct ubi_eba_table *eba_tbl = NULL;
 
 	if (ubi->ro_mode)
 		return -EROFS;
@@ -121,14 +122,13 @@ int ubi_create_volume(struct ubi_device *ubi, struct ubi_mkvol_req *req)
 	if (err)
 		goto out_acc;
 
-	vol->eba_tbl = kmalloc(vol->reserved_pebs * sizeof(int), GFP_KERNEL);
-	if (!vol->eba_tbl) {
-		err = -ENOMEM;
+	eba_tbl = ubi_eba_create_table(vol, vol->reserved_pebs);
+	if (IS_ERR(eba_tbl)) {
+		err = PTR_ERR(eba_tbl);
 		goto out_acc;
 	}
 
-	for (i = 0; i < vol->reserved_pebs; i++)
-		vol->eba_tbl[i] = UBI_LEB_UNMAPPED;
+	ubi_eba_replace_table(vol, eba_tbl);
 
 	if (vol->vol_type == UBI_DYNAMIC_VOLUME) {
 		vol->used_ebs = vol->reserved_pebs;
@@ -194,7 +194,7 @@ out_sysfs:
 	do_free = 0;
 out_mapping:
 	if (do_free)
-		kfree(vol->eba_tbl);
+		ubi_eba_destroy_table(eba_tbl);
 	unregister_device(&vol->dev);
 out_acc:
 	ubi->rsvd_pebs -= vol->reserved_pebs;
@@ -284,10 +284,11 @@ out_unlock:
  */
 int ubi_resize_volume(struct ubi_volume_desc *desc, int reserved_pebs)
 {
-	int i, err, pebs, *new_mapping;
+	int i, err, pebs;
 	struct ubi_volume *vol = desc->vol;
 	struct ubi_device *ubi = vol->ubi;
 	struct ubi_vtbl_record vtbl_rec;
+	struct ubi_eba_table *new_eba_tbl = NULL;
 	int vol_id = vol->vol_id;
 
 	if (ubi->ro_mode)
@@ -307,12 +308,9 @@ int ubi_resize_volume(struct ubi_volume_desc *desc, int reserved_pebs)
 	if (reserved_pebs == vol->reserved_pebs)
 		return 0;
 
-	new_mapping = kmalloc(reserved_pebs * sizeof(int), GFP_KERNEL);
-	if (!new_mapping)
-		return -ENOMEM;
-
-	for (i = 0; i < reserved_pebs; i++)
-		new_mapping[i] = UBI_LEB_UNMAPPED;
+	new_eba_tbl = ubi_eba_create_table(vol, reserved_pebs);
+	if (IS_ERR(new_eba_tbl))
+		return PTR_ERR(new_eba_tbl);
 
 	if (vol->ref_count > 1) {
 		err = -EBUSY;
@@ -333,10 +331,8 @@ int ubi_resize_volume(struct ubi_volume_desc *desc, int reserved_pebs)
 		}
 		ubi->avail_pebs -= pebs;
 		ubi->rsvd_pebs += pebs;
-		for (i = 0; i < vol->reserved_pebs; i++)
-			new_mapping[i] = vol->eba_tbl[i];
-		kfree(vol->eba_tbl);
-		vol->eba_tbl = new_mapping;
+		ubi_eba_copy_table(vol, new_eba_tbl, vol->reserved_pebs);
+		ubi_eba_replace_table(vol, new_eba_tbl);
 	}
 
 	if (pebs < 0) {
@@ -348,10 +344,8 @@ int ubi_resize_volume(struct ubi_volume_desc *desc, int reserved_pebs)
 		ubi->rsvd_pebs += pebs;
 		ubi->avail_pebs -= pebs;
 		ubi_update_reserved(ubi);
-		for (i = 0; i < reserved_pebs; i++)
-			new_mapping[i] = vol->eba_tbl[i];
-		kfree(vol->eba_tbl);
-		vol->eba_tbl = new_mapping;
+		ubi_eba_copy_table(vol, new_eba_tbl, reserved_pebs);
+		ubi_eba_replace_table(vol, new_eba_tbl);
 	}
 
 	/*
@@ -390,7 +384,7 @@ out_acc:
 		ubi->avail_pebs += pebs;
 	}
 out_free:
-	kfree(new_mapping);
+	kfree(new_eba_tbl);
 	return err;
 }
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
