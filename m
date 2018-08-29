Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSk-0005Ut-7j
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:48 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 849E9A00BD0
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:55 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:33 +0200
Message-Id: <1535545212-18871-18-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 17/56] ubi: Be more paranoid while seaching for the most
 recent Fastmap
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Since PEB erasure is asynchornous it can happen that there is
more than one Fastmap on the MTD. This is fine because the attach logic
will pick the Fastmap data structure with the highest sequence number.

On a not so well configured MTD stack spurious ECC errors are common.
Causes can be different, bad hardware, wrong operating modes, etc...
If the most current Fastmap renders bad due to ECC errors UBI might
pick an older Fastmap to attach from.
While this can only happen on an anyway broken setup it will show
completely different sympthoms and makes finding the root cause much
more difficult.
So, be debug friendly and fall back to scanning mode of we're facing
an ECC error while scanning for Fastmap.

Cc: <stable@vger.kernel.org>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/attach.c | 28 ++++++++++++++++++++++++----
 drivers/mtd/ubi/ubi.h    |  3 +++
 2 files changed, 27 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index 4869c6778b3d..a5d48932ed33 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -845,13 +845,15 @@ static bool vol_ignored(int vol_id)
  * @ubi: UBI device description object
  * @ai: attaching information
  * @pnum: the physical eraseblock number
+ * @fast: true if we're scanning for a Fastmap
  *
  * This function reads UBI headers of PEB @pnum, checks them, and adds
  * information about this PEB to the corresponding list or RB-tree in the
  * "attaching info" structure. Returns zero if the physical eraseblock was
  * successfully handled and a negative error code in case of failure.
  */
-static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai, int pnum)
+static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai,
+		    int pnum, bool fast)
 {
 	long long ec;
 	int err, bitflips = 0, vol_id = -1, ec_err = 0;
@@ -969,6 +971,20 @@ static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai, int pnum
 			 */
 			ai->maybe_bad_peb_count += 1;
 	case UBI_IO_BAD_HDR:
+			/*
+			 * If we're facing a bad VID header we have to drop *all*
+			 * Fastmap data structures we find. The most recent Fastmap
+			 * could be bad and therefore there is a chance that we attach
+			 * from an old one. On a fine MTD stack a PEB must not render
+			 * bad all of a sudden, but the reality is different.
+			 * So, let's be paranoid and help finding the root cause by
+			 * falling back to scanning mode instead of attaching with a
+			 * bad EBA table and cause data corruption which is hard to
+			 * analyze.
+			 */
+			if (fast)
+				ai->force_full_scan = 1;
+
 		if (ec_err)
 			/*
 			 * Both headers are corrupted. There is a possibility
@@ -1279,7 +1295,7 @@ static int scan_all(struct ubi_device *ubi, struct ubi_attach_info *ai,
 
 	for (pnum = start; pnum < ubi->peb_count; pnum++) {
 		dbg_gen("process PEB %d", pnum);
-		err = scan_peb(ubi, ai, pnum);
+		err = scan_peb(ubi, ai, pnum, false);
 		if (err < 0)
 			goto out_vidh;
 	}
@@ -1384,7 +1400,7 @@ static int scan_fast(struct ubi_device *ubi, struct ubi_attach_info **ai)
 
 	for (pnum = 0; pnum < UBI_FM_MAX_START; pnum++) {
 		dbg_gen("process PEB %d", pnum);
-		err = scan_peb(ubi, scan_ai, pnum);
+		err = scan_peb(ubi, scan_ai, pnum, true);
 		if (err < 0)
 			goto out_vidh;
 	}
@@ -1392,7 +1408,11 @@ static int scan_fast(struct ubi_device *ubi, struct ubi_attach_info **ai)
 	ubi_free_vid_hdr(ubi, vidh);
 	kfree(ech);
 
-	err = ubi_scan_fastmap(ubi, *ai, scan_ai);
+	if (scan_ai->force_full_scan)
+		err = UBI_NO_FASTMAP;
+	else
+		err = ubi_scan_fastmap(ubi, *ai, scan_ai);
+
 	if (err) {
 		/*
 		 * Didn't attach via fastmap, do a full scan but reuse what
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 2bd2d9e1ed88..c2f54a4b0b3f 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -651,6 +651,8 @@ struct ubi_ainf_volume {
  * @vols_found: number of volumes found
  * @highest_vol_id: highest volume ID
  * @is_empty: flag indicating whether the MTD device is empty or not
+ * @force_full_scan: flag indicating whether we need to do a full scan and drop
+		     all existing Fastmap data structures
  * @min_ec: lowest erase counter value
  * @max_ec: highest erase counter value
  * @max_sqnum: highest sequence number value
@@ -678,6 +680,7 @@ struct ubi_attach_info {
 	int vols_found;
 	int highest_vol_id;
 	int is_empty;
+	int force_full_scan;
 	int min_ec;
 	int max_ec;
 	unsigned long long max_sqnum;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
