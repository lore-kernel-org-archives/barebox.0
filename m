Delivery-date: Wed, 03 Apr 2024 10:08:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrvfW-005VHs-1R
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 10:08:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrvfV-0000ov-9L
	for lore@pengutronix.de; Wed, 03 Apr 2024 10:08:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eO6e+q7YZNJmXk2iBL76vntcKhS/DKhchXGJ82L/iGA=; b=KepO14kqdoqHc1KSvTDwsqqzpH
	ga7UEkziLWSOSP/KSHC2nOn4l+Gyq/9EbIGbSzjMRUDMcew5SaCtsMkxktr7zAEJoX8dow7p8zoEN
	TX3FcOKWvASwWwRyxtyakqDBiVSlrvRekDjrwDHseVKQ63LiOqfp7T7AhqZ0a3q2bmEiAPEwo7PQT
	OK1CIOFZNBH9sfCXzI9fj0/P8xOxfljkz8xrxPGI8uhZgYMxfPmcgWOQPEOZbzWQICj1HEb4y0W+I
	/T31cQNencPMGEwf3J7BM0WyNtrxSoVetJCtOfgXMGABwnaGyORddQLVZcP9JZlSng8MBZmAqHR7Y
	wbBlCgmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvev-0000000Ekca-3iQy;
	Wed, 03 Apr 2024 08:07:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvep-0000000EkX4-2dBQ
	for barebox@bombadil.infradead.org;
	Wed, 03 Apr 2024 08:07:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=eO6e+q7YZNJmXk2iBL76vntcKhS/DKhchXGJ82L/iGA=; b=idDCiUttcpOtYFeB3y2ItoLtzS
	/bkk1pDpEOk+9MY2+j2NuT1eKEn+KIB+YXBens3jsOBa7B4wOqFGM+q26/peLowosKI7Ih9O7xVsN
	KVlsstTKq52j3VocphtmMn7yxUyKtwAgLxNmOTS5Vf0oXUxViyDchZzvfp3nAaNmaxBVOrDxMvjRw
	CWdCTJ7E+ri7emTbKwQiv/6TgR2AZZUxT7O9HxqTK42Y6ivoqIHt7O25hS98PmukllZ9y/Bzt3bMX
	tx8ffcDB0IEo4lJsHkorFfz4a5TyPPWLgHplRUH7JZ3IV2BLlBUvXEDcAEY7gqwxdbx7BSf+jv3M7
	vZiC79iw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvel-000000044yY-2uUE
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 08:07:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrveE-0008Aq-7p; Wed, 03 Apr 2024 10:07:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrveD-00A8Py-Rj; Wed, 03 Apr 2024 10:07:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrveD-00HCBb-2R;
	Wed, 03 Apr 2024 10:07:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  3 Apr 2024 10:07:02 +0200
Message-Id: <20240403080703.4098404-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240403080703.4098404-1-s.hauer@pengutronix.de>
References: <20240403080703.4098404-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_090740_069633_6BDEB587 
X-CRM114-Status: GOOD (  26.32  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] phy: rockchip: add pcie3 phy driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for the Rockchip PCIe3 phy found on RK35x8 SoCs. The
code is taken from Linux as of Linux-6.9-rc2.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/phy/rockchip/Kconfig                  |   5 +
 drivers/phy/rockchip/Makefile                 |   1 +
 .../phy/rockchip/phy-rockchip-snps-pcie3.c    | 317 ++++++++++++++++++
 3 files changed, 323 insertions(+)
 create mode 100644 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c

diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
index e6cee372e7..8a10190f8e 100644
--- a/drivers/phy/rockchip/Kconfig
+++ b/drivers/phy/rockchip/Kconfig
@@ -13,3 +13,8 @@ config PHY_ROCKCHIP_NANENG_COMBO_PHY
 	  Enable this to support the Rockchip PCIe/USB3.0/SATA/QSGMII
 	  combo PHY with NaNeng IP block.
 
+config PHY_ROCKCHIP_SNPS_PCIE3
+	bool "Rockchip Snps PCIe3 PHY Driver"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	help
+	  Enable this to support the Rockchip snps PCIe3 PHY.
diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
index 51ebf06aa1..1eaee4cbee 100644
--- a/drivers/phy/rockchip/Makefile
+++ b/drivers/phy/rockchip/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_PHY_ROCKCHIP_INNO_USB2) += phy-rockchip-inno-usb2.o
 obj-$(CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY) += phy-rockchip-naneng-combphy.o
