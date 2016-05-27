Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CTU-0004yH-13
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:30 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 77FE9A00B39
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:40 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:29 +0200
Message-Id: <1464335095-35180-37-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 36/62] UBI: Fix stale pointers in ubi->lookuptbl
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

In some error paths the WL sub-system gives up on a PEB
and frees it's ubi_wl_entry struct but does not set
the entry in ubi->lookuptbl to NULL.
Fastmap can stumble over such a stale pointer as it uses
ubi->lookuptbl to find all PEBs.

Fix this by introducing a new helper function which free()s
a WL entry and removes the reference from the lookup table.

Signed-off-by: Richard Weinberger <richard@nod.at>

Conflicts:
	drivers/mtd/ubi/wl.c

Fixed minor conflict.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/wl.c | 47 +++++++++++++++++++++++++++++++----------------
 1 file changed, 31 insertions(+), 16 deletions(-)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index d168abc..a7ca153 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -194,6 +194,20 @@ static void wl_tree_add(struct ubi_wl_entry *e, struct rb_root *root)
 	rb_insert_color(&e->u.rb, root);
 }
 
+/**
+ * wl_tree_destroy - destroy a wear-leveling entry.
+ * @ubi: UBI device description object
+ * @e: the wear-leveling entry to add
+ *
+ * This function destroys a wear leveling entry and removes
+ * the reference from the lookup table.
+ */
+static void wl_entry_destroy(struct ubi_device *ubi, struct ubi_wl_entry *e)
+{
+	ubi->lookuptbl[e->pnum] = NULL;
+	kfree(e);
+}
+
 #ifndef CONFIG_MTD_UBI_FASTMAP
 /**
  * do_work - do one pending work.
@@ -1182,7 +1196,7 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 	err = do_sync_erase(ubi, e1, vol_id, lnum, 0);
 	if (err) {
 		if (e2)
-			kfree(e2);
+			wl_entry_destroy(ubi, e2);
 		goto out_ro;
 	}
 
@@ -1244,8 +1258,8 @@ out_error:
 	ubi->move_to_put = ubi->wl_scheduled = 0;
 
 	ubi_free_vid_hdr(ubi, vid_hdr);
-	kfree(e1);
-	kfree(e2);
+	wl_entry_destroy(ubi, e1);
+	wl_entry_destroy(ubi, e2);
 
 out_ro:
 	ubi_ro_mode(ubi);
@@ -1375,7 +1389,7 @@ static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
 	if (shutdown) {
 		dbg_wl("cancel erasure of PEB %d EC %d", pnum, e->ec);
 		kfree(wl_wrk);
-		kfree(e);
+		wl_entry_destroy(ubi, e);
 		return 0;
 	}
 
@@ -1419,7 +1433,7 @@ static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
 		return err;
 	}
 
-	kfree(e);
+	wl_entry_destroy(ubi, e);
 	if (err != -EIO)
 		/*
 		 * If this is not %-EIO, we have no idea what to do. Scheduling
@@ -1662,9 +1676,10 @@ int ubi_wl_flush(struct ubi_device *ubi, int vol_id, int lnum)
 
 /**
  * tree_destroy - destroy an RB-tree.
+ * @ubi: UBI device description object
  * @root: the root of the tree to destroy
  */
-static void tree_destroy(struct rb_root *root)
+static void tree_destroy(struct ubi_device *ubi, struct rb_root *root)
 {
 	struct rb_node *rb;
 	struct ubi_wl_entry *e;
@@ -1686,7 +1701,7 @@ static void tree_destroy(struct rb_root *root)
 					rb->rb_right = NULL;
 			}
 
-			kfree(e);
+			wl_entry_destroy(ubi, e);
 		}
 	}
 }
@@ -1749,7 +1764,7 @@ int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 		ubi_assert(!ubi_is_fm_block(ubi, e->pnum));
 		ubi->lookuptbl[e->pnum] = e;
 		if (schedule_erase(ubi, e, aeb->vol_id, aeb->lnum, 0)) {
-			kfree(e);
+			wl_entry_destroy(ubi, e);
 			goto out_free;
 		}
 
@@ -1839,9 +1854,9 @@ int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 
 out_free:
 	shutdown_work(ubi);
-	tree_destroy(&ubi->used);
-	tree_destroy(&ubi->free);
-	tree_destroy(&ubi->scrub);
+	tree_destroy(ubi, &ubi->used);
+	tree_destroy(ubi, &ubi->free);
+	tree_destroy(ubi, &ubi->scrub);
 	kfree(ubi->lookuptbl);
 	return err;
 }
@@ -1858,7 +1873,7 @@ static void protection_queue_destroy(struct ubi_device *ubi)
 	for (i = 0; i < UBI_PROT_QUEUE_LEN; ++i) {
 		list_for_each_entry_safe(e, tmp, &ubi->pq[i], u.list) {
 			list_del(&e->u.list);
-			kfree(e);
+			wl_entry_destroy(ubi, e);
 		}
 	}
 }
@@ -1889,10 +1904,10 @@ void ubi_wl_close(struct ubi_device *ubi)
 	ubi_fastmap_close(ubi);
 	shutdown_work(ubi);
 	protection_queue_destroy(ubi);
-	tree_destroy(&ubi->used);
-	tree_destroy(&ubi->erroneous);
-	tree_destroy(&ubi->free);
-	tree_destroy(&ubi->scrub);
+	tree_destroy(ubi, &ubi->used);
+	tree_destroy(ubi, &ubi->erroneous);
+	tree_destroy(ubi, &ubi->free);
+	tree_destroy(ubi, &ubi->scrub);
 	kfree(ubi->lookuptbl);
 }
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
