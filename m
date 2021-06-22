Delivery-date: Tue, 22 Jun 2021 08:49:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvaDf-00057n-Pr
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 08:49:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvaDc-00078n-Me
	for lore@pengutronix.de; Tue, 22 Jun 2021 08:49:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URW0fTLII6eR3DbvKeM5HvngyMXOS7+7RQ/GZWTh9fc=; b=4SHKQfqKDlz9gU
	CBhJu/T7APjVI5e7EJ8FbqEbH8UqkV0Uxy+MvLyMswOKK+81ONThroJyPGMzlWJOCIbyJ8NRycij1
	jl+2cl4XOLJV/ofDBEQtLtsXttMnK/kgOt82pG15yYr6oQXCBa4Q8iYSw0D2EVoM+F2C+l69sHMX8
	iK6D/WG2LZp9GDJlLErGaIq9ORkjhv0AqHBjvLEaSKjIjajDQ316qbdyEK6SpF08PLX9eSDcMy488
	7qLFOr39yrjXDWFIIsxM3oqkF1MB1GWodFmtfKsxkf3BuG6EozJLTztWFAuHkzgh7M/zfM2wsVoSP
	xsoCcy+p4jPpXeJSARfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvaCI-005sgV-F8; Tue, 22 Jun 2021 06:47:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvaBw-005sZw-QS
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 06:47:28 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvaBn-0006oc-IB; Tue, 22 Jun 2021 08:47:15 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvaBn-0004NX-6P; Tue, 22 Jun 2021 08:47:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 22 Jun 2021 08:47:06 +0200
Message-Id: <20210622064711.14058-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210622064711.14058-1-s.hauer@pengutronix.de>
References: <20210622064711.14058-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_234725_251399_78D76A47 
X-CRM114-Status: GOOD (  29.79  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] phy: Rockchip: Add driver for usb2phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds a driver for the Rockchip usb2phy. The driver has been taken
from U-Boot which has the same codebase as the Kernel driver, but is
easier to port over. Some features like clk provider support have been
added from the kernel then.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/rockchip/Kconfig                  |   7 +
 drivers/phy/rockchip/Makefile                 |   1 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 986 ++++++++++++++++++
 5 files changed, 996 insertions(+)
 create mode 100644 drivers/phy/rockchip/Kconfig
 create mode 100644 drivers/phy/rockchip/Makefile
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb2.c

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 0b513b68d0..684876e260 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -23,6 +23,7 @@ config USB_NOP_XCEIV
 	  phy programming such as ISP1x04 etc.
 
 source "drivers/phy/freescale/Kconfig"
+source "drivers/phy/rockchip/Kconfig"
 
 config PHY_STM32_USBPHYC
 	tristate "STM32 USB HS PHY Controller"
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index 684aaed75a..f06a9df92e 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_GENERIC_PHY)		+= phy-core.o
 obj-$(CONFIG_USB_NOP_XCEIV)		+= usb-nop-xceiv.o
 obj-y					+= freescale/
 obj-$(CONFIG_PHY_STM32_USBPHYC) 	+= phy-stm32-usbphyc.o
