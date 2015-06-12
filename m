Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3Ia1-00071b-Jb
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 06:36:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 08:35:44 +0200
Message-Id: <1434090946-6574-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
References: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] imx-bbu-nand-fcb: Let DBBT start at page 1
To: Barebox List <barebox@lists.infradead.org>

We used to put the FCB in the first two NAND blocks and the DBBT
in the third and fourth block. It's much more space efficient to
put the FCB and DBBT together into the same eraseblock in different
pages. This way we can store four FCBs and four DBBTs instead of
two only.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 920b5a1..d65b9cd 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -257,8 +257,8 @@ static int fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
 
 	fcb->NumEccBlocksPerPage = mtd->writesize / fcb->EccBlock0Size - 1;
 
-	/* DBBT search area starts at third block */
-	fcb->DBBTSearchAreaStartAddress = mtd->erasesize / mtd->writesize * 2;
+	/* DBBT search area starts at second page on first block */
+	fcb->DBBTSearchAreaStartAddress = 1;
 
 	fcb->BadBlockMarkerByte = mxs_nand_mark_byte_offset(mtd);
 	fcb->BadBlockMarkerStartBit = mxs_nand_mark_bit_offset(mtd);
@@ -445,10 +445,6 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	 */
 	memset(fcb_raw_page + mtd->writesize, 0xFF, 2);
 
-	ret = raw_write_page(mtd, fcb_raw_page, 0);
-	if (ret)
-		goto out;
-
 	ret = raw_write_page(mtd, fcb_raw_page, mtd->erasesize);
 	if (ret)
 		goto out;
@@ -467,14 +463,19 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 			imx_handler->dbbt_create(imx_handler, dbbt, ret);
 	}
 
-	for (i = 2; i < 4; i++) {
-		ret = mtd_write(mtd, mtd->erasesize * i, 2048, &written, dbbt_page);
+	for (i = 0; i < 4; i++) {
+		ret = raw_write_page(mtd, fcb_raw_page, mtd->erasesize * i);
+		if (ret)
+			goto out;
+
+		ret = mtd_write(mtd, mtd->erasesize * i + mtd->writesize,
+				mtd->writesize, &written, dbbt_page);
 		if (ret)
 			goto out;
 
 		if (dbbt->DBBTNumOfPages > 0) {
-			ret = mtd_write(mtd, mtd->erasesize * i + mtd->writesize * 4,
-					2048, &written, dbbt_data_page);
+			ret = mtd_write(mtd, mtd->erasesize * i + mtd->writesize * 5,
+					mtd->writesize, &written, dbbt_data_page);
 			if (ret)
 				goto out;
 		}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
