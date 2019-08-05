Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubys-0005xN-1H
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 12:20:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Aug 2019 14:20:11 +0200
Message-Id: <20190805122015.19220-5-s.hauer@pengutronix.de>
In-Reply-To: <20190805122015.19220-1-s.hauer@pengutronix.de>
References: <20190805122015.19220-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/8] mtd: nand-mxs: change API between NAND driver and fcb code
To: Barebox List <barebox@lists.infradead.org>

The imx-bbu-nand-fcb update handler code calls into the NAND driver
to get the ecc strength and bad block marker position. Change the
API so that only a single function is necessary and not three functions.
Also in future the ecc strength will be configurable via device tree.
This means static parameters like page size / oob size are no longer
enough to calculate the ecc strength and so we store a pointer to our
mtd_info struct in a static global variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c    | 15 ++++++---
 drivers/mtd/nand/nand_mxs.c  | 62 +++++++++++++++++++-----------------
 include/linux/mtd/nand_mxs.h |  7 +---
 3 files changed, 45 insertions(+), 39 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 6d773b59df..e28ce6b9ea 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -486,15 +486,22 @@ err:
 static int fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
 		struct fcb_block *fcb, struct mtd_info *mtd)
 {
+	int ecc_strength;
+	int bb_mark_bit_offset;
+	int ret;
+
 	fcb->FingerPrint = 0x20424346;
 	fcb->Version = 0x01000000;
 	fcb->PageDataSize = mtd->writesize;
 	fcb->TotalPageSize = mtd->writesize + mtd->oobsize;
 	fcb->SectorsPerBlock = mtd->erasesize / mtd->writesize;
 
+	ret = mxs_nand_get_geo(&ecc_strength, &bb_mark_bit_offset);
+	if (ret)
+		return ret;
+
 	/* Divide ECC strength by two and save the value into FCB structure. */
-	fcb->EccBlock0EccType =
-		mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1;
+	fcb->EccBlock0EccType = ecc_strength >> 1;
 	fcb->EccBlockNEccType = fcb->EccBlock0EccType;
 
 	fcb->EccBlock0Size = 0x00000200;
@@ -505,8 +512,8 @@ static int fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
 	/* DBBT search area starts at second page on first block */
 	fcb->DBBTSearchAreaStartAddress = 1;
 
-	fcb->BadBlockMarkerByte = mxs_nand_mark_byte_offset(mtd);
-	fcb->BadBlockMarkerStartBit = mxs_nand_mark_bit_offset(mtd);
+	fcb->BadBlockMarkerByte = bb_mark_bit_offset >> 3;
+	fcb->BadBlockMarkerStartBit = bb_mark_bit_offset & 0x7;
 
 	fcb->BBMarkerPhysicalOffset = mtd->writesize;
 
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 4317c30805..92d78db6c9 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -287,20 +287,6 @@ static uint32_t mxs_nand_aux_status_offset(void)
 	return (MXS_NAND_METADATA_SIZE + 0x3) & ~0x3;
 }
 
-uint32_t mxs_nand_get_ecc_strength(uint32_t page_data_size,
-						uint32_t page_oob_size)
-{
-	int ecc_chunk_count = mxs_nand_ecc_chunk_cnt(page_data_size);
-	int ecc_strength = 0;
-	int gf_len = 13;  /* length of Galois Field for non-DDR nand */
-
-	ecc_strength = ((page_oob_size - MXS_NAND_METADATA_SIZE) * 8)
-		/ (gf_len * ecc_chunk_count);
-
-	/* We need the minor even number. */
-	return rounddown(ecc_strength, 2);
-}
-
 static inline uint32_t mxs_nand_get_mark_offset(uint32_t page_data_size,
 						uint32_t ecc_strength)
 {
@@ -350,20 +336,6 @@ static inline uint32_t mxs_nand_get_mark_offset(uint32_t page_data_size,
 	return block_mark_bit_offset;
 }
 
-uint32_t mxs_nand_mark_byte_offset(struct mtd_info *mtd)
-{
-	uint32_t ecc_strength;
-	ecc_strength = mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize);
-	return mxs_nand_get_mark_offset(mtd->writesize, ecc_strength) >> 3;
-}
-
-uint32_t mxs_nand_mark_bit_offset(struct mtd_info *mtd)
-{
-	uint32_t ecc_strength;
-	ecc_strength = mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize);
-	return mxs_nand_get_mark_offset(mtd->writesize, ecc_strength) & 0x7;
-}
-
 static int mxs_nand_calc_geo(struct mtd_info *mtd)
 {
 	struct nand_chip *chip = mtd->priv;
@@ -387,6 +359,25 @@ static int mxs_nand_calc_geo(struct mtd_info *mtd)
 	return 0;
 }
 
+static struct mtd_info *mxs_nand_mtd;
+
+int mxs_nand_get_geo(int *ecc_strength, int *bb_mark_bit_offset)
+{
+	struct nand_chip *chip;
+	struct mxs_nand_info *nand_info;
+
+	if (!mxs_nand_mtd)
+		return -ENODEV;
+
+	chip = mxs_nand_mtd->priv;
+	nand_info = chip->priv;
+
+	*ecc_strength = chip->ecc.strength;
+	*bb_mark_bit_offset = nand_info->bb_mark_bit_offset;
+
+	return 0;
+}
+
 /*
  * Wait for BCH complete IRQ and clear the IRQ
  */
@@ -2140,6 +2131,10 @@ static int mxs_nand_probe(struct device_d *dev)
 	enum gpmi_type type;
 	int err;
 
+	/* We expect only one */
+	if (mxs_nand_mtd)
+		return -EBUSY;
+
 	err = dev_get_drvdata(dev, (const void **)&type);
 	if (err)
 		type = GPMI_MXS;
@@ -2239,12 +2234,21 @@ static int mxs_nand_probe(struct device_d *dev)
 	if (err)
 		goto err2;
 
-	return add_mtd_nand_device(mtd, "nand");
+	err = add_mtd_nand_device(mtd, "nand");
+	if (err)
+		goto err2;
+
+	mxs_nand_mtd = mtd;
+
+	return 0;
 err2:
 	free(nand_info->data_buf);
 	free(nand_info->cmd_buf);
 err1:
 	free(nand_info);
+
+	mxs_nand_mtd = NULL;
+
 	return err;
 }
 
diff --git a/include/linux/mtd/nand_mxs.h b/include/linux/mtd/nand_mxs.h
index eca31777f5..7eda0b8e63 100644
--- a/include/linux/mtd/nand_mxs.h
+++ b/include/linux/mtd/nand_mxs.h
@@ -27,11 +27,6 @@
  * update handler code, the generic calculation from the driver code is used.
  */
 
-uint32_t mxs_nand_get_ecc_strength(uint32_t page_data_size,
-						uint32_t page_oob_size);
-
-uint32_t mxs_nand_mark_byte_offset(struct mtd_info *mtd);
-
-uint32_t mxs_nand_mark_bit_offset(struct mtd_info *mtd);
+int mxs_nand_get_geo(int *ecc_strength, int *bb_mark_bit_offset);
 
 #endif /* __NAND_MXS_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
