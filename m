Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lDt-00006p-60
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:27 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 73FE1A00CAD
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:21 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:25:52 +0200
Message-Id: <1463992010-31537-5-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
References: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 04/62] UBI: wl: Rename cancel flag to shutdown
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

It confused me more than once that the cancel flag of the
work function does not indicate the cancellation of a single work.
In fact it indicates the WL sub-system shutdown and therefore
worker functions have to free their wl_entries too.
That's why you cannot cancel a single work, you can only shutdown
all works.

Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
---
 drivers/mtd/ubi/ubi.h |  9 +++++----
 drivers/mtd/ubi/wl.c  | 24 +++++++++++++-----------
 2 files changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 51a0112..df104db 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -691,14 +691,15 @@ struct ubi_attach_info {
  * @torture: if the physical eraseblock has to be tortured
  * @anchor: produce a anchor PEB to by used by fastmap
  *
- * The @func pointer points to the worker function. If the @cancel argument is
- * not zero, the worker has to free the resources and exit immediately. The
- * worker has to return zero in case of success and a negative error code in
+ * The @func pointer points to the worker function. If the @shutdown argument is
+ * not zero, the worker has to free the resources and exit immediately as the
+ * WL sub-system is shutting down.
+ * The worker has to return zero in case of success and a negative error code in
  * case of failure.
  */
 struct ubi_work {
 	struct list_head list;
-	int (*func)(struct ubi_device *ubi, struct ubi_work *wrk, int cancel);
+	int (*func)(struct ubi_device *ubi, struct ubi_work *wrk, int shutdown);
 	/* The below fields are only relevant to erasure works */
 	struct ubi_wl_entry *e;
 	int vol_id;
diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index cb2f9d7..cdfc41c0 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -816,7 +816,7 @@ static void schedule_ubi_work(struct ubi_device *ubi, struct ubi_work *wrk)
 }
 
 static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
-			int cancel);
+			int shutdown);
 
 #ifdef CONFIG_MTD_UBI_FASTMAP
 /**
@@ -939,14 +939,15 @@ int ubi_wl_put_fm_peb(struct ubi_device *ubi, struct ubi_wl_entry *fm_e,
  * wear_leveling_worker - wear-leveling worker function.
  * @ubi: UBI device description object
  * @wrk: the work object
- * @cancel: non-zero if the worker has to free memory and exit
+ * @shutdown: non-zero if the worker has to free memory and exit
+ * because the WL-subsystem is shutting down
  *
  * This function copies a more worn out physical eraseblock to a less worn out
  * one. Returns zero in case of success and a negative error code in case of
  * failure.
  */
 static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
-				int cancel)
+				int shutdown)
 {
 	int err, scrubbing = 0, torture = 0, protect = 0, erroneous = 0;
 	int vol_id = -1, uninitialized_var(lnum);
@@ -957,7 +958,7 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 	struct ubi_vid_hdr *vid_hdr;
 
 	kfree(wrk);
-	if (cancel)
+	if (shutdown)
 		return 0;
 
 	vid_hdr = ubi_zalloc_vid_hdr(ubi, GFP_NOFS);
@@ -1333,7 +1334,8 @@ int ubi_ensure_anchor_pebs(struct ubi_device *ubi)
  * erase_worker - physical eraseblock erase worker function.
  * @ubi: UBI device description object
  * @wl_wrk: the work object
- * @cancel: non-zero if the worker has to free memory and exit
+ * @shutdown: non-zero if the worker has to free memory and exit
+ * because the WL sub-system is shutting down
  *
  * This function erases a physical eraseblock and perform torture testing if
  * needed. It also takes care about marking the physical eraseblock bad if
@@ -1341,7 +1343,7 @@ int ubi_ensure_anchor_pebs(struct ubi_device *ubi)
  * failure.
  */
 static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
-			int cancel)
+			int shutdown)
 {
 	struct ubi_wl_entry *e = wl_wrk->e;
 	int pnum = e->pnum;
@@ -1349,7 +1351,7 @@ static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
 	int lnum = wl_wrk->lnum;
 	int err, available_consumed = 0;
 
-	if (cancel) {
+	if (shutdown) {
 		dbg_wl("cancel erasure of PEB %d EC %d", pnum, e->ec);
 		kfree(wl_wrk);
 		kfree(e);
@@ -1667,10 +1669,10 @@ static void tree_destroy(struct rb_root *root)
 }
 
 /**
- * cancel_pending - cancel all pending works.
+ * shutdown_work - shutdown all pending works.
  * @ubi: UBI device description object
  */
-static void cancel_pending(struct ubi_device *ubi)
+static void shutdown_work(struct ubi_device *ubi)
 {
 	while (!list_empty(&ubi->works)) {
 		struct ubi_work *wrk;
@@ -1807,7 +1809,7 @@ int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 	return 0;
 
 out_free:
-	cancel_pending(ubi);
+	shutdown_work(ubi);
 	tree_destroy(&ubi->used);
 	tree_destroy(&ubi->free);
 	tree_destroy(&ubi->scrub);
@@ -1839,7 +1841,7 @@ static void protection_queue_destroy(struct ubi_device *ubi)
 void ubi_wl_close(struct ubi_device *ubi)
 {
 	dbg_wl("close the WL sub-system");
-	cancel_pending(ubi);
+	shutdown_work(ubi);
 	protection_queue_destroy(ubi);
 	tree_destroy(&ubi->used);
 	tree_destroy(&ubi->erroneous);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
