Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xL-00054D-57
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:39 +0100
Message-Id: <20201106133900.2656-6-s.hauer@pengutronix.de>
In-Reply-To: <20201106133900.2656-1-s.hauer@pengutronix.de>
References: <20201106133900.2656-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/26] mtd: nand: Pass struct nand_chip around
To: Barebox List <barebox@lists.infradead.org>

Traditionally Linux passed a struct mtd_info * around as context
between the different functions. This has been changed to a struct
nand_chip *. Do the same for barebox as well as another step towards
updating the NAND layer to current Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/atmel_nand.c     |  74 ++-
 drivers/mtd/nand/nand_base.c      | 806 +++++++++++++++---------------
 drivers/mtd/nand/nand_bbt.c       | 165 +++---
 drivers/mtd/nand/nand_bch.c       |  10 +-
 drivers/mtd/nand/nand_denali.c    |  80 +--
 drivers/mtd/nand/nand_ecc.c       |   4 +-
 drivers/mtd/nand/nand_imx.c       | 154 +++---
 drivers/mtd/nand/nand_mrvl_nfc.c  |  75 +--
 drivers/mtd/nand/nand_mxs.c       | 107 ++--
 drivers/mtd/nand/nand_omap_gpmc.c |  88 ++--
 drivers/mtd/nand/nand_orion.c     |  10 +-
 drivers/mtd/nand/nand_s3c24xx.c   |  43 +-
 drivers/mtd/nand/nomadik_nand.c   |  14 +-
 include/linux/mtd/nand.h          |  97 ++--
 include/linux/mtd/nand_bch.h      |  14 +-
 include/linux/mtd/nand_ecc.h      |   6 +-
 16 files changed, 845 insertions(+), 902 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index f3875a5648..e250df82d7 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -127,9 +127,8 @@ static void atmel_nand_disable(struct atmel_nand_host *host)
 /*
  * Hardware specific access to control-lines
  */
-static void atmel_nand_cmd_ctrl(struct mtd_info *mtd, int cmd, unsigned int ctrl)
+static void atmel_nand_cmd_ctrl(struct nand_chip *nand_chip, int cmd, unsigned int ctrl)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
 	struct atmel_nand_host *host = nand_chip->priv;
 
 	if (ctrl & NAND_CTRL_CHANGE) {
@@ -150,9 +149,8 @@ static void atmel_nand_cmd_ctrl(struct mtd_info *mtd, int cmd, unsigned int ctrl
 /*
  * Read the Device Ready pin.
  */
-static int atmel_nand_device_ready(struct mtd_info *mtd)
+static int atmel_nand_device_ready(struct nand_chip *nand_chip)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
 	struct atmel_nand_host *host = nand_chip->priv;
 
 	return gpio_get_value(host->board->rdy_pin);
@@ -161,31 +159,23 @@ static int atmel_nand_device_ready(struct mtd_info *mtd)
 /*
  * Minimal-overhead PIO for data access.
  */
-static void atmel_read_buf(struct mtd_info *mtd, u8 *buf, int len)
+static void atmel_read_buf(struct nand_chip *nand_chip, u8 *buf, int len)
 {
-	struct nand_chip	*nand_chip = mtd_to_nand(mtd);
-
 	readsb(nand_chip->IO_ADDR_R, buf, len);
 }
 
-static void atmel_read_buf16(struct mtd_info *mtd, u8 *buf, int len)
+static void atmel_read_buf16(struct nand_chip *nand_chip, u8 *buf, int len)
 {
-	struct nand_chip	*nand_chip = mtd_to_nand(mtd);
-
 	readsw(nand_chip->IO_ADDR_R, buf, len / 2);
 }
 
-static void atmel_write_buf(struct mtd_info *mtd, const u8 *buf, int len)
+static void atmel_write_buf(struct nand_chip *nand_chip, const u8 *buf, int len)
 {
-	struct nand_chip	*nand_chip = mtd_to_nand(mtd);
-
 	writesb(nand_chip->IO_ADDR_W, buf, len);
 }
 
-static void atmel_write_buf16(struct mtd_info *mtd, const u8 *buf, int len)
+static void atmel_write_buf16(struct nand_chip *nand_chip, const u8 *buf, int len)
 {
-	struct nand_chip	*nand_chip = mtd_to_nand(mtd);
-
 	writesw(nand_chip->IO_ADDR_W, buf, len / 2);
 }
 
@@ -627,9 +617,10 @@ normal_check:
 	return 0;
 }
 
-static int atmel_nand_pmecc_read_page(struct mtd_info *mtd,
-		struct nand_chip *chip, uint8_t *buf, int oob_required, int page)
+static int atmel_nand_pmecc_read_page(struct nand_chip *chip, uint8_t *buf,
+				      int oob_required, int page)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct atmel_nand_host *host = chip->priv;
 	int eccsize = chip->ecc.size;
 	uint8_t *oob = chip->oob_poi;
@@ -645,8 +636,8 @@ static int atmel_nand_pmecc_read_page(struct mtd_info *mtd,
 	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_ENABLE);
 	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_DATA);
 
-	chip->read_buf(mtd, buf, eccsize);
-	chip->read_buf(mtd, oob, mtd->oobsize);
+	chip->read_buf(chip, buf, eccsize);
+	chip->read_buf(chip, oob, mtd->oobsize);
 
 	ret = wait_on_timeout(PMECC_MAX_TIMEOUT_MS,
 		!(pmecc_readl_relaxed(host->ecc, SR) & PMECC_SR_BUSY));
@@ -663,10 +654,10 @@ static int atmel_nand_pmecc_read_page(struct mtd_info *mtd,
 	return 0;
 }
 
-static int atmel_nand_pmecc_write_page(struct mtd_info *mtd,
-		struct nand_chip *chip, const uint8_t *buf,
-		int oob_required)
+static int atmel_nand_pmecc_write_page(struct nand_chip *chip, const uint8_t *buf,
+				       int oob_required)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct atmel_nand_host *host = chip->priv;
 	uint32_t *eccpos = chip->ecc.layout->eccpos;
 	int i, j, ret;
@@ -680,7 +671,7 @@ static int atmel_nand_pmecc_write_page(struct mtd_info *mtd,
 	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_ENABLE);
 	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_DATA);
 
-	chip->write_buf(mtd, (u8 *)buf, mtd->writesize);
+	chip->write_buf(chip, (u8 *)buf, mtd->writesize);
 
 	ret = wait_on_timeout(PMECC_MAX_TIMEOUT_MS,
 		!(pmecc_readl_relaxed(host->ecc, SR) & PMECC_SR_BUSY));
@@ -698,7 +689,7 @@ static int atmel_nand_pmecc_write_page(struct mtd_info *mtd,
 				pmecc_readb_ecc_relaxed(host->ecc, i, j);
 		}
 	}
-	chip->write_buf(mtd, chip->oob_poi, mtd->oobsize);
+	chip->write_buf(chip, chip->oob_poi, mtd->oobsize);
 
 	return 0;
 }
