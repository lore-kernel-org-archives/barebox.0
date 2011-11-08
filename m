Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RNlJY-0007Lj-5I
 for barebox@lists.infradead.org; Tue, 08 Nov 2011 13:02:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2011 14:01:51 +0100
Message-Id: <1320757313-12568-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] mtd nand omap: factor out an internal
 __omap_calculate_ecc function
To: barebox@lists.infradead.org

We can't use the ECC_RESULTx_0 register set for manual mode which
we'll need in the next patch. So factor out an internal function
which makes the register set to use configurable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |   14 ++++++++++----
 1 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index e3c77ec..e6555bb 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -291,8 +291,8 @@ static unsigned int gen_true_ecc(u8 *ecc_buf)
 	    ((ecc_buf[2] & 0x0F) << 8);
 }
 
-static int omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
-			      uint8_t *ecc_code)
+static int __omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
+			      uint8_t *ecc_code, int sblock)
 {
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
@@ -313,7 +313,7 @@ static int omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
 			 * Reading HW ECC_BCH_Results
 			 * 0x240-0x24C, 0x250-0x25C, 0x260-0x26C, 0x270-0x27C
 			 */
-			reg =  GPMC_ECC_BCH_RESULT_0 + (0x10 * i);
+			reg =  GPMC_ECC_BCH_RESULT_0 + (0x10 * (i + sblock));
 			val1 = readl(oinfo->gpmc_base + reg);
 			val2 = readl(oinfo->gpmc_base + reg + 4);
 			if (ecc_size == 8) {
@@ -351,6 +351,12 @@ static int omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
 	return 0;
 }
 
+static int omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
+			      uint8_t *ecc_code)
+{
+	return __omap_calculate_ecc(mtd, dat, ecc_code, 0);
+}
+
 static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 			     uint8_t *read_ecc, uint8_t *calc_ecc)
 {
@@ -489,7 +495,7 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 		 * but before it has read the oob data. Do it again,
 		 * this time with oob data.
 		 */
-		omap_calculate_ecc(mtd, dat, calc_ecc);
+		__omap_calculate_ecc(mtd, dat, calc_ecc, 0);
 		return omap_correct_bch(mtd, dat, read_ecc, calc_ecc);
 	default:
 		return -EINVAL;
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
