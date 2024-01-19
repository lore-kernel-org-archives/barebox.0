Delivery-date: Fri, 19 Jan 2024 17:43:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQrxu-007HaB-10
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 17:43:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQrxu-0005WI-C7
	for lore@pengutronix.de; Fri, 19 Jan 2024 17:43:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7UpBvbcA+NB8BN90zGtScrMM3vbXGKpl3QhGoFnWwEc=; b=u7N3W6HgVMAE4FF1wTXiooYRl5
	RYQ6H2Vcp40yZV+Oh9bNHAt3WevA90K5OqdkyaMNN4D8lXTrGIocjsow1czmc1hDPbCXLD4YpCTlQ
	Er4DBcFiiAhgox8uLVhOI9VcsJyAg9JLu+824Us2ZwLsAQWKGnCa7tfTS/QM8lN0RyziyxGuva+DJ
	G4n6q3jZgs4qlAoscFpg2Z/i9b0SzRwGT74y6KsmCvQQh/GPdEEcF1UwKgp+j+e9FiQW7PyuWu9Gv
	zkEX1AepukyXtAjVLwecL4TueUsuKpJSz3YuFxElKWXgxBtzspoqvgeb8kr6EfXgInq/jcLaNEHm4
	f8zs40Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrwo-0069jW-0x;
	Fri, 19 Jan 2024 16:42:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrwc-0069Zq-0Y
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 16:42:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrwa-0004xq-SM; Fri, 19 Jan 2024 17:42:12 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrwa-000xYR-Fj; Fri, 19 Jan 2024 17:42:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0054dX-2v;
	Fri, 19 Jan 2024 17:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 17:26:09 +0100
Message-Id: <20240119162610.1014870-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
References: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_084214_537380_F33A7E7A 
X-CRM114-Status: GOOD (  24.27  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 18/19] pmdomain: imx: add i.MX8MP HSIO blk-ctrl driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike other i.MX8M variants, TF-A on i.MX8MP enables all power domains
up front, so later software can keep reusing it.

This benefited us because we didn't have a driver for the HSIO blk-ctrl,
which powers the USB PHYs and controllers on the i.MX8MP.

However, not all i.MX8MP SKUs have all power domains, e.g. the lite
variant lacks VPUs, NPU, ISP and DSP and their associated power domains.

Removing power domains altogether in TF-A though would break USB in barebox
when not booted over SDP as neither BootROM or TF-A would enable the HSIO
blk-ctrl.

In order to decouple barebox from prior HSIO initialization, port over the
Linux driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pmdomain/imx/Kconfig           |   6 +
 drivers/pmdomain/imx/Makefile          |   1 +
 drivers/pmdomain/imx/imx8mp-blk-ctrl.c | 459 +++++++++++++++++++++++++
 3 files changed, 466 insertions(+)
 create mode 100644 drivers/pmdomain/imx/imx8mp-blk-ctrl.c

diff --git a/drivers/pmdomain/imx/Kconfig b/drivers/pmdomain/imx/Kconfig
index c0d767eb8f3c..f611a69f78b2 100644
--- a/drivers/pmdomain/imx/Kconfig
+++ b/drivers/pmdomain/imx/Kconfig
@@ -7,4 +7,10 @@ config IMX_GPCV2_PM_DOMAINS
 	select PM_GENERIC_DOMAINS
 	default y if ARCH_IMX7 || ARCH_IMX8M
 
+config IMX8M_BLK_CTRL
+	bool "i.MX8MP HSIO blk-ctrl" if COMPILE_TEST
+	default ARCH_IMX8MP && IMX_GPCV2_PM_DOMAINS
+	depends on PM_GENERIC_DOMAINS
+	depends on COMMON_CLK
+
 endmenu
