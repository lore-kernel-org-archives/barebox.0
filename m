Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dIGk1-0004xc-Ma
 for barebox@lists.infradead.org; Tue, 06 Jun 2017 15:49:59 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C8071A00243
 for <barebox@lists.infradead.org>; Tue,  6 Jun 2017 17:50:34 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Tue, 6 Jun 2017 17:49:33 +0200
Message-Id: <1496764173-29493-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH] mtd: nand: omap: Return corrected bits for BCH
To: barebox@lists.infradead.org

If using ECC mode OMAP_ECC_HAMMING_CODE_HW_ROMCODE (which is default for
all AM335x with DTS support) the page_read function won't return the
corrected bitflips.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index e18ce63..05c8486 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -707,10 +707,12 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 	__omap_calculate_ecc(mtd, buf, ecc_calc, 1);
 
 	stat = omap_correct_bch(mtd, buf, ecc_code, ecc_calc);
-	if (stat < 0)
+	if (stat < 0) {
 		mtd->ecc_stats.failed++;
-	else
+	} else {
 		mtd->ecc_stats.corrected += stat;
+		return stat;
+	}
 
 	return 0;
 }
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
