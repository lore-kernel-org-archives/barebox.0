Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubyN-0005VA-JZ
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 12:20:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Aug 2019 14:20:08 +0200
Message-Id: <20190805122015.19220-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] mtd: nand-mxs: consistently rename struct nand_chip * to
 "chip"
To: Barebox List <barebox@lists.infradead.org>

The struct nand_chip * is sometimes named "nand" and sometimes "chip".
For consistency name it "chip" throughout the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 148 ++++++++++++++++++------------------
 1 file changed, 74 insertions(+), 74 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index c3b07aa3f6..f753874956 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -396,8 +396,8 @@ static int mxs_nand_wait_for_bch_complete(struct mxs_nand_info *nand_info)
  */
 static void mxs_nand_cmd_ctrl(struct mtd_info *mtd, int data, unsigned int ctrl)
 {
-	struct nand_chip *nand = mtd->priv;
-	struct mxs_nand_info *nand_info = nand->priv;
+	struct nand_chip *chip = mtd->priv;
+	struct mxs_nand_info *nand_info = chip->priv;
 	struct mxs_dma_desc *d;
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
 	int ret;
@@ -496,12 +496,12 @@ static int mxs_nand_device_ready(struct mtd_info *mtd)
 /*
  * Select the NAND chip.
  */
-static void mxs_nand_select_chip(struct mtd_info *mtd, int chip)
+static void mxs_nand_select_chip(struct mtd_info *mtd, int chipnum)
 {
-	struct nand_chip *nand = mtd->priv;
-	struct mxs_nand_info *nand_info = nand->priv;
+	struct nand_chip *chip = mtd->priv;
+	struct mxs_nand_info *nand_info = chip->priv;
 
-	nand_info->cur_chip = chip;
+	nand_info->cur_chip = chipnum;
 }
 
 /*
@@ -555,8 +555,8 @@ static void mxs_nand_swap_block_mark(struct mtd_info *mtd,
  */
 static void mxs_nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int length)
 {
-	struct nand_chip *nand = mtd->priv;
-	struct mxs_nand_info *nand_info = nand->priv;
+	struct nand_chip *chip = mtd->priv;
+	struct mxs_nand_info *nand_info = chip->priv;
 	struct mxs_dma_desc *d;
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
 	int ret;
@@ -633,8 +633,8 @@ rtn:
 static void mxs_nand_write_buf(struct mtd_info *mtd, const uint8_t *buf,
 				int length)
 {
-	struct nand_chip *nand = mtd->priv;
-	struct mxs_nand_info *nand_info = nand->priv;
+	struct nand_chip *chip = mtd->priv;
+	struct mxs_nand_info *nand_info = chip->priv;
 	struct mxs_dma_desc *d;
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
 	int ret;
@@ -690,8 +690,8 @@ static uint8_t mxs_nand_read_byte(struct mtd_info *mtd)
 
 static void mxs_nand_config_bch(struct mtd_info *mtd, int readlen)
 {
-	struct nand_chip *nand = mtd->priv;
-	struct mxs_nand_info *nand_info = nand->priv;
+	struct nand_chip *chip = mtd->priv;
+	struct mxs_nand_info *nand_info = chip->priv;
 	int chunk_size;
 	void __iomem *bch_regs = nand_info->bch_base;
 
@@ -718,11 +718,11 @@ static void mxs_nand_config_bch(struct mtd_info *mtd, int readlen)
 /*
  * Read a page from NAND.
  */
-static int __mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand,
+static int __mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *chip,
 					uint8_t *buf, int oob_required, int page,
 					int readlen)
 {
-	struct mxs_nand_info *nand_info = nand->priv;
+	struct mxs_nand_info *nand_info = chip->priv;
 	struct mxs_dma_desc *d;
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
 	uint32_t corrected = 0, failed = 0;
@@ -899,9 +899,9 @@ static int __mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand
 	 * necessary, it has already been done, so we can rely on the first
 	 * byte of the auxiliary buffer to contain the block mark.
 	 */
-	memset(nand->oob_poi, 0xff, mtd->oobsize);
+	memset(chip->oob_poi, 0xff, mtd->oobsize);
 
-	nand->oob_poi[0] = nand_info->oob_buf[0];
+	chip->oob_poi[0] = nand_info->oob_buf[0];
 
 	ret = 0;
 rtn:
@@ -912,10 +912,10 @@ rtn:
 	return ret ? ret : max_bitflips;
 }
 
-static int mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand,
+static int mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *chip,
 					uint8_t *buf, int oob_required, int page)
 {
-	return __mxs_nand_ecc_read_page(mtd, nand, buf, oob_required, page,
+	return __mxs_nand_ecc_read_page(mtd, chip, buf, oob_required, page,
 					mtd->writesize);
 }
 
@@ -939,16 +939,16 @@ static int gpmi_ecc_read_subpage(struct mtd_info *mtd, struct nand_chip *chip,
  * Write a page to NAND.
  */
 static int mxs_nand_ecc_write_page(struct mtd_info *mtd,
-				struct nand_chip *nand, const uint8_t *buf,
+				struct nand_chip *chip, const uint8_t *buf,
 				int oob_required)
 {
-	struct mxs_nand_info *nand_info = nand->priv;
+	struct mxs_nand_info *nand_info = chip->priv;
 	struct mxs_dma_desc *d;
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
 	int ret = 0;
 
 	memcpy(nand_info->data_buf, buf, mtd->writesize);
-	memcpy(nand_info->oob_buf, nand->oob_poi, mtd->oobsize);
+	memcpy(nand_info->oob_buf, chip->oob_poi, mtd->oobsize);
 
 	/* Handle block mark swapping. */
 	mxs_nand_swap_block_mark(mtd, nand_info->data_buf, nand_info->oob_buf);
@@ -1112,10 +1112,10 @@ static int mxs_nand_hook_block_markbad(struct mtd_info *mtd, loff_t ofs)
  * raw_oob_mode field so that, when control finally arrives here, we'll know
  * what to do.
  */
-static int mxs_nand_ecc_read_oob(struct mtd_info *mtd, struct nand_chip *nand,
+static int mxs_nand_ecc_read_oob(struct mtd_info *mtd, struct nand_chip *chip,
 				int page)
 {
-	struct mxs_nand_info *nand_info = nand->priv;
+	struct mxs_nand_info *nand_info = chip->priv;
 	int column;
 
 	/*
@@ -1128,18 +1128,18 @@ static int mxs_nand_ecc_read_oob(struct mtd_info *mtd, struct nand_chip *nand,
 		 * If control arrives here, we're doing a "raw" read. Send the
 		 * command to read the conventional OOB and read it.
 		 */
-		nand->cmdfunc(mtd, NAND_CMD_READ0, mtd->writesize, page);
-		nand->read_buf(mtd, nand->oob_poi, mtd->oobsize);
+		chip->cmdfunc(mtd, NAND_CMD_READ0, mtd->writesize, page);
+		chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
 	} else {
 		/*
 		 * If control arrives here, we're not doing a "raw" read. Fill
 		 * the OOB buffer with set bits and correct the block mark.
 		 */
-		memset(nand->oob_poi, 0xff, mtd->oobsize);
+		memset(chip->oob_poi, 0xff, mtd->oobsize);
 
 		column = nand_info->version == GPMI_VERSION_TYPE_MX23 ? 0 : mtd->writesize;
-		nand->cmdfunc(mtd, NAND_CMD_READ0, column, page);
-		mxs_nand_read_buf(mtd, nand->oob_poi, 1);
+		chip->cmdfunc(mtd, NAND_CMD_READ0, column, page);
+		mxs_nand_read_buf(mtd, chip->oob_poi, 1);
 	}
 
 	return 0;
@@ -1149,10 +1149,10 @@ static int mxs_nand_ecc_read_oob(struct mtd_info *mtd, struct nand_chip *nand,
 /*
  * Write OOB data to NAND.
  */
-static int mxs_nand_ecc_write_oob(struct mtd_info *mtd, struct nand_chip *nand,
+static int mxs_nand_ecc_write_oob(struct mtd_info *mtd, struct nand_chip *chip,
 					int page)
 {
-	struct mxs_nand_info *nand_info = nand->priv;
+	struct mxs_nand_info *nand_info = chip->priv;
 	int column;
 	uint8_t block_mark = 0;
 
@@ -1172,12 +1172,12 @@ static int mxs_nand_ecc_write_oob(struct mtd_info *mtd, struct nand_chip *nand,
 
 	column = nand_info->version == GPMI_VERSION_TYPE_MX23 ? 0 : mtd->writesize;
 	/* Write the block mark. */
-	nand->cmdfunc(mtd, NAND_CMD_SEQIN, column, page);
-	nand->write_buf(mtd, &block_mark, 1);
-	nand->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
+	chip->cmdfunc(mtd, NAND_CMD_SEQIN, column, page);
+	chip->write_buf(mtd, &block_mark, 1);
+	chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
 
 	/* Check if it worked. */
-	if (nand->waitfunc(mtd, nand) & NAND_STATUS_FAIL)
+	if (chip->waitfunc(mtd, chip) & NAND_STATUS_FAIL)
 		return -EIO;
 
 	return 0;
@@ -1217,8 +1217,8 @@ static int mxs_nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
  */
 static int mxs_nand_scan_bbt(struct mtd_info *mtd)
 {
-	struct nand_chip *nand = mtd->priv;
-	struct mxs_nand_info *nand_info = nand->priv;
+	struct nand_chip *chip = mtd->priv;
+	struct mxs_nand_info *nand_info = chip->priv;
 	void __iomem *bch_regs = nand_info->bch_base;
 	int ret;
 
@@ -1346,13 +1346,13 @@ err1:
 
 static void mxs_nand_probe_dt(struct device_d *dev, struct mxs_nand_info *nand_info)
 {
-	struct nand_chip *nand = &nand_info->nand_chip;
+	struct nand_chip *chip = &nand_info->nand_chip;
 
 	if (!IS_ENABLED(CONFIG_OFTREE))
 		return;
 
 	if (of_get_nand_on_flash_bbt(dev->device_node))
-		nand->bbt_options |= NAND_BBT_USE_FLASH | NAND_BBT_NO_OOB;
+		chip->bbt_options |= NAND_BBT_USE_FLASH | NAND_BBT_NO_OOB;
 }
 
 /**
@@ -1433,7 +1433,7 @@ static int mxs_nand_compute_hardware_timing(struct mxs_nand_info *info,
 					struct gpmi_nfc_hardware_timing *hw)
 {
 	struct timing_threshold *nfc = &timing_default_threshold;
-	struct nand_chip *nand = &info->nand_chip;
+	struct nand_chip *chip = &info->nand_chip;
 	struct nand_timing target = info->timing;
 	unsigned long clock_frequency_in_hz;
 	unsigned int clock_period_in_ns;
@@ -1454,11 +1454,11 @@ static int mxs_nand_compute_hardware_timing(struct mxs_nand_info *info,
 	 * If there are multiple chips, we need to relax the timings to allow
 	 * for signal distortion due to higher capacitance.
 	 */
-	if (nand->numchips > 2) {
+	if (chip->numchips > 2) {
 		target.data_setup_in_ns    += 10;
 		target.data_hold_in_ns     += 10;
 		target.address_setup_in_ns += 10;
-	} else if (nand->numchips > 1) {
+	} else if (chip->numchips > 1) {
 		target.data_setup_in_ns    += 5;
 		target.data_hold_in_ns     += 5;
 		target.address_setup_in_ns += 5;
@@ -2004,7 +2004,7 @@ static void mxs_nand_compute_edo_timing(struct mxs_nand_info *info,
 
 static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
 {
-	struct nand_chip *nand = &info->nand_chip;
+	struct nand_chip *chip = &info->nand_chip;
 	struct mtd_info	 *mtd = &info->mtd;
 	uint8_t feature[ONFI_SUBFEATURE_PARAM_LEN] = {};
 	int ret, mode;
@@ -2012,10 +2012,10 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
 	if (!mxs_nand_is_imx6(info))
 		return -ENODEV;
 
-	if (!nand->onfi_version)
+	if (!chip->onfi_version)
 		return -ENOENT;
 
-	mode = onfi_get_async_timing_mode(nand);
+	mode = onfi_get_async_timing_mode(chip);
 
 	/* We only support the timing mode 4 and mode 5. */
 	if (mode & ONFI_TIMING_MODE_5)
@@ -2025,27 +2025,27 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
 	else
 		return -EINVAL;
 
-	nand->select_chip(mtd, 0);
+	chip->select_chip(mtd, 0);
 
-	if (le16_to_cpu(nand->onfi_params.opt_cmd)
+	if (le16_to_cpu(chip->onfi_params.opt_cmd)
 	      & ONFI_OPT_CMD_SET_GET_FEATURES) {
 
 		/* [1] send SET FEATURE commond to NAND */
 		feature[0] = mode;
 
-		ret = nand->onfi_set_features(mtd, nand,
+		ret = chip->onfi_set_features(mtd, chip,
 				ONFI_FEATURE_ADDR_TIMING_MODE, feature);
 		if (ret)
 			goto err_out;
 
 		/* [2] send GET FEATURE command to double-check the timing mode */
-		ret = nand->onfi_get_features(mtd, nand,
+		ret = chip->onfi_get_features(mtd, chip,
 				ONFI_FEATURE_ADDR_TIMING_MODE, feature);
 		if (ret || feature[0] != mode)
 			goto err_out;
 	}
 
-	nand->select_chip(mtd, -1);
+	chip->select_chip(mtd, -1);
 
 	/* [3] set the main IO clock, 100MHz for mode 5, 80MHz for mode 4. */
 	clk_disable(info->clk);
@@ -2057,7 +2057,7 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
 	return mode;
 
 err_out:
-	nand->select_chip(mtd, -1);
+	chip->select_chip(mtd, -1);
 
 	return -EINVAL;
 }
@@ -2112,7 +2112,7 @@ static int mxs_nand_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct mxs_nand_info *nand_info;
-	struct nand_chip *nand;
+	struct nand_chip *chip;
 	struct mtd_info *mtd;
 	enum gpmi_type type;
 	int err;
@@ -2168,35 +2168,35 @@ static int mxs_nand_probe(struct device_d *dev)
 	memset(&fake_ecc_layout, 0, sizeof(fake_ecc_layout));
 
 	/* structures must be linked */
-	nand = &nand_info->nand_chip;
+	chip = &nand_info->nand_chip;
 	mtd = &nand_info->mtd;
-	mtd->priv = nand;
+	mtd->priv = chip;
 	mtd->parent = dev;
 
-	nand->priv = nand_info;
+	chip->priv = nand_info;
 
-	nand->cmd_ctrl		= mxs_nand_cmd_ctrl;
+	chip->cmd_ctrl		= mxs_nand_cmd_ctrl;
 
-	nand->dev_ready		= mxs_nand_device_ready;
-	nand->select_chip	= mxs_nand_select_chip;
-	nand->block_bad		= mxs_nand_block_bad;
-	nand->scan_bbt		= mxs_nand_scan_bbt;
+	chip->dev_ready		= mxs_nand_device_ready;
+	chip->select_chip	= mxs_nand_select_chip;
+	chip->block_bad		= mxs_nand_block_bad;
+	chip->scan_bbt		= mxs_nand_scan_bbt;
 
-	nand->read_byte		= mxs_nand_read_byte;
+	chip->read_byte		= mxs_nand_read_byte;
 
-	nand->read_buf		= mxs_nand_read_buf;
-	nand->write_buf		= mxs_nand_write_buf;
+	chip->read_buf		= mxs_nand_read_buf;
+	chip->write_buf		= mxs_nand_write_buf;
 
-	nand->ecc.read_page	= mxs_nand_ecc_read_page;
-	nand->ecc.write_page	= mxs_nand_ecc_write_page;
-	nand->ecc.read_oob	= mxs_nand_ecc_read_oob;
-	nand->ecc.write_oob	= mxs_nand_ecc_write_oob;
+	chip->ecc.read_page	= mxs_nand_ecc_read_page;
+	chip->ecc.write_page	= mxs_nand_ecc_write_page;
+	chip->ecc.read_oob	= mxs_nand_ecc_read_oob;
+	chip->ecc.write_oob	= mxs_nand_ecc_write_oob;
 
-	nand->ecc.layout	= &fake_ecc_layout;
-	nand->ecc.mode		= NAND_ECC_HW;
-	nand->ecc.bytes		= 9;
-	nand->ecc.size		= 512;
-	nand->ecc.strength	= 8;
+	chip->ecc.layout	= &fake_ecc_layout;
+	chip->ecc.mode		= NAND_ECC_HW;
+	chip->ecc.bytes		= 9;
+	chip->ecc.size		= 512;
+	chip->ecc.strength	= 8;
 
 	/* first scan to find the device and get the page size */
 	err = nand_scan_ident(mtd, 4, NULL);
@@ -2204,11 +2204,11 @@ static int mxs_nand_probe(struct device_d *dev)
 		goto err2;
 
 	if ((13 * mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) % 8) == 0) {
-		nand->ecc.read_subpage = gpmi_ecc_read_subpage;
-		nand->options |= NAND_SUBPAGE_READ;
+		chip->ecc.read_subpage = gpmi_ecc_read_subpage;
+		chip->options |= NAND_SUBPAGE_READ;
 	}
 
-	nand->options |= NAND_NO_SUBPAGE_WRITE;
+	chip->options |= NAND_NO_SUBPAGE_WRITE;
 
 	mxs_nand_setup_timing(nand_info);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
