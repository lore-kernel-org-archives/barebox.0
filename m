Delivery-date: Mon, 31 May 2021 09:40:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncWx-0003AS-96
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:40:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncWt-0000OT-T4
	for lore@pengutronix.de; Mon, 31 May 2021 09:40:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWvZG+B9IjXtltZpzNlIWsP6RlB3VjS85FcNnDS3Cwc=; b=tmpy08dUpGGjZT
	bF39NSPnkyr0AB8GEjwQkqVdiUu6gjrefCDP2G19lHpuX9hxlalR/BFAtht3g0PYtaKSUkwp0ZX0M
	AMGqKan35zkJ5ybY0Nv70YHIeEo8TJxXN3bI3FModuF4os9ZeyM9W+FM6kE/ezP3tkArkC7+CPlPU
	SnZ+VBoL0m4OMWJ97l1AGH3ljIaQiODlQJ3+3GVavB4sC9EEDtWnAaW+/Oti8cTabKzmLXSHFx/28
	J9ehJtVnO3+wS/2D8H7aX/tCHs36avHsbSXeoXfU/nkE9dT84/ByPkHnbbyYqz5W3nOfQCHFR0zGL
	Ty8IKmgunixNt1jwsxng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncVc-00BCnz-Ve; Mon, 31 May 2021 07:38:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncVF-00BCch-Ku
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:38:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVE-00080D-4d; Mon, 31 May 2021 09:38:24 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVC-00045e-Tx; Mon, 31 May 2021 09:38:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:38:03 +0200
Message-Id: <20210531073821.15257-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531073821.15257-1-a.fatoum@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_003825_711347_B8045FEA 
X-CRM114-Status: GOOD (  22.61  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/20] net: designware: add support for IP integrated into
 StarFive SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Designware MAC on the StarFive jh7100 needs some special speed
configuration. Match against a new starfive,stmmac compatible that
describes that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/Kconfig               |   8 +++
 drivers/net/Makefile              |   1 +
 drivers/net/designware.c          |   7 +-
 drivers/net/designware.h          |   1 +
 drivers/net/designware_starfive.c | 109 ++++++++++++++++++++++++++++++
 include/soc/starfive/sysmain.h    |  15 ++++
 6 files changed, 138 insertions(+), 3 deletions(-)
 create mode 100644 drivers/net/designware_starfive.c
 create mode 100644 include/soc/starfive/sysmain.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 0d55ea7a3b60..ed018dbf9a67 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -82,6 +82,14 @@ config DRIVER_NET_DESIGNWARE_SOCFPGA
 	  This option enables support for the Synopsys
 	  Designware Core Univesal MAC 10M/100M/1G ethernet IP on SoCFPGA.
 
+config DRIVER_NET_DESIGNWARE_STARFIVE
+	bool "Designware Universal MAC ethernet driver for StarFive platforms"
+	depends on SOC_STARFIVE || COMPILE_TEST
+	select MFD_SYSCON
+	help
+	  This option enables support for the Synopsys
+	  Designware Core Univesal MAC 10M/100M/1G ethernet IP on StarFive.
+
 endif
 
 config DRIVER_NET_DESIGNWARE_EQOS
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 656d45a868a5..0ce310de05c2 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -11,6 +11,7 @@ obj-$(CONFIG_DRIVER_NET_DAVINCI_EMAC)	+= davinci_emac.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE)	+= designware.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_GENERIC) += designware_generic.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA) += designware_socfpga.o
+obj-$(CONFIG_DRIVER_NET_DESIGNWARE_STARFIVE) += designware_starfive.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_EQOS) += designware_eqos.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_STM32) += designware_stm32.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_TEGRA186) += designware_tegra186.o
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 0ee6d3d78ac7..e815d74ce9b8 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -457,11 +457,12 @@ struct dw_eth_dev *dwc_drv_probe(struct device_d *dev)
 	if (ret)
 		return ERR_PTR(ret);
 
