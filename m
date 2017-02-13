Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdDWV-0001f4-1C
 for barebox@lists.infradead.org; Mon, 13 Feb 2017 10:06:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Feb 2017 11:05:56 +0100
Message-Id: <20170213100556.9340-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: iim: Only register actually equipped fuses
To: Barebox List <barebox@lists.infradead.org>

The IIM unit in defferent i.MX SoCs is always the same, but the
number of actually equipped fuses differs between the SoCs.
Reading nonexistent fuses oopses, so only register the fuses
we can actually read.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 32 +++++++++++++++++++++++++++++---
 1 file changed, 29 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 6addfed696..d4794cbac8 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -62,6 +62,7 @@ struct iim_priv {
 
 struct imx_iim_drvdata {
 	void (*supply)(int enable);
+	char nregs[8];
 };
 
 static struct iim_priv *imx_iim;
@@ -314,7 +315,7 @@ static struct regmap_bus imx_iim_regmap_bus = {
 	.reg_read = imx_iim_reg_read,
 };
 
-static int imx_iim_add_bank(struct iim_priv *iim, int num)
+static int imx_iim_add_bank(struct iim_priv *iim, int num, int nregs)
 {
 	struct iim_bank *bank;
 	char *name;
@@ -331,7 +332,7 @@ static int imx_iim_add_bank(struct iim_priv *iim, int num)
 	bank->map_config.reg_bits = 8,
 	bank->map_config.val_bits = 8,
 	bank->map_config.reg_stride = 1,
-	bank->map_config.max_register = 31,
+	bank->map_config.max_register = (nregs - 1),
 	bank->map_config.name = xasprintf("bank%d", num);
 
 	bank->map = regmap_init(&iim->dev, &imx_iim_regmap_bus, bank, &bank->map_config);
@@ -459,6 +460,7 @@ static int imx_iim_probe(struct device_d *dev)
 	struct iim_priv *iim;
 	int i, ret;
 	struct imx_iim_drvdata *drvdata = NULL;
+	char *nregs = NULL;
 
 	if (imx_iim)
 		return -EBUSY;
@@ -486,8 +488,16 @@ static int imx_iim_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	iim->base = IOMEM(iores->start);
 
+	if (drvdata && drvdata->nregs[0])
+		nregs = drvdata->nregs;
+
 	for (i = 0; i < IIM_NUM_BANKS; i++) {
-		ret = imx_iim_add_bank(iim, i);
+		int n = nregs ? nregs[i] : 32;
+
+		if (!n)
+			continue;
+
+		ret = imx_iim_add_bank(iim, i, n);
 		if (ret)
 			return ret;
 	}
@@ -529,14 +539,21 @@ static void imx53_iim_supply(int enable)
 }
 
 static struct imx_iim_drvdata imx27_drvdata = {
+	.nregs = { 32, 32 },
+};
+
+static struct imx_iim_drvdata imx25_imx31_imx35_drvdata = {
+	.nregs = { 32, 32, 32 },
 };
 
 static struct imx_iim_drvdata imx51_drvdata = {
 	.supply = imx51_iim_supply,
+	.nregs = { 32, 32, 32, 32 },
 };
 
 static struct imx_iim_drvdata imx53_drvdata = {
 	.supply = imx53_iim_supply,
+	.nregs = { 32, 32, 32, 32, 16 },
 };
 
 static __maybe_unused struct of_device_id imx_iim_dt_ids[] = {
@@ -547,9 +564,18 @@ static __maybe_unused struct of_device_id imx_iim_dt_ids[] = {
 		.compatible = "fsl,imx51-iim",
 		.data = &imx51_drvdata,
 	}, {
+		.compatible = "fsl,imx35-iim",
+		.data = &imx25_imx31_imx35_drvdata,
+	}, {
+		.compatible = "fsl,imx31-iim",
+		.data = &imx25_imx31_imx35_drvdata,
+	}, {
 		.compatible = "fsl,imx27-iim",
 		.data = &imx27_drvdata,
 	}, {
+		.compatible = "fsl,imx25-iim",
+		.data = &imx25_imx31_imx35_drvdata,
+	}, {
 		/* sentinel */
 	}
 };
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
