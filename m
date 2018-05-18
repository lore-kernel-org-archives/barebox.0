Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJc9O-0002rA-62
 for barebox@lists.infradead.org; Fri, 18 May 2018 09:58:15 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id CE7FBA007C6
 for <barebox@lists.infradead.org>; Fri, 18 May 2018 11:58:19 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 18 May 2018 11:57:41 +0200
Message-Id: <1526637461-42085-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH] mtd: nand: nand_omap_gpmc: Fix ecc steps
To: barebox@lists.infradead.org

The eccsteps where set wrong for OMAP_ECC_BCH8_CODE_HW_ROMCODE.
So the ECC was only corrected for the first 512 bytes chunk of a 2k page.

Moved out the ecc step iteration out of the correcting loop to make
it more alike the generic nand functions. And made sure that
the ECC is caclulated for all chunks.

This patch is based on work of Sascha Hauer.

Fixes commit dec7b4d2bf9c ("mtd: nand_omap_gpmc: fix BCH error correction").

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
Hello,

this patch hopefully finally fixes the nand issue in the nand_omap_gpmc driver.
Sascha and Daniel worked on this before but thier final solution was not correct.
The problem was that we can not get rid of the 14 byte ECC
size used in OMAP_ECC_BCH8_CODE_HW_ROMCODE. The generic nand write function
needs to consider the offset, too. Or we read wrong ECC after writing.

Maybe there is someone out there to test if this is also working with
OMAP_ECC_BCH8_CODE_HW.

