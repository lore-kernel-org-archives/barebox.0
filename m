Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1b6CTo-0002mK-F1
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:51 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B81E8A00B2E
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:39 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:22 +0200
Message-Id: <1464335095-35180-30-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
References: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 29/62] UBI: Fastmap: Remove eba_orphans logic
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

This logic is in vain as we treat protected PEBs also as used, so this
case must not happen.
If a PEB is found which is in the EBA table but not known as used
has to be issued as fatal error.

Signed-off-by: Richard Weinberger <richard@nod.at>

Conflicts:
	drivers/mtd/ubi/fastmap.c

Fixed conflicts.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 90 +++++------------------------------------------
 1 file changed, 8 insertions(+), 82 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 4331d3c..f683d42 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -375,7 +375,6 @@ static void unmap_peb(struct ubi_attach_info *ai, int pnum)
  * @pebs: an array of all PEB numbers in the to be scanned pool
  * @pool_size: size of the pool (number of entries in @pebs)
  * @max_sqnum: pointer to the maximal sequence number
- * @eba_orphans: list of PEBs which need to be scanned
  * @free: list of PEBs which are most likely free (and go into @ai->free)
  *
  * Returns 0 on success, if the pool is unusable UBI_BAD_FASTMAP is returned.
@@ -383,12 +382,12 @@ static void unmap_peb(struct ubi_attach_info *ai, int pnum)
  */
 static int scan_pool(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		     int *pebs, int pool_size, unsigned long long *max_sqnum,
-		     struct list_head *eba_orphans, struct list_head *lfree)
+		     struct list_head *lfree)
 {
 	struct ubi_vid_hdr *vh;
 	struct ubi_ec_hdr *ech;
-	struct ubi_ainf_peb *new_aeb, *tmp_aeb;
-	int i, pnum, err, found_orphan, ret = 0;
+	struct ubi_ainf_peb *new_aeb;
+	int i, pnum, err, ret = 0;
 
 	ech = kzalloc(ubi->ec_hdr_alsize, GFP_KERNEL);
 	if (!ech)
@@ -456,18 +455,6 @@ static int scan_pool(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			if (err == UBI_IO_BITFLIPS)
 				scrub = 1;
 
-			found_orphan = 0;
-			list_for_each_entry(tmp_aeb, eba_orphans, u.list) {
-				if (tmp_aeb->pnum == pnum) {
-					found_orphan = 1;
-					break;
-				}
-			}
-			if (found_orphan) {
-				list_del(&tmp_aeb->u.list);
-				kfree(tmp_aeb);
-			}
-
 			new_aeb = kzalloc(sizeof(*new_aeb), GFP_KERNEL);
 			if (!new_aeb) {
 				ret = -ENOMEM;
@@ -541,10 +528,9 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 			      struct ubi_attach_info *ai,
 			      struct ubi_fastmap_layout *fm)
 {
-	struct list_head used, eba_orphans, lfree;
+	struct list_head used, lfree;
 	struct ubi_ainf_volume *av;
 	struct ubi_ainf_peb *aeb, *tmp_aeb, *_tmp_aeb;
-	struct ubi_ec_hdr *ech;
 	struct ubi_fm_sb *fmsb;
 	struct ubi_fm_hdr *fmhdr;
 	struct ubi_fm_scan_pool *fmpl1, *fmpl2;
@@ -558,7 +544,6 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 
 	INIT_LIST_HEAD(&used);
 	INIT_LIST_HEAD(&lfree);
-	INIT_LIST_HEAD(&eba_orphans);
 	INIT_LIST_HEAD(&ai->corr);
 	INIT_LIST_HEAD(&ai->free);
 	INIT_LIST_HEAD(&ai->erase);
@@ -731,27 +716,9 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 				}
 			}
 
-			/* This can happen if a PEB is already in an EBA known
-			 * by this fastmap but the PEB itself is not in the used
-			 * list.
-			 * In this case the PEB can be within the fastmap pool
-			 * or while writing the fastmap it was in the protection
-			 * queue.
-			 */
 			if (!aeb) {
-				aeb = kzalloc(sizeof(*aeb), GFP_KERNEL);
-				if (!aeb) {
-					ret = -ENOMEM;
-
-					goto fail;
-				}
-
-				aeb->lnum = j;
-				aeb->pnum = be32_to_cpu(fm_eba->pnum[j]);
-				aeb->ec = -1;
-				aeb->scrub = aeb->copy_flag = aeb->sqnum = 0;
-				list_add_tail(&aeb->u.list, &eba_orphans);
-				continue;
+				ubi_err(ubi, "PEB %i is in EBA but not in used list", pnum);
+				goto fail_bad;
 			}
 
 			aeb->lnum = j;
@@ -764,49 +731,13 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 			dbg_bld("inserting PEB:%i (LEB %i) to vol %i",
 				aeb->pnum, aeb->lnum, av->vol_id);
 		}
