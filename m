Delivery-date: Wed, 19 Nov 2025 16:25:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLk44-002haf-19
	for lore@lore.pengutronix.de;
	Wed, 19 Nov 2025 16:25:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLk43-0008Iy-7c
	for lore@pengutronix.de; Wed, 19 Nov 2025 16:25:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Oxhw28fBZ3H7OXk6Y7P7XAZKKLvE6NLcbpJ6CSMqHb0=; b=T/diujWw3PTxrCduVT8QlfK7yD
	uQp/K+Dsnl93aOZs0MlkzQWTPGyZHhGUqMzpmLqSASnhz/qHXxt9CZzKfxxTKD5cGRyPUFsxrSWf7
	n4lfmEzZvzYd17AF/xLjtjellpDcuqQpugwNIy0DKgL23CLqGa92KoQUOwpUhrIf3GNdmgXtaJsj3
	SYFRU5LrrkJefiJfaytIAq7K97Oc/b7Zd3hZwpREq58tttSy5ZWakeWLCRP90k3PQdqAyWLlrpfuE
	lyI5noWZT0Gc7kJB8cXjaMtmjOmxJw2r5hbO9alP8ciksq+lN+uS+oBtGN2O96B0pWuoSENGsch9U
	iELNJo0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLk3Y-00000003UCd-477k;
	Wed, 19 Nov 2025 15:25:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLk3U-00000003UAD-0ZMl
	for barebox@lists.infradead.org;
	Wed, 19 Nov 2025 15:25:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vLk3R-000876-6r; Wed, 19 Nov 2025 16:25:09 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vLk3R-001GtJ-03;
	Wed, 19 Nov 2025 16:25:09 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vLk3Q-0000000AjxD-3zra;
	Wed, 19 Nov 2025 16:25:08 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 19 Nov 2025 16:25:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251119-imx93-pd-v1-2-2b114723a734@pengutronix.de>
References: <20251119-imx93-pd-v1-0-2b114723a734@pengutronix.de>
In-Reply-To: <20251119-imx93-pd-v1-0-2b114723a734@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=12456;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=0MNcqKfPV8k9H7XlbOgw1EsK8086Xgh0GaJgumVlMcI=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpHeFUspqAg9k6GVtv0/5r2Q1njgFvPOqjcES2n
 5kwLN9xhUSJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaR3hVAAKCRC/aVhE+XH0
 q7YvD/95dwr/hSfkpWXuNGosMJD6yTa1GDa+0PTy2BTXMv48Lqv03VMJzj6fDWVl8crC01DOKqt
 qFskz6CabBlsFiwSsxdmzA1FvQ8olSyIVty246QeX+pTS6otb6BatNgjUKslDLHtpo7RCw+uvg3
 HGzAy9IRAi5xzoKq7Ff88p4VUV/JdjEGst8A9V0SohQYR7DfIwdL21SUU8Ni3WG6Hd8EKyzgwu1
 MDvsViKiYDvhPQqszSV6gy9+f6fry+wEO0Y5k9WKDOhcAWZ9o3GWVIP8Se/zgAMQx5aNAt8BEr+
 fM7tiE5Wlzd8QCCqfh1tb+BqefjOFRlVLmieTY5uHT35zM3JEDRTe+z3j++Nj/Ku2ROD4u7rQWa
 AgSkYnMy7DUdKLs4DexOTdpLOjZS4BodAJyd2nLSZ+kyHwFADDUkfaRIOCb5Ax/5cE4JD2QW32n
 MTEHZos4MiMm50F599oR85jSbkcwbspbgJkrRJAhOdv6z7RS5DLcOw0erl+86iqRzAXaJkHcsb9
 Osyh+kWW2yNJ8+PO0Bs5cx2kQUgtJ/BrTCWpyd1Kj2mWN+H6nZqJVNoelN2nyrr+bZCSyQxSgLZ
 4TXyRdQQucJC8nqSoWQCFD19SJHLhAuhbF3QW9L5DDBXzosDUNkTEak5tpAStbr34D0bAiBZc05
 ayQaJU5nX8jGPcQ==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_072512_494123_3424DA16 
