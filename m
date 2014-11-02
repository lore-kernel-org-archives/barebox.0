Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xl1S0-0006pN-U2
 for barebox@lists.infradead.org; Sun, 02 Nov 2014 20:08:41 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id F006426C2004
 for <barebox@lists.infradead.org>; Sun,  2 Nov 2014 21:06:51 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  2 Nov 2014 21:13:55 +0100
Message-Id: <1414959235-18095-14-git-send-email-dev@lynxeye.de>
In-Reply-To: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
References: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 13/13] pci: tegra: add tegra124 support
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pci/pci-tegra.c | 156 +++++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 134 insertions(+), 22 deletions(-)

diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index 07bb251..f2ade77 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -30,6 +30,7 @@
 #include <of_address.h>
 #include <of_pci.h>
 #include <linux/pci.h>
+#include <linux/phy/phy.h>
 #include <linux/reset.h>
 #include <sizes.h>
 #include <mach/tegra-powergate.h>
@@ -133,8 +134,10 @@
 #define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_MASK	(0xf << 20)
 #define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_SINGLE	(0x0 << 20)
 #define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_420	(0x0 << 20)
+#define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_X2_X1	(0x0 << 20)
 #define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_DUAL	(0x1 << 20)
 #define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_222	(0x1 << 20)
+#define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_X4_X1	(0x1 << 20)
 #define  AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_411	(0x2 << 20)
 
 #define AFI_FUSE			0x104
@@ -146,12 +149,21 @@
 #define  AFI_PEX_CTRL_RST		(1 << 0)
 #define  AFI_PEX_CTRL_CLKREQ_EN		(1 << 1)
 #define  AFI_PEX_CTRL_REFCLK_EN		(1 << 3)
+#define  AFI_PEX_CTRL_OVERRIDE_EN	(1 << 4)
+
+#define AFI_PLLE_CONTROL		0x160
+#define  AFI_PLLE_CONTROL_BYPASS_PADS2PLLE_CONTROL (1 << 9)
+#define  AFI_PLLE_CONTROL_PADS2PLLE_CONTROL_EN (1 << 1)
 
 #define AFI_PEXBIAS_CTRL_0		0x168
 
 #define RP_VEND_XP	0x00000F00
 #define  RP_VEND_XP_DL_UP	(1 << 30)
 
+#define RP_PRIV_MISC	0x00000FE0
+#define  RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT (0xE << 0)
+#define  RP_PRIV_MISC_PRSNT_MAP_EP_ABSNT (0xF << 0)
+
 #define RP_LINK_CONTROL_STATUS			0x00000090
 #define  RP_LINK_CONTROL_STATUS_DL_LINK_ACTIVE	0x20000000
 #define  RP_LINK_CONTROL_STATUS_LINKSTAT_MASK	0x3fff0000
