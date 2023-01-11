Delivery-date: Wed, 11 Jan 2023 19:24:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFflt-0093nV-C3
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 19:24:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFflr-0002d2-AT
	for lore@pengutronix.de; Wed, 11 Jan 2023 19:24:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qQWgZa+K0lbCzz05dMIlaYRsJmEYPcG5m2VCVqNMbGU=; b=rnX4mXDkOC38lc7BqXl7vJiGWy
	WFoVJ1a69eBvFekQdR8TwQ8NWxAeJdz6KhFnoX+iga+3cw3UV0YGqpwK5zVz72UWi0qUwguxkFFsc
	A8Ji+Jj57R92POgiyUPEi5r1TDj8hhcOR+qn8NBu82qmL4YyfyRuNkb9rV986Y8Ntvtpm/LqNSgYG
	17xgNtthO3X7SxhKHmOWggD1ECdR5iS/H9KA+L5d5UZlRk7c7jQAQbaLV2ZNWCp1fLpHyHz9SHTKf
	E039bUrxwtlUV2f7yX+SWePK655VL0suQZjv2Q24euyD7UiiM+0DsZi9D2fcak97rdvhcmcDJqfST
	6grSK+CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFfkV-00CbHP-5Z; Wed, 11 Jan 2023 18:22:55 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFfkK-00CbCt-Ua
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 18:22:47 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 4672CE7400A; Wed, 11 Jan 2023 19:22:09 +0100 (CET)
Received: from astat.fritz.box (a89-183-231-133.net-htp.de [89.183.231.133])
	by lynxeye.de (Postfix) with ESMTPA id 48377E74012
	for <barebox@lists.infradead.org>; Wed, 11 Jan 2023 19:22:06 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 11 Jan 2023 19:21:57 +0100
Message-Id: <20230111182157.1702865-3-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111182157.1702865-1-l.stach@pengutronix.de>
References: <20230111182157.1702865-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_102245_318251_9C32BA62 
X-CRM114-Status: GOOD (  19.17  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] net: eqos: add i.MX8MP support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds the platform glue for the Designware EQOS ethernet interface
as implemented on the i.MX8MP SoC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/Kconfig           |   8 ++
 drivers/net/Makefile          |   1 +
 drivers/net/designware_imx8.c | 194 ++++++++++++++++++++++++++++++++++
 3 files changed, 203 insertions(+)
 create mode 100644 drivers/net/designware_imx8.c

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 2dafd9c7a8b9..e871b7e11af7 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -107,6 +107,14 @@ config DRIVER_NET_DESIGNWARE_EQOS
 	  This option enables support for the Synopsys
 	  Designware Ethernet Quality-of-Service (GMAC4).
 
