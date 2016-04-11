Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1apXHn-00083q-EV
 for barebox@lists.infradead.org; Mon, 11 Apr 2016 08:33:32 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 06054A00324
 for <barebox@lists.infradead.org>; Mon, 11 Apr 2016 10:33:06 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 11 Apr 2016 10:28:24 +0200
Message-Id: <1460363304-1505-2-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1460363304-1505-1-git-send-email-t.remmet@phytec.de>
References: <1460363304-1505-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 2/2] mtd: nand: omap_gpmc: Fix bitflips in empty page
To: barebox@lists.infradead.org

When using BCH8 decoding, bitflips in an empty page are
not checked. This can cause issues if UBI/UBIFS are used.
Extend the omap_correct_bch() function to check for them.

Code is based on linux mainline mtd/nand/omap2.c driver.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 62 ++++++++++++++++++++++++++-------------
 1 file changed, 42 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 1d1de5b..a4e6452 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -87,6 +87,9 @@
 
 #define BCH8_MAX_ERROR	8	/* upto 8 bit correctable */
 
+static const uint8_t bch8_vector[] = {0xf3, 0xdb, 0x14, 0x16, 0x8b, 0xd2,
+		0xbe, 0xcc, 0xac, 0x6b, 0xff, 0x99, 0x7b};
+
 int omap_gpmc_decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_loc);
 
 static const char *ecc_mode_strings[] = {
@@ -294,8 +297,11 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 {
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	int i, j, eccflag, count, totalcount, actual_eccsize;
+	int i, j, eccflag, totalcount, actual_eccsize;
+	const uint8_t *erased_ecc_vec;
 	unsigned int err_loc[8];
+	int bitflip_count;
+	int bch_max_err;
 
 	int eccsteps = oinfo->nand.ecc.steps;
 	int eccsize = oinfo->nand.ecc.bytes;
@@ -304,9 +310,13 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 	case OMAP_ECC_BCH8_CODE_HW:
 		eccsize /= eccsteps;
 		actual_eccsize = eccsize;
+		erased_ecc_vec = bch8_vector;
+		bch_max_err = BCH8_MAX_ERROR;
 		break;
 	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
 		actual_eccsize = eccsize - 1;
+		erased_ecc_vec = bch8_vector;
+		bch_max_err = BCH8_MAX_ERROR;
 		break;
 	default:
 		dev_err(oinfo->pdev, "invalid driver configuration\n");
@@ -316,37 +326,49 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 	totalcount = 0;
 
 	for (i = 0; i < eccsteps; i++) {
-		/* check if any ecc error */
+		bool is_error_reported = false;
+		bitflip_count = 0;
 		eccflag = 0;
+
+		/* check for any ecc error */
 		for (j = 0; (j < actual_eccsize) && (eccflag == 0); j++) {
-			if (calc_ecc[j] != 0)
+			if (calc_ecc[j] != 0) {
 				eccflag = 1;
+				break;
+			}
 		}
 
 		if (eccflag == 1) {
-			eccflag = 0;
-			for (j = 0; (j < actual_eccsize) &&
-					(eccflag == 0); j++)
-				if (read_ecc[j] != 0xFF)
-					eccflag = 1;
+			if (memcmp(calc_ecc, erased_ecc_vec, actual_eccsize) == 0) {
+				/*
+				 * calc_ecc[] matches pattern for ECC
+				 * (all 0xff) so this is definitely
+				 * an erased-page
+				 */
+			} else {
+				bitflip_count = nand_check_erased_ecc_chunk(
+						dat, oinfo->nand.ecc.size, read_ecc,
+						eccsize, NULL, 0, bch_max_err);
+				if (bitflip_count < 0)
+					is_error_reported = true;
+			}
 		}
 
-		count = 0;
-		if (eccflag == 1) {
-			count = omap_gpmc_decode_bch(1, calc_ecc, err_loc);
-			if (count < 0)
-				return count;
-			else
-				totalcount += count;
-		}
+		if (is_error_reported) {
+			bitflip_count = omap_gpmc_decode_bch(1,
+					calc_ecc, err_loc);
+			if (bitflip_count < 0)
+				return bitflip_count;
 
-		for (j = 0; j < count; j++) {
-			if (err_loc[j] < 4096)
-				dat[err_loc[j] >> 3] ^=
+			for (j = 0; j < bitflip_count; j++) {
+				if (err_loc[j] < 4096)
+					dat[err_loc[j] >> 3] ^=
 						1 << (err_loc[j] & 7);
-			/* else, not interested to correct ecc */
+				/* else, not interested to correct ecc */
+			}
 		}
 
+		totalcount += bitflip_count;
 		calc_ecc = calc_ecc + actual_eccsize;
 		read_ecc = read_ecc + eccsize;
 		dat += 512;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
