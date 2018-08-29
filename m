Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSr-0005Uu-VM
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:55 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 58BD9A00D51
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:00 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:52 +0200
Message-Id: <1535545212-18871-37-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 36/56] ubi: Fix races around ubi_refill_pools()
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

When writing a new Fastmap the first thing that happens
is refilling the pools in memory.
At this stage it is possible that new PEBs from the new pools
get already claimed and written with data.
If this happens before the new Fastmap data structure hits the
flash and we face power cut the freshly written PEB will not
scanned and unnoticed.

Solve the issue by locking the pools until Fastmap is written.

Cc: <stable@vger.kernel.org>
Fixes: dbb7d2a88d ("UBI: Add fastmap core")
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fix conflicts]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap-wl.c |  4 ++--
 drivers/mtd/ubi/wl.c         | 15 +++++++++------
 2 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap-wl.c b/drivers/mtd/ubi/fastmap-wl.c
index 1885b155ddf9..07982aab169a 100644
--- a/drivers/mtd/ubi/fastmap-wl.c
+++ b/drivers/mtd/ubi/fastmap-wl.c
@@ -230,7 +230,7 @@ int ubi_ensure_anchor_pebs(struct ubi_device *ubi)
 
 	wrk->anchor = 1;
 	wrk->func = &wear_leveling_worker;
-	schedule_ubi_work(ubi, wrk);
+	__schedule_ubi_work(ubi, wrk);
 	return 0;
 }
 
@@ -268,7 +268,7 @@ int ubi_wl_put_fm_peb(struct ubi_device *ubi, struct ubi_wl_entry *fm_e,
 	}
 
 	vol_id = lnum ? UBI_FM_DATA_VOLUME_ID : UBI_FM_SB_VOLUME_ID;
-	return schedule_erase(ubi, e, vol_id, lnum, torture);
+	return schedule_erase(ubi, e, vol_id, lnum, torture, true);
 }
 
 /**
diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index 764e8dddc2b5..54c119d20b07 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -554,7 +554,7 @@ static int erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk,
  * failure.
  */
 static int schedule_erase(struct ubi_device *ubi, struct ubi_wl_entry *e,
-			  int vol_id, int lnum, int torture)
+			  int vol_id, int lnum, int torture, bool nested)
 {
 	struct ubi_work *wl_wrk;
 
@@ -573,7 +573,10 @@ static int schedule_erase(struct ubi_device *ubi, struct ubi_wl_entry *e,
 	wl_wrk->lnum = lnum;
 	wl_wrk->torture = torture;
 
-	schedule_ubi_work(ubi, wl_wrk);
+	if (nested)
+		__schedule_ubi_work(ubi, wl_wrk);
+	else
+		schedule_ubi_work(ubi, wl_wrk);
 	return 0;
 }
 
@@ -1047,7 +1050,7 @@ static int __erase_worker(struct ubi_device *ubi, struct ubi_work *wl_wrk)
 		int err1;
 
 		/* Re-schedule the LEB for erasure */
-		err1 = schedule_erase(ubi, e, vol_id, lnum, 0);
+		err1 = schedule_erase(ubi, e, vol_id, lnum, 0, false);
 		if (err1) {
 			wl_entry_destroy(ubi, e);
 			err = err1;
@@ -1204,7 +1207,7 @@ retry:
 		}
 	}
 
-	err = schedule_erase(ubi, e, vol_id, lnum, torture);
+	err = schedule_erase(ubi, e, vol_id, lnum, torture, false);
 	if (err)
 		wl_tree_add(e, &ubi->used);
 
@@ -1428,7 +1431,7 @@ int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 		e->pnum = aeb->pnum;
 		e->ec = aeb->ec;
 		ubi->lookuptbl[e->pnum] = e;
-		if (schedule_erase(ubi, e, aeb->vol_id, aeb->lnum, 0)) {
+		if (schedule_erase(ubi, e, aeb->vol_id, aeb->lnum, 0, false)) {
 			wl_entry_destroy(ubi, e);
 			goto out_free;
 		}
@@ -1501,7 +1504,7 @@ int ubi_wl_init(struct ubi_device *ubi, struct ubi_attach_info *ai)
 			e->ec = aeb->ec;
 			ubi_assert(!ubi->lookuptbl[e->pnum]);
 			ubi->lookuptbl[e->pnum] = e;
-			if (schedule_erase(ubi, e, aeb->vol_id, aeb->lnum, 0)) {
+			if (schedule_erase(ubi, e, aeb->vol_id, aeb->lnum, 0, false)) {
 				wl_entry_destroy(ubi, e);
 				goto out_free;
 			}
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
