Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs35-0005xO-0d
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:59 +0100
Message-Id: <1385131741-28280-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
References: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/17] mtd: omap gpmc: Use dev_add_param_enum
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 36 ++++++++++--------------------------
 1 file changed, 10 insertions(+), 26 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 448e7b9..3053a8e 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -90,7 +90,7 @@
 
 int omap_gpmc_decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_loc);
 
-static char *ecc_mode_strings[] = {
+static const char *ecc_mode_strings[] = {
 	"software",
 	"hamming_hw_romcode",
 	"bch4_hw",
@@ -861,29 +861,11 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 	return 0;
 }
 
-static int omap_gpmc_eccmode_set(struct device_d *dev, struct param_d *param, const char *val)
+static int omap_gpmc_eccmode_set(struct param_d *param, void *priv)
 {
-	struct gpmc_nand_info *oinfo = dev->priv;
-	int i;
-
-	if (!val)
-		return 0;
-
-	for (i = 0; i < ARRAY_SIZE(ecc_mode_strings); i++)
-		if (!strcmp(ecc_mode_strings[i], val))
-			break;
+	struct gpmc_nand_info *oinfo = priv;
 
-	if (i == ARRAY_SIZE(ecc_mode_strings)) {
-		dev_err(dev, "invalid ecc mode '%s'\n", val);
-		printf("valid modes:\n");
-		for (i = 0; i < ARRAY_SIZE(ecc_mode_strings); i++)
-			printf("%s\n", ecc_mode_strings[i]);
-		return -EINVAL;
-	}
-
-	dev_param_set_generic(dev, param, ecc_mode_strings[i]);
-
-	return omap_gpmc_eccmode(oinfo, i);
+	return omap_gpmc_eccmode(oinfo, oinfo->ecc_mode);
 }
 
 static int gpmc_set_buswidth(struct nand_chip *chip, int buswidth)
@@ -1062,11 +1044,13 @@ static int gpmc_nand_probe(struct device_d *pdev)
 
 	nand->options |= NAND_SKIP_BBTSCAN;
 
-	dev_add_param(pdev, "eccmode", omap_gpmc_eccmode_set, NULL, 0);
-	dev_set_param(pdev, "eccmode", ecc_mode_strings[pdata->ecc_mode]);
+	oinfo->ecc_mode = pdata->ecc_mode;
+
+	dev_add_param_enum(pdev, "eccmode",
+			omap_gpmc_eccmode_set, NULL, (int *)&oinfo->ecc_mode,
+			ecc_mode_strings, ARRAY_SIZE(ecc_mode_strings), oinfo);
 
-	if (! IS_ENABLED(CONFIG_PARAMETER))
-		omap_gpmc_eccmode(oinfo, pdata->ecc_mode);
+	omap_gpmc_eccmode(oinfo, oinfo->ecc_mode);
 
 	/* We are all set to register with the system now! */
 	err = add_mtd_nand_device(minfo, "nand");
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
