Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xR-0003Yd-Q5
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:47 +0100
Message-Id: <20201106133900.2656-14-s.hauer@pengutronix.de>
In-Reply-To: <20201106133900.2656-1-s.hauer@pengutronix.de>
References: <20201106133900.2656-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/26] mtd: nand: omap_gpmc: Drop unused variable
To: Barebox List <barebox@lists.infradead.org>

nand->controller is set but never used. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 3799406769..d10ba5a8a8 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -106,7 +106,6 @@ static const char *ecc_mode_strings[] = {
 
 /** internal structure maintained for nand information */
 struct gpmc_nand_info {
-	struct nand_hw_control controller;
 	struct device_d *pdev;
 	struct gpmc_nand_platform_data *pdata;
 	struct nand_chip nand;
@@ -1266,9 +1265,6 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	nand->options |= NAND_OWN_BUFFERS;
 	nand->buffers = xzalloc(sizeof(*nand->buffers));
 
-	/* State my controller */
-	nand->controller = &oinfo->controller;
-
 	/* All information is ready.. now lets call setup, if present */
 	if (pdata->nand_setup) {
 		err = pdata->nand_setup(pdata);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
