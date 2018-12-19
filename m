Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZaxJ-0000wF-IW
 for barebox@lists.infradead.org; Wed, 19 Dec 2018 12:28:07 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 19 Dec 2018 13:27:53 +0100
Message-Id: <1545222473-22214-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH for next] mtd: nand: nand_omap_gpmc: Fix GPMC_BCH_RESULT offset
To: barebox@lists.infradead.org

Using BCH rom code mode we start calculating with GPMC_BCH_RESULTx_1.
Fix offset for correct error correction.

Fixes: d4077860c902 ("mtd: nand: omap: unbreak BCH8 support")

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 277e23e57f7d..2dcf7e723b9f 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -676,7 +676,7 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 	p = buf;
 
 	for (i = 0, j = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize, j++) {
-		__omap_calculate_ecc(mtd, &ecc_calc[i - j], j);
+		__omap_calculate_ecc(mtd, &ecc_calc[i - j], j + 1);
 		stat = omap_correct_bch(mtd, p, &ecc_code[i], &ecc_calc[i - j]);
 		if (stat < 0) {
 			mtd->ecc_stats.failed++;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