@@ -979,10 +970,9 @@ static int __init atmel_pmecc_nand_init_params(struct device_d *dev,
  * dat:        raw data (unused)
  * ecc_code:   buffer for ECC
  */
-static int atmel_nand_calculate(struct mtd_info *mtd,
+static int atmel_nand_calculate(struct nand_chip *nand_chip,
 		const u_char *dat, unsigned char *ecc_code)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
 	struct atmel_nand_host *host = nand_chip->priv;
 	unsigned int ecc_value;
 
@@ -1008,9 +998,10 @@ static int atmel_nand_calculate(struct mtd_info *mtd,
  * chip:       nand chip info structure
  * buf:        buffer to store read data
  */
-static int atmel_nand_read_page(struct mtd_info *mtd,
-		struct nand_chip *chip, uint8_t *buf, int oob_required, int page)
+static int atmel_nand_read_page(struct nand_chip *chip, uint8_t *buf,
+				int oob_required, int page)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int eccsize = chip->ecc.size;
 	int eccbytes = chip->ecc.bytes;
 	uint32_t *eccpos = chip->ecc.layout->eccpos;
@@ -1035,7 +1026,7 @@ static int atmel_nand_read_page(struct mtd_info *mtd,
 #endif
 
 	/* read the page */
-	chip->read_buf(mtd, p, eccsize);
+	chip->read_buf(chip, p, eccsize);
 
 	/* move to ECC position if needed */
 	if (eccpos[0] != 0) {
@@ -1045,16 +1036,16 @@ static int atmel_nand_read_page(struct mtd_info *mtd,
 		 * NAND_CMD_RNDOUT.
 		 * anyway, for small pages, the eccpos[0] == 0
 		 */
-		chip->cmdfunc(mtd, NAND_CMD_RNDOUT,
+		chip->cmdfunc(chip, NAND_CMD_RNDOUT,
 				mtd->writesize + eccpos[0], -1);
 	}
 
 	/* the ECC controller needs to read the ECC just after the data */
 	ecc_pos = oob + eccpos[0];
-	chip->read_buf(mtd, ecc_pos, eccbytes);
+	chip->read_buf(chip, ecc_pos, eccbytes);
 
 	/* check if there's an error */
-	stat = chip->ecc.correct(mtd, p, oob, NULL);
+	stat = chip->ecc.correct(chip, p, oob, NULL);
 
 	if (stat < 0)
 		mtd->ecc_stats.failed++;
@@ -1062,10 +1053,10 @@ static int atmel_nand_read_page(struct mtd_info *mtd,
 		mtd->ecc_stats.corrected += stat;
 
 	/* get back to oob start (end of page) */
-	chip->cmdfunc(mtd, NAND_CMD_RNDOUT, mtd->writesize, -1);
+	chip->cmdfunc(chip, NAND_CMD_RNDOUT, mtd->writesize, -1);
 
 	/* read the oob */
-	chip->read_buf(mtd, oob, mtd->oobsize);
+	chip->read_buf(chip, oob, mtd->oobsize);
 
 	return 0;
 }
@@ -1082,10 +1073,9 @@ static int atmel_nand_read_page(struct mtd_info *mtd,
  *
  * Detect and correct a 1 bit error for a page
  */
-static int atmel_nand_correct(struct mtd_info *mtd, u_char *dat,
+static int atmel_nand_correct(struct nand_chip *nand_chip, u_char *dat,
 		u_char *read_ecc, u_char *isnull)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
 	struct atmel_nand_host *host = nand_chip->priv;
 	unsigned int ecc_status;
 	unsigned int ecc_word, ecc_bit;
@@ -1149,7 +1139,7 @@ static int atmel_nand_correct(struct mtd_info *mtd, u_char *dat,
 /*
  * Enable HW ECC : unused on most chips
  */
-static void atmel_nand_hwctl(struct mtd_info *mtd, int mode)
+static void atmel_nand_hwctl(struct nand_chip *nand_chip, int mode)
 {
 #if 0
 	if (cpu_is_at32ap7000()) {
@@ -1442,7 +1432,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 
 
 	/* first scan to find the device and get the page size */
-	if (nand_scan_ident(mtd, 1, NULL)) {
+	if (nand_scan_ident(nand_chip, 1, NULL)) {
 		res = -ENXIO;
 		goto err_scan_ident;
 	}
@@ -1459,17 +1449,17 @@ static int __init atmel_nand_probe(struct device_d *dev)
 	}
 
 	/* second phase scan */
-	if (nand_scan_tail(mtd)) {
+	if (nand_scan_tail(nand_chip)) {
 		res = -ENXIO;
 		goto err_scan_tail;
 	}
 
-	add_mtd_nand_device(mtd, "nand");
+	add_mtd_nand_device(nand_chip, "nand");
 
 	if (!res)
 		return res;
 
-	nand_release(mtd);
+	nand_release(nand_chip);
 err_scan_tail:
 err_hw_ecc:
 err_scan_ident:
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 064b36201e..ef0b15d64e 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -89,15 +89,14 @@ static struct nand_ecclayout nand_oob_128 = {
 		 .length = 78} }
 };
 
-static int nand_get_device(struct mtd_info *mtd, int new_state);
+static int nand_get_device(struct nand_chip *chip, int new_state);
 
-static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
+static int nand_do_write_oob(struct nand_chip *chip, loff_t to,
 			     struct mtd_oob_ops *ops);
 
-static int check_offs_len(struct mtd_info *mtd,
+static int check_offs_len(struct nand_chip *chip,
 					loff_t ofs, uint64_t len)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	int ret = 0;
 
 	/* Start address must align on block boundary */
@@ -121,10 +120,8 @@ static int check_offs_len(struct mtd_info *mtd,
  *
  * Release chip lock and wake up anyone waiting on the device.
  */
-static void nand_release_device(struct mtd_info *mtd)
+static void nand_release_device(struct nand_chip *chip)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
-
 	/* Release the controller and the chip */
 	chip->controller->active = NULL;
 	chip->state = FL_READY;
@@ -136,9 +133,8 @@ static void nand_release_device(struct mtd_info *mtd)
  *
  * Default read function for 8bit buswidth
  */
-static uint8_t nand_read_byte(struct mtd_info *mtd)
+static uint8_t nand_read_byte(struct nand_chip *chip)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	return readb(chip->IO_ADDR_R);
 }
 
@@ -150,9 +146,8 @@ static uint8_t nand_read_byte(struct mtd_info *mtd)
  * Default read function for 16bit buswidth with endianness conversion.
  *
  */
-static uint8_t nand_read_byte16(struct mtd_info *mtd)
+static uint8_t nand_read_byte16(struct nand_chip *chip)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	return (uint8_t) cpu_to_le16(readw(chip->IO_ADDR_R));
 }
 
@@ -162,9 +157,8 @@ static uint8_t nand_read_byte16(struct mtd_info *mtd)
  *
  * Default read function for 16bit buswidth without endianness conversion.
  */
-static u16 nand_read_word(struct mtd_info *mtd)
+static u16 nand_read_word(struct nand_chip *chip)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	return readw(chip->IO_ADDR_R);
 }
 
@@ -175,13 +169,11 @@ static u16 nand_read_word(struct mtd_info *mtd)
  *
  * Default select function for 1 chip devices.
  */
-static void nand_select_chip(struct mtd_info *mtd, int chipnr)
+static void nand_select_chip(struct nand_chip *chip, int chipnr)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
-
 	switch (chipnr) {
 	case -1:
-		chip->cmd_ctrl(mtd, NAND_CMD_NONE, 0 | NAND_CTRL_CHANGE);
+		chip->cmd_ctrl(chip, NAND_CMD_NONE, 0 | NAND_CTRL_CHANGE);
 		break;
 	case 0:
 		break;
@@ -199,11 +191,10 @@ static void nand_select_chip(struct mtd_info *mtd, int chipnr)
  *
  * Default write function for 8bit buswidth.
  */
-static __maybe_unused void nand_write_buf(struct mtd_info *mtd,
+static __maybe_unused void nand_write_buf(struct nand_chip *chip,
 		const uint8_t *buf, int len)
 {
 	int i;
-	struct nand_chip *chip = mtd_to_nand(mtd);
 
 	for (i = 0; i < len; i++)
 		writeb(buf[i], chip->IO_ADDR_W);
@@ -217,10 +208,9 @@ static __maybe_unused void nand_write_buf(struct mtd_info *mtd,
  *
  * Default read function for 8bit buswidth.
  */
-static void nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
+static void nand_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
 {
 	int i;
-	struct nand_chip *chip = mtd_to_nand(mtd);
 
 	for (i = 0; i < len; i++)
 		buf[i] = readb(chip->IO_ADDR_R);
@@ -234,11 +224,10 @@ static void nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
  *
  * Default write function for 16bit buswidth.
  */
-static __maybe_unused void nand_write_buf16(struct mtd_info *mtd,
+static __maybe_unused void nand_write_buf16(struct nand_chip *chip,
 		const uint8_t *buf, int len)
 {
 	int i;
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	u16 *p = (u16 *) buf;
 	len >>= 1;
 
@@ -255,10 +244,9 @@ static __maybe_unused void nand_write_buf16(struct mtd_info *mtd,
  *
  * Default read function for 16bit buswidth.
  */
-static void nand_read_buf16(struct mtd_info *mtd, uint8_t *buf, int len)
+static void nand_read_buf16(struct nand_chip *chip, uint8_t *buf, int len)
 {
 	int i;
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	u16 *p = (u16 *) buf;
 	len >>= 1;
 
@@ -274,53 +262,52 @@ static void nand_read_buf16(struct mtd_info *mtd, uint8_t *buf, int len)
  *
  * Check, if the block is bad.
  */
-static int nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
+static int nand_block_bad(struct nand_chip *chip, loff_t ofs, int getchip)
 {
 	int page, chipnr, res = 0, i = 0;
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	u16 bad;
 
 	if (chip->bbt_options & NAND_BBT_SCANLASTPAGE)
-		ofs += mtd->erasesize - mtd->writesize;
+		ofs += chip->mtd.erasesize - chip->mtd.writesize;
 
 	page = (int)(ofs >> chip->page_shift) & chip->pagemask;
 
 	if (getchip) {
 		chipnr = (int)(ofs >> chip->chip_shift);
 
-		nand_get_device(mtd, FL_READING);
+		nand_get_device(chip, FL_READING);
 
 		/* Select the NAND device */
-		chip->select_chip(mtd, chipnr);
+		chip->select_chip(chip, chipnr);
 	}
 
 	do {
 		if (chip->options & NAND_BUSWIDTH_16) {
-			chip->cmdfunc(mtd, NAND_CMD_READOOB,
+			chip->cmdfunc(chip, NAND_CMD_READOOB,
 					chip->badblockpos & 0xFE, page);
-			bad = cpu_to_le16(chip->read_word(mtd));
+			bad = cpu_to_le16(chip->read_word(chip));
 			if (chip->badblockpos & 0x1)
 				bad >>= 8;
 			else
 				bad &= 0xFF;
 		} else {
-			chip->cmdfunc(mtd, NAND_CMD_READOOB, chip->badblockpos,
+			chip->cmdfunc(chip, NAND_CMD_READOOB, chip->badblockpos,
 					page);
-			bad = chip->read_byte(mtd);
+			bad = chip->read_byte(chip);
 		}
 
 		if (likely(chip->badblockbits == 8))
 			res = bad != 0xFF;
 		else
 			res = hweight8(bad) < chip->badblockbits;
-		ofs += mtd->writesize;
+		ofs += chip->mtd.writesize;
 		page = (int)(ofs >> chip->page_shift) & chip->pagemask;
 		i++;
 	} while (!res && i < 2 && (chip->bbt_options & NAND_BBT_SCAN2NDPAGE));
 
 	if (getchip) {
-		chip->select_chip(mtd, -1);
-		nand_release_device(mtd);
+		chip->select_chip(chip, -1);
+		nand_release_device(chip);
 	}
 
 	return res;
@@ -335,9 +322,8 @@ static int nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
  * specific driver. It provides the details for writing a bad block marker to a
  * block.
  */
-static __maybe_unused int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
+static __maybe_unused int nand_default_block_markbad(struct nand_chip *chip, loff_t ofs)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct mtd_oob_ops ops;
 	uint8_t buf[2] = { 0, 0 };
 	int ret = 0, res, i = 0;
@@ -355,14 +341,14 @@ static __maybe_unused int nand_default_block_markbad(struct mtd_info *mtd, loff_
 
 	/* Write to first/last page(s) if necessary */
 	if (chip->bbt_options & NAND_BBT_SCANLASTPAGE)
-		ofs += mtd->erasesize - mtd->writesize;
+		ofs += chip->mtd.erasesize - chip->mtd.writesize;
 	do {
-		res = nand_do_write_oob(mtd, ofs, &ops);
+		res = nand_do_write_oob(chip, ofs, &ops);
 		if (!ret)
 			ret = res;
 
 		i++;
-		ofs += mtd->writesize;
+		ofs += chip->mtd.writesize;
 	} while ((chip->bbt_options & NAND_BBT_SCAN2NDPAGE) && i < 2);
 
 	return ret;
@@ -385,9 +371,8 @@ static __maybe_unused int nand_default_block_markbad(struct mtd_info *mtd, loff_
  * Note that we retain the first error encountered in (2) or (3), finish the
  * procedures, and dump the error in the end.
  */
-static int nand_block_markbad_lowlevel(struct mtd_info *mtd, loff_t ofs)
+static int nand_block_markbad_lowlevel(struct nand_chip *chip, loff_t ofs)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	int res, ret = 0;
 
 	if (!(chip->bbt_options & NAND_BBT_NO_OOB_BBM)) {
@@ -395,26 +380,26 @@ static int nand_block_markbad_lowlevel(struct mtd_info *mtd, loff_t ofs)
 
 		/* Attempt erase before marking OOB */
 		memset(&einfo, 0, sizeof(einfo));
-		einfo.mtd = mtd;
+		einfo.mtd = &chip->mtd;
 		einfo.addr = ofs;
 		einfo.len = 1 << chip->phys_erase_shift;
-		nand_erase_nand(mtd, &einfo, 0);
+		nand_erase_nand(chip, &einfo, 0);
 
 		/* Write bad block marker to OOB */
-		nand_get_device(mtd, FL_WRITING);
-		ret = chip->block_markbad(mtd, ofs);
-		nand_release_device(mtd);
+		nand_get_device(chip, FL_WRITING);
+		ret = chip->block_markbad(chip, ofs);
+		nand_release_device(chip);
 	}
 
 	/* Mark block bad in BBT */
 	if (IS_ENABLED(CONFIG_NAND_BBT) && chip->bbt) {
-		res = nand_markbad_bbt(mtd, ofs);
+		res = nand_markbad_bbt(chip, ofs);
 		if (!ret)
 			ret = res;
 	}
 
 	if (!ret)
-		mtd->ecc_stats.badblocks++;
+		chip->mtd.ecc_stats.badblocks++;
 
 	return ret;
 }
@@ -429,9 +414,8 @@ static int nand_block_markbad_lowlevel(struct mtd_info *mtd, loff_t ofs)
  *  (2) check bad block marker
  *  (3) update the BBT
  */
-static int nand_block_markgood_lowlevel(struct mtd_info *mtd, loff_t ofs)
+static int nand_block_markgood_lowlevel(struct nand_chip *chip, loff_t ofs)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	bool allow_erasebad;
 	int ret;
 
@@ -439,33 +423,33 @@ static int nand_block_markgood_lowlevel(struct mtd_info *mtd, loff_t ofs)
 		struct erase_info einfo;
 
 		/* Attempt erase possibly bad block */
-		allow_erasebad = mtd->allow_erasebad;
-		mtd->allow_erasebad = true;
+		allow_erasebad = chip->mtd.allow_erasebad;
+		chip->mtd.allow_erasebad = true;
 		memset(&einfo, 0, sizeof(einfo));
-		einfo.mtd = mtd;
+		einfo.mtd = &chip->mtd;
 		einfo.addr = ofs;
 		einfo.len = 1 << chip->phys_erase_shift;
-		nand_erase_nand(mtd, &einfo, 0);
-		mtd->allow_erasebad = allow_erasebad;
+		nand_erase_nand(chip, &einfo, 0);
+		chip->mtd.allow_erasebad = allow_erasebad;
 
 		/*
 		 * Verify erase succeded. We need to select chip again,
 		 * as nand_erase_nand deselected it.
 		 */
-		ret = chip->block_bad(mtd, ofs, 1);
+		ret = chip->block_bad(chip, ofs, 1);
 		if (ret)
 			return ret;
 	}
 
 	/* Mark block good in BBT */
 	if (IS_ENABLED(CONFIG_NAND_BBT) && chip->bbt) {
-		ret = nand_markgood_bbt(mtd, ofs);
+		ret = nand_markgood_bbt(chip, ofs);
 		if (ret)
 			return ret;
 	}
 
-	if (mtd->ecc_stats.badblocks > 0)
-		mtd->ecc_stats.badblocks--;
+	if (chip->mtd.ecc_stats.badblocks > 0)
+		chip->mtd.ecc_stats.badblocks--;
 
 	return 0;
 }
@@ -477,17 +461,15 @@ static int nand_block_markgood_lowlevel(struct mtd_info *mtd, loff_t ofs)
  * Check, if the device is write protected. The function expects, that the
  * device is already selected.
  */
-static int nand_check_wp(struct mtd_info *mtd)
+static int nand_check_wp(struct nand_chip *chip)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
-
 	/* Broken xD cards report WP despite being writable */
 	if (chip->options & NAND_BROKEN_XD)
 		return 0;
 
 	/* Check the WP bit */
-	chip->cmdfunc(mtd, NAND_CMD_STATUS, -1, -1);
-	return (chip->read_byte(mtd) & NAND_STATUS_WP) ? 0 : 1;
+	chip->cmdfunc(chip, NAND_CMD_STATUS, -1, -1);
+	return (chip->read_byte(chip) & NAND_STATUS_WP) ? 0 : 1;
 }
 
 /**
@@ -500,28 +482,25 @@ static int nand_check_wp(struct mtd_info *mtd)
  * Check, if the block is bad. Either by reading the bad block table or
  * calling of the scan function.
  */
-static int nand_block_checkbad(struct mtd_info *mtd, loff_t ofs, int getchip,
+static int nand_block_checkbad(struct nand_chip *chip, loff_t ofs, int getchip,
 			       int allowbbt)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
-
 	if (IS_ENABLED(CONFIG_NAND_BBT) && chip->bbt) {
 		/* Return info from the table */
-		return nand_isbad_bbt(mtd, ofs, allowbbt);
+		return nand_isbad_bbt(chip, ofs, allowbbt);
 	}
 
-	return chip->block_bad(mtd, ofs, getchip);
+	return chip->block_bad(chip, ofs, getchip);
 }
 
 /* Wait for the ready pin, after a command. The timeout is caught later. */
-void nand_wait_ready(struct mtd_info *mtd)
+void nand_wait_ready(struct nand_chip *chip)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	uint64_t start = get_time_ns();
 
 	/* wait until command is processed or timeout occures */
 	do {
-		if (chip->dev_ready(mtd))
+		if (chip->dev_ready(chip))
 			break;
 	} while (!is_timeout(start, SECOND * 2));
 }
@@ -536,19 +515,18 @@ void nand_wait_ready(struct mtd_info *mtd)
  * Send command to NAND device. This function is used for small page devices
  * (512 Bytes per page).
  */
-static void nand_command(struct mtd_info *mtd, unsigned int command,
+static void nand_command(struct nand_chip *chip, unsigned int command,
 			 int column, int page_addr)
 {
-	register struct nand_chip *chip = mtd_to_nand(mtd);
 	int ctrl = NAND_CTRL_CLE | NAND_CTRL_CHANGE;
 
 	/* Write out the command to the device */
 	if (IS_ENABLED(CONFIG_MTD_WRITE) && command == NAND_CMD_SEQIN) {
 		int readcmd;
 
-		if (column >= mtd->writesize) {
+		if (column >= chip->mtd.writesize) {
 			/* OOB area */
-			column -= mtd->writesize;
+			column -= chip->mtd.writesize;
 			readcmd = NAND_CMD_READOOB;
 		} else if (column < 256) {
 			/* First 256 bytes --> READ0 */
@@ -557,10 +535,10 @@ static void nand_command(struct mtd_info *mtd, unsigned int command,
 			column -= 256;
 			readcmd = NAND_CMD_READ1;
 		}
-		chip->cmd_ctrl(mtd, readcmd, ctrl);
+		chip->cmd_ctrl(chip, readcmd, ctrl);
 		ctrl &= ~NAND_CTRL_CHANGE;
 	}
-	chip->cmd_ctrl(mtd, command, ctrl);
+	chip->cmd_ctrl(chip, command, ctrl);
 
 	/* Address cycle, when necessary */
 	ctrl = NAND_CTRL_ALE | NAND_CTRL_CHANGE;
@@ -569,18 +547,18 @@ static void nand_command(struct mtd_info *mtd, unsigned int command,
 		/* Adjust columns for 16 bit buswidth */
 		if (chip->options & NAND_BUSWIDTH_16)
 			column >>= 1;
-		chip->cmd_ctrl(mtd, column, ctrl);
+		chip->cmd_ctrl(chip, column, ctrl);
 		ctrl &= ~NAND_CTRL_CHANGE;
 	}
 	if (page_addr != -1) {
-		chip->cmd_ctrl(mtd, page_addr, ctrl);
+		chip->cmd_ctrl(chip, page_addr, ctrl);
 		ctrl &= ~NAND_CTRL_CHANGE;
-		chip->cmd_ctrl(mtd, page_addr >> 8, ctrl);
+		chip->cmd_ctrl(chip, page_addr >> 8, ctrl);
 		/* One more address cycle for devices > 32MiB */
 		if (chip->chipsize > (32 << 20))
-			chip->cmd_ctrl(mtd, page_addr >> 16, ctrl);
+			chip->cmd_ctrl(chip, page_addr >> 16, ctrl);
 	}
-	chip->cmd_ctrl(mtd, NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
+	chip->cmd_ctrl(chip, NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
 
 	/*
 	 * Program and erase have their own busy handlers status and sequential
@@ -599,11 +577,11 @@ static void nand_command(struct mtd_info *mtd, unsigned int command,
 		if (chip->dev_ready)
 			break;
 		udelay(chip->chip_delay);
-		chip->cmd_ctrl(mtd, NAND_CMD_STATUS,
+		chip->cmd_ctrl(chip, NAND_CMD_STATUS,
 			       NAND_CTRL_CLE | NAND_CTRL_CHANGE);
-		chip->cmd_ctrl(mtd,
+		chip->cmd_ctrl(chip,
 			       NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
-		while (!(chip->read_byte(mtd) & NAND_STATUS_READY))
+		while (!(chip->read_byte(chip) & NAND_STATUS_READY))
 				;
 		return;
 
@@ -624,7 +602,7 @@ static void nand_command(struct mtd_info *mtd, unsigned int command,
 	 */
 	ndelay(100);
 
-	nand_wait_ready(mtd);
+	nand_wait_ready(chip);
 }
 
 /**
@@ -638,19 +616,17 @@ static void nand_command(struct mtd_info *mtd, unsigned int command,
  * devices. We don't have the separate regions as we have in the small page
  * devices. We must emulate NAND_CMD_READOOB to keep the code compatible.
  */
-static void nand_command_lp(struct mtd_info *mtd, unsigned int command,
+static void nand_command_lp(struct nand_chip *chip, unsigned int command,
 			    int column, int page_addr)
 {
-	register struct nand_chip *chip = mtd_to_nand(mtd);
-
 	/* Emulate NAND_CMD_READOOB */
 	if (command == NAND_CMD_READOOB) {
-		column += mtd->writesize;
+		column += chip->mtd.writesize;
 		command = NAND_CMD_READ0;
 	}
 
 	/* Command latch cycle */
-	chip->cmd_ctrl(mtd, command, NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
+	chip->cmd_ctrl(chip, command, NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
 
 	if (column != -1 || page_addr != -1) {
 		int ctrl = NAND_CTRL_CHANGE | NAND_NCE | NAND_ALE;
@@ -660,21 +636,21 @@ static void nand_command_lp(struct mtd_info *mtd, unsigned int command,
 			/* Adjust columns for 16 bit buswidth */
 			if (chip->options & NAND_BUSWIDTH_16)
 				column >>= 1;
-			chip->cmd_ctrl(mtd, column, ctrl);
+			chip->cmd_ctrl(chip, column, ctrl);
 			ctrl &= ~NAND_CTRL_CHANGE;
-			chip->cmd_ctrl(mtd, column >> 8, ctrl);
+			chip->cmd_ctrl(chip, column >> 8, ctrl);
 		}
 		if (page_addr != -1) {
-			chip->cmd_ctrl(mtd, page_addr, ctrl);
-			chip->cmd_ctrl(mtd, page_addr >> 8,
+			chip->cmd_ctrl(chip, page_addr, ctrl);
+			chip->cmd_ctrl(chip, page_addr >> 8,
 				       NAND_NCE | NAND_ALE);
 			/* One more address cycle for devices > 128MiB */
 			if (chip->chipsize > (128 << 20))
-				chip->cmd_ctrl(mtd, page_addr >> 16,
+				chip->cmd_ctrl(chip, page_addr >> 16,
 					       NAND_NCE | NAND_ALE);
 		}
 	}
-	chip->cmd_ctrl(mtd, NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
+	chip->cmd_ctrl(chip, NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
 
 	/*
 	 * Program and erase have their own busy handlers status, sequential
@@ -695,26 +671,26 @@ static void nand_command_lp(struct mtd_info *mtd, unsigned int command,
 		if (chip->dev_ready)
 			break;
 		udelay(chip->chip_delay);
-		chip->cmd_ctrl(mtd, NAND_CMD_STATUS,
+		chip->cmd_ctrl(chip, NAND_CMD_STATUS,
 			       NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
-		chip->cmd_ctrl(mtd, NAND_CMD_NONE,
+		chip->cmd_ctrl(chip, NAND_CMD_NONE,
 			       NAND_NCE | NAND_CTRL_CHANGE);
-		while (!(chip->read_byte(mtd) & NAND_STATUS_READY))
+		while (!(chip->read_byte(chip) & NAND_STATUS_READY))
 				;
 		return;
 
 	case NAND_CMD_RNDOUT:
 		/* No ready / busy check necessary */
-		chip->cmd_ctrl(mtd, NAND_CMD_RNDOUTSTART,
+		chip->cmd_ctrl(chip, NAND_CMD_RNDOUTSTART,
 			       NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
-		chip->cmd_ctrl(mtd, NAND_CMD_NONE,
+		chip->cmd_ctrl(chip, NAND_CMD_NONE,
 			       NAND_NCE | NAND_CTRL_CHANGE);
 		return;
 
 	case NAND_CMD_READ0:
-		chip->cmd_ctrl(mtd, NAND_CMD_READSTART,
+		chip->cmd_ctrl(chip, NAND_CMD_READSTART,
 			       NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
-		chip->cmd_ctrl(mtd, NAND_CMD_NONE,
+		chip->cmd_ctrl(chip, NAND_CMD_NONE,
 			       NAND_NCE | NAND_CTRL_CHANGE);
 
 		/* This applies to read commands */
@@ -735,7 +711,7 @@ static void nand_command_lp(struct mtd_info *mtd, unsigned int command,
 	 */
 	ndelay(100);
 
-	nand_wait_ready(mtd);
+	nand_wait_ready(chip);
 }
 
 /**
@@ -746,9 +722,8 @@ static void nand_command_lp(struct mtd_info *mtd, unsigned int command,
  * Get the device and lock it for exclusive access
  */
 static int
-nand_get_device(struct mtd_info *mtd, int new_state)
+nand_get_device(struct nand_chip *chip, int new_state)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 retry:
 
 	/* Hardware controller shared among independent devices */
@@ -777,7 +752,7 @@ retry:
  * Erase can take up to 400ms and program up to 20ms according to
  * general NAND and SmartMedia specs
  */
-static int nand_wait(struct mtd_info *mtd, struct nand_chip *chip)
+static int nand_wait(struct nand_chip *chip)
 {
 
 	uint64_t start = get_time_ns();
@@ -793,19 +768,19 @@ static int nand_wait(struct mtd_info *mtd, struct nand_chip *chip)
 	 * any case on any machine. */
 	ndelay(100);
 
-	chip->cmdfunc(mtd, NAND_CMD_STATUS, -1, -1);
+	chip->cmdfunc(chip, NAND_CMD_STATUS, -1, -1);
 
 	while (!is_timeout(start, timeo)) {
 		if (chip->dev_ready) {
-			if (chip->dev_ready(mtd))
+			if (chip->dev_ready(chip))
 				break;
 		} else {
-			if (chip->read_byte(mtd) & NAND_STATUS_READY)
+			if (chip->read_byte(chip) & NAND_STATUS_READY)
 				break;
 		}
 	}
 
-	status = (int)chip->read_byte(mtd);
+	status = (int)chip->read_byte(chip);
 	return status;
 }
 
@@ -821,24 +796,23 @@ static int nand_wait(struct mtd_info *mtd, struct nand_chip *chip)
  *
  * Returs unlock status.
  */
-static int __nand_unlock(struct mtd_info *mtd, loff_t ofs,
+static int __nand_unlock(struct nand_chip *chip, loff_t ofs,
 					uint64_t len, int invert)
 {
 	int ret = 0;
 	int status, page;
-	struct nand_chip *chip = mtd_to_nand(mtd);
 
 	/* Submit address of first page to unlock */
 	page = ofs >> chip->page_shift;
-	chip->cmdfunc(mtd, NAND_CMD_UNLOCK1, -1, page & chip->pagemask);
+	chip->cmdfunc(chip, NAND_CMD_UNLOCK1, -1, page & chip->pagemask);
 
 	/* Submit address of last page to unlock */
 	page = (ofs + len) >> chip->page_shift;
-	chip->cmdfunc(mtd, NAND_CMD_UNLOCK2, -1,
+	chip->cmdfunc(chip, NAND_CMD_UNLOCK2, -1,
 				(page | invert) & chip->pagemask);
 
 	/* Call wait ready function */
-	status = chip->waitfunc(mtd, chip);
+	status = chip->waitfunc(chip);
 	/* See if device thinks it succeeded */
 	if (status & NAND_STATUS_FAIL) {
 		pr_debug("%s: error status = 0x%08x\n",
@@ -857,28 +831,28 @@ static int __nand_unlock(struct mtd_info *mtd, loff_t ofs,
  *
  * Returns unlock status.
  */
-int nand_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
+int nand_unlock(struct nand_chip *chip, loff_t ofs, uint64_t len)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int ret = 0;
 	int chipnr;
-	struct nand_chip *chip = mtd_to_nand(mtd);
 
 	pr_debug("%s: start = 0x%012llx, len = %llu\n",
 			__func__, (unsigned long long)ofs, len);
 
-	if (check_offs_len(mtd, ofs, len))
+	if (check_offs_len(chip, ofs, len))
 		ret = -EINVAL;
 
 	/* Align to last block address if size addresses end of the device */
 	if (ofs + len == mtd->size)
 		len -= mtd->erasesize;
 
-	nand_get_device(mtd, FL_UNLOCKING);
+	nand_get_device(chip, FL_UNLOCKING);
 
 	/* Shift to get chip number */
 	chipnr = ofs >> chip->chip_shift;
 
-	chip->select_chip(mtd, chipnr);
+	chip->select_chip(chip, chipnr);
 
 	/*
 	 * Reset the chip.
@@ -887,21 +861,21 @@ int nand_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	 * some operation can also clear the bit 7 of status register
 	 * eg. erase/program a locked block
 	 */
-	chip->cmdfunc(mtd, NAND_CMD_RESET, -1, -1);
+	chip->cmdfunc(chip, NAND_CMD_RESET, -1, -1);
 
 	/* Check, if it is write protected */
-	if (nand_check_wp(mtd)) {
+	if (nand_check_wp(chip)) {
 		pr_debug("%s: device is write protected!\n",
 					__func__);
 		ret = -EIO;
 		goto out;
 	}
 
-	ret = __nand_unlock(mtd, ofs, len, 0);
+	ret = __nand_unlock(chip, ofs, len, 0);
 
 out:
-	chip->select_chip(mtd, -1);
-	nand_release_device(mtd);
+	chip->select_chip(chip, -1);
+	nand_release_device(chip);
 
 	return ret;
 }
@@ -920,24 +894,23 @@ EXPORT_SYMBOL(nand_unlock);
  *
  * Returns lock status.
  */
-int nand_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
+int nand_lock(struct nand_chip *chip, loff_t ofs, uint64_t len)
 {
 	int ret = 0;
 	int chipnr, status, page;
-	struct nand_chip *chip = mtd_to_nand(mtd);
 
 	pr_debug("%s: start = 0x%012llx, len = %llu\n",
 			__func__, (unsigned long long)ofs, len);
 
-	if (check_offs_len(mtd, ofs, len))
+	if (check_offs_len(chip, ofs, len))
 		ret = -EINVAL;
 
-	nand_get_device(mtd, FL_LOCKING);
+	nand_get_device(chip, FL_LOCKING);
 
 	/* Shift to get chip number */
 	chipnr = ofs >> chip->chip_shift;
 
-	chip->select_chip(mtd, chipnr);
+	chip->select_chip(chip, chipnr);
 
 	/*
 	 * Reset the chip.
@@ -946,10 +919,10 @@ int nand_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	 * some operation can also clear the bit 7 of status register
 	 * eg. erase/program a locked block
 	 */
-	chip->cmdfunc(mtd, NAND_CMD_RESET, -1, -1);
+	chip->cmdfunc(chip, NAND_CMD_RESET, -1, -1);
 
 	/* Check, if it is write protected */
-	if (nand_check_wp(mtd)) {
+	if (nand_check_wp(chip)) {
 		pr_debug("%s: device is write protected!\n",
 					__func__);
 		ret = -EIO;
@@ -958,10 +931,10 @@ int nand_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 
 	/* Submit address of first page to lock */
 	page = ofs >> chip->page_shift;
-	chip->cmdfunc(mtd, NAND_CMD_LOCK, -1, page & chip->pagemask);
+	chip->cmdfunc(chip, NAND_CMD_LOCK, -1, page & chip->pagemask);
 
 	/* Call wait ready function */
-	status = chip->waitfunc(mtd, chip);
+	status = chip->waitfunc(chip);
 	/* See if device thinks it succeeded */
 	if (status & NAND_STATUS_FAIL) {
 		pr_debug("%s: error status = 0x%08x\n",
@@ -970,11 +943,11 @@ int nand_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 		goto out;
 	}
 
-	ret = __nand_unlock(mtd, ofs, len, 0x1);
+	ret = __nand_unlock(chip, ofs, len, 0x1);
 
 out:
-	chip->select_chip(mtd, -1);
-	nand_release_device(mtd);
+	chip->select_chip(chip, -1);
+	nand_release_device(chip);
 
 	return ret;
 }
@@ -1118,12 +1091,13 @@ EXPORT_SYMBOL(nand_check_erased_ecc_chunk);
  *
  * Not for syndrome calculating ECC controllers, which use a special oob layout.
  */
-static __maybe_unused int nand_read_page_raw(struct mtd_info *mtd,
-		struct nand_chip *chip, uint8_t *buf, int oob_required, int page)
+static __maybe_unused int nand_read_page_raw(struct nand_chip *chip,
+					     uint8_t *buf, int oob_required,
+					     int page)
 {
-	chip->read_buf(mtd, buf, mtd->writesize);
+	chip->read_buf(chip, buf, chip->mtd.writesize);
 	if (oob_required)
-		chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
+		chip->read_buf(chip, chip->oob_poi, chip->mtd.oobsize);
 	return 0;
 }
 
@@ -1137,9 +1111,8 @@ static __maybe_unused int nand_read_page_raw(struct mtd_info *mtd,
  *
  * We need a special oob layout and handling even when OOB isn't used.
  */
-static __maybe_unused int nand_read_page_raw_syndrome(struct mtd_info *mtd,
-				       struct nand_chip *chip, uint8_t *buf,
-				       int oob_required, int page)
+static __maybe_unused int nand_read_page_raw_syndrome(struct nand_chip *chip,
+					uint8_t *buf, int oob_required, int page)
 {
 	int eccsize = chip->ecc.size;
 	int eccbytes = chip->ecc.bytes;
@@ -1147,26 +1120,26 @@ static __maybe_unused int nand_read_page_raw_syndrome(struct mtd_info *mtd,
 	int steps, size;
 
 	for (steps = chip->ecc.steps; steps > 0; steps--) {
-		chip->read_buf(mtd, buf, eccsize);
+		chip->read_buf(chip, buf, eccsize);
 		buf += eccsize;
 
 		if (chip->ecc.prepad) {
-			chip->read_buf(mtd, oob, chip->ecc.prepad);
+			chip->read_buf(chip, oob, chip->ecc.prepad);
 			oob += chip->ecc.prepad;
 		}
 
-		chip->read_buf(mtd, oob, eccbytes);
+		chip->read_buf(chip, oob, eccbytes);
 		oob += eccbytes;
 
 		if (chip->ecc.postpad) {
-			chip->read_buf(mtd, oob, chip->ecc.postpad);
+			chip->read_buf(chip, oob, chip->ecc.postpad);
 			oob += chip->ecc.postpad;
 		}
 	}
 
-	size = mtd->oobsize - (oob - chip->oob_poi);
+	size = chip->mtd.oobsize - (oob - chip->oob_poi);
 	if (size)
-		chip->read_buf(mtd, oob, size);
+		chip->read_buf(chip, oob, size);
 
 	return 0;
 }
@@ -1179,10 +1152,10 @@ static __maybe_unused int nand_read_page_raw_syndrome(struct mtd_info *mtd,
  * @oob_required: caller requires OOB data read to chip->oob_poi
  * @page: page number to read
  */
-static __maybe_unused int nand_read_page_swecc(struct mtd_info *mtd,
-		struct nand_chip *chip, uint8_t *buf, int oob_required,
-		int page)
+static __maybe_unused int nand_read_page_swecc(struct nand_chip *chip,
+		uint8_t *buf, int oob_required, int page)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int i, eccsize = chip->ecc.size;
 	int eccbytes = chip->ecc.bytes;
 	int eccsteps = chip->ecc.steps;
@@ -1192,10 +1165,10 @@ static __maybe_unused int nand_read_page_swecc(struct mtd_info *mtd,
 	uint32_t *eccpos = chip->ecc.layout->eccpos;
 	unsigned int max_bitflips = 0;
 
-	chip->ecc.read_page_raw(mtd, chip, buf, 1, page);
+	chip->ecc.read_page_raw(chip, buf, 1, page);
 
 	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
-		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
+		chip->ecc.calculate(chip, p, &ecc_calc[i]);
 
 	for (i = 0; i < chip->ecc.total; i++)
 		ecc_code[i] = chip->oob_poi[eccpos[i]];
@@ -1206,7 +1179,7 @@ static __maybe_unused int nand_read_page_swecc(struct mtd_info *mtd,
 	for (i = 0 ; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
 		int stat;
 
-		stat = chip->ecc.correct(mtd, p, &ecc_code[i], &ecc_calc[i]);
+		stat = chip->ecc.correct(chip, p, &ecc_code[i], &ecc_calc[i]);
 		if (stat < 0) {
 			mtd->ecc_stats.failed++;
 		} else {
@@ -1225,10 +1198,11 @@ static __maybe_unused int nand_read_page_swecc(struct mtd_info *mtd,
  * @readlen: data length
  * @bufpoi: buffer to store read data
  */
-static __maybe_unused int nand_read_subpage(struct mtd_info *mtd,
-		struct nand_chip *chip, uint32_t data_offs, uint32_t readlen,
+static __maybe_unused int nand_read_subpage(struct nand_chip *chip,
+		uint32_t data_offs, uint32_t readlen,
 		uint8_t *bufpoi, int page)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int start_step, end_step, num_steps;
 	uint32_t *eccpos = chip->ecc.layout->eccpos;
 	uint8_t *p;
@@ -1255,14 +1229,14 @@ static __maybe_unused int nand_read_subpage(struct mtd_info *mtd,
 	data_col_addr = start_step * chip->ecc.size;
 	/* If we read not a page aligned data */
 	if (data_col_addr != 0)
-		chip->cmdfunc(mtd, NAND_CMD_RNDOUT, data_col_addr, -1);
+		chip->cmdfunc(chip, NAND_CMD_RNDOUT, data_col_addr, -1);
 
 	p = bufpoi + data_col_addr;
-	chip->read_buf(mtd, p, datafrag_len);
+	chip->read_buf(chip, p, datafrag_len);
 
 	/* Calculate ECC */
 	for (i = 0; i < eccfrag_len ; i += chip->ecc.bytes, p += chip->ecc.size)
-		chip->ecc.calculate(mtd, p, &chip->buffers->ecccalc[i]);
+		chip->ecc.calculate(chip, p, &chip->buffers->ecccalc[i]);
 
 	/*
 	 * The performance is faster if we position offsets according to
@@ -1276,8 +1250,8 @@ static __maybe_unused int nand_read_subpage(struct mtd_info *mtd,
 		}
 	}
 	if (gaps) {
-		chip->cmdfunc(mtd, NAND_CMD_RNDOUT, mtd->writesize, -1);
-		chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
+		chip->cmdfunc(chip, NAND_CMD_RNDOUT, mtd->writesize, -1);
+		chip->read_buf(chip, chip->oob_poi, mtd->oobsize);
 	} else {
 		/*
 		 * Send the command to read the particular ECC bytes take care
@@ -1292,9 +1266,9 @@ static __maybe_unused int nand_read_subpage(struct mtd_info *mtd,
 		if (eccpos[index + (num_steps * chip->ecc.bytes)] & (busw - 1))
 			aligned_len++;
 
-		chip->cmdfunc(mtd, NAND_CMD_RNDOUT,
+		chip->cmdfunc(chip, NAND_CMD_RNDOUT,
 					mtd->writesize + aligned_pos, -1);
-		chip->read_buf(mtd, &chip->oob_poi[aligned_pos], aligned_len);
+		chip->read_buf(chip, &chip->oob_poi[aligned_pos], aligned_len);
 	}
 
 	for (i = 0; i < eccfrag_len; i++)
@@ -1304,7 +1278,7 @@ static __maybe_unused int nand_read_subpage(struct mtd_info *mtd,
 	for (i = 0; i < eccfrag_len ; i += chip->ecc.bytes, p += chip->ecc.size) {
 		int stat;
 
-		stat = chip->ecc.correct(mtd, p,
+		stat = chip->ecc.correct(chip, p,
 			&chip->buffers->ecccode[i], &chip->buffers->ecccalc[i]);
 		if (stat < 0) {
 			mtd->ecc_stats.failed++;
@@ -1326,9 +1300,10 @@ static __maybe_unused int nand_read_subpage(struct mtd_info *mtd,
  *
  * Not for syndrome calculating ECC controllers which need a special oob layout.
  */
-static __maybe_unused int nand_read_page_hwecc(struct mtd_info *mtd,
-		struct nand_chip *chip, uint8_t *buf, int oob_required, int page)
+static __maybe_unused int nand_read_page_hwecc(struct nand_chip *chip,
+			uint8_t *buf, int oob_required, int page)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int i, eccsize = chip->ecc.size;
 	int eccbytes = chip->ecc.bytes;
 	int eccsteps = chip->ecc.steps;
@@ -1339,11 +1314,11 @@ static __maybe_unused int nand_read_page_hwecc(struct mtd_info *mtd,
 	unsigned int max_bitflips = 0;
 
 	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
-		chip->ecc.hwctl(mtd, NAND_ECC_READ);
-		chip->read_buf(mtd, p, eccsize);
-		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
+		chip->ecc.hwctl(chip, NAND_ECC_READ);
+		chip->read_buf(chip, p, eccsize);
+		chip->ecc.calculate(chip, p, &ecc_calc[i]);
 	}
-	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
+	chip->read_buf(chip, chip->oob_poi, mtd->oobsize);
 
 	for (i = 0; i < chip->ecc.total; i++)
 		ecc_code[i] = chip->oob_poi[eccpos[i]];
@@ -1354,7 +1329,7 @@ static __maybe_unused int nand_read_page_hwecc(struct mtd_info *mtd,
 	for (i = 0 ; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
 		int stat;
 
-		stat = chip->ecc.correct(mtd, p, &ecc_code[i], &ecc_calc[i]);
+		stat = chip->ecc.correct(chip, p, &ecc_code[i], &ecc_calc[i]);
 		if (stat < 0) {
 			mtd->ecc_stats.failed++;
 		} else {
@@ -1379,9 +1354,10 @@ static __maybe_unused int nand_read_page_hwecc(struct mtd_info *mtd,
  * multiple ECC steps, follows the "infix ECC" scheme and reads/writes ECC from
  * the data area, by overwriting the NAND manufacturer bad block markings.
  */
-static __maybe_unused int nand_read_page_hwecc_oob_first(struct mtd_info *mtd,
-	struct nand_chip *chip, uint8_t *buf, int oob_required, int page)
+static __maybe_unused int nand_read_page_hwecc_oob_first(struct nand_chip *chip,
+				uint8_t *buf, int oob_required, int page)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int i, eccsize = chip->ecc.size;
 	int eccbytes = chip->ecc.bytes;
 	int eccsteps = chip->ecc.steps;
@@ -1392,9 +1368,9 @@ static __maybe_unused int nand_read_page_hwecc_oob_first(struct mtd_info *mtd,
 	unsigned int max_bitflips = 0;
 
 	/* Read the OOB area first */
-	chip->cmdfunc(mtd, NAND_CMD_READOOB, 0, page);
-	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
-	chip->cmdfunc(mtd, NAND_CMD_READ0, 0, page);
+	chip->cmdfunc(chip, NAND_CMD_READOOB, 0, page);
+	chip->read_buf(chip, chip->oob_poi, mtd->oobsize);
+	chip->cmdfunc(chip, NAND_CMD_READ0, 0, page);
 
 	for (i = 0; i < chip->ecc.total; i++)
 		ecc_code[i] = chip->oob_poi[eccpos[i]];
@@ -1402,11 +1378,11 @@ static __maybe_unused int nand_read_page_hwecc_oob_first(struct mtd_info *mtd,
 	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
 		int stat;
 
-		chip->ecc.hwctl(mtd, NAND_ECC_READ);
-		chip->read_buf(mtd, p, eccsize);
-		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
+		chip->ecc.hwctl(chip, NAND_ECC_READ);
+		chip->read_buf(chip, p, eccsize);
+		chip->ecc.calculate(chip, p, &ecc_calc[i]);
 
-		stat = chip->ecc.correct(mtd, p, &ecc_code[i], NULL);
+		stat = chip->ecc.correct(chip, p, &ecc_code[i], NULL);
 		if (stat < 0) {
 			mtd->ecc_stats.failed++;
 		} else {
@@ -1428,9 +1404,10 @@ static __maybe_unused int nand_read_page_hwecc_oob_first(struct mtd_info *mtd,
  * The hw generator calculates the error syndrome automatically. Therefore we
  * need a special oob layout and handling.
  */
-static __maybe_unused  int nand_read_page_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
+static __maybe_unused  int nand_read_page_syndrome(struct nand_chip *chip,
 				   uint8_t *buf, int oob_required, int page)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int i, eccsize = chip->ecc.size;
 	int eccbytes = chip->ecc.bytes;
 	int eccsteps = chip->ecc.steps;
@@ -1441,17 +1418,17 @@ static __maybe_unused  int nand_read_page_syndrome(struct mtd_info *mtd, struct
 	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
 		int stat;
 
-		chip->ecc.hwctl(mtd, NAND_ECC_READ);
-		chip->read_buf(mtd, p, eccsize);
+		chip->ecc.hwctl(chip, NAND_ECC_READ);
+		chip->read_buf(chip, p, eccsize);
 
 		if (chip->ecc.prepad) {
-			chip->read_buf(mtd, oob, chip->ecc.prepad);
+			chip->read_buf(chip, oob, chip->ecc.prepad);
 			oob += chip->ecc.prepad;
 		}
 
-		chip->ecc.hwctl(mtd, NAND_ECC_READSYN);
-		chip->read_buf(mtd, oob, eccbytes);
-		stat = chip->ecc.correct(mtd, p, oob, NULL);
+		chip->ecc.hwctl(chip, NAND_ECC_READSYN);
+		chip->read_buf(chip, oob, eccbytes);
+		stat = chip->ecc.correct(chip, p, oob, NULL);
 
 		if (stat < 0) {
 			mtd->ecc_stats.failed++;
@@ -1463,7 +1440,7 @@ static __maybe_unused  int nand_read_page_syndrome(struct mtd_info *mtd, struct
 		oob += eccbytes;
 
 		if (chip->ecc.postpad) {
-			chip->read_buf(mtd, oob, chip->ecc.postpad);
+			chip->read_buf(chip, oob, chip->ecc.postpad);
 			oob += chip->ecc.postpad;
 		}
 	}
@@ -1471,7 +1448,7 @@ static __maybe_unused  int nand_read_page_syndrome(struct mtd_info *mtd, struct
 	/* Calculate remaining oob bytes */
 	i = mtd->oobsize - (oob - chip->oob_poi);
 	if (i)
-		chip->read_buf(mtd, oob, i);
+		chip->read_buf(chip, oob, i);
 
 	return max_bitflips;
 }
@@ -1532,17 +1509,17 @@ static uint8_t *nand_transfer_oob(struct nand_chip *chip, uint8_t *oob,
  *
  * Internal function. Called with chip held.
  */
-static int nand_do_read_ops(struct mtd_info *mtd, loff_t from,
+static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 			    struct mtd_oob_ops *ops)
 {
 	int chipnr, page, realpage, col, bytes, aligned, oob_required;
-	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct mtd_ecc_stats stats;
 	int ret = 0;
 	uint32_t readlen = ops->len;
 	uint32_t oobreadlen = ops->ooblen;
 	uint32_t max_oobsize = ops->mode == MTD_OPS_AUTO_OOB ?
-		mtd->oobavail : mtd->oobsize;
+		chip->mtd.oobavail : chip->mtd.oobsize;
 
 	uint8_t *bufpoi, *oob, *buf;
 	unsigned int max_bitflips = 0;
@@ -1550,7 +1527,7 @@ static int nand_do_read_ops(struct mtd_info *mtd, loff_t from,
 	stats = mtd->ecc_stats;
 
 	chipnr = (int)(from >> chip->chip_shift);
-	chip->select_chip(mtd, chipnr);
+	chip->select_chip(chip, chipnr);
 
 	realpage = (int)(from >> chip->page_shift);
 	page = realpage & chip->pagemask;
@@ -1569,22 +1546,22 @@ static int nand_do_read_ops(struct mtd_info *mtd, loff_t from,
 		if (realpage != chip->pagebuf || oob) {
 			bufpoi = aligned ? buf : chip->buffers->databuf;
 
-			chip->cmdfunc(mtd, NAND_CMD_READ0, 0x00, page);
+			chip->cmdfunc(chip, NAND_CMD_READ0, 0x00, page);
 
 			/*
 			 * Now read the page into the buffer.  Absent an error,
 			 * the read methods return max bitflips per ecc step.
 			 */
 			if (unlikely(ops->mode == MTD_OPS_RAW))
-				ret = chip->ecc.read_page_raw(mtd, chip, bufpoi,
+				ret = chip->ecc.read_page_raw(chip, bufpoi,
 							      oob_required,
 							      page);
 			else if (!aligned && NAND_HAS_SUBPAGE_READ(chip) &&
 				 !oob)
-				ret = chip->ecc.read_subpage(mtd, chip,
+				ret = chip->ecc.read_subpage(chip,
 							col, bytes, bufpoi, page);
 			else
-				ret = chip->ecc.read_page(mtd, chip, bufpoi,
+				ret = chip->ecc.read_page(chip, bufpoi,
 							  oob_required, page);
 			if (ret < 0) {
 				if (!aligned)
@@ -1626,7 +1603,7 @@ static int nand_do_read_ops(struct mtd_info *mtd, loff_t from,
 				if (!chip->dev_ready)
 					udelay(chip->chip_delay);
 				else
-					nand_wait_ready(mtd);
+					nand_wait_ready(chip);
 			}
 		} else {
 			memcpy(buf, chip->buffers->databuf + col, bytes);
@@ -1649,11 +1626,11 @@ static int nand_do_read_ops(struct mtd_info *mtd, loff_t from,
 		/* Check, if we cross a chip boundary */
 		if (!page) {
 			chipnr++;
-			chip->select_chip(mtd, -1);
-			chip->select_chip(mtd, chipnr);
+			chip->select_chip(chip, -1);
+			chip->select_chip(chip, chipnr);
 		}
 	}
-	chip->select_chip(mtd, -1);
+	chip->select_chip(chip, -1);
 
 	ops->retlen = ops->len - (size_t) readlen;
 	if (oob)
@@ -1681,18 +1658,19 @@ static int nand_do_read_ops(struct mtd_info *mtd, loff_t from,
 static int nand_read(struct mtd_info *mtd, loff_t from, size_t len,
 		     size_t *retlen, uint8_t *buf)
 {
+	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct mtd_oob_ops ops;
 	int ret;
 
-	nand_get_device(mtd, FL_READING);
+	nand_get_device(chip, FL_READING);
 	ops.len = len;
 	ops.datbuf = buf;
 	ops.ooblen = 0;
 	ops.oobbuf = NULL;
 	ops.mode = MTD_OPS_PLACE_OOB;
-	ret = nand_do_read_ops(mtd, from, &ops);
+	ret = nand_do_read_ops(chip, from, &ops);
 	*retlen = ops.retlen;
-	nand_release_device(mtd);
+	nand_release_device(chip);
 	return ret;
 }
 
@@ -1702,14 +1680,13 @@ static int nand_read(struct mtd_info *mtd, loff_t from, size_t len,
  * @chip: nand chip info structure
  * @page: page number to read
  */
-static __maybe_unused int nand_read_oob_std(struct mtd_info *mtd,
-		struct nand_chip *chip, int page)
+static __maybe_unused int nand_read_oob_std(struct nand_chip *chip, int page)
 {
 	if (!IS_ENABLED(CONFIG_NAND_READ_OOB))
 		return -ENOTSUPP;
 
-	chip->cmdfunc(mtd, NAND_CMD_READOOB, 0, page);
-	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
+	chip->cmdfunc(chip, NAND_CMD_READOOB, 0, page);
+	chip->read_buf(chip, chip->oob_poi, chip->mtd.oobsize);
 	return 0;
 }
 
@@ -1720,11 +1697,11 @@ static __maybe_unused int nand_read_oob_std(struct mtd_info *mtd,
  * @chip: nand chip info structure
  * @page: page number to read
  */
-static __maybe_unused  int nand_read_oob_syndrome(struct mtd_info *mtd,
-		struct nand_chip *chip, int page)
+static __maybe_unused  int nand_read_oob_syndrome(struct nand_chip *chip,
+						  int page)
 {
 	uint8_t *buf = chip->oob_poi;
-	int length = mtd->oobsize;
+	int length = chip->mtd.oobsize;
 	int chunk = chip->ecc.bytes + chip->ecc.prepad + chip->ecc.postpad;
 	int eccsize = chip->ecc.size;
 	uint8_t *bufpoi = buf;
@@ -1733,23 +1710,23 @@ static __maybe_unused  int nand_read_oob_syndrome(struct mtd_info *mtd,
 	if (!IS_ENABLED(CONFIG_NAND_READ_OOB))
 		return -ENOTSUPP;
 
-	chip->cmdfunc(mtd, NAND_CMD_READ0, chip->ecc.size, page);
+	chip->cmdfunc(chip, NAND_CMD_READ0, chip->ecc.size, page);
 	for (i = 0; i < chip->ecc.steps; i++) {
 		if (sndrnd) {
 			pos = eccsize + i * (eccsize + chunk);
-			if (mtd->writesize > 512)
-				chip->cmdfunc(mtd, NAND_CMD_RNDOUT, pos, -1);
+			if (chip->mtd.writesize > 512)
+				chip->cmdfunc(chip, NAND_CMD_RNDOUT, pos, -1);
 			else
-				chip->cmdfunc(mtd, NAND_CMD_READ0, pos, page);
+				chip->cmdfunc(chip, NAND_CMD_READ0, pos, page);
 		} else
 			sndrnd = 1;
 		toread = min_t(int, length, chunk);
-		chip->read_buf(mtd, bufpoi, toread);
+		chip->read_buf(chip, bufpoi, toread);
 		bufpoi += toread;
 		length -= toread;
 	}
 	if (length > 0)
-		chip->read_buf(mtd, bufpoi, length);
+		chip->read_buf(chip, bufpoi, length);
 
 	return 0;
 }
@@ -1760,22 +1737,21 @@ static __maybe_unused  int nand_read_oob_syndrome(struct mtd_info *mtd,
  * @chip: nand chip info structure
  * @page: page number to write
  */
-static __maybe_unused int nand_write_oob_std(struct mtd_info *mtd,
-		struct nand_chip *chip, int page)
+static __maybe_unused int nand_write_oob_std(struct nand_chip *chip, int page)
 {
 	int status = 0;
 	const uint8_t *buf = chip->oob_poi;
-	int length = mtd->oobsize;
+	int length = chip->mtd.oobsize;
 
 	if (!IS_ENABLED(CONFIG_NAND_READ_OOB) || !IS_ENABLED(CONFIG_MTD_WRITE))
 		return -ENOTSUPP;
 
-	chip->cmdfunc(mtd, NAND_CMD_SEQIN, mtd->writesize, page);
-	chip->write_buf(mtd, buf, length);
+	chip->cmdfunc(chip, NAND_CMD_SEQIN, chip->mtd.writesize, page);
+	chip->write_buf(chip, buf, length);
 	/* Send command to program the OOB data */
-	chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
+	chip->cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
 
-	status = chip->waitfunc(mtd, chip);
+	status = chip->waitfunc(chip);
 
 	return status & NAND_STATUS_FAIL ? -EIO : 0;
 }
@@ -1787,11 +1763,10 @@ static __maybe_unused int nand_write_oob_std(struct mtd_info *mtd,
  * @chip: nand chip info structure
  * @page: page number to write
  */
-static __maybe_unused  int nand_write_oob_syndrome(struct mtd_info *mtd,
-				   struct nand_chip *chip, int page)
+static __maybe_unused  int nand_write_oob_syndrome(struct nand_chip *chip, int page)
 {
 	int chunk = chip->ecc.bytes + chip->ecc.prepad + chip->ecc.postpad;
-	int eccsize = chip->ecc.size, length = mtd->oobsize;
+	int eccsize = chip->ecc.size, length = chip->mtd.oobsize;
 	int i, len, pos, status = 0, sndcmd = 0, steps = chip->ecc.steps;
 	const uint8_t *bufpoi = chip->oob_poi;
 
@@ -1809,35 +1784,35 @@ static __maybe_unused  int nand_write_oob_syndrome(struct mtd_info *mtd,
 	} else
 		pos = eccsize;
 
-	chip->cmdfunc(mtd, NAND_CMD_SEQIN, pos, page);
+	chip->cmdfunc(chip, NAND_CMD_SEQIN, pos, page);
 	for (i = 0; i < steps; i++) {
 		if (sndcmd) {
-			if (mtd->writesize <= 512) {
+			if (chip->mtd.writesize <= 512) {
 				uint32_t fill = 0xFFFFFFFF;
 
 				len = eccsize;
 				while (len > 0) {
 					int num = min_t(int, len, 4);
-					chip->write_buf(mtd, (uint8_t *)&fill,
+					chip->write_buf(chip, (uint8_t *)&fill,
 							num);
 					len -= num;
 				}
 			} else {
 				pos = eccsize + i * (eccsize + chunk);
-				chip->cmdfunc(mtd, NAND_CMD_RNDIN, pos, -1);
+				chip->cmdfunc(chip, NAND_CMD_RNDIN, pos, -1);
 			}
 		} else
 			sndcmd = 1;
 		len = min_t(int, length, chunk);
-		chip->write_buf(mtd, bufpoi, len);
+		chip->write_buf(chip, bufpoi, len);
 		bufpoi += len;
 		length -= len;
 	}
 	if (length > 0)
-		chip->write_buf(mtd, bufpoi, length);
+		chip->write_buf(chip, bufpoi, length);
 
-	chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
-	status = chip->waitfunc(mtd, chip);
+	chip->cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
+	status = chip->waitfunc(chip);
 
 	return status & NAND_STATUS_FAIL ? -EIO : 0;
 }
@@ -1850,11 +1825,11 @@ static __maybe_unused  int nand_write_oob_syndrome(struct mtd_info *mtd,
  *
  * NAND read out-of-band data from the spare area.
  */
-static int nand_do_read_oob(struct mtd_info *mtd, loff_t from,
+static int nand_do_read_oob(struct nand_chip *chip, loff_t from,
 			    struct mtd_oob_ops *ops)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int page, realpage, chipnr;
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct mtd_ecc_stats stats;
 	int readlen = ops->ooblen;
 	int len;
@@ -1890,7 +1865,7 @@ static int nand_do_read_oob(struct mtd_info *mtd, loff_t from,
 	}
 
 	chipnr = (int)(from >> chip->chip_shift);
-	chip->select_chip(mtd, chipnr);
+	chip->select_chip(chip, chipnr);
 
 	/* Shift to get page */
 	realpage = (int)(from >> chip->page_shift);
@@ -1898,9 +1873,9 @@ static int nand_do_read_oob(struct mtd_info *mtd, loff_t from,
 
 	while (1) {
 		if (ops->mode == MTD_OPS_RAW)
-			ret = chip->ecc.read_oob_raw(mtd, chip, page);
+			ret = chip->ecc.read_oob_raw(chip, page);
 		else
-			ret = chip->ecc.read_oob(mtd, chip, page);
+			ret = chip->ecc.read_oob(chip, page);
 
 		if (ret < 0)
 			break;
@@ -1913,7 +1888,7 @@ static int nand_do_read_oob(struct mtd_info *mtd, loff_t from,
 			if (!chip->dev_ready)
 				udelay(chip->chip_delay);
 			else
-				nand_wait_ready(mtd);
+				nand_wait_ready(chip);
 		}
 
 		readlen -= len;
@@ -1927,11 +1902,11 @@ static int nand_do_read_oob(struct mtd_info *mtd, loff_t from,
 		/* Check, if we cross a chip boundary */
 		if (!page) {
 			chipnr++;
-			chip->select_chip(mtd, -1);
-			chip->select_chip(mtd, chipnr);
+			chip->select_chip(chip, -1);
+			chip->select_chip(chip, chipnr);
 		}
 	}
-	chip->select_chip(mtd, -1);
+	chip->select_chip(chip, -1);
 
 	ops->oobretlen = ops->ooblen - readlen;
 
@@ -1955,6 +1930,7 @@ static int nand_do_read_oob(struct mtd_info *mtd, loff_t from,
 static int nand_read_oob(struct mtd_info *mtd, loff_t from,
 			 struct mtd_oob_ops *ops)
 {
+	struct nand_chip *chip = mtd_to_nand(mtd);
 	int ret = -ENOTSUPP;
 
 	if (!IS_ENABLED(CONFIG_NAND_READ_OOB))
@@ -1963,13 +1939,13 @@ static int nand_read_oob(struct mtd_info *mtd, loff_t from,
 	ops->retlen = 0;
 
 	/* Do not allow reads past end of device */
-	if (ops->datbuf && (from + ops->len) > mtd->size) {
+	if (ops->datbuf && (from + ops->len) > chip->mtd.size) {
 		pr_debug("%s: attempt to read beyond end of device\n",
 				__func__);
 		return -EINVAL;
 	}
 
-	nand_get_device(mtd, FL_READING);
+	nand_get_device(chip, FL_READING);
 
 	switch (ops->mode) {
 	case MTD_OPS_PLACE_OOB:
@@ -1982,12 +1958,12 @@ static int nand_read_oob(struct mtd_info *mtd, loff_t from,
 	}
 
 	if (!ops->datbuf)
-		ret = nand_do_read_oob(mtd, from, ops);
+		ret = nand_do_read_oob(chip, from, ops);
 	else
-		ret = nand_do_read_ops(mtd, from, ops);
+		ret = nand_do_read_ops(chip, from, ops);
 
 out:
-	nand_release_device(mtd);
+	nand_release_device(chip);
 	return ret;
 }
 
@@ -2001,15 +1977,15 @@ out:
  *
  * Not for syndrome calculating ECC controllers, which use a special oob layout.
  */
-static __maybe_unused int nand_write_page_raw(struct mtd_info *mtd,
-		struct nand_chip *chip, const uint8_t *buf, int oob_required)
+static __maybe_unused int nand_write_page_raw(struct nand_chip *chip,
+		const uint8_t *buf, int oob_required)
 {
 	if (!IS_ENABLED(CONFIG_MTD_WRITE))
 		return -ENOTSUPP;
 
-	chip->write_buf(mtd, buf, mtd->writesize);
+	chip->write_buf(chip, buf, chip->mtd.writesize);
 	if (oob_required)
-		chip->write_buf(mtd, chip->oob_poi, mtd->oobsize);
+		chip->write_buf(chip, chip->oob_poi, chip->mtd.oobsize);
 
 	return 0;
 }
@@ -2023,8 +1999,7 @@ static __maybe_unused int nand_write_page_raw(struct mtd_info *mtd,
  *
  * We need a special oob layout and handling even when ECC isn't checked.
  */
-static __maybe_unused  int nand_write_page_raw_syndrome(struct mtd_info *mtd,
-					struct nand_chip *chip,
+static __maybe_unused  int nand_write_page_raw_syndrome(struct nand_chip *chip,
 					const uint8_t *buf, int oob_required)
 {
 	int eccsize = chip->ecc.size;
@@ -2036,26 +2011,26 @@ static __maybe_unused  int nand_write_page_raw_syndrome(struct mtd_info *mtd,
 		return -ENOTSUPP;
 
 	for (steps = chip->ecc.steps; steps > 0; steps--) {
-		chip->write_buf(mtd, buf, eccsize);
+		chip->write_buf(chip, buf, eccsize);
 		buf += eccsize;
 
 		if (chip->ecc.prepad) {
-			chip->write_buf(mtd, oob, chip->ecc.prepad);
+			chip->write_buf(chip, oob, chip->ecc.prepad);
 			oob += chip->ecc.prepad;
 		}
 
-		chip->read_buf(mtd, oob, eccbytes);
+		chip->read_buf(chip, oob, eccbytes);
 		oob += eccbytes;
 
 		if (chip->ecc.postpad) {
-			chip->write_buf(mtd, oob, chip->ecc.postpad);
+			chip->write_buf(chip, oob, chip->ecc.postpad);
 			oob += chip->ecc.postpad;
 		}
 	}
 
-	size = mtd->oobsize - (oob - chip->oob_poi);
+	size = chip->mtd.oobsize - (oob - chip->oob_poi);
 	if (size)
-		chip->write_buf(mtd, oob, size);
+		chip->write_buf(chip, oob, size);
 
 	return 0;
 }
@@ -2066,8 +2041,8 @@ static __maybe_unused  int nand_write_page_raw_syndrome(struct mtd_info *mtd,
  * @buf: data buffer
  * @oob_required: must write chip->oob_poi to OOB
  */
-static __maybe_unused int nand_write_page_swecc(struct mtd_info *mtd,
-		struct nand_chip *chip, const uint8_t *buf, int oob_required)
+static __maybe_unused int nand_write_page_swecc(struct nand_chip *chip,
+						const uint8_t *buf, int oob_required)
 {
 	int i, eccsize = chip->ecc.size;
 	int eccbytes = chip->ecc.bytes;
@@ -2081,12 +2056,12 @@ static __maybe_unused int nand_write_page_swecc(struct mtd_info *mtd,
 
 	/* Software ECC calculation */
 	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
-		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
+		chip->ecc.calculate(chip, p, &ecc_calc[i]);
 
 	for (i = 0; i < chip->ecc.total; i++)
 		chip->oob_poi[eccpos[i]] = ecc_calc[i];
 
-	return chip->ecc.write_page_raw(mtd, chip, buf, 1);
+	return chip->ecc.write_page_raw(chip, buf, 1);
 }
 
 /**
@@ -2096,8 +2071,8 @@ static __maybe_unused int nand_write_page_swecc(struct mtd_info *mtd,
  * @buf: data buffer
  * @oob_required: must write chip->oob_poi to OOB
  */
-static __maybe_unused int nand_write_page_hwecc(struct mtd_info *mtd,
-		struct nand_chip *chip, const uint8_t *buf, int oob_required)
+static __maybe_unused int nand_write_page_hwecc(struct nand_chip *chip,
+						const uint8_t *buf, int oob_required)
 {
 	int i, eccsize = chip->ecc.size;
 	int eccbytes = chip->ecc.bytes;
@@ -2110,15 +2085,15 @@ static __maybe_unused int nand_write_page_hwecc(struct mtd_info *mtd,
 		return -ENOTSUPP;
 
 	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
-		chip->ecc.hwctl(mtd, NAND_ECC_WRITE);
-		chip->write_buf(mtd, p, eccsize);
-		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
+		chip->ecc.hwctl(chip, NAND_ECC_WRITE);
+		chip->write_buf(chip, p, eccsize);
+		chip->ecc.calculate(chip, p, &ecc_calc[i]);
 	}
 
 	for (i = 0; i < chip->ecc.total; i++)
 		chip->oob_poi[eccpos[i]] = ecc_calc[i];
 
-	chip->write_buf(mtd, chip->oob_poi, mtd->oobsize);
+	chip->write_buf(chip, chip->oob_poi, chip->mtd.oobsize);
 
 	return 0;
 }
@@ -2132,8 +2107,8 @@ static __maybe_unused int nand_write_page_hwecc(struct mtd_info *mtd,
  * @data_len:	data length
  * @oob_required: must write chip->oob_poi to OOB
  */
-static __maybe_unused int nand_write_subpage_hwecc(struct mtd_info *mtd,
-				struct nand_chip *chip, uint32_t offset,
+static __maybe_unused int nand_write_subpage_hwecc(struct nand_chip *chip,
+				uint32_t offset,
 				uint32_t data_len, const uint8_t *data_buf,
 				int oob_required)
 {
@@ -2145,7 +2120,7 @@ static __maybe_unused int nand_write_subpage_hwecc(struct mtd_info *mtd,
 	uint32_t *eccpos  = chip->ecc.layout->eccpos;
 	uint32_t start_step = offset / ecc_size;
 	uint32_t end_step   = (offset + data_len - 1) / ecc_size;
-	int oob_bytes       = mtd->oobsize / ecc_steps;
+	int oob_bytes       = chip->mtd.oobsize / ecc_steps;
 	int step, i;
 
 	if (!IS_ENABLED(CONFIG_MTD_WRITE))
@@ -2153,16 +2128,16 @@ static __maybe_unused int nand_write_subpage_hwecc(struct mtd_info *mtd,
 
 	for (step = 0; step < ecc_steps; step++) {
 		/* configure controller for WRITE access */
-		chip->ecc.hwctl(mtd, NAND_ECC_WRITE);
+		chip->ecc.hwctl(chip, NAND_ECC_WRITE);
 
 		/* write data (untouched subpages already masked by 0xFF) */
-		chip->write_buf(mtd, data_buf, ecc_size);
+		chip->write_buf(chip, data_buf, ecc_size);
 
 		/* mask ECC of un-touched subpages by padding 0xFF */
 		if ((step < start_step) || (step > end_step))
 			memset(ecc_calc, 0xff, ecc_bytes);
 		else
-			chip->ecc.calculate(mtd, data_buf, ecc_calc);
+			chip->ecc.calculate(chip, data_buf, ecc_calc);
 
 		/* mask OOB of un-touched subpages by padding 0xFF */
 		/* if oob_required, preserve OOB metadata of written subpage */
@@ -2181,7 +2156,7 @@ static __maybe_unused int nand_write_subpage_hwecc(struct mtd_info *mtd,
 		chip->oob_poi[eccpos[i]] = ecc_calc[i];
 
 	/* write OOB buffer to NAND device */
-	chip->write_buf(mtd, chip->oob_poi, mtd->oobsize);
+	chip->write_buf(chip, chip->oob_poi, chip->mtd.oobsize);
 
 	return 0;
 }
@@ -2197,8 +2172,7 @@ static __maybe_unused int nand_write_subpage_hwecc(struct mtd_info *mtd,
  * The hw generator calculates the error syndrome automatically. Therefore we
  * need a special oob layout and handling.
  */
-static __maybe_unused int nand_write_page_syndrome(struct mtd_info *mtd,
-				    struct nand_chip *chip,
+static __maybe_unused int nand_write_page_syndrome(struct nand_chip *chip,
 				    const uint8_t *buf, int oob_required)
 {
 	int i, eccsize = chip->ecc.size;
@@ -2212,28 +2186,28 @@ static __maybe_unused int nand_write_page_syndrome(struct mtd_info *mtd,
 
 	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
 
-		chip->ecc.hwctl(mtd, NAND_ECC_WRITE);
-		chip->write_buf(mtd, p, eccsize);
+		chip->ecc.hwctl(chip, NAND_ECC_WRITE);
+		chip->write_buf(chip, p, eccsize);
 
 		if (chip->ecc.prepad) {
-			chip->write_buf(mtd, oob, chip->ecc.prepad);
+			chip->write_buf(chip, oob, chip->ecc.prepad);
 			oob += chip->ecc.prepad;
 		}
 
-		chip->ecc.calculate(mtd, p, oob);
-		chip->write_buf(mtd, oob, eccbytes);
+		chip->ecc.calculate(chip, p, oob);
+		chip->write_buf(chip, oob, eccbytes);
 		oob += eccbytes;
 
 		if (chip->ecc.postpad) {
-			chip->write_buf(mtd, oob, chip->ecc.postpad);
+			chip->write_buf(chip, oob, chip->ecc.postpad);
 			oob += chip->ecc.postpad;
 		}
 	}
 
 	/* Calculate remaining oob bytes */
-	i = mtd->oobsize - (oob - chip->oob_poi);
+	i = chip->mtd.oobsize - (oob - chip->oob_poi);
 	if (i)
-		chip->write_buf(mtd, oob, i);
+		chip->write_buf(chip, oob, i);
 
 	return 0;
 }
@@ -2250,7 +2224,7 @@ static __maybe_unused int nand_write_page_syndrome(struct mtd_info *mtd,
  * @cached: cached programming
  * @raw: use _raw version of write_page
  */
-static int nand_write_page(struct mtd_info *mtd, struct nand_chip *chip,
+static int nand_write_page(struct nand_chip *chip,
 		uint32_t offset, int data_len, const uint8_t *buf,
 		int oob_required, int page, int cached, int raw)
 {
@@ -2261,20 +2235,20 @@ static int nand_write_page(struct mtd_info *mtd, struct nand_chip *chip,
 
 	if (!(chip->options & NAND_NO_SUBPAGE_WRITE) &&
 		chip->ecc.write_subpage)
-		subpage = offset || (data_len < mtd->writesize);
+		subpage = offset || (data_len < chip->mtd.writesize);
 	else
 		subpage = 0;
 
-	chip->cmdfunc(mtd, NAND_CMD_SEQIN, 0x00, page);
+	chip->cmdfunc(chip, NAND_CMD_SEQIN, 0x00, page);
 
 	if (unlikely(raw))
-		status = chip->ecc.write_page_raw(mtd, chip, buf,
+		status = chip->ecc.write_page_raw(chip, buf,
 							oob_required);
 	else if (subpage)
-		status = chip->ecc.write_subpage(mtd, chip, offset, data_len,
+		status = chip->ecc.write_subpage(chip, offset, data_len,
 							 buf, oob_required);
 	else
-		status = chip->ecc.write_page(mtd, chip, buf, oob_required);
+		status = chip->ecc.write_page(chip, buf, oob_required);
 
 	if (status < 0)
 		return status;
@@ -2287,14 +2261,14 @@ static int nand_write_page(struct mtd_info *mtd, struct nand_chip *chip,
 
 	if (!cached || !NAND_HAS_CACHEPROG(chip)) {
 
-		chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
-		status = chip->waitfunc(mtd, chip);
+		chip->cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
+		status = chip->waitfunc(chip);
 
 		if (status & NAND_STATUS_FAIL)
 			return -EIO;
 	} else {
-		chip->cmdfunc(mtd, NAND_CMD_CACHEDPROG, -1, -1);
-		status = chip->waitfunc(mtd, chip);
+		chip->cmdfunc(chip, NAND_CMD_CACHEDPROG, -1, -1);
+		status = chip->waitfunc(chip);
 	}
 
 	return 0;
@@ -2307,16 +2281,14 @@ static int nand_write_page(struct mtd_info *mtd, struct nand_chip *chip,
  * @len: oob data write length
  * @ops: oob ops structure
  */
-static uint8_t *nand_fill_oob(struct mtd_info *mtd, uint8_t *oob, size_t len,
+static uint8_t *nand_fill_oob(struct nand_chip *chip, uint8_t *oob, size_t len,
 			      struct mtd_oob_ops *ops)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
-
 	/*
 	 * Initialise to all 0xFF, to avoid the possibility of left over OOB
 	 * data from a previous OOB read.
 	 */
-	memset(chip->oob_poi, 0xff, mtd->oobsize);
+	memset(chip->oob_poi, 0xff, chip->mtd.oobsize);
 
 	switch (ops->mode) {
 
@@ -2366,11 +2338,11 @@ static uint8_t *nand_fill_oob(struct mtd_info *mtd, uint8_t *oob, size_t len,
  *
  * NAND write with ECC.
  */
-static int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
+static int nand_do_write_ops(struct nand_chip *chip, loff_t to,
 			     struct mtd_oob_ops *ops)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int chipnr, realpage, page, blockmask, column;
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	uint32_t writelen = ops->len;
 
 	uint32_t oobwritelen = ops->ooblen;
@@ -2392,10 +2364,10 @@ static int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
 	column = to & (mtd->writesize - 1);
 
 	chipnr = (int)(to >> chip->chip_shift);
-	chip->select_chip(mtd, chipnr);
+	chip->select_chip(chip, chipnr);
 
 	/* Check, if it is write protected */
-	if (nand_check_wp(mtd)) {
+	if (nand_check_wp(chip)) {
 		ret = -EIO;
 		goto err_out;
 	}
@@ -2432,7 +2404,7 @@ static int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
 
 		if (unlikely(oob)) {
 			size_t len = min(oobwritelen, oobmaxlen);
-			oob = nand_fill_oob(mtd, oob, len, ops);
+			oob = nand_fill_oob(chip, oob, len, ops);
 			oobwritelen -= len;
 		} else {
 			/* We still need to erase leftover OOB data */
@@ -2440,7 +2412,7 @@ static int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
 		}
 
 		if (oob || !mtd_buf_all_ff(wbuf, mtd->writesize)) {
-			ret = chip->write_page(mtd, chip, column, bytes, wbuf,
+			ret = chip->write_page(chip, column, bytes, wbuf,
 					oob_required, page, cached,
 					(ops->mode == MTD_OPS_RAW));
 			if (ret)
@@ -2459,8 +2431,8 @@ static int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
 		/* Check, if we cross a chip boundary */
 		if (!page) {
 			chipnr++;
-			chip->select_chip(mtd, -1);
-			chip->select_chip(mtd, chipnr);
+			chip->select_chip(chip, -1);
+			chip->select_chip(chip, chipnr);
 		}
 	}
 
@@ -2469,7 +2441,7 @@ static int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
 		ops->oobretlen = ops->ooblen;
 
 err_out:
-	chip->select_chip(mtd, -1);
+	chip->select_chip(chip, -1);
 	return ret;
 }
 
@@ -2486,20 +2458,21 @@ err_out:
 static int nand_write(struct mtd_info *mtd, loff_t to, size_t len,
 			  size_t *retlen, const uint8_t *buf)
 {
+	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct mtd_oob_ops ops;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_MTD_WRITE))
 		return -ENOTSUPP;
 
-	nand_get_device(mtd, FL_WRITING);
+	nand_get_device(chip, FL_WRITING);
 	ops.len = len;
 	ops.datbuf = (uint8_t *)buf;
 	ops.oobbuf = NULL;
 	ops.mode = MTD_OPS_PLACE_OOB;
-	ret = nand_do_write_ops(mtd, to, &ops);
+	ret = nand_do_write_ops(chip, to, &ops);
 	*retlen = ops.retlen;
-	nand_release_device(mtd);
+	nand_release_device(chip);
 	return ret;
 }
 
@@ -2511,11 +2484,11 @@ static int nand_write(struct mtd_info *mtd, loff_t to, size_t len,
  *
  * NAND write out-of-band.
  */
-static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
+static int nand_do_write_oob(struct nand_chip *chip, loff_t to,
 			     struct mtd_oob_ops *ops)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int chipnr, page, status, len;
-	struct nand_chip *chip = mtd_to_nand(mtd);
 
 	if (!IS_ENABLED(CONFIG_MTD_WRITE))
 		return -ENOTSUPP;
@@ -2552,7 +2525,7 @@ static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
 	}
 
 	chipnr = (int)(to >> chip->chip_shift);
-	chip->select_chip(mtd, chipnr);
+	chip->select_chip(chip, chipnr);
 
 	/* Shift to get page */
 	page = (int)(to >> chip->page_shift);
@@ -2563,11 +2536,11 @@ static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
 	 * if we don't do this. I have no clue why, but I seem to have 'fixed'
 	 * it in the doc2000 driver in August 1999.  dwmw2.
 	 */
-	chip->cmdfunc(mtd, NAND_CMD_RESET, -1, -1);
+	chip->cmdfunc(chip, NAND_CMD_RESET, -1, -1);
 
 	/* Check, if it is write protected */
-	if (nand_check_wp(mtd)) {
-		chip->select_chip(mtd, -1);
+	if (nand_check_wp(chip)) {
+		chip->select_chip(chip, -1);
 		return -EROFS;
 	}
 
@@ -2575,14 +2548,14 @@ static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
 	if (page == chip->pagebuf)
 		chip->pagebuf = -1;
 
-	nand_fill_oob(mtd, ops->oobbuf, ops->ooblen, ops);
+	nand_fill_oob(chip, ops->oobbuf, ops->ooblen, ops);
 
 	if (ops->mode == MTD_OPS_RAW)
-		status = chip->ecc.write_oob_raw(mtd, chip, page & chip->pagemask);
+		status = chip->ecc.write_oob_raw(chip, page & chip->pagemask);
 	else
-		status = chip->ecc.write_oob(mtd, chip, page & chip->pagemask);
+		status = chip->ecc.write_oob(chip, page & chip->pagemask);
 
-	chip->select_chip(mtd, -1);
+	chip->select_chip(chip, -1);
 
 	if (status)
 		return status;
@@ -2601,6 +2574,7 @@ static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
 static int nand_write_oob(struct mtd_info *mtd, loff_t to,
 			  struct mtd_oob_ops *ops)
 {
+	struct nand_chip *chip = mtd_to_nand(mtd);
 	int ret = -ENOTSUPP;
 
 	if (!IS_ENABLED(CONFIG_MTD_WRITE))
@@ -2615,7 +2589,7 @@ static int nand_write_oob(struct mtd_info *mtd, loff_t to,
 		return -EINVAL;
 	}
 
-	nand_get_device(mtd, FL_WRITING);
+	nand_get_device(chip, FL_WRITING);
 
 	switch (ops->mode) {
 	case MTD_OPS_PLACE_OOB:
@@ -2628,12 +2602,12 @@ static int nand_write_oob(struct mtd_info *mtd, loff_t to,
 	}
 
 	if (!ops->datbuf)
-		ret = nand_do_write_oob(mtd, to, ops);
+		ret = nand_do_write_oob(chip, to, ops);
 	else
-		ret = nand_do_write_ops(mtd, to, ops);
+		ret = nand_do_write_ops(chip, to, ops);
 
 out:
-	nand_release_device(mtd);
+	nand_release_device(chip);
 	return ret;
 }
 
@@ -2644,16 +2618,14 @@ out:
  *
  * Standard erase command for NAND chips.
  */
-static void single_erase_cmd(struct mtd_info *mtd, int page)
+static void single_erase_cmd(struct nand_chip *chip, int page)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
-
 	if (!IS_ENABLED(CONFIG_MTD_WRITE))
 		return;
 
 	/* Send commands to erase a block */
-	chip->cmdfunc(mtd, NAND_CMD_ERASE1, -1, page);
-	chip->cmdfunc(mtd, NAND_CMD_ERASE2, -1, -1);
+	chip->cmdfunc(chip, NAND_CMD_ERASE1, -1, page);
+	chip->cmdfunc(chip, NAND_CMD_ERASE2, -1, -1);
 }
 
 /**
@@ -2665,10 +2637,12 @@ static void single_erase_cmd(struct mtd_info *mtd, int page)
  */
 static int nand_erase(struct mtd_info *mtd, struct erase_info *instr)
 {
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
 	if (!IS_ENABLED(CONFIG_MTD_WRITE))
 		return -ENOTSUPP;
 
-	return nand_erase_nand(mtd, instr, 0);
+	return nand_erase_nand(chip, instr, 0);
 }
 
 /**
@@ -2679,11 +2653,10 @@ static int nand_erase(struct mtd_info *mtd, struct erase_info *instr)
  *
  * Erase one ore more blocks.
  */
-int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
+int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 		    int allowbbt)
 {
 	int page, status, pages_per_block, ret, chipnr;
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	loff_t len;
 
 	if (!IS_ENABLED(CONFIG_MTD_WRITE))
@@ -2693,11 +2666,11 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 			__func__, (unsigned long long)instr->addr,
 			(unsigned long long)instr->len);
 
-	if (check_offs_len(mtd, instr->addr, instr->len))
+	if (check_offs_len(chip, instr->addr, instr->len))
 		return -EINVAL;
 
 	/* Grab the lock and see if the device is available */
-	nand_get_device(mtd, FL_ERASING);
+	nand_get_device(chip, FL_ERASING);
 
 	/* Shift to get first page */
 	page = (int)(instr->addr >> chip->page_shift);
@@ -2707,10 +2680,10 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 	pages_per_block = 1 << (chip->phys_erase_shift - chip->page_shift);
 
 	/* Select the NAND device */
-	chip->select_chip(mtd, chipnr);
+	chip->select_chip(chip, chipnr);
 
 	/* Check, if it is write protected */
-	if (nand_check_wp(mtd)) {
+	if (nand_check_wp(chip)) {
 		pr_debug("%s: device is write protected!\n",
 				__func__);
 		ret = -EIO;
@@ -2722,8 +2695,8 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 
 	while (len) {
 		/* Check if we have a bad block, we do not erase bad blocks! */
-		if (!mtd->allow_erasebad &&
-				nand_block_checkbad(mtd, ((loff_t) page) <<
+		if (!chip->mtd.allow_erasebad &&
+				nand_block_checkbad(chip, ((loff_t) page) <<
 					chip->page_shift, 0, allowbbt)) {
 			pr_warn("%s: attempt to erase a bad block at page 0x%08x\n",
 				    __func__, page);
@@ -2739,9 +2712,9 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 		    (page + pages_per_block))
 			chip->pagebuf = -1;
 
-		single_erase_cmd(mtd, page & chip->pagemask);
+		single_erase_cmd(chip, page & chip->pagemask);
 
-		status = chip->waitfunc(mtd, chip);
+		status = chip->waitfunc(chip);
 
 		/* See if block erase succeeded */
 		if (status & NAND_STATUS_FAIL) {
@@ -2760,8 +2733,8 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 		/* Check, if we cross a chip boundary */
 		if (len && !(page & chip->pagemask)) {
 			chipnr++;
-			chip->select_chip(mtd, -1);
-			chip->select_chip(mtd, chipnr);
+			chip->select_chip(chip, -1);
+			chip->select_chip(chip, chipnr);
 		}
 	}
 
@@ -2769,8 +2742,8 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 
 erase_exit:
 	/* Deselect and wake up anyone waiting on the device */
-	chip->select_chip(mtd, -1);
-	nand_release_device(mtd);
+	chip->select_chip(chip, -1);
+	nand_release_device(chip);
 
 	/* Return more or less happy */
 	return ret;
@@ -2784,12 +2757,14 @@ erase_exit:
  */
 static void nand_sync(struct mtd_info *mtd)
 {
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
 	pr_debug("%s: called\n", __func__);
 
 	/* Grab the lock and see if the device is available */
-	nand_get_device(mtd, FL_SYNCING);
+	nand_get_device(chip, FL_SYNCING);
 	/* Release it and go back */
-	nand_release_device(mtd);
+	nand_release_device(chip);
 }
 
 /**
@@ -2799,7 +2774,9 @@ static void nand_sync(struct mtd_info *mtd)
  */
 static int nand_block_isbad(struct mtd_info *mtd, loff_t offs)
 {
-	return nand_block_checkbad(mtd, offs, 1, 0);
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	return nand_block_checkbad(chip, offs, 1, 0);
 }
 
 /**
@@ -2809,6 +2786,7 @@ static int nand_block_isbad(struct mtd_info *mtd, loff_t offs)
  */
 static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
 {
+	struct nand_chip *chip = mtd_to_nand(mtd);
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_MTD_WRITE))
@@ -2822,7 +2800,7 @@ static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
 		return ret;
 	}
 
-	return nand_block_markbad_lowlevel(mtd, ofs);
+	return nand_block_markbad_lowlevel(chip, ofs);
 }
 
 /**
@@ -2832,6 +2810,7 @@ static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
  */
 static int nand_block_markgood(struct mtd_info *mtd, loff_t ofs)
 {
+	struct nand_chip *chip = mtd_to_nand(mtd);
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_MTD_WRITE))
@@ -2845,7 +2824,7 @@ static int nand_block_markgood(struct mtd_info *mtd, loff_t ofs)
 	if (!ret)
 		return 0;
 
-	return nand_block_markgood_lowlevel(mtd, ofs);
+	return nand_block_markgood_lowlevel(chip, ofs);
 }
 
 /**
@@ -2855,7 +2834,7 @@ static int nand_block_markgood(struct mtd_info *mtd, loff_t ofs)
  * @addr: feature address.
  * @subfeature_param: the subfeature parameters, a four bytes array.
  */
-static int nand_onfi_set_features(struct mtd_info *mtd, struct nand_chip *chip,
+static int nand_onfi_set_features(struct nand_chip *chip,
 			int addr, uint8_t *subfeature_param)
 {
 	int status;
@@ -2865,9 +2844,9 @@ static int nand_onfi_set_features(struct mtd_info *mtd, struct nand_chip *chip,
 	      & ONFI_OPT_CMD_SET_GET_FEATURES))
 		return -EINVAL;
 
-	chip->cmdfunc(mtd, NAND_CMD_SET_FEATURES, addr, -1);
-	chip->write_buf(mtd, subfeature_param, ONFI_SUBFEATURE_PARAM_LEN);
-	status = chip->waitfunc(mtd, chip);
+	chip->cmdfunc(chip, NAND_CMD_SET_FEATURES, addr, -1);
+	chip->write_buf(chip, subfeature_param, ONFI_SUBFEATURE_PARAM_LEN);
+	status = chip->waitfunc(chip);
 	if (status & NAND_STATUS_FAIL)
 		return -EIO;
 	return 0;
@@ -2880,7 +2859,7 @@ static int nand_onfi_set_features(struct mtd_info *mtd, struct nand_chip *chip,
  * @addr: feature address.
  * @subfeature_param: the subfeature parameters, a four bytes array.
  */
-static int nand_onfi_get_features(struct mtd_info *mtd, struct nand_chip *chip,
+static int nand_onfi_get_features(struct nand_chip *chip,
 			int addr, uint8_t *subfeature_param)
 {
 	if (!chip->onfi_version ||
@@ -2891,8 +2870,8 @@ static int nand_onfi_get_features(struct mtd_info *mtd, struct nand_chip *chip,
 	/* clear the sub feature parameters */
 	memset(subfeature_param, 0, ONFI_SUBFEATURE_PARAM_LEN);
 
-	chip->cmdfunc(mtd, NAND_CMD_GET_FEATURES, addr, -1);
-	chip->read_buf(mtd, subfeature_param, ONFI_SUBFEATURE_PARAM_LEN);
+	chip->cmdfunc(chip, NAND_CMD_GET_FEATURES, addr, -1);
+	chip->read_buf(chip, subfeature_param, ONFI_SUBFEATURE_PARAM_LEN);
 	return 0;
 }
 
@@ -2977,23 +2956,23 @@ static u16 onfi_crc16(u16 crc, u8 const *p, size_t len)
 /*
  * Check if the NAND chip is ONFI compliant, returns 1 if it is, 0 otherwise.
  */
-static int nand_flash_detect_onfi(struct mtd_info *mtd, struct nand_chip *chip,
-					int *busw)
+static int nand_flash_detect_onfi(struct nand_chip *chip, int *busw)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_onfi_params *p = &chip->onfi_params;
 	int i, j;
 	int val;
 
 	/* Try ONFI for unknown chip or LP */
-	chip->cmdfunc(mtd, NAND_CMD_READID, 0x20, -1);
-	if (chip->read_byte(mtd) != 'O' || chip->read_byte(mtd) != 'N' ||
-		chip->read_byte(mtd) != 'F' || chip->read_byte(mtd) != 'I')
+	chip->cmdfunc(chip, NAND_CMD_READID, 0x20, -1);
+	if (chip->read_byte(chip) != 'O' || chip->read_byte(chip) != 'N' ||
+		chip->read_byte(chip) != 'F' || chip->read_byte(chip) != 'I')
 		return 0;
 
-	chip->cmdfunc(mtd, NAND_CMD_PARAM, 0, -1);
+	chip->cmdfunc(chip, NAND_CMD_PARAM, 0, -1);
 	for (i = 0; i < 3; i++) {
 		for (j = 0; j < sizeof(*p); j++)
-			((uint8_t *)p)[j] = chip->read_byte(mtd);
+			((uint8_t *)p)[j] = chip->read_byte(chip);
 		if (onfi_crc16(ONFI_CRC_BASE, (uint8_t *)p, 254) ==
 				le16_to_cpu(p->crc)) {
 			break;
@@ -3314,9 +3293,11 @@ static inline bool is_full_id_nand(struct nand_flash_dev *type)
 	return type->id_len;
 }
 
-static bool find_full_id_nand(struct mtd_info *mtd, struct nand_chip *chip,
+static bool find_full_id_nand(struct nand_chip *chip,
 		   struct nand_flash_dev *type, u8 *id_data, int *busw)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
+
 	if (!strncmp(type->id, id_data, type->id_len)) {
 		mtd->writesize = type->pagesize;
 		mtd->erasesize = type->erasesize;
@@ -3336,30 +3317,30 @@ static bool find_full_id_nand(struct mtd_info *mtd, struct nand_chip *chip,
 /*
  * Get the flash and manufacturer id and lookup if the type is supported.
  */
-static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
-						  struct nand_chip *chip,
+static struct nand_flash_dev *nand_get_flash_type(struct nand_chip *chip,
 						  int busw,
 						  int *maf_id, int *dev_id,
 						  struct nand_flash_dev *type)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int i, maf_idx;
 	u8 id_data[8];
 
 	/* Select the device */
-	chip->select_chip(mtd, 0);
+	chip->select_chip(chip, 0);
 
 	/*
 	 * Reset the chip, required by some chips (e.g. Micron MT29FxGxxxxx)
 	 * after power-up.
 	 */
-	chip->cmdfunc(mtd, NAND_CMD_RESET, -1, -1);
+	chip->cmdfunc(chip, NAND_CMD_RESET, -1, -1);
 
 	/* Send the command for reading device ID */
-	chip->cmdfunc(mtd, NAND_CMD_READID, 0x00, -1);
+	chip->cmdfunc(chip, NAND_CMD_READID, 0x00, -1);
 
 	/* Read manufacturer and device IDs */
-	*maf_id = chip->read_byte(mtd);
-	*dev_id = chip->read_byte(mtd);
+	*maf_id = chip->read_byte(chip);
+	*dev_id = chip->read_byte(chip);
 
 	/*
 	 * Try again to make sure, as some systems the bus-hold or other
@@ -3368,11 +3349,11 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 	 * not match, ignore the device completely.
 	 */
 
-	chip->cmdfunc(mtd, NAND_CMD_READID, 0x00, -1);
+	chip->cmdfunc(chip, NAND_CMD_READID, 0x00, -1);
 
 	/* Read entire ID string */
 	for (i = 0; i < 8; i++)
-		id_data[i] = chip->read_byte(mtd);
+		id_data[i] = chip->read_byte(chip);
 
 	if (id_data[0] != *maf_id || id_data[1] != *dev_id) {
 		pr_info("%s: second ID read did not match "
@@ -3386,7 +3367,7 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 
 	for (; type->name != NULL; type++) {
 		if (is_full_id_nand(type)) {
-			if (find_full_id_nand(mtd, chip, type, id_data, &busw))
+			if (find_full_id_nand(chip, type, id_data, &busw))
 				goto ident_done;
 		} else if (*dev_id == type->dev_id) {
 				break;
@@ -3396,7 +3377,7 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 	chip->onfi_version = 0;
 	if (!type->name || !type->pagesize) {
 		/* Check is chip is ONFI compliant */
-		if (nand_flash_detect_onfi(mtd, chip, &busw))
+		if (nand_flash_detect_onfi(chip, &busw))
 			goto ident_done;
 	}
 
@@ -3408,10 +3389,7 @@ static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
 
 	chip->chipsize = (uint64_t)type->chipsize << 20;
 
-	if (!type->pagesize && chip->init_size) {
-		/* Set the pagesize, oobsize, erasesize by the driver */
-		busw = chip->init_size(mtd, chip, id_data);
-	} else if (!type->pagesize) {
+	if (!type->pagesize) {
 		/* Decode parameters from extended ID */
 		nand_decode_ext_id(mtd, chip, id_data, &busw);
 	} else {
@@ -3520,11 +3498,11 @@ void nand_of_parse_node(struct mtd_info *mtd, struct device_node *np)
  *
  * The mtd->owner field must be set to the module of the caller.
  */
-int nand_scan_ident(struct mtd_info *mtd, int maxchips,
+int nand_scan_ident(struct nand_chip *chip, int maxchips,
 		    struct nand_flash_dev *table)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int i, busw, nand_maf_id, nand_dev_id;
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct nand_flash_dev *type;
 
 	/* Get buswidth to select the correct functions */
@@ -3533,32 +3511,32 @@ int nand_scan_ident(struct mtd_info *mtd, int maxchips,
 	nand_set_defaults(chip, busw);
 
 	/* Read the flash type */
-	type = nand_get_flash_type(mtd, chip, busw,
+	type = nand_get_flash_type(chip, busw,
 				&nand_maf_id, &nand_dev_id, table);
 
 	if (IS_ERR(type)) {
 		if (!(chip->options & NAND_SCAN_SILENT_NODEV))
 			pr_warn("No NAND device found\n");
-		chip->select_chip(mtd, -1);
+		chip->select_chip(chip, -1);
 		return PTR_ERR(type);
 	}
 
-	chip->select_chip(mtd, -1);
+	chip->select_chip(chip, -1);
 
 	/* Check for a chip array */
 	for (i = 1; i < maxchips; i++) {
-		chip->select_chip(mtd, i);
+		chip->select_chip(chip, i);
 		/* See comment in nand_get_flash_type for reset */
-		chip->cmdfunc(mtd, NAND_CMD_RESET, -1, -1);
+		chip->cmdfunc(chip, NAND_CMD_RESET, -1, -1);
 		/* Send the command for reading device ID */
-		chip->cmdfunc(mtd, NAND_CMD_READID, 0x00, -1);
+		chip->cmdfunc(chip, NAND_CMD_READID, 0x00, -1);
 		/* Read manufacturer and device IDs */
-		if (nand_maf_id != chip->read_byte(mtd) ||
-		    nand_dev_id != chip->read_byte(mtd)) {
-			chip->select_chip(mtd, -1);
+		if (nand_maf_id != chip->read_byte(chip) ||
+		    nand_dev_id != chip->read_byte(chip)) {
+			chip->select_chip(chip, -1);
 			break;
 		}
-		chip->select_chip(mtd, -1);
+		chip->select_chip(chip, -1);
 	}
 	if (i > 1)
 		pr_info("%d NAND chips detected\n", i);
@@ -3580,10 +3558,10 @@ EXPORT_SYMBOL(nand_scan_ident);
  * all the uninitialized function pointers with the defaults and scans for a
  * bad block table if appropriate.
  */
-int nand_scan_tail(struct mtd_info *mtd)
+int nand_scan_tail(struct nand_chip *chip)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int i;
-	struct nand_chip *chip = mtd_to_nand(mtd);
 
 	/* New bad blocks should be marked in OOB, flash-based BBT, or both */
 	BUG_ON((chip->bbt_options & NAND_BBT_NO_OOB_BBM) &&
@@ -3738,7 +3716,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 
 		/* See nand_bch_init() for details. */
 		chip->ecc.bytes = 0;
-		chip->ecc.priv = nand_bch_init(mtd);
+		chip->ecc.priv = nand_bch_init(chip);
 		if (!chip->ecc.priv) {
 			pr_warn("BCH ECC initialization failed!\n");
 			BUG();
@@ -3853,7 +3831,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 		return 0;
 
 	/* Build bad block table */
-	return chip->scan_bbt(mtd);
+	return chip->scan_bbt(chip);
 }
 EXPORT_SYMBOL(nand_scan_tail);
 
@@ -3867,13 +3845,13 @@ EXPORT_SYMBOL(nand_scan_tail);
  * appropriate values. The mtd->owner field must be set to the module of the
  * caller.
  */
-int nand_scan(struct mtd_info *mtd, int maxchips)
+int nand_scan(struct nand_chip *chip, int maxchips)
 {
 	int ret;
 
-	ret = nand_scan_ident(mtd, maxchips, NULL);
+	ret = nand_scan_ident(chip, maxchips, NULL);
 	if (!ret)
-		ret = nand_scan_tail(mtd);
+		ret = nand_scan_tail(chip);
 	return ret;
 }
 EXPORT_SYMBOL(nand_scan);
@@ -3882,9 +3860,9 @@ EXPORT_SYMBOL(nand_scan);
  * nand_release - [NAND Interface] Free resources held by the NAND device
  * @mtd: MTD device structure
  */
-void nand_release(struct mtd_info *mtd)
+void nand_release(struct nand_chip *chip)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(chip);
 
 	if (chip->ecc.mode == NAND_ECC_SOFT_BCH)
 		nand_bch_free((struct nand_bch_control *)chip->ecc.priv);
@@ -3952,9 +3930,9 @@ static int mtd_get_bbt_type(struct param_d *p, void *priv)
 	return 0;
 }
 
-int add_mtd_nand_device(struct mtd_info *mtd, char *devname)
+int add_mtd_nand_device(struct nand_chip *chip, char *devname)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int ret;
 
 	ret = add_mtd_device(mtd, devname, DEVICE_ID_DYNAMIC);
diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index ed4104629a..16e77d924e 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -173,11 +173,11 @@ static u32 add_marker_len(struct nand_bbt_descr *td)
  *
  * Read the bad block table starting from page.
  */
-static int read_bbt(struct mtd_info *mtd, uint8_t *buf, int page, int num,
+static int read_bbt(struct nand_chip *this, uint8_t *buf, int page, int num,
 		struct nand_bbt_descr *td, int offs)
 {
+	struct mtd_info *mtd = nand_to_mtd(this);
 	int res, ret = 0, i, j, act = 0;
-	struct nand_chip *this = mtd_to_nand(mtd);
 	size_t retlen, len, totlen;
 	loff_t from;
 	int bits = td->options & NAND_BBT_NRBITS_MSK;
@@ -262,16 +262,17 @@ static int read_bbt(struct mtd_info *mtd, uint8_t *buf, int page, int num,
  * Read the bad block table for all chips starting at a given page. We assume
  * that the bbt bits are in consecutive order.
  */
-static int read_abs_bbt(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr *td, int chip)
+static int read_abs_bbt(struct nand_chip *this, uint8_t *buf, struct nand_bbt_descr *td,
+			int chip)
 {
-	struct nand_chip *this = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(this);
 	int res = 0, i;
 
 	if (td->options & NAND_BBT_PERCHIP) {
 		int offs = 0;
 		for (i = 0; i < this->numchips; i++) {
 			if (chip == -1 || chip == i)
-				res = read_bbt(mtd, buf, td->pages[i],
+				res = read_bbt(this, buf, td->pages[i],
 					this->chipsize >> this->bbt_erase_shift,
 					td, offs);
 			if (res)
@@ -279,7 +280,7 @@ static int read_abs_bbt(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_desc
 			offs += this->chipsize >> this->bbt_erase_shift;
 		}
 	} else {
-		res = read_bbt(mtd, buf, td->pages[0],
+		res = read_bbt(this, buf, td->pages[0],
 				mtd->size >> this->bbt_erase_shift, td, 0);
 		if (res)
 			return res;
@@ -288,9 +289,10 @@ static int read_abs_bbt(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_desc
 }
 
 /* BBT marker is in the first page, no OOB */
-static int scan_read_data(struct mtd_info *mtd, uint8_t *buf, loff_t offs,
+static int scan_read_data(struct nand_chip *this, uint8_t *buf, loff_t offs,
 			 struct nand_bbt_descr *td)
 {
+	struct mtd_info *mtd = nand_to_mtd(this);
 	size_t retlen;
 	size_t len;
 
@@ -312,9 +314,10 @@ static int scan_read_data(struct mtd_info *mtd, uint8_t *buf, loff_t offs,
  * page,OOB,page,OOB,... in buf. Completes transfer and returns the "strongest"
  * ECC condition (error or bitflip). May quit on the first (non-ECC) error.
  */
-static int scan_read_oob(struct mtd_info *mtd, uint8_t *buf, loff_t offs,
+static int scan_read_oob(struct nand_chip *this, uint8_t *buf, loff_t offs,
 			 size_t len)
 {
+	struct mtd_info *mtd = nand_to_mtd(this);
 	struct mtd_oob_ops ops;
 	int res, ret = 0;
 
@@ -342,19 +345,20 @@ static int scan_read_oob(struct mtd_info *mtd, uint8_t *buf, loff_t offs,
 	return ret;
 }
 
-static int scan_read(struct mtd_info *mtd, uint8_t *buf, loff_t offs,
+static int scan_read(struct nand_chip *this, uint8_t *buf, loff_t offs,
 			 size_t len, struct nand_bbt_descr *td)
 {
 	if (td->options & NAND_BBT_NO_OOB)
-		return scan_read_data(mtd, buf, offs, td);
+		return scan_read_data(this, buf, offs, td);
 	else
-		return scan_read_oob(mtd, buf, offs, len);
+		return scan_read_oob(this, buf, offs, len);
 }
 
 /* Scan write data with oob to flash */
-static int scan_write_bbt(struct mtd_info *mtd, loff_t offs, size_t len,
+static int scan_write_bbt(struct nand_chip *this, loff_t offs, size_t len,
 			  uint8_t *buf, uint8_t *oob)
 {
+	struct mtd_info *mtd = nand_to_mtd(this);
 	struct mtd_oob_ops ops;
 
 	ops.mode = MTD_OPS_PLACE_OOB;
@@ -367,8 +371,9 @@ static int scan_write_bbt(struct mtd_info *mtd, loff_t offs, size_t len,
 	return mtd_write_oob(mtd, offs, &ops);
 }
 
-static u32 bbt_get_ver_offs(struct mtd_info *mtd, struct nand_bbt_descr *td)
+static u32 bbt_get_ver_offs(struct nand_chip *this, struct nand_bbt_descr *td)
 {
+	struct mtd_info *mtd = nand_to_mtd(this);
 	u32 ver_offs = td->veroffs;
 
 	if (!(td->options & NAND_BBT_NO_OOB))
@@ -386,34 +391,35 @@ static u32 bbt_get_ver_offs(struct mtd_info *mtd, struct nand_bbt_descr *td)
  * Read the bad block table(s) for all chips starting at a given page. We
  * assume that the bbt bits are in consecutive order.
  */
-static void read_abs_bbts(struct mtd_info *mtd, uint8_t *buf,
+static void read_abs_bbts(struct nand_chip *this, uint8_t *buf,
 			  struct nand_bbt_descr *td, struct nand_bbt_descr *md)
 {
-	struct nand_chip *this = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(this);
 
 	/* Read the primary version, if available */
 	if (td->options & NAND_BBT_VERSION) {
-		scan_read(mtd, buf, (loff_t)td->pages[0] << this->page_shift,
+		scan_read(this, buf, (loff_t)td->pages[0] << this->page_shift,
 			      mtd->writesize, td);
-		td->version[0] = buf[bbt_get_ver_offs(mtd, td)];
+		td->version[0] = buf[bbt_get_ver_offs(this, td)];
 		pr_info("Bad block table at page %d, version 0x%02X\n",
 			 td->pages[0], td->version[0]);
 	}
 
 	/* Read the mirror version, if available */
 	if (md && (md->options & NAND_BBT_VERSION)) {
-		scan_read(mtd, buf, (loff_t)md->pages[0] << this->page_shift,
+		scan_read(this, buf, (loff_t)md->pages[0] << this->page_shift,
 			      mtd->writesize, md);
-		md->version[0] = buf[bbt_get_ver_offs(mtd, md)];
+		md->version[0] = buf[bbt_get_ver_offs(this, md)];
 		pr_info("Bad block table at page %d, version 0x%02X\n",
 			 md->pages[0], md->version[0]);
 	}
 }
 
 /* Scan a given block partially */
-static int scan_block_fast(struct mtd_info *mtd, struct nand_bbt_descr *bd,
+static int scan_block_fast(struct nand_chip *this, struct nand_bbt_descr *bd,
 			   loff_t offs, uint8_t *buf, int numpages)
 {
+	struct mtd_info *mtd = nand_to_mtd(this);
 	struct mtd_oob_ops ops;
 	int j, ret;
 
@@ -452,10 +458,10 @@ static int scan_block_fast(struct mtd_info *mtd, struct nand_bbt_descr *bd,
  * Create a bad block table by scanning the device for the given good/bad block
  * identify pattern.
  */
-static int create_bbt(struct mtd_info *mtd, uint8_t *buf,
+static int create_bbt(struct nand_chip *this, uint8_t *buf,
 	struct nand_bbt_descr *bd, int chip)
 {
-	struct nand_chip *this = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(this);
 	int i, numblocks, numpages;
 	int startblock;
 	loff_t from;
@@ -491,7 +497,7 @@ static int create_bbt(struct mtd_info *mtd, uint8_t *buf,
 
 		BUG_ON(bd->options & NAND_BBT_NO_OOB);
 
-		ret = scan_block_fast(mtd, bd, from, buf, numpages);
+		ret = scan_block_fast(this, bd, from, buf, numpages);
 		if (ret < 0)
 			return ret;
 
@@ -522,9 +528,9 @@ static int create_bbt(struct mtd_info *mtd, uint8_t *buf,
  *
  * The bbt ident pattern resides in the oob area of the first page in a block.
  */
-static int search_bbt(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr *td)
+static int search_bbt(struct nand_chip *this, uint8_t *buf, struct nand_bbt_descr *td)
 {
-	struct nand_chip *this = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(this);
 	int i, chips;
 	int startblock, block, dir;
 	int scanlen = mtd->writesize + mtd->oobsize;
@@ -561,11 +567,11 @@ static int search_bbt(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr
 			loff_t offs = (loff_t)actblock << this->bbt_erase_shift;
 
 			/* Read first page */
-			scan_read(mtd, buf, offs, mtd->writesize, td);
+			scan_read(this, buf, offs, mtd->writesize, td);
 			if (!check_pattern(buf, scanlen, mtd->writesize, td)) {
 				td->pages[i] = actblock << blocktopage;
 				if (td->options & NAND_BBT_VERSION) {
-					offs = bbt_get_ver_offs(mtd, td);
+					offs = bbt_get_ver_offs(this, td);
 					td->version[i] = buf[offs];
 				}
 				break;
@@ -593,16 +599,16 @@ static int search_bbt(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr
  *
  * Search and read the bad block table(s).
  */
-static void search_read_bbts(struct mtd_info *mtd, uint8_t *buf,
+static void search_read_bbts(struct nand_chip *this, uint8_t *buf,
 			     struct nand_bbt_descr *td,
 			     struct nand_bbt_descr *md)
 {
 	/* Search the primary table */
-	search_bbt(mtd, buf, td);
+	search_bbt(this, buf, td);
 
 	/* Search the mirror table */
 	if (md)
-		search_bbt(mtd, buf, md);
+		search_bbt(this, buf, md);
 }
 
 /**
@@ -680,18 +686,17 @@ static int get_bbt_block(struct nand_chip *this, struct nand_bbt_descr *td,
  * block as bad using a bad block marker and invalidating the associated
  * td->pages[] entry.
  */
-static void mark_bbt_block_bad(struct mtd_info *mtd,
+static void mark_bbt_block_bad(struct nand_chip *this,
 			       struct nand_bbt_descr *td,
 			       int chip, int block)
 {
-	struct nand_chip *this = mtd_to_nand(mtd);
 	loff_t to;
 	int res;
 
 	bbt_mark_entry(this, block, BBT_BLOCK_WORN);
 
 	to = (loff_t)block << this->bbt_erase_shift;
-	res = this->block_markbad(mtd, to);
+	res = this->block_markbad(this, to);
 	if (res)
 		pr_warn("nand_bbt: error %d while marking block %d bad\n",
 			res, block);
@@ -709,11 +714,11 @@ static void mark_bbt_block_bad(struct mtd_info *mtd,
  *
  * (Re)write the bad block table.
  */
-static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
+static int write_bbt(struct nand_chip *this, uint8_t *buf,
 		     struct nand_bbt_descr *td, struct nand_bbt_descr *md,
 		     int chipsel)
 {
-	struct nand_chip *this = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(this);
 	struct erase_info einfo;
 	int i, res, chip = 0;
 	int bits, page, offs, numblocks, sft, sftmsk;
@@ -856,21 +861,21 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 		einfo.mtd = mtd;
 		einfo.addr = to;
 		einfo.len = 1 << this->bbt_erase_shift;
-		res = nand_erase_nand(mtd, &einfo, 1);
+		res = nand_erase_nand(this, &einfo, 1);
 		if (res < 0) {
 			pr_warn("nand_bbt: error while erasing BBT block %d\n",
 				res);
-			mark_bbt_block_bad(mtd, td, chip, block);
+			mark_bbt_block_bad(this, td, chip, block);
 			continue;
 		}
 
-		res = scan_write_bbt(mtd, to, len, buf,
+		res = scan_write_bbt(this, to, len, buf,
 				td->options & NAND_BBT_NO_OOB ? NULL :
 				&buf[len]);
 		if (res < 0) {
 			pr_warn("nand_bbt: error while writing BBT block %d\n",
 				res);
-			mark_bbt_block_bad(mtd, td, chip, block);
+			mark_bbt_block_bad(this, td, chip, block);
 			continue;
 		}
 
@@ -895,11 +900,9 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
  * The function creates a memory based bbt by scanning the device for
  * manufacturer / software marked good / bad blocks.
  */
-static inline int nand_memory_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
+static inline int nand_memory_bbt(struct nand_chip *this, struct nand_bbt_descr *bd)
 {
-	struct nand_chip *this = mtd_to_nand(mtd);
-
-	return create_bbt(mtd, this->buffers->databuf, bd, -1);
+	return create_bbt(this, this->buffers->databuf, bd, -1);
 }
 
 /**
@@ -913,10 +916,9 @@ static inline int nand_memory_bbt(struct mtd_info *mtd, struct nand_bbt_descr *b
  * for the chip/device. Update is necessary if one of the tables is missing or
  * the version nr. of one table is less than the other.
  */
-static int check_create(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr *bd)
+static int check_create(struct nand_chip *this, uint8_t *buf, struct nand_bbt_descr *bd)
 {
 	int i, chips, writeops, create, chipsel, res, res2;
-	struct nand_chip *this = mtd_to_nand(mtd);
 	struct nand_bbt_descr *td = this->bbt_td;
 	struct nand_bbt_descr *md = this->bbt_md;
 	struct nand_bbt_descr *rd, *rd2;
@@ -973,7 +975,7 @@ static int check_create(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_desc
 
 			/* Create the table in memory by scanning the chip(s) */
 			if (!(this->bbt_options & NAND_BBT_CREATE_EMPTY))
-				create_bbt(mtd, buf, bd, chipsel);
+				create_bbt(this, buf, bd, chipsel);
 
 			td->version[i] = 1;
 			if (md)
@@ -982,7 +984,7 @@ static int check_create(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_desc
 
 		/* Read back first? */
 		if (rd) {
-			res = read_abs_bbt(mtd, buf, rd, chipsel);
+			res = read_abs_bbt(this, buf, rd, chipsel);
 			if (mtd_is_eccerr(res)) {
 				/* Mark table as invalid */
 				rd->pages[i] = -1;
@@ -993,7 +995,7 @@ static int check_create(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_desc
 		}
 		/* If they weren't versioned, read both */
 		if (rd2) {
-			res2 = read_abs_bbt(mtd, buf, rd2, chipsel);
+			res2 = read_abs_bbt(this, buf, rd2, chipsel);
 			if (mtd_is_eccerr(res2)) {
 				/* Mark table as invalid */
 				rd2->pages[i] = -1;
@@ -1015,14 +1017,14 @@ static int check_create(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_desc
 
 		/* Write the bad block table to the device? */
 		if ((writeops & 0x01) && (td->options & NAND_BBT_WRITE)) {
-			res = write_bbt(mtd, buf, td, md, chipsel);
+			res = write_bbt(this, buf, td, md, chipsel);
 			if (res < 0)
 				return res;
 		}
 
 		/* Write the mirror bad block table to the device? */
 		if ((writeops & 0x02) && md && (md->options & NAND_BBT_WRITE)) {
-			res = write_bbt(mtd, buf, md, td, chipsel);
+			res = write_bbt(this, buf, md, td, chipsel);
 			if (res < 0)
 				return res;
 		}
@@ -1038,9 +1040,8 @@ static int check_create(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_desc
  * The bad block table regions are marked as "bad" to prevent accidental
  * erasures / writes. The regions are identified by the mark 0x02.
  */
-static void mark_bbt_region(struct mtd_info *mtd, struct nand_bbt_descr *td)
+static void mark_bbt_region(struct nand_chip *this, struct nand_bbt_descr *td)
 {
-	struct nand_chip *this = mtd_to_nand(mtd);
 	int i, j, chips, block, nrblocks, update;
 	uint8_t oldval;
 
@@ -1050,7 +1051,7 @@ static void mark_bbt_region(struct mtd_info *mtd, struct nand_bbt_descr *td)
 		nrblocks = (int)(this->chipsize >> this->bbt_erase_shift);
 	} else {
 		chips = 1;
-		nrblocks = (int)(mtd->size >> this->bbt_erase_shift);
+		nrblocks = (int)(this->mtd.size >> this->bbt_erase_shift);
 	}
 
 	for (i = 0; i < chips; i++) {
@@ -1063,7 +1064,7 @@ static void mark_bbt_region(struct mtd_info *mtd, struct nand_bbt_descr *td)
 			bbt_mark_entry(this, block, BBT_BLOCK_RESERVED);
 			if ((oldval != BBT_BLOCK_RESERVED) &&
 					td->reserved_block_code)
-				nand_update_bbt(mtd, (loff_t)block <<
+				nand_update_bbt(this, (loff_t)block <<
 						this->bbt_erase_shift);
 			continue;
 		}
@@ -1085,7 +1086,7 @@ static void mark_bbt_region(struct mtd_info *mtd, struct nand_bbt_descr *td)
 		 * bbts.  This should only happen once.
 		 */
 		if (update && td->reserved_block_code)
-			nand_update_bbt(mtd, (loff_t)(block - 1) <<
+			nand_update_bbt(this, (loff_t)(block - 1) <<
 					this->bbt_erase_shift);
 	}
 }
@@ -1098,9 +1099,9 @@ static void mark_bbt_region(struct mtd_info *mtd, struct nand_bbt_descr *td)
  * This functions performs a few sanity checks on the bad block description
  * table.
  */
-static void verify_bbt_descr(struct mtd_info *mtd, struct nand_bbt_descr *bd)
+static void verify_bbt_descr(struct nand_chip *this, struct nand_bbt_descr *bd)
 {
-	struct nand_chip *this = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(this);
 	u32 pattern_len;
 	u32 bits;
 	u32 table_size;
@@ -1150,9 +1151,9 @@ static void verify_bbt_descr(struct mtd_info *mtd, struct nand_bbt_descr *bd)
  * The bad block table memory is allocated here. It must be freed by calling
  * the nand_free_bbt function.
  */
-static int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
+static int nand_scan_bbt(struct nand_chip *this, struct nand_bbt_descr *bd)
 {
-	struct nand_chip *this = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(this);
 	int len, res;
 	uint8_t *buf;
 	struct nand_bbt_descr *td = this->bbt_td;
@@ -1172,14 +1173,14 @@ static int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
 	 * memory based bad block table.
 	 */
 	if (!td) {
-		if ((res = nand_memory_bbt(mtd, bd))) {
+		if ((res = nand_memory_bbt(this, bd))) {
 			pr_err("nand_bbt: can't scan flash and build the RAM-based BBT\n");
 			goto err;
 		}
 		return 0;
 	}
-	verify_bbt_descr(mtd, td);
-	verify_bbt_descr(mtd, md);
+	verify_bbt_descr(this, td);
+	verify_bbt_descr(this, md);
 
 	/* Allocate a temporary buffer for one eraseblock incl. oob */
 	len = (1 << this->bbt_erase_shift);
@@ -1192,20 +1193,20 @@ static int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
 
 	/* Is the bbt at a given page? */
 	if (td->options & NAND_BBT_ABSPAGE) {
-		read_abs_bbts(mtd, buf, td, md);
+		read_abs_bbts(this, buf, td, md);
 	} else {
 		/* Search the bad block table using a pattern in oob */
-		search_read_bbts(mtd, buf, td, md);
+		search_read_bbts(this, buf, td, md);
 	}
 
-	res = check_create(mtd, buf, bd);
+	res = check_create(this, buf, bd);
 	if (res)
 		goto err;
 
 	/* Prevent the bbt regions from erasing / writing */
-	mark_bbt_region(mtd, td);
+	mark_bbt_region(this, td);
 	if (md)
-		mark_bbt_region(mtd, md);
+		mark_bbt_region(this, md);
 
 	vfree(buf);
 	return 0;
@@ -1223,9 +1224,8 @@ err:
  *
  * The function updates the bad block table(s).
  */
-int nand_update_bbt(struct mtd_info *mtd, loff_t offs)
+int nand_update_bbt(struct nand_chip *this, loff_t offs)
 {
-	struct nand_chip *this = mtd_to_nand(mtd);
 	int len, res = 0;
 	int chip, chipsel;
 	uint8_t *buf;
@@ -1237,7 +1237,7 @@ int nand_update_bbt(struct mtd_info *mtd, loff_t offs)
 
 	/* Allocate a temporary buffer for one eraseblock incl. oob */
 	len = (1 << this->bbt_erase_shift);
-	len += (len >> this->page_shift) * mtd->oobsize;
+	len += (len >> this->page_shift) * this->mtd.oobsize;
 	buf = kmalloc(len, GFP_KERNEL);
 	if (!buf)
 		return -ENOMEM;
@@ -1257,13 +1257,13 @@ int nand_update_bbt(struct mtd_info *mtd, loff_t offs)
 
 	/* Write the bad block table to the device? */
 	if (td->options & NAND_BBT_WRITE) {
-		res = write_bbt(mtd, buf, td, md, chipsel);
+		res = write_bbt(this, buf, td, md, chipsel);
 		if (res < 0)
 			goto out;
 	}
 	/* Write the mirror bad block table to the device? */
 	if (md && (md->options & NAND_BBT_WRITE)) {
-		res = write_bbt(mtd, buf, md, td, chipsel);
+		res = write_bbt(this, buf, md, td, chipsel);
 	}
 
  out:
@@ -1357,9 +1357,8 @@ static int nand_create_badblock_pattern(struct nand_chip *this)
  * This function selects the default bad block table support for the device and
  * calls the nand_scan_bbt function.
  */
-int nand_default_bbt(struct mtd_info *mtd)
+int nand_default_bbt(struct nand_chip *this)
 {
-	struct nand_chip *this = mtd_to_nand(mtd);
 	int ret;
 
 	/* Is a flash based bad block table requested? */
@@ -1385,7 +1384,7 @@ int nand_default_bbt(struct mtd_info *mtd)
 			return ret;
 	}
 
-	return nand_scan_bbt(mtd, this->badblock_pattern);
+	return nand_scan_bbt(this, this->badblock_pattern);
 }
 
 /**
@@ -1394,9 +1393,8 @@ int nand_default_bbt(struct mtd_info *mtd)
  * @offs: offset in the device
  * @allowbbt: allow access to bad block table region
  */
-int nand_isbad_bbt(struct mtd_info *mtd, loff_t offs, int allowbbt)
+int nand_isbad_bbt(struct nand_chip *this, loff_t offs, int allowbbt)
 {
-	struct nand_chip *this = mtd_to_nand(mtd);
 	int block;
 	uint8_t res;
 
@@ -1417,9 +1415,8 @@ int nand_isbad_bbt(struct mtd_info *mtd, loff_t offs, int allowbbt)
 	return 1;
 }
 
-static int nand_mark_bbt(struct mtd_info *mtd, loff_t offs, uint8_t mark)
+static int nand_mark_bbt(struct nand_chip *this, loff_t offs, uint8_t mark)
 {
-	struct nand_chip *this = mtd_to_nand(mtd);
 	int block, ret = 0;
 
 	block = (int)(offs >> this->bbt_erase_shift);
@@ -1429,7 +1426,7 @@ static int nand_mark_bbt(struct mtd_info *mtd, loff_t offs, uint8_t mark)
 
 	/* Update flash-based bad block table */
 	if (this->bbt_options & NAND_BBT_USE_FLASH)
-		ret = nand_update_bbt(mtd, offs);
+		ret = nand_update_bbt(this, offs);
 
 	return ret;
 }
@@ -1439,9 +1436,9 @@ static int nand_mark_bbt(struct mtd_info *mtd, loff_t offs, uint8_t mark)
  * @mtd: MTD device structure
  * @offs: offset of the bad block
  */
-int nand_markbad_bbt(struct mtd_info *mtd, loff_t offs)
+int nand_markbad_bbt(struct nand_chip *this, loff_t offs)
 {
-	return nand_mark_bbt(mtd, offs, BBT_BLOCK_WORN);
+	return nand_mark_bbt(this, offs, BBT_BLOCK_WORN);
 }
 
 /**
@@ -1449,9 +1446,9 @@ int nand_markbad_bbt(struct mtd_info *mtd, loff_t offs)
  * @mtd: MTD device structure
  * @offs: offset of the good block
  */
-int nand_markgood_bbt(struct mtd_info *mtd, loff_t offs)
+int nand_markgood_bbt(struct nand_chip *this, loff_t offs)
 {
-	return nand_mark_bbt(mtd, offs, BBT_BLOCK_GOOD);
+	return nand_mark_bbt(this, offs, BBT_BLOCK_GOOD);
 }
 
 EXPORT_SYMBOL(nand_scan_bbt);
diff --git a/drivers/mtd/nand/nand_bch.c b/drivers/mtd/nand/nand_bch.c
index b94ecdf8d9..42ffa1b21a 100644
--- a/drivers/mtd/nand/nand_bch.c
+++ b/drivers/mtd/nand/nand_bch.c
@@ -46,10 +46,9 @@ struct nand_bch_control {
  * @buf:	input buffer with raw data
  * @code:	output buffer with ECC
  */
-int nand_bch_calculate_ecc(struct mtd_info *mtd, const unsigned char *buf,
+int nand_bch_calculate_ecc(struct nand_chip *chip, const unsigned char *buf,
 			   unsigned char *code)
 {
-	const struct nand_chip *chip = mtd_to_nand(mtd);
 	struct nand_bch_control *nbc = chip->ecc.priv;
 	unsigned int i;
 
@@ -73,10 +72,9 @@ EXPORT_SYMBOL(nand_bch_calculate_ecc);
  *
  * Detect and correct bit errors for a data byte block
  */
-int nand_bch_correct_data(struct mtd_info *mtd, unsigned char *buf,
+int nand_bch_correct_data(struct nand_chip *chip, unsigned char *buf,
 			  unsigned char *read_ecc, unsigned char *calc_ecc)
 {
-	const struct nand_chip *chip = mtd_to_nand(mtd);
 	struct nand_bch_control *nbc = chip->ecc.priv;
 	unsigned int *errloc = nbc->errloc;
 	int i, count;
@@ -117,9 +115,9 @@ EXPORT_SYMBOL(nand_bch_correct_data);
  * @eccsize = 512  (thus, m=13 is the smallest integer such that 2^m-1 > 512*8)
  * @eccbytes = 7   (7 bytes are required to store m*t = 13*4 = 52 bits)
  */
-struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
+struct nand_bch_control *nand_bch_init(struct nand_chip *nand)
 {
-	struct nand_chip *nand = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(nand);
 	unsigned int m, t, eccsteps, i;
 	struct nand_ecclayout *layout = nand->ecc.layout;
 	struct nand_bch_control *nbc = NULL;
diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
index 8995845649..77a09ede70 100644
--- a/drivers/mtd/nand/nand_denali.c
+++ b/drivers/mtd/nand/nand_denali.c
@@ -76,10 +76,8 @@ static uint32_t denali_irq_mask = DENALI_IRQ_ALL;
  * this macro allows us to convert from an MTD structure to our own
  * device context (denali) structure.
  */
-static inline struct denali_nand_info *mtd_to_denali(struct mtd_info *mtd)
+static inline struct denali_nand_info *nand_to_denali(struct nand_chip *nand)
 {
-	struct nand_chip *nand = mtd_to_nand(mtd);
-
 	return container_of(nand, struct denali_nand_info, nand);
 }
 
@@ -788,9 +786,10 @@ static int read_data_from_flash_mem(struct denali_nand_info *denali,
 }
 
 /* writes OOB data to the device */
-static int write_oob_data(struct mtd_info *mtd, uint8_t *buf, int page)
+static int write_oob_data(struct nand_chip *chip, uint8_t *buf, int page)
 {
-	struct denali_nand_info *denali = mtd_to_denali(mtd);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct denali_nand_info *denali = nand_to_denali(chip);
 	uint32_t irq_status;
 	uint32_t irq_mask = INTR_STATUS__PROGRAM_COMP |
 						INTR_STATUS__PROGRAM_FAIL;
@@ -827,9 +826,10 @@ static int write_oob_data(struct mtd_info *mtd, uint8_t *buf, int page)
 }
 
 /* reads OOB data from the device */
-static void read_oob_data(struct mtd_info *mtd, uint8_t *buf, int page)
+static void read_oob_data(struct nand_chip *chip, uint8_t *buf, int page)
 {
-	struct denali_nand_info *denali = mtd_to_denali(mtd);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct denali_nand_info *denali = nand_to_denali(chip);
 	uint32_t irq_mask = INTR_STATUS__LOAD_COMP;
 	uint32_t irq_status, addr, cmd;
 
@@ -995,10 +995,10 @@ static void denali_setup_dma(struct denali_nand_info *denali, int op)
  * writes a page. user specifies type, and this function handles the
  * configuration details.
  */
-static int write_page(struct mtd_info *mtd, struct nand_chip *chip,
-			const uint8_t *buf, bool raw_xfer)
+static int write_page(struct nand_chip *chip, const uint8_t *buf, bool raw_xfer)
 {
-	struct denali_nand_info *denali = mtd_to_denali(mtd);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct denali_nand_info *denali = nand_to_denali(chip);
 	dma_addr_t addr = (unsigned long)denali->buf.buf;
 	size_t size = mtd->writesize + mtd->oobsize;
 	uint32_t irq_status;
@@ -1051,14 +1051,14 @@ static int write_page(struct mtd_info *mtd, struct nand_chip *chip,
  * writing a page with ECC or without is similar, all the work is done
  * by write_page above.
  */
-static int denali_write_page(struct mtd_info *mtd, struct nand_chip *chip,
+static int denali_write_page(struct nand_chip *chip,
 				const uint8_t *buf, int oob_required)
 {
 	/*
 	 * for regular page writes, we let HW handle all the ECC
 	 * data written to the device.
 	 */
-	return write_page(mtd, chip, buf, false);
+	return write_page(chip, buf, false);
 }
 
 /*
@@ -1066,35 +1066,34 @@ static int denali_write_page(struct mtd_info *mtd, struct nand_chip *chip,
  * raw access is similar to ECC page writes, so all the work is done in the
  * write_page() function above.
  */
-static int denali_write_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
+static int denali_write_page_raw(struct nand_chip *chip,
 					const uint8_t *buf, int oob_required)
 {
 	/*
 	 * for raw page writes, we want to disable ECC and simply write
 	 * whatever data is in the buffer.
 	 */
-	return write_page(mtd, chip, buf, true);
+	return write_page(chip, buf, true);
 }
 
-static int denali_write_oob(struct mtd_info *mtd, struct nand_chip *chip,
-			    int page)
+static int denali_write_oob(struct nand_chip *chip, int page)
 {
-	return write_oob_data(mtd, chip->oob_poi, page);
+	return write_oob_data(chip, chip->oob_poi, page);
 }
 
-static int denali_read_oob(struct mtd_info *mtd, struct nand_chip *chip,
-			   int page)
+static int denali_read_oob(struct nand_chip *chip, int page)
 {
-	read_oob_data(mtd, chip->oob_poi, page);
+	read_oob_data(chip, chip->oob_poi, page);
 
 	return 0;
 }
 
-static int denali_read_page(struct mtd_info *mtd, struct nand_chip *chip,
+static int denali_read_page(struct nand_chip *chip,
 			    uint8_t *buf, int oob_required, int page)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	unsigned int max_bitflips = 0;
-	struct denali_nand_info *denali = mtd_to_denali(mtd);
+	struct denali_nand_info *denali = nand_to_denali(chip);
 
 	dma_addr_t addr = (unsigned long)denali->buf.buf;
 	size_t size = mtd->writesize + mtd->oobsize;
@@ -1138,8 +1137,7 @@ static int denali_read_page(struct mtd_info *mtd, struct nand_chip *chip,
 			if (!is_erased(buf, mtd->writesize))
 				mtd->ecc_stats.failed++;
 		} else {
-			read_oob_data(&denali->nand.mtd, chip->oob_poi,
-				denali->page);
+			read_oob_data(chip, chip->oob_poi, denali->page);
 
 			/* check ECC failures that may have occurred on
 			 * erased pages */
@@ -1154,10 +1152,11 @@ static int denali_read_page(struct mtd_info *mtd, struct nand_chip *chip,
 	return max_bitflips;
 }
 
-static int denali_read_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
+static int denali_read_page_raw(struct nand_chip *chip,
 				uint8_t *buf, int oob_required, int page)
 {
-	struct denali_nand_info *denali = mtd_to_denali(mtd);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct denali_nand_info *denali = nand_to_denali(chip);
 	dma_addr_t addr = (unsigned long)denali->buf.buf;
 	size_t size = mtd->writesize + mtd->oobsize;
 	uint32_t irq_mask = INTR_STATUS__DMA_CMD_COMP;
@@ -1190,9 +1189,9 @@ static int denali_read_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
 	return 0;
 }
 
-static uint8_t denali_read_byte(struct mtd_info *mtd)
+static uint8_t denali_read_byte(struct nand_chip *chip)
 {
-	struct denali_nand_info *denali = mtd_to_denali(mtd);
+	struct denali_nand_info *denali = nand_to_denali(chip);
 	uint8_t result = 0xff;
 
 	if (denali->buf.head < denali->buf.tail)
@@ -1201,23 +1200,23 @@ static uint8_t denali_read_byte(struct mtd_info *mtd)
 	return result;
 }
 
-static void denali_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
+static void denali_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
 {
 	int i;
 	for (i = 0; i < len; i++)
-		buf[i] = denali_read_byte(mtd);
+		buf[i] = denali_read_byte(chip);
 }
 
-static void denali_select_chip(struct mtd_info *mtd, int chip)
+static void denali_select_chip(struct nand_chip *chip, int num)
 {
-	struct denali_nand_info *denali = mtd_to_denali(mtd);
+	struct denali_nand_info *denali = nand_to_denali(chip);
 
-	denali->flash_bank = chip;
+	denali->flash_bank = num;
 }
 
-static int denali_waitfunc(struct mtd_info *mtd, struct nand_chip *chip)
+static int denali_waitfunc(struct nand_chip *chip)
 {
-	struct denali_nand_info *denali = mtd_to_denali(mtd);
+	struct denali_nand_info *denali = nand_to_denali(chip);
 	int status = denali->status;
 
 	denali->status = 0;
@@ -1225,10 +1224,11 @@ static int denali_waitfunc(struct mtd_info *mtd, struct nand_chip *chip)
 	return status;
 }
 
-static void denali_cmdfunc(struct mtd_info *mtd, unsigned int cmd, int col,
+static void denali_cmdfunc(struct nand_chip *chip, unsigned int cmd, int col,
 			   int page)
 {
-	struct denali_nand_info *denali = mtd_to_denali(mtd);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct denali_nand_info *denali = nand_to_denali(chip);
 	uint32_t addr, id;
 	uint32_t pages_per_block;
 	uint32_t block;
@@ -1415,7 +1415,7 @@ int denali_init(struct denali_nand_info *denali)
 	 * this is the first stage in a two step process to register
 	 * with the nand subsystem
 	 */
-	if (nand_scan_ident(mtd, denali->max_banks, NULL)) {
+	if (nand_scan_ident(nand, denali->max_banks, NULL)) {
 		ret = -ENXIO;
 		goto failed_req_irq;
 	}
@@ -1537,12 +1537,12 @@ int denali_init(struct denali_nand_info *denali)
 				MAIN_ACCESS);
 	}
 
-	if (nand_scan_tail(mtd)) {
+	if (nand_scan_tail(nand)) {
 		ret = -ENXIO;
 		goto failed_req_irq;
 	}
 
-	return add_mtd_nand_device(mtd, "nand");
+	return add_mtd_nand_device(nand, "nand");
 
 failed_req_irq:
 	denali_irq_cleanup(denali->irq, denali);
diff --git a/drivers/mtd/nand/nand_ecc.c b/drivers/mtd/nand/nand_ecc.c
index fd6ad7edc8..e488130f73 100644
--- a/drivers/mtd/nand/nand_ecc.c
+++ b/drivers/mtd/nand/nand_ecc.c
@@ -66,7 +66,7 @@ static const u_char nand_ecc_precalc_table[] = {
  * @dat:	raw data
  * @ecc_code:	buffer for ECC
  */
-int nand_calculate_ecc(struct mtd_info *mtd, const u_char *dat,
+int nand_calculate_ecc(struct nand_chip *chip, const u_char *dat,
 		       u_char *ecc_code)
 {
 	uint8_t idx, reg1, reg2, reg3, tmp1, tmp2;
@@ -139,7 +139,7 @@ static inline int countbits(uint32_t byte)
  *
  * Detect and correct a 1 bit error for 256 byte block
  */
-int nand_correct_data(struct mtd_info *mtd, u_char *dat,
+int nand_correct_data(struct nand_chip *chip, u_char *dat,
 		      u_char *read_ecc, u_char *calc_ecc)
 {
 	uint8_t s0, s1, s2;
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index d69a012f01..40877eafb6 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -57,7 +57,7 @@ struct imx_nand_host {
 	int			data_width;
 	int			flash_bbt;
 
-	void			(*preset)(struct mtd_info *);
+	void			(*preset)(struct nand_chip *);
 	void			(*send_cmd)(struct imx_nand_host *, uint16_t);
 	void			(*send_addr)(struct imx_nand_host *, uint16_t);
 	void			(*send_page)(struct imx_nand_host *, unsigned int);
@@ -65,7 +65,7 @@ struct imx_nand_host {
 	void			(*send_read_param)(struct imx_nand_host *);
 	uint16_t		(*get_dev_status)(struct imx_nand_host *);
 	int			(*check_int)(struct imx_nand_host *);
-	int			(*correct)(struct mtd_info *mtd);
+	int			(*correct)(struct nand_chip *);
 	void			(*enable_hwecc)(struct nand_chip *, bool enable);
 };
 
@@ -429,7 +429,7 @@ static u16 get_dev_status_v1_v2(struct imx_nand_host *host)
  *
  * @return  0 if device is busy else 1
  */
-static int imx_nand_dev_ready(struct mtd_info *mtd)
+static int imx_nand_dev_ready(struct nand_chip *chip)
 {
 	/*
 	 * NFC handles R/B internally.Therefore,this function
@@ -475,10 +475,10 @@ static void imx_nand_enable_hwecc_v3(struct nand_chip *chip, bool enable)
 	writel(config2, NFC_V3_CONFIG2);
 }
 
-static int imx_nand_correct_data_v1(struct mtd_info *mtd)
+static int imx_nand_correct_data_v1(struct nand_chip *chip)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct imx_nand_host *host = nand_chip->priv;
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct imx_nand_host *host = chip->priv;
 
 	if (host->eccstatus_v1 < 0)
 		return host->eccstatus_v1;
@@ -491,10 +491,10 @@ static int imx_nand_correct_data_v1(struct mtd_info *mtd)
 		return 0;
 }
 
-static int imx_nand_correct_data_v2_v3(struct mtd_info *mtd)
+static int imx_nand_correct_data_v2_v3(struct nand_chip *chip)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct imx_nand_host *host = nand_chip->priv;
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct imx_nand_host *host = chip->priv;
 	u32 ecc_stat, err;
 	int no_subpages;
 	u8 ecc_bit_mask, err_limit, max_bitflips = 0;
@@ -521,7 +521,7 @@ static int imx_nand_correct_data_v2_v3(struct mtd_info *mtd)
 	return max_bitflips;
 }
 
-static int imx_nand_calculate_ecc(struct mtd_info *mtd, const u_char * dat,
+static int imx_nand_calculate_ecc(struct nand_chip *chip, const u_char * dat,
 				  u_char * ecc_code)
 {
 	return 0;
@@ -534,17 +534,16 @@ static int imx_nand_calculate_ecc(struct mtd_info *mtd, const u_char * dat,
  *
  * @return    data read from the NAND Flash
  */
-static u_char imx_nand_read_byte(struct mtd_info *mtd)
+static u_char imx_nand_read_byte(struct nand_chip *chip)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct imx_nand_host *host = nand_chip->priv;
+	struct imx_nand_host *host = chip->priv;
 	u_char ret;
 
 	/* Check for status request */
 	if (host->status_request)
 		return host->get_dev_status(host) & 0xFF;
 
-	if (nand_chip->options & NAND_BUSWIDTH_16) {
+	if (chip->options & NAND_BUSWIDTH_16) {
 		/* only take the lower byte of each word */
 		BUG_ON(host->buf_start & 1);
 		ret = *(uint16_t *)(host->data_buf + host->buf_start);
@@ -565,10 +564,9 @@ static u_char imx_nand_read_byte(struct mtd_info *mtd)
   *
   * @return    data read from the NAND Flash
   */
-static u16 imx_nand_read_word(struct mtd_info *mtd)
+static u16 imx_nand_read_word(struct nand_chip *chip)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct imx_nand_host *host = nand_chip->priv;
+	struct imx_nand_host *host = chip->priv;
 	uint16_t ret;
 
 	ret = *(uint16_t *)(host->data_buf + host->buf_start);
@@ -586,11 +584,11 @@ static u16 imx_nand_read_word(struct mtd_info *mtd)
  * @param       buf     data to be written to NAND Flash
  * @param       len     number of bytes to be written
  */
-static void imx_nand_write_buf(struct mtd_info *mtd,
+static void imx_nand_write_buf(struct nand_chip *chip,
 			       const u_char *buf, int len)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct imx_nand_host *host = nand_chip->priv;
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct imx_nand_host *host = chip->priv;
 	u16 col = host->buf_start;
 	int n = mtd->oobsize + mtd->writesize - col;
 
@@ -610,10 +608,10 @@ static void imx_nand_write_buf(struct mtd_info *mtd,
  * @param       buf     data to be read from NAND Flash
  * @param       len     number of bytes to be read
  */
-static void imx_nand_read_buf(struct mtd_info *mtd, u_char * buf, int len)
+static void imx_nand_read_buf(struct nand_chip *chip, u_char * buf, int len)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct imx_nand_host *host = nand_chip->priv;
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct imx_nand_host *host = chip->priv;
 	u16 col = host->buf_start;
 	int n = mtd->oobsize + mtd->writesize - col;
 
@@ -631,10 +629,10 @@ static void imx_nand_read_buf(struct mtd_info *mtd, u_char * buf, int len)
 /*
  * Function to transfer data to/from spare area.
  */
-static void copy_spare(struct mtd_info *mtd, int bfrom, void *buf)
+static void copy_spare(struct nand_chip *chip, int bfrom, void *buf)
 {
-	struct nand_chip *this = mtd_to_nand(mtd);
-	struct imx_nand_host *host = this->priv;
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct imx_nand_host *host = chip->priv;
 	u16 i, j;
 	u16 n = mtd->writesize >> 9;
 	u8 *d = buf;
@@ -665,14 +663,14 @@ static void copy_spare(struct mtd_info *mtd, int bfrom, void *buf)
  * @param       mtd     MTD structure for the NAND Flash
  * @param       chip    val indicating select or deselect
  */
-static void imx_nand_select_chip(struct mtd_info *mtd, int chip)
+static void imx_nand_select_chip(struct nand_chip *_chip, int chip)
 {
 }
 
-static void mxc_do_addr_cycle(struct mtd_info *mtd, int column, int page_addr)
+static void mxc_do_addr_cycle(struct nand_chip *chip, int column, int page_addr)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct imx_nand_host *host = nand_chip->priv;
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct imx_nand_host *host = chip->priv;
 
 	/*
 	 * Write out column address, if necessary
@@ -735,10 +733,9 @@ static int get_eccsize(struct mtd_info *mtd)
 		return 8;
 }
 
-static void preset_v1(struct mtd_info *mtd)
+static void preset_v1(struct nand_chip *chip)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct imx_nand_host *host = nand_chip->priv;
+	struct imx_nand_host *host = chip->priv;
 	uint16_t config1 = 0;
 
 	host->eccsize = 1;
@@ -757,14 +754,14 @@ static void preset_v1(struct mtd_info *mtd)
 	writew(0x4, host->regs + NFC_V1_V2_WRPROT);
 }
 
-static void preset_v2(struct mtd_info *mtd)
+static void preset_v2(struct nand_chip *chip)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct imx_nand_host *host = nand_chip->priv;
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct imx_nand_host *host = chip->priv;
 	uint16_t config1 = 0;
 	int mode;
 
-	mode = onfi_get_async_timing_mode(nand_chip);
+	mode = onfi_get_async_timing_mode(chip);
 	if (mode != ONFI_TIMING_MODE_UNKNOWN && !IS_ERR(host->clk)) {
 		const struct nand_sdr_timings *timings;
 
@@ -817,9 +814,9 @@ static void preset_v2(struct mtd_info *mtd)
 	writew(0x4, host->regs + NFC_V1_V2_WRPROT);
 }
 
-static void preset_v3(struct mtd_info *mtd)
+static void preset_v3(struct nand_chip *chip)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct imx_nand_host *host = chip->priv;
 	uint32_t config2, config3;
 	int i, addr_phases;
@@ -887,24 +884,25 @@ static void preset_v3(struct mtd_info *mtd)
 	writel(0, NFC_V3_DELAY_LINE);
 }
 
-static int imx_nand_write_page(struct mtd_info *mtd, struct nand_chip *chip,
+static int imx_nand_write_page(struct nand_chip *chip,
 		uint32_t offset, int data_len, const uint8_t *buf,
 		int oob_required, int page, int cached, int raw)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct imx_nand_host *host = chip->priv;
 	int status;
 
 	host->enable_hwecc(chip, !raw);
 
-	chip->cmdfunc(mtd, NAND_CMD_SEQIN, 0x00, page);
+	chip->cmdfunc(chip, NAND_CMD_SEQIN, 0x00, page);
 
 	memcpy32(host->main_area0, buf, mtd->writesize);
 	if (oob_required)
-		copy_spare(mtd, 0, chip->oob_poi);
+		copy_spare(chip, 0, chip->oob_poi);
 
 	host->send_page(host, NFC_INPUT);
-	chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
-	status = chip->waitfunc(mtd, chip);
+	chip->cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
+	status = chip->waitfunc(chip);
 
 	if (status & NAND_STATUS_FAIL)
 		return -EIO;
@@ -912,9 +910,10 @@ static int imx_nand_write_page(struct mtd_info *mtd, struct nand_chip *chip,
 	return 0;
 }
 
-static void imx_nand_do_read_page(struct mtd_info *mtd,
-		struct nand_chip *chip, uint8_t *buf, int oob_required)
+static void imx_nand_do_read_page(struct nand_chip *chip, uint8_t *buf,
+				  int oob_required)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct imx_nand_host *host = chip->priv;
 
 	host->send_page(host, NFC_OUTPUT);
@@ -922,29 +921,29 @@ static void imx_nand_do_read_page(struct mtd_info *mtd,
 	memcpy32(buf, host->main_area0, mtd->writesize);
 
 	if (oob_required)
-		copy_spare(mtd, 1, chip->oob_poi);
+		copy_spare(chip, 1, chip->oob_poi);
 }
 
-static int imx_nand_read_page(struct mtd_info *mtd,
-		struct nand_chip *chip, uint8_t *buf, int oob_required, int page)
+static int imx_nand_read_page(struct nand_chip *chip, uint8_t *buf,
+			      int oob_required, int page)
 {
 	struct imx_nand_host *host = chip->priv;
 
 	host->enable_hwecc(chip, true);
 
-	imx_nand_do_read_page(mtd, chip, buf, oob_required);
+	imx_nand_do_read_page(chip, buf, oob_required);
 
-	return host->correct(mtd);
+	return host->correct(chip);
 }
 
-static int imx_nand_read_page_raw(struct mtd_info *mtd,
-		struct nand_chip *chip, uint8_t *buf, int oob_required, int page)
+static int imx_nand_read_page_raw(struct nand_chip *chip, uint8_t *buf,
+				  int oob_required, int page)
 {
 	struct imx_nand_host *host = chip->priv;
 
 	host->enable_hwecc(chip, false);
 
-	imx_nand_do_read_page(mtd, chip, buf, oob_required);
+	imx_nand_do_read_page(chip, buf, oob_required);
 
 	return 0;
 }
@@ -958,11 +957,11 @@ static int imx_nand_read_page_raw(struct mtd_info *mtd,
  * @param       column          column offset for the page read
  * @param       page_addr       page to be read from NAND Flash
  */
-static void imx_nand_command(struct mtd_info *mtd, unsigned command,
+static void imx_nand_command(struct nand_chip *chip, unsigned command,
 			     int column, int page_addr)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct imx_nand_host *host = nand_chip->priv;
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct imx_nand_host *host = chip->priv;
 
 	dev_dbg(host->dev,
 	      "imx_nand_command (cmd = 0x%x, col = 0x%x, page = 0x%x)\n",
@@ -978,7 +977,7 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 	 */
 	switch (command) {
 	case NAND_CMD_RESET:
-		host->preset(mtd);
+		host->preset(chip);
 		host->send_cmd(host, command);
 		break;
 
@@ -986,7 +985,7 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 		host->buf_start = 0;
 		host->status_request = 1;
 		host->send_cmd(host, command);
-		mxc_do_addr_cycle(mtd, column, page_addr);
+		mxc_do_addr_cycle(chip, column, page_addr);
 		break;
 
 	case NAND_CMD_READ0:
@@ -999,7 +998,7 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 		command = NAND_CMD_READ0;
 
 		host->send_cmd(host, command);
-		mxc_do_addr_cycle(mtd, column, page_addr);
+		mxc_do_addr_cycle(chip, column, page_addr);
 
 		if (host->pagesize_2k)
 			/* send read confirm command */
@@ -1017,7 +1016,7 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 				  * whole page including OOB together.
 				  */
 				/* call ourself to read a page */
-				imx_nand_command(mtd, NAND_CMD_READ0, 0,
+				imx_nand_command(chip, NAND_CMD_READ0, 0,
 						 page_addr);
 			}
 			host->buf_start = column;
@@ -1033,25 +1032,25 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 				host->send_cmd(host, NAND_CMD_READ0);
 		}
 		host->send_cmd(host, command);
-		mxc_do_addr_cycle(mtd, column, page_addr);
+		mxc_do_addr_cycle(chip, column, page_addr);
 
 		break;
 
 	case NAND_CMD_PAGEPROG:
 		host->send_cmd(host, command);
-		mxc_do_addr_cycle(mtd, column, page_addr);
+		mxc_do_addr_cycle(chip, column, page_addr);
 		break;
 
 	case NAND_CMD_READID:
 		host->send_cmd(host, command);
-		mxc_do_addr_cycle(mtd, column, page_addr);
+		mxc_do_addr_cycle(chip, column, page_addr);
 		host->send_read_id(host);
 		host->buf_start = 0;
 		break;
 
 	case NAND_CMD_PARAM:
 		host->send_cmd(host, command);
-		mxc_do_addr_cycle(mtd, column, page_addr);
+		mxc_do_addr_cycle(chip, column, page_addr);
 		host->send_read_param(host);
 		host->buf_start = 0;
 		break;
@@ -1059,7 +1058,7 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 	case NAND_CMD_ERASE1:
 	case NAND_CMD_ERASE2:
 		host->send_cmd(host, command);
-		mxc_do_addr_cycle(mtd, column, page_addr);
+		mxc_do_addr_cycle(chip, column, page_addr);
 		break;
 	}
 }
@@ -1141,8 +1140,9 @@ static int __init mxcnd_probe_dt(struct imx_nand_host *host)
  * on the flash BBT.
  *
  */
-static int checkbad(struct mtd_info *mtd, loff_t ofs)
+static int checkbad(struct nand_chip *chip, loff_t ofs)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int ret;
 	uint8_t buf[mtd->writesize + mtd->oobsize];
 	struct mtd_oob_ops ops;
@@ -1164,9 +1164,9 @@ static int checkbad(struct mtd_info *mtd, loff_t ofs)
 	return 0;
 }
 
-static int imxnd_create_bbt(struct mtd_info *mtd)
+static int imxnd_create_bbt(struct nand_chip *chip)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int len, i, numblocks, ret;
 	loff_t from = 0;
 	uint8_t *bbt;
@@ -1181,7 +1181,7 @@ static int imxnd_create_bbt(struct mtd_info *mtd)
 	numblocks = mtd->size >> (chip->bbt_erase_shift - 1);
 
 	for (i = 0; i < numblocks;) {
-		ret = checkbad(mtd, from);
+		ret = checkbad(chip, from);
 		if (ret < 0)
 			goto out;
 
@@ -1201,11 +1201,11 @@ static int imxnd_create_bbt(struct mtd_info *mtd)
 	free(chip->bbt);
 	chip->bbt = bbt;
 
-	ret = nand_update_bbt(mtd, 0);
+	ret = nand_update_bbt(chip, 0);
 	if (ret)
 		return ret;
 
-	ret = nand_default_bbt(mtd);
+	ret = nand_default_bbt(chip);
 	if (ret)
 		return ret;
 
@@ -1389,13 +1389,13 @@ static int __init imxnd_probe(struct device_d *dev)
 	}
 
 	/* first scan to find the device and get the page size */
-	if (nand_scan_ident(mtd, 1, NULL)) {
+	if (nand_scan_ident(this, 1, NULL)) {
 		err = -ENXIO;
 		goto escan;
 	}
 
 	/* Call preset again, with correct writesize this time */
-	host->preset(mtd);
+	host->preset(this);
 
 	imx_nand_set_layout(mtd->writesize, host->data_width == 2 ? 16 : 8);
 
@@ -1423,21 +1423,21 @@ static int __init imxnd_probe(struct device_d *dev)
 		this->ecc.strength = host->eccsize;
 
 	/* second phase scan */
-	if (nand_scan_tail(mtd)) {
+	if (nand_scan_tail(this)) {
 		err = -ENXIO;
 		goto escan;
 	}
 
 	if (host->flash_bbt && this->bbt_td->pages[0] == -1 && this->bbt_md->pages[0] == -1) {
 		dev_info(dev, "no BBT found. creating one\n");
-		err = imxnd_create_bbt(mtd);
+		err = imxnd_create_bbt(this);
 		if (err)
 			dev_warn(dev, "Failed to create bbt: %s\n",
 				 strerror(-err));
 		err = 0;
 	}
 
-	add_mtd_nand_device(mtd, "nand");
+	add_mtd_nand_device(this, "nand");
 
 	dev->priv = host;
 
diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 15d052b5a4..0a7c0d4a9a 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -277,8 +277,10 @@ static struct nand_ecclayout ecc_layout_4KB_bch8bit = {
 #define NDTR1_tWHR(c)	(min((c), 15) << 4)
 #define NDTR1_tAR(c)	(min((c), 15) << 0)
 
-#define mtd_info_to_host(mtd) ((struct mrvl_nand_host *) \
-			       (((struct nand_chip *)((mtd)->priv))->priv))
+static inline struct mrvl_nand_host *nand_to_host(struct nand_chip *chip)
+{
+	return container_of(chip, struct mrvl_nand_host, chip);
+}
 
 static const struct mrvl_nand_variant pxa3xx_variant = {
 	.hwflags	= 0,
@@ -341,7 +343,7 @@ static struct mrvl_nand_timing timings[] = {
 
 static void mrvl_nand_set_timing(struct mrvl_nand_host *host, bool use_default)
 {
-	struct mtd_info *mtd = &host->chip.mtd;
+	struct nand_chip *chip = &host->chip;
 	unsigned long nand_clk = clk_get_rate(host->core_clk);
 	struct mrvl_nand_timing *t;
 	uint32_t ndtr0, ndtr1;
@@ -350,8 +352,8 @@ static void mrvl_nand_set_timing(struct mrvl_nand_host *host, bool use_default)
 	if (use_default) {
 		id = 0;
 	} else {
-		host->chip.cmdfunc(mtd, NAND_CMD_READID, 0x00, -1);
-		host->chip.read_buf(mtd, (unsigned char *)&id, sizeof(id));
+		chip->cmdfunc(chip, NAND_CMD_READID, 0x00, -1);
+		chip->read_buf(chip, (unsigned char *)&id, sizeof(id));
 	}
 	for (t = &timings[0]; t->id; t++)
 		if (t->id == id)
@@ -370,9 +372,9 @@ static void mrvl_nand_set_timing(struct mrvl_nand_host *host, bool use_default)
 	nand_writel(host, NDTR1CS0, ndtr1);
 }
 
-static int mrvl_nand_ready(struct mtd_info *mtd)
+static int mrvl_nand_ready(struct nand_chip *chip)
 {
-	struct mrvl_nand_host *host = mtd_info_to_host(mtd);
+	struct mrvl_nand_host *host = nand_to_host(chip);
 	u32 ndcr;
 
 	ndcr = nand_readl(host, NDSR);
@@ -396,14 +398,14 @@ static int mrvl_nand_ready(struct mtd_info *mtd)
  * Thus, this function is only called when we want *all* blocks to look good,
  * so it *always* return success.
  */
-static int mrvl_nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
+static int mrvl_nand_block_bad(struct nand_chip *chip, loff_t ofs, int getchip)
 {
 	return 0;
 }
 
-static void mrvl_nand_select_chip(struct mtd_info *mtd, int chipnr)
+static void mrvl_nand_select_chip(struct nand_chip *chip, int chipnr)
 {
-	struct mrvl_nand_host *host = mtd_info_to_host(mtd);
+	struct mrvl_nand_host *host = nand_to_host(chip);
 
 	if (chipnr <= 0 || chipnr >= 3 || chipnr == host->cs)
 		return;
@@ -759,10 +761,10 @@ static void mrvl_nand_wait_cmd_done(struct mrvl_nand_host *host,
 	}
 }
 
-static void mrvl_nand_cmdfunc(struct mtd_info *mtd, unsigned command,
+static void mrvl_nand_cmdfunc(struct nand_chip *chip, unsigned command,
 			       int column, int page_addr)
 {
-	struct mrvl_nand_host *host = mtd_info_to_host(mtd);
+	struct mrvl_nand_host *host = nand_to_host(chip);
 
 	/*
 	 * if this is a x16 device ,then convert the input
@@ -790,10 +792,11 @@ static void mrvl_nand_cmdfunc(struct mtd_info *mtd, unsigned command,
  *
  * Returns 0
  */
-static int mrvl_nand_write_page_hwecc(struct mtd_info *mtd,
-		struct nand_chip *chip, const uint8_t *buf, int oob_required)
+static int mrvl_nand_write_page_hwecc(struct nand_chip *chip, const uint8_t *buf,
+				      int oob_required)
 {
-	struct mrvl_nand_host *host = mtd_info_to_host(mtd);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct mrvl_nand_host *host = nand_to_host(chip);
 
 	memcpy(host->data_buff, buf, mtd->writesize);
 	if (oob_required)
@@ -806,16 +809,16 @@ static int mrvl_nand_write_page_hwecc(struct mtd_info *mtd,
 	return 0;
 }
 
-static int mrvl_nand_read_page_hwecc(struct mtd_info *mtd,
-		struct nand_chip *chip, uint8_t *buf, int oob_required,
-		int page)
+static int mrvl_nand_read_page_hwecc(struct nand_chip *chip, uint8_t *buf,
+				     int oob_required, int page)
 {
-	struct mrvl_nand_host *host = mtd_info_to_host(mtd);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct mrvl_nand_host *host = nand_to_host(chip);
 	u32 ndsr;
 	int ret = 0;
 
-	chip->read_buf(mtd, buf, mtd->writesize);
-	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
+	chip->read_buf(chip, buf, mtd->writesize);
+	chip->read_buf(chip, chip->oob_poi, mtd->oobsize);
 	ndsr = nand_readl(host, NDSR);
 
 	if (ndsr & NDSR_UNCORERR) {
@@ -837,9 +840,9 @@ static int mrvl_nand_read_page_hwecc(struct mtd_info *mtd,
 	return ret;
 }
 
-static void mrvl_nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
+static void mrvl_nand_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
 {
-	struct mrvl_nand_host *host = mtd_info_to_host(mtd);
+	struct mrvl_nand_host *host = nand_to_host(chip);
 	int xfer;
 
 	xfer = min_t(int, len, host->buf_count);
@@ -848,26 +851,26 @@ static void mrvl_nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
 	host->buf_count -= xfer;
 }
 
-static uint8_t mrvl_nand_read_byte(struct mtd_info *mtd)
+static uint8_t mrvl_nand_read_byte(struct nand_chip *chip)
 {
 	uint8_t ret;
 
-	mrvl_nand_read_buf(mtd, (uint8_t *)&ret, sizeof(ret));
+	mrvl_nand_read_buf(chip, (uint8_t *)&ret, sizeof(ret));
 	return ret;
 }
 
-static u16 mrvl_nand_read_word(struct mtd_info *mtd)
+static u16 mrvl_nand_read_word(struct nand_chip *chip)
 {
 	u16 ret;
 
-	mrvl_nand_read_buf(mtd, (uint8_t *)&ret, sizeof(ret));
+	mrvl_nand_read_buf(chip, (uint8_t *)&ret, sizeof(ret));
 	return ret;
 }
 
-static void mrvl_nand_write_buf(struct mtd_info *mtd,
+static void mrvl_nand_write_buf(struct nand_chip *chip,
 		const uint8_t *buf, int len)
 {
-	struct mrvl_nand_host *host = mtd_info_to_host(mtd);
+	struct mrvl_nand_host *host = nand_to_host(chip);
 
 	memcpy(host->data_buff + host->buf_start, buf, len);
 	host->buf_start += len;
@@ -1033,9 +1036,9 @@ static int pxa_ecc_init(struct mrvl_nand_host *host,
 	return 0;
 }
 
-static int mrvl_nand_scan(struct mtd_info *mtd)
+static int mrvl_nand_scan(struct nand_chip *chip)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct mrvl_nand_host *host = chip->priv;
 	int ret;
 	unsigned int ndcr;
@@ -1053,9 +1056,9 @@ static int mrvl_nand_scan(struct mtd_info *mtd)
 			    nand_readl(host, NDECCCTRL) & ~NDECCCTRL_BCH_EN);
 
 	mrvl_nand_set_timing(host, true);
-	if (nand_scan_ident(mtd, 1, NULL)) {
+	if (nand_scan_ident(chip, 1, NULL)) {
 		host->reg_ndcr |= NDCR_DWIDTH_M | NDCR_DWIDTH_C;
-		if (nand_scan_ident(mtd, 1, NULL))
+		if (nand_scan_ident(chip, 1, NULL))
 			return -ENODEV;
 	}
 	mrvl_nand_config_flash(host);
@@ -1099,7 +1102,7 @@ static int mrvl_nand_scan(struct mtd_info *mtd)
 	host->buf_size = mtd->writesize + mtd->oobsize;
 	host->data_buff = xmalloc(host->buf_size);
 
-	return nand_scan_tail(mtd);
+	return nand_scan_tail(chip);
 }
 
 static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
@@ -1214,14 +1217,14 @@ static int mrvl_nand_probe(struct device_d *dev)
 		return ret;
 
 	host->chip.controller = &host->chip.hwcontrol;
-	ret = mrvl_nand_scan(&host->chip.mtd);
+	ret = mrvl_nand_scan(&host->chip);
 	if (ret) {
 		dev_warn(dev, "failed to scan nand at cs %d\n",
 			 host->cs);
 		return -ENODEV;
 	}
 
-	ret = add_mtd_nand_device(&host->chip.mtd, "nand");
+	ret = add_mtd_nand_device(&host->chip, "nand");
 	return ret;
 }
 
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 36b6e7ac22..dd4ea73b78 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -330,9 +330,9 @@ static uint32_t mxs_nand_get_mark_offset(struct mtd_info *mtd)
 	return block_mark_bit_offset;
 }
 
-static int mxs_nand_calc_geo(struct mtd_info *mtd)
+static int mxs_nand_calc_geo(struct nand_chip *chip)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct mxs_nand_info *nand_info = chip->priv;
 	int ecc_chunk_count = mxs_nand_ecc_chunk_cnt(mtd->writesize);
 	int gf_len = 13;  /* length of Galois Field for non-DDR nand */
@@ -420,9 +420,8 @@ static int mxs_nand_wait_for_bch_complete(struct mxs_nand_info *nand_info)
  * ignore the chip enable bit and concentrate only on sending bytes to the NAND
  * Flash.
  */
-static void mxs_nand_cmd_ctrl(struct mtd_info *mtd, int data, unsigned int ctrl)
+static void mxs_nand_cmd_ctrl(struct nand_chip *chip, int data, unsigned int ctrl)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct mxs_nand_info *nand_info = chip->priv;
 	struct mxs_dma_desc *d;
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
@@ -496,9 +495,8 @@ static void mxs_nand_cmd_ctrl(struct mtd_info *mtd, int data, unsigned int ctrl)
 /*
  * Test if the NAND flash is ready.
  */
-static int mxs_nand_device_ready(struct mtd_info *mtd)
+static int mxs_nand_device_ready(struct nand_chip *chip)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct mxs_nand_info *nand_info = chip->priv;
 	void __iomem *gpmi_regs = nand_info->io_base;
 	uint32_t tmp;
@@ -522,9 +520,8 @@ static int mxs_nand_device_ready(struct mtd_info *mtd)
 /*
  * Select the NAND chip.
  */
-static void mxs_nand_select_chip(struct mtd_info *mtd, int chipnum)
+static void mxs_nand_select_chip(struct nand_chip *chip, int chipnum)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct mxs_nand_info *nand_info = chip->priv;
 
 	nand_info->cur_chip = chipnum;
@@ -537,10 +534,9 @@ static void mxs_nand_select_chip(struct mtd_info *mtd, int chipnum)
  * swapping the block mark, or swapping it *back* -- but it doesn't matter
  * because the the operation is the same.
  */
-static void mxs_nand_swap_block_mark(struct mtd_info *mtd,
+static void mxs_nand_swap_block_mark(struct nand_chip *chip,
 					uint8_t *data_buf, uint8_t *oob_buf)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct mxs_nand_info *nand_info = chip->priv;
 
 	uint32_t bit_offset;
@@ -579,9 +575,8 @@ static void mxs_nand_swap_block_mark(struct mtd_info *mtd,
 /*
  * Read data from NAND.
  */
-static void mxs_nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int length)
+static void mxs_nand_read_buf(struct nand_chip *chip, uint8_t *buf, int length)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct mxs_nand_info *nand_info = chip->priv;
 	struct mxs_dma_desc *d;
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
@@ -656,10 +651,9 @@ rtn:
 /*
  * Write data to NAND.
  */
-static void mxs_nand_write_buf(struct mtd_info *mtd, const uint8_t *buf,
+static void mxs_nand_write_buf(struct nand_chip *chip, const uint8_t *buf,
 				int length)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct mxs_nand_info *nand_info = chip->priv;
 	struct mxs_dma_desc *d;
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
@@ -707,16 +701,15 @@ static void mxs_nand_write_buf(struct mtd_info *mtd, const uint8_t *buf,
 /*
  * Read a single byte from NAND.
  */
-static uint8_t mxs_nand_read_byte(struct mtd_info *mtd)
+static uint8_t mxs_nand_read_byte(struct nand_chip *chip)
 {
 	uint8_t buf;
-	mxs_nand_read_buf(mtd, &buf, 1);
+	mxs_nand_read_buf(chip, &buf, 1);
 	return buf;
 }
 
-static void mxs_nand_config_bch(struct mtd_info *mtd, int readlen)
+static void mxs_nand_config_bch(struct nand_chip *chip, int readlen)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct mxs_nand_info *nand_info = chip->priv;
 	int chunk_size;
 	void __iomem *bch_regs = nand_info->bch_base;
@@ -744,10 +737,11 @@ static void mxs_nand_config_bch(struct mtd_info *mtd, int readlen)
 /*
  * Read a page from NAND.
  */
-static int __mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *chip,
+static int __mxs_nand_ecc_read_page(struct nand_chip *chip,
 					uint8_t *buf, int oob_required, int page,
 					int readlen)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct mxs_nand_info *nand_info = chip->priv;
 	struct mxs_dma_desc *d;
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
@@ -762,7 +756,7 @@ static int __mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *chip
 	readtotal += MXS_NAND_CHUNK_DATA_CHUNK_SIZE * nchunks;
 	readtotal += DIV_ROUND_UP(13 * chip->ecc.strength * nchunks, 8);
 
-	mxs_nand_config_bch(mtd, readtotal);
+	mxs_nand_config_bch(chip, readtotal);
 
 	/* Compile the DMA descriptor - wait for ready. */
 	d = mxs_nand_get_dma_desc(nand_info);
@@ -850,7 +844,7 @@ static int __mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *chip
 	}
 
 	/* Read DMA completed, now do the mark swapping. */
-	mxs_nand_swap_block_mark(mtd, nand_info->data_buf, nand_info->oob_buf);
+	mxs_nand_swap_block_mark(chip, nand_info->data_buf, nand_info->oob_buf);
 
 	memcpy(buf, nand_info->data_buf, readlen);
 
@@ -931,19 +925,21 @@ static int __mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *chip
 rtn:
 	mxs_nand_return_dma_descs(nand_info);
 
-	mxs_nand_config_bch(mtd, mtd->writesize + mtd->oobsize);
+	mxs_nand_config_bch(chip, mtd->writesize + mtd->oobsize);
 
 	return ret ? ret : max_bitflips;
 }
 
-static int mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *chip,
+static int mxs_nand_ecc_read_page(struct nand_chip *chip,
 					uint8_t *buf, int oob_required, int page)
 {
-	return __mxs_nand_ecc_read_page(mtd, chip, buf, oob_required, page,
+	struct mtd_info *mtd = nand_to_mtd(chip);
+
+	return __mxs_nand_ecc_read_page(chip, buf, oob_required, page,
 					mtd->writesize);
 }
 
-static int gpmi_ecc_read_subpage(struct mtd_info *mtd, struct nand_chip *chip,
+static int gpmi_ecc_read_subpage(struct nand_chip *chip,
 			uint32_t offs, uint32_t len, uint8_t *buf, int page)
 {
 	/*
@@ -956,16 +952,16 @@ static int gpmi_ecc_read_subpage(struct mtd_info *mtd, struct nand_chip *chip,
 		offs = 0;
 	}
 
-	return __mxs_nand_ecc_read_page(mtd, chip, buf, 0, page, len);
+	return __mxs_nand_ecc_read_page(chip, buf, 0, page, len);
 }
 
 /*
  * Write a page to NAND.
  */
-static int mxs_nand_ecc_write_page(struct mtd_info *mtd,
-				struct nand_chip *chip, const uint8_t *buf,
+static int mxs_nand_ecc_write_page(struct nand_chip *chip, const uint8_t *buf,
 				int oob_required)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct mxs_nand_info *nand_info = chip->priv;
 	struct mxs_dma_desc *d;
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
@@ -975,7 +971,7 @@ static int mxs_nand_ecc_write_page(struct mtd_info *mtd,
 	memcpy(nand_info->oob_buf, chip->oob_poi, mtd->oobsize);
 
 	/* Handle block mark swapping. */
-	mxs_nand_swap_block_mark(mtd, nand_info->data_buf, nand_info->oob_buf);
+	mxs_nand_swap_block_mark(chip, nand_info->data_buf, nand_info->oob_buf);
 
 	/* Compile the DMA descriptor - write data. */
 	d = mxs_nand_get_dma_desc(nand_info);
@@ -1136,9 +1132,9 @@ static int mxs_nand_hook_block_markbad(struct mtd_info *mtd, loff_t ofs)
  * raw_oob_mode field so that, when control finally arrives here, we'll know
  * what to do.
  */
-static int mxs_nand_ecc_read_oob(struct mtd_info *mtd, struct nand_chip *chip,
-				int page)
+static int mxs_nand_ecc_read_oob(struct nand_chip *chip, int page)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct mxs_nand_info *nand_info = chip->priv;
 	int column;
 
@@ -1152,8 +1148,8 @@ static int mxs_nand_ecc_read_oob(struct mtd_info *mtd, struct nand_chip *chip,
 		 * If control arrives here, we're doing a "raw" read. Send the
 		 * command to read the conventional OOB and read it.
 		 */
-		chip->cmdfunc(mtd, NAND_CMD_READ0, mtd->writesize, page);
-		chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
+		chip->cmdfunc(chip, NAND_CMD_READ0, mtd->writesize, page);
+		chip->read_buf(chip, chip->oob_poi, mtd->oobsize);
 	} else {
 		/*
 		 * If control arrives here, we're not doing a "raw" read. Fill
@@ -1162,8 +1158,8 @@ static int mxs_nand_ecc_read_oob(struct mtd_info *mtd, struct nand_chip *chip,
 		memset(chip->oob_poi, 0xff, mtd->oobsize);
 
 		column = nand_info->version == GPMI_VERSION_TYPE_MX23 ? 0 : mtd->writesize;
-		chip->cmdfunc(mtd, NAND_CMD_READ0, column, page);
-		mxs_nand_read_buf(mtd, chip->oob_poi, 1);
+		chip->cmdfunc(chip, NAND_CMD_READ0, column, page);
+		mxs_nand_read_buf(chip, chip->oob_poi, 1);
 	}
 
 	return 0;
@@ -1173,9 +1169,9 @@ static int mxs_nand_ecc_read_oob(struct mtd_info *mtd, struct nand_chip *chip,
 /*
  * Write OOB data to NAND.
  */
-static int mxs_nand_ecc_write_oob(struct mtd_info *mtd, struct nand_chip *chip,
-					int page)
+static int mxs_nand_ecc_write_oob(struct nand_chip *chip, int page)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct mxs_nand_info *nand_info = chip->priv;
 	int column;
 	uint8_t block_mark = 0;
@@ -1196,12 +1192,12 @@ static int mxs_nand_ecc_write_oob(struct mtd_info *mtd, struct nand_chip *chip,
 
 	column = nand_info->version == GPMI_VERSION_TYPE_MX23 ? 0 : mtd->writesize;
 	/* Write the block mark. */
-	chip->cmdfunc(mtd, NAND_CMD_SEQIN, column, page);
-	chip->write_buf(mtd, &block_mark, 1);
-	chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
+	chip->cmdfunc(chip, NAND_CMD_SEQIN, column, page);
+	chip->write_buf(chip, &block_mark, 1);
+	chip->cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
 
 	/* Check if it worked. */
-	if (chip->waitfunc(mtd, chip) & NAND_STATUS_FAIL)
+	if (chip->waitfunc(chip) & NAND_STATUS_FAIL)
 		return -EIO;
 
 	return 0;
@@ -1220,7 +1216,7 @@ static int mxs_nand_ecc_write_oob(struct mtd_info *mtd, struct nand_chip *chip,
  * Thus, this function is only called when we want *all* blocks to look good,
  * so it *always* return success.
  */
-static int mxs_nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
+static int mxs_nand_block_bad(struct nand_chip *chip , loff_t ofs, int getchip)
 {
 	return 0;
 }
@@ -1239,9 +1235,9 @@ static int mxs_nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
  * call to nand_scan(). Anything other than zero will cause this driver to
  * tear everything down and declare failure.
  */
-static int mxs_nand_scan_bbt(struct mtd_info *mtd)
+static int mxs_nand_scan_bbt(struct nand_chip *chip)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct mxs_nand_info *nand_info = chip->priv;
 	void __iomem *bch_regs = nand_info->bch_base;
 	int ret;
@@ -1252,7 +1248,7 @@ static int mxs_nand_scan_bbt(struct mtd_info *mtd)
 	if (ret)
 		return ret;
 
-	mxs_nand_config_bch(mtd, mtd->writesize + mtd->oobsize);
+	mxs_nand_config_bch(chip, mtd->writesize + mtd->oobsize);
 
 	/* Set *all* chip selects to use layout 0 */
 	writel(0, bch_regs + BCH_LAYOUTSELECT);
@@ -1277,7 +1273,7 @@ static int mxs_nand_scan_bbt(struct mtd_info *mtd)
 	}
 
 	/* We use the reference implementation for bad block management. */
-	return nand_default_bbt(mtd);
+	return nand_default_bbt(chip);
 }
 
 /*
@@ -2029,7 +2025,6 @@ static void mxs_nand_compute_edo_timing(struct mxs_nand_info *info,
 static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
 {
 	struct nand_chip *chip = &info->nand_chip;
-	struct mtd_info	 *mtd = &chip->mtd;
 	uint8_t feature[ONFI_SUBFEATURE_PARAM_LEN] = {};
 	int ret, mode;
 
@@ -2049,7 +2044,7 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
 	else
 		return -EINVAL;
 
-	chip->select_chip(mtd, 0);
+	chip->select_chip(chip, 0);
 
 	if (le16_to_cpu(chip->onfi_params.opt_cmd)
 	      & ONFI_OPT_CMD_SET_GET_FEATURES) {
@@ -2057,19 +2052,19 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
 		/* [1] send SET FEATURE commond to NAND */
 		feature[0] = mode;
 
-		ret = chip->onfi_set_features(mtd, chip,
+		ret = chip->onfi_set_features(chip,
 				ONFI_FEATURE_ADDR_TIMING_MODE, feature);
 		if (ret)
 			goto err_out;
 
 		/* [2] send GET FEATURE command to double-check the timing mode */
-		ret = chip->onfi_get_features(mtd, chip,
+		ret = chip->onfi_get_features(chip,
 				ONFI_FEATURE_ADDR_TIMING_MODE, feature);
 		if (ret || feature[0] != mode)
 			goto err_out;
 	}
 
-	chip->select_chip(mtd, -1);
+	chip->select_chip(chip, -1);
 
 	/* [3] set the main IO clock, 100MHz for mode 5, 80MHz for mode 4. */
 	clk_disable(info->clk);
@@ -2081,7 +2076,7 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
 	return mode;
 
 err_out:
-	chip->select_chip(mtd, -1);
+	chip->select_chip(chip, -1);
 
 	return -EINVAL;
 }
@@ -2221,11 +2216,11 @@ static int mxs_nand_probe(struct device_d *dev)
 	chip->ecc.mode		= NAND_ECC_HW;
 
 	/* first scan to find the device and get the page size */
-	err = nand_scan_ident(mtd, 4, NULL);
+	err = nand_scan_ident(chip, 4, NULL);
 	if (err)
 		goto err2;
 
-	err = mxs_nand_calc_geo(mtd);
+	err = mxs_nand_calc_geo(chip);
 	if (err)
 		goto err2;
 
@@ -2239,11 +2234,11 @@ static int mxs_nand_probe(struct device_d *dev)
 	mxs_nand_setup_timing(nand_info);
 
 	/* second phase scan */
-	err = nand_scan_tail(mtd);
+	err = nand_scan_tail(chip);
 	if (err)
 		goto err2;
 
-	err = add_mtd_nand_device(mtd, "nand");
+	err = add_mtd_nand_device(chip, "nand");
 	if (err)
 		goto err2;
 
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 83fa93b617..b7c35f8899 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -141,9 +141,8 @@ static struct nand_bbt_descr bb_descrip_flashbased = {
  *
  * @return
  */
-static int omap_dev_ready(struct mtd_info *mtd)
+static int omap_dev_ready(struct nand_chip *nand)
 {
-	struct nand_chip *nand = mtd_to_nand(mtd);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
 
 	if (readl(oinfo->gpmc_base + GPMC_STATUS) & oinfo->wait_mon_mask)
@@ -187,9 +186,8 @@ static void gpmc_nand_wp(struct gpmc_nand_info *oinfo, int mode)
  *
  * @return none
  */
-static void omap_hwcontrol(struct mtd_info *mtd, int cmd, unsigned int ctrl)
+static void omap_hwcontrol(struct nand_chip *nand, int cmd, unsigned int ctrl)
 {
-	struct nand_chip *nand = mtd_to_nand(mtd);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
 
 	switch (ctrl) {
@@ -231,10 +229,9 @@ static unsigned int gen_true_ecc(u8 *ecc_buf)
 	    ((ecc_buf[2] & 0x0F) << 8);
 }
 
-static int __omap_calculate_ecc(struct mtd_info *mtd, uint8_t *ecc_code,
+static int __omap_calculate_ecc(struct nand_chip *nand, uint8_t *ecc_code,
 				int sblock)
 {
-	struct nand_chip *nand = mtd_to_nand(mtd);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
 	unsigned int reg, reg1, val;
 	unsigned int val1 = 0x0, val2 = 0x0;
@@ -324,16 +321,15 @@ static int __omap_calculate_ecc(struct mtd_info *mtd, uint8_t *ecc_code,
 	return 0;
 }
 
-static int omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
+static int omap_calculate_ecc(struct nand_chip *nand, const uint8_t *dat,
 			      uint8_t *ecc_code)
 {
-	return __omap_calculate_ecc(mtd, ecc_code, 0);
+	return __omap_calculate_ecc(nand, ecc_code, 0);
 }
 
-static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
+static int omap_correct_bch(struct nand_chip *nand, uint8_t *dat,
 			     uint8_t *read_ecc, uint8_t *calc_ecc)
 {
-	struct nand_chip *nand = mtd_to_nand(mtd);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
 	int j, actual_eccsize;
 	const uint8_t *erased_ecc_vec;
@@ -404,13 +400,12 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 	return bitflip_count;
 }
 
-static int omap_correct_hamming(struct mtd_info *mtd, uint8_t *dat,
+static int omap_correct_hamming(struct nand_chip *nand, uint8_t *dat,
 			     uint8_t *read_ecc, uint8_t *calc_ecc)
 {
 	unsigned int orig_ecc, new_ecc, res, hm;
 	unsigned short parity_bits, byte;
 	unsigned char bit;
-	struct nand_chip *nand = mtd_to_nand(mtd);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
 
 	if (read_ecc[0] == 0xff && read_ecc[1] == 0xff &&
@@ -461,23 +456,21 @@ static int omap_correct_hamming(struct mtd_info *mtd, uint8_t *dat,
  *
  * @return 0 if data is OK or corrected, else returns -1
  */
-static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
+static int omap_correct_data(struct nand_chip *nand, uint8_t *dat,
 			     uint8_t *read_ecc, uint8_t *calc_ecc)
 {
-	struct nand_chip *nand = mtd_to_nand(mtd);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
 
 	if (oinfo->ecc_mode != OMAP_ECC_HAMMING_CODE_HW_ROMCODE)
 		return -EINVAL;
 
-	return omap_correct_hamming(mtd, dat, read_ecc, calc_ecc);
+	return omap_correct_hamming(nand, dat, read_ecc, calc_ecc);
 
 	return 0;
 }
 
-static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
+static void omap_enable_hwecc(struct nand_chip *nand, int mode)
 {
-	struct nand_chip *nand = mtd_to_nand(mtd);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
 	unsigned int bch_mod = 0, bch_wrapmode = 0, eccsize1 = 0, eccsize0 = 0;
 	unsigned int ecc_conf_val = 0, ecc_size_conf_val = 0;
@@ -556,7 +549,7 @@ static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
 			oinfo->gpmc_base + GPMC_ECC_CONTROL);
 }
 
-static int omap_gpmc_read_buf_manual(struct mtd_info *mtd, struct nand_chip *chip,
+static int omap_gpmc_read_buf_manual(struct nand_chip *chip,
 		void *buf, int bytes, int result_reg)
 {
 	struct gpmc_nand_info *oinfo = chip->priv;
@@ -568,7 +561,7 @@ static int omap_gpmc_read_buf_manual(struct mtd_info *mtd, struct nand_chip *chi
 	writel(GPMC_ECC_CONTROL_ECCPOINTER(result_reg),
 			oinfo->gpmc_base + GPMC_ECC_CONTROL);
 
-	chip->read_buf(mtd, buf, bytes);
+	chip->read_buf(chip, buf, bytes);
 
 	return bytes;
 }
@@ -579,9 +572,8 @@ static int omap_gpmc_read_buf_manual(struct mtd_info *mtd, struct nand_chip *chi
  * @buf: buffer to store date
  * @len: number of bytes to read
  */
-static void omap_read_buf_pref(struct mtd_info *mtd, u_char *buf, int len)
+static void omap_read_buf_pref(struct nand_chip *nand_chip, u_char *buf, int len)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
 	struct gpmc_nand_info *info = nand_chip->priv;
 	u32 r_count = 0;
 	u32 *p = (u32 *)buf;
@@ -619,10 +611,9 @@ static void omap_read_buf_pref(struct mtd_info *mtd, u_char *buf, int len)
  * @buf: data buffer
  * @len: number of bytes to write
  */
-static void omap_write_buf_pref(struct mtd_info *mtd,
+static void omap_write_buf_pref(struct nand_chip *nand_chip,
 					const u_char *buf, int len)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
 	struct gpmc_nand_info *info = nand_chip->priv;
 
 	u32 w_count = 0;
@@ -684,9 +675,10 @@ static void omap_write_buf_pref(struct mtd_info *mtd,
  * generation), so we use the otherwise unused ECC_RESULTx_5 to
  * generate dummy eccs for the unprotected oob area.
  */
-static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
-		struct nand_chip *chip, uint8_t *buf, int oob_required, int page)
+static int omap_gpmc_read_page_bch_rom_mode(struct nand_chip *chip, uint8_t *buf,
+					    int oob_required, int page)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct gpmc_nand_info *oinfo = chip->priv;
 	int dev_width = chip->options & NAND_BUSWIDTH_16 ? GPMC_ECC_CONFIG_ECC16B : 0;
 	uint8_t *p = buf;
@@ -720,18 +712,18 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 			oinfo->gpmc_base + GPMC_ECC_CONTROL);
 
 	for (i = 0; i < 32; i++)
-		p += omap_gpmc_read_buf_manual(mtd, chip, p, 64, (i >> 3) + 1);
+		p += omap_gpmc_read_buf_manual(chip, p, 64, (i >> 3) + 1);
 
 	p = chip->oob_poi;
 
-	p += omap_gpmc_read_buf_manual(mtd, chip, p, 2, 5);
+	p += omap_gpmc_read_buf_manual(chip, p, 2, 5);
 
 	for (i = 0; i < 4; i++) {
-		p += omap_gpmc_read_buf_manual(mtd, chip, p, 13, i + 1);
-		p += omap_gpmc_read_buf_manual(mtd, chip, p, 1, 5);
+		p += omap_gpmc_read_buf_manual(chip, p, 13, i + 1);
+		p += omap_gpmc_read_buf_manual(chip, p, 1, 5);
 	}
 
-	p += omap_gpmc_read_buf_manual(mtd, chip, p, 6, 5);
+	p += omap_gpmc_read_buf_manual(chip, p, 6, 5);
 
 	for (i = 0; i < chip->ecc.total; i++)
 		ecc_code[i] = chip->oob_poi[eccpos[i]];
@@ -739,8 +731,8 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 	p = buf;
 
 	for (i = 0, j = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize, j++) {
-		__omap_calculate_ecc(mtd, &ecc_calc[i - j], j + 1);
-		stat = omap_correct_bch(mtd, p, &ecc_code[i], &ecc_calc[i - j]);
+		__omap_calculate_ecc(chip, &ecc_calc[i - j], j + 1);
+		stat = omap_correct_bch(chip, p, &ecc_code[i], &ecc_calc[i - j]);
 		if (stat < 0) {
 			mtd->ecc_stats.failed++;
 		} else {
@@ -954,10 +946,10 @@ static int omap_elm_correct_data(struct nand_chip *chip, u_char *data,
 	return (err) ? err : stat;
 }
 
-static int gpmc_read_page_hwecc_elm(struct mtd_info *mtd,
-				    struct nand_chip *chip, uint8_t *buf,
+static int gpmc_read_page_hwecc_elm(struct nand_chip *chip, uint8_t *buf,
 				    int oob_required, int page)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int i;
 	int eccbytes = chip->ecc.bytes;
 	int eccsteps = chip->ecc.steps;
@@ -965,9 +957,9 @@ static int gpmc_read_page_hwecc_elm(struct mtd_info *mtd,
 	uint8_t *ecc_code = chip->buffers->ecccode;
 	uint32_t *eccpos = chip->ecc.layout->eccpos;
 
-	chip->ecc.hwctl(mtd, NAND_ECC_READ);
-	chip->read_buf(mtd, buf, mtd->writesize);
-	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
+	chip->ecc.hwctl(chip, NAND_ECC_READ);
+	chip->read_buf(chip, buf, mtd->writesize);
+	chip->read_buf(chip, chip->oob_poi, mtd->oobsize);
 
 	for (i = 0; i < chip->ecc.total; i++)
 		ecc_code[i] = chip->oob_poi[eccpos[i]];
@@ -975,15 +967,15 @@ static int gpmc_read_page_hwecc_elm(struct mtd_info *mtd,
 	eccsteps = chip->ecc.steps;
 
 	for (i = 0; eccsteps; eccsteps--, i++)
-		__omap_calculate_ecc(mtd, &ecc_calc[i * eccbytes], i);
+		__omap_calculate_ecc(chip, &ecc_calc[i * eccbytes], i);
 
 	return omap_elm_correct_data(chip, buf, ecc_code, ecc_calc);
 }
 
-static int gpmc_read_page_hwecc(struct mtd_info *mtd,
-				struct nand_chip *chip, uint8_t *buf,
+static int gpmc_read_page_hwecc(struct nand_chip *chip, uint8_t *buf,
 				int oob_required, int page)
 {
+	struct mtd_info *mtd = nand_to_mtd(chip);
 	int i, eccsize = chip->ecc.size;
 	int eccbytes = chip->ecc.bytes;
 	int eccsteps = chip->ecc.steps;
@@ -993,9 +985,9 @@ static int gpmc_read_page_hwecc(struct mtd_info *mtd,
 	uint32_t *eccpos = chip->ecc.layout->eccpos;
 	unsigned int max_bitflips = 0;
 
-	chip->ecc.hwctl(mtd, NAND_ECC_READ);
-	chip->read_buf(mtd, p, mtd->writesize);
-	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
+	chip->ecc.hwctl(chip, NAND_ECC_READ);
+	chip->read_buf(chip, p, mtd->writesize);
+	chip->read_buf(chip, chip->oob_poi, mtd->oobsize);
 
 	for (i = 0; i < chip->ecc.total; i++)
 		ecc_code[i] = chip->oob_poi[eccpos[i]];
@@ -1006,8 +998,8 @@ static int gpmc_read_page_hwecc(struct mtd_info *mtd,
 	for (i = 0 ; eccsteps; eccsteps--, i++, p += eccsize) {
 		int stat;
 
-		__omap_calculate_ecc(mtd, &ecc_calc[i * eccbytes], i);
-		stat = omap_correct_bch(mtd, p, &ecc_code[i * eccbytes], &ecc_calc[i * eccbytes]);
+		__omap_calculate_ecc(chip, &ecc_calc[i * eccbytes], i);
+		stat = omap_correct_bch(chip, p, &ecc_code[i * eccbytes], &ecc_calc[i * eccbytes]);
 		if (stat < 0) {
 			mtd->ecc_stats.failed++;
 		} else {
@@ -1136,7 +1128,7 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 	oinfo->ecc_mode = mode;
 
 	/* second phase scan */
-	if (nand_scan_tail(minfo))
+	if (nand_scan_tail(nand))
 		return -ENXIO;
 
 	nand->options |= NAND_SKIP_BBTSCAN;
@@ -1296,7 +1288,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	mdelay(1);
 
 	/* first scan to find the device and get the page size */
-	if (nand_scan_ident(minfo, 1, NULL)) {
+	if (nand_scan_ident(nand, 1, NULL)) {
 		err = -ENXIO;
 		goto out_release_mem;
 	}
@@ -1318,7 +1310,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	omap_gpmc_eccmode(oinfo, oinfo->ecc_mode);
 
 	/* We are all set to register with the system now! */
-	err = add_mtd_nand_device(minfo, "nand");
+	err = add_mtd_nand_device(nand, "nand");
 	if (err) {
 		dev_dbg(pdev, "device registration failed\n");
 		goto out_release_mem;
diff --git a/drivers/mtd/nand/nand_orion.c b/drivers/mtd/nand/nand_orion.c
index c8b89cd03c..ac1c8442c0 100644
--- a/drivers/mtd/nand/nand_orion.c
+++ b/drivers/mtd/nand/nand_orion.c
@@ -27,9 +27,8 @@ struct orion_nand {
 	u8 cle;         /* address line number connected to CLE */
 };
 
-static void orion_nand_cmd_ctrl(struct mtd_info *mtd, int cmd, unsigned int ctrl)
+static void orion_nand_cmd_ctrl(struct nand_chip *chip, int cmd, unsigned int ctrl)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct orion_nand *priv = chip->priv;
 	u32 offs;
 
@@ -49,9 +48,8 @@ static void orion_nand_cmd_ctrl(struct mtd_info *mtd, int cmd, unsigned int ctrl
 	writeb(cmd, chip->IO_ADDR_W + offs);
 }
 
-static void orion_nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
+static void orion_nand_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	void __iomem *io_base = chip->IO_ADDR_R;
 	uint64_t *buf64;
 	int i = 0;
@@ -132,12 +130,12 @@ static int orion_nand_probe(struct device_d *dev)
 	if (!IS_ERR(clk))
 		clk_enable(clk);
 
-	if (nand_scan(mtd, 1)) {
+	if (nand_scan(chip, 1)) {
 		ret = -ENXIO;
 		goto no_dev;
 	}
 
-	add_mtd_nand_device(mtd, "orion_nand");
+	add_mtd_nand_device(chip, "orion_nand");
 	return 0;
 no_dev:
 	if (!IS_ERR(clk))
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index 9fbc0f90d3..9df7f6cba2 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -200,10 +200,9 @@ static void __nand_boot_init disable_nand_controller(void __iomem *host)
  *
  * This is a special block read variant for the S3C2440 CPU.
  */
-static void s3c2440_nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
+static void s3c2440_nand_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct s3c24x0_nand_host *host = nand_chip->priv;
+	struct s3c24x0_nand_host *host = chip->priv;
 
 	readsl(host->base + NFDATA, buf, len >> 2);
 
@@ -224,11 +223,10 @@ static void s3c2440_nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
  *
  * This is a special block write variant for the S3C2440 CPU.
  */
-static void s3c2440_nand_write_buf(struct mtd_info *mtd, const uint8_t *buf,
+static void s3c2440_nand_write_buf(struct nand_chip *chip, const uint8_t *buf,
 					int len)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct s3c24x0_nand_host *host = nand_chip->priv;
+	struct s3c24x0_nand_host *host = chip->priv;
 
 	writesl(host->base + NFDATA, buf, len >> 2);
 
@@ -252,7 +250,7 @@ static void s3c2440_nand_write_buf(struct mtd_info *mtd, const uint8_t *buf,
  *
  * @note: This routine works always on a 24 bit ECC
  */
-static int s3c2410_nand_correct_data(struct mtd_info *mtd, uint8_t *dat,
+static int s3c2410_nand_correct_data(struct nand_chip *chip, uint8_t *dat,
 				uint8_t *read_ecc, uint8_t *calc_ecc)
 {
 	unsigned int diff0, diff1, diff2;
@@ -313,10 +311,9 @@ static int s3c2410_nand_correct_data(struct mtd_info *mtd, uint8_t *dat,
 	return -1;
 }
 
-static void s3c2410_nand_enable_hwecc(struct mtd_info *mtd, int mode)
+static void s3c2410_nand_enable_hwecc(struct nand_chip *chip, int mode)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct s3c24x0_nand_host *host = nand_chip->priv;
+	struct s3c24x0_nand_host *host = chip->priv;
 
 #ifdef CONFIG_CPU_S3C2410
 	writel(readl(host->base + NFCONF) | NFCONF_INITECC , host->base + NFCONF);
@@ -326,10 +323,9 @@ static void s3c2410_nand_enable_hwecc(struct mtd_info *mtd, int mode)
 #endif
 }
 
-static int s3c2410_nand_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat, uint8_t *ecc_code)
+static int s3c2410_nand_calculate_ecc(struct nand_chip *chip, const uint8_t *dat, uint8_t *ecc_code)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct s3c24x0_nand_host *host = nand_chip->priv;
+	struct s3c24x0_nand_host *host = chip->priv;
 
 #ifdef CONFIG_CPU_S3C2410
 	ecc_code[0] = readb(host->base + NFECC);
@@ -346,30 +342,27 @@ static int s3c2410_nand_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
 	return 0;
 }
 
-static void s3c24x0_nand_select_chip(struct mtd_info *mtd, int chip)
+static void s3c24x0_nand_select_chip(struct nand_chip *chip, int num)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct s3c24x0_nand_host *host = nand_chip->priv;
+	struct s3c24x0_nand_host *host = chip->priv;
 
-	if (chip == -1)
+	if (num == -1)
 		disable_cs(host->base);
 	else
 		enable_cs(host->base);
 }
 
-static int s3c24x0_nand_devready(struct mtd_info *mtd)
+static int s3c24x0_nand_devready(struct nand_chip *chip)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct s3c24x0_nand_host *host = nand_chip->priv;
+	struct s3c24x0_nand_host *host = chip->priv;
 
 	return readw(host->base + NFSTAT) & NFSTAT_BUSY;
 }
 
-static void s3c24x0_nand_hwcontrol(struct mtd_info *mtd, int cmd,
+static void s3c24x0_nand_hwcontrol(struct nand_chip *chip, int cmd,
 					unsigned int ctrl)
 {
-	struct nand_chip *nand_chip = mtd_to_nand(mtd);
-	struct s3c24x0_nand_host *host = nand_chip->priv;
+	struct s3c24x0_nand_host *host = chip->priv;
 
 	if (cmd == NAND_CMD_NONE)
 		return;
@@ -482,13 +475,13 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 		goto on_error;
 
 	/* Scan to find existence of the device */
-	ret = nand_scan(mtd, 1);
+	ret = nand_scan(chip, 1);
 	if (ret != 0) {
 		ret = -ENXIO;
 		goto on_error;
 	}
 
-	return add_mtd_nand_device(mtd, "nand");
+	return add_mtd_nand_device(chip, "nand");
 
 on_error:
 	free(host);
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index 31bc2efc40..9918548357 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -58,7 +58,7 @@ static inline int parity(int b) /* uses low 8 bits: returns 0 or all-1 */
  * I haven't managed to get the desired data out of it; so do it in sw.
  * There is problably some errata involved, but currently miss the info.
  */
-static int nomadik_ecc512_calc(struct mtd_info *mtd, const u_char *data,
+static int nomadik_ecc512_calc(struct nand_chip *nand, const u_char *data,
 			u_char *ecc)
 {
 	int gpar = 0;
@@ -101,10 +101,9 @@ static int nomadik_ecc512_calc(struct mtd_info *mtd, const u_char *data,
 	return 0;
 }
 
-static int nomadik_ecc512_correct(struct mtd_info *mtd, uint8_t *dat,
+static int nomadik_ecc512_correct(struct nand_chip *chip, uint8_t *dat,
 				uint8_t *r_ecc, uint8_t *c_ecc)
 {
-	struct nand_chip *chip = mtd_to_nand(mtd);
 	uint32_t r, c, d, diff; /*read, calculated, xor of them */
 
 	if (!memcmp(r_ecc, c_ecc, chip->ecc.bytes))
@@ -149,14 +148,13 @@ static struct nand_ecclayout nomadik_ecc_layout = {
 	.oobfree = { {0x08, 0x08}, {0x18, 0x08}, {0x28, 0x08}, {0x38, 0x08} },
 };
 
-static void nomadik_ecc_control(struct mtd_info *mtd, int mode)
+static void nomadik_ecc_control(struct nand_chip *nand, int mode)
 {
 	/* No need to enable hw ecc, it's on by default */
 }
 
-static void nomadik_cmd_ctrl(struct mtd_info *mtd, int cmd, unsigned int ctrl)
+static void nomadik_cmd_ctrl(struct nand_chip *nand, int cmd, unsigned int ctrl)
 {
-	struct nand_chip *nand = mtd_to_nand(mtd);
 	struct nomadik_nand_host *host = nand->priv;
 
 	if (cmd == NAND_CMD_NONE)
@@ -221,13 +219,13 @@ static int nomadik_nand_probe(struct device_d *dev)
 	/*
 	 * Scan to find existance of the device
 	 */
-	if (nand_scan(mtd, 1)) {
+	if (nand_scan(nand, 1)) {
 		ret = -ENXIO;
 		goto err;
 	}
 
 	pr_info("Registering %s as whole device\n", mtd->name);
-	add_mtd_nand_device(mtd, "nand");
+	add_mtd_nand_device(nand, "nand");
 
 	return 0;
 
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index a8a22210ca..e23b3446a7 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -23,28 +23,29 @@
 #include <linux/mtd/bbm.h>
 
 struct mtd_info;
+struct nand_chip;
 struct nand_flash_dev;
 /* Scan and identify a NAND device */
-extern int nand_scan(struct mtd_info *mtd, int max_chips);
+extern int nand_scan(struct nand_chip *chip, int max_chips);
 /*
  * Separate phases of nand_scan(), allowing board driver to intervene
  * and override command or ECC setup according to flash type.
  */
-extern int nand_scan_ident(struct mtd_info *mtd, int max_chips,
+extern int nand_scan_ident(struct nand_chip *chip, int max_chips,
 			   struct nand_flash_dev *table);
-extern int nand_scan_tail(struct mtd_info *mtd);
+extern int nand_scan_tail(struct nand_chip *chip);
 
 /* Free resources held by the NAND device */
-extern void nand_release(struct mtd_info *mtd);
+extern void nand_release(struct nand_chip *chip);
 
 /* Internal helper for board drivers which need to override command function */
-extern void nand_wait_ready(struct mtd_info *mtd);
+extern void nand_wait_ready(struct nand_chip *chip);
 
 /* locks all blocks present in the device */
-extern int nand_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len);
+extern int nand_lock(struct nand_chip *chip, loff_t ofs, uint64_t len);
 
 /* unlocks specified locked blocks */
-extern int nand_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len);
+extern int nand_unlock(struct nand_chip *chip, loff_t ofs, uint64_t len);
 
 extern int nand_check_erased_ecc_chunk(void *data, int datalen,
 				       void *ecc, int ecclen,
@@ -346,31 +347,28 @@ struct nand_ecc_ctrl {
 	int postpad;
 	struct nand_ecclayout	*layout;
 	void *priv;
-	void (*hwctl)(struct mtd_info *mtd, int mode);
-	int (*calculate)(struct mtd_info *mtd, const uint8_t *dat,
+	void (*hwctl)(struct nand_chip *chip, int mode);
+	int (*calculate)(struct nand_chip *chip, const uint8_t *dat,
 			uint8_t *ecc_code);
-	int (*correct)(struct mtd_info *mtd, uint8_t *dat, uint8_t *read_ecc,
+	int (*correct)(struct nand_chip *chip, uint8_t *dat, uint8_t *read_ecc,
 			uint8_t *calc_ecc);
-	int (*read_page_raw)(struct mtd_info *mtd, struct nand_chip *chip,
+	int (*read_page_raw)(struct nand_chip *chip,
 			uint8_t *buf, int oob_required, int page);
-	int (*write_page_raw)(struct mtd_info *mtd, struct nand_chip *chip,
+	int (*write_page_raw)(struct nand_chip *chip,
 			const uint8_t *buf, int oob_required);
-	int (*read_page)(struct mtd_info *mtd, struct nand_chip *chip,
+	int (*read_page)(struct nand_chip *chip,
 			uint8_t *buf, int oob_required, int page);
-	int (*read_subpage)(struct mtd_info *mtd, struct nand_chip *chip,
+	int (*read_subpage)(struct nand_chip *chip,
 			uint32_t offs, uint32_t len, uint8_t *buf, int page);
-	int (*write_subpage)(struct mtd_info *mtd, struct nand_chip *chip,
+	int (*write_subpage)(struct nand_chip *chip,
 			uint32_t offset, uint32_t data_len,
 			const uint8_t *data_buf, int oob_required);
-	int (*write_page)(struct mtd_info *mtd, struct nand_chip *chip,
+	int (*write_page)(struct nand_chip *chip,
 			const uint8_t *buf, int oob_required);
-	int (*write_oob_raw)(struct mtd_info *mtd, struct nand_chip *chip,
-			int page);
-	int (*read_oob_raw)(struct mtd_info *mtd, struct nand_chip *chip,
-			int page);
-	int (*read_oob)(struct mtd_info *mtd, struct nand_chip *chip, int page);
-	int (*write_oob)(struct mtd_info *mtd, struct nand_chip *chip,
-			int page);
+	int (*write_oob_raw)(struct nand_chip *chip, int page);
+	int (*read_oob_raw)(struct nand_chip *chip, int page);
+	int (*read_oob)(struct nand_chip *chip, int page);
+	int (*write_oob)(struct nand_chip *chip, int page);
 };
 
 /**
@@ -473,27 +471,25 @@ struct nand_chip {
 	void __iomem *IO_ADDR_R;
 	void __iomem *IO_ADDR_W;
 
-	uint8_t (*read_byte)(struct mtd_info *mtd);
-	u16 (*read_word)(struct mtd_info *mtd);
-	void (*write_buf)(struct mtd_info *mtd, const uint8_t *buf, int len);
-	void (*read_buf)(struct mtd_info *mtd, uint8_t *buf, int len);
-	void (*select_chip)(struct mtd_info *mtd, int chip);
-	int (*block_bad)(struct mtd_info *mtd, loff_t ofs, int getchip);
-	int (*block_markbad)(struct mtd_info *mtd, loff_t ofs);
-	void (*cmd_ctrl)(struct mtd_info *mtd, int dat, unsigned int ctrl);
-	int (*init_size)(struct mtd_info *mtd, struct nand_chip *this,
-			u8 *id_data);
-	int (*dev_ready)(struct mtd_info *mtd);
-	void (*cmdfunc)(struct mtd_info *mtd, unsigned command, int column,
+	uint8_t (*read_byte)(struct nand_chip *chip);
+	u16 (*read_word)(struct nand_chip *chip);
+	void (*write_buf)(struct nand_chip *chip, const uint8_t *buf, int len);
+	void (*read_buf)(struct nand_chip *chip, uint8_t *buf, int len);
+	void (*select_chip)(struct nand_chip *_chip, int chip);
+	int (*block_bad)(struct nand_chip *chip, loff_t ofs, int getchip);
+	int (*block_markbad)(struct nand_chip *chip, loff_t ofs);
+	void (*cmd_ctrl)(struct nand_chip *chip, int dat, unsigned int ctrl);
+	int (*dev_ready)(struct nand_chip *chip);
+	void (*cmdfunc)(struct nand_chip *chip, unsigned command, int column,
 			int page_addr);
-	int(*waitfunc)(struct mtd_info *mtd, struct nand_chip *this);
-	int (*scan_bbt)(struct mtd_info *mtd);
-	int (*write_page)(struct mtd_info *mtd, struct nand_chip *chip,
+	int(*waitfunc)(struct nand_chip *chip);
+	int (*scan_bbt)(struct nand_chip *chip);
+	int (*write_page)(struct nand_chip *chip,
 			uint32_t offset, int data_len, const uint8_t *buf,
 			int oob_required, int page, int cached, int raw);
-	int (*onfi_set_features)(struct mtd_info *mtd, struct nand_chip *chip,
+	int (*onfi_set_features)(struct nand_chip *chip,
 			int feature_addr, uint8_t *subfeature_para);
-	int (*onfi_get_features)(struct mtd_info *mtd, struct nand_chip *chip,
+	int (*onfi_get_features)(struct nand_chip *chip,
 			int feature_addr, uint8_t *subfeature_para);
 
 	int chip_delay;
@@ -629,16 +625,16 @@ struct nand_manufacturers {
 extern struct nand_flash_dev nand_flash_ids[];
 extern struct nand_manufacturers nand_manuf_ids[];
 
-extern int nand_update_bbt(struct mtd_info *mtd, loff_t offs);
-extern int nand_default_bbt(struct mtd_info *mtd);
-extern int nand_markbad_bbt(struct mtd_info *mtd, loff_t offs);
-extern int nand_markgood_bbt(struct mtd_info *mtd, loff_t offs);
-extern int nand_isbad_bbt(struct mtd_info *mtd, loff_t offs, int allowbbt);
-extern int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
+extern int nand_update_bbt(struct nand_chip *chip, loff_t offs);
+extern int nand_default_bbt(struct nand_chip *chip);
+extern int nand_markbad_bbt(struct nand_chip *chip, loff_t offs);
+extern int nand_markgood_bbt(struct nand_chip *chip, loff_t offs);
+extern int nand_isbad_bbt(struct nand_chip *chip, loff_t offs, int allowbbt);
+extern int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 			   int allowbbt);
-extern int nand_do_read(struct mtd_info *mtd, loff_t from, size_t len,
+extern int nand_do_read(struct nand_chip *chip, loff_t from, size_t len,
 			size_t *retlen, uint8_t *buf);
-extern int add_mtd_nand_device(struct mtd_info *mtd, char *devname);
+extern int add_mtd_nand_device(struct nand_chip *chip, char *devname);
 
 /**
  * struct platform_nand_chip - chip level device structure
@@ -798,4 +794,9 @@ static inline struct nand_chip *mtd_to_nand(struct mtd_info *mtd)
 	return container_of(mtd, struct nand_chip, mtd);
 }
 
+static inline struct mtd_info *nand_to_mtd(struct nand_chip *chip)
+{
+	return &chip->mtd;
+}
+
 #endif /* __LINUX_MTD_NAND_H */
diff --git a/include/linux/mtd/nand_bch.h b/include/linux/mtd/nand_bch.h
index 5465ddd132..eee80a558c 100644
--- a/include/linux/mtd/nand_bch.h
+++ b/include/linux/mtd/nand_bch.h
@@ -11,7 +11,7 @@
 #ifndef __MTD_NAND_BCH_H__
 #define __MTD_NAND_BCH_H__
 
-struct mtd_info;
+struct nand_chip;
 struct nand_bch_control;
 
 #if defined(CONFIG_NAND_ECC_BCH)
@@ -21,18 +21,18 @@ static inline int mtd_nand_has_bch(void) { return 1; }
 /*
  * Calculate BCH ecc code
  */
-int nand_bch_calculate_ecc(struct mtd_info *mtd, const u_char *dat,
+int nand_bch_calculate_ecc(struct nand_chip *chip, const u_char *dat,
 			   u_char *ecc_code);
 
 /*
  * Detect and correct bit errors
  */
-int nand_bch_correct_data(struct mtd_info *mtd, u_char *dat, u_char *read_ecc,
+int nand_bch_correct_data(struct nand_chip *chip, u_char *dat, u_char *read_ecc,
 			  u_char *calc_ecc);
 /*
  * Initialize BCH encoder/decoder
  */
-struct nand_bch_control *nand_bch_init(struct mtd_info *mtd);
+struct nand_bch_control *nand_bch_init(struct nand_chip *chip);
 /*
  * Release BCH encoder/decoder resources
  */
@@ -43,20 +43,20 @@ void nand_bch_free(struct nand_bch_control *nbc);
 static inline int mtd_nand_has_bch(void) { return 0; }
 
 static inline int
-nand_bch_calculate_ecc(struct mtd_info *mtd, const u_char *dat,
+nand_bch_calculate_ecc(struct nand_chip *chip, const u_char *dat,
 		       u_char *ecc_code)
 {
 	return -1;
 }
 
 static inline int
-nand_bch_correct_data(struct mtd_info *mtd, unsigned char *buf,
+nand_bch_correct_data(struct nand_chip *chip, unsigned char *buf,
 		      unsigned char *read_ecc, unsigned char *calc_ecc)
 {
 	return -1;
 }
 
-static inline struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
+static inline struct nand_bch_control *nand_bch_init(struct nand_chip *chip)
 {
 	return NULL;
 }
diff --git a/include/linux/mtd/nand_ecc.h b/include/linux/mtd/nand_ecc.h
index 12c5bc342e..1dc779581f 100644
--- a/include/linux/mtd/nand_ecc.h
+++ b/include/linux/mtd/nand_ecc.h
@@ -15,16 +15,16 @@
 #ifndef __MTD_NAND_ECC_H__
 #define __MTD_NAND_ECC_H__
 
-struct mtd_info;
+struct nand_chip;
 
 /*
  * Calculate 3 byte ECC code for 256 byte block
  */
-int nand_calculate_ecc(struct mtd_info *mtd, const u_char *dat, u_char *ecc_code);
+int nand_calculate_ecc(struct nand_chip *chip, const u_char *dat, u_char *ecc_code);
 
 /*
  * Detect and correct a 1 bit error for 256 byte block
  */
-int nand_correct_data(struct mtd_info *mtd, u_char *dat, u_char *read_ecc, u_char *calc_ecc);
+int nand_correct_data(struct nand_chip *chip, u_char *dat, u_char *read_ecc, u_char *calc_ecc);
 
 #endif /* __MTD_NAND_ECC_H__ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
