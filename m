Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHo-00005v-NV
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:19 +0100
Message-Id: <20181214141730.26181-13-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/23] mtd: nand: omap: unbreak BCH8 support
To: Barebox List <barebox@lists.infradead.org>

We now tell the NAND layer that we have subpages with 512 bytes each.
This means the calculate_ecc / correct hooks are also called for each
subpage which means we cannot iterate over subpages in the calculate_ecc
callback.

Implement this correctly by removing the loop over subpages in the
calculate_ecc callback and by implementing a read_page callback.

With this the bch8_hw and bch8_hw_romcode were tested on AM335x, OMAP4
and AM3517. Number of bitflips is correctly reported as tested with the
nand_bitflip tool.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 113 ++++++++++++++++++------------
 1 file changed, 67 insertions(+), 46 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 58ba95cb48..8d82f637c0 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -236,39 +236,36 @@ static int __omap_calculate_ecc(struct mtd_info *mtd, uint8_t *ecc_code,
 	unsigned int reg;
 	unsigned int val1 = 0x0, val2 = 0x0;
 	unsigned int val3 = 0x0, val4 = 0x0;
-	int i;
 	int ecc_size = 8;
 
 	switch (oinfo->ecc_mode) {
 	case OMAP_ECC_BCH8_CODE_HW:
 	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
-		for (i = 0; i < 4; i++) {
-			/*
-			 * Reading HW ECC_BCH_Results
-			 * 0x240-0x24C, 0x250-0x25C, 0x260-0x26C, 0x270-0x27C
-			 */
-			reg =  GPMC_ECC_BCH_RESULT_0 + (0x10 * (i + sblock));
-			val1 = readl(oinfo->gpmc_base + reg);
-			val2 = readl(oinfo->gpmc_base + reg + 4);
-			if (ecc_size == 8) {
-				val3 = readl(oinfo->gpmc_base  +reg + 8);
-				val4 = readl(oinfo->gpmc_base + reg + 12);
-
-				*ecc_code++ = (val4 & 0xFF);
-				*ecc_code++ = ((val3 >> 24) & 0xFF);
-				*ecc_code++ = ((val3 >> 16) & 0xFF);
-				*ecc_code++ = ((val3 >> 8) & 0xFF);
-				*ecc_code++ = (val3 & 0xFF);
-				*ecc_code++ = ((val2 >> 24) & 0xFF);
-			}
-			*ecc_code++ = ((val2 >> 16) & 0xFF);
-			*ecc_code++ = ((val2 >> 8) & 0xFF);
-			*ecc_code++ = (val2 & 0xFF);
-			*ecc_code++ = ((val1 >> 24) & 0xFF);
-			*ecc_code++ = ((val1 >> 16) & 0xFF);
-			*ecc_code++ = ((val1 >> 8) & 0xFF);
-			*ecc_code++ = (val1 & 0xFF);
+		/*
+		 * Reading HW ECC_BCH_Results
+		 * 0x240-0x24C, 0x250-0x25C, 0x260-0x26C, 0x270-0x27C
+		 */
+		reg =  GPMC_ECC_BCH_RESULT_0 + (0x10 * sblock);
+		val1 = readl(oinfo->gpmc_base + reg);
+		val2 = readl(oinfo->gpmc_base + reg + 4);
+		if (ecc_size == 8) {
+			val3 = readl(oinfo->gpmc_base  +reg + 8);
+			val4 = readl(oinfo->gpmc_base + reg + 12);
+
+			*ecc_code++ = (val4 & 0xFF);
+			*ecc_code++ = ((val3 >> 24) & 0xFF);
+			*ecc_code++ = ((val3 >> 16) & 0xFF);
+			*ecc_code++ = ((val3 >> 8) & 0xFF);
+			*ecc_code++ = (val3 & 0xFF);
+			*ecc_code++ = ((val2 >> 24) & 0xFF);
 		}
+		*ecc_code++ = ((val2 >> 16) & 0xFF);
+		*ecc_code++ = ((val2 >> 8) & 0xFF);
+		*ecc_code++ = (val2 & 0xFF);
+		*ecc_code++ = ((val1 >> 24) & 0xFF);
+		*ecc_code++ = ((val1 >> 16) & 0xFF);
+		*ecc_code++ = ((val1 >> 8) & 0xFF);
+		*ecc_code++ = (val1 & 0xFF);
 		break;
 	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
 		/* read ecc result */
@@ -302,7 +299,6 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 	int bch_max_err;
 	int bitflip_count = 0;
 	bool eccflag = 0;
-
 	int eccsize = oinfo->nand.ecc.bytes;
 
 	switch (oinfo->ecc_mode) {
@@ -424,23 +420,10 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
 
-	dev_dbg(oinfo->pdev, "%s\n", __func__);
-
-	switch (oinfo->ecc_mode) {
-	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
-		return omap_correct_hamming(mtd, dat, read_ecc, calc_ecc);
-	case OMAP_ECC_BCH8_CODE_HW:
-	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
-		/*
-		 * The nand layer already called omap_calculate_ecc,
-		 * but before it has read the oob data. Do it again,
-		 * this time with oob data.
-		 */
-		__omap_calculate_ecc(mtd, calc_ecc, 0);
-		return omap_correct_bch(mtd, dat, read_ecc, calc_ecc);
-	default:
+	if (oinfo->ecc_mode != OMAP_ECC_HAMMING_CODE_HW_ROMCODE)
 		return -EINVAL;
-	}
+
+	return omap_correct_hamming(mtd, dat, read_ecc, calc_ecc);
 
 	return 0;
 }
@@ -691,11 +674,10 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 	for (i = 0; i < chip->ecc.total; i++)
 		ecc_code[i] = chip->oob_poi[eccpos[i]];
 
-	__omap_calculate_ecc(mtd, ecc_calc, 1);
-
 	p = buf;
 
 	for (i = 0, j = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize, j++) {
+		__omap_calculate_ecc(mtd, &ecc_calc[i - j], j);
 		stat = omap_correct_bch(mtd, p, &ecc_code[i], &ecc_calc[i - j]);
 		if (stat < 0) {
 			mtd->ecc_stats.failed++;
@@ -708,6 +690,44 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 	return max_bitflips;
 }
 
+static int gpmc_read_page_hwecc(struct mtd_info *mtd,
+				struct nand_chip *chip, uint8_t *buf,
+				int oob_required, int page)
+{
+	int i, eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	uint8_t *p = buf;
+	uint8_t *ecc_calc = chip->buffers->ecccalc;
+	uint8_t *ecc_code = chip->buffers->ecccode;
+	uint32_t *eccpos = chip->ecc.layout->eccpos;
+	unsigned int max_bitflips = 0;
+
+	chip->ecc.hwctl(mtd, NAND_ECC_READ);
+	chip->read_buf(mtd, p, mtd->writesize);
+	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
+
+	for (i = 0; i < chip->ecc.total; i++)
+		ecc_code[i] = chip->oob_poi[eccpos[i]];
+
+	eccsteps = chip->ecc.steps;
+	p = buf;
+
+	for (i = 0 ; eccsteps; eccsteps--, i++, p += eccsize) {
+		int stat;
+
+		__omap_calculate_ecc(mtd, &ecc_calc[i * eccbytes], i);
+		stat = omap_correct_bch(mtd, p, &ecc_code[i * eccbytes], &ecc_calc[i * eccbytes]);
+		if (stat < 0) {
+			mtd->ecc_stats.failed++;
+		} else {
+			mtd->ecc_stats.corrected += stat;
+			max_bitflips = max_t(unsigned int, max_bitflips, stat);
+		}
+	}
+	return max_bitflips;
+}
+
 static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		enum gpmc_ecc_mode mode)
 {
@@ -762,6 +782,7 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		oinfo->nand.ecc.bytes    = 13;
 		oinfo->nand.ecc.size     = 512;
 		oinfo->nand.ecc.strength = BCH8_MAX_ERROR;
+		nand->ecc.read_page = gpmc_read_page_hwecc;
 		omap_oobinfo.oobfree->offset = offset;
 		oinfo->nand.ecc.steps = minfo->writesize / oinfo->nand.ecc.size;
 		oinfo->nand.ecc.total = oinfo->nand.ecc.steps * oinfo->nand.ecc.bytes;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
