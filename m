Delivery-date: Tue, 22 Jun 2021 08:49:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvaDX-00057I-Si
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 08:49:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvaDV-00076N-NJ
	for lore@pengutronix.de; Tue, 22 Jun 2021 08:49:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2uTUhlBBwwTYrGk/sMRj5ImlOQM1TbVe/uMYxRq6IKk=; b=rnI0swI4FDwRFO
	d9oL8srsrQFD6HiLxD55GBc7BJCBt3DNVdM7BQ8tJGW9FRfmy7sUO7+pn1+SUB5fHaBpkh16I9kBS
	uw6/6hP7AeK1hvHR4ptjh9OULcHgq+kcIm4c/g2qorr8QRp9U4qyuXDO1uzFNDi5mx8Z66Xtj2hBN
	OAUCMCm1LEEa6mfnIvkkGm69NjcwnJYgie7X5P5KCXd8JM05bppRta7xZsBaVDW1B5rcTJjYLBcOq
	4tVWEyRcDuu4lwbonJwU5MoCYqTnqhRpCR+eDiv+9n3ZJG74qKTfwsypxuZseiT9nY5+aA0cJ+/61
	JEIVnRoI8U0VFupb6d8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvaCD-005scx-IF; Tue, 22 Jun 2021 06:47:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvaBr-005sXY-Fm
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 06:47:23 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvaBn-0006od-Jm; Tue, 22 Jun 2021 08:47:15 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvaBn-0004Nk-6z; Tue, 22 Jun 2021 08:47:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 22 Jun 2021 08:47:07 +0200
Message-Id: <20210622064711.14058-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210622064711.14058-1-s.hauer@pengutronix.de>
References: <20210622064711.14058-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_234719_884054_0D3F03B3 
X-CRM114-Status: GOOD (  23.58  )
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
Subject: [PATCH 3/7] phy: rockchip: Add naneng-combphy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds driver for the PCIe/USB3.0/SATA phy found on Rockchip RK3568
SoCs. The driver has been taken from the Rockchip downstream Kernel
repository.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/phy/rockchip/Kconfig                  |   7 +
 drivers/phy/rockchip/Makefile                 |   1 +
 .../rockchip/phy-rockchip-naneng-combphy.c    | 614 ++++++++++++++++++
 3 files changed, 622 insertions(+)
 create mode 100644 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c

diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
index d6ae308aa1..37a514059e 100644
--- a/drivers/phy/rockchip/Kconfig
+++ b/drivers/phy/rockchip/Kconfig
@@ -5,3 +5,10 @@ config PHY_ROCKCHIP_INNO_USB2
 	help
 	  Support for Rockchip USB2.0 PHY with Innosilicon IP block.
 
