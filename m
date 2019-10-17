Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL3D4-0002AZ-9D
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 10:40:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1iL3D1-0006Cw-CY
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 12:40:43 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1iL3D1-0002l9-3a
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 12:40:43 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 17 Oct 2019 12:40:39 +0200
Message-Id: <20191017104041.31923-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/3] net: designware: socfpga: fix phy setup for Arria10
To: Barebox List <barebox@lists.infradead.org>

Barebox-version of the Linux v5.2 patch:

    40ae25505fe834648ce4aa70b073ee934942bfdb
    net: stmmac: socfpga: fix phy and ptp_ref setup for Arria10/Stratix10

    On the Arria10, Agilex, and Stratix10 SoC, there are a few differences from
    the Cyclone5 and Arria5:
     - The emac PHY setup bits are in separate registers.
     - The PTP reference clock select mask is different.
     - The register to enable the emac signal from FPGA is different.

    Thus, this patch creates a separate function for setting the phy modes on
    Arria10/Agilex/Stratix10. The separation is based a new DTS binding:
    "altr,socfpga-stmmac-a10-s10".

    Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
    Signed-off-by: David S. Miller <davem@davemloft.net>

The new DTS binding is already part of v2019.10.0 and the driver doesn't
probe on Arria10 without the new binding introduced in this patch.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/designware.h         |   1 +
 drivers/net/designware_socfpga.c | 133 +++++++++++++++++++++++++++----
 2 files changed, 118 insertions(+), 16 deletions(-)

