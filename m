Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSh-0005Ut-P5
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0EE3BA00B8B
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:54 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:27 +0200
Message-Id: <1535545212-18871-12-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 11/56] ubi: Make volume resize power cut aware
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

When the volume resize operation shrinks a volume,
LEBs will be unmapped. Since unmapping will not erase these
LEBs immediately we have to wait for that operation to finish.
Otherwise in case of a power cut right after writing the new
volume table the UBI attach process can find more LEBs than the
volume table knows. This will render the UBI image unattachable.

Fix this issue by waiting for erase to complete and write the new
volume table afterward.

Cc: <stable@vger.kernel.org>
Reported-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Reviewed-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/vmt.c | 25 ++++++++++++++++++-------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/ubi/vmt.c b/drivers/mtd/ubi/vmt.c
index aed51c2fe3b2..05a61fccefc6 100644
--- a/drivers/mtd/ubi/vmt.c
+++ b/drivers/mtd/ubi/vmt.c
@@ -339,13 +339,6 @@ int ubi_resize_volume(struct ubi_volume_desc *desc, int reserved_pebs)
 		vol->eba_tbl = new_mapping;
 	}
 
-	/* Change volume table record */
-	vtbl_rec = ubi->vtbl[vol_id];
-	vtbl_rec.reserved_pebs = cpu_to_be32(reserved_pebs);
-	err = ubi_change_vtbl_record(ubi, vol_id, &vtbl_rec);
-	if (err)
-		goto out_acc;
-
 	if (pebs < 0) {
 		for (i = 0; i < -pebs; i++) {
 			err = ubi_eba_unmap_leb(ubi, vol, reserved_pebs + i);
@@ -361,6 +354,24 @@ int ubi_resize_volume(struct ubi_volume_desc *desc, int reserved_pebs)
 		vol->eba_tbl = new_mapping;
 	}
 
+	/*
+	 * When we shrink a volume we have to flush all pending (erase) work.
+	 * Otherwise it can happen that upon next attach UBI finds a LEB with
+	 * lnum > highest_lnum and refuses to attach.
+	 */
+	if (pebs < 0) {
+		err = ubi_wl_flush(ubi, vol_id, UBI_ALL);
+		if (err)
+			goto out_acc;
+	}
+
+	/* Change volume table record */
+	vtbl_rec = ubi->vtbl[vol_id];
+	vtbl_rec.reserved_pebs = cpu_to_be32(reserved_pebs);
+	err = ubi_change_vtbl_record(ubi, vol_id, &vtbl_rec);
+	if (err)
+		goto out_acc;
+
 	vol->reserved_pebs = reserved_pebs;
 	if (vol->vol_type == UBI_DYNAMIC_VOLUME) {
 		vol->used_ebs = reserved_pebs;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
