Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OhM9m-00056H-1v
	for barebox@lists.infradead.org; Fri, 06 Aug 2010 12:36:17 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <mgr@pengutronix.de>) id 1OhM9g-00012a-Rp
	for barebox@lists.infradead.org; Fri, 06 Aug 2010 14:36:08 +0200
Received: from mgr by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <mgr@pengutronix.de>) id 1OhM9g-0001RR-Qi
	for barebox@lists.infradead.org; Fri, 06 Aug 2010 14:36:08 +0200
Date: Fri, 6 Aug 2010 14:36:08 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Message-ID: <20100806123608.GA536@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] omap nand: bugfix configure ecc order
To: barebox@lists.infradead.org

This repairs a bug which came with patch "0cb00c1 omap nand: cleanup"
We first have to set ecc.layout before we can use it and should
do the nand_scan_tail after we set the ecc.mode.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |   42 ++++++++++++++++++------------------
 1 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 1363808..aef6820 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -498,24 +498,6 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	/* State my controller */
 	nand->controller = &oinfo->controller;
 
-	if (pdata->plat_options & NAND_HWECC_ENABLE) {
-		/* Program how many columns we expect+
-		 * enable the cs we want and enable the engine
-		 */
-		oinfo->ecc_config = (pdata->cs << 1) |
-		    ((nand->options & NAND_BUSWIDTH_16) ?
-		     (0x1 << 7) : 0x0) | 0x1;
-		nand->ecc.hwctl = omap_enable_hwecc;
-		nand->ecc.calculate = omap_calculate_ecc;
-		nand->ecc.correct = omap_correct_data;
-		nand->ecc.mode = NAND_ECC_HW;
-		nand->ecc.size = 512;
-		nand->ecc.bytes = 3;
-		nand->ecc.steps = nand->ecc.layout->eccbytes / nand->ecc.bytes;
-		oinfo->ecc_parity_pairs = 12;
-	} else
-		nand->ecc.mode = NAND_ECC_SOFT;
-
 	/* All information is ready.. now lets call setup, if present */
 	if (pdata->nand_setup) {
 		err = pdata->nand_setup(pdata);
@@ -566,15 +548,33 @@ static int gpmc_nand_probe(struct device_d *pdev)
 		goto out_release_mem;
 	}
 
+	if (pdata->plat_options & NAND_HWECC_ENABLE)
+		nand->ecc.layout = layout;
+
+	if (pdata->plat_options & NAND_HWECC_ENABLE) {
+		/* Program how many columns we expect+
+		 * enable the cs we want and enable the engine
+		 */
+		oinfo->ecc_config = (pdata->cs << 1) |
+		    ((nand->options & NAND_BUSWIDTH_16) ?
+		     (0x1 << 7) : 0x0) | 0x1;
+		nand->ecc.hwctl = omap_enable_hwecc;
+		nand->ecc.calculate = omap_calculate_ecc;
+		nand->ecc.correct = omap_correct_data;
+		nand->ecc.mode = NAND_ECC_HW;
+		nand->ecc.size = 512;
+		nand->ecc.bytes = 3;
+		nand->ecc.steps = nand->ecc.layout->eccbytes / nand->ecc.bytes;
+		oinfo->ecc_parity_pairs = 12;
+	} else
+		nand->ecc.mode = NAND_ECC_SOFT;
+
 	/* second phase scan */
 	if (nand_scan_tail(minfo)) {
 		err = -ENXIO;
 		goto out_release_mem;
 	}
 
-	if (pdata->plat_options & NAND_HWECC_ENABLE)
-		nand->ecc.layout = layout;
-
 	/* We are all set to register with the system now! */
 	err = add_mtd_device(minfo);
 	if (err) {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
