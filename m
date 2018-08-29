Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSU-00054L-Vi
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:29 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id CAA00A005AF
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:51 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:18 +0200
Message-Id: <1535545212-18871-3-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 02/56] UBI: Remove alloc_ai() slab name from parameter list
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

There is always exactly one ubi_attach_info object allocated,
therefore we don't have to care about the name.

Signed-off-by: Richard Weinberger <richard@nod.at>
[Fixed conflict]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/attach.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index daf0010d06da..e9c34c0cc81e 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -1285,7 +1285,7 @@ out_ech:
 	return err;
 }
 
-static struct ubi_attach_info *alloc_ai(const char *slab_name)
+static struct ubi_attach_info *alloc_ai(void)
 {
 	struct ubi_attach_info *ai;
 
@@ -1351,7 +1351,7 @@ static int scan_fast(struct ubi_device *ubi, struct ubi_attach_info **ai)
 		return UBI_NO_FASTMAP;
 
 	destroy_ai(*ai);
-	*ai = alloc_ai("ubi_aeb_slab_cache");
+	*ai = alloc_ai();
 	if (!*ai)
 		return -ENOMEM;
 
@@ -1380,7 +1380,7 @@ int ubi_attach(struct ubi_device *ubi, int force_scan)
 	int err;
 	struct ubi_attach_info *ai;
 
-	ai = alloc_ai("ubi_aeb_slab_cache");
+	ai = alloc_ai();
 	if (!ai)
 		return -ENOMEM;
 
@@ -1398,7 +1398,7 @@ int ubi_attach(struct ubi_device *ubi, int force_scan)
 		if (err > 0 || mtd_is_eccerr(err)) {
 			if (err != UBI_NO_FASTMAP) {
 				destroy_ai(ai);
-				ai = alloc_ai("ubi_aeb_slab_cache2");
+				ai = alloc_ai();
 				if (!ai)
 					return -ENOMEM;
 
@@ -1437,7 +1437,7 @@ int ubi_attach(struct ubi_device *ubi, int force_scan)
 	if (ubi->fm && ubi_dbg_chk_gen(ubi)) {
 		struct ubi_attach_info *scan_ai;
 
-		scan_ai = alloc_ai("ubi_ckh_aeb_slab_cache");
+		scan_ai = alloc_ai();
 		if (!scan_ai) {
 			err = -ENOMEM;
 			goto out_wl;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
