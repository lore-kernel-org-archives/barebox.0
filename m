Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSu-0005dH-Qk
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:04 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BCE96A00CC8
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:57 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:42 +0200
Message-Id: <1535545212-18871-27-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 26/56] UBI: provide helpers to allocate and free aeb elements
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

This not only hides the aeb allocation internals (which is always good in
case we ever want to change the allocation system), but also helps us
factorize the initialization of some common fields (ec and pnum).

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fixed kzalloc/free conflicts]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/attach.c  | 69 ++++++++++++++++++++++++++++++++++-------------
 drivers/mtd/ubi/fastmap.c | 29 +++++++++-----------
 drivers/mtd/ubi/ubi.h     |  3 +++
 drivers/mtd/ubi/vtbl.c    |  3 ++-
 4 files changed, 69 insertions(+), 35 deletions(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index f42c33a10fef..2b1271218804 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -176,6 +176,47 @@ static struct ubi_ainf_volume *ubi_find_or_add_av(struct ubi_attach_info *ai,
 }
 
 /**
+ * ubi_alloc_aeb - allocate an aeb element
+ * @ai: attaching information
+ * @pnum: physical eraseblock number
+ * @ec: erase counter of the physical eraseblock
+ *
+ * Allocate an aeb object and initialize the pnum and ec information.
+ * vol_id and lnum are set to UBI_UNKNOWN, and the other fields are
+ * initialized to zero.
+ * Note that the element is not added in any list or RB tree.
+ */
+struct ubi_ainf_peb *ubi_alloc_aeb(struct ubi_attach_info *ai, int pnum,
+				   int ec)
+{
+	struct ubi_ainf_peb *aeb;
+
+	aeb = kzalloc(sizeof(*aeb), GFP_KERNEL);
+	if (!aeb)
+		return NULL;
+
+	aeb->pnum = pnum;
+	aeb->ec = ec;
+	aeb->vol_id = UBI_UNKNOWN;
+	aeb->lnum = UBI_UNKNOWN;
+
+	return aeb;
+}
+
+/**
+ * ubi_free_aeb - free an aeb element
+ * @ai: attaching information
+ * @aeb: the element to free
+ *
+ * Free an aeb object. The caller must have removed the element from any list
+ * or RB tree.
+ */
+void ubi_free_aeb(struct ubi_attach_info *ai, struct ubi_ainf_peb *aeb)
+{
+	kfree(aeb);
+}
+
+/**
  * add_to_list - add physical eraseblock to a list.
  * @ai: attaching information
  * @pnum: physical eraseblock number to add
@@ -211,14 +252,12 @@ static int add_to_list(struct ubi_attach_info *ai, int pnum, int vol_id,
 	} else
 		BUG();
 
-	aeb = kzalloc(sizeof(*aeb), GFP_KERNEL);
+	aeb = ubi_alloc_aeb(ai, pnum, ec);
 	if (!aeb)
 		return -ENOMEM;
 
-	aeb->pnum = pnum;
 	aeb->vol_id = vol_id;
 	aeb->lnum = lnum;
-	aeb->ec = ec;
 	if (to_head)
 		list_add(&aeb->u.list, list);
 	else
@@ -243,13 +282,11 @@ static int add_corrupted(struct ubi_attach_info *ai, int pnum, int ec)
 
 	dbg_bld("add to corrupted: PEB %d, EC %d", pnum, ec);
 
-	aeb = kzalloc(sizeof(aeb), GFP_KERNEL);
+	aeb = ubi_alloc_aeb(ai, pnum, ec);
 	if (!aeb)
 		return -ENOMEM;
 
 	ai->corr_peb_count += 1;
-	aeb->pnum = pnum;
-	aeb->ec = ec;
 	list_add(&aeb->u.list, &ai->corr);
 	return 0;
 }
@@ -272,14 +309,12 @@ static int add_fastmap(struct ubi_attach_info *ai, int pnum,
 {
 	struct ubi_ainf_peb *aeb;
 
-	aeb = kmalloc(sizeof(*aeb), GFP_KERNEL);
+	aeb = ubi_alloc_aeb(ai, pnum, ec);
 	if (!aeb)
 		return -ENOMEM;
 
-	aeb->pnum = pnum;
 	aeb->vol_id = be32_to_cpu(vid_hdr->vol_id);
 	aeb->sqnum = be64_to_cpu(vid_hdr->sqnum);
-	aeb->ec = ec;
 	list_add(&aeb->u.list, &ai->fastmap);
 
 	dbg_bld("add to fastmap list: PEB %d, vol_id %d, sqnum: %llu", pnum,
@@ -658,12 +693,10 @@ int ubi_add_to_av(struct ubi_device *ubi, struct ubi_attach_info *ai, int pnum,
 	if (err)
 		return err;
 
-	aeb = kzalloc(sizeof(*aeb), GFP_KERNEL);
+	aeb = ubi_alloc_aeb(ai, pnum, ec);
 	if (!aeb)
 		return -ENOMEM;
 
-	aeb->ec = ec;
-	aeb->pnum = pnum;
 	aeb->vol_id = vol_id;
 	aeb->lnum = lnum;
 	aeb->scrub = bitflips;
@@ -1267,7 +1300,7 @@ static void destroy_av(struct ubi_attach_info *ai, struct ubi_ainf_volume *av,
 			if (list)
 				list_add_tail(&aeb->u.list, list);
 			else
-				kfree(aeb);
+				ubi_free_aeb(ai, aeb);
 		}
 	}
 	kfree(av);
@@ -1285,23 +1318,23 @@ static void destroy_ai(struct ubi_attach_info *ai)
 
 	list_for_each_entry_safe(aeb, aeb_tmp, &ai->alien, u.list) {
 		list_del(&aeb->u.list);
-		kfree(aeb);
+		ubi_free_aeb(ai, aeb);
 	}
 	list_for_each_entry_safe(aeb, aeb_tmp, &ai->erase, u.list) {
 		list_del(&aeb->u.list);
-		kfree(aeb);
+		ubi_free_aeb(ai, aeb);
 	}
 	list_for_each_entry_safe(aeb, aeb_tmp, &ai->corr, u.list) {
 		list_del(&aeb->u.list);
-		kfree(aeb);
+		ubi_free_aeb(ai, aeb);
 	}
 	list_for_each_entry_safe(aeb, aeb_tmp, &ai->free, u.list) {
 		list_del(&aeb->u.list);
-		kfree(aeb);
+		ubi_free_aeb(ai, aeb);
 	}
 	list_for_each_entry_safe(aeb, aeb_tmp, &ai->fastmap, u.list) {
 		list_del(&aeb->u.list);
-		kfree(aeb);
+		ubi_free_aeb(ai, aeb);
 	}
 
 	/* Destroy the volume RB-tree */
diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 2bf626f8075e..d77592bb19ce 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -79,12 +79,10 @@ static int add_aeb(struct ubi_attach_info *ai, struct list_head *list,
 {
 	struct ubi_ainf_peb *aeb;
 
-	aeb = kzalloc(sizeof(*aeb), GFP_KERNEL);
+	aeb = ubi_alloc_aeb(ai, pnum, ec);
 	if (!aeb)
 		return -ENOMEM;
 
-	aeb->pnum = pnum;
-	aeb->ec = ec;
 	aeb->lnum = -1;
 	aeb->scrub = scrub;
 	aeb->copy_flag = aeb->sqnum = 0;
@@ -210,7 +208,8 @@ static int update_vol(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		 */
 		if (aeb->pnum == new_aeb->pnum) {
 			ubi_assert(aeb->lnum == new_aeb->lnum);
-			kfree(new_aeb);
+
+			ubi_free_aeb(ai, new_aeb);
 
 			return 0;
 		}
@@ -221,12 +220,10 @@ static int update_vol(struct ubi_device *ubi, struct ubi_attach_info *ai,
 
 		/* new_aeb is newer */
 		if (cmp_res & 1) {
-			victim = kzalloc(sizeof(*victim), GFP_KERNEL);
+			victim = ubi_alloc_aeb(ai, aeb->ec, aeb->pnum);
 			if (!victim)
 				return -ENOMEM;
 
-			victim->ec = aeb->ec;
-			victim->pnum = aeb->pnum;
 			list_add_tail(&victim->u.list, &ai->erase);
 
 			if (av->highest_lnum == be32_to_cpu(new_vh->lnum))
@@ -240,7 +237,8 @@ static int update_vol(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			aeb->pnum = new_aeb->pnum;
 			aeb->copy_flag = new_vh->copy_flag;
 			aeb->scrub = new_aeb->scrub;
-			kfree(new_aeb);
+			
+			ubi_free_aeb(ai, new_aeb);
 
 		/* new_aeb is older */
 		} else {
@@ -286,7 +284,7 @@ static int process_pool_aeb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 	struct ubi_ainf_volume *av;
 
 	if (vol_id == UBI_FM_SB_VOLUME_ID || vol_id == UBI_FM_DATA_VOLUME_ID) {
-		kfree(new_aeb);
+		ubi_free_aeb(ai, new_aeb);
 
 		return 0;
 	}
@@ -295,7 +293,7 @@ static int process_pool_aeb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 	av = ubi_find_av(ai, vol_id);
 	if (!av) {
 		ubi_err(ubi, "orphaned volume in fastmap pool!");
-		kfree(new_aeb);
+		ubi_free_aeb(ai, new_aeb);
 		return UBI_BAD_FASTMAP;
 	}
 
@@ -323,7 +321,8 @@ static void unmap_peb(struct ubi_attach_info *ai, int pnum)
 			if (aeb->pnum == pnum) {
 				rb_erase(&aeb->u.rb, &av->root);
 				av->leb_count--;
-				kfree(aeb);
+
+				ubi_free_aeb(ai, aeb);
 				return;
 			}
 		}
@@ -418,14 +417,12 @@ static int scan_pool(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			if (err == UBI_IO_BITFLIPS)
 				scrub = 1;
 
-			new_aeb = kzalloc(sizeof(*new_aeb), GFP_KERNEL);
+			new_aeb = ubi_alloc_aeb(ai, pnum, be64_to_cpu(ech->ec));
 			if (!new_aeb) {
 				ret = -ENOMEM;
 				goto out;
 			}
 
-			new_aeb->ec = be64_to_cpu(ech->ec);
-			new_aeb->pnum = pnum;
 			new_aeb->lnum = be32_to_cpu(vh->lnum);
 			new_aeb->sqnum = be64_to_cpu(vh->sqnum);
 			new_aeb->copy_flag = vh->copy_flag;
@@ -732,11 +729,11 @@ fail_bad:
 fail:
 	list_for_each_entry_safe(tmp_aeb, _tmp_aeb, &used, u.list) {
 		list_del(&tmp_aeb->u.list);
-		free(tmp_aeb);
+		ubi_free_aeb(ai, tmp_aeb);
 	}
 	list_for_each_entry_safe(tmp_aeb, _tmp_aeb, &lfree, u.list) {
 		list_del(&tmp_aeb->u.list);
-		free(tmp_aeb);
+		ubi_free_aeb(ai, tmp_aeb);
 	}
 
 	return ret;
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index eb81298beff3..9539d5676306 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -727,6 +727,9 @@ extern struct class *ubi_class;
 extern struct blocking_notifier_head ubi_notifiers;
 
 /* attach.c */
+struct ubi_ainf_peb *ubi_alloc_aeb(struct ubi_attach_info *ai, int pnum,
+				   int ec);
+void ubi_free_aeb(struct ubi_attach_info *ai, struct ubi_ainf_peb *aeb);
 int ubi_add_to_av(struct ubi_device *ubi, struct ubi_attach_info *ai, int pnum,
 		  int ec, const struct ubi_vid_hdr *vid_hdr, int bitflips);
 struct ubi_ainf_volume *ubi_add_av(struct ubi_attach_info *ai, int vol_id);
diff --git a/drivers/mtd/ubi/vtbl.c b/drivers/mtd/ubi/vtbl.c
index b5eb4545efa1..ea30edef87bf 100644
--- a/drivers/mtd/ubi/vtbl.c
+++ b/drivers/mtd/ubi/vtbl.c
@@ -329,7 +329,7 @@ retry:
 	 * of this LEB as it will be deleted and freed in 'ubi_add_to_av()'.
 	 */
 	err = ubi_add_to_av(ubi, ai, new_aeb->pnum, new_aeb->ec, vid_hdr, 0);
-	kfree(new_aeb);
+	ubi_free_aeb(ai, new_aeb);
 	ubi_free_vid_hdr(ubi, vid_hdr);
 	return err;
 
@@ -343,6 +343,7 @@ write_error:
 		goto retry;
 	}
 	kfree(new_aeb);
+	ubi_free_aeb(ai, new_aeb);
 out_free:
 	ubi_free_vid_hdr(ubi, vid_hdr);
 	return err;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
