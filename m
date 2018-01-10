Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZBX3-00073M-Jz
 for barebox@lists.infradead.org; Wed, 10 Jan 2018 08:15:45 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 10 Jan 2018 09:14:18 +0100
Message-Id: <20180110081420.10722-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20180110081420.10722-1-s.trumtrar@pengutronix.de>
References: <20180110081420.10722-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/4] net: add SoCFPGA-specific designware driver
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Add a driver for the SoCFPGA-specific version of the designware ethernet ip core.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 .../include/mach/cyclone5-system-manager.h         |   3 +
 drivers/net/Kconfig                                |   7 +
 drivers/net/Makefile                               |   1 +
 drivers/net/designware_socfpga.c                   | 184 +++++++++++++++++++++
 4 files changed, 195 insertions(+)
 create mode 100644 drivers/net/designware_socfpga.c

diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-system-manager.h b/arch/arm/mach-socfpga/include/mach/cyclone5-system-manager.h
index 9efc37a4dcfa..24f52effd886 100644
--- a/arch/arm/mach-socfpga/include/mach/cyclone5-system-manager.h
+++ b/arch/arm/mach-socfpga/include/mach/cyclone5-system-manager.h
@@ -65,4 +65,7 @@ void socfpga_sysmgr_pinmux_init(unsigned long *sys_mgr_init_table, int num);
 #define SYSMGR_EMACGRP_CTRL_PHYSEL1_LSB 2
 #define SYSMGR_EMACGRP_CTRL_PHYSEL_MASK 0x00000003
 
+#define SYSMGR_FPGAGRP_MODULE  0x00000028
+#define SYSMGR_FPGAGRP_MODULE_EMAC 0x00000004
+
 #endif /* _SYSTEM_MANAGER_H_ */
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 36b257f43e8a..09676b3d60b6 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -79,6 +79,13 @@ config DRIVER_NET_DESIGNWARE_GENERIC
 	  This option enables support for the Synopsys
 	  Designware Core Univesal MAC 10M/100M/1G ethernet IP on SoCFPGA.
 
+config DRIVER_NET_DESIGNWARE_SOCFPGA
+	bool "Designware Universal MAC ethernet driver for SoCFPGA platforms"
+	depends on ARCH_SOCFPGA
+	help
+	  This option enables support for the Synopsys
+	  Designware Core Univesal MAC 10M/100M/1G ethernet IP on SoCFPGA.
+
 endif
 
 config DRIVER_NET_DM9K
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index eb07434ab42c..304bbba02d16 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -10,6 +10,7 @@ obj-$(CONFIG_DRIVER_NET_CPSW)		+= cpsw.o
 obj-$(CONFIG_DRIVER_NET_DAVINCI_EMAC)	+= davinci_emac.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE)	+= designware.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_GENERIC) += designware_generic.o
+obj-$(CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA) += designware_socfpga.o
 obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
 obj-$(CONFIG_DRIVER_NET_E1000)		+= e1000/regio.o e1000/main.o e1000/eeprom.o
 obj-$(CONFIG_DRIVER_NET_ENC28J60)	+= enc28j60.o
