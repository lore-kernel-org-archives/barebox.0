Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RNlJY-0007Lo-7z
 for barebox@lists.infradead.org; Tue, 08 Nov 2011 13:02:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2011 14:01:46 +0100
Message-Id: <1320757313-12568-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1320757313-12568-1-git-send-email-s.hauer@pengutronix.de>
References: <1320757313-12568-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/10] mtd nand omap: factor out hamming correct function
To: barebox@lists.infradead.org

To be consistent also factor out the hamming correct function
and also safe an indention level.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |   80 +++++++++++++++++++++----------------
 1 files changed, 45 insertions(+), 35 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 1b5bfaf..0713b64 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -397,6 +397,50 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 	return 0;
 }
 
+static int omap_correct_hamming(struct mtd_info *mtd, uint8_t *dat,
+			     uint8_t *read_ecc, uint8_t *calc_ecc)
+{
+	unsigned int orig_ecc, new_ecc, res, hm;
+	unsigned short parity_bits, byte;
+	unsigned char bit;
+	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
+	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
+
+	if (read_ecc[0] == 0xff && read_ecc[1] == 0xff &&
+			read_ecc[2] == 0xff && calc_ecc[0] == 0x0 &&
+			calc_ecc[1] == 0x0 && calc_ecc[0] == 0x0)
+		return 0;
+
+	/* Regenerate the orginal ECC */
+	orig_ecc = gen_true_ecc(read_ecc);
+	new_ecc = gen_true_ecc(calc_ecc);
+	/* Get the XOR of real ecc */
+	res = orig_ecc ^ new_ecc;
+	if (res) {
+		/* Get the hamming width */
+		hm = hweight32(res);
+		/* Single bit errors can be corrected! */
+		if (hm == oinfo->ecc_parity_pairs) {
+			/* Correctable data! */
+			parity_bits = res >> 16;
+			bit = (parity_bits & 0x7);
+			byte = (parity_bits >> 3) & 0x1FF;
+			/* Flip the bit to correct */
+			dat[byte] ^= (0x1 << bit);
+		} else if (hm == 1) {
+			printf("Ecc is wrong\n");
+			/* ECC itself is corrupted */
+			return 2;
+		} else {
+			printf("bad compare! failed\n");
+			/* detected 2 bit error */
+			return -1;
+		}
+	}
+
+	return 0;
+}
+
 /**
  * @brief Compares the ecc read from nand spare area with ECC
  * registers values and corrects one bit error if it has occured
@@ -414,9 +458,6 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 			     uint8_t *read_ecc, uint8_t *calc_ecc)
 {
-	unsigned int orig_ecc, new_ecc, res, hm;
-	unsigned short parity_bits, byte;
-	unsigned char bit;
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
 
@@ -426,38 +467,7 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 
 	switch (oinfo->ecc_mode) {
 	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
-		if (read_ecc[0] == 0xff && read_ecc[1] == 0xff &&
-				read_ecc[2] == 0xff && calc_ecc[0] == 0x0 &&
-				calc_ecc[1] == 0x0 && calc_ecc[0] == 0x0)
-			break;
-
-		/* Regenerate the orginal ECC */
-		orig_ecc = gen_true_ecc(read_ecc);
-		new_ecc = gen_true_ecc(calc_ecc);
-		/* Get the XOR of real ecc */
-		res = orig_ecc ^ new_ecc;
-		if (res) {
-			/* Get the hamming width */
-			hm = hweight32(res);
-			/* Single bit errors can be corrected! */
-			if (hm == oinfo->ecc_parity_pairs) {
-				/* Correctable data! */
-				parity_bits = res >> 16;
-				bit = (parity_bits & 0x7);
-				byte = (parity_bits >> 3) & 0x1FF;
-				/* Flip the bit to correct */
-				dat[byte] ^= (0x1 << bit);
-			} else if (hm == 1) {
-				printf("Ecc is wrong\n");
-				/* ECC itself is corrupted */
-				return 2;
-			} else {
-				printf("bad compare! failed\n");
-				/* detected 2 bit error */
-				return -1;
-			}
-		}
-		break;
+		return omap_correct_hamming(mtd, dat, read_ecc, calc_ecc);
 	case OMAP_ECC_BCH4_CODE_HW:
 	case OMAP_ECC_BCH8_CODE_HW:
 	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
