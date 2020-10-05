Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPNBk-0005dw-FB
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 09:53:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Oct 2020 11:53:42 +0200
Message-Id: <20201005095346.27957-4-s.hauer@pengutronix.de>
In-Reply-To: <20201005095346.27957-1-s.hauer@pengutronix.de>
References: <20201005095346.27957-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] remoteproc: imx: use function hooks in SoC data
To: Barebox List <barebox@lists.infradead.org>

Replace the register offset/masks/values in driver data with function
hooks to prepare the driver for adding SoCs that do not fit into this
one-register-write scheme.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/remoteproc/imx_rproc.c | 79 +++++++++++++++++++++-------------
 1 file changed, 48 insertions(+), 31 deletions(-)

diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index fb27d25d8e..86eba4fcd4 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -43,9 +43,6 @@
 #define IMX6SX_SW_M4C_NON_SCLR_RST	BIT(4)
 #define IMX6SX_SW_M4C_RST		BIT(3)
 
-#define IMX6SX_M4_START			(IMX6SX_ENABLE_M4 | IMX6SX_SW_M4P_RST \
-					 | IMX6SX_SW_M4C_RST)
-#define IMX6SX_M4_STOP			IMX6SX_SW_M4C_NON_SCLR_RST
 #define IMX6SX_M4_RST_MASK		(IMX6SX_ENABLE_M4 | IMX6SX_SW_M4P_RST \
 					 | IMX6SX_SW_M4C_NON_SCLR_RST \
 					 | IMX6SX_SW_M4C_RST)
@@ -77,12 +74,10 @@ struct imx_rproc_att {
 };
 
 struct imx_rproc_dcfg {
-	u32				src_reg;
-	u32				src_mask;
-	u32				src_start;
-	u32				src_stop;
 	const struct imx_rproc_att	*att;
 	size_t				att_size;
+	int (*rproc_start)(struct rproc *rproc);
+	int (*rproc_stop)(struct rproc *rproc);
 };
 
 struct imx_rproc {
@@ -144,52 +139,74 @@ static const struct imx_rproc_att imx_rproc_att_imx7d[] = {
 	{ 0x80000000, 0x80000000, 0x60000000, 0 },
 };
 
+static int imx6sx_rproc_start(struct rproc *rproc)
+{
+	struct imx_rproc *priv = rproc->priv;
+
+	return regmap_update_bits(priv->regmap,
+			IMX6SX_SRC_SCR,
+			IMX6SX_M4_RST_MASK,
+			IMX6SX_ENABLE_M4 | IMX6SX_SW_M4P_RST | IMX6SX_SW_M4C_RST);
+}
+
+static int imx6sx_rproc_stop(struct rproc *rproc)
+{
+	struct imx_rproc *priv = rproc->priv;
+
+	return regmap_update_bits(priv->regmap,
+			IMX6SX_SRC_SCR,
+			IMX6SX_M4_RST_MASK,
+			IMX6SX_SW_M4C_NON_SCLR_RST);
+}
+
+static int imx7d_rproc_start(struct rproc *rproc)
+{
+	struct imx_rproc *priv = rproc->priv;
+
+	return regmap_update_bits(priv->regmap,
+			IMX7D_SRC_SCR,
+			IMX7D_M4_RST_MASK,
+			IMX7D_M4_START);
+}
+
+static int imx7d_rproc_stop(struct rproc *rproc)
+{
+	struct imx_rproc *priv = rproc->priv;
+
+	return regmap_update_bits(priv->regmap,
+			IMX7D_SRC_SCR,
+			IMX7D_M4_RST_MASK,
+			IMX7D_M4_STOP);
+}
+
 static const struct imx_rproc_dcfg imx_rproc_cfg_imx6sx = {
-	.src_reg	= IMX6SX_SRC_SCR,
-	.src_mask	= IMX6SX_M4_RST_MASK,
-	.src_start	= IMX6SX_M4_START,
-	.src_stop	= IMX6SX_M4_STOP,
 	.att		= imx_rproc_att_imx6sx,
 	.att_size	= ARRAY_SIZE(imx_rproc_att_imx6sx),
+	.rproc_start	= imx6sx_rproc_start,
+	.rproc_stop	= imx6sx_rproc_stop,
 };
 
 static const struct imx_rproc_dcfg imx_rproc_cfg_imx7d = {
-	.src_reg	= IMX7D_SRC_SCR,
-	.src_mask	= IMX7D_M4_RST_MASK,
-	.src_start	= IMX7D_M4_START,
-	.src_stop	= IMX7D_M4_STOP,
 	.att		= imx_rproc_att_imx7d,
 	.att_size	= ARRAY_SIZE(imx_rproc_att_imx7d),
+	.rproc_start	= imx7d_rproc_start,
+	.rproc_stop	= imx7d_rproc_stop,
 };
 
 static int imx_rproc_start(struct rproc *rproc)
 {
 	struct imx_rproc *priv = rproc->priv;
 	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
-	struct device_d *dev = priv->dev;
-	int ret;
-
-	ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
-				 dcfg->src_mask, dcfg->src_start);
-	if (ret)
-		dev_err(dev, "Failed to enable M4!\n");
 
-	return ret;
+	return dcfg->rproc_start(rproc);
 }
 
 static int imx_rproc_stop(struct rproc *rproc)
 {
 	struct imx_rproc *priv = rproc->priv;
 	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
-	struct device_d *dev = priv->dev;
-	int ret;
-
-	ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
-				 dcfg->src_mask, dcfg->src_stop);
-	if (ret)
-		dev_err(dev, "Failed to stop M4!\n");
 
-	return ret;
+	return dcfg->rproc_stop(rproc);
 }
 
 static int imx_rproc_da_to_sys(struct imx_rproc *priv, u64 da,
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
