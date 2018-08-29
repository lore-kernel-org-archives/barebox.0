Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSn-0005UU-4t
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:52 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 1131AA00CCD
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:58 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:43 +0200
Message-Id: <1535545212-18871-28-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 27/56] UBI: move the global ech and vidh variables into struct
 ubi_attach_info
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

Even if it works fine with those global variables, attaching the
temporary ech and vidh objects used during UBI scan to the
ubi_attach_info object sounds like a more future-proof option.

For example, attaching several UBI devices in parallel is prevented by
this use of global variable. And also because global variables should
be avoided in general.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/attach.c | 39 +++++++++++++++++++--------------------
 drivers/mtd/ubi/ubi.h    |  4 ++++
 2 files changed, 23 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index 2b1271218804..36483b804fb1 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -85,10 +85,6 @@
 
 static int self_check_ai(struct ubi_device *ubi, struct ubi_attach_info *ai);
 
-/* Temporary variables used during scanning */
-static struct ubi_ec_hdr *ech;
-static struct ubi_vid_hdr *vidh;
-
 #define AV_FIND		BIT(0)
 #define AV_ADD		BIT(1)
 #define AV_FIND_OR_ADD	(AV_FIND | AV_ADD)
@@ -947,6 +943,8 @@ static bool vol_ignored(int vol_id)
 static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		    int pnum, bool fast)
 {
+	struct ubi_ec_hdr *ech = ai->ech;
+	struct ubi_vid_hdr *vidh = ai->vidh;
 	long long ec;
 	int err, bitflips = 0, vol_id = -1, ec_err = 0;
 
@@ -1382,12 +1380,12 @@ static int scan_all(struct ubi_device *ubi, struct ubi_attach_info *ai,
 
 	err = -ENOMEM;
 
-	ech = kzalloc(ubi->ec_hdr_alsize, GFP_KERNEL);
-	if (!ech)
+	ai->ech = kzalloc(ubi->ec_hdr_alsize, GFP_KERNEL);
+	if (!ai->ech)
 		return err;
 
-	vidh = ubi_zalloc_vid_hdr(ubi, GFP_KERNEL);
-	if (!vidh)
+	ai->vidh = ubi_zalloc_vid_hdr(ubi, GFP_KERNEL);
+	if (!ai->vidh)
 		goto out_ech;
 
 	for (pnum = start; pnum < ubi->peb_count; pnum++) {
@@ -1434,15 +1432,15 @@ static int scan_all(struct ubi_device *ubi, struct ubi_attach_info *ai,
 	if (err)
 		goto out_vidh;
 
-	ubi_free_vid_hdr(ubi, vidh);
-	kfree(ech);
+	ubi_free_vid_hdr(ubi, ai->vidh);
+	kfree(ai->ech);
 
 	return 0;
 
 out_vidh:
-	ubi_free_vid_hdr(ubi, vidh);
+	ubi_free_vid_hdr(ubi, ai->vidh);
 out_ech:
-	kfree(ech);
+	kfree(ai->ech);
 	return err;
 }
 
@@ -1487,12 +1485,12 @@ static int scan_fast(struct ubi_device *ubi, struct ubi_attach_info **ai)
 	if (!scan_ai)
 		goto out;
 
-	ech = kzalloc(ubi->ec_hdr_alsize, GFP_KERNEL);
-	if (!ech)
+	scan_ai->ech = kzalloc(ubi->ec_hdr_alsize, GFP_KERNEL);
+	if (!scan_ai->ech)
 		goto out_ai;
 
-	vidh = ubi_zalloc_vid_hdr(ubi, GFP_KERNEL);
-	if (!vidh)
+	scan_ai->vidh = ubi_zalloc_vid_hdr(ubi, GFP_KERNEL);
+	if (!scan_ai->vidh)
 		goto out_ech;
 
 	for (pnum = 0; pnum < UBI_FM_MAX_START; pnum++) {
@@ -1502,8 +1500,8 @@ static int scan_fast(struct ubi_device *ubi, struct ubi_attach_info **ai)
 			goto out_vidh;
 	}
 
-	ubi_free_vid_hdr(ubi, vidh);
-	kfree(ech);
+	ubi_free_vid_hdr(ubi, scan_ai->vidh);
+	kfree(scan_ai->ech);
 
 	if (scan_ai->force_full_scan)
 		err = UBI_NO_FASTMAP;
@@ -1523,9 +1521,9 @@ static int scan_fast(struct ubi_device *ubi, struct ubi_attach_info **ai)
 	return err;
 
 out_vidh:
-	ubi_free_vid_hdr(ubi, vidh);
+	ubi_free_vid_hdr(ubi, scan_ai->vidh);
 out_ech:
-	kfree(ech);
+	kfree(scan_ai->ech);
 out_ai:
 	destroy_ai(scan_ai);
 out:
@@ -1647,6 +1645,7 @@ out_ai:
  */
 static int self_check_ai(struct ubi_device *ubi, struct ubi_attach_info *ai)
 {
+	struct ubi_vid_hdr *vidh = ai->vidh;
 	int pnum, err, vols_found = 0;
 	struct rb_node *rb1, *rb2;
 	struct ubi_ainf_volume *av;
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 9539d5676306..d8e895ae47d7 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -660,6 +660,8 @@ struct ubi_ainf_volume {
  * @ec_sum: a temporary variable used when calculating @mean_ec
  * @ec_count: a temporary variable used when calculating @mean_ec
  * @aeb_slab_cache: slab cache for &struct ubi_ainf_peb objects
+ * @ech: temporary EC header. Only available during scan
+ * @vidh: temporary VID header. Only available during scan
  *
  * This data structure contains the result of attaching an MTD device and may
  * be used by other UBI sub-systems to build final UBI data structures, further
@@ -688,6 +690,8 @@ struct ubi_attach_info {
 	uint64_t ec_sum;
 	int ec_count;
 	struct kmem_cache *aeb_slab_cache;
+	struct ubi_ec_hdr *ech;
+	struct ubi_vid_hdr *vidh;
 };
 
 /**
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