-
-		ech = kzalloc(ubi->ec_hdr_alsize, GFP_KERNEL);
-		if (!ech) {
-			ret = -ENOMEM;
-			goto fail;
-		}
-
-		list_for_each_entry_safe(tmp_aeb, _tmp_aeb, &eba_orphans,
-					 u.list) {
-			int err;
-
-			if (ubi_io_is_bad(ubi, tmp_aeb->pnum)) {
-				ubi_err(ubi, "bad PEB in fastmap EBA orphan list");
-				ret = UBI_BAD_FASTMAP;
-				kfree(ech);
-				goto fail;
-			}
-
-			err = ubi_io_read_ec_hdr(ubi, tmp_aeb->pnum, ech, 0);
-			if (err && err != UBI_IO_BITFLIPS) {
-				ubi_err(ubi, "unable to read EC header! PEB:%i err:%i",
-					tmp_aeb->pnum, err);
-				ret = err > 0 ? UBI_BAD_FASTMAP : err;
-				kfree(ech);
-
-				goto fail;
-			} else if (err == UBI_IO_BITFLIPS)
-				tmp_aeb->scrub = 1;
-
-			tmp_aeb->ec = be64_to_cpu(ech->ec);
-			assign_aeb_to_av(ai, tmp_aeb, av);
-		}
-
-		kfree(ech);
 	}
 
-	ret = scan_pool(ubi, ai, fmpl1->pebs, pool_size, &max_sqnum,
-			&eba_orphans, &lfree);
+	ret = scan_pool(ubi, ai, fmpl1->pebs, pool_size, &max_sqnum, &lfree);
 	if (ret)
 		goto fail;
 
-	ret = scan_pool(ubi, ai, fmpl2->pebs, wl_pool_size, &max_sqnum,
-			&eba_orphans, &lfree);
+	ret = scan_pool(ubi, ai, fmpl2->pebs, wl_pool_size, &max_sqnum, &lfree);
 	if (ret)
 		goto fail;
 
@@ -819,7 +750,6 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 	list_for_each_entry_safe(tmp_aeb, _tmp_aeb, &used, u.list)
 		list_move_tail(&tmp_aeb->u.list, &ai->erase);
 
-	ubi_assert(list_empty(&eba_orphans));
 	ubi_assert(list_empty(&lfree));
 
 	/*
@@ -841,10 +771,6 @@ fail:
 		list_del(&tmp_aeb->u.list);
 		free(tmp_aeb);
 	}
-	list_for_each_entry_safe(tmp_aeb, _tmp_aeb, &eba_orphans, u.list) {
-		list_del(&tmp_aeb->u.list);
-		free(tmp_aeb);
-	}
 	list_for_each_entry_safe(tmp_aeb, _tmp_aeb, &lfree, u.list) {
 		list_del(&tmp_aeb->u.list);
 		free(tmp_aeb);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