X-CRM114-Status: GOOD (  23.44  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] pmdomain: imx: imx93-blk-ctrl: add ported driver from
 linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add i.MX93 mediamix blk ctrl support.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/pmdomain/imx/Kconfig          |  10 +-
 drivers/pmdomain/imx/Makefile         |   1 +
 drivers/pmdomain/imx/imx93-blk-ctrl.c | 395 ++++++++++++++++++++++++++++++++++
 3 files changed, 404 insertions(+), 2 deletions(-)

diff --git a/drivers/pmdomain/imx/Kconfig b/drivers/pmdomain/imx/Kconfig
index f611a69f78b2953a15629c4262936202287a1516..9cd772dfb575e8415e2218e3ba589c28a0592d9d 100644
--- a/drivers/pmdomain/imx/Kconfig
+++ b/drivers/pmdomain/imx/Kconfig
@@ -3,9 +3,9 @@ menu "i.MX PM Domains"
 
 config IMX_GPCV2_PM_DOMAINS
 	bool "i.MX GPCv2 PM domains"
-	depends on ARCH_IMX7 || ARCH_IMX8M || COMPILE_TEST
+	depends on ARCH_IMX7 || ARCH_IMX8M || ARCH_IMX93 || COMPILE_TEST
 	select PM_GENERIC_DOMAINS
-	default y if ARCH_IMX7 || ARCH_IMX8M
+	default y if ARCH_IMX7 || ARCH_IMX8M || ARCH_IMX93
 
 config IMX8M_BLK_CTRL
 	bool "i.MX8MP HSIO blk-ctrl" if COMPILE_TEST
@@ -13,4 +13,10 @@ config IMX8M_BLK_CTRL
 	depends on PM_GENERIC_DOMAINS
 	depends on COMMON_CLK
 
+config IMX93_BLK_CTRL
+	bool "i.MX93 MEDIA blk-ctrl" if COMPILE_TEST
+	default ARCH_IMX93 && IMX_GPCV2_PM_DOMAINS
+	depends on PM_GENERIC_DOMAINS
+	depends on COMMON_CLK
+
 endmenu
diff --git a/drivers/pmdomain/imx/Makefile b/drivers/pmdomain/imx/Makefile
index f35ac69f70cd0f403b20c32638f93bbdb34f6b9a..5597eb41ebe11f0c630c80523b4d11ddba3da6ed 100644
--- a/drivers/pmdomain/imx/Makefile
+++ b/drivers/pmdomain/imx/Makefile
@@ -2,3 +2,4 @@
 obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
 obj-$(CONFIG_IMX8M_BLK_CTRL) += imx8mp-blk-ctrl.o
 obj-$(CONFIG_ARCH_IMX93) += imx93-pd.o
