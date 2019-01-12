Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giCHA-0004Ng-5Z
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 05:56:22 +0000
Received: by mail-pl1-x644.google.com with SMTP id g9so7729804plo.3
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 21:56:07 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 21:55:18 -0800
Message-Id: <20190112055524.7733-13-andrew.smirnov@gmail.com>
In-Reply-To: <20190112055524.7733-1-andrew.smirnov@gmail.com>
References: <20190112055524.7733-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 12/18] PCI: imx6: Add code to support i.MX7D
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 9b3fe6796d7c0e0c2b87243ce0c7f4744c54efad

  Add various bits of code needed to support i.MX7D variant of the IP.

  Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
  Acked-by: Lee Jones <lee.jones@linaro.org>
  Acked-by: Rob Herring <robh@kernel.org>
  Cc: yurovsky@gmail.com
  Cc: Mark Rutland <mark.rutland@arm.com>
  Cc: Fabio Estevam <fabio.estevam@nxp.com>
  Cc: Dong Aisheng <dongas86@gmail.com>
  Cc: linux-arm-kernel@lists.infradead.org
  Cc: devicetree@vger.kernel.org

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/Kconfig |   1 +
 drivers/pci/Kconfig       |   4 +-
 drivers/pci/pci-imx6.c    | 166 ++++++++++++++++++++++++++++----------
 3 files changed, 125 insertions(+), 46 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index f14c9c3edf..3ad922c50c 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -173,6 +173,7 @@ config ARCH_IMX7
 	select COMMON_CLK_OF_PROVIDER
 	select ARCH_HAS_FEC_IMX
 	select ARCH_HAS_IMX_GPT
+	select HW_HAS_PCI
 
 config ARCH_IMX8MQ
 	bool
diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index 1c45a1c225..d81afb3d29 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -41,8 +41,8 @@ config PCI_TEGRA
 	select PCI
 
 config PCI_IMX6
-	bool "Freescale i.MX6 PCIe controller"
-	depends on ARCH_IMX6
+	bool "Freescale i.MX6/7 PCIe controller"
+	depends on ARCH_IMX6 || ARCH_IMX7
 	select PCIE_DW
 	select OF_PCI
 	select PCI
diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 38e002a1c6..6471f95b62 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -27,8 +27,10 @@
 #include <linux/reset.h>
 #include <linux/sizes.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
+#include <mfd/imx7-iomuxc-gpr.h>
 
 #include <mach/imx6-regs.h>
+#include <mach/imx7-regs.h>
 
 #include "pcie-designware.h"
 
