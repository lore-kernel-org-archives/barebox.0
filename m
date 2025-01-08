Delivery-date: Wed, 08 Jan 2025 16:32:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVY39-000nFx-0C
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 16:32:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVY38-0006C2-Em
	for lore@pengutronix.de; Wed, 08 Jan 2025 16:32:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/wrVkLpR1eaInz1bo3SBPuHu4XZyn6NrkjZrwn/8hwQ=; b=bs4uiWQ7l7/BP6NHVScI8eTq1d
	0m18A9u8g50UZ3UxclfMbeYunFe3kieO9XXFOxk/7y53+J5/8O/jKtEAZkE2kuxyz5wUiTW9akSyT
	n2lCnS0TXSFLww/UXDeNTZHjqXpbqECoFWituuhP5t80Brt+YrCTEd2OcmUM3o4MtOxypxHRm7v3f
	/cNqpcCKqQJuY+JNLA2fKUFQ0tWc3Bi2PhgQEft3m5teGtzOFbZMD8UFnQH8qZXwFuV2pjLtui9sw
	disPCceu+ioBpeQnKF9eVpvPfWRSeRl8mrTmeP6KFCuQ1bcO3n/4GSzibV7SsIH9z+HZMCC5bSlju
	zFpE/t1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVY2h-00000008yrP-2MSY;
	Wed, 08 Jan 2025 15:32:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVY2c-00000008ypo-3mZy
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 15:32:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVY2b-0005xY-O4; Wed, 08 Jan 2025 16:32:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVY2a-007Xp0-2X;
	Wed, 08 Jan 2025 16:32:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVY2b-00226F-1T;
	Wed, 08 Jan 2025 16:32:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  8 Jan 2025 16:32:16 +0100