Teresa

 drivers/mtd/nand/nand_omap_gpmc.c | 115 +++++++++++++++++++-------------------
 1 file changed, 56 insertions(+), 59 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index e18ce6358a73..97bdb8f19753 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -297,19 +297,18 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 {
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	int i, j, eccflag, totalcount, actual_eccsize;
+	int j, actual_eccsize;
 	const uint8_t *erased_ecc_vec;
 	unsigned int err_loc[8];
-	int bitflip_count;
 	int bch_max_err;
+	int bitflip_count = 0;
+	int eccflag = 0;
+	bool is_error_reported = false;
 
-	int eccsteps = (nand->ecc.mode == NAND_ECC_HW) &&
-			(nand->ecc.size == 2048) ? 4 : 1;
 	int eccsize = oinfo->nand.ecc.bytes;
 
 	switch (oinfo->ecc_mode) {
 	case OMAP_ECC_BCH8_CODE_HW:
-		eccsize /= eccsteps;
 		actual_eccsize = eccsize;
 		erased_ecc_vec = bch8_vector;
 		bch_max_err = BCH8_MAX_ERROR;
@@ -324,58 +323,45 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 		return -EINVAL;
 	}
 
-	totalcount = 0;
-
-	for (i = 0; i < eccsteps; i++) {
-		bool is_error_reported = false;
-		bitflip_count = 0;
-		eccflag = 0;
-
-		/* check for any ecc error */
-		for (j = 0; (j < actual_eccsize) && (eccflag == 0); j++) {
-			if (calc_ecc[j] != 0) {
-				eccflag = 1;
-				break;
-			}
-		}
-
-		if (eccflag == 1) {
-			if (memcmp(calc_ecc, erased_ecc_vec, actual_eccsize) == 0) {
-				/*
-				 * calc_ecc[] matches pattern for ECC
-				 * (all 0xff) so this is definitely
-				 * an erased-page
-				 */
-			} else {
-				bitflip_count = nand_check_erased_ecc_chunk(
-						dat, oinfo->nand.ecc.size, read_ecc,
-						eccsize, NULL, 0, bch_max_err);
-				if (bitflip_count < 0)
-					is_error_reported = true;
-			}
+	/* check for any ecc error */
+	for (j = 0; (j < actual_eccsize) && (eccflag == 0); j++) {
+		if (calc_ecc[j] != 0) {
+			eccflag = 1;
+			break;
 		}
+	}
 
-		if (is_error_reported) {
-			bitflip_count = omap_gpmc_decode_bch(1,
-					calc_ecc, err_loc);
+	if (eccflag == 1) {
+		if (memcmp(calc_ecc, erased_ecc_vec, actual_eccsize) == 0) {
+			/*
+			 * calc_ecc[] matches pattern for ECC
+			 * (all 0xff) so this is definitely
+			 * an erased-page
+			 */
+		} else {
+			bitflip_count = nand_check_erased_ecc_chunk(
+					dat, oinfo->nand.ecc.size, read_ecc,
+					eccsize, NULL, 0, bch_max_err);
 			if (bitflip_count < 0)
-				return bitflip_count;
-
-			for (j = 0; j < bitflip_count; j++) {
-				if (err_loc[j] < 4096)
-					dat[err_loc[j] >> 3] ^=
-						1 << (err_loc[j] & 7);
-				/* else, not interested to correct ecc */
-			}
+				is_error_reported = true;
 		}
+	}
 
-		totalcount += bitflip_count;
-		calc_ecc = calc_ecc + actual_eccsize;
-		read_ecc = read_ecc + eccsize;
-		dat += 512;
+	if (is_error_reported) {
+		bitflip_count = omap_gpmc_decode_bch(1,
+				calc_ecc, err_loc);
+		if (bitflip_count < 0)
+			return bitflip_count;
+
+		for (j = 0; j < bitflip_count; j++) {
+			if (err_loc[j] < 4096)
+				dat[err_loc[j] >> 3] ^=
+					1 << (err_loc[j] & 7);
+			/* else, not interested to correct ecc */
+		}
 	}
 
-	return totalcount;
+	return bitflip_count;
 }
 
 static int omap_correct_hamming(struct mtd_info *mtd, uint8_t *dat,
@@ -666,7 +652,12 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 	uint8_t *ecc_calc = chip->buffers->ecccalc;
 	uint8_t *ecc_code = chip->buffers->ecccode;
 	uint32_t *eccpos = chip->ecc.layout->eccpos;
-	int stat, i;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	int eccsize = chip->ecc.size;
+	unsigned int max_bitflips = 0;
+	int stat, i, j;
+
 
 	writel(GPMC_ECC_SIZE_CONFIG_ECCSIZE1(0) |
 			GPMC_ECC_SIZE_CONFIG_ECCSIZE0(64),
@@ -706,13 +697,19 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 
 	__omap_calculate_ecc(mtd, buf, ecc_calc, 1);
 
-	stat = omap_correct_bch(mtd, buf, ecc_code, ecc_calc);
-	if (stat < 0)
-		mtd->ecc_stats.failed++;
-	else
-		mtd->ecc_stats.corrected += stat;
+	p = buf;
 
-	return 0;
+	for (i = 0, j = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize, j++) {
+		stat = omap_correct_bch(mtd, p, &ecc_code[i], &ecc_calc[i - j]);
+		if (stat < 0) {
+			mtd->ecc_stats.failed++;
+		} else {
+			mtd->ecc_stats.corrected += stat;
+			max_bitflips = max_t(unsigned int, max_bitflips, stat);
+		}
+	}
+
+	return max_bitflips;
 }
 
 static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
@@ -765,8 +762,8 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 					offset - omap_oobinfo.eccbytes;
 		break;
 	case OMAP_ECC_BCH8_CODE_HW:
-		oinfo->nand.ecc.bytes    = 13 * 4;
-		oinfo->nand.ecc.size     = 512 * 4;
+		oinfo->nand.ecc.bytes    = 13;
+		oinfo->nand.ecc.size     = 512;
 		oinfo->nand.ecc.strength = BCH8_MAX_ERROR;
 		omap_oobinfo.oobfree->offset = offset;
 		omap_oobinfo.oobfree->length = minfo->oobsize -
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
