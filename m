Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b016Q-0000Pn-9W
 for barebox@lists.infradead.org; Tue, 10 May 2016 06:25:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 May 2016 08:24:40 +0200
Message-Id: <1462861483-19983-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] mtd: nand: nand_mxs: Factor out BCH setup function
To: Barebox List <barebox@lists.infradead.org>

The BCH setup has to be changed during runtime with the following
patches, so factor out a function for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 59 +++++++++++++++++++++------------------------
 1 file changed, 28 insertions(+), 31 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 20bda14..be7f88f 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -635,6 +635,33 @@ static uint8_t mxs_nand_read_byte(struct mtd_info *mtd)
 	return buf;
 }
 
+static void mxs_nand_config_bch(struct mtd_info *mtd, int readlen)
+{
+	struct nand_chip *nand = mtd->priv;
+	struct mxs_nand_info *nand_info = nand->priv;
+	int chunk_size;
+	void __iomem *bch_regs = nand_info->bch_base;
+
+	if (mxs_nand_is_imx6(nand_info))
+		chunk_size = MXS_NAND_CHUNK_DATA_CHUNK_SIZE >> 2;
+	else
+		chunk_size = MXS_NAND_CHUNK_DATA_CHUNK_SIZE;
+
+	writel((mxs_nand_ecc_chunk_cnt(readlen) - 1)
+			<< BCH_FLASHLAYOUT0_NBLOCKS_OFFSET |
+		MXS_NAND_METADATA_SIZE << BCH_FLASHLAYOUT0_META_SIZE_OFFSET |
+		(mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1)
+			<< IMX6_BCH_FLASHLAYOUT0_ECC0_OFFSET |
+		chunk_size,
+		bch_regs + BCH_FLASH0LAYOUT0);
+
+	writel(readlen	<< BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET |
+		(mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1)
+			<< IMX6_BCH_FLASHLAYOUT1_ECCN_OFFSET |
+		chunk_size,
+		bch_regs + BCH_FLASH0LAYOUT1);
+}
+
 /*
  * Read a page from NAND.
  */
@@ -1104,7 +1131,6 @@ static int mxs_nand_scan_bbt(struct mtd_info *mtd)
 	struct nand_chip *nand = mtd->priv;
 	struct mxs_nand_info *nand_info = nand->priv;
 	void __iomem *bch_regs = nand_info->bch_base;
-	uint32_t layout0, layout1;
 	int ret;
 
 	/* Reset BCH. Don't use SFTRST on MX23 due to Errata #2847 */
@@ -1113,36 +1139,7 @@ static int mxs_nand_scan_bbt(struct mtd_info *mtd)
 	if (ret)
 		return ret;
 
-	if (mxs_nand_is_imx6(nand_info)) {
-		layout0 = (mxs_nand_ecc_chunk_cnt(mtd->writesize) - 1)
-					<< BCH_FLASHLAYOUT0_NBLOCKS_OFFSET |
-			MXS_NAND_METADATA_SIZE << BCH_FLASHLAYOUT0_META_SIZE_OFFSET |
-			(mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1)
-					<< IMX6_BCH_FLASHLAYOUT0_ECC0_OFFSET |
-			MXS_NAND_CHUNK_DATA_CHUNK_SIZE >> 2;
-
-		layout1 = (mtd->writesize + mtd->oobsize)
-					<< BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET |
-			(mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1)
-					<< IMX6_BCH_FLASHLAYOUT1_ECCN_OFFSET |
-			MXS_NAND_CHUNK_DATA_CHUNK_SIZE >> 2;
-	} else {
-		layout0 = (mxs_nand_ecc_chunk_cnt(mtd->writesize) - 1)
-					<< BCH_FLASHLAYOUT0_NBLOCKS_OFFSET |
-			MXS_NAND_METADATA_SIZE << BCH_FLASHLAYOUT0_META_SIZE_OFFSET |
-			(mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1)
-					<< BCH_FLASHLAYOUT0_ECC0_OFFSET |
-			MXS_NAND_CHUNK_DATA_CHUNK_SIZE;
-
-		layout1 = (mtd->writesize + mtd->oobsize)
-					<< BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET |
-			(mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1)
-					<< BCH_FLASHLAYOUT1_ECCN_OFFSET |
-			MXS_NAND_CHUNK_DATA_CHUNK_SIZE;
-	}
-
-	writel(layout0, bch_regs + BCH_FLASH0LAYOUT0);
-	writel(layout1, bch_regs + BCH_FLASH0LAYOUT1);
+	mxs_nand_config_bch(mtd, mtd->writesize + mtd->oobsize);
 
 	/* Set *all* chip selects to use layout 0 */
 	writel(0, bch_regs + BCH_LAYOUTSELECT);
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