@@ -37,6 +39,7 @@
 enum imx6_pcie_variants {
 	IMX6Q,
 	IMX6QP,
+	IMX7D,
 };
 
 struct imx6_pcie {
@@ -46,6 +49,8 @@ struct imx6_pcie {
 	struct clk		*pcie_phy;
 	struct clk		*pcie;
 	void __iomem		*iomuxc_gpr;
+	struct reset_control	*pciephy_reset;
+	struct reset_control	*apps_reset;
 	enum imx6_pcie_variants variant;
 	u32                     tx_deemph_gen1;
 	u32                     tx_deemph_gen2_3p5db;
@@ -55,6 +60,11 @@ struct imx6_pcie {
 	int			link_gen;
 };
 
+/* Parameters for the waiting for PCIe PHY PLL to lock on i.MX7 */
+#define PHY_PLL_LOCK_WAIT_MAX_RETRIES  2000
+#define PHY_PLL_LOCK_WAIT_USLEEP_MIN   50
+#define PHY_PLL_LOCK_WAIT_USLEEP_MAX   200
+
 /* PCIe Root Complex registers (memory-mapped) */
 #define PCIE_RC_LCR				0x7c
 #define PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN1	0x1
@@ -239,6 +249,10 @@ static void imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
 	u32 gpr1;
 
 	switch (imx6_pcie->variant) {
+	case IMX7D:
+		reset_control_assert(imx6_pcie->pciephy_reset);
+		reset_control_assert(imx6_pcie->apps_reset);
+		break;
 	case IMX6QP:
 		gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
 		gpr1 |= IMX6Q_GPR1_PCIE_SW_RST;
@@ -259,24 +273,49 @@ static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
 {
 	u32 gpr1;
 
-	/* power up core phy and enable ref clock */
-	gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
-	gpr1 &= ~IMX6Q_GPR1_PCIE_TEST_PD;
-	writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
-	/*
-	 * the async reset input need ref clock to sync internally,
-	 * when the ref clock comes after reset, internal synced
-	 * reset time is too short, cannot meet the requirement.
-	 * add one ~10us delay here.
-	 */
-	udelay(10);
-	gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
-	gpr1 |= IMX6Q_GPR1_PCIE_REF_CLK_EN;
-	writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+	switch (imx6_pcie->variant) {
+	case IMX6QP:
+	case IMX6Q:		/* FALLTHROUGH */
+		/* power up core phy and enable ref clock */
+		gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+		gpr1 &= ~IMX6Q_GPR1_PCIE_TEST_PD;
+		writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+		/*
+		 * the async reset input need ref clock to sync
+		 * internally, when the ref clock comes after reset,
+		 * internal synced reset time is too short, cannot
+		 * meet the requirement.  add one ~10us delay here.
+		 */
+		udelay(10);
+		gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+		gpr1 |= IMX6Q_GPR1_PCIE_REF_CLK_EN;
+		writel(gpr1, imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
+		break;
+	case IMX7D:
+		break;
+	}
 
 	return 0;
 }
 
+static void imx7d_pcie_wait_for_phy_pll_lock(struct imx6_pcie *imx6_pcie)
+{
+	u32 val;
+	unsigned int retries;
+	struct device_d *dev = imx6_pcie->pci->dev;
+
+	for (retries = 0; retries < PHY_PLL_LOCK_WAIT_MAX_RETRIES; retries++) {
+		val = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR22);
+
+		if (val & IMX7D_GPR22_PCIE_PHY_PLL_LOCKED)
+			return;
+
+		udelay(PHY_PLL_LOCK_WAIT_USLEEP_MAX);
+	}
+
+	dev_err(dev, "PCIe PLL lock timeout\n");
+}
+
 static void imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
 {
 	struct device_d *dev = imx6_pcie->pci->dev;
@@ -321,6 +360,10 @@ static void imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
 	 * Release the PCIe PHY reset here
 	 */
 	switch (imx6_pcie->variant) {
+	case IMX7D:
+		reset_control_deassert(imx6_pcie->pciephy_reset);
+		imx7d_pcie_wait_for_phy_pll_lock(imx6_pcie);
+		break;
 	case IMX6QP:
 		gpr1 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR1);
 		gpr1 &= ~IMX6Q_GPR1_PCIE_SW_RST;
@@ -347,38 +390,48 @@ static void imx6_pcie_init_phy(struct imx6_pcie *imx6_pcie)
 	u32 gpr12, gpr8;
 
 	gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
-	gpr12 &= ~IMX6Q_GPR12_PCIE_CTL_2;
-	writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 
-	/* configure constant input signal to the pcie ctrl and phy */
-	gpr12 &= ~IMX6Q_GPR12_DEVICE_TYPE;
-	gpr12 |= PCI_EXP_TYPE_ROOT_PORT << 12;
-	writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+	switch (imx6_pcie->variant) {
+	case IMX7D:
+		gpr12 &= ~IMX7D_GPR12_PCIE_PHY_REFCLK_SEL;
+		writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+		break;
+	case IMX6QP:
+	case IMX6Q:	/* FALLTHROUGH */
+		gpr12 &= ~IMX6Q_GPR12_PCIE_CTL_2;
+		writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 
-	gpr12 &= ~IMX6Q_GPR12_LOS_LEVEL;
-	gpr12 |= 9 << 4;
-	writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+		/* configure constant input signal to the pcie ctrl and phy */
+		gpr12 &= ~IMX6Q_GPR12_LOS_LEVEL;
+		gpr12 |= 9 << 4;
+		writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 
-	gpr8 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
-	gpr8 &= ~IMX6Q_GPR8_TX_DEEMPH_GEN1;
-	gpr8 |= imx6_pcie->tx_deemph_gen1 << 0;
-	writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
+		gpr8 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
+		gpr8 &= ~IMX6Q_GPR8_TX_DEEMPH_GEN1;
+		gpr8 |= imx6_pcie->tx_deemph_gen1 << 0;
+		writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
 
-	gpr8 &= ~IMX6Q_GPR8_TX_DEEMPH_GEN2_3P5DB;
-	gpr8 |= imx6_pcie->tx_deemph_gen2_3p5db << 6;
-	writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
+		gpr8 &= ~IMX6Q_GPR8_TX_DEEMPH_GEN2_3P5DB;
+		gpr8 |= imx6_pcie->tx_deemph_gen2_3p5db << 6;
+		writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
 
-	gpr8 &= ~IMX6Q_GPR8_TX_DEEMPH_GEN2_6DB;
-	gpr8 |= imx6_pcie->tx_deemph_gen2_6db << 12;
-	writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
+		gpr8 &= ~IMX6Q_GPR8_TX_DEEMPH_GEN2_6DB;
+		gpr8 |= imx6_pcie->tx_deemph_gen2_6db << 12;
+		writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
 
-	gpr8 &= ~IMX6Q_GPR8_TX_SWING_FULL;
-	gpr8 |= imx6_pcie->tx_swing_full << 18;
-	writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
+		gpr8 &= ~IMX6Q_GPR8_TX_SWING_FULL;
+		gpr8 |= imx6_pcie->tx_swing_full << 18;
+		writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
 
-	gpr8 &= ~IMX6Q_GPR8_TX_SWING_LOW;
-	gpr8 |= imx6_pcie->tx_swing_low << 25;
-	writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
+		gpr8 &= ~IMX6Q_GPR8_TX_SWING_LOW;
+		gpr8 |= imx6_pcie->tx_swing_low << 25;
+		writel(gpr8, imx6_pcie->iomuxc_gpr + IOMUXC_GPR8);
+		break;
+	}
+
+	gpr12 &= ~IMX6Q_GPR12_DEVICE_TYPE;
+	gpr12 |= PCI_EXP_TYPE_ROOT_PORT << 12;
+	writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 }
 
 static int imx6_pcie_wait_for_link(struct imx6_pcie *imx6_pcie)
@@ -424,9 +477,13 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 	dw_pcie_writel_dbi(pci, PCIE_RC_LCR, tmp);
 
 	/* Start LTSSM. */
-	gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
-	gpr12 |= IMX6Q_GPR12_PCIE_CTL_2;
-	writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+	if (imx6_pcie->variant == IMX7D) {
+		reset_control_deassert(imx6_pcie->apps_reset);
+	} else {
+		gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+		gpr12 |= IMX6Q_GPR12_PCIE_CTL_2;
+		writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
+	}
 
 	ret = imx6_pcie_wait_for_link(imx6_pcie);
 	if (ret)
@@ -577,8 +634,28 @@ static int __init imx6_pcie_probe(struct device_d *dev)
 		return PTR_ERR(imx6_pcie->pcie);
 	}
 
-	/* Grab GPR config register range */
-	imx6_pcie->iomuxc_gpr = IOMEM(MX6_IOMUXC_BASE_ADDR);
+	switch (imx6_pcie->variant) {
+	case IMX7D:
+		imx6_pcie->iomuxc_gpr = IOMEM(MX7_IOMUXC_GPR_BASE_ADDR);
+
+		imx6_pcie->pciephy_reset = reset_control_get(dev, "pciephy");
+		if (IS_ERR(imx6_pcie->pciephy_reset)) {
+			dev_err(dev, "Failed to get PCIEPHY reset contol\n");
+			return PTR_ERR(imx6_pcie->pciephy_reset);
+		}
+
+		imx6_pcie->apps_reset = reset_control_get(dev, "apps");
+		if (IS_ERR(imx6_pcie->apps_reset)) {
+			dev_err(dev, "Failed to get PCIE APPS reset contol\n");
+			return PTR_ERR(imx6_pcie->apps_reset);
+		}
+		break;
+	default:
+		/* Grab GPR config register range */
+		imx6_pcie->iomuxc_gpr = IOMEM(MX6_IOMUXC_BASE_ADDR);
+		break;
+	}
+
 
 	/* Grab PCIe PHY Tx Settings */
 	if (of_property_read_u32(np, "fsl,tx-deemph-gen1",
@@ -653,6 +730,7 @@ static void imx6_pcie_remove(struct device_d *dev)
 static struct of_device_id imx6_pcie_of_match[] = {
 	{ .compatible = "fsl,imx6q-pcie",  .data = (void *)IMX6Q,  },
 	{ .compatible = "fsl,imx6qp-pcie", .data = (void *)IMX6QP, },
+	{ .compatible = "fsl,imx7d-pcie",  .data = (void *)IMX7D,  },
 	{},
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