+config PHY_ROCKCHIP_NANENG_COMBO_PHY
+	bool "Rockchip NANENG COMBO PHY Driver"
+	depends on ARCH_ROCKCHIP && OFDEVICE
+	help
+	  Enable this to support the Rockchip PCIe/USB3.0/SATA/QSGMII
+	  combo PHY with NaNeng IP block.
+
diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
index 811f12bc60..4d75d610ef 100644
--- a/drivers/phy/rockchip/Makefile
+++ b/drivers/phy/rockchip/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_PHY_ROCKCHIP_INNO_USB2) += phy-rockchip-inno-usb2.o
+obj-$(CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY) += phy-rockchip-naneng-combphy.o
diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
new file mode 100644
index 0000000000..a8d7fd13d8
--- /dev/null
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -0,0 +1,614 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Rockchip PIPE USB3.0 PCIE SATA combphy driver
+ *
+ * Copyright (C) 2020 Rockchip Electronics Co., Ltd.
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
+#include <linux/reset.h>
+#include <mfd/syscon.h>
+#include <linux/iopoll.h>
+#include <dt-bindings/phy/phy.h>
+
+#define BIT_WRITEABLE_SHIFT		16
+
+struct rockchip_combphy_priv;
+
+struct combphy_reg {
+	u16 offset;
+	u16 bitend;
+	u16 bitstart;
+	u16 disable;
+	u16 enable;
+};
+
+struct rockchip_combphy_grfcfg {
+	struct combphy_reg pcie_mode_set;
+	struct combphy_reg usb_mode_set;
+	struct combphy_reg sgmii_mode_set;
+	struct combphy_reg qsgmii_mode_set;
+	struct combphy_reg pipe_rxterm_set;
+	struct combphy_reg pipe_txelec_set;
+	struct combphy_reg pipe_txcomp_set;
+	struct combphy_reg pipe_clk_25m;
+	struct combphy_reg pipe_clk_100m;
+	struct combphy_reg pipe_phymode_sel;
+	struct combphy_reg pipe_rate_sel;
+	struct combphy_reg pipe_rxterm_sel;
+	struct combphy_reg pipe_txelec_sel;
+	struct combphy_reg pipe_txcomp_sel;
+	struct combphy_reg pipe_clk_ext;
+	struct combphy_reg pipe_sel_usb;
+	struct combphy_reg pipe_sel_qsgmii;
+	struct combphy_reg pipe_phy_status;
+	struct combphy_reg con0_for_pcie;
+	struct combphy_reg con1_for_pcie;
+	struct combphy_reg con2_for_pcie;
+	struct combphy_reg con3_for_pcie;
+	struct combphy_reg con0_for_sata;
+	struct combphy_reg con1_for_sata;
+	struct combphy_reg con2_for_sata;
+	struct combphy_reg con3_for_sata;
+	struct combphy_reg pipe_con0_for_sata;
+	struct combphy_reg pipe_sgmii_mac_sel;
+	struct combphy_reg pipe_xpcs_phy_ready;
+	struct combphy_reg u3otg0_port_en;
+	struct combphy_reg u3otg1_port_en;
+};
+
+struct rockchip_combphy_cfg {
+	const int num_clks;
+	const struct clk_bulk_data *clks;
+	const struct rockchip_combphy_grfcfg *grfcfg;
+	int (*combphy_cfg)(struct rockchip_combphy_priv *priv);
+};
+
+struct rockchip_combphy_priv {
+	u8 mode;
+	void __iomem *mmio;
+	int num_clks;
+	struct clk_bulk_data *clks;
+	struct device_d *dev;
+	struct regmap *pipe_grf;
+	struct regmap *phy_grf;
+	struct phy *phy;
+	struct reset_control *apb_rst;
+	struct reset_control *phy_rst;
+	const struct rockchip_combphy_cfg *cfg;
+};
+
+static inline bool param_read(struct regmap *base,
+			      const struct combphy_reg *reg, u32 val)
+{
+	int ret;
+	u32 mask, orig, tmp;
+
+	ret = regmap_read(base, reg->offset, &orig);
+	if (ret)
+		return false;
+
+	mask = GENMASK(reg->bitend, reg->bitstart);
+	tmp = (orig & mask) >> reg->bitstart;
+
+	return tmp == val;
+}
+
+static int param_write(struct regmap *base,
+		       const struct combphy_reg *reg, bool en)
+{
+	u32 val, mask, tmp;
+
+	tmp = en ? reg->enable : reg->disable;
+	mask = GENMASK(reg->bitend, reg->bitstart);
+	val = (tmp << reg->bitstart) | (mask << BIT_WRITEABLE_SHIFT);
+
+	return regmap_write(base, reg->offset, val);
+}
+
+static u32 rockchip_combphy_is_ready(struct rockchip_combphy_priv *priv)
+{
+	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
+	u32 mask, val;
+
+	mask = GENMASK(cfg->pipe_phy_status.bitend,
+		       cfg->pipe_phy_status.bitstart);
+
+	regmap_read(priv->phy_grf, cfg->pipe_phy_status.offset, &val);
+	val = (val & mask) >> cfg->pipe_phy_status.bitstart;
+
+	return val;
+}
+
+static int rockchip_combphy_pcie_init(struct rockchip_combphy_priv *priv)
+{
+	int ret = 0;
+
+	if (priv->cfg->combphy_cfg) {
+		ret = priv->cfg->combphy_cfg(priv);
+		if (ret) {
+			dev_err(priv->dev, "failed to init phy for pcie\n");
+			return ret;
+		}
+	}
+
+	return ret;
+}
+
+static int rockchip_combphy_usb3_init(struct rockchip_combphy_priv *priv)
+{
+	int ret = 0;
+
+	if (priv->cfg->combphy_cfg) {
+		ret = priv->cfg->combphy_cfg(priv);
+		if (ret) {
+			dev_err(priv->dev, "failed to init phy for usb3\n");
+			return ret;
+		}
+	}
+
+	return ret;
+}
+
+static int rockchip_combphy_sata_init(struct rockchip_combphy_priv *priv)
+{
+	int ret = 0;
+
+	if (priv->cfg->combphy_cfg) {
+		ret = priv->cfg->combphy_cfg(priv);
+		if (ret) {
+			dev_err(priv->dev, "failed to init phy for sata\n");
+			return ret;
+		}
+	}
+
+	return ret;
+}
+
+static int rockchip_combphy_sgmii_init(struct rockchip_combphy_priv *priv)
+{
+	int ret = 0;
+
+	if (priv->cfg->combphy_cfg) {
+		ret = priv->cfg->combphy_cfg(priv);
+		if (ret) {
+			dev_err(priv->dev, "failed to init phy for sgmii\n");
+			return ret;
+		}
+	}
+
+	return ret;
+}
+
+static int rockchip_combphy_set_mode(struct rockchip_combphy_priv *priv)
+{
+	switch (priv->mode) {
+	case PHY_TYPE_PCIE:
+		rockchip_combphy_pcie_init(priv);
+		break;
+	case PHY_TYPE_USB3:
+		rockchip_combphy_usb3_init(priv);
+		break;
+	case PHY_TYPE_SATA:
+		rockchip_combphy_sata_init(priv);
+		break;
+	case PHY_TYPE_SGMII:
+	case PHY_TYPE_QSGMII:
+		return rockchip_combphy_sgmii_init(priv);
+	default:
+		dev_err(priv->dev, "incompatible PHY type\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int rockchip_combphy_init(struct phy *phy)
+{
+	struct rockchip_combphy_priv *priv = phy_get_drvdata(phy);
+	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
+	u32 val;
+	int ret;
+
+	ret = clk_bulk_enable(priv->num_clks, priv->clks);
+	if (ret) {
+		dev_err(priv->dev, "failed to enable clks\n");
+		return ret;
+	}
+
+	ret = rockchip_combphy_set_mode(priv);
+	if (ret)
+		goto err_clk;
+
+	ret = reset_control_deassert(priv->phy_rst);
+	if (ret)
+		goto err_clk;
+
+	if (priv->mode == PHY_TYPE_USB3) {
+		ret = readx_poll_timeout(rockchip_combphy_is_ready,
+						priv, val,
+						val == cfg->pipe_phy_status.enable,
+						1000);
+		if (ret)
+			dev_warn(priv->dev, "wait phy status ready timeout\n");
+	}
+
+	return 0;
+
+err_clk:
+	clk_bulk_disable(priv->num_clks, priv->clks);
+
+	return ret;
+}
+
+static int rockchip_combphy_exit(struct phy *phy)
+{
+	struct rockchip_combphy_priv *priv = phy_get_drvdata(phy);
+
+	clk_bulk_disable(priv->num_clks, priv->clks);
+	reset_control_assert(priv->phy_rst);
+
+	return 0;
+}
+
+static const struct phy_ops rochchip_combphy_ops = {
+	.init = rockchip_combphy_init,
+	.exit = rockchip_combphy_exit,
+};
+
+static struct phy *rockchip_combphy_xlate(struct device_d *dev,
+					  struct of_phandle_args *args)
+{
+	struct rockchip_combphy_priv *priv = dev->priv;
+
+	if (args->args_count != 1) {
+		dev_err(dev, "invalid number of arguments\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	if (priv->mode != PHY_NONE && priv->mode != args->args[0])
+		dev_warn(dev, "phy type select %d overwriting type %d\n",
+			 args->args[0], priv->mode);
+
+	priv->mode = args->args[0];
+
+	return priv->phy;
+}
+
+static int rockchip_combphy_parse_dt(struct device_d *dev,
+				     struct rockchip_combphy_priv *priv)
+{
+	struct device_node *np = dev->device_node;
+	const struct rockchip_combphy_cfg *phy_cfg = priv->cfg;
+	int ret, mac_id;
+
+	ret = clk_bulk_get(dev, priv->num_clks, priv->clks);
+	if (ret == -EPROBE_DEFER)
+		return -EPROBE_DEFER;
+	if (ret)
+		priv->num_clks = 0;
+
+	priv->pipe_grf = syscon_regmap_lookup_by_phandle(np,
+							 "rockchip,pipe-grf");
+	if (IS_ERR(priv->pipe_grf)) {
+		dev_err(dev, "failed to find peri_ctrl pipe-grf regmap\n");
+		return PTR_ERR(priv->pipe_grf);
+	}
+
+	priv->phy_grf = syscon_regmap_lookup_by_phandle(np,
+							"rockchip,pipe-phy-grf");
+	if (IS_ERR(priv->phy_grf)) {
+		dev_err(dev, "failed to find peri_ctrl pipe-phy-grf regmap\n");
+		return PTR_ERR(priv->phy_grf);
+	}
+
+	if (!of_property_read_u32(np, "rockchip,sgmii-mac-sel", &mac_id) &&
+	    (mac_id > 0))
+		param_write(priv->pipe_grf, &phy_cfg->grfcfg->pipe_sgmii_mac_sel,
+			    true);
+
+	priv->apb_rst = reset_control_get(dev, "combphy-apb");
+	if (IS_ERR(priv->apb_rst)) {
+		ret = PTR_ERR(priv->apb_rst);
+
+		if (ret != -EPROBE_DEFER)
+			dev_warn(dev, "failed to get apb reset\n");
+
+		return ret;
+	}
+
+	priv->phy_rst = reset_control_get(dev, "combphy");
+	if (IS_ERR(priv->phy_rst)) {
+		ret = PTR_ERR(priv->phy_rst);
+
+		if (ret != -EPROBE_DEFER)
+			dev_warn(dev, "failed to get phy reset\n");
+
+		return ret;
+	}
+
+	return reset_control_assert(priv->phy_rst);
+}
+
+static int rockchip_combphy_probe(struct device_d *dev)
+{
+	struct phy_provider *phy_provider;
+	struct rockchip_combphy_priv *priv;
+	const struct rockchip_combphy_cfg *phy_cfg;
+	struct resource *res;
+	int ret;
+
+	phy_cfg = device_get_match_data(dev);
+	if (!phy_cfg) {
+		dev_err(dev, "No OF match data provided\n");
+		return -EINVAL;
+	}
+
+	priv = xzalloc(sizeof(*priv));
+	if (!priv)
+		return -ENOMEM;
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res)) {
+		ret = PTR_ERR(res);
+		return ret;
+	}
+
+	priv->mmio = IOMEM(res->start);
+
+	priv->num_clks = phy_cfg->num_clks;
+
+	priv->clks = memdup(phy_cfg->clks,
+			    phy_cfg->num_clks * sizeof(struct clk_bulk_data));
+	if (!priv->clks)
+		return -ENOMEM;
+
+	priv->dev = dev;
+	priv->mode = PHY_NONE;
+	priv->cfg = phy_cfg;
+
+	ret = rockchip_combphy_parse_dt(dev, priv);
+	if (ret)
+		return ret;
+
+	priv->phy = phy_create(dev, NULL, &rochchip_combphy_ops);
+	if (IS_ERR(priv->phy)) {
+		dev_err(dev, "failed to create combphy\n");
+		return PTR_ERR(priv->phy);
+	}
+
+	dev->priv = priv;
+	phy_set_drvdata(priv->phy, priv);
+
+	phy_provider = of_phy_provider_register(dev, rockchip_combphy_xlate);
+
+	return PTR_ERR_OR_ZERO(phy_provider);
+}
+
+static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
+{
+	struct device_node *np = priv->dev->device_node;
+	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
+	struct clk *refclk = NULL;
+	unsigned long rate;
+	int i;
+	u32 val;
+
+	/* Configure PHY reference clock frequency */
+	for (i = 0; i < priv->num_clks; i++) {
+		if (!strncmp(priv->clks[i].id, "refclk", 6)) {
+			refclk = priv->clks[i].clk;
+			break;
+		}
+	}
+
+	if (!refclk) {
+		dev_err(priv->dev, "No refclk found\n");
+		return -EINVAL;
+	}
+
+	switch (priv->mode) {
+	case PHY_TYPE_PCIE:
+		/* Set SSC downward spread spectrum */
+		val = readl(priv->mmio + (0x1f << 2));
+		val &= ~GENMASK(5, 4);
+		val |= 0x01 << 4;
+		writel(val, priv->mmio + 0x7c);
+
+		param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
+		param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
+		param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
+		param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
+		break;
+	case PHY_TYPE_USB3:
+		/* Set SSC downward spread spectrum */
+		val = readl(priv->mmio + (0x1f << 2));
+		val &= ~GENMASK(5, 4);
+		val |= 0x01 << 4;
+		writel(val, priv->mmio + 0x7c);
+
+		/* Enable adaptive CTLE for USB3.0 Rx */
+		val = readl(priv->mmio + (0x0e << 2));
+		val &= ~GENMASK(0, 0);
+		val |= 0x01;
+		writel(val, priv->mmio + (0x0e << 2));
+
+		param_write(priv->phy_grf, &cfg->pipe_sel_usb, true);
+		param_write(priv->phy_grf, &cfg->pipe_txcomp_sel, false);
+		param_write(priv->phy_grf, &cfg->pipe_txelec_sel, false);
+		param_write(priv->phy_grf, &cfg->usb_mode_set, true);
+		break;
+	case PHY_TYPE_SATA:
+		writel(0x41, priv->mmio + 0x38);
+		writel(0x8F, priv->mmio + 0x18);
+		param_write(priv->phy_grf, &cfg->con0_for_sata, true);
+		param_write(priv->phy_grf, &cfg->con1_for_sata, true);
+		param_write(priv->phy_grf, &cfg->con2_for_sata, true);
+		param_write(priv->phy_grf, &cfg->con3_for_sata, true);
+		param_write(priv->pipe_grf, &cfg->pipe_con0_for_sata, true);
+		break;
+	case PHY_TYPE_SGMII:
+		param_write(priv->pipe_grf, &cfg->pipe_xpcs_phy_ready, true);
+		param_write(priv->phy_grf, &cfg->pipe_phymode_sel, true);
+		param_write(priv->phy_grf, &cfg->pipe_sel_qsgmii, true);
+		param_write(priv->phy_grf, &cfg->sgmii_mode_set, true);
+		break;
+	case PHY_TYPE_QSGMII:
+		param_write(priv->pipe_grf, &cfg->pipe_xpcs_phy_ready, true);
+		param_write(priv->phy_grf, &cfg->pipe_phymode_sel, true);
+		param_write(priv->phy_grf, &cfg->pipe_rate_sel, true);
+		param_write(priv->phy_grf, &cfg->pipe_sel_qsgmii, true);
+		param_write(priv->phy_grf, &cfg->qsgmii_mode_set, true);
+		break;
+	default:
+		dev_err(priv->dev, "incompatible PHY type\n");
+		return -EINVAL;
+	}
+
+	rate = clk_get_rate(refclk);
+
+	switch (rate) {
+	case 24000000:
+		if (priv->mode == PHY_TYPE_USB3 || priv->mode == PHY_TYPE_SATA) {
+			/* Set ssc_cnt[9:0]=0101111101 & 31.5KHz */
+			val = readl(priv->mmio + (0x0e << 2));
+			val &= ~GENMASK(7, 6);
+			val |= 0x01 << 6;
+			writel(val, priv->mmio + (0x0e << 2));
+
+			val = readl(priv->mmio + (0x0f << 2));
+			val &= ~GENMASK(7, 0);
+			val |= 0x5f;
+			writel(val, priv->mmio + (0x0f << 2));
+		}
+		break;
+	case 25000000:
+		param_write(priv->phy_grf, &cfg->pipe_clk_25m, true);
+		break;
+	case 100000000:
+		param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
+		if (priv->mode == PHY_TYPE_PCIE) {
+			/* PLL KVCO tuning fine */
+			val = readl(priv->mmio + (0x20 << 2));
+			val &= ~(0x7 << 2);
+			val |= 0x2 << 2;
+			writel(val, priv->mmio + (0x20 << 2));
+
+			/* Enable controlling random jitter, aka RMJ */
+			writel(0x4, priv->mmio + (0xb << 2));
+
+			val = readl(priv->mmio + (0x5 << 2));
+			val &= ~(0x3 << 6);
+			val |= 0x1 << 6;
+			writel(val, priv->mmio + (0x5 << 2));
+
+			writel(0x32, priv->mmio + (0x11 << 2));
+			writel(0xf0, priv->mmio + (0xa << 2));
+		} else if (priv->mode == PHY_TYPE_SATA) {
+			/* downward spread spectrum +500ppm */
+			val = readl(priv->mmio + (0x1f << 2));
+			val &= ~GENMASK(7, 4);
+			val |= 0x50;
+			writel(val, priv->mmio + (0x1f << 2));
+		}
+		break;
+	default:
+		dev_err(priv->dev, "Unsupported rate: %lu\n", rate);
+		return -EINVAL;
+	}
+
+	if (of_property_read_bool(np, "rockchip,ext-refclk")) {
+		param_write(priv->phy_grf, &cfg->pipe_clk_ext, true);
+		if (priv->mode == PHY_TYPE_PCIE && rate == 100000000) {
+			val = readl(priv->mmio + (0xc << 2));
+			val |= 0x3 << 4 | 0x1 << 7;
+			writel(val, priv->mmio + (0xc << 2));
+
+			val = readl(priv->mmio + (0xd << 2));
+			val |= 0x1;
+			writel(val, priv->mmio + (0xd << 2));
+		}
+	}
+
+	if (of_property_read_bool(np, "rockchip,enable-ssc")) {
+		val = readl(priv->mmio + (0x7 << 2));
+		val |= BIT(4);
+		writel(val, priv->mmio + (0x7 << 2));
+	}
+
+	return 0;
+}
+
+static const struct rockchip_combphy_grfcfg rk3568_combphy_grfcfgs = {
+	/* pipe-phy-grf */
+	.pcie_mode_set		= { 0x0000, 5, 0, 0x00, 0x11 },
+	.usb_mode_set		= { 0x0000, 5, 0, 0x00, 0x04 },
+	.sgmii_mode_set		= { 0x0000, 5, 0, 0x00, 0x01 },
+	.qsgmii_mode_set	= { 0x0000, 5, 0, 0x00, 0x21 },
+	.pipe_rxterm_set	= { 0x0000, 12, 12, 0x00, 0x01 },
+	.pipe_txelec_set	= { 0x0004, 1, 1, 0x00, 0x01 },
+	.pipe_txcomp_set	= { 0x0004, 4, 4, 0x00, 0x01 },
+	.pipe_clk_25m		= { 0x0004, 14, 13, 0x00, 0x01 },
+	.pipe_clk_100m		= { 0x0004, 14, 13, 0x00, 0x02 },
+	.pipe_phymode_sel	= { 0x0008, 1, 1, 0x00, 0x01 },
+	.pipe_rate_sel		= { 0x0008, 2, 2, 0x00, 0x01 },
+	.pipe_rxterm_sel	= { 0x0008, 8, 8, 0x00, 0x01 },
+	.pipe_txelec_sel	= { 0x0008, 12, 12, 0x00, 0x01 },
+	.pipe_txcomp_sel	= { 0x0008, 15, 15, 0x00, 0x01 },
+	.pipe_clk_ext		= { 0x000c, 9, 8, 0x02, 0x01 },
+	.pipe_sel_usb		= { 0x000c, 14, 13, 0x00, 0x01 },
+	.pipe_sel_qsgmii	= { 0x000c, 15, 13, 0x00, 0x07 },
+	.pipe_phy_status	= { 0x0034, 6, 6, 0x01, 0x00 },
+	.con0_for_pcie		= { 0x0000, 15, 0, 0x00, 0x1000 },
+	.con1_for_pcie		= { 0x0004, 15, 0, 0x00, 0x0000 },
+	.con2_for_pcie		= { 0x0008, 15, 0, 0x00, 0x0101 },
+	.con3_for_pcie		= { 0x000c, 15, 0, 0x00, 0x0200 },
+	.con0_for_sata		= { 0x0000, 15, 0, 0x00, 0x0119 },
+	.con1_for_sata		= { 0x0004, 15, 0, 0x00, 0x0040 },
+	.con2_for_sata		= { 0x0008, 15, 0, 0x00, 0x80c3 },
+	.con3_for_sata		= { 0x000c, 15, 0, 0x00, 0x4407 },
+	/* pipe-grf */
+	.pipe_con0_for_sata	= { 0x0000, 15, 0, 0x00, 0x2220 },
+	.pipe_sgmii_mac_sel	= { 0x0040, 1, 1, 0x00, 0x01 },
+	.pipe_xpcs_phy_ready	= { 0x0040, 2, 2, 0x00, 0x01 },
+	.u3otg0_port_en		= { 0x0104, 15, 0, 0x0181, 0x1100 },
+	.u3otg1_port_en		= { 0x0144, 15, 0, 0x0181, 0x1100 },
+};
+
+static const struct clk_bulk_data rk3568_clks[] = {
+	{ .id = "refclk" },
+	{ .id = "apbclk" },
+	{ .id = "pipe_clk" },
+};
+
+static const struct rockchip_combphy_cfg rk3568_combphy_cfgs = {
+	.num_clks	= ARRAY_SIZE(rk3568_clks),
+	.clks		= rk3568_clks,
+	.grfcfg		= &rk3568_combphy_grfcfgs,
+	.combphy_cfg	= rk3568_combphy_cfg,
+};
+
+static const struct of_device_id rockchip_combphy_of_match[] = {
+	{
+		.compatible = "rockchip,rk3568-naneng-combphy",
+		.data = &rk3568_combphy_cfgs,
+	},
+	{ },
+};
+
+static struct driver_d rockchip_combphy_driver = {
+	.probe	= rockchip_combphy_probe,
+	.name = "naneng-combphy",
+	.of_compatible = rockchip_combphy_of_match,
+};
+coredevice_platform_driver(rockchip_combphy_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