diff --git a/drivers/net/designware.h b/drivers/net/designware.h
index 305f674bf064..0a6a6bf1a497 100644
--- a/drivers/net/designware.h
+++ b/drivers/net/designware.h
@@ -35,6 +35,7 @@ struct dw_eth_dev {
 
 struct dw_eth_drvdata {
 	bool enh_desc;
+	void *priv;
 };
 
 struct dw_eth_dev *dwc_drv_probe(struct device_d *dev);
diff --git a/drivers/net/designware_socfpga.c b/drivers/net/designware_socfpga.c
index 77157c2b511f..ce3ac38ebe87 100644
--- a/drivers/net/designware_socfpga.c
+++ b/drivers/net/designware_socfpga.c
@@ -14,11 +14,27 @@
 #include <net.h>
 #include <of_net.h>
 #include <linux/reset.h>
-#include <mach/cyclone5-system-manager.h>
 #include <mfd/syscon.h>
 #include "designware.h"
 
-#define SYSMGR_EMACGRP_CTRL_PTP_REF_CLK_MASK 0x00000010
+#define SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII 	0x0
+#define SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII		0x1
+#define SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RMII		0x2
+#define SYSMGR_EMACGRP_CTRL_PHYSEL0_LSB			0
+#define SYSMGR_EMACGRP_CTRL_PHYSEL1_LSB			2
+#define SYSMGR_EMACGRP_CTRL_PHYSEL_MASK			0x00000003
+#define SYSMGR_EMACGRP_CTRL_PTP_REF_CLK_MASK		0x00000010
+#define SYSMGR_GEN10_EMACGRP_CTRL_PTP_REF_CLK_MASK	0x00000100
+
+#define SYSMGR_FPGAGRP_MODULE				0x00000028
+#define SYSMGR_FPGAGRP_MODULE_EMAC			0x00000004
+#define SYSMGR_FPGAINTF_EMAC_REG			0x00000070
+#define SYSMGR_FPGAINTF_EMAC_BIT			0x1
+
+struct socfpga_dwc_dev;
+struct socfpga_dwmac_ops {
+	int (*set_phy_mode)(struct socfpga_dwc_dev *dwmac_priv);
+};
 
 struct socfpga_dwc_dev {
 	struct dw_eth_dev *priv;
@@ -26,27 +42,36 @@ struct socfpga_dwc_dev {
 	u32		   reg_shift;
 	void __iomem	  *sys_mgr_base;
 	bool		   f2h_ptp_ref_clk;
+	const struct	   socfpga_dwmac_ops *ops;
 };
 
-static int socfpga_dwc_set_phy_mode(struct socfpga_dwc_dev *dwc_dev)
+static int socfpga_set_phy_mode_common(int phymode, u32 *val)
 {
-	struct dw_eth_dev *eth_dev = dwc_dev->priv;
-	int phymode = eth_dev->interface;
-	u32 reg_offset = dwc_dev->reg_offset;
-	u32 reg_shift = dwc_dev->reg_shift;
-	u32 ctrl, val;
-
 	switch (phymode) {
 	case PHY_INTERFACE_MODE_RGMII:
 	case PHY_INTERFACE_MODE_RGMII_ID:
-		val = SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII;
+		*val = SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII;
 		break;
 	case PHY_INTERFACE_MODE_MII:
 	case PHY_INTERFACE_MODE_GMII:
 	case PHY_INTERFACE_MODE_SGMII:
-		val = SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII;
+		*val = SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII;
 		break;
 	default:
+		return -EINVAL;
+	}
+	return 0;
+};
+
+static int socfpga_gen5_set_phy_mode(struct socfpga_dwc_dev *dwc_dev)
+{
+	struct dw_eth_dev *eth_dev = dwc_dev->priv;
+	int phymode = eth_dev->interface;
+	u32 reg_offset = dwc_dev->reg_offset;
+	u32 reg_shift = dwc_dev->reg_shift;
+	u32 ctrl, val;
+
+	if (socfpga_set_phy_mode_common(phymode, &val)) {
 		dev_err(&eth_dev->netdev.dev, "bad phy mode %d\n", phymode);
 		return -EINVAL;
 	}
@@ -85,6 +110,54 @@ static int socfpga_dwc_set_phy_mode(struct socfpga_dwc_dev *dwc_dev)
 	return 0;
 }
 
+static int socfpga_gen10_set_phy_mode(struct socfpga_dwc_dev *dwc_dev)
+{
+	struct dw_eth_dev *eth_dev = dwc_dev->priv;
+	int phymode = eth_dev->interface;
+	u32 reg_offset = dwc_dev->reg_offset;
+	u32 reg_shift = dwc_dev->reg_shift;
+	u32 ctrl, val;
+
+	if (socfpga_set_phy_mode_common(phymode, &val)) {
+		dev_err(&eth_dev->netdev.dev, "bad phy mode %d\n", phymode);
+		return -EINVAL;
+	}
+
+	/* Assert reset to the enet controller before changing the phy mode */
+	if (eth_dev->rst)
+		reset_control_assert(eth_dev->rst);
+
+	ctrl = readl(dwc_dev->sys_mgr_base + reg_offset);
+	ctrl &= ~(SYSMGR_EMACGRP_CTRL_PHYSEL_MASK << reg_shift);
+	ctrl |= val << reg_shift;
+
+	if (dwc_dev->f2h_ptp_ref_clk ||
+	    phymode == PHY_INTERFACE_MODE_MII ||
+	    phymode == PHY_INTERFACE_MODE_GMII ||
+	    phymode == PHY_INTERFACE_MODE_SGMII) {
+		u32 module;
+
+		ctrl |= SYSMGR_GEN10_EMACGRP_CTRL_PTP_REF_CLK_MASK;
+		module = readl(dwc_dev->sys_mgr_base + SYSMGR_FPGAINTF_EMAC_REG);
+		module |= (SYSMGR_FPGAINTF_EMAC_BIT << reg_shift);
+
+		writel(module, dwc_dev->sys_mgr_base + SYSMGR_FPGAINTF_EMAC_REG);
+	} else {
+		ctrl &= ~SYSMGR_GEN10_EMACGRP_CTRL_PTP_REF_CLK_MASK;
+	}
+
+	writel(ctrl, dwc_dev->sys_mgr_base + reg_offset);
+
+	/* Deassert reset for the phy configuration to be sampled by
+	 * the enet controller, and operation to start in requested mode
+	 */
+	if (eth_dev->rst)
+		reset_control_deassert(eth_dev->rst);
+
+	return 0;
+}
+
+
 static int socfpga_dwc_probe_dt(struct device_d *dev, struct socfpga_dwc_dev *priv)
 {
 	u32 reg_offset, reg_shift;
@@ -120,11 +193,21 @@ static int socfpga_dwc_ether_probe(struct device_d *dev)
 {
 	struct socfpga_dwc_dev *dwc_dev;
 	struct dw_eth_dev *priv;
+	struct dw_eth_drvdata *drvdata;
 	int ret;
 
 	dwc_dev = xzalloc(sizeof(*dwc_dev));
 
-	priv = dwc_drv_probe(dev);
+	ret = dev_get_drvdata(dev, (const void **)&drvdata);
+	if (ret)
+		return ret;
+
+	if (drvdata && drvdata->priv)
+		dwc_dev->ops = (struct socfpga_dwmac_ops *)drvdata->priv;
+	else
+		return -EINVAL;
+
+        priv = dwc_drv_probe(dev);
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
@@ -145,18 +228,36 @@ static int socfpga_dwc_ether_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	return socfpga_dwc_set_phy_mode(dwc_dev);
+	return dwc_dev->ops->set_phy_mode(dwc_dev);
 }
 
-static struct dw_eth_drvdata socfpga_stmmac_drvdata = {
+static struct socfpga_dwmac_ops socfpga_gen5_ops = {
+	.set_phy_mode = socfpga_gen5_set_phy_mode,
+};
+
+static const struct dw_eth_drvdata socfpga_gen5_drvdata = {
 	.enh_desc = 1,
+	.priv = &socfpga_gen5_ops,
+};
+
+static struct socfpga_dwmac_ops socfpga_gen10_ops = {
+	.set_phy_mode = socfpga_gen10_set_phy_mode,
+};
+static const struct dw_eth_drvdata socfpga_gen10_drvdata = {
+	.enh_desc = 1,
+	.priv = &socfpga_gen10_ops,
 };
 
 static __maybe_unused struct of_device_id socfpga_dwc_ether_compatible[] = {
 	{
 		.compatible = "altr,socfpga-stmmac",
-		.data = &socfpga_stmmac_drvdata,
-	}, {
+		.data = &socfpga_gen5_drvdata,
+	},
+	{
+		.compatible = "altr,socfpga-stmmac-a10-s10",
+		.data = &socfpga_gen10_drvdata,
+	},
+	{
 		/* sentinel */
 	}
 };
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