diff --git a/drivers/pmdomain/imx/Makefile b/drivers/pmdomain/imx/Makefile
index 3a8a8d0b00db..1364944d5ac5 100644
--- a/drivers/pmdomain/imx/Makefile
+++ b/drivers/pmdomain/imx/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
+obj-$(CONFIG_IMX8M_BLK_CTRL) += imx8mp-blk-ctrl.o
diff --git a/drivers/pmdomain/imx/imx8mp-blk-ctrl.c b/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
new file mode 100644
index 000000000000..38de9d88a139
--- /dev/null
+++ b/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
@@ -0,0 +1,459 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * Copyright 2022 Pengutronix, Lucas Stach <kernel@pengutronix.de>
+ */
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/device.h>
+#include <of.h>
+#include <of_device.h>
+#include <linux/device.h>
+#include <pm_domain.h>
+#include <linux/regmap.h>
+
+#include <dt-bindings/power/imx8mp-power.h>
+
+#define GPR_REG0		0x0
+#define  PCIE_CLOCK_MODULE_EN	BIT(0)
+#define  USB_CLOCK_MODULE_EN	BIT(1)
+#define  PCIE_PHY_APB_RST	BIT(4)
+#define  PCIE_PHY_INIT_RST	BIT(5)
+#define GPR_REG1		0x4
+#define  PLL_LOCK		BIT(13)
+#define GPR_REG2		0x8
+#define  P_PLL_MASK		GENMASK(5, 0)
+#define  M_PLL_MASK		GENMASK(15, 6)
+#define  S_PLL_MASK		GENMASK(18, 16)
+#define GPR_REG3		0xc
+#define  PLL_CKE		BIT(17)
+#define  PLL_RST		BIT(31)
+
+struct imx8mp_blk_ctrl_domain;
+
+struct imx8mp_blk_ctrl {
+	struct device *dev;
+	struct device *bus_power_dev;
+	struct regmap *regmap;
+	struct imx8mp_blk_ctrl_domain *domains;
+	struct genpd_onecell_data onecell_data;
+	void (*power_off) (struct imx8mp_blk_ctrl *bc, struct imx8mp_blk_ctrl_domain *domain);
+	void (*power_on) (struct imx8mp_blk_ctrl *bc, struct imx8mp_blk_ctrl_domain *domain);
+};
+
+struct imx8mp_blk_ctrl_domain_data {
+	const char *name;
+	const char * const *clk_names;
+	int num_clks;
+	const char *gpc_name;
+};
+
+#define DOMAIN_MAX_CLKS 2
+
+struct imx8mp_blk_ctrl_domain {
+	struct generic_pm_domain genpd;
+	const struct imx8mp_blk_ctrl_domain_data *data;
+	struct clk_bulk_data clks[DOMAIN_MAX_CLKS];
+	struct device *power_dev;
+	struct imx8mp_blk_ctrl *bc;
+	int id;
+};
+
+struct imx8mp_blk_ctrl_data {
+	int max_reg;
+	int (*probe) (struct imx8mp_blk_ctrl *bc);
+	void (*power_off) (struct imx8mp_blk_ctrl *bc, struct imx8mp_blk_ctrl_domain *domain);
+	void (*power_on) (struct imx8mp_blk_ctrl *bc, struct imx8mp_blk_ctrl_domain *domain);
+	const struct imx8mp_blk_ctrl_domain_data *domains;
+	int num_domains;
+};
+
+static inline struct imx8mp_blk_ctrl_domain *
+to_imx8mp_blk_ctrl_domain(struct generic_pm_domain *genpd)
+{
+	return container_of(genpd, struct imx8mp_blk_ctrl_domain, genpd);
+}
+
+struct clk_hsio_pll {
+	struct clk_hw	hw;
+	struct regmap *regmap;
+};
+
+static inline struct clk_hsio_pll *to_clk_hsio_pll(struct clk_hw *hw)
+{
+	return container_of(hw, struct clk_hsio_pll, hw);
+}
+
+static int clk_hsio_pll_prepare(struct clk_hw *hw)
+{
+	struct clk_hsio_pll *clk = to_clk_hsio_pll(hw);
+	u32 val;
+
+	/* set the PLL configuration */
+	regmap_update_bits(clk->regmap, GPR_REG2,
+			   P_PLL_MASK | M_PLL_MASK | S_PLL_MASK,
+			   FIELD_PREP(P_PLL_MASK, 12) |
+			   FIELD_PREP(M_PLL_MASK, 800) |
+			   FIELD_PREP(S_PLL_MASK, 4));
+
+	/* de-assert PLL reset */
+	regmap_update_bits(clk->regmap, GPR_REG3, PLL_RST, PLL_RST);
+
+	/* enable PLL */
+	regmap_update_bits(clk->regmap, GPR_REG3, PLL_CKE, PLL_CKE);
+
+	return regmap_read_poll_timeout(clk->regmap, GPR_REG1, val,
+					val & PLL_LOCK, 100);
+}
+
+static void clk_hsio_pll_unprepare(struct clk_hw *hw)
+{
+	struct clk_hsio_pll *clk = to_clk_hsio_pll(hw);
+
+	regmap_update_bits(clk->regmap, GPR_REG3, PLL_RST | PLL_CKE, 0);
+}
+
+static unsigned long clk_hsio_pll_recalc_rate(struct clk_hw *hw,
+					      unsigned long parent_rate)
+{
+	return 100000000;
+}
+
+static const struct clk_ops clk_hsio_pll_ops = {
+	.enable = clk_hsio_pll_prepare,
+	.disable = clk_hsio_pll_unprepare,
+	.recalc_rate = clk_hsio_pll_recalc_rate,
+};
+
+static int imx8mp_hsio_blk_ctrl_probe(struct imx8mp_blk_ctrl *bc)
+{
+	struct clk_hsio_pll *clk_hsio_pll;
+	struct clk_hw *hw;
+	struct clk_init_data init = {};
+	int ret;
+
+	clk_hsio_pll = devm_kzalloc(bc->dev, sizeof(*clk_hsio_pll), GFP_KERNEL);
+	if (!clk_hsio_pll)
+		return -ENOMEM;
+
+	init.name = "hsio_pll";
+	init.ops = &clk_hsio_pll_ops;
+	init.parent_names = (const char *[]){"osc_24m"};
+	init.num_parents = 1;
+
+	clk_hsio_pll->regmap = bc->regmap;
+	clk_hsio_pll->hw.init = &init;
+
+	hw = &clk_hsio_pll->hw;
+	ret = clk_hw_register(bc->bus_power_dev, hw);
+	if (ret)
+		return ret;
+
+	return of_clk_add_hw_provider(dev_of_node(bc->dev), of_clk_hw_simple_get, hw);
+}
+
+static void imx8mp_hsio_blk_ctrl_power_on(struct imx8mp_blk_ctrl *bc,
+					  struct imx8mp_blk_ctrl_domain *domain)
+{
+	switch (domain->id) {
+	case IMX8MP_HSIOBLK_PD_USB:
+		regmap_set_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
+		break;
+	case IMX8MP_HSIOBLK_PD_PCIE:
+		regmap_set_bits(bc->regmap, GPR_REG0, PCIE_CLOCK_MODULE_EN);
+		break;
+	case IMX8MP_HSIOBLK_PD_PCIE_PHY:
+		regmap_set_bits(bc->regmap, GPR_REG0,
+				PCIE_PHY_APB_RST | PCIE_PHY_INIT_RST);
+		break;
+	default:
+		break;
+	}
+}
+
+static void imx8mp_hsio_blk_ctrl_power_off(struct imx8mp_blk_ctrl *bc,
+					   struct imx8mp_blk_ctrl_domain *domain)
+{
+	switch (domain->id) {
+	case IMX8MP_HSIOBLK_PD_USB:
+		regmap_clear_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
+		break;
+	case IMX8MP_HSIOBLK_PD_PCIE:
+		regmap_clear_bits(bc->regmap, GPR_REG0, PCIE_CLOCK_MODULE_EN);
+		break;
+	case IMX8MP_HSIOBLK_PD_PCIE_PHY:
+		regmap_clear_bits(bc->regmap, GPR_REG0,
+				  PCIE_PHY_APB_RST | PCIE_PHY_INIT_RST);
+		break;
+	default:
+		break;
+	}
+}
+
+static int imx8mp_hsio_enable_usb_clk(struct imx8mp_blk_ctrl *bc)
+{
+	int ret;
+	struct clk_bulk_data *usb_clk = bc->domains[IMX8MP_HSIOBLK_PD_USB].clks;
+	int num_clks = bc->domains[IMX8MP_HSIOBLK_PD_USB].data->num_clks;
+
+	ret = clk_bulk_prepare_enable(num_clks, usb_clk);
+	if (ret)
+		return ret;
+
+	regmap_set_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
+
+	return 0;
+
+}
+
+static const struct imx8mp_blk_ctrl_domain_data imx8mp_hsio_domain_data[] = {
+	[IMX8MP_HSIOBLK_PD_USB] = {
+		.name = "hsioblk-usb",
+		.clk_names = (const char *[]){ "usb" },
+		.num_clks = 1,
+		.gpc_name = "usb",
+	},
+	[IMX8MP_HSIOBLK_PD_USB_PHY1] = {
+		.name = "hsioblk-usb-phy1",
+		.gpc_name = "usb-phy1",
+	},
+	[IMX8MP_HSIOBLK_PD_USB_PHY2] = {
+		.name = "hsioblk-usb-phy2",
+		.gpc_name = "usb-phy2",
+	},
+	[IMX8MP_HSIOBLK_PD_PCIE] = {
+		.name = "hsioblk-pcie",
+		.clk_names = (const char *[]){ "pcie" },
+		.num_clks = 1,
+		.gpc_name = "pcie",
+	},
+	[IMX8MP_HSIOBLK_PD_PCIE_PHY] = {
+		.name = "hsioblk-pcie-phy",
+		.gpc_name = "pcie-phy",
+	},
+};
+
+static const struct imx8mp_blk_ctrl_data imx8mp_hsio_blk_ctl_dev_data = {
+	.max_reg = 0x24,
+	.probe = imx8mp_hsio_blk_ctrl_probe,
+	.power_on = imx8mp_hsio_blk_ctrl_power_on,
+	.power_off = imx8mp_hsio_blk_ctrl_power_off,
+	.domains = imx8mp_hsio_domain_data,
+	.num_domains = ARRAY_SIZE(imx8mp_hsio_domain_data),
+};
+
+static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
+{
+	struct imx8mp_blk_ctrl_domain *domain = to_imx8mp_blk_ctrl_domain(genpd);
+	const struct imx8mp_blk_ctrl_domain_data *data = domain->data;
+	struct imx8mp_blk_ctrl *bc = domain->bc;
+	int ret;
+
+	ret = imx8mp_hsio_enable_usb_clk(bc);
+	if (ret)
+		return ret;
+
+	/* make sure bus domain is awake */
+	ret = pm_runtime_resume_and_get_genpd(bc->bus_power_dev);
+	if (ret < 0) {
+		dev_err(bc->dev, "failed to power up bus domain\n");
+		return ret;
+	}
+
+	/* enable upstream clocks */
+	ret = clk_bulk_prepare_enable(data->num_clks, domain->clks);
+	if (ret) {
+		dev_err(bc->dev, "failed to enable clocks\n");
+		goto bus_put;
+	}
+
+	/* domain specific blk-ctrl manipulation */
+	bc->power_on(bc, domain);
+
+	/* power up upstream GPC domain */
+	ret = pm_runtime_resume_and_get_genpd(domain->power_dev);
+	if (ret < 0) {
+		dev_err(bc->dev, "failed to power up peripheral domain\n");
+		goto clk_disable;
+	}
+
+	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
+
+	return 0;
+
+clk_disable:
+	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
+bus_put:
+	pm_runtime_put_genpd(bc->bus_power_dev);
+
+	return ret;
+}
+
+static int imx8mp_blk_ctrl_power_off(struct generic_pm_domain *genpd)
+{
+	struct imx8mp_blk_ctrl_domain *domain = to_imx8mp_blk_ctrl_domain(genpd);
+	const struct imx8mp_blk_ctrl_domain_data *data = domain->data;
+	struct imx8mp_blk_ctrl *bc = domain->bc;
+	int ret;
+
+	ret = clk_bulk_prepare_enable(data->num_clks, domain->clks);
+	if (ret) {
+		dev_err(bc->dev, "failed to enable clocks\n");
+		return ret;
+	}
+
+	/* domain specific blk-ctrl manipulation */
+	bc->power_off(bc, domain);
+
+	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
+
+	/* power down upstream GPC domain */
+	pm_runtime_put_genpd(domain->power_dev);
+
+	/* allow bus domain to suspend */
+	pm_runtime_put_genpd(bc->bus_power_dev);
+
+	return 0;
+}
+
+static int imx8mp_blk_ctrl_probe(struct device *dev)
+{
+	const struct imx8mp_blk_ctrl_data *bc_data;
+	struct imx8mp_blk_ctrl *bc;
+	void __iomem *base;
+	int num_domains, i, ret;
+
+	struct regmap_config regmap_config = {
+		.reg_bits	= 32,
+		.val_bits	= 32,
+		.reg_stride	= 4,
+	};
+
+	bc = devm_kzalloc(dev, sizeof(*bc), GFP_KERNEL);
+	if (!bc)
+		return -ENOMEM;
+
+	bc->dev = dev;
+
+	bc_data = of_device_get_match_data(dev);
+	num_domains = bc_data->num_domains;
+
+	base = dev_platform_ioremap_resource(dev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	regmap_config.max_register = bc_data->max_reg;
+	bc->regmap = regmap_init_mmio(dev, base, &regmap_config);
+	if (IS_ERR(bc->regmap))
+		return dev_err_probe(dev, PTR_ERR(bc->regmap),
+				     "failed to init regmap\n");
+
+	bc->domains = devm_kcalloc(dev, num_domains,
+				   sizeof(struct imx8mp_blk_ctrl_domain),
+				   GFP_KERNEL);
+	if (!bc->domains)
+		return -ENOMEM;
+
+	bc->onecell_data.num_domains = num_domains;
+	bc->onecell_data.domains =
+		devm_kcalloc(dev, num_domains,
+			     sizeof(struct generic_pm_domain *), GFP_KERNEL);
+	if (!bc->onecell_data.domains)
+		return -ENOMEM;
+
+	bc->bus_power_dev = dev_pm_domain_attach_by_name(dev, "bus");
+	if (IS_ERR(bc->bus_power_dev))
+		return dev_err_probe(dev, PTR_ERR(bc->bus_power_dev),
+				     "failed to attach bus power domain\n");
+
+	bc->power_off = bc_data->power_off;
+	bc->power_on = bc_data->power_on;
+
+	for (i = 0; i < num_domains; i++) {
+		const struct imx8mp_blk_ctrl_domain_data *data = &bc_data->domains[i];
+		struct imx8mp_blk_ctrl_domain *domain = &bc->domains[i];
+		int j;
+
+		domain->data = data;
+
+		for (j = 0; j < data->num_clks; j++)
+			domain->clks[j].id = data->clk_names[j];
+
+		ret = clk_bulk_get(dev, data->num_clks, domain->clks);
+		if (ret) {
+			dev_err_probe(dev, ret, "failed to get clock\n");
+			goto cleanup_pds;
+		}
+
+		domain->power_dev =
+			dev_pm_domain_attach_by_name(dev, data->gpc_name);
+		if (IS_ERR(domain->power_dev)) {
+			dev_err_probe(dev, PTR_ERR(domain->power_dev),
+				      "failed to attach power domain %s\n",
+				      data->gpc_name);
+			ret = PTR_ERR(domain->power_dev);
+			goto cleanup_pds;
+		}
+
+		domain->genpd.name = data->name;
+		domain->genpd.power_on = imx8mp_blk_ctrl_power_on;
+		domain->genpd.power_off = imx8mp_blk_ctrl_power_off;
+		domain->bc = bc;
+		domain->id = i;
+
+		ret = pm_genpd_init(&domain->genpd, NULL, true);
+		if (ret) {
+			dev_err_probe(dev, ret, "failed to init power domain\n");
+			dev_pm_domain_detach(domain->power_dev, true);
+			goto cleanup_pds;
+		}
+
+		bc->onecell_data.domains[i] = &domain->genpd;
+	}
+
+	ret = of_genpd_add_provider_onecell(dev->of_node, &bc->onecell_data);
+	if (ret) {
+		dev_err_probe(dev, ret, "failed to add power domain provider\n");
+		goto cleanup_pds;
+	}
+
+	if (bc_data->probe) {
+		ret = bc_data->probe(bc);
+		if (ret)
+			goto cleanup_provider;
+	}
+
+	return 0;
+
+cleanup_provider:
+	of_genpd_del_provider(dev->of_node);
+cleanup_pds:
+	for (i--; i >= 0; i--) {
+		pm_genpd_remove(&bc->domains[i].genpd);
+		dev_pm_domain_detach(bc->domains[i].power_dev, true);
+	}
+
+	dev_pm_domain_detach(bc->bus_power_dev, true);
+
+	return ret;
+}
+
+static const struct of_device_id imx8mp_blk_ctrl_of_match[] = {
+	{
+		.compatible = "fsl,imx8mp-hsio-blk-ctrl",
+		.data = &imx8mp_hsio_blk_ctl_dev_data,
+	}, {
+		/* Sentinel */
+	}
+};
+MODULE_DEVICE_TABLE(of, imx8mp_blk_ctrl_of_match);
+
+static struct driver imx8mp_blk_ctrl_driver = {
+	.probe = imx8mp_blk_ctrl_probe,
+	.name = "imx8mp-blk-ctrl",
+	.of_match_table = imx8mp_blk_ctrl_of_match,
+};
+coredevice_platform_driver(imx8mp_blk_ctrl_driver);
+MODULE_LICENSE("GPL");
-- 
2.39.2



