Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSu-0005be-R7
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:59 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BDD13A00C1F
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:55 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:34 +0200
Message-Id: <1535545212-18871-19-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 18/56] UBI: fastmap: use ubi_find_volume() instead of open
 coding it
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

process_pool_aeb() re-implements the logic found in ubi_find_volume().
Call ubi_find_volume() to avoid this duplication.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 23 +++--------------------
 1 file changed, 3 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index d60f89fdb369..37bb93bc2a69 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -303,9 +303,7 @@ static int process_pool_aeb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			    struct ubi_vid_hdr *new_vh,
 			    struct ubi_ainf_peb *new_aeb)
 {
-	struct ubi_ainf_volume *av, *tmp_av = NULL;
-	struct rb_node **p = &ai->volumes.rb_node, *parent = NULL;
-	int found = 0;
+	struct ubi_ainf_volume *av;
 
 	if (be32_to_cpu(new_vh->vol_id) == UBI_FM_SB_VOLUME_ID ||
 		be32_to_cpu(new_vh->vol_id) == UBI_FM_DATA_VOLUME_ID) {
@@ -315,23 +313,8 @@ static int process_pool_aeb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 	}
 
 	/* Find the volume this SEB belongs to */
-	while (*p) {
-		parent = *p;
-		tmp_av = rb_entry(parent, struct ubi_ainf_volume, rb);
-
-		if (be32_to_cpu(new_vh->vol_id) > tmp_av->vol_id)
-			p = &(*p)->rb_left;
-		else if (be32_to_cpu(new_vh->vol_id) < tmp_av->vol_id)
-			p = &(*p)->rb_right;
-		else {
-			found = 1;
-			break;
-		}
-	}
-
-	if (found)
-		av = tmp_av;
-	else {
+	av = ubi_find_av(ai, be32_to_cpu(new_vh->vol_id));
+	if (!av) {
 		ubi_err(ubi, "orphaned volume in fastmap pool!");
 		kfree(new_aeb);
 		return UBI_BAD_FASTMAP;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