+obj-$(CONFIG_PHY_ROCKCHIP_SNPS_PCIE3) += phy-rockchip-snps-pcie3.o
diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
new file mode 100644
index 0000000000..7f39b261ca
--- /dev/null
+++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
@@ -0,0 +1,317 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Rockchip PCIE3.0 phy driver
+ *
+ * Copyright (C) 2022 Rockchip Electronics Co., Ltd.
+ */
+
+#include <of.h>
+#include <common.h>
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/kernel.h>
+//#include <linux/phy/pcie.h>
+#include <mfd/syscon.h>
+#include <linux/phy/phy.h>
+#include <linux/regmap.h>
+#include <linux/reset.h>
+
+/* Register for RK3568 */
+#define GRF_PCIE30PHY_CON1			0x4
+#define GRF_PCIE30PHY_CON6			0x18
+#define GRF_PCIE30PHY_CON9			0x24
+#define GRF_PCIE30PHY_DA_OCM			(BIT(15) | BIT(31))
+#define GRF_PCIE30PHY_STATUS0			0x80
+#define GRF_PCIE30PHY_WR_EN			(0xf << 16)
+#define SRAM_INIT_DONE(reg)			(reg & BIT(14))
+
+#define RK3568_BIFURCATION_LANE_0_1		BIT(0)
+
+/* Register for RK3588 */
+#define PHP_GRF_PCIESEL_CON			0x100
+#define RK3588_PCIE3PHY_GRF_CMN_CON0		0x0
+#define RK3588_PCIE3PHY_GRF_PHY0_STATUS1	0x904
+#define RK3588_PCIE3PHY_GRF_PHY1_STATUS1	0xa04
+#define RK3588_SRAM_INIT_DONE(reg)		(reg & BIT(0))
+
+#define RK3588_BIFURCATION_LANE_0_1		BIT(0)
+#define RK3588_BIFURCATION_LANE_2_3		BIT(1)
+#define RK3588_LANE_AGGREGATION		BIT(2)
+
+struct rockchip_p3phy_ops;
+
+struct rockchip_p3phy_priv {
+	const struct rockchip_p3phy_ops *ops;
+	void __iomem *mmio;
+	/* mode: RC, EP */
+	int mode;
+	/* pcie30_phymode: Aggregation, Bifurcation */
+	int pcie30_phymode;
+	struct regmap *phy_grf;
+	struct regmap *pipe_grf;
+	struct reset_control *p30phy;
+	struct phy *phy;
+	struct clk_bulk_data *clks;
+	int num_clks;
+	int num_lanes;
+	u32 lanes[4];
+};
+
+struct rockchip_p3phy_ops {
+	int (*phy_init)(struct rockchip_p3phy_priv *priv);
+};
+
+static int rockchip_p3phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
+{
+	return 0;
+}
+
+static int rockchip_p3phy_rk3568_init(struct rockchip_p3phy_priv *priv)
+{
+	struct phy *phy = priv->phy;
+	bool bifurcation = false;
+	int ret;
+	u32 reg;
+
+	/* Deassert PCIe PMA output clamp mode */
+	regmap_write(priv->phy_grf, GRF_PCIE30PHY_CON9, GRF_PCIE30PHY_DA_OCM);
+
+	for (int i = 0; i < priv->num_lanes; i++) {
+		dev_info(&phy->dev, "lane number %d, val %d\n", i, priv->lanes[i]);
+		if (priv->lanes[i] > 1)
+			bifurcation = true;
+	}
+
+	/* Set bifurcation if needed, and it doesn't care RC/EP */
+	if (bifurcation) {
+		dev_info(&phy->dev, "bifurcation enabled\n");
+		regmap_write(priv->phy_grf, GRF_PCIE30PHY_CON6,
+			     GRF_PCIE30PHY_WR_EN | RK3568_BIFURCATION_LANE_0_1);
+		regmap_write(priv->phy_grf, GRF_PCIE30PHY_CON1,
+			     GRF_PCIE30PHY_DA_OCM);
+	} else {
+		dev_dbg(&phy->dev, "bifurcation disabled\n");
+		regmap_write(priv->phy_grf, GRF_PCIE30PHY_CON6,
+			     GRF_PCIE30PHY_WR_EN & ~RK3568_BIFURCATION_LANE_0_1);
+	}
+
+	reset_control_deassert(priv->p30phy);
+
+	ret = regmap_read_poll_timeout(priv->phy_grf,
+				       GRF_PCIE30PHY_STATUS0,
+				       reg, SRAM_INIT_DONE(reg),
+				       500);
+	if (ret)
+		dev_err(&priv->phy->dev, "%s: lock failed 0x%x, check input refclk and power supply\n",
+		       __func__, reg);
+	return ret;
+}
+
+static const struct rockchip_p3phy_ops rk3568_ops = {
+	.phy_init = rockchip_p3phy_rk3568_init,
+};
+
+static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
+{
+	u32 reg = 0;
+	u8 mode = 0;
+	int ret;
+
+	/* Deassert PCIe PMA output clamp mode */
+	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_CMN_CON0, BIT(8) | BIT(24));
+
+	/* Set bifurcation if needed */
+	for (int i = 0; i < priv->num_lanes; i++) {
+		if (!priv->lanes[i])
+			mode |= (BIT(i) << 3);
+
+		if (priv->lanes[i] > 1)
+			mode |= (BIT(i) >> 1);
+	}
+
+	if (!mode)
+		reg = RK3588_LANE_AGGREGATION;
+	else {
+		if (mode & (BIT(0) | BIT(1)))
+			reg |= RK3588_BIFURCATION_LANE_0_1;
+
+		if (mode & (BIT(2) | BIT(3)))
+			reg |= RK3588_BIFURCATION_LANE_2_3;
+	}
+
+	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_CMN_CON0, (0x7<<16) | reg);
+
+	/* Set pcie1ln_sel in PHP_GRF_PCIESEL_CON */
+	if (!IS_ERR(priv->pipe_grf)) {
+		reg = (mode & (BIT(6) | BIT(7))) >> 6;
+		if (reg)
+			regmap_write(priv->pipe_grf, PHP_GRF_PCIESEL_CON,
+				     (reg << 16) | reg);
+	}
+
+	reset_control_deassert(priv->p30phy);
+
+	ret = regmap_read_poll_timeout(priv->phy_grf,
+				       RK3588_PCIE3PHY_GRF_PHY0_STATUS1,
+				       reg, RK3588_SRAM_INIT_DONE(reg),
+				       500);
+	ret |= regmap_read_poll_timeout(priv->phy_grf,
+					RK3588_PCIE3PHY_GRF_PHY1_STATUS1,
+					reg, RK3588_SRAM_INIT_DONE(reg),
+					500);
+	if (ret)
+		dev_err(&priv->phy->dev, "lock failed 0x%x, check input refclk and power supply\n",
+			reg);
+	return ret;
+}
+
+static const struct rockchip_p3phy_ops rk3588_ops = {
+	.phy_init = rockchip_p3phy_rk3588_init,
+};
+
+static int rochchip_p3phy_init(struct phy *phy)
+{
+	struct rockchip_p3phy_priv *priv = phy_get_drvdata(phy);
+	int ret;
+
+	ret = clk_bulk_prepare_enable(priv->num_clks, priv->clks);
+	if (ret) {
+		dev_err(&priv->phy->dev, "failed to enable PCIe bulk clks %d\n", ret);
+		return ret;
+	}
+
+	reset_control_assert(priv->p30phy);
+	udelay(1);
+
+	if (priv->ops->phy_init) {
+		ret = priv->ops->phy_init(priv);
+		if (ret)
+			clk_bulk_disable_unprepare(priv->num_clks, priv->clks);
+	}
+
+	return ret;
+}
+
+static int rochchip_p3phy_exit(struct phy *phy)
+{
+	struct rockchip_p3phy_priv *priv = phy_get_drvdata(phy);
+
+	clk_bulk_disable_unprepare(priv->num_clks, priv->clks);
+	reset_control_assert(priv->p30phy);
+	return 0;
+}
+
+static const struct phy_ops rochchip_p3phy_ops = {
+	.init = rochchip_p3phy_init,
+	.exit = rochchip_p3phy_exit,
+	.set_mode = rockchip_p3phy_set_mode,
+};
+
+static struct phy *rockchip_p3phy_xlate(struct device *dev,
+					struct of_phandle_args *args)
+{
+	struct rockchip_p3phy_priv *priv = dev->priv;
+
+	return priv->phy;
+}
+
+static int rockchip_p3phy_probe(struct device *dev)
+{
+	struct phy_provider *phy_provider;
+	struct rockchip_p3phy_priv *priv;
+	struct device_node *np = dev->of_node;
+	struct resource *res;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res)) {
+		ret = PTR_ERR(res);
+		return ret;
+	}
+
+	priv->mmio = IOMEM(res->start);
+	if (IS_ERR(priv->mmio)) {
+		ret = PTR_ERR(priv->mmio);
+		return ret;
+	}
+
+	priv->ops = device_get_match_data(dev);
+	if (!priv->ops) {
+		dev_err(dev, "no of match data provided\n");
+		return -EINVAL;
+	}
+
+	priv->phy_grf = syscon_regmap_lookup_by_phandle(np, "rockchip,phy-grf");
+	if (IS_ERR(priv->phy_grf)) {
+		dev_err(dev, "failed to find rockchip,phy_grf regmap\n");
+		return PTR_ERR(priv->phy_grf);
+	}
+
+	if (of_device_is_compatible(np, "rockchip,rk3588-pcie3-phy")) {
+		priv->pipe_grf =
+			syscon_regmap_lookup_by_phandle(dev->of_node,
+							"rockchip,pipe-grf");
+		if (IS_ERR(priv->pipe_grf))
+			dev_info(dev, "failed to find rockchip,pipe_grf regmap\n");
+	} else {
+		priv->pipe_grf = NULL;
+	}
+
+	priv->num_lanes = of_property_read_variable_u32_array(dev->of_node, "data-lanes",
+							     priv->lanes, 2,
+							     ARRAY_SIZE(priv->lanes));
+
+	/* if no data-lanes assume aggregation */
+	if (priv->num_lanes == -EINVAL) {
+		dev_dbg(dev, "no data-lanes property found\n");
+		priv->num_lanes = 1;
+		priv->lanes[0] = 1;
+	} else if (priv->num_lanes < 0) {
+		dev_err(dev, "failed to read data-lanes property %d\n", priv->num_lanes);
+		return priv->num_lanes;
+	}
+
+	priv->phy = phy_create(dev, NULL, &rochchip_p3phy_ops);
+	if (IS_ERR(priv->phy)) {
+		dev_err(dev, "failed to create combphy\n");
+		return PTR_ERR(priv->phy);
+	}
+
+	priv->p30phy = reset_control_get_optional(dev, "phy");
+	if (IS_ERR(priv->p30phy)) {
+		return dev_err_probe(dev, PTR_ERR(priv->p30phy),
+				     "failed to get phy reset control\n");
+	}
+	if (!priv->p30phy)
+		dev_info(dev, "no phy reset control specified\n");
+
+	priv->num_clks = clk_bulk_get_all(dev, &priv->clks);
+	if (priv->num_clks < 1)
+		return -ENODEV;
+
+	dev->priv = priv;
+	phy_set_drvdata(priv->phy, priv);
+	phy_provider = of_phy_provider_register(dev, rockchip_p3phy_xlate);
+
+	return PTR_ERR_OR_ZERO(phy_provider);
+}
+
+static const struct of_device_id rockchip_p3phy_of_match[] = {
+	{ .compatible = "rockchip,rk3568-pcie3-phy", .data = &rk3568_ops },
+	{ .compatible = "rockchip,rk3588-pcie3-phy", .data = &rk3588_ops },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, rockchip_p3phy_of_match);
+
+static struct driver rockchip_p3phy_driver = {
+	.probe	= rockchip_p3phy_probe,
+	.name = "rockchip-snps-pcie3-phy",
+	.of_compatible = rockchip_p3phy_of_match,
+};
+coredevice_platform_driver(rockchip_p3phy_driver);
+
+MODULE_DESCRIPTION("Rockchip Synopsys PCIe 3.0 PHY driver");
+MODULE_LICENSE("GPL");
-- 
2.39.2



