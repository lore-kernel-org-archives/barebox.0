Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSU-00053I-Vq
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:31 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 95563A00405
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:51 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:17 +0200
Message-Id: <1535545212-18871-2-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 01/56] UBI: Fastmap: Fix memory leak while attaching
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Currently we leak a few ubi_ainf_pebs while attaching.

Signed-off-by: Richard Weinberger <richard@nod.at>
[Fix conflicts]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/attach.c  | 47 ++++++++++++++++++++++++++---------------------
 drivers/mtd/ubi/fastmap.c |  5 -----
 2 files changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index ff4b4e7acb76..daf0010d06da 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -1285,6 +1285,23 @@ out_ech:
 	return err;
 }
 
+static struct ubi_attach_info *alloc_ai(const char *slab_name)
+{
+	struct ubi_attach_info *ai;
+
+	ai = kzalloc(sizeof(struct ubi_attach_info), GFP_KERNEL);
+	if (!ai)
+		return ai;
+
+	INIT_LIST_HEAD(&ai->corr);
+	INIT_LIST_HEAD(&ai->free);
+	INIT_LIST_HEAD(&ai->erase);
+	INIT_LIST_HEAD(&ai->alien);
+	ai->volumes = RB_ROOT;
+
+	return ai;
+}
+
 #ifdef CONFIG_MTD_UBI_FASTMAP
 
 /**
@@ -1297,7 +1314,7 @@ out_ech:
  * UBI_NO_FASTMAP denotes that no fastmap was found.
  * UBI_BAD_FASTMAP denotes that the found fastmap was invalid.
  */
-static int scan_fast(struct ubi_device *ubi, struct ubi_attach_info *ai)
+static int scan_fast(struct ubi_device *ubi, struct ubi_attach_info **ai)
 {
 	int err, pnum, fm_anchor = -1;
 	unsigned long long max_sqnum = 0;
@@ -1317,7 +1334,7 @@ static int scan_fast(struct ubi_device *ubi, struct ubi_attach_info *ai)
 		unsigned long long sqnum = -1;
 
 		dbg_gen("process PEB %d", pnum);
-		err = scan_peb(ubi, ai, pnum, &vol_id, &sqnum);
+		err = scan_peb(ubi, *ai, pnum, &vol_id, &sqnum);
 		if (err < 0)
 			goto out_vidh;
 
@@ -1333,7 +1350,12 @@ static int scan_fast(struct ubi_device *ubi, struct ubi_attach_info *ai)
 	if (fm_anchor < 0)
 		return UBI_NO_FASTMAP;
 
-	return ubi_scan_fastmap(ubi, ai, fm_anchor);
+	destroy_ai(*ai);
+	*ai = alloc_ai("ubi_aeb_slab_cache");
+	if (!*ai)
+		return -ENOMEM;
+
+	return ubi_scan_fastmap(ubi, *ai, fm_anchor);
 
 out_vidh:
 	ubi_free_vid_hdr(ubi, vidh);
@@ -1345,23 +1367,6 @@ out:
 
 #endif
 
-static struct ubi_attach_info *alloc_ai(const char *slab_name)
-{
-	struct ubi_attach_info *ai;
-
-	ai = kzalloc(sizeof(struct ubi_attach_info), GFP_KERNEL);
-	if (!ai)
-		return ai;
-
-	INIT_LIST_HEAD(&ai->corr);
-	INIT_LIST_HEAD(&ai->free);
-	INIT_LIST_HEAD(&ai->erase);
-	INIT_LIST_HEAD(&ai->alien);
-	ai->volumes = RB_ROOT;
-
-	return ai;
-}
-
 /**
  * ubi_attach - attach an MTD device.
  * @ubi: UBI device descriptor
@@ -1389,7 +1394,7 @@ int ubi_attach(struct ubi_device *ubi, int force_scan)
 	if (force_scan)
 		err = scan_all(ubi, ai, 0);
 	else {
-		err = scan_fast(ubi, ai);
+		err = scan_fast(ubi, &ai);
 		if (err > 0 || mtd_is_eccerr(err)) {
 			if (err != UBI_NO_FASTMAP) {
 				destroy_ai(ai);
diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 9975722698a0..2e0fdb7583e4 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -548,11 +548,6 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 
 	INIT_LIST_HEAD(&used);
 	INIT_LIST_HEAD(&lfree);
-	INIT_LIST_HEAD(&ai->corr);
-	INIT_LIST_HEAD(&ai->free);
-	INIT_LIST_HEAD(&ai->erase);
-	INIT_LIST_HEAD(&ai->alien);
-	ai->volumes = RB_ROOT;
 	ai->min_ec = UBI_MAX_ERASECOUNTER;
 
 	fmsb = (struct ubi_fm_sb *)(fm_raw);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