-	if (drvdata && drvdata->enh_desc)
+	if (drvdata) {
 		priv->enh_desc = drvdata->enh_desc;
-	else
+		priv->fix_mac_speed = drvdata->fix_mac_speed;
+	} else {
 		dev_warn(dev, "No drvdata specified\n");
-
+	}
 
 	if (pdata) {
 		priv->phy_addr = pdata->phy_addr;
diff --git a/drivers/net/designware.h b/drivers/net/designware.h
index 0a6a6bf1a497..ef3705b1e387 100644
--- a/drivers/net/designware.h
+++ b/drivers/net/designware.h
@@ -35,6 +35,7 @@ struct dw_eth_dev {
 
 struct dw_eth_drvdata {
 	bool enh_desc;
+	void (*fix_mac_speed)(int speed);
 	void *priv;
 };
 
diff --git a/drivers/net/designware_starfive.c b/drivers/net/designware_starfive.c
new file mode 100644
index 000000000000..e7e3fe5fb364
--- /dev/null
+++ b/drivers/net/designware_starfive.c
@@ -0,0 +1,109 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2021 Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/reset.h>
+#include <linux/clk.h>
+#include <mfd/syscon.h>
+#include <soc/starfive/sysmain.h>
+#include "designware.h"
+
+/*
+ * GMAC_GTXCLK
+ * bit         name                 access  default         description
+ * [31]        _gmac_gtxclk enable  RW      0x0             "1:enable; 0:disable"
+ * [30]        reserved             -       0x0             reserved
+ * [29:8]      reserved             -       0x0             reserved
+ * [7:0]       gmac_gtxclk ratio    RW      0x4             divider value
+ *
+ * 1000M: gtxclk@125M => 500/125 = 0x4
+ * 100M:  gtxclk@25M  => 500/25  = 0x14
+ * 10M:   gtxclk@2.5M => 500/2.5 = 0xc8
+ */
+
+#define CLKGEN_BASE                    0x11800000
+#define CLKGEN_GMAC_GTXCLK_OFFSET      0x1EC
+#define CLKGEN_GMAC_GTXCLK_ADDR        (CLKGEN_BASE + CLKGEN_GMAC_GTXCLK_OFFSET)
+
+
+#define CLKGEN_125M_DIV                0x4
+#define CLKGEN_25M_DIV                 0x14
+#define CLKGEN_2_5M_DIV                0xc8
+
+static void dwmac_fixed_speed(int speed)
+{
+	/* TODO: move this into clk driver */
+	void __iomem *addr = IOMEM(CLKGEN_GMAC_GTXCLK_ADDR);
+	u32 value;
+
+	value = readl(addr) & (~0x000000FF);
+
+	switch (speed) {
+	case SPEED_1000: value |= CLKGEN_125M_DIV; break;
+	case SPEED_100:  value |= CLKGEN_25M_DIV;  break;
+	case SPEED_10:   value |= CLKGEN_2_5M_DIV; break;
+	default: return;
+	}
+
+	writel(value, addr);
+}
+
+static struct dw_eth_drvdata starfive_drvdata = {
+	.enh_desc = 1,
+	.fix_mac_speed = dwmac_fixed_speed,
+};
+
+static int starfive_dwc_ether_probe(struct device_d *dev)
+{
+	struct dw_eth_dev *dwc;
+	struct regmap *regmap;
+	int ret;
+	struct clk_bulk_data clks[] = {
+		{ .id = "ptp_ref" },
+		{ .id = "tx" },
+	};
+
+	regmap = syscon_regmap_lookup_by_phandle(dev->device_node, "starfive,sysmain");
+	if (IS_ERR(regmap)) {
+		dev_err(dev, "Could not get starfive,sysmain node\n");
+		return PTR_ERR(regmap);
+	}
+
+	ret = clk_bulk_get(dev, ARRAY_SIZE(clks), clks);
+	if (ret)
+		return ret;
+
+	ret = clk_bulk_enable(ARRAY_SIZE(clks), clks);
+	if (ret < 0)
+		return ret;
+
+	ret = device_reset(dev);
+	if (ret)
+		return ret;
+
+	dwc = dwc_drv_probe(dev);
+	if (IS_ERR(dwc))
+		return PTR_ERR(dwc);
+
+	if (phy_interface_mode_is_rgmii(dwc->interface)) {
+		regmap_update_bits(regmap, SYSMAIN_GMAC_PHY_INTF_SEL, 0x7, 0x1);
+		regmap_write(regmap, SYSMAIN_GMAC_GTXCLK_DLYCHAIN_SEL, 0x4);
+	}
+
+	return 0;
+}
+
+static struct of_device_id starfive_dwc_ether_compatible[] = {
+	{ .compatible = "starfive,stmmac", .data = &starfive_drvdata },
+	{ /* sentinel */ }
+};
+
+static struct driver_d starfive_dwc_ether_driver = {
+	.name = "starfive-designware_eth",
+	.probe = starfive_dwc_ether_probe,
+	.of_compatible = starfive_dwc_ether_compatible,
+};
+device_platform_driver(starfive_dwc_ether_driver);
diff --git a/include/soc/starfive/sysmain.h b/include/soc/starfive/sysmain.h
new file mode 100644
index 000000000000..b58f8d9825fd
--- /dev/null
+++ b/include/soc/starfive/sysmain.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _STARFIVE_SYSMAIN_H_
+#define _STARFIVE_SYSMAIN_H_
+
+#define SYSMAIN_PLL0_REG			0x00
+#define SYSMAIN_PLL1_REG			0x04
+#define SYSMAIN_PLL2_REG			0x08
+#define SYSMAIN_PLLS_STAT			0x0c
+
+#define SYSMAIN_GMAC_PHY_INTF_SEL		0x70
+#define SYSMAIN_GMAC_GTXCLK_DLYCHAIN_SEL	0xC8
+
+
+#endif //_SYSCON_SYSMAIN_CTRL_MACRO_H_
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