+obj-y					+= rockchip/
diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
new file mode 100644
index 0000000000..d6ae308aa1
--- /dev/null
+++ b/drivers/phy/rockchip/Kconfig
@@ -0,0 +1,7 @@
+config PHY_ROCKCHIP_INNO_USB2
+	bool "Rockchip INNO USB2PHY Driver"
+	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OFDEVICE
+	depends on COMMON_CLK
+	help
+	  Support for Rockchip USB2.0 PHY with Innosilicon IP block.
+
diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
new file mode 100644
index 0000000000..811f12bc60
--- /dev/null
+++ b/drivers/phy/rockchip/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_PHY_ROCKCHIP_INNO_USB2) += phy-rockchip-inno-usb2.o
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
new file mode 100644
index 0000000000..5c7d6ddb72
--- /dev/null
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -0,0 +1,986 @@
+/*
+ * Copyright 2017 Rockchip Electronics Co., Ltd
+ *
+ * SPDX-License-Identifier:    GPL-2.0+
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <errno.h>
+#include <driver.h>
+#include <malloc.h>
+#include <usb/phy.h>
+#include <linux/phy/phy.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <mfd/syscon.h>
+#include <regulator.h>
+
+#define U2PHY_BIT_WRITEABLE_SHIFT	16
+#define CHG_DCD_MAX_RETRIES		6
+#define CHG_PRI_MAX_RETRIES		2
+#define CHG_DCD_POLL_TIME		100	/* millisecond */
+#define CHG_PRIMARY_DET_TIME		40	/* millisecond */
+#define CHG_SECONDARY_DET_TIME		40	/* millisecond */
+
+struct rockchip_usb2phy;
+
+enum power_supply_type {
+	POWER_SUPPLY_TYPE_UNKNOWN = 0,
+	POWER_SUPPLY_TYPE_USB,		/* Standard Downstream Port */
+	POWER_SUPPLY_TYPE_USB_DCP,	/* Dedicated Charging Port */
+	POWER_SUPPLY_TYPE_USB_CDP,	/* Charging Downstream Port */
+	POWER_SUPPLY_TYPE_USB_FLOATING,	/* DCP without shorting D+/D- */
+};
+
+enum rockchip_usb2phy_port_id {
+	USB2PHY_PORT_OTG,
+	USB2PHY_PORT_HOST,
+	USB2PHY_NUM_PORTS,
+};
+
+struct usb2phy_reg {
+	u32	offset;
+	u32	bitend;
+	u32	bitstart;
+	u32	disable;
+	u32	enable;
+};
+
+/**
+ * struct rockchip_chg_det_reg: usb charger detect registers
+ * @cp_det: charging port detected successfully.
+ * @dcp_det: dedicated charging port detected successfully.
+ * @dp_det: assert data pin connect successfully.
+ * @idm_sink_en: open dm sink curren.
+ * @idp_sink_en: open dp sink current.
+ * @idp_src_en: open dm source current.
+ * @rdm_pdwn_en: open dm pull down resistor.
+ * @vdm_src_en: open dm voltage source.
+ * @vdp_src_en: open dp voltage source.
+ * @opmode: utmi operational mode.
+ */
+struct rockchip_chg_det_reg {
+	struct usb2phy_reg	cp_det;
+	struct usb2phy_reg	dcp_det;
+	struct usb2phy_reg	dp_det;
+	struct usb2phy_reg	idm_sink_en;
+	struct usb2phy_reg	idp_sink_en;
+	struct usb2phy_reg	idp_src_en;
+	struct usb2phy_reg	rdm_pdwn_en;
+	struct usb2phy_reg	vdm_src_en;
+	struct usb2phy_reg	vdp_src_en;
+	struct usb2phy_reg	opmode;
+};
+
+/**
+ * struct rockchip_usb2phy_port_cfg: usb-phy port configuration.
+ * @phy_sus: phy suspend register.
+ * @bvalid_det_en: vbus valid rise detection enable register.
+ * @bvalid_det_st: vbus valid rise detection status register.
+ * @bvalid_det_clr: vbus valid rise detection clear register.
+ * @ls_det_en: linestate detection enable register.
+ * @ls_det_st: linestate detection state register.
+ * @ls_det_clr: linestate detection clear register.
+ * @iddig_output: iddig output from grf.
+ * @iddig_en: utmi iddig select between grf and phy,
+ *	      0: from phy; 1: from grf
+ * @idfall_det_en: id fall detection enable register.
+ * @idfall_det_st: id fall detection state register.
+ * @idfall_det_clr: id fall detection clear register.
+ * @idrise_det_en: id rise detection enable register.
+ * @idrise_det_st: id rise detection state register.
+ * @idrise_det_clr: id rise detection clear register.
+ * @utmi_avalid: utmi vbus avalid status register.
+ * @utmi_bvalid: utmi vbus bvalid status register.
+ * @utmi_iddig: otg port id pin status register.
+ * @utmi_ls: utmi linestate state register.
+ * @utmi_hstdet: utmi host disconnect register.
+ * @vbus_det_en: vbus detect function power down register.
+ */
+struct rockchip_usb2phy_port_cfg {
+	struct usb2phy_reg	phy_sus;
+	struct usb2phy_reg	bvalid_det_en;
+	struct usb2phy_reg	bvalid_det_st;
+	struct usb2phy_reg	bvalid_det_clr;
+	struct usb2phy_reg	ls_det_en;
+	struct usb2phy_reg	ls_det_st;
+	struct usb2phy_reg	ls_det_clr;
+	struct usb2phy_reg	iddig_output;
+	struct usb2phy_reg	iddig_en;
+	struct usb2phy_reg	idfall_det_en;
+	struct usb2phy_reg	idfall_det_st;
+	struct usb2phy_reg	idfall_det_clr;
+	struct usb2phy_reg	idrise_det_en;
+	struct usb2phy_reg	idrise_det_st;
+	struct usb2phy_reg	idrise_det_clr;
+	struct usb2phy_reg	utmi_avalid;
+	struct usb2phy_reg	utmi_bvalid;
+	struct usb2phy_reg	utmi_iddig;
+	struct usb2phy_reg	utmi_ls;
+	struct usb2phy_reg	utmi_hstdet;
+	struct usb2phy_reg	vbus_det_en;
+};
+
+/**
+ * struct rockchip_usb2phy_cfg: usb-phy configuration.
+ * @reg: the address offset of grf for usb-phy config.
+ * @num_ports: specify how many ports that the phy has.
+ * @phy_tuning: phy default parameters tunning.
+ * @clkout_ctl: keep on/turn off output clk of phy.
+ * @chg_det: charger detection registers.
+ */
+struct rockchip_usb2phy_cfg {
+	u32	reg;
+	u32	num_ports;
+	int (*phy_tuning)(struct rockchip_usb2phy *);
+	struct usb2phy_reg	clkout_ctl;
+	const struct rockchip_usb2phy_port_cfg	port_cfgs[USB2PHY_NUM_PORTS];
+	const struct rockchip_chg_det_reg	chg_det;
+};
+
+struct rockchip_usb2phy_phy {
+	struct phy *phy;
+	struct regulator *vbus;
+	struct rockchip_usb2phy *usb2phy;
+	const struct rockchip_usb2phy_port_cfg *port_cfg;
+};
+
+/**
+ * @dcd_retries: The retry count used to track Data contact
+ *		 detection process.
+ * @primary_retries: The retry count used to do usb bc detection
+ *		     primary stage.
+ * @grf: General Register Files register base.
+ * @usbgrf_base : USB General Register Files register base.
+ * @phy_cfg: phy register configuration, assigned by driver data.
+ */
+struct rockchip_usb2phy {
+	u8		dcd_retries;
+	u8		primary_retries;
+	struct regmap	*grf_base;
+	const struct rockchip_usb2phy_cfg	*phy_cfg;
+	struct rockchip_usb2phy_phy phys[2];
+	struct phy_provider *provider;
+	struct clk *clk480m;
+	struct clk_hw clk480m_hw;
+	struct device_d *dev;
+	struct clk *clk;
+};
+
+static inline struct regmap *get_reg_base(struct rockchip_usb2phy *rphy)
+{
+	return rphy->grf_base;
+}
+
+static inline int property_enable(struct regmap *base,
+				  const struct usb2phy_reg *reg, bool en)
+{
+	u32 val, mask, tmp;
+
+	tmp = en ? reg->enable : reg->disable;
+	mask = GENMASK(reg->bitend, reg->bitstart);
+	val = (tmp << reg->bitstart) | (mask << U2PHY_BIT_WRITEABLE_SHIFT);
+
+	return regmap_write(base, reg->offset, val);
+}
+
+static inline bool property_enabled(struct regmap *base,
+				    const struct usb2phy_reg *reg)
+{
+	u32 tmp, orig;
+	u32 mask = GENMASK(reg->bitend, reg->bitstart);
+
+	regmap_read(base, reg->offset, &orig);
+
+	tmp = (orig & mask) >> reg->bitstart;
+
+	return tmp == reg->enable;
+}
+
+static int rockchip_usb2phy_init(struct phy *phy)
+{
+	struct rockchip_usb2phy_phy *p = phy_get_drvdata(phy);
+	struct rockchip_usb2phy *rphy = p->usb2phy;
+	struct regmap *base = get_reg_base(rphy);
+
+	p->vbus = regulator_get(&phy->dev, "vbus");
+
+	property_enable(base, &p->port_cfg->phy_sus, false);
+
+	/* waiting for the utmi_clk to become stable */
+	udelay(2000);
+
+	return 0;
+}
+
+static int rockchip_usb2phy_exit(struct phy *phy)
+{
+	struct rockchip_usb2phy_phy *p = phy_get_drvdata(phy);
+	struct rockchip_usb2phy *rphy = p->usb2phy;
+	struct regmap *base = get_reg_base(rphy);
+
+	property_enable(base, &p->port_cfg->phy_sus, true);
+
+	return 0;
+}
+
+static int rockchip_usb2phy_power_on(struct phy *phy)
+{
+	struct rockchip_usb2phy_phy *p = phy_get_drvdata(phy);
+	int ret;
+
+	ret = regulator_enable(p->vbus);
+	if (ret) {
+		dev_err(&phy->dev, "Failed to enable VBus supply\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int rockchip_usb2phy_power_off(struct phy *phy)
+{
+	struct rockchip_usb2phy_phy *p = phy_get_drvdata(phy);
+	int ret;
+
+	ret = regulator_disable(p->vbus);
+	if (ret) {
+		dev_err(&phy->dev, "Failed to disable VBus supply\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static struct phy *rockchip_usb2phy_of_xlate(struct device_d *dev,
+				     struct of_phandle_args *args)
+{
+	struct rockchip_usb2phy *rphy = dev->priv;
+	struct device_node *phynode = args->np;
+	struct rockchip_usb2phy_phy *p;
+	int port;
+
+	for (port = 0; port < 2; port++) {
+		if (phynode == rphy->phys[port].phy->dev.device_node) {
+			p = &rphy->phys[port];
+			return p->phy;
+		}
+	}
+
+	return NULL;
+}
+
+static struct phy_ops rockchip_usb2phy_ops = {
+	.init = rockchip_usb2phy_init,
+	.exit = rockchip_usb2phy_exit,
+	.power_on = rockchip_usb2phy_power_on,
+	.power_off = rockchip_usb2phy_power_off,
+};
+
+static int rockchip_usb2phy_clk480m_prepare(struct clk_hw *hw)
+{
+	struct rockchip_usb2phy *rphy =
+		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
+	struct regmap *base = get_reg_base(rphy);
+	int ret;
+
+	/* turn on 480m clk output if it is off */
+	if (!property_enabled(base, &rphy->phy_cfg->clkout_ctl)) {
+		ret = property_enable(base, &rphy->phy_cfg->clkout_ctl, true);
+		if (ret)
+			return ret;
+
+		/* waiting for the clk become stable */
+		udelay(1200);
+	}
+
+	return 0;
+}
+
+static void rockchip_usb2phy_clk480m_unprepare(struct clk_hw *hw)
+{
+	struct rockchip_usb2phy *rphy =
+		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
+	struct regmap *base = get_reg_base(rphy);
+
+	/* turn off 480m clk output */
+	property_enable(base, &rphy->phy_cfg->clkout_ctl, false);
+}
+
+static int rockchip_usb2phy_clk480m_prepared(struct clk_hw *hw)
+{
+	struct rockchip_usb2phy *rphy =
+		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
+	struct regmap *base = get_reg_base(rphy);
+
+	return property_enabled(base, &rphy->phy_cfg->clkout_ctl);
+}
+
+static unsigned long
+rockchip_usb2phy_clk480m_recalc_rate(struct clk_hw *hw,
+				     unsigned long parent_rate)
+{
+	return 480000000;
+}
+
+static const struct clk_ops rockchip_usb2phy_clkout_ops = {
+	.enable = rockchip_usb2phy_clk480m_prepare,
+	.disable = rockchip_usb2phy_clk480m_unprepare,
+	.is_enabled = rockchip_usb2phy_clk480m_prepared,
+	.recalc_rate = rockchip_usb2phy_clk480m_recalc_rate,
+};
+
+static int
+rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
+{
+	struct device_node *node = rphy->dev->device_node;
+	struct clk_init_data init = {};
+	const char *clk_name;
+	int ret;
+
+	init.flags = 0;
+	init.name = "clk_usbphy_480m";
+	init.ops = &rockchip_usb2phy_clkout_ops;
+
+	/* optional override of the clockname */
+	of_property_read_string(node, "clock-output-names", &init.name);
+
+	if (rphy->clk) {
+		clk_name = __clk_get_name(rphy->clk);
+		init.parent_names = &clk_name;
+		init.num_parents = 1;
+	} else {
+		init.parent_names = NULL;
+		init.num_parents = 0;
+	}
+
+	rphy->clk480m_hw.init = &init;
+
+	/* register the clock */
+	rphy->clk480m = clk_register(rphy->dev, &rphy->clk480m_hw);
+	if (IS_ERR(rphy->clk480m)) {
+		ret = PTR_ERR(rphy->clk480m);
+		goto err_ret;
+	}
+
+	ret = of_clk_add_provider(node, of_clk_src_simple_get, rphy->clk480m);
+	if (ret < 0)
+		goto err_clk_provider;
+
+	return 0;
+
+err_clk_provider:
+	clk_unregister(rphy->clk480m);
+err_ret:
+	return ret;
+}
+
+static int rockchip_usb2phy_probe(struct device_d *dev)
+{
+	const struct rockchip_usb2phy_cfg *phy_cfgs;
+	struct rockchip_usb2phy *rphy;
+	u32 reg, index;
+	int ret, port = 0;
+	struct device_node *child, *np = dev->device_node;
+	struct resource *iores;
+
+	rphy = xzalloc(sizeof(*rphy));
+
+	rphy->dev = dev;
+
+	rphy->grf_base = syscon_regmap_lookup_by_phandle(np,
+							"rockchip,usbgrf");
+	if (IS_ERR(rphy->grf_base))
+		return PTR_ERR(rphy->grf_base);
+
+	phy_cfgs = device_get_match_data(dev);
+	if (!phy_cfgs) {
+		dev_err(dev, "unable to get phy_cfgs\n");
+		return -EINVAL;
+	}
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		if (of_property_read_u32(np, "reg", &reg))
+			return -EINVAL;
+	} else {
+		reg = iores->start;
+	}
+
+	/* find out a proper config which can be matched with dt. */
+	index = 0;
+	while (phy_cfgs[index].reg) {
+		if (phy_cfgs[index].reg == reg) {
+			rphy->phy_cfg = &phy_cfgs[index];
+			break;
+		}
+		++index;
+	}
+
+	if (!rphy->phy_cfg) {
+		dev_err(dev, "no phy-config can be matched\n");
+		return -EINVAL;
+	}
+
+	for_each_child_of_node(np, child) {
+		struct rockchip_usb2phy_phy *p;
+		struct phy *phy;
+
+		if (!strcmp(child->name, "host-port")) {
+			port = USB2PHY_PORT_OTG;
+		} else if (!strcmp(child->name, "otg-port")) {
+			port = USB2PHY_PORT_HOST;
+		} else {
+			dev_warn(dev, "Ignoring unknown subnode %s\n", child->name);
+			continue;
+		}
+
+		if (rphy->phys[port].phy)
+			return -EINVAL;
+
+		phy = phy_create(dev, child, &rockchip_usb2phy_ops);
+		if (IS_ERR(phy)) {
+			ret = PTR_ERR(phy);
+			if (ret != -EPROBE_DEFER)
+				dev_err(dev, "failed to create phy%d: %d\n",
+					port, ret);
+			return ret;
+		}
+
+		p = xzalloc(sizeof(*p));
+
+		phy_set_drvdata(phy, p);
+		p->usb2phy = rphy;
+		p->port_cfg = &phy_cfgs->port_cfgs[port];
+
+		rphy->phys[port].phy = phy;
+	}
+
+	if (rphy->phy_cfg->phy_tuning)
+		rphy->phy_cfg->phy_tuning(rphy);
+
+	dev->priv = rphy;
+
+	rphy->clk = clk_get(dev, "phyclk");
+	rockchip_usb2phy_clk480m_register(rphy);
+
+	rphy->provider = of_phy_provider_register(dev, rockchip_usb2phy_of_xlate);
+	if (IS_ERR(rphy->provider))
+		return PTR_ERR(rphy->provider);
+
+	return 0;
+}
+
+static int rk322x_usb2phy_tuning(struct rockchip_usb2phy *rphy)
+{
+	struct regmap *base = get_reg_base(rphy);
+	int ret = 0;
+
+	/* Open pre-emphasize in non-chirp state for PHY0 otg port */
+	if (rphy->phy_cfg->reg == 0x760)
+		ret = regmap_write(base, 0x76c, 0x00070004);
+
+	return ret;
+}
+
+static const struct rockchip_usb2phy_cfg rk1808_phy_cfgs[] = {
+	{
+		.reg = 0x100,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0x108, 4, 4, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x0100, 8, 0, 0, 0x1d1 },
+				.bvalid_det_en	= { 0x0110, 2, 2, 0, 1 },
+				.bvalid_det_st	= { 0x0114, 2, 2, 0, 1 },
+				.bvalid_det_clr = { 0x0118, 2, 2, 0, 1 },
+				.iddig_output	= { 0x0100, 10, 10, 0, 1 },
+				.iddig_en	= { 0x0100, 9, 9, 0, 1 },
+				.idfall_det_en	= { 0x0110, 5, 5, 0, 1 },
+				.idfall_det_st	= { 0x0114, 5, 5, 0, 1 },
+				.idfall_det_clr = { 0x0118, 5, 5, 0, 1 },
+				.idrise_det_en	= { 0x0110, 4, 4, 0, 1 },
+				.idrise_det_st	= { 0x0114, 4, 4, 0, 1 },
+				.idrise_det_clr = { 0x0118, 4, 4, 0, 1 },
+				.ls_det_en	= { 0x0110, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x0114, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x0118, 0, 0, 0, 1 },
+				.utmi_avalid	= { 0x0120, 10, 10, 0, 1 },
+				.utmi_bvalid	= { 0x0120, 9, 9, 0, 1 },
+				.utmi_iddig	= { 0x0120, 6, 6, 0, 1 },
+				.utmi_ls	= { 0x0120, 5, 4, 0, 1 },
+				.vbus_det_en	= { 0x001c, 15, 15, 1, 0 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x104, 8, 0, 0, 0x1d1 },
+				.ls_det_en	= { 0x110, 1, 1, 0, 1 },
+				.ls_det_st	= { 0x114, 1, 1, 0, 1 },
+				.ls_det_clr	= { 0x118, 1, 1, 0, 1 },
+				.utmi_ls	= { 0x120, 17, 16, 0, 1 },
+				.utmi_hstdet	= { 0x120, 19, 19, 0, 1 }
+			}
+		},
+		.chg_det = {
+			.opmode		= { 0x0100, 3, 0, 5, 1 },
+			.cp_det		= { 0x0120, 24, 24, 0, 1 },
+			.dcp_det	= { 0x0120, 23, 23, 0, 1 },
+			.dp_det		= { 0x0120, 25, 25, 0, 1 },
+			.idm_sink_en	= { 0x0108, 8, 8, 0, 1 },
+			.idp_sink_en	= { 0x0108, 7, 7, 0, 1 },
+			.idp_src_en	= { 0x0108, 9, 9, 0, 1 },
+			.rdm_pdwn_en	= { 0x0108, 10, 10, 0, 1 },
+			.vdm_src_en	= { 0x0108, 12, 12, 0, 1 },
+			.vdp_src_en	= { 0x0108, 11, 11, 0, 1 },
+		},
+	},
+	{ /* sentinel */ }
+};
+
+static const struct rockchip_usb2phy_cfg rk312x_phy_cfgs[] = {
+	{
+		.reg = 0x17c,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0x0190, 15, 15, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x017c, 8, 0, 0, 0x1d1 },
+				.bvalid_det_en	= { 0x017c, 14, 14, 0, 1 },
+				.bvalid_det_st	= { 0x017c, 15, 15, 0, 1 },
+				.bvalid_det_clr	= { 0x017c, 15, 15, 0, 1 },
+				.iddig_output	= { 0x017c, 10, 10, 0, 1 },
+				.iddig_en	= { 0x017c, 9, 9, 0, 1 },
+				.idfall_det_en  = { 0x01a0, 2, 2, 0, 1 },
+				.idfall_det_st  = { 0x01a0, 3, 3, 0, 1 },
+				.idfall_det_clr = { 0x01a0, 3, 3, 0, 1 },
+				.idrise_det_en  = { 0x01a0, 0, 0, 0, 1 },
+				.idrise_det_st  = { 0x01a0, 1, 1, 0, 1 },
+				.idrise_det_clr = { 0x01a0, 1, 1, 0, 1 },
+				.ls_det_en	= { 0x017c, 12, 12, 0, 1 },
+				.ls_det_st	= { 0x017c, 13, 13, 0, 1 },
+				.ls_det_clr	= { 0x017c, 13, 13, 0, 1 },
+				.utmi_bvalid	= { 0x014c, 5, 5, 0, 1 },
+				.utmi_iddig	= { 0x014c, 8, 8, 0, 1 },
+				.utmi_ls	= { 0x014c, 7, 6, 0, 1 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0194, 8, 0, 0, 0x1d1 },
+				.ls_det_en	= { 0x0194, 14, 14, 0, 1 },
+				.ls_det_st	= { 0x0194, 15, 15, 0, 1 },
+				.ls_det_clr	= { 0x0194, 15, 15, 0, 1 }
+			}
+		},
+		.chg_det = {
+			.opmode		= { 0x017c, 3, 0, 5, 1 },
+			.cp_det		= { 0x02c0, 6, 6, 0, 1 },
+			.dcp_det	= { 0x02c0, 5, 5, 0, 1 },
+			.dp_det		= { 0x02c0, 7, 7, 0, 1 },
+			.idm_sink_en	= { 0x0184, 8, 8, 0, 1 },
+			.idp_sink_en	= { 0x0184, 7, 7, 0, 1 },
+			.idp_src_en	= { 0x0184, 9, 9, 0, 1 },
+			.rdm_pdwn_en	= { 0x0184, 10, 10, 0, 1 },
+			.vdm_src_en	= { 0x0184, 12, 12, 0, 1 },
+			.vdp_src_en	= { 0x0184, 11, 11, 0, 1 },
+		},
+	},
+	{ /* sentinel */ }
+};
+
+static const struct rockchip_usb2phy_cfg rk322x_phy_cfgs[] = {
+	{
+		.reg = 0x760,
+		.num_ports	= 2,
+		.phy_tuning	= rk322x_usb2phy_tuning,
+		.clkout_ctl	= { 0x0768, 4, 4, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x0760, 8, 0, 0, 0x1d1 },
+				.bvalid_det_en	= { 0x0680, 3, 3, 0, 1 },
+				.bvalid_det_st	= { 0x0690, 3, 3, 0, 1 },
+				.bvalid_det_clr	= { 0x06a0, 3, 3, 0, 1 },
+				.iddig_output	= { 0x0760, 10, 10, 0, 1 },
+				.iddig_en	= { 0x0760, 9, 9, 0, 1 },
+				.idfall_det_en	= { 0x0680, 6, 6, 0, 1 },
+				.idfall_det_st	= { 0x0690, 6, 6, 0, 1 },
+				.idfall_det_clr	= { 0x06a0, 6, 6, 0, 1 },
+				.idrise_det_en	= { 0x0680, 5, 5, 0, 1 },
+				.idrise_det_st	= { 0x0690, 5, 5, 0, 1 },
+				.idrise_det_clr	= { 0x06a0, 5, 5, 0, 1 },
+				.ls_det_en	= { 0x0680, 2, 2, 0, 1 },
+				.ls_det_st	= { 0x0690, 2, 2, 0, 1 },
+				.ls_det_clr	= { 0x06a0, 2, 2, 0, 1 },
+				.utmi_bvalid	= { 0x0480, 4, 4, 0, 1 },
+				.utmi_iddig	= { 0x0480, 1, 1, 0, 1 },
+				.utmi_ls	= { 0x0480, 3, 2, 0, 1 },
+				.vbus_det_en	= { 0x0788, 15, 15, 1, 0 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0764, 8, 0, 0, 0x1d1 },
+				.ls_det_en	= { 0x0680, 4, 4, 0, 1 },
+				.ls_det_st	= { 0x0690, 4, 4, 0, 1 },
+				.ls_det_clr	= { 0x06a0, 4, 4, 0, 1 }
+			}
+		},
+		.chg_det = {
+			.opmode		= { 0x0760, 3, 0, 5, 1 },
+			.cp_det		= { 0x0884, 4, 4, 0, 1 },
+			.dcp_det	= { 0x0884, 3, 3, 0, 1 },
+			.dp_det		= { 0x0884, 5, 5, 0, 1 },
+			.idm_sink_en	= { 0x0768, 8, 8, 0, 1 },
+			.idp_sink_en	= { 0x0768, 7, 7, 0, 1 },
+			.idp_src_en	= { 0x0768, 9, 9, 0, 1 },
+			.rdm_pdwn_en	= { 0x0768, 10, 10, 0, 1 },
+			.vdm_src_en	= { 0x0768, 12, 12, 0, 1 },
+			.vdp_src_en	= { 0x0768, 11, 11, 0, 1 },
+		},
+	},
+	{
+		.reg = 0x800,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0x0808, 4, 4, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x804, 8, 0, 0, 0x1d1 },
+				.ls_det_en	= { 0x0684, 1, 1, 0, 1 },
+				.ls_det_st	= { 0x0694, 1, 1, 0, 1 },
+				.ls_det_clr	= { 0x06a4, 1, 1, 0, 1 }
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x800, 8, 0, 0, 0x1d1 },
+				.ls_det_en	= { 0x0684, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x0694, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x06a4, 0, 0, 0, 1 }
+			}
+		},
+	},
+	{ /* sentinel */ }
+};
+
+static const struct rockchip_usb2phy_cfg rk3328_phy_cfgs[] = {
+	{
+		.reg = 0x100,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0x108, 4, 4, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x0100, 8, 0, 0, 0x1d1 },
+				.bvalid_det_en	= { 0x0110, 2, 2, 0, 1 },
+				.bvalid_det_st	= { 0x0114, 2, 2, 0, 1 },
+				.bvalid_det_clr = { 0x0118, 2, 2, 0, 1 },
+				.iddig_output	= { 0x0100, 10, 10, 0, 1 },
+				.iddig_en	= { 0x0100, 9, 9, 0, 1 },
+				.idfall_det_en	= { 0x0110, 5, 5, 0, 1 },
+				.idfall_det_st	= { 0x0114, 5, 5, 0, 1 },
+				.idfall_det_clr = { 0x0118, 5, 5, 0, 1 },
+				.idrise_det_en	= { 0x0110, 4, 4, 0, 1 },
+				.idrise_det_st	= { 0x0114, 4, 4, 0, 1 },
+				.idrise_det_clr = { 0x0118, 4, 4, 0, 1 },
+				.ls_det_en	= { 0x0110, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x0114, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x0118, 0, 0, 0, 1 },
+				.utmi_avalid	= { 0x0120, 10, 10, 0, 1 },
+				.utmi_bvalid	= { 0x0120, 9, 9, 0, 1 },
+				.utmi_iddig	= { 0x0120, 6, 6, 0, 1 },
+				.utmi_ls	= { 0x0120, 5, 4, 0, 1 },
+				.vbus_det_en	= { 0x001c, 15, 15, 1, 0 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x104, 8, 0, 0, 0x1d1 },
+				.ls_det_en	= { 0x110, 1, 1, 0, 1 },
+				.ls_det_st	= { 0x114, 1, 1, 0, 1 },
+				.ls_det_clr	= { 0x118, 1, 1, 0, 1 },
+				.utmi_ls	= { 0x120, 17, 16, 0, 1 },
+				.utmi_hstdet	= { 0x120, 19, 19, 0, 1 }
+			}
+		},
+		.chg_det = {
+			.opmode		= { 0x0100, 3, 0, 5, 1 },
+			.cp_det		= { 0x0120, 24, 24, 0, 1 },
+			.dcp_det	= { 0x0120, 23, 23, 0, 1 },
+			.dp_det		= { 0x0120, 25, 25, 0, 1 },
+			.idm_sink_en	= { 0x0108, 8, 8, 0, 1 },
+			.idp_sink_en	= { 0x0108, 7, 7, 0, 1 },
+			.idp_src_en	= { 0x0108, 9, 9, 0, 1 },
+			.rdm_pdwn_en	= { 0x0108, 10, 10, 0, 1 },
+			.vdm_src_en	= { 0x0108, 12, 12, 0, 1 },
+			.vdp_src_en	= { 0x0108, 11, 11, 0, 1 },
+		},
+	},
+	{ /* sentinel */ }
+};
+
+static const struct rockchip_usb2phy_cfg rk3368_phy_cfgs[] = {
+	{
+		.reg = 0x700,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0x0724, 15, 15, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x0700, 8, 0, 0, 0x1d1 },
+				.bvalid_det_en	= { 0x0680, 3, 3, 0, 1 },
+				.bvalid_det_st	= { 0x0690, 3, 3, 0, 1 },
+				.bvalid_det_clr = { 0x06a0, 3, 3, 0, 1 },
+				.ls_det_en	= { 0x0680, 2, 2, 0, 1 },
+				.ls_det_st	= { 0x0690, 2, 2, 0, 1 },
+				.ls_det_clr	= { 0x06a0, 2, 2, 0, 1 },
+				.utmi_bvalid	= { 0x04bc, 23, 23, 0, 1 },
+				.utmi_ls	= { 0x04bc, 25, 24, 0, 1 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0728, 8, 0, 0, 0x1d1 },
+				.ls_det_en	= { 0x0680, 4, 4, 0, 1 },
+				.ls_det_st	= { 0x0690, 4, 4, 0, 1 },
+				.ls_det_clr	= { 0x06a0, 4, 4, 0, 1 }
+			}
+		},
+		.chg_det = {
+			.opmode		= { 0x0700, 3, 0, 5, 1 },
+			.cp_det		= { 0x04b8, 30, 30, 0, 1 },
+			.dcp_det	= { 0x04b8, 29, 29, 0, 1 },
+			.dp_det		= { 0x04b8, 31, 31, 0, 1 },
+			.idm_sink_en	= { 0x0718, 8, 8, 0, 1 },
+			.idp_sink_en	= { 0x0718, 7, 7, 0, 1 },
+			.idp_src_en	= { 0x0718, 9, 9, 0, 1 },
+			.rdm_pdwn_en	= { 0x0718, 10, 10, 0, 1 },
+			.vdm_src_en	= { 0x0718, 12, 12, 0, 1 },
+			.vdp_src_en	= { 0x0718, 11, 11, 0, 1 },
+		},
+	},
+	{ /* sentinel */ }
+};
+
+static const struct rockchip_usb2phy_cfg rk3399_phy_cfgs[] = {
+	{
+		.reg		= 0xe450,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0xe450, 4, 4, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus = { 0xe454, 8, 0, 0x052, 0x1d1 },
+				.bvalid_det_en	= { 0xe3c0, 3, 3, 0, 1 },
+				.bvalid_det_st	= { 0xe3e0, 3, 3, 0, 1 },
+				.bvalid_det_clr	= { 0xe3d0, 3, 3, 0, 1 },
+				.idfall_det_en	= { 0xe3c0, 5, 5, 0, 1 },
+				.idfall_det_st	= { 0xe3e0, 5, 5, 0, 1 },
+				.idfall_det_clr	= { 0xe3d0, 5, 5, 0, 1 },
+				.idrise_det_en	= { 0xe3c0, 4, 4, 0, 1 },
+				.idrise_det_st	= { 0xe3e0, 4, 4, 0, 1 },
+				.idrise_det_clr	= { 0xe3d0, 4, 4, 0, 1 },
+				.ls_det_en	= { 0xe3c0, 2, 2, 0, 1 },
+				.ls_det_st	= { 0xe3e0, 2, 2, 0, 1 },
+				.ls_det_clr	= { 0xe3d0, 2, 2, 0, 1 },
+				.utmi_avalid	= { 0xe2ac, 7, 7, 0, 1 },
+				.utmi_bvalid	= { 0xe2ac, 12, 12, 0, 1 },
+				.utmi_iddig	= { 0xe2ac, 8, 8, 0, 1 },
+				.utmi_ls	= { 0xe2ac, 14, 13, 0, 1 },
+				.vbus_det_en    = { 0x449c, 15, 15, 1, 0 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0xe458, 1, 0, 0x2, 0x1 },
+				.ls_det_en	= { 0xe3c0, 6, 6, 0, 1 },
+				.ls_det_st	= { 0xe3e0, 6, 6, 0, 1 },
+				.ls_det_clr	= { 0xe3d0, 6, 6, 0, 1 },
+				.utmi_ls	= { 0xe2ac, 22, 21, 0, 1 },
+				.utmi_hstdet	= { 0xe2ac, 23, 23, 0, 1 }
+			}
+		},
+		.chg_det = {
+			.opmode		= { 0xe454, 3, 0, 5, 1 },
+			.cp_det		= { 0xe2ac, 2, 2, 0, 1 },
+			.dcp_det	= { 0xe2ac, 1, 1, 0, 1 },
+			.dp_det		= { 0xe2ac, 0, 0, 0, 1 },
+			.idm_sink_en	= { 0xe450, 8, 8, 0, 1 },
+			.idp_sink_en	= { 0xe450, 7, 7, 0, 1 },
+			.idp_src_en	= { 0xe450, 9, 9, 0, 1 },
+			.rdm_pdwn_en	= { 0xe450, 10, 10, 0, 1 },
+			.vdm_src_en	= { 0xe450, 12, 12, 0, 1 },
+			.vdp_src_en	= { 0xe450, 11, 11, 0, 1 },
+		},
+	},
+	{
+		.reg		= 0xe460,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0xe460, 4, 4, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus = { 0xe464, 8, 0, 0x052, 0x1d1 },
+				.bvalid_det_en  = { 0xe3c0, 8, 8, 0, 1 },
+				.bvalid_det_st  = { 0xe3e0, 8, 8, 0, 1 },
+				.bvalid_det_clr = { 0xe3d0, 8, 8, 0, 1 },
+				.idfall_det_en	= { 0xe3c0, 10, 10, 0, 1 },
+				.idfall_det_st	= { 0xe3e0, 10, 10, 0, 1 },
+				.idfall_det_clr	= { 0xe3d0, 10, 10, 0, 1 },
+				.idrise_det_en	= { 0xe3c0, 9, 9, 0, 1 },
+				.idrise_det_st	= { 0xe3e0, 9, 9, 0, 1 },
+				.idrise_det_clr	= { 0xe3d0, 9, 9, 0, 1 },
+				.ls_det_en	= { 0xe3c0, 7, 7, 0, 1 },
+				.ls_det_st	= { 0xe3e0, 7, 7, 0, 1 },
+				.ls_det_clr	= { 0xe3d0, 7, 7, 0, 1 },
+				.utmi_avalid	= { 0xe2ac, 10, 10, 0, 1 },
+				.utmi_bvalid    = { 0xe2ac, 16, 16, 0, 1 },
+				.utmi_iddig	= { 0xe2ac, 11, 11, 0, 1 },
+				.utmi_ls	= { 0xe2ac, 18, 17, 0, 1 },
+				.vbus_det_en    = { 0x451c, 15, 15, 1, 0 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0xe468, 1, 0, 0x2, 0x1 },
+				.ls_det_en	= { 0xe3c0, 11, 11, 0, 1 },
+				.ls_det_st	= { 0xe3e0, 11, 11, 0, 1 },
+				.ls_det_clr	= { 0xe3d0, 11, 11, 0, 1 },
+				.utmi_ls	= { 0xe2ac, 26, 25, 0, 1 },
+				.utmi_hstdet	= { 0xe2ac, 27, 27, 0, 1 }
+			}
+		},
+		.chg_det = {
+			.opmode		= { 0xe464, 3, 0, 5, 1 },
+			.cp_det		= { 0xe2ac, 5, 5, 0, 1 },
+			.dcp_det	= { 0xe2ac, 4, 4, 0, 1 },
+			.dp_det		= { 0xe2ac, 3, 3, 0, 1 },
+			.idm_sink_en	= { 0xe460, 8, 8, 0, 1 },
+			.idp_sink_en	= { 0xe460, 7, 7, 0, 1 },
+			.idp_src_en	= { 0xe460, 9, 9, 0, 1 },
+			.rdm_pdwn_en	= { 0xe460, 10, 10, 0, 1 },
+			.vdm_src_en	= { 0xe460, 12, 12, 0, 1 },
+			.vdp_src_en	= { 0xe460, 11, 11, 0, 1 },
+		},
+	},
+	{ /* sentinel */ }
+};
+
+static const struct rockchip_usb2phy_cfg rv1108_phy_cfgs[] = {
+	{
+		.reg = 0x100,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0x108, 4, 4, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x0ffa0100, 8, 0, 0, 0x1d1 },
+				.bvalid_det_en	= { 0x0680, 3, 3, 0, 1 },
+				.bvalid_det_st	= { 0x0690, 3, 3, 0, 1 },
+				.bvalid_det_clr = { 0x06a0, 3, 3, 0, 1 },
+				.ls_det_en	= { 0x0680, 2, 2, 0, 1 },
+				.ls_det_st	= { 0x0690, 2, 2, 0, 1 },
+				.ls_det_clr	= { 0x06a0, 2, 2, 0, 1 },
+				.utmi_bvalid	= { 0x0804, 10, 10, 0, 1 },
+				.utmi_ls	= { 0x0804, 13, 12, 0, 1 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0ffa0104, 8, 0, 0, 0x1d1 },
+				.ls_det_en	= { 0x0680, 4, 4, 0, 1 },
+				.ls_det_st	= { 0x0690, 4, 4, 0, 1 },
+				.ls_det_clr	= { 0x06a0, 4, 4, 0, 1 },
+				.utmi_ls	= { 0x0804, 9, 8, 0, 1 },
+				.utmi_hstdet	= { 0x0804, 7, 7, 0, 1 }
+			}
+		},
+		.chg_det = {
+			.opmode		= { 0x0ffa0100, 3, 0, 5, 1 },
+			.cp_det		= { 0x0804, 1, 1, 0, 1 },
+			.dcp_det	= { 0x0804, 0, 0, 0, 1 },
+			.dp_det		= { 0x0804, 2, 2, 0, 1 },
+			.idm_sink_en	= { 0x0ffa0108, 8, 8, 0, 1 },
+			.idp_sink_en	= { 0x0ffa0108, 7, 7, 0, 1 },
+			.idp_src_en	= { 0x0ffa0108, 9, 9, 0, 1 },
+			.rdm_pdwn_en	= { 0x0ffa0108, 10, 10, 0, 1 },
+			.vdm_src_en	= { 0x0ffa0108, 12, 12, 0, 1 },
+			.vdp_src_en	= { 0x0ffa0108, 11, 11, 0, 1 },
+		},
+	},
+	{ /* sentinel */ }
+};
+
+static const struct rockchip_usb2phy_cfg rk3568_phy_cfgs[] = {
+	{
+		.reg = 0xfe8a0000,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0x0008, 4, 4, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x0000, 8, 0, 0x052, 0x1d1 },
+				.bvalid_det_en	= { 0x0080, 2, 2, 0, 1 },
+				.bvalid_det_st	= { 0x0084, 2, 2, 0, 1 },
+				.bvalid_det_clr = { 0x0088, 2, 2, 0, 1 },
+				.iddig_output	= { 0x0000, 10, 10, 0, 1 },
+				.iddig_en	= { 0x0000, 9, 9, 0, 1 },
+				.idfall_det_en	= { 0x0080, 5, 5, 0, 1 },
+				.idfall_det_st	= { 0x0084, 5, 5, 0, 1 },
+				.idfall_det_clr = { 0x0088, 5, 5, 0, 1 },
+				.idrise_det_en	= { 0x0080, 4, 4, 0, 1 },
+				.idrise_det_st	= { 0x0084, 4, 4, 0, 1 },
+				.idrise_det_clr = { 0x0088, 4, 4, 0, 1 },
+				.ls_det_en	= { 0x0080, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x0084, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x0088, 0, 0, 0, 1 },
+				.utmi_avalid	= { 0x00c0, 10, 10, 0, 1 },
+				.utmi_bvalid	= { 0x00c0, 9, 9, 0, 1 },
+				.utmi_iddig	= { 0x00c0, 6, 6, 0, 1 },
+				.utmi_ls	= { 0x00c0, 5, 4, 0, 1 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0004, 8, 0, 0x1d2, 0x1d1 },
+				.ls_det_en	= { 0x0080, 1, 1, 0, 1 },
+				.ls_det_st	= { 0x0084, 1, 1, 0, 1 },
+				.ls_det_clr	= { 0x0088, 1, 1, 0, 1 },
+				.utmi_ls	= { 0x00c0, 17, 16, 0, 1 },
+				.utmi_hstdet	= { 0x00c0, 19, 19, 0, 1 }
+			}
+		},
+		.chg_det = {
+			.opmode		= { 0x0000, 3, 0, 5, 1 },
+			.cp_det		= { 0x00c0, 24, 24, 0, 1 },
+			.dcp_det	= { 0x00c0, 23, 23, 0, 1 },
+			.dp_det		= { 0x00c0, 25, 25, 0, 1 },
+			.idm_sink_en	= { 0x0008, 8, 8, 0, 1 },
+			.idp_sink_en	= { 0x0008, 7, 7, 0, 1 },
+			.idp_src_en	= { 0x0008, 9, 9, 0, 1 },
+			.rdm_pdwn_en	= { 0x0008, 10, 10, 0, 1 },
+			.vdm_src_en	= { 0x0008, 12, 12, 0, 1 },
+			.vdp_src_en	= { 0x0008, 11, 11, 0, 1 },
+		},
+	},
+	{
+		.reg = 0xfe8b0000,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0x0008, 4, 4, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x0000, 8, 0, 0x1d2, 0x1d1 },
+				.ls_det_en	= { 0x0080, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x0084, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x0088, 0, 0, 0, 1 },
+				.utmi_ls	= { 0x00c0, 5, 4, 0, 1 },
+				.utmi_hstdet	= { 0x00c0, 7, 7, 0, 1 }
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0004, 8, 0, 0x1d2, 0x1d1 },
+				.ls_det_en	= { 0x0080, 1, 1, 0, 1 },
+				.ls_det_st	= { 0x0084, 1, 1, 0, 1 },
+				.ls_det_clr	= { 0x0088, 1, 1, 0, 1 },
+				.utmi_ls	= { 0x00c0, 17, 16, 0, 1 },
+				.utmi_hstdet	= { 0x00c0, 19, 19, 0, 1 }
+			}
+		},
+	},
+	{ /* sentinel */ }
+};
+static const struct of_device_id rockchip_usb2phy_dt_match[] = {
+	{ .compatible = "rockchip,rk1808-usb2phy", .data = &rk1808_phy_cfgs },
+	{ .compatible = "rockchip,rk3128-usb2phy", .data = &rk312x_phy_cfgs },
+	{ .compatible = "rockchip,rk322x-usb2phy", .data = &rk322x_phy_cfgs },
+	{ .compatible = "rockchip,rk3308-usb2phy", .data = &rk3328_phy_cfgs },
+	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
+	{ .compatible = "rockchip,rk3368-usb2phy", .data = &rk3368_phy_cfgs },
+	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
+	{ .compatible = "rockchip,rk3568-usb2phy", .data = &rk3568_phy_cfgs },
+	{ .compatible = "rockchip,rv1108-usb2phy", .data = &rv1108_phy_cfgs },
+	{ }
+};
+
+static struct driver_d rockchip_usb2phy_driver = {
+	.probe		= rockchip_usb2phy_probe,
+	.name	= "rockchip-usb2phy",
+	.of_compatible = rockchip_usb2phy_dt_match,
+};
+coredevice_platform_driver(rockchip_usb2phy_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