@@ -209,6 +221,7 @@ struct tegra_pcie_soc_data {
 	bool has_intr_prsnt_sense;
 	bool has_avdd_supply;
 	bool has_cml_clk;
+	bool has_gen2;
 };
 
 struct tegra_pcie {
@@ -236,6 +249,8 @@ struct tegra_pcie {
 	struct reset_control *afi_rst;
 	struct reset_control *pcie_xrst;
 
+	struct phy *phy;
+
 	struct list_head ports;
 	unsigned int num_ports;
 	u32 xbar_config;
@@ -424,6 +439,8 @@ static void tegra_pcie_port_enable(struct tegra_pcie_port *port)
 	if (soc->has_pex_clkreq_en)
 		value |= AFI_PEX_CTRL_CLKREQ_EN;
 
+	value |= AFI_PEX_CTRL_OVERRIDE_EN;
+
 	afi_writel(port->pcie, value, ctrl);
 
 	tegra_pcie_port_reset(port);
@@ -550,29 +567,10 @@ static void tegra_pcie_setup_translations(struct tegra_pcie *pcie)
 	afi_writel(pcie, 0, AFI_MSI_BAR_SZ);
 }
 
-static int tegra_pcie_enable_controller(struct tegra_pcie *pcie)
+static int tegra_pcie_phy_enable(struct tegra_pcie *pcie)
 {
 	const struct tegra_pcie_soc_data *soc = pcie->soc_data;
-	struct tegra_pcie_port *port;
-	unsigned long value;
-
-	/* power down PCIe slot clock bias pad */
-	if (soc->has_pex_bias_ctrl)
-		afi_writel(pcie, 0, AFI_PEXBIAS_CTRL_0);
-
-	/* configure mode and disable all ports */
-	value = afi_readl(pcie, AFI_PCIE_CONFIG);
-	value &= ~AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_MASK;
-	value |= AFI_PCIE_CONFIG_PCIE_DISABLE_ALL | pcie->xbar_config;
-
-	list_for_each_entry(port, &pcie->ports, list)
-		value &= ~AFI_PCIE_CONFIG_PCIE_DISABLE(port->index);
-
-	afi_writel(pcie, value, AFI_PCIE_CONFIG);
-
-	value = afi_readl(pcie, AFI_FUSE);
-	value |= AFI_FUSE_PCIE_T0_GEN2_DIS;
-	afi_writel(pcie, value, AFI_FUSE);
+	u32 value;
 
 	/* initialize internal PHY, enable up to 16 PCIE lanes */
 	pads_writel(pcie, 0x0, PADS_CTL_SEL);
@@ -591,6 +589,13 @@ static int tegra_pcie_enable_controller(struct tegra_pcie *pcie)
 	value |= PADS_PLL_CTL_REFCLK_INTERNAL_CML | soc->tx_ref_sel;
 	pads_writel(pcie, value, soc->pads_pll_ctl);
 
+	/* reset PLL */
+	value = pads_readl(pcie, soc->pads_pll_ctl);
+	value &= ~PADS_PLL_CTL_RST_B4SM;
+	pads_writel(pcie, value, soc->pads_pll_ctl);
+
+	udelay(20);
+
 	/* take PLL out of reset  */
 	value = pads_readl(pcie, soc->pads_pll_ctl);
 	value |= PADS_PLL_CTL_RST_B4SM;
@@ -619,6 +624,53 @@ static int tegra_pcie_enable_controller(struct tegra_pcie *pcie)
 	value |= PADS_CTL_TX_DATA_EN_1L | PADS_CTL_RX_DATA_EN_1L;
 	pads_writel(pcie, value, PADS_CTL);
 
+	return 0;
+}
+
+static int tegra_pcie_enable_controller(struct tegra_pcie *pcie)
+{
+	const struct tegra_pcie_soc_data *soc = pcie->soc_data;
+	struct tegra_pcie_port *port;
+	unsigned long value;
+	int err;
+
+	/* enable PLL power down */
+	if (pcie->phy) {
+		value = afi_readl(pcie, AFI_PLLE_CONTROL);
+		value &= ~AFI_PLLE_CONTROL_BYPASS_PADS2PLLE_CONTROL;
+		value |= AFI_PLLE_CONTROL_PADS2PLLE_CONTROL_EN;
+		afi_writel(pcie, value, AFI_PLLE_CONTROL);
+	}
+
+	/* power down PCIe slot clock bias pad */
+	if (soc->has_pex_bias_ctrl)
+		afi_writel(pcie, 0, AFI_PEXBIAS_CTRL_0);
+
+	/* configure mode and disable all ports */
+	value = afi_readl(pcie, AFI_PCIE_CONFIG);
+	value &= ~AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_MASK;
+	value |= AFI_PCIE_CONFIG_PCIE_DISABLE_ALL | pcie->xbar_config;
+
+	list_for_each_entry(port, &pcie->ports, list)
+		value &= ~AFI_PCIE_CONFIG_PCIE_DISABLE(port->index);
+
+	afi_writel(pcie, value, AFI_PCIE_CONFIG);
+
+	if (soc->has_gen2) {
+		value = afi_readl(pcie, AFI_FUSE);
+		value &= ~AFI_FUSE_PCIE_T0_GEN2_DIS;
+		afi_writel(pcie, value, AFI_FUSE);
+	} else {
+		value = afi_readl(pcie, AFI_FUSE);
+		value |= AFI_FUSE_PCIE_T0_GEN2_DIS;
+		afi_writel(pcie, value, AFI_FUSE);
+	}
+
+	if (!pcie->phy)
+		err = tegra_pcie_phy_enable(pcie);
+	else
+		err = phy_power_on(pcie->phy);
+
 	/* take the PCIe interface module out of reset */
 	reset_control_deassert(pcie->pcie_xrst);
 
@@ -653,6 +705,10 @@ static void tegra_pcie_power_off(struct tegra_pcie *pcie)
 
 	/* TODO: disable and unprepare clocks? */
 
+	err = phy_power_off(pcie->phy);
+	if (err < 0)
+		dev_warn(pcie->dev, "failed to power off PHY: %d\n", err);
+
 	reset_control_assert(pcie->pcie_xrst);
 	reset_control_assert(pcie->afi_rst);
 	reset_control_assert(pcie->pex_rst);
@@ -806,6 +862,19 @@ static int tegra_pcie_get_resources(struct tegra_pcie *pcie)
 		return err;
 	}
 
+	pcie->phy = phy_optional_get(pcie->dev, "pcie");
+	if (IS_ERR(pcie->phy)) {
+		err = PTR_ERR(pcie->phy);
+		dev_err(dev, "failed to get PHY: %d\n", err);
+		return err;
+	}
+
+	err = phy_init(pcie->phy);
+	if (err < 0) {
+		dev_err(dev, "failed to initialize PHY: %d\n", err);
+		return err;
+	}
+
 	err = tegra_pcie_power_on(pcie);
 	if (err) {
 		dev_err(dev, "failed to power up: %d\n", err);
@@ -840,7 +909,14 @@ poweroff:
 
 static int tegra_pcie_put_resources(struct tegra_pcie *pcie)
 {
+	int err;
+
 	tegra_pcie_power_off(pcie);
+
+	err = phy_exit(pcie->phy);
+	if (err < 0)
+		dev_err(pcie->dev, "failed to teardown PHY: %d\n", err);
+
 	return 0;
 }
 
@@ -849,7 +925,19 @@ static int tegra_pcie_get_xbar_config(struct tegra_pcie *pcie, u32 lanes,
 {
 	struct device_node *np = pcie->dev->device_node;
 
-	if (of_device_is_compatible(np, "nvidia,tegra30-pcie")) {
+	if (of_device_is_compatible(np, "nvidia,tegra124-pcie")) {
+		switch (lanes) {
+		case 0x0000104:
+			dev_info(pcie->dev, "4x1, 1x1 configuration\n");
+			*xbar = AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_X4_X1;
+			return 0;
+
+		case 0x0000102:
+			dev_info(pcie->dev, "2x1, 1x1 configuration\n");
+			*xbar = AFI_PCIE_CONFIG_SM2TMS0_XBAR_CONFIG_X2_X1;
+			return 0;
+		}
+	} else if (of_device_is_compatible(np, "nvidia,tegra30-pcie")) {
 		switch (lanes) {
 		case 0x00000204:
 			dev_info(pcie->dev, "4x1, 2x1 configuration\n");
@@ -1048,6 +1136,13 @@ static bool tegra_pcie_port_check_link(struct tegra_pcie_port *port)
 {
 	unsigned int timeout;
 	unsigned int retries = 2;
+	u32 value;
+
+	/* override presence detection */
+	value = readl(port->base + RP_PRIV_MISC);
+	value &= ~RP_PRIV_MISC_PRSNT_MAP_EP_ABSNT;
+	value |= RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT;
+	writel(value, port->base + RP_PRIV_MISC);
 
 	do {
 		timeout = wait_on_timeout(50 * MSECOND,
@@ -1113,6 +1208,7 @@ static const struct tegra_pcie_soc_data tegra20_pcie_data = {
 	.has_intr_prsnt_sense = false,
 	.has_avdd_supply = false,
 	.has_cml_clk = false,
+	.has_gen2 = false,
 };
 
 static const struct tegra_pcie_soc_data tegra30_pcie_data = {
@@ -1125,10 +1221,26 @@ static const struct tegra_pcie_soc_data tegra30_pcie_data = {
 	.has_intr_prsnt_sense = true,
 	.has_avdd_supply = true,
 	.has_cml_clk = true,
+	.has_gen2 = false,
+};
+
+static const struct tegra_pcie_soc_data tegra124_pcie_data = {
+	.num_ports = 2,
+	.msi_base_shift = 8,
+	.pads_pll_ctl = PADS_PLL_CTL_TEGRA30,
+	.tx_ref_sel = PADS_PLL_CTL_TXCLKREF_BUF_EN,
+	.has_pex_clkreq_en = true,
+	.has_pex_bias_ctrl = true,
+	.has_intr_prsnt_sense = true,
+	.has_cml_clk = true,
+	.has_gen2 = true,
 };
 
 static __maybe_unused struct of_device_id tegra_pcie_of_match[] = {
 	{
+		.compatible = "nvidia,tegra124-pcie",
+		.data = (unsigned long)&tegra124_pcie_data
+	}, {
 		.compatible = "nvidia,tegra30-pcie",
 		.data = (unsigned long)&tegra30_pcie_data
 	}, {
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
