Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPNBk-0005dt-F7
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 09:53:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Oct 2020 11:53:43 +0200
Message-Id: <20201005095346.27957-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] remoteproc: imx: Add i.MX8M support
To: Barebox List <barebox@lists.infradead.org>

This adds support for the different i.MX8M SoCs to the i.MX rproc
driver. i.MX8MM and i.MX8MQ can be handled like the i.MX7D with a
different address space map. i.MX8MN and i.MX8MP are different though.
Unlike the other SoCs which have a Cortex-M4 Coprocessor these have
a Cortex-M7 Coprocessor. On these SoCs the TCM is only accessible when
the Coprocessor is already started. A bit in the IOMUX GPR register
space is needed to hold the CPU in wait mode until we uploaded the code
to the TCM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/remoteproc/imx_rproc.c | 126 +++++++++++++++++++++++++++++++++
 1 file changed, 126 insertions(+)

diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index 86eba4fcd4..726e16d6d4 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -76,6 +76,7 @@ struct imx_rproc_att {
 struct imx_rproc_dcfg {
 	const struct imx_rproc_att	*att;
 	size_t				att_size;
+	int (*rproc_init)(struct rproc *rproc);
 	int (*rproc_start)(struct rproc *rproc);
 	int (*rproc_stop)(struct rproc *rproc);
 };
@@ -83,6 +84,7 @@ struct imx_rproc_dcfg {
 struct imx_rproc {
 	struct device_d			*dev;
 	struct regmap			*regmap;
+	struct regmap			*gpr;
 	struct rproc			*rproc;
 	const struct imx_rproc_dcfg	*dcfg;
 	struct imx_rproc_mem		mem[IMX7D_RPROC_MEM_MAX];
@@ -139,6 +141,39 @@ static const struct imx_rproc_att imx_rproc_att_imx7d[] = {
 	{ 0x80000000, 0x80000000, 0x60000000, 0 },
 };
 
+static const struct imx_rproc_att imx_rproc_att_imx8mn[] = {
+	/* dev addr , sys addr  , size      , flags */
+	{ 0x00000000, 0x007e0000, 0x00020000, ATT_OWN }, /* ITCM   */
+	{ 0x00180000, 0x00180000, 0x00009000, 0 },	 /* OCRAM_S */
+	{ 0x00900000, 0x00900000, 0x00020000, 0 },	 /* OCRAM */
+	{ 0x00920000, 0x00920000, 0x00020000, 0 },	 /* OCRAM */
+	{ 0x00940000, 0x00940000, 0x00050000, 0 },	 /* OCRAM */
+	{ 0x08000000, 0x08000000, 0x08000000, 0 },	 /* QSPI Code - alias */
+	{ 0x10000000, 0x80000000, 0x0ffe0000, 0 },	 /* DDR (Code) - alias */
+	{ 0x20000000, 0x00800000, 0x00020000, ATT_OWN }, /* DTCM */
+	{ 0x20180000, 0x00180000, 0x00008000, ATT_OWN }, /* OCRAM_S - alias */
+	{ 0x20200000, 0x00900000, 0x00020000, ATT_OWN }, /* OCRAM */
+	{ 0x20220000, 0x00920000, 0x00020000, ATT_OWN }, /* OCRAM */
+	{ 0x20240000, 0x00940000, 0x00040000, ATT_OWN }, /* OCRAM */
+	{ 0x40000000, 0x40000000, 0x80000000, 0 },	 /* DDR (Data) */
+};
+
+static const struct imx_rproc_att imx_rproc_att_imx8mq[] = {
+	/* dev addr , sys addr  , size      , flags */
+	{ 0x00000000, 0x007e0000, 0x00020000, 0 },	 /* TCML - alias */
+	{ 0x00180000, 0x00180000, 0x00008000, 0 },	 /* OCRAM_S */
+	{ 0x00900000, 0x00900000, 0x00020000, 0 },	 /* OCRAM */
+	{ 0x00920000, 0x00920000, 0x00020000, 0 },	 /* OCRAM */
+	{ 0x08000000, 0x08000000, 0x08000000, 0 },	 /* QSPI Code - alias */
+	{ 0x10000000, 0x80000000, 0x0ffe0000, 0 },	 /* DDR (Code) - alias */
+	{ 0x1ffe0000, 0x007e0000, 0x00020000, ATT_OWN }, /* TCML */
+	{ 0x20000000, 0x00800000, 0x00020000, ATT_OWN }, /* TCMU */
+	{ 0x20180000, 0x00180000, 0x00008000, ATT_OWN }, /* OCRAM_S */
+	{ 0x20200000, 0x00900000, 0x00020000, ATT_OWN }, /* OCRAM */
+	{ 0x20220000, 0x00920000, 0x00020000, ATT_OWN }, /* OCRAM */
+	{ 0x40000000, 0x40000000, 0x80000000, 0 },	 /* DDR (Data) */
+};
+
 static int imx6sx_rproc_start(struct rproc *rproc)
 {
 	struct imx_rproc *priv = rproc->priv;
@@ -179,6 +214,72 @@ static int imx7d_rproc_stop(struct rproc *rproc)
 			IMX7D_M4_STOP);
 }
 
+#define IOMUXC_GPR22		0x58
+#define IOMUXC_GPR22_CM7_CPUWAIT	BIT(0)
+
+static int imx8mn_cm7_wait(struct rproc *rproc, bool wait)
+{
+	struct imx_rproc *priv = rproc->priv;
+
+	return regmap_update_bits(priv->gpr,
+			IOMUXC_GPR22,
+			IOMUXC_GPR22_CM7_CPUWAIT,
+			wait ? IOMUXC_GPR22_CM7_CPUWAIT : 0);
+}
+
+static int imx8mn_rproc_start(struct rproc *rproc)
+{
+	struct imx_rproc *priv = rproc->priv;
+	int ret;
+
+	ret = regmap_update_bits(priv->regmap,
+			IMX7D_SRC_SCR,
+			IMX7D_M4_RST_MASK,
+			IMX7D_ENABLE_M4 | IMX7D_SW_M4C_RST);
+	if (ret)
+		return ret;
+
+	ret = imx8mn_cm7_wait(rproc, false);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int imx8mn_rproc_stop(struct rproc *rproc)
+{
+	struct imx_rproc *priv = rproc->priv;
+	int ret;
+
+	ret = imx8mn_cm7_wait(rproc, true);
+	if (ret)
+		return ret;
+
+	return regmap_update_bits(priv->regmap,
+			IMX7D_SRC_SCR,
+			IMX7D_M4_RST_MASK,
+			IMX7D_ENABLE_M4 | IMX7D_SW_M4C_RST | IMX7D_SW_M4C_NON_SCLR_RST);
+}
+
+static int imx8mn_rproc_init(struct rproc *rproc)
+{
+	struct imx_rproc *priv = rproc->priv;
+	int ret;
+
+	priv->gpr = syscon_regmap_lookup_by_compatible("fsl,imx8mp-iomuxc-gpr");
+	if (IS_ERR(priv->gpr))
+		return PTR_ERR(priv->gpr);
+
+	ret = imx8mn_cm7_wait(rproc, true);
+	if (ret)
+		return ret;
+
+	return regmap_update_bits(priv->regmap,
+			IMX7D_SRC_SCR,
+			IMX7D_M4_RST_MASK,
+			IMX7D_ENABLE_M4 | IMX7D_SW_M4C_RST);
+}
+
 static const struct imx_rproc_dcfg imx_rproc_cfg_imx6sx = {
 	.att		= imx_rproc_att_imx6sx,
 	.att_size	= ARRAY_SIZE(imx_rproc_att_imx6sx),
@@ -193,6 +294,21 @@ static const struct imx_rproc_dcfg imx_rproc_cfg_imx7d = {
 	.rproc_stop	= imx7d_rproc_stop,
 };
 
+static const struct imx_rproc_dcfg imx_rproc_cfg_imx8mn = {
+	.att		= imx_rproc_att_imx8mn,
+	.att_size	= ARRAY_SIZE(imx_rproc_att_imx8mn),
+	.rproc_init	= imx8mn_rproc_init,
+	.rproc_start	= imx8mn_rproc_start,
+	.rproc_stop	= imx8mn_rproc_stop,
+};
+
+static const struct imx_rproc_dcfg imx_rproc_cfg_imx8mq = {
+	.att		= imx_rproc_att_imx8mq,
+	.att_size	= ARRAY_SIZE(imx_rproc_att_imx8mq),
+	.rproc_start	= imx7d_rproc_start,
+	.rproc_stop	= imx7d_rproc_stop,
+};
+
 static int imx_rproc_start(struct rproc *rproc)
 {
 	struct imx_rproc *priv = rproc->priv;
@@ -391,6 +507,12 @@ static int imx_rproc_probe(struct device_d *dev)
 		goto err_put_rproc;
 	}
 
+	if (dcfg->rproc_init) {
+		ret = dcfg->rproc_init(rproc);
+		if (ret)
+			goto err_put_clk;
+	}
+
 	ret = rproc_add(rproc);
 	if (ret) {
 		dev_err(dev, "rproc_add failed\n");
@@ -408,6 +530,10 @@ err_put_rproc:
 static const struct of_device_id imx_rproc_of_match[] = {
 	{ .compatible = "fsl,imx6sx-cm4", .data = &imx_rproc_cfg_imx6sx },
 	{ .compatible = "fsl,imx7d-cm4", .data = &imx_rproc_cfg_imx7d },
+	{ .compatible = "fsl,imx8mm-cm4", .data = &imx_rproc_cfg_imx8mq },
+	{ .compatible = "fsl,imx8mn-cm7", .data = &imx_rproc_cfg_imx8mn },
+	{ .compatible = "fsl,imx8mp-cm7", .data = &imx_rproc_cfg_imx8mn },
+	{ .compatible = "fsl,imx8mq-cm4", .data = &imx_rproc_cfg_imx8mq },
 	{},
 };
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
