Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSr-0005UV-0N
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:53 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 23736A00D4B
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:21:00 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:51 +0200
Message-Id: <1535545212-18871-36-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 35/56] ubi: Deal with interrupted erasures in WL
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

When Fastmap is used we can face here an -EBADMSG
since Fastmap cannot know about unmaps.
If the erasure was interrupted the PEB may show ECC
errors and UBI would go to ro-mode as it assumes
that the PEB was check during attach time, which is
not the case with Fastmap.

Cc: <stable@vger.kernel.org>
Fixes: dbb7d2a88d ("UBI: Add fastmap core")
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fix conflict]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/wl.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index 32cea29e8827..764e8dddc2b5 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -618,7 +618,7 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 				int shutdown)
 {
 	int err, scrubbing = 0, torture = 0, protect = 0, erroneous = 0;
-	int vol_id = -1, lnum = -1;
+	int erase = 0, keep = 0, vol_id = -1, lnum = -1;
 #ifdef CONFIG_MTD_UBI_FASTMAP
 	int anchor = wrk->anchor;
 #endif
@@ -754,6 +754,16 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 			       e1->pnum);
 			scrubbing = 1;
 			goto out_not_moved;
+		} else if (ubi->fast_attach && err == UBI_IO_BAD_HDR_EBADMSG) {
+			/*
+			 * While a full scan would detect interrupted erasures
+			 * at attach time we can face them here when attached from
+			 * Fastmap.
+			 */
+			dbg_wl("PEB %d has ECC errors, maybe from an interrupted erasure",
+			       e1->pnum);
+			erase = 1;
+			goto out_not_moved;
 		}
 
 		ubi_err(ubi, "error %d while reading VID header from PEB %d",
@@ -789,6 +799,7 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 			 * Target PEB had bit-flips or write error - torture it.
 			 */
 			torture = 1;
+			keep = 1;
 			goto out_not_moved;
 		}
 
@@ -871,7 +882,7 @@ out_not_moved:
 		ubi->erroneous_peb_count += 1;
 	} else if (scrubbing)
 		wl_tree_add(e1, &ubi->scrub);
-	else
+	else if (keep)
 		wl_tree_add(e1, &ubi->used);
 	if (dst_leb_clean) {
 		wl_tree_add(e2, &ubi->free);
@@ -891,6 +902,12 @@ out_not_moved:
 			goto out_ro;
 	}
 
+	if (erase) {
+		err = do_sync_erase(ubi, e1, vol_id, lnum, 1);
+		if (err)
+			goto out_ro;
+	}
+
 	return 0;
 
 out_error:
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
