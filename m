Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gr8g2-0003FB-Ui
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 21:54:54 +0000
Received: by mail-pg1-x541.google.com with SMTP id m1so1985112pgq.8
 for <barebox@lists.infradead.org>; Tue, 05 Feb 2019 13:54:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  5 Feb 2019 13:54:11 -0800
Message-Id: <20190205215411.589-16-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 15/15] PCI: imx6: Add support for i.MX8MQ
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 2d8ed461dbc9bc734185db92d2b9d1bb7b586b30

  Add code needed to support i.MX8MQ variant.

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
 arch/arm/mach-imx/Kconfig |  1 +
 drivers/pci/Kconfig       |  4 +-
 drivers/pci/pci-imx6.c    | 94 +++++++++++++++++++++++++++++++++++----
 3 files changed, 89 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 587f0383d..a9cda3ed2 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -183,6 +183,7 @@ config ARCH_IMX8MQ
 	select SYS_SUPPORTS_64BIT_KERNEL
 	select COMMON_CLK_OF_PROVIDER
 	select ARCH_HAS_FEC_IMX
+	select HW_HAS_PCI
 
 config ARCH_VF610
 	bool
diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index d81afb3d2..44a89d005 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -41,8 +41,8 @@ config PCI_TEGRA
 	select PCI
 
 config PCI_IMX6
-	bool "Freescale i.MX6/7 PCIe controller"
-	depends on ARCH_IMX6 || ARCH_IMX7
+	bool "Freescale i.MX6/7/8 PCIe controller"
+	depends on ARCH_IMX6 || ARCH_IMX7 || ARCH_IMX8MQ
 	select PCIE_DW
 	select OF_PCI
 	select PCI
diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index d77c24990..138b4ca8b 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -26,20 +26,29 @@
 #include <linux/phy/phy.h>
 #include <linux/reset.h>
 #include <linux/sizes.h>
+#include <linux/bitfield.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include <mfd/imx7-iomuxc-gpr.h>
 
 #include <mach/imx6-regs.h>
 #include <mach/imx7-regs.h>
+#include <mach/imx8mq-regs.h>
 
 #include "pcie-designware.h"
 
+#define IMX8MQ_GPR_PCIE_REF_USE_PAD            BIT(9)
+#define IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN    BIT(10)
+#define IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE       BIT(11)
+#define IMX8MQ_GPR12_PCIE2_CTRL_DEVICE_TYPE    GENMASK(11, 8)
+#define IMX8MQ_PCIE2_BASE_ADDR			0x33c00000
+
 #define to_imx6_pcie(x)	((x)->dev->priv)
 
 enum imx6_pcie_variants {
 	IMX6Q,
 	IMX6QP,
 	IMX7D,
+	IMX8MQ,
 };
 
 #define IMX6_PCIE_FLAG_IMX6_PHY			BIT(0)
@@ -57,6 +66,7 @@ struct imx6_pcie {
 	struct clk		*pcie_phy;
 	struct clk		*pcie;
 	void __iomem		*iomuxc_gpr;
+	u32			controller_id;
 	struct reset_control	*pciephy_reset;
 	struct reset_control	*apps_reset;
 	u32                     tx_deemph_gen1;
@@ -261,6 +271,7 @@ static void imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
 
 	switch (imx6_pcie->drvdata->variant) {
 	case IMX7D:
+	case IMX8MQ:
 		reset_control_assert(imx6_pcie->pciephy_reset);
 		reset_control_assert(imx6_pcie->apps_reset);
 		break;
@@ -280,9 +291,16 @@ static void imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
 	}
 }
 