Message-Id: <20250108153216.484573-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_073221_101966_1A3F2AA4 
X-CRM114-Status: GOOD (  26.30  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: dwc3: add am62 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds the glue code necessary for the DWC3 controller on TI AM62x
SoCs. The code is based on the corresponding Linux driver as of
Linux-6.13-rc1.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/dwc3/Kconfig     |  10 ++
 drivers/usb/dwc3/Makefile    |   1 +
 drivers/usb/dwc3/dwc3-am62.c | 278 +++++++++++++++++++++++++++++++++++
 3 files changed, 289 insertions(+)
 create mode 100644 drivers/usb/dwc3/dwc3-am62.c

diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
index 721c0dec63..ef1f83bef7 100644
--- a/drivers/usb/dwc3/Kconfig
+++ b/drivers/usb/dwc3/Kconfig
@@ -48,4 +48,14 @@ config USB_DWC3_OF_SIMPLE
 	 Currently supports Xilinx and Qualcomm DWC USB3 IP.
 	 Say 'Y' or 'M' if you have one such device.
 
+config USB_DWC3_AM62
+	tristate "Texas Instruments AM62 Platforms"
+	depends on ARCH_K3 || COMPILE_TEST
+	default USB_DWC3
+	help
+	  Support TI's AM62 platforms with DesignWare Core USB3 IP.
+	  The Designware Core USB3 IP is programmed to operate in
+	  in USB 2.0 mode only.
+	  Say 'Y' or 'M' here if you have one such device
+
 endif
diff --git a/drivers/usb/dwc3/Makefile b/drivers/usb/dwc3/Makefile
index 6672913333..30097da367 100644
--- a/drivers/usb/dwc3/Makefile
+++ b/drivers/usb/dwc3/Makefile
@@ -13,3 +13,4 @@ ifneq ($(filter y,$(CONFIG_USB_DWC3_GADGET) $(CONFIG_USB_DWC3_DUAL_ROLE)),)
 endif
 
 obj-$(CONFIG_USB_DWC3_OF_SIMPLE)	+= dwc3-of-simple.o
+obj-$(CONFIG_USB_DWC3_AM62)		+= dwc3-am62.o
diff --git a/drivers/usb/dwc3/dwc3-am62.c b/drivers/usb/dwc3/dwc3-am62.c
new file mode 100644
index 0000000000..fd7f5e54d2
--- /dev/null
+++ b/drivers/usb/dwc3/dwc3-am62.c
@@ -0,0 +1,278 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * dwc3-am62.c - TI specific Glue layer for AM62 DWC3 USB Controller
+ *
+ * Copyright (C) 2022 Texas Instruments Incorporated - https://www.ti.com
+ */
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <of.h>
+#include <linux/clk.h>
+#include <linux/regmap.h>
+#include <linux/pinctrl/consumer.h>
+#include <linux/device.h>
+#include <mfd/syscon.h>
+
+#include "core.h"
+
+/* USB WRAPPER register offsets */
+#define USBSS_PID			0x0
+#define USBSS_OVERCURRENT_CTRL		0x4
+#define USBSS_PHY_CONFIG		0x8
+#define USBSS_PHY_TEST			0xc
+#define USBSS_CORE_STAT			0x14
+#define USBSS_HOST_VBUS_CTRL		0x18
+#define USBSS_MODE_CONTROL		0x1c
+#define USBSS_WAKEUP_CONFIG		0x30
+#define USBSS_WAKEUP_STAT		0x34
+#define USBSS_OVERRIDE_CONFIG		0x38
+#define USBSS_IRQ_MISC_STATUS_RAW	0x430
+#define USBSS_IRQ_MISC_STATUS		0x434
+#define USBSS_IRQ_MISC_ENABLE_SET	0x438
+#define USBSS_IRQ_MISC_ENABLE_CLR	0x43c
+#define USBSS_IRQ_MISC_EOI		0x440
+#define USBSS_INTR_TEST			0x490
+#define USBSS_VBUS_FILTER		0x614
+#define USBSS_VBUS_STAT			0x618
+#define USBSS_DEBUG_CFG			0x708
+#define USBSS_DEBUG_DATA		0x70c
+#define USBSS_HOST_HUB_CTRL		0x714
+
+/* PHY CONFIG register bits */
+#define USBSS_PHY_VBUS_SEL_MASK		GENMASK(2, 1)
+#define USBSS_PHY_VBUS_SEL_SHIFT	1
+#define USBSS_PHY_LANE_REVERSE		BIT(0)
+
+/* CORE STAT register bits */
+#define USBSS_CORE_OPERATIONAL_MODE_MASK	GENMASK(13, 12)
+#define USBSS_CORE_OPERATIONAL_MODE_SHIFT	12
+
+/* MODE CONTROL register bits */
+#define USBSS_MODE_VALID	BIT(0)
+
+/* WAKEUP CONFIG register bits */
+#define USBSS_WAKEUP_CFG_OVERCURRENT_EN	BIT(3)
+#define USBSS_WAKEUP_CFG_LINESTATE_EN	BIT(2)
+#define USBSS_WAKEUP_CFG_SESSVALID_EN	BIT(1)
+#define USBSS_WAKEUP_CFG_VBUSVALID_EN	BIT(0)
+
+#define USBSS_WAKEUP_CFG_ALL	(USBSS_WAKEUP_CFG_VBUSVALID_EN | \
+				 USBSS_WAKEUP_CFG_SESSVALID_EN | \
+				 USBSS_WAKEUP_CFG_LINESTATE_EN | \
+				 USBSS_WAKEUP_CFG_OVERCURRENT_EN)
+
+#define USBSS_WAKEUP_CFG_NONE	0
+
+/* WAKEUP STAT register bits */
+#define USBSS_WAKEUP_STAT_OVERCURRENT	BIT(4)
+#define USBSS_WAKEUP_STAT_LINESTATE	BIT(3)
+#define USBSS_WAKEUP_STAT_SESSVALID	BIT(2)
+#define USBSS_WAKEUP_STAT_VBUSVALID	BIT(1)
+#define USBSS_WAKEUP_STAT_CLR		BIT(0)
+
+/* IRQ_MISC_STATUS_RAW register bits */
+#define USBSS_IRQ_MISC_RAW_VBUSVALID	BIT(22)
+#define USBSS_IRQ_MISC_RAW_SESSVALID	BIT(20)
+
+/* IRQ_MISC_STATUS register bits */
+#define USBSS_IRQ_MISC_VBUSVALID	BIT(22)
+#define USBSS_IRQ_MISC_SESSVALID	BIT(20)
+
+/* IRQ_MISC_ENABLE_SET register bits */
+#define USBSS_IRQ_MISC_ENABLE_SET_VBUSVALID	BIT(22)
+#define USBSS_IRQ_MISC_ENABLE_SET_SESSVALID	BIT(20)
+
+/* IRQ_MISC_ENABLE_CLR register bits */
+#define USBSS_IRQ_MISC_ENABLE_CLR_VBUSVALID	BIT(22)
+#define USBSS_IRQ_MISC_ENABLE_CLR_SESSVALID	BIT(20)
+
+/* IRQ_MISC_EOI register bits */
+#define USBSS_IRQ_MISC_EOI_VECTOR	BIT(0)
+
+/* VBUS_STAT register bits */
+#define USBSS_VBUS_STAT_SESSVALID	BIT(2)
+#define USBSS_VBUS_STAT_VBUSVALID	BIT(0)
+
+/* USB_PHY_CTRL register bits in CTRL_MMR */
+#define PHY_CORE_VOLTAGE_MASK	BIT(31)
+#define PHY_PLL_REFCLK_MASK	GENMASK(3, 0)
+
+/* USB PHY2 register offsets */
+#define	USB_PHY_PLL_REG12		0x130
+#define	USB_PHY_PLL_LDO_REF_EN		BIT(5)
+#define	USB_PHY_PLL_LDO_REF_EN_EN	BIT(4)
+
+#define DWC3_AM62_AUTOSUSPEND_DELAY	100
+
+struct dwc3_am62 {
+	struct device *dev;
+	void __iomem *usbss;
+	struct clk *usb2_refclk;
+	int rate_code;
+	struct regmap *syscon;
+	unsigned int offset;
+	unsigned int vbus_divider;
+	u32 wakeup_stat;
+};
+
+static const int dwc3_ti_rate_table[] = {	/* in KHZ */
+	9600,
+	10000,
+	12000,
+	19200,
+	20000,
+	24000,
+	25000,
+	26000,
+	38400,
+	40000,
+	58000,
+	50000,
+	52000,
+};
+
+static inline u32 dwc3_ti_readl(struct dwc3_am62 *am62, u32 offset)
+{
+	return readl((am62->usbss) + offset);
+}
+
+static inline void dwc3_ti_writel(struct dwc3_am62 *am62, u32 offset, u32 value)
+{
+	writel(value, (am62->usbss) + offset);
+}
+
+static int phy_syscon_pll_refclk(struct dwc3_am62 *am62)
+{
+	struct device *dev = am62->dev;
+	struct device_node *node = dev->of_node;
+	struct regmap *syscon;
+	int ret;
+
+	syscon = syscon_regmap_lookup_by_phandle(node, "ti,syscon-phy-pll-refclk");
+	if (IS_ERR(syscon)) {
+		dev_err(dev, "unable to get ti,syscon-phy-pll-refclk regmap\n");
+		return PTR_ERR(syscon);
+	}
+
+	am62->syscon = syscon;
+
+	ret = of_property_read_u32_index(node, "ti,syscon-phy-pll-refclk", 1, &am62->offset);
+	if (ret)
+		return ret;
+
+	/* Core voltage. PHY_CORE_VOLTAGE bit Recommended to be 0 always */
+	ret = regmap_update_bits(am62->syscon, am62->offset, PHY_CORE_VOLTAGE_MASK, 0);
+	if (ret) {
+		dev_err(dev, "failed to set phy core voltage\n");
+		return ret;
+	}
+
+	ret = regmap_update_bits(am62->syscon, am62->offset, PHY_PLL_REFCLK_MASK, am62->rate_code);
+	if (ret) {
+		dev_err(dev, "failed to set phy pll reference clock rate\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int dwc3_ti_probe(struct device *dev)
+{
+	struct device_node *node = dev->of_node;
+	struct dwc3_am62 *am62;
+	unsigned long rate;
+	void __iomem *phy;
+	int i, ret;
+	u32 reg;
+
+	am62 = devm_kzalloc(dev, sizeof(*am62), GFP_KERNEL);
+	if (!am62)
+		return -ENOMEM;
+
+	am62->dev = dev;
+	dev->priv = am62;
+
+	am62->usbss = dev_request_mem_region(dev, 0);
+	if (IS_ERR(am62->usbss))
+		return dev_err_probe(dev, PTR_ERR(am62->usbss), "can't map IOMEM resource\n");
+
+	am62->usb2_refclk = clk_get(dev, "ref");
+	if (IS_ERR(am62->usb2_refclk))
+		return dev_err_probe(dev, PTR_ERR(am62->usb2_refclk), "can't get usb2_refclk\n");
+
+	/* Calculate the rate code */
+	rate = clk_get_rate(am62->usb2_refclk);
+	rate /= 1000;	// To KHz
+	for (i = 0; i < ARRAY_SIZE(dwc3_ti_rate_table); i++) {
+		if (dwc3_ti_rate_table[i] == rate)
+			break;
+	}
+
+	if (i == ARRAY_SIZE(dwc3_ti_rate_table))
+		return dev_err_probe(dev, -EINVAL, "unsupported usb2_refclk rate: %lu KHz\n", rate);
+
+	am62->rate_code = i;
+
+	/* Read the syscon property and set the rate code */
+	ret = phy_syscon_pll_refclk(am62);
+	if (ret)
+		return ret;
+
+	/* Workaround Errata i2409 */
+	phy = dev_request_mem_region(dev, 1);
+	if (IS_ERR(phy)) {
+		dev_err(dev, "can't map PHY IOMEM resource. Won't apply i2409 fix.\n");
+		phy = NULL;
+	} else {
+		reg = readl(phy + USB_PHY_PLL_REG12);
+		reg |= USB_PHY_PLL_LDO_REF_EN | USB_PHY_PLL_LDO_REF_EN_EN;
+		writel(reg, phy + USB_PHY_PLL_REG12);
+	}
+
+	/* VBUS divider select */
+	am62->vbus_divider = of_property_read_bool(node, "ti,vbus-divider");
+	reg = dwc3_ti_readl(am62, USBSS_PHY_CONFIG);
+	if (am62->vbus_divider)
+		reg |= 1 << USBSS_PHY_VBUS_SEL_SHIFT;
+
+	dwc3_ti_writel(am62, USBSS_PHY_CONFIG, reg);
+
+	clk_prepare_enable(am62->usb2_refclk);
+
+	ret = of_platform_populate(node, NULL, dev);
+	if (ret) {
+		dev_err_probe(dev, ret, "failed to create dwc3 core\n");
+		goto err_pm_disable;
+	}
+
+	/* Set mode valid bit to indicate role is valid */
+	reg = dwc3_ti_readl(am62, USBSS_MODE_CONTROL);
+	reg |= USBSS_MODE_VALID;
+	dwc3_ti_writel(am62, USBSS_MODE_CONTROL, reg);
+
+	return 0;
+
+err_pm_disable:
+	clk_disable_unprepare(am62->usb2_refclk);
+
+	return ret;
+}
+
+static const struct of_device_id dwc3_ti_of_match[] = {
+	{ .compatible = "ti,am62-usb"},
+	{},
+};
+MODULE_DEVICE_TABLE(of, dwc3_ti_of_match);
+
+static struct driver dwc3_of_simple_driver = {
+	.probe = dwc3_ti_probe,
+	.name = "dwc3-of-simple",
+	.of_compatible = DRV_OF_COMPAT(dwc3_ti_of_match),
+};
+device_platform_driver(dwc3_of_simple_driver);
+
+MODULE_ALIAS("platform:dwc3-am62");
+MODULE_AUTHOR("Aswath Govindraju <a-govindraju@ti.com>");
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("DesignWare USB3 TI Glue Layer");
-- 
2.39.5