+config DRIVER_NET_DESIGNWARE_IMX8
+	bool "Designware EQOS i.MX8 Ethernet driver"
+	depends on HAS_DMA && COMMON_CLK && OFTREE && (ARCH_IMX8M || COMPILE_TEST)
+	select DRIVER_NET_DESIGNWARE_EQOS
+	help
+	  This option enables support for the Designware EQOS MAC implemented on
+	  the NXP i.MX8 SoCs.
+
 config DRIVER_NET_DESIGNWARE_STM32
 	bool "STM32 Designware Ethernet driver"
 	depends on HAS_DMA && COMMON_CLK && OFTREE && (ARCH_STM32MP || COMPILE_TEST)
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 7ff330a2bf42..6a44a12bf88a 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -15,6 +15,7 @@ obj-$(CONFIG_DRIVER_NET_DESIGNWARE_GENERIC) += designware_generic.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA) += designware_socfpga.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_STARFIVE) += designware_starfive.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_EQOS) += designware_eqos.o
+obj-$(CONFIG_DRIVER_NET_DESIGNWARE_IMX8) += designware_imx8.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_STM32) += designware_stm32.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_TEGRA186) += designware_tegra186.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP) += designware_rockchip.o
diff --git a/drivers/net/designware_imx8.c b/drivers/net/designware_imx8.c
new file mode 100644
index 000000000000..e64fc57c3e13
--- /dev/null
+++ b/drivers/net/designware_imx8.c
@@ -0,0 +1,194 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <init.h>
+#include <net.h>
+#include <regmap.h>
+#include <mfd/syscon.h>
+#include <linux/clk.h>
+
+#include "designware_eqos.h"
+
+#define GPR_ENET_QOS_INTF_MODE_MASK	GENMASK(21, 16)
+#define GPR_ENET_QOS_INTF_SEL_MII	(0x0 << 16)
+#define GPR_ENET_QOS_INTF_SEL_RGMII	(0x1 << 16)
+#define GPR_ENET_QOS_INTF_SEL_RMII	(0x4 << 16)
+#define GPR_ENET_QOS_CLK_GEN_EN		BIT(19)
+#define GPR_ENET_QOS_CLK_TX_CLK_SEL	BIT(20)
+#define GPR_ENET_QOS_RGMII_EN		BIT(21)
+
+
+struct eqos_imx8_priv {
+	struct device_d *dev;
+	struct clk_bulk_data *clks;
+	int num_clks;
+	struct regmap *intf_regmap;
+	u32 intf_reg_off;
+	bool rmii_refclk_ext;
+};
+
+enum { CLK_STMMACETH, CLK_PCLK, CLK_PTP_REF, CLK_TX};
+static const struct clk_bulk_data imx8_clks[] = {
+	[CLK_STMMACETH] = { .id = "stmmaceth" },
+	[CLK_PCLK]      = { .id = "pclk" },
+	[CLK_PTP_REF]   = { .id = "ptp_ref" },
+	[CLK_TX]        = { .id = "tx" },
+};
+
+static unsigned long eqos_get_csr_clk_rate_imx8(struct eqos *eqos)
+{
+	struct eqos_imx8_priv *priv = eqos->priv;
+
+	return clk_get_rate(priv->clks[CLK_PCLK].clk);
+}
+
+
+static void eqos_adjust_link_imx8(struct eth_device *edev)
+{
+	struct eqos *eqos = edev->priv;
+	struct eqos_imx8_priv *priv = eqos->priv;
+	unsigned long rate;
+	int ret;
+
+	switch (edev->phydev->speed) {
+	case SPEED_10:
+		rate = 2500000;
+		break;
+	case SPEED_100:
+		rate = 25000000;
+		break;
+	case SPEED_1000:
+		rate = 125000000;
+		break;
+	default:
+		dev_err(priv->dev, "unknown speed value for GMAC speed=%d",
+			edev->phydev->speed);
+		return;
+	}
+
+	ret = clk_set_rate(priv->clks[CLK_TX].clk, rate);
+	if (ret)
+		dev_err(priv->dev, "set TX clk rate %ld failed %d\n",
+			rate, ret);
+
+	eqos_adjust_link(edev);
+}
+
+static void eqos_imx8_set_interface_mode(struct eqos *eqos)
+{
+	struct eqos_imx8_priv *priv = eqos->priv;
+	struct device_node *np = priv->dev->device_node;
+	int val;
+
+	if (!of_device_is_compatible(np, "nxp,imx8mp-dwmac-eqos"))
+		return;
+
+	switch (eqos->interface) {
+	case PHY_INTERFACE_MODE_MII:
+		val = GPR_ENET_QOS_INTF_SEL_MII;
+		break;
+	case PHY_INTERFACE_MODE_RMII:
+		val = GPR_ENET_QOS_INTF_SEL_RMII;
+		val |= (priv->rmii_refclk_ext ? 0 : GPR_ENET_QOS_CLK_TX_CLK_SEL);
+		break;
+	case PHY_INTERFACE_MODE_RGMII:
+	case PHY_INTERFACE_MODE_RGMII_ID:
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		val = GPR_ENET_QOS_INTF_SEL_RGMII |
+		      GPR_ENET_QOS_RGMII_EN;
+		break;
+	default:
+		dev_err(priv->dev, "no valid interface mode found!\n");
+		return;
+	}
+
+	val |= GPR_ENET_QOS_CLK_GEN_EN;
+
+	regmap_update_bits(priv->intf_regmap, priv->intf_reg_off,
+			   GPR_ENET_QOS_INTF_MODE_MASK, val);
+}
+
+static int eqos_init_imx8(struct device_d *dev, struct eqos *eqos)
+{
+	struct device_node *np = dev->device_node;
+	struct eqos_imx8_priv *priv = eqos->priv;
+	int ret;
+
+	priv->dev = dev;
+
+	if (of_get_property(np, "snps,rmii_refclk_ext", NULL))
+		priv->rmii_refclk_ext = true;
+
+	if (of_device_is_compatible(np, "nxp,imx8mp-dwmac-eqos")) {
+		priv->intf_regmap = syscon_regmap_lookup_by_phandle(np, "intf_mode");
+		if (IS_ERR(priv->intf_regmap))
+			return PTR_ERR(priv->intf_regmap);
+
+		ret = of_property_read_u32_index(np, "intf_mode", 1, &priv->intf_reg_off);
+		if (ret) {
+			dev_err(dev, "Can't get intf mode reg offset (%d)\n", ret);
+			return ret;
+		}
+	}
+
+	priv->num_clks = ARRAY_SIZE(imx8_clks);
+	priv->clks = xmalloc(priv->num_clks * sizeof(*priv->clks));
+	memcpy(priv->clks, imx8_clks, sizeof imx8_clks);
+
+	ret = clk_bulk_get(dev, priv->num_clks, priv->clks);
+	if (ret) {
+		dev_err(dev, "Failed to get clks: %s\n", strerror(-ret));
+		return ret;
+	}
+
+	ret = clk_bulk_enable(priv->num_clks, priv->clks);
+	if (ret) {
+		dev_err(dev, "Failed to enable clks: %s\n", strerror(-ret));
+		return ret;
+	}
+
+	eqos_imx8_set_interface_mode(eqos);
+
+	return 0;
+}
+
+static struct eqos_ops imx8_ops = {
+	.init = eqos_init_imx8,
+	.get_ethaddr = eqos_get_ethaddr,
+	.set_ethaddr = eqos_set_ethaddr,
+	.adjust_link = eqos_adjust_link_imx8,
+	.get_csr_clk_rate = eqos_get_csr_clk_rate_imx8,
+
+	.clk_csr = EQOS_MDIO_ADDR_CR_250_300,
+	.config_mac = EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_DCB,
+};
+
+static int eqos_probe_imx8(struct device_d *dev)
+{
+	return eqos_probe(dev, &imx8_ops, xzalloc(sizeof(struct eqos_imx8_priv)));
+}
+
+static void eqos_remove_imx8(struct device_d *dev)
+{
+	struct eqos *eqos = dev->priv;
+	struct eqos_imx8_priv *priv = eqos->priv;
+
+	eqos_remove(dev);
+
+	clk_bulk_disable(priv->num_clks, priv->clks);
+	clk_bulk_put(priv->num_clks, priv->clks);
+}
+
+static __maybe_unused struct of_device_id eqos_imx8_ids[] = {
+	{ .compatible = "nxp,imx8mp-dwmac-eqos"},
+	{ /* sentinel */ }
+};
+
+static struct driver_d eqos_imx8_driver = {
+	.name = "eqos-imx8",
+	.probe = eqos_probe_imx8,
+	.remove = eqos_remove_imx8,
+	.of_compatible = DRV_OF_COMPAT(eqos_imx8_ids),
+};
+device_platform_driver(eqos_imx8_driver);
-- 
2.39.0