+static unsigned int imx6_pcie_grp_offset(const struct imx6_pcie *imx6_pcie)
+{
+	WARN_ON(imx6_pcie->drvdata->variant != IMX8MQ);
+	return imx6_pcie->controller_id == 1 ? IOMUXC_GPR16 : IOMUXC_GPR14;
+}
+
 static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
 {
-	u32 gpr1;
+	u32 gpr1, gpr1x;
+	unsigned int offset;
 
 	switch (imx6_pcie->drvdata->variant) {
 	case IMX6QP:
@@ -304,6 +322,20 @@ static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
 		break;
 	case IMX7D:
 		break;
+	case IMX8MQ:
+		offset = imx6_pcie_grp_offset(imx6_pcie);
+		/*
+		 * Set the over ride low and enabled
+		 * make sure that REF_CLK is turned on.
+		 */
+		gpr1x = readl(imx6_pcie->iomuxc_gpr + offset);
+		gpr1x &= ~IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE;
+		writel(gpr1x, imx6_pcie->iomuxc_gpr + offset);
+
+		gpr1x = readl(imx6_pcie->iomuxc_gpr + offset);
+		gpr1x |= IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN;
+		writel(gpr1x, imx6_pcie->iomuxc_gpr + offset);
+		break;
 	}
 
 	return 0;
@@ -371,6 +403,9 @@ static void imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
 	 * Release the PCIe PHY reset here
 	 */
 	switch (imx6_pcie->drvdata->variant) {
+	case IMX8MQ:
+		reset_control_deassert(imx6_pcie->pciephy_reset);
+		break;
 	case IMX7D:
 		reset_control_deassert(imx6_pcie->pciephy_reset);
 		imx7d_pcie_wait_for_phy_pll_lock(imx6_pcie);
@@ -396,19 +431,52 @@ err_pcie_bus:
 	clk_disable(imx6_pcie->pcie_phy);
 }
 
-static void imx6_pcie_init_phy(struct imx6_pcie *imx6_pcie)
+static void imx6_pcie_configure_type(struct imx6_pcie *imx6_pcie)
 {
-	u32 gpr12, gpr8;
+	unsigned int mask, val;
+	u32 gpr12;
 
-	gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+	if (imx6_pcie->drvdata->variant == IMX8MQ &&
+	    imx6_pcie->controller_id == 1) {
+		mask   = IMX8MQ_GPR12_PCIE2_CTRL_DEVICE_TYPE;
+		val    = FIELD_PREP(IMX8MQ_GPR12_PCIE2_CTRL_DEVICE_TYPE,
+				    PCI_EXP_TYPE_ROOT_PORT);
+	} else {
+		mask = IMX6Q_GPR12_DEVICE_TYPE;
+		val  = FIELD_PREP(IMX6Q_GPR12_DEVICE_TYPE,
+				  PCI_EXP_TYPE_ROOT_PORT);
+	}
+
+	gpr12  = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+	gpr12 &= ~mask;
+	gpr12 |= val;
+	writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+}
+
+static void imx6_pcie_init_phy(struct imx6_pcie *imx6_pcie)
+{
+	u32 gpr12, gpr8, gpr1x;
+	unsigned int offset;
 
 	switch (imx6_pcie->drvdata->variant) {
+	case IMX8MQ:
+		offset = imx6_pcie_grp_offset(imx6_pcie);
+		/*
+		 * TODO: Currently this code assumes external
+		 * oscillator is being used
+		 */
+		gpr1x = readl(imx6_pcie->iomuxc_gpr + offset);
+		gpr1x |= IMX8MQ_GPR_PCIE_REF_USE_PAD;
+		writel(gpr1x, imx6_pcie->iomuxc_gpr + offset);
+		break;
 	case IMX7D:
+		gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 		gpr12 &= ~IMX7D_GPR12_PCIE_PHY_REFCLK_SEL;
 		writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 		break;
 	case IMX6QP:
 	case IMX6Q:	/* FALLTHROUGH */
+		gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 		gpr12 &= ~IMX6Q_GPR12_PCIE_CTL_2;
 		writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 
@@ -440,9 +508,7 @@ static void imx6_pcie_init_phy(struct imx6_pcie *imx6_pcie)
 		break;
 	}
 
-	gpr12 &= ~IMX6Q_GPR12_DEVICE_TYPE;
-	gpr12 |= PCI_EXP_TYPE_ROOT_PORT << 12;
-	writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+	imx6_pcie_configure_type(imx6_pcie);
 }
 
 static int imx6_pcie_wait_for_link(struct imx6_pcie *imx6_pcie)
@@ -481,6 +547,7 @@ static void imx6_pcie_ltssm_enable(struct device_d *dev)
 		writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 		break;
 	case IMX7D:
+	case IMX8MQ:
 		reset_control_deassert(imx6_pcie->apps_reset);
 		break;
 	}
@@ -668,10 +735,17 @@ static int imx6_pcie_probe(struct device_d *dev)
 		return PTR_ERR(imx6_pcie->pcie);
 	}
 
+
 	switch (imx6_pcie->drvdata->variant) {
+	case IMX8MQ:
+		imx6_pcie->iomuxc_gpr = IOMEM(MX8MQ_IOMUXC_GPR_BASE_ADDR);
+		if (iores->start == IMX8MQ_PCIE2_BASE_ADDR)
+			imx6_pcie->controller_id = 1;
+
+		goto imx7d_init;
 	case IMX7D:
 		imx6_pcie->iomuxc_gpr = IOMEM(MX7_IOMUXC_GPR_BASE_ADDR);
-
+	imx7d_init:
 		imx6_pcie->pciephy_reset = reset_control_get(dev, "pciephy");
 		if (IS_ERR(imx6_pcie->pciephy_reset)) {
 			dev_err(dev, "Failed to get PCIEPHY reset control\n");
@@ -775,12 +849,16 @@ static const struct imx6_pcie_drvdata drvdata[] = {
 	[IMX7D] = {
 		.variant = IMX7D,
 	},
+	[IMX8MQ] = {
+		.variant = IMX8MQ,
+	},
 };
 
 static struct of_device_id imx6_pcie_of_match[] = {
 	{ .compatible = "fsl,imx6q-pcie",  .data = &drvdata[IMX6Q],  },
 	{ .compatible = "fsl,imx6qp-pcie", .data = &drvdata[IMX6QP], },
 	{ .compatible = "fsl,imx7d-pcie",  .data = &drvdata[IMX7D],  },
+	{ .compatible = "fsl,imx8mq-pcie", .data = &drvdata[IMX8MQ], } ,
 	{},
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
