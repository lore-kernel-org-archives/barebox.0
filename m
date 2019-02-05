Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gr8fz-0003AP-Ce
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 21:54:52 +0000
Received: by mail-pg1-x542.google.com with SMTP id z10so1985617pgp.7
 for <barebox@lists.infradead.org>; Tue, 05 Feb 2019 13:54:43 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  5 Feb 2019 13:54:08 -0800
Message-Id: <20190205215411.589-13-andrew.smirnov@gmail.com>
In-Reply-To: <20190205215411.589-1-andrew.smirnov@gmail.com>
References: <20190205215411.589-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 12/15] PCI: imx6: Introduce drvdata
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit e8e4d4e95701a10691c53165c55789e5e50ba3f5

  Introduce driver data struct. This will simplify handling of device
  specific differences.

  Signed-off-by: Stefan Agner <stefan@agner.ch>
  [andrew.smirnov@gmail.com reformatted drvdata, to simplify future diffs]
  Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
  Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
  Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
  Cc: Bjorn Helgaas <bhelgaas@google.com>
  Cc: Fabio Estevam <fabio.estevam@nxp.com>
  Cc: Chris Healy <cphealy@gmail.com>
  Cc: Lucas Stach <l.stach@pengutronix.de>
  Cc: Leonard Crestez <leonard.crestez@nxp.com>
  Cc: "A.s. Dong" <aisheng.dong@nxp.com>
  Cc: Richard Zhu <hongxing.zhu@nxp.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 43 ++++++++++++++++++++++++++++--------------
 1 file changed, 29 insertions(+), 14 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index c1719093b..dcebd7658 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -42,6 +42,10 @@ enum imx6_pcie_variants {
 	IMX7D,
 };
 
+struct imx6_pcie_drvdata {
+	enum imx6_pcie_variants variant;
+};
+
 struct imx6_pcie {
 	struct dw_pcie		*pci;
 	int			reset_gpio;
@@ -51,13 +55,13 @@ struct imx6_pcie {
 	void __iomem		*iomuxc_gpr;
 	struct reset_control	*pciephy_reset;
 	struct reset_control	*apps_reset;
-	enum imx6_pcie_variants variant;
 	u32                     tx_deemph_gen1;
 	u32                     tx_deemph_gen2_3p5db;
 	u32                     tx_deemph_gen2_6db;
 	u32                     tx_swing_full;
 	u32                     tx_swing_low;
 	int			link_gen;
+	const struct imx6_pcie_drvdata *drvdata;
 };
 
 /* Parameters for the waiting for PCIe PHY PLL to lock on i.MX7 */
@@ -248,7 +252,7 @@ static void imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
 {
 	u32 gpr1;
 
-	switch (imx6_pcie->variant) {
+	switch (imx6_pcie->drvdata->variant) {
 	case IMX7D:
 		reset_control_assert(imx6_pcie->pciephy_reset);
 		reset_control_assert(imx6_pcie->apps_reset);
@@ -273,7 +277,7 @@ static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
 {
 	u32 gpr1;
 
-	switch (imx6_pcie->variant) {
+	switch (imx6_pcie->drvdata->variant) {
 	case IMX6QP:
 	case IMX6Q:		/* FALLTHROUGH */
 		/* power up core phy and enable ref clock */
@@ -359,7 +363,7 @@ static void imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
 	/*
 	 * Release the PCIe PHY reset here
 	 */
-	switch (imx6_pcie->variant) {
+	switch (imx6_pcie->drvdata->variant) {
 	case IMX7D:
 		reset_control_deassert(imx6_pcie->pciephy_reset);
 		imx7d_pcie_wait_for_phy_pll_lock(imx6_pcie);
@@ -391,7 +395,7 @@ static void imx6_pcie_init_phy(struct imx6_pcie *imx6_pcie)
 
 	gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 
-	switch (imx6_pcie->variant) {
+	switch (imx6_pcie->drvdata->variant) {
 	case IMX7D:
 		gpr12 &= ~IMX7D_GPR12_PCIE_PHY_REFCLK_SEL;
 		writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
@@ -462,7 +466,7 @@ static void imx6_pcie_ltssm_enable(struct device_d *dev)
 	struct imx6_pcie *imx6_pcie = dev->priv;
 	u32 gpr12;
 
-	switch (imx6_pcie->variant) {
+	switch (imx6_pcie->drvdata->variant) {
 	case IMX6Q:
 	case IMX6QP:
 		gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
@@ -514,7 +518,7 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 		tmp |= PORT_LOGIC_SPEED_CHANGE;
 		dw_pcie_writel_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL, tmp);
 
-		if (imx6_pcie->variant != IMX7D) {
+		if (imx6_pcie->drvdata->variant != IMX7D) {
 			/*
 			 * On i.MX7, DIRECT_SPEED_CHANGE behaves
 			 * differently from i.MX6 family when no link
@@ -616,8 +620,7 @@ static int imx6_pcie_probe(struct device_d *dev)
 	pci->ops = &dw_pcie_ops;
 
 	imx6_pcie->pci = pci;
-	imx6_pcie->variant =
-		(enum imx6_pcie_variants)of_device_get_match_data(dev);
+	imx6_pcie->drvdata = of_device_get_match_data(dev);
 
 	/* Fetch GPIOs */
 	imx6_pcie->reset_gpio = of_get_named_gpio(np, "reset-gpio", 0);
@@ -657,7 +660,7 @@ static int imx6_pcie_probe(struct device_d *dev)
 		return PTR_ERR(imx6_pcie->pcie);
 	}
 
-	switch (imx6_pcie->variant) {
+	switch (imx6_pcie->drvdata->variant) {
 	case IMX7D:
 		imx6_pcie->iomuxc_gpr = IOMEM(MX7_IOMUXC_GPR_BASE_ADDR);
 
@@ -720,7 +723,7 @@ static void imx6_pcie_remove(struct device_d *dev)
 {
 	struct imx6_pcie *imx6_pcie = dev->priv;
 
-	if (imx6_pcie->variant == IMX6Q) {
+	if (imx6_pcie->drvdata->variant == IMX6Q) {
 		/*
 		 * If the bootloader already enabled the link we need
 		 * some special handling to get the core back into a
@@ -750,10 +753,22 @@ static void imx6_pcie_remove(struct device_d *dev)
 	imx6_pcie_assert_core_reset(imx6_pcie);
 }
 
+static const struct imx6_pcie_drvdata drvdata[] = {
+	[IMX6Q] = {
+		.variant = IMX6Q,
+	},
+	[IMX6QP] = {
+		.variant = IMX6QP,
+	},
+	[IMX7D] = {
+		.variant = IMX7D,
+	},
+};
+
 static struct of_device_id imx6_pcie_of_match[] = {
-	{ .compatible = "fsl,imx6q-pcie",  .data = (void *)IMX6Q,  },
-	{ .compatible = "fsl,imx6qp-pcie", .data = (void *)IMX6QP, },
-	{ .compatible = "fsl,imx7d-pcie",  .data = (void *)IMX7D,  },
+	{ .compatible = "fsl,imx6q-pcie",  .data = &drvdata[IMX6Q],  },
+	{ .compatible = "fsl,imx6qp-pcie", .data = &drvdata[IMX6QP], },
+	{ .compatible = "fsl,imx7d-pcie",  .data = &drvdata[IMX7D],  },
 	{},
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
