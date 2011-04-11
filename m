Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9HpA-0005wM-9q
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:10:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:10:33 +0200
Message-Id: <1302531036-27906-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302531036-27906-1-git-send-email-s.hauer@pengutronix.de>
References: <1302531036-27906-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] nand omap: turn debug messages into dev_dbg
To: barebox@lists.infradead.org

The information from the probe function is useful for developers
only, so turn them into dev_dbg to safe binary space.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |   16 ++++++++--------
 1 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 74ef1ac..74f2da6 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -682,13 +682,13 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	gpmcnand_dbg("pdev=%x", (unsigned int)pdev);
 	pdata = (struct gpmc_nand_platform_data *)pdev->platform_data;
 	if (pdata == NULL) {
-		gpmcnand_err("platform data missing\n");
+		dev_dbg(pdev, "platform data missing\n");
 		return -ENODEV;
 	}
 
 	oinfo = calloc(1, sizeof(struct gpmc_nand_info));
 	if (!oinfo) {
-		gpmcnand_err("oinfo alloc failed!\n");
+		dev_dbg(pdev, "oinfo alloc failed!\n");
 		return -ENOMEM;
 	}
 
@@ -705,7 +705,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	minfo->priv = (void *)nand;
 
 	if (pdata->cs >= GPMC_NUM_CS) {
-		gpmcnand_err("Invalid CS!\n");
+		dev_dbg(pdev, "Invalid CS!\n");
 		err = -EINVAL;
 		goto out_release_mem;
 	}
@@ -729,7 +729,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 
 	/* If we are 16 bit dev, our gpmc config tells us that */
 	if ((readl(cs_base) & 0x3000) == 0x1000) {
-		debug("16 bit dev\n");
+		dev_dbg(pdev, "16 bit dev\n");
 		nand->options |= NAND_BUSWIDTH_16;
 	}
 
@@ -744,7 +744,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	 * until you get a failure or success
 	 */
 	if (pdata->wait_mon_pin > 4) {
-		gpmcnand_err("Invalid wait monitoring pin\n");
+		dev_dbg(pdev, "Invalid wait monitoring pin\n");
 		err = -EINVAL;
 		goto out_release_mem;
 	}
@@ -774,7 +774,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	if (pdata->nand_setup) {
 		err = pdata->nand_setup(pdata);
 		if (err) {
-			gpmcnand_err("pdataform setup failed\n");
+			dev_dbg(pdev, "pdataform setup failed\n");
 			goto out_release_mem;
 		}
 	}
@@ -826,7 +826,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	/* We are all set to register with the system now! */
 	err = add_mtd_device(minfo);
 	if (err) {
-		gpmcnand_err("device registration failed\n");
+		dev_dbg(pdev, "device registration failed\n");
 		goto out_release_mem;
 	}
 
@@ -838,7 +838,7 @@ out_release_mem:
 	if (oinfo)
 		free(oinfo);
 
-	gpmcnand_err("Failed!!\n");
+	dev_dbg(pdev, "Failed!!\n");
 	return err;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
