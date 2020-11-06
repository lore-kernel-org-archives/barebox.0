Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xN-0003Xh-KZ
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:58 +0100
Message-Id: <20201106133900.2656-25-s.hauer@pengutronix.de>
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
Subject: [PATCH 24/26] mtd: nand: atmel: Fix pmecc ecc settings
To: Barebox List <barebox@lists.infradead.org>

pmecc has hardcoded steps of 1 and ecc size of the nand chips page size.
This is wrong, the ECC engine does 512 or 1024 bytes per step. Adjust
ecc size and step size accordingly. Also, fix ecc strength which was
hardcoded to 1.
With this the correct number of bitflips is reported, which should be
the number of bitflips per ecc step, not the one for the whole page.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/atmel_nand.c | 58 ++++++++++-------------------------
 1 file changed, 16 insertions(+), 42 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 438a967bd6..db13f5b7e4 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -107,8 +107,6 @@ struct atmel_nand_host {
 	void			*ecc_code;
 };
 
-static struct nand_ecclayout atmel_pmecc_oobinfo;
-
 /*
  * Enable NAND.
  */
@@ -201,22 +199,6 @@ static int pmecc_get_ecc_bytes(int cap, int sector_size)
 	return (m * cap + 7) / 8;
 }
 
-static void pmecc_config_ecc_layout(struct nand_ecclayout *layout,
-	int oobsize, int ecc_len)
-{
-	int i;
-
-	layout->eccbytes = ecc_len;
-
-	/* ECC will occupy the last ecc_len bytes continuously */
-	for (i = 0; i < ecc_len; i++)
-		layout->eccpos[i] = oobsize - ecc_len + i;
-
-	layout->oobfree[0].offset = 2;
-	layout->oobfree[0].length =
-		oobsize - ecc_len - layout->oobfree[0].offset;
-}
-
 static void __iomem *pmecc_get_alpha_to(struct atmel_nand_host *host)
 {
 	int table_size;
@@ -574,7 +556,7 @@ static int pmecc_correction(struct mtd_info *mtd, u32 pmecc_stat, uint8_t *buf)
 {
 	struct nand_chip *nand_chip = mtd_to_nand(mtd);
 	struct atmel_nand_host *host = nand_chip->priv;
-	int i, err_nbr, ret, bitflips = 0;
+	int i, err_nbr, ret, max_bitflips = 0;
 	uint8_t *buf_pos;
 	uint8_t *ecc_code = host->ecc_code;
 
@@ -583,7 +565,7 @@ static int pmecc_correction(struct mtd_info *mtd, u32 pmecc_stat, uint8_t *buf)
 	if (ret)
 		return ret;
 
-	for (i = 0; i < nand_chip->ecc.bytes; i++)
+	for (i = 0; i < nand_chip->ecc.bytes * nand_chip->ecc.steps; i++)
 		if (ecc_code[i] != 0xff)
 			goto normal_check;
 	/* Erased page, return OK */
@@ -608,13 +590,13 @@ normal_check:
 				pmecc_correct_data(mtd, buf_pos, ecc_code, i,
 					host->pmecc_bytes_per_sector, err_nbr);
 				mtd->ecc_stats.corrected += err_nbr;
-				bitflips += err_nbr;
+				max_bitflips = max(max_bitflips, err_nbr);
 			}
 		}
 		pmecc_stat >>= 1;
 	}
 