diff --git a/drivers/net/designware_socfpga.c b/drivers/net/designware_socfpga.c
new file mode 100644
index 000000000000..154c38f9a168
--- /dev/null
+++ b/drivers/net/designware_socfpga.c
@@ -0,0 +1,184 @@
+/*
+ * (C) Copyright 2010
+ * Vipin Kumar, ST Micoelectronics, vipin.kumar@st.com.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+/*
+ * Designware ethernet IP driver for u-boot
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <net.h>
+#include <of_net.h>
+#include <linux/reset.h>
+#include <mach/cyclone5-system-manager.h>
+#include <mfd/syscon.h>
+#include "designware.h"
+
+#define SYSMGR_EMACGRP_CTRL_PTP_REF_CLK_MASK 0x00000010
+
+struct socfpga_dwc_dev {
+	struct dw_eth_dev *priv;
+	u32		   reg_offset;
+	u32		   reg_shift;
+	void __iomem	  *sys_mgr_base;
+	bool		   f2h_ptp_ref_clk;
+};
+
+static int socfpga_dwc_set_phy_mode(struct socfpga_dwc_dev *dwc_dev)
+{
+	struct dw_eth_dev *eth_dev = dwc_dev->priv;
+	int phymode = eth_dev->interface;
+	u32 reg_offset = dwc_dev->reg_offset;
+	u32 reg_shift = dwc_dev->reg_shift;
+	u32 ctrl, val;
+
+	switch (phymode) {
+	case PHY_INTERFACE_MODE_RGMII:
+	case PHY_INTERFACE_MODE_RGMII_ID:
+		val = SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII;
+		break;
+	case PHY_INTERFACE_MODE_MII:
+	case PHY_INTERFACE_MODE_GMII:
+	case PHY_INTERFACE_MODE_SGMII:
+		val = SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII;
+		break;
+	default:
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
+		ctrl |= SYSMGR_EMACGRP_CTRL_PTP_REF_CLK_MASK << (reg_shift / 2);
+		module = readl(dwc_dev->sys_mgr_base + SYSMGR_FPGAGRP_MODULE);
+		module |= (SYSMGR_FPGAGRP_MODULE_EMAC << (reg_shift / 2));
+
+		writel(module, dwc_dev->sys_mgr_base + SYSMGR_FPGAGRP_MODULE);
+	} else {
+		ctrl &= ~(SYSMGR_EMACGRP_CTRL_PTP_REF_CLK_MASK << (reg_shift / 2));
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
+static int socfpga_dwc_probe_dt(struct device_d *dev, struct socfpga_dwc_dev *priv)
+{
+	u32 reg_offset, reg_shift;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_OFTREE))
+		return -ENODEV;
+
+	ret = of_property_read_u32_index(dev->device_node, "altr,sysmgr-syscon",
+					 1, &reg_offset);
+	if (ret) {
+		dev_err(dev, "Could not read reg_offset from sysmgr-syscon! Please update the devicetree.\n");
+
+		return -EINVAL;
+	}
+
+	ret = of_property_read_u32_index(dev->device_node, "altr,sysmgr-syscon",
+					 2, &reg_shift);
+	if (ret) {
+		dev_err(dev, "Could not read reg_shift from sysmgr-syscon! Please update the devicetree.\n");
+		return -EINVAL;
+	}
+
+	priv->f2h_ptp_ref_clk = of_property_read_bool(dev->device_node, "altr,f2h_ptp_ref_clk");
+
+	priv->reg_offset = reg_offset;
+	priv->reg_shift = reg_shift;
+
+	return 0;
+}
+
+static int socfpga_dwc_ether_probe(struct device_d *dev)
+{
+	struct socfpga_dwc_dev *dwc_dev;
+	struct dw_eth_dev *priv;
+	int ret;
+
+	dwc_dev = xzalloc(sizeof(*dwc_dev));
+
+	priv = dwc_drv_probe(dev);
+	if (IS_ERR(priv))
+		return PTR_ERR(priv);
+
+	priv->rst = reset_control_get(dev, NULL);
+	if (IS_ERR(priv->rst))
+		dev_warn(dev, "No reset lines.\n");
+
+	dwc_dev->priv = priv;
+
+	dwc_dev->sys_mgr_base = syscon_base_lookup_by_phandle(dev->device_node,
+							      "altr,sysmgr-syscon");
+	if (IS_ERR(dwc_dev->sys_mgr_base)) {
+		dev_err(dev, "Could not get sysmgr-syscon node\n");
+		return PTR_ERR(dwc_dev->sys_mgr_base);
+	}
+
+	ret = socfpga_dwc_probe_dt(dev, dwc_dev);
+	if (ret)
+		return ret;
+
+	socfpga_dwc_set_phy_mode(dwc_dev);
+
+	return 0;
+}
+
+static struct dw_eth_drvdata socfpga_stmmac_drvdata = {
+	.enh_desc = 1,
+};
+
+static __maybe_unused struct of_device_id socfpga_dwc_ether_compatible[] = {
+	{
+		.compatible = "altr,socfpga-stmmac",
+		.data = &socfpga_stmmac_drvdata,
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d socfpga_dwc_ether_driver = {
+	.name = "socfpga_designware_eth",
+	.probe = socfpga_dwc_ether_probe,
+	.of_compatible = DRV_OF_COMPAT(socfpga_dwc_ether_compatible),
+};
+device_platform_driver(socfpga_dwc_ether_driver);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
