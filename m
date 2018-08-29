Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSu-0005cy-Qh
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:59 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4EE3AA00C52
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:56 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:36 +0200
Message-Id: <1535545212-18871-21-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 20/56] UBI: fastmap: avoid multiple be32_to_cpu() when
 unneccesary
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

process_pool_aeb() does several times the be32_to_cpu(new_vh->vol_id)
operation. Create a temporary variable and do it once.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fix conflict]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 37bb93bc2a69..6ef94189b612 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -303,24 +303,24 @@ static int process_pool_aeb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			    struct ubi_vid_hdr *new_vh,
 			    struct ubi_ainf_peb *new_aeb)
 {
+	int vol_id = be32_to_cpu(new_vh->vol_id);
 	struct ubi_ainf_volume *av;
 
-	if (be32_to_cpu(new_vh->vol_id) == UBI_FM_SB_VOLUME_ID ||
-		be32_to_cpu(new_vh->vol_id) == UBI_FM_DATA_VOLUME_ID) {
+	if (vol_id == UBI_FM_SB_VOLUME_ID || vol_id == UBI_FM_DATA_VOLUME_ID) {
 		kfree(new_aeb);
 
 		return 0;
 	}
 
 	/* Find the volume this SEB belongs to */
-	av = ubi_find_av(ai, be32_to_cpu(new_vh->vol_id));
+	av = ubi_find_av(ai, vol_id);
 	if (!av) {
 		ubi_err(ubi, "orphaned volume in fastmap pool!");
 		kfree(new_aeb);
 		return UBI_BAD_FASTMAP;
 	}
 
-	ubi_assert(be32_to_cpu(new_vh->vol_id) == av->vol_id);
+	ubi_assert(vol_id == av->vol_id);
 
 	return update_vol(ubi, ai, av, new_vh, new_aeb);
 }
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