-	return bitflips;
+	return max_bitflips;
 }
 
 static int atmel_nand_pmecc_read_page(struct nand_chip *chip, uint8_t *buf,
@@ -622,7 +604,6 @@ static int atmel_nand_pmecc_read_page(struct nand_chip *chip, uint8_t *buf,
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct atmel_nand_host *host = chip->priv;
-	int eccsize = chip->ecc.size;
 	uint32_t stat;
 	int ret;
 
@@ -636,7 +617,7 @@ static int atmel_nand_pmecc_read_page(struct nand_chip *chip, uint8_t *buf,
 
 	nand_read_page_op(chip, page, 0, NULL, 0);
 
-	chip->legacy.read_buf(chip, buf, eccsize);
+	chip->legacy.read_buf(chip, buf, mtd->writesize);
 	chip->legacy.read_buf(chip, chip->oob_poi, mtd->oobsize);
 
 	ret = wait_on_timeout(PMECC_MAX_TIMEOUT_MS,
@@ -711,7 +692,7 @@ static void atmel_pmecc_core_init(struct mtd_info *mtd)
 	struct nand_chip *nand_chip = mtd_to_nand(mtd);
 	struct atmel_nand_host *host = nand_chip->priv;
 	uint32_t val = 0;
-	struct nand_ecclayout *ecc_layout;
+	int eccbytes;
 
 	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_RST);
 	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_DISABLE);
@@ -758,11 +739,10 @@ static void atmel_pmecc_core_init(struct mtd_info *mtd)
 		| PMECC_CFG_AUTO_DISABLE);
 	pmecc_writel(host->ecc, CFG, val);
 
-	ecc_layout = host->ecclayout;
+	eccbytes = host->pmecc_sector_number * host->pmecc_bytes_per_sector;
 	pmecc_writel(host->ecc, SAREA, mtd->oobsize - 1);
-	pmecc_writel(host->ecc, SADDR, ecc_layout->eccpos[0]);
-	pmecc_writel(host->ecc, EADDR,
-			ecc_layout->eccpos[ecc_layout->eccbytes - 1]);
+	pmecc_writel(host->ecc, SADDR, mtd->oobsize - eccbytes);
+	pmecc_writel(host->ecc, EADDR, mtd->oobsize - 1);
 	/* See datasheet about PMECC Clock Control Register */
 	pmecc_writel(host->ecc, CLK, 2);
 	pmecc_writel(host->ecc, IDR, 0xff);
@@ -914,9 +894,6 @@ static int __init atmel_pmecc_nand_init_params(struct device_d *dev,
 		host->board->pmecc_lookup_table_offset = 0;
 	}
 
-	/* ECC is calculated for the whole page (1 step) */
-	nand_chip->ecc.size = mtd->writesize;
-
 	/* set ECC page size and oob layout */
 	switch (mtd->writesize) {
 	case 2048:
@@ -932,18 +909,16 @@ static int __init atmel_pmecc_nand_init_params(struct device_d *dev,
 		host->pmecc_index_of = host->pmecc_rom_base +
 			host->board->pmecc_lookup_table_offset;
 
-		nand_chip->ecc.steps = 1;
-		nand_chip->ecc.bytes = host->pmecc_bytes_per_sector *
-				       host->pmecc_sector_number;
+		nand_chip->ecc.steps = host->pmecc_sector_number;
+		nand_chip->ecc.bytes = host->pmecc_bytes_per_sector;
+		nand_chip->ecc.size = sector_size;
+		nand_chip->ecc.strength = cap;
+
 		if (nand_chip->ecc.bytes > mtd->oobsize - 2) {
 			dev_err(host->dev, "No room for ECC bytes\n");
 			return -EINVAL;
 		}
-		pmecc_config_ecc_layout(&atmel_pmecc_oobinfo,
-					mtd->oobsize,
-					nand_chip->ecc.bytes);
-		host->ecclayout = &atmel_pmecc_oobinfo;
-		mtd_set_ecclayout(mtd, host->ecclayout);
+		mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
 		break;
 	case 512:
 	case 1024:
@@ -1016,7 +991,6 @@ static int atmel_nand_read_page(struct nand_chip *chip, uint8_t *buf,
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct atmel_nand_host *host = chip->priv;
-	int eccsize = chip->ecc.size;
 	int eccbytes = chip->ecc.bytes;
 	uint32_t *eccpos = host->ecclayout->eccpos;
 	uint8_t *p = buf;
@@ -1027,7 +1001,7 @@ static int atmel_nand_read_page(struct nand_chip *chip, uint8_t *buf,
 	nand_read_page_op(chip, page, 0, NULL, 0);
 
 	/* read the page */
-	chip->legacy.read_buf(chip, p, eccsize);
+	chip->legacy.read_buf(chip, p, mtd->writesize);
 
 	/* move to ECC position if needed */
 	if (eccpos[0] != 0) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
