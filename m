Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dJFnS-0001DQ-6G
 for barebox@lists.infradead.org; Fri, 09 Jun 2017 09:01:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Jun 2017 11:01:05 +0200
Message-Id: <20170609090106.10933-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mtd: nand_omap_gpmc: Fix ecc size
To: Barebox List <barebox@lists.infradead.org>

The ECC size for BCH correction is always 512 byte. Correct the ecc.size
for the OMAP_ECC_BCH8_CODE_HW mode from 2048 to 512. This change will
let the framework iterate over the 4 ecc steps and we no longer	need
special cases in omap_correct_bch().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 27 +++++++++++++++++----------
 1 file changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index e18ce6358a..fa838f39a4 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -303,8 +303,7 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 	int bitflip_count;
 	int bch_max_err;
 
-	int eccsteps = (nand->ecc.mode == NAND_ECC_HW) &&
-			(nand->ecc.size == 2048) ? 4 : 1;
+	int eccsteps = 1;
 	int eccsize = oinfo->nand.ecc.bytes;
 
 	switch (oinfo->ecc_mode) {
@@ -667,6 +666,10 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 	uint8_t *ecc_code = chip->buffers->ecccode;
 	uint32_t *eccpos = chip->ecc.layout->eccpos;
 	int stat, i;
+	unsigned int max_bitflips = 0;
+	int eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
 
 	writel(GPMC_ECC_SIZE_CONFIG_ECCSIZE1(0) |
 			GPMC_ECC_SIZE_CONFIG_ECCSIZE0(64),
@@ -706,13 +709,17 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 
 	__omap_calculate_ecc(mtd, buf, ecc_calc, 1);
 
-	stat = omap_correct_bch(mtd, buf, ecc_code, ecc_calc);
-	if (stat < 0)
-		mtd->ecc_stats.failed++;
-	else
-		mtd->ecc_stats.corrected += stat;
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+		stat = omap_correct_bch(mtd, buf, ecc_code, ecc_calc);
+		if (stat < 0) {
+			mtd->ecc_stats.failed++;
+		} else {
+			mtd->ecc_stats.corrected += stat;
+			max_bitflips = max_t(unsigned int, max_bitflips, stat);
+		}
+	}
 
-	return 0;
+	return max_bitflips;
 }
 
 static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
@@ -765,8 +772,8 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
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
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
