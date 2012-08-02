Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwsMq-0002Ol-Ew
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 10:11:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Aug 2012 12:10:16 +0200
Message-Id: <1343902216-13262-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1343902216-13262-1-git-send-email-s.hauer@pengutronix.de>
References: <1343902216-13262-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] mtd OMAP NAND: implement buswidth autodetection support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |   44 ++++++++++++++++++++++++++-----------
 1 file changed, 31 insertions(+), 13 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 39b4dd9..fa6074f 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -879,6 +879,20 @@ static int omap_gpmc_eccmode_set(struct device_d *dev, struct param_d *param, co
 	return omap_gpmc_eccmode(oinfo, i);
 }
 
+static int gpmc_set_buswidth(struct mtd_info *mtd, struct nand_chip *chip, int buswidth)
+{
+	struct gpmc_nand_info *oinfo = chip->priv;
+
+	if (buswidth == NAND_BUSWIDTH_16)
+		oinfo->pdata->nand_cfg->cfg[0] |= 0x00001000;
+	else
+		oinfo->pdata->nand_cfg->cfg[0] &= ~0x00001000;
+
+	gpmc_cs_config(oinfo->pdata->cs, oinfo->pdata->nand_cfg);
+
+	return 0;
+}
+
 /**
  * @brief nand device probe.
  *
@@ -934,10 +948,18 @@ static int gpmc_nand_probe(struct device_d *pdev)
 		oinfo->gpmc_base, oinfo->gpmc_command, oinfo->gpmc_address,
 		oinfo->gpmc_data, cs_base);
 
-	/* If we are 16 bit dev, our gpmc config tells us that */
-	if ((readl(cs_base) & 0x3000) == 0x1000) {
-		dev_dbg(pdev, "16 bit dev\n");
+	switch (pdata->device_width) {
+	case 0:
+		printk("probe buswidth\n");
+		nand->options |= NAND_BUSWIDTH_AUTO;
+		break;
+	case 8:
+		break;
+	case 16:
 		nand->options |= NAND_BUSWIDTH_16;
+		break;
+	default:
+		return -EINVAL;
 	}
 
 	/* Same data register for in and out */
@@ -977,6 +999,8 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	nand->options |= NAND_OWN_BUFFERS;
 	nand->buffers = xzalloc(sizeof(*nand->buffers));
 
+	nand->set_buswidth = gpmc_set_buswidth;
+
 	/* State my controller */
 	nand->controller = &oinfo->controller;
 
@@ -1004,18 +1028,12 @@ static int gpmc_nand_probe(struct device_d *pdev)
 		goto out_release_mem;
 	}
 
-	switch (pdata->device_width) {
-	case 8:
-		lsp = &ecc_sp_x8;
-		llp = &ecc_lp_x8;
-		break;
-	case 16:
+	if (nand->options & NAND_BUSWIDTH_16) {
 		lsp = &ecc_sp_x16;
 		llp = &ecc_lp_x16;
-		break;
-	default:
-		err = -EINVAL;
-		goto out_release_mem;
+	} else {
+		lsp = &ecc_sp_x8;
+		llp = &ecc_lp_x8;
 	}
 
 	switch (minfo->writesize) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
