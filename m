Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHg-00005i-Mw
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:16 +0100
Message-Id: <20181214141730.26181-10-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/23] mtd: nand: omap: remove unused function argument
To: Barebox List <barebox@lists.infradead.org>

__omap_calculate_ecc doesn't use the provided buffer argument, so remove
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 9b92f179b1..91f5682e9e 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -228,8 +228,8 @@ static unsigned int gen_true_ecc(u8 *ecc_buf)
 	    ((ecc_buf[2] & 0x0F) << 8);
 }
 
-static int __omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
-			      uint8_t *ecc_code, int sblock)
+static int __omap_calculate_ecc(struct mtd_info *mtd, uint8_t *ecc_code,
+				int sblock)
 {
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
@@ -288,7 +288,7 @@ static int __omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
 static int omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
 			      uint8_t *ecc_code)
 {
-	return __omap_calculate_ecc(mtd, dat, ecc_code, 0);
+	return __omap_calculate_ecc(mtd, ecc_code, 0);
 }
 
 static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
@@ -436,7 +436,7 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 		 * but before it has read the oob data. Do it again,
 		 * this time with oob data.
 		 */
-		__omap_calculate_ecc(mtd, dat, calc_ecc, 0);
+		__omap_calculate_ecc(mtd, calc_ecc, 0);
 		return omap_correct_bch(mtd, dat, read_ecc, calc_ecc);
 	default:
 		return -EINVAL;
@@ -691,7 +691,7 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 	for (i = 0; i < chip->ecc.total; i++)
 		ecc_code[i] = chip->oob_poi[eccpos[i]];
 
-	__omap_calculate_ecc(mtd, buf, ecc_calc, 1);
+	__omap_calculate_ecc(mtd, ecc_calc, 1);
 
 	p = buf;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