+obj-$(CONFIG_IMX93_BLK_CTRL) += imx93-blk-ctrl.o
diff --git a/drivers/pmdomain/imx/imx93-blk-ctrl.c b/drivers/pmdomain/imx/imx93-blk-ctrl.c
new file mode 100644
index 0000000000000000000000000000000000000000..ebbd8a02fafcee49be91250515157b0d470df027
--- /dev/null
+++ b/drivers/pmdomain/imx/imx93-blk-ctrl.c
@@ -0,0 +1,395 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2022 NXP, Peng Fan <peng.fan@nxp.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+#include <of.h>
+#include <of_device.h>
+#include <pm_domain.h>
+#include <linux/sizes.h>
+
+#include <dt-bindings/power/fsl,imx93-power.h>
+
+#define BLK_SFT_RSTN	0x0
+#define BLK_CLK_EN	0x4
+#define BLK_MAX_CLKS	4
+
+#define DOMAIN_MAX_CLKS 4
+
+#define LCDIF_QOS_REG		0xC
+#define LCDIF_DEFAULT_QOS_OFF	12
+#define LCDIF_CFG_QOS_OFF	8
+
+#define PXP_QOS_REG		0x10
+#define PXP_R_DEFAULT_QOS_OFF	28
+#define PXP_R_CFG_QOS_OFF	24
+#define PXP_W_DEFAULT_QOS_OFF	20
+#define PXP_W_CFG_QOS_OFF	16
+
+#define ISI_CACHE_REG		0x14
+
+#define ISI_QOS_REG		0x1C
+#define ISI_V_DEFAULT_QOS_OFF	28
+#define ISI_V_CFG_QOS_OFF	24
+#define ISI_U_DEFAULT_QOS_OFF	20
+#define ISI_U_CFG_QOS_OFF	16
+#define ISI_Y_R_DEFAULT_QOS_OFF	12
+#define ISI_Y_R_CFG_QOS_OFF	8
+#define ISI_Y_W_DEFAULT_QOS_OFF	4
+#define ISI_Y_W_CFG_QOS_OFF	0
+
+#define PRIO_MASK		0xF
+
+#define PRIO(X)			(X)
+
+struct imx93_blk_ctrl_domain;
+
+struct imx93_blk_ctrl {
+	struct device *dev;
+	struct regmap *regmap;
+	int num_clks;
+	struct clk_bulk_data clks[BLK_MAX_CLKS];
+	struct imx93_blk_ctrl_domain *domains;
+	struct genpd_onecell_data onecell_data;
+};
+
+#define DOMAIN_MAX_QOS 4
+
+struct imx93_blk_ctrl_qos {
+	u32 reg;
+	u32 cfg_off;
+	u32 default_prio;
+	u32 cfg_prio;
+};
+
+struct imx93_blk_ctrl_domain_data {
+	const char *name;
+	const char * const *clk_names;
+	int num_clks;
+	u32 rst_mask;
+	u32 clk_mask;
+	int num_qos;
+	struct imx93_blk_ctrl_qos qos[DOMAIN_MAX_QOS];
+};
+
+struct imx93_blk_ctrl_domain {
+	struct generic_pm_domain genpd;
+	const struct imx93_blk_ctrl_domain_data *data;
+	struct clk_bulk_data clks[DOMAIN_MAX_CLKS];
+	struct imx93_blk_ctrl *bc;
+};
+
+struct imx93_blk_ctrl_data {
+	const struct imx93_blk_ctrl_domain_data *domains;
+	int num_domains;
+	const char * const *clk_names;
+	int num_clks;
+	const struct regmap_access_table *reg_access_table;
+};
+
+static inline struct imx93_blk_ctrl_domain *
+to_imx93_blk_ctrl_domain(struct generic_pm_domain *genpd)
+{
+	return container_of(genpd, struct imx93_blk_ctrl_domain, genpd);
+}
+
+static int imx93_blk_ctrl_set_qos(struct imx93_blk_ctrl_domain *domain)
+{
+	const struct imx93_blk_ctrl_domain_data *data = domain->data;
+	struct imx93_blk_ctrl *bc = domain->bc;
+	const struct imx93_blk_ctrl_qos *qos;
+	u32 val, mask;
+	int i;
+
+	for (i = 0; i < data->num_qos; i++) {
+		qos = &data->qos[i];
+
+		mask = PRIO_MASK << qos->cfg_off;
+		mask |= PRIO_MASK << (qos->cfg_off + 4);
+		val = qos->cfg_prio << qos->cfg_off;
+		val |= qos->default_prio << (qos->cfg_off + 4);
+
+		regmap_write_bits(bc->regmap, qos->reg, mask, val);
+
+		dev_dbg(bc->dev, "data->qos[i].reg 0x%x 0x%x\n", qos->reg, val);
+	}
+
+	return 0;
+}
+
+static int imx93_blk_ctrl_power_on(struct generic_pm_domain *genpd)
+{
+	struct imx93_blk_ctrl_domain *domain = to_imx93_blk_ctrl_domain(genpd);
+	const struct imx93_blk_ctrl_domain_data *data = domain->data;
+	struct imx93_blk_ctrl *bc = domain->bc;
+	int ret;
+
+	ret = clk_bulk_prepare_enable(bc->num_clks, bc->clks);
+	if (ret) {
+		dev_err(bc->dev, "failed to enable bus clocks\n");
+		return ret;
+	}
+
+	ret = clk_bulk_prepare_enable(data->num_clks, domain->clks);
+	if (ret) {
+		clk_bulk_disable_unprepare(bc->num_clks, bc->clks);
+		dev_err(bc->dev, "failed to enable clocks\n");
+		return ret;
+	}
+
+	ret = pm_runtime_resume_and_get_genpd(bc->dev);
+	if (ret < 0) {
+		dev_err(bc->dev, "failed to power up domain\n");
+		goto disable_clk;
+	}
+
+	/* ungate clk */
+	regmap_clear_bits(bc->regmap, BLK_CLK_EN, data->clk_mask);
+
+	/* release reset */
+	regmap_set_bits(bc->regmap, BLK_SFT_RSTN, data->rst_mask);
+
+	dev_dbg(bc->dev, "pd_on: name: %s\n", genpd->name);
+
+	return imx93_blk_ctrl_set_qos(domain);
+
+disable_clk:
+	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
+
+	clk_bulk_disable_unprepare(bc->num_clks, bc->clks);
+
+	return ret;
+}
+
+static int imx93_blk_ctrl_power_off(struct generic_pm_domain *genpd)
+{
+	struct imx93_blk_ctrl_domain *domain = to_imx93_blk_ctrl_domain(genpd);
+	const struct imx93_blk_ctrl_domain_data *data = domain->data;
+	struct imx93_blk_ctrl *bc = domain->bc;
+
+	dev_dbg(bc->dev, "pd_off: name: %s\n", genpd->name);
+
+	regmap_clear_bits(bc->regmap, BLK_SFT_RSTN, data->rst_mask);
+	regmap_set_bits(bc->regmap, BLK_CLK_EN, data->clk_mask);
+
+	pm_runtime_put_genpd(bc->dev);
+
+	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
+
+	clk_bulk_disable_unprepare(bc->num_clks, bc->clks);
+
+	return 0;
+}
+
+static int imx93_blk_ctrl_probe(struct device *dev)
+{
+	const struct imx93_blk_ctrl_data *bc_data;
+	struct imx93_blk_ctrl *bc;
+	void __iomem *base;
+	int i, ret;
+
+	struct regmap_config regmap_config = {
+		.reg_bits	= 32,
+		.val_bits	= 32,
+		.reg_stride	= 4,
+		.max_register   = SZ_4K,
+	};
+
+	bc = devm_kzalloc(dev, sizeof(*bc), GFP_KERNEL);
+	if (!bc)
+		return -ENOMEM;
+
+	bc->dev = dev;
+
+	bc_data = of_device_get_match_data(dev);
+
+	base = dev_platform_ioremap_resource(dev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	bc->regmap = regmap_init_mmio(dev, base, &regmap_config);
+	if (IS_ERR(bc->regmap))
+		return dev_err_probe(dev, PTR_ERR(bc->regmap),
+				     "failed to init regmap\n");
+
+	bc->domains = devm_kcalloc(dev, bc_data->num_domains,
+				   sizeof(struct imx93_blk_ctrl_domain),
+				   GFP_KERNEL);
+	if (!bc->domains)
+		return -ENOMEM;
+
+	bc->onecell_data.num_domains = bc_data->num_domains;
+	bc->onecell_data.domains =
+		devm_kcalloc(dev, bc_data->num_domains,
+			     sizeof(struct generic_pm_domain *), GFP_KERNEL);
+	if (!bc->onecell_data.domains)
+		return -ENOMEM;
+
+	for (i = 0; i < bc_data->num_clks; i++)
+		bc->clks[i].id = bc_data->clk_names[i];
+	bc->num_clks = bc_data->num_clks;
+
+	ret = clk_bulk_get(dev, bc->num_clks, bc->clks);
+	if (ret) {
+		dev_err_probe(dev, ret, "failed to get bus clock\n");
+		return ret;
+	}
+
+	for (i = 0; i < bc_data->num_domains; i++) {
+		const struct imx93_blk_ctrl_domain_data *data = &bc_data->domains[i];
+		struct imx93_blk_ctrl_domain *domain = &bc->domains[i];
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
+		domain->genpd.name = data->name;
+		domain->genpd.power_on = imx93_blk_ctrl_power_on;
+		domain->genpd.power_off = imx93_blk_ctrl_power_off;
+		domain->bc = bc;
+
+		ret = pm_genpd_init(&domain->genpd, NULL, true);
+		if (ret) {
+			dev_err_probe(dev, ret, "failed to init power domain\n");
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
+	return 0;
+
+cleanup_pds:
+	for (i--; i >= 0; i--)
+		pm_genpd_remove(&bc->domains[i].genpd);
+
+	return ret;
+}
+
+static const struct imx93_blk_ctrl_domain_data imx93_media_blk_ctl_domain_data[] = {
+	[IMX93_MEDIABLK_PD_MIPI_DSI] = {
+		.name = "mediablk-mipi-dsi",
+		.clk_names = (const char *[]){ "dsi" },
+		.num_clks = 1,
+		.rst_mask = BIT(11) | BIT(12),
+		.clk_mask = BIT(11) | BIT(12),
+	},
+	[IMX93_MEDIABLK_PD_MIPI_CSI] = {
+		.name = "mediablk-mipi-csi",
+		.clk_names = (const char *[]){ "cam", "csi" },
+		.num_clks = 2,
+		.rst_mask = BIT(9) | BIT(10),
+		.clk_mask = BIT(9) | BIT(10),
+	},
+	[IMX93_MEDIABLK_PD_PXP] = {
+		.name = "mediablk-pxp",
+		.clk_names = (const char *[]){ "pxp" },
+		.num_clks = 1,
+		.rst_mask = BIT(7) | BIT(8),
+		.clk_mask = BIT(7) | BIT(8),
+		.num_qos = 2,
+		.qos = {
+			{
+				.reg = PXP_QOS_REG,
+				.cfg_off = PXP_R_CFG_QOS_OFF,
+				.default_prio = PRIO(3),
+				.cfg_prio = PRIO(6),
+			}, {
+				.reg = PXP_QOS_REG,
+				.cfg_off = PXP_W_CFG_QOS_OFF,
+				.default_prio = PRIO(3),
+				.cfg_prio = PRIO(6),
+			}
+		}
+	},
+	[IMX93_MEDIABLK_PD_LCDIF] = {
+		.name = "mediablk-lcdif",
+		.clk_names = (const char *[]){ "disp", "lcdif" },
+		.num_clks = 2,
+		.rst_mask = BIT(4) | BIT(5) | BIT(6),
+		.clk_mask = BIT(4) | BIT(5) | BIT(6),
+		.num_qos = 1,
+		.qos = {
+			{
+			.reg = LCDIF_QOS_REG,
+			.cfg_off = LCDIF_CFG_QOS_OFF,
+			.default_prio = PRIO(3),
+			.cfg_prio = PRIO(7),
+			}
+		}
+	},
+	[IMX93_MEDIABLK_PD_ISI] = {
+		.name = "mediablk-isi",
+		.clk_names = (const char *[]){ "isi" },
+		.num_clks = 1,
+		.rst_mask = BIT(2) | BIT(3),
+		.clk_mask = BIT(2) | BIT(3),
+		.num_qos = 4,
+		.qos = {
+			{
+				.reg = ISI_QOS_REG,
+				.cfg_off = ISI_Y_W_CFG_QOS_OFF,
+				.default_prio = PRIO(3),
+				.cfg_prio = PRIO(7),
+			}, {
+				.reg = ISI_QOS_REG,
+				.cfg_off = ISI_Y_R_CFG_QOS_OFF,
+				.default_prio = PRIO(3),
+				.cfg_prio = PRIO(7),
+			}, {
+				.reg = ISI_QOS_REG,
+				.cfg_off = ISI_U_CFG_QOS_OFF,
+				.default_prio = PRIO(3),
+				.cfg_prio = PRIO(7),
+			}, {
+				.reg = ISI_QOS_REG,
+				.cfg_off = ISI_V_CFG_QOS_OFF,
+				.default_prio = PRIO(3),
+				.cfg_prio = PRIO(7),
+			}
+		}
+	},
+};
+
+static const struct imx93_blk_ctrl_data imx93_media_blk_ctl_dev_data = {
+	.domains = imx93_media_blk_ctl_domain_data,
+	.num_domains = ARRAY_SIZE(imx93_media_blk_ctl_domain_data),
+	.clk_names = (const char *[]){ "axi", "apb", "nic", },
+	.num_clks = 3,
+};
+
+static const struct of_device_id imx93_blk_ctrl_of_match[] = {
+	{
+		.compatible = "fsl,imx93-media-blk-ctrl",
+		.data = &imx93_media_blk_ctl_dev_data
+	}, {
+		/* Sentinel */
+	}
+};
+MODULE_DEVICE_TABLE(of, imx93_blk_ctrl_of_match);
+
+static struct driver imx93_blk_ctrl_driver = {
+	.probe = imx93_blk_ctrl_probe,
+	.name = "imx93-blk-ctrl",
+	.of_match_table = imx93_blk_ctrl_of_match,
+};
+coredevice_platform_driver(imx93_blk_ctrl_driver);
+MODULE_LICENSE("GPL");

-- 
2.47.3



