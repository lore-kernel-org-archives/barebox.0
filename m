Delivery-date: Wed, 19 Nov 2025 16:25:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLk43-002haK-2r
	for lore@lore.pengutronix.de;
	Wed, 19 Nov 2025 16:25:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLk42-0008Iv-Ui
	for lore@pengutronix.de; Wed, 19 Nov 2025 16:25:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wQB9APWM3eUC6T3jUJo/011ntdTSW8X6iZausA9SwIU=; b=lIG8aW+gEAdLlyXtReSKaW4QcG
	KZJgD3EWpnZJWGiO44ILdz83ylXuyxNqlypgMpTvZHGp2M9bT0HWVEyBDPvfH/RUyzYXwex04DwzC
	eINTO8Yx78fXCJsBVjgvcxYTlv9GedpRkJoAz9CR6CupxSqDRyNJcHd7Vre2jnaVGnKWHRg+nh96J
	2P5fsw+J9+/eJhGvePw1vwll+/rkaW923HN+OtUtXE3G+ZvYzaPBkY4HnRQbVAwnavhUYqRB/56V+
	IDl08T7Bni+w77zERrf/qrcyqFd6Szy3b6wiC7q1i6kfgLrncv7QWffh6b6Hhq5DrBrg3lMLPZ63k
	3a8p63oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLk3X-00000003UBx-0h2p;
	Wed, 19 Nov 2025 15:25:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLk3U-00000003UAE-0YxC
	for barebox@lists.infradead.org;
	Wed, 19 Nov 2025 15:25:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vLk3R-000875-7H; Wed, 19 Nov 2025 16:25:09 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vLk3R-001GtI-03;
	Wed, 19 Nov 2025 16:25:09 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vLk3Q-0000000AjxD-3zS5;
	Wed, 19 Nov 2025 16:25:08 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 19 Nov 2025 16:25:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251119-imx93-pd-v1-1-2b114723a734@pengutronix.de>
References: <20251119-imx93-pd-v1-0-2b114723a734@pengutronix.de>
In-Reply-To: <20251119-imx93-pd-v1-0-2b114723a734@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7332;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=JMuADJjkTrFAUfDnVw5EHYIklodYXhQVHIswwblTG+c=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpHeFU/k+8hp3cj+0yPq38I8TXmRpbSwOi4jdPJ
 x1luOFBI9SJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaR3hVAAKCRC/aVhE+XH0
 q4F8D/9XtePF/e5rhcVG+4Pt7s0IPm4zPMhwr1rQqxt8vLsFDD5EEpv8Q4hHpfxkC9xsHzDcZ/x
 fZdMZTALBvgrlNR3h2A/1wNG/xmXGtIxhnoy/aRMH9WIv2G7Zg0OhkLs8kpyoPVSeuHIREmDiFe
 CR5aB7mmA1+ynrYrXy/B6H9SrrMauXk/Vtu2rnP3H+1ns+3RjccEV1YndeCI1PcPiJO47cpu8/r
 0j868WWyk0xEQV6QJFjb92u6+FuXLzdedTLfhJa6IzEg09T0nuenD5rIZL2cwaMoZZ2EcqxMaDT
 gAJ04fP7J5RgYOUUmMy2CKh++H/xRP2uucUFQH8hgXmk5zg+ZLDdTdJDexhBM+Rx2eM3S45OD0O
 +bOQhSZ1r/7oTXtwznfQJC1XLWxkKPwt4x4MblYwybjFTOUNQ9WIBQHXFgaTneAklvJUYekUFy1
 REjUAWSqR8IkGZIyAo0gcFOqlP9FhDgf1I24B76UcN0Fbuky6OiIdXEWVfdiFmBd+qSge1Lx/T6
 5k4tGEVbgUpWLAfEpsuXddDMP0+wmyPghTrgkLZ/S9PQXDoLfHICfvIsM2qu7SvUhvxy8uCOqYI
 kteyUZh+Tr7yIM/DgkjGyn1eG6IWkHr7gcMnX3yuulrI9s5XQaDSPUk7YeVjdny9HVziBSapFO5
 IydnWIfdQmoKoNg==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_072512_336101_A900E4EC 
X-CRM114-Status: GOOD (  20.93  )
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
Subject: [PATCH 1/2] soc: imx: imx93: add ported source driver for pmdomain
 from linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The src driver is populating all power domains that are controlled by
the system reset controller. Currently supported power domain is the
mediamix power domain.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-imx/imx9.c        |   3 +
 drivers/pmdomain/imx/Makefile   |   1 +
 drivers/pmdomain/imx/imx93-pd.c | 151 ++++++++++++++++++++++++++++++++++++++++
 drivers/soc/imx/Makefile        |   1 +
 drivers/soc/imx/imx93-src.c     |  30 ++++++++
 5 files changed, 186 insertions(+)

diff --git a/arch/arm/mach-imx/imx9.c b/arch/arm/mach-imx/imx9.c
index dd4fbf099e601dda3c01a4e2d64a9552d2f616e5..25ba7e444843ea5ae817dd8103074e5a50fb48f0 100644
--- a/arch/arm/mach-imx/imx9.c
+++ b/arch/arm/mach-imx/imx9.c
@@ -2,6 +2,7 @@
 
 #include <init.h>
 #include <common.h>
+#include <pm_domain.h>
 #include <linux/clk.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/ele.h>
@@ -184,5 +185,7 @@ int imx93_init(void)
 		of_register_fixup(of_optee_fixup, &optee_fixup_data);
 	}
 
+	genpd_activate();
+
 	return 0;
 }
diff --git a/drivers/pmdomain/imx/Makefile b/drivers/pmdomain/imx/Makefile
index 1364944d5ac52dd2faf7002a9df1f3263d48891c..f35ac69f70cd0f403b20c32638f93bbdb34f6b9a 100644
--- a/drivers/pmdomain/imx/Makefile
+++ b/drivers/pmdomain/imx/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
 obj-$(CONFIG_IMX8M_BLK_CTRL) += imx8mp-blk-ctrl.o
+obj-$(CONFIG_ARCH_IMX93) += imx93-pd.o
diff --git a/drivers/pmdomain/imx/imx93-pd.c b/drivers/pmdomain/imx/imx93-pd.c
new file mode 100644
index 0000000000000000000000000000000000000000..3222fc17e9d02adbb6792df27d5a0fb97fc5c305
--- /dev/null
+++ b/drivers/pmdomain/imx/imx93-pd.c
@@ -0,0 +1,151 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2022 NXP
+ */
+
+#include <linux/clk.h>
+#include <linux/device.h>
+#include <linux/iopoll.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <pm_domain.h>
+
+#define MIX_SLICE_SW_CTRL_OFF		0x20
+#define SLICE_SW_CTRL_PSW_CTRL_OFF_MASK	BIT(4)
+#define SLICE_SW_CTRL_PDN_SOFT_MASK	BIT(31)
+
+#define MIX_FUNC_STAT_OFF		0xB4
+
+#define FUNC_STAT_PSW_STAT_MASK		BIT(0)
+#define FUNC_STAT_RST_STAT_MASK		BIT(2)
+#define FUNC_STAT_ISO_STAT_MASK		BIT(4)
+#define FUNC_STAT_SSAR_STAT_MASK	BIT(8)
+
+struct imx93_power_domain {
+	struct generic_pm_domain genpd;
+	struct device *dev;
+	void __iomem *addr;
+	struct clk_bulk_data *clks;
+	int num_clks;
+};
+
+#define to_imx93_pd(_genpd) container_of(_genpd, struct imx93_power_domain, genpd)
+
+static int imx93_pd_on(struct generic_pm_domain *genpd)
+{
+	struct imx93_power_domain *domain = to_imx93_pd(genpd);
+	void __iomem *addr = domain->addr;
+	u32 val;
+	int ret;
+
+	ret = clk_bulk_prepare_enable(domain->num_clks, domain->clks);
+	if (ret) {
+		dev_err(domain->dev, "failed to enable clocks for domain: %s\n", genpd->name);
+		return ret;
+	}
+
+	val = readl(addr + MIX_SLICE_SW_CTRL_OFF);
+	val &= ~SLICE_SW_CTRL_PDN_SOFT_MASK;
+	writel(val, addr + MIX_SLICE_SW_CTRL_OFF);
+
+	ret = readl_poll_timeout(addr + MIX_FUNC_STAT_OFF, val,
+				 !(val & FUNC_STAT_SSAR_STAT_MASK), 10000);
+	if (ret) {
+		dev_err(domain->dev, "pd_on timeout: name: %s, stat: %x\n", genpd->name, val);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int imx93_pd_off(struct generic_pm_domain *genpd)
+{
+	struct imx93_power_domain *domain = to_imx93_pd(genpd);
+	void __iomem *addr = domain->addr;
+	int ret;
+	u32 val;
+
+	/* Power off MIX */
+	val = readl(addr + MIX_SLICE_SW_CTRL_OFF);
+	val |= SLICE_SW_CTRL_PDN_SOFT_MASK;
+	writel(val, addr + MIX_SLICE_SW_CTRL_OFF);
+
+	ret = readl_poll_timeout(addr + MIX_FUNC_STAT_OFF, val,
+				 val & FUNC_STAT_PSW_STAT_MASK, 10000);
+	if (ret) {
+		dev_err(domain->dev, "pd_off timeout: name: %s, stat: %x\n", genpd->name, val);
+		return ret;
+	}
+
+	clk_bulk_disable_unprepare(domain->num_clks, domain->clks);
+
+	return 0;
+};
+
+static int imx93_pd_probe(struct device *dev)
+{
+	struct device_node *np = dev->of_node;
+	struct imx93_power_domain *domain;
+	bool init_off;
+	int ret;
+
+	domain = devm_kzalloc(dev, sizeof(*domain), GFP_KERNEL);
+	if (!domain)
+		return -ENOMEM;
+
+	domain->addr = dev_platform_ioremap_resource(dev, 0);
+	if (IS_ERR(domain->addr))
+		return PTR_ERR(domain->addr);
+
+	domain->num_clks = clk_bulk_get_all(dev, &domain->clks);
+	if (domain->num_clks < 0)
+		return dev_err_probe(dev, domain->num_clks, "Failed to get domain's clocks\n");
+
+	domain->genpd.name = dev_name(dev);
+	domain->genpd.power_off = imx93_pd_off;
+	domain->genpd.power_on = imx93_pd_on;
+	domain->dev = dev;
+
+	init_off = readl(domain->addr + MIX_FUNC_STAT_OFF) & FUNC_STAT_ISO_STAT_MASK;
+	/* Just to sync the status of hardware */
+	if (!init_off) {
+		ret = clk_bulk_prepare_enable(domain->num_clks, domain->clks);
+		if (ret)
+			return dev_err_probe(domain->dev, ret,
+					     "failed to enable clocks for domain: %s\n",
+					     domain->genpd.name);
+	}
+
+	ret = pm_genpd_init(&domain->genpd, NULL, init_off);
+	if (ret)
+		goto err_clk_unprepare;
+
+	ret = of_genpd_add_provider_simple(np, &domain->genpd);
+	if (ret)
+		goto err_genpd_remove;
+
+	return 0;
+
+err_genpd_remove:
+	pm_genpd_remove(&domain->genpd);
+
+err_clk_unprepare:
+	if (!init_off)
+		clk_bulk_disable_unprepare(domain->num_clks, domain->clks);
+
+	return ret;
+}
+
+static const struct of_device_id imx93_pd_ids[] = {
+	{ .compatible = "fsl,imx93-src-slice" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, imx93_pd_ids);
+
+static struct driver imx93_power_domain_driver = {
+	.name	= "imx93_power_domain",
+	.of_match_table = imx93_pd_ids,
+	.probe = imx93_pd_probe,
+};
+coredevice_platform_driver(imx93_power_domain_driver);
+MODULE_LICENSE("GPL");
diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
index 65b2677f7ad5e3826655424efbc3ecd9e2ac5604..53ee0b8f5b3c7451083bdbbd47a76744ebc2b7c5 100644
--- a/drivers/soc/imx/Makefile
+++ b/drivers/soc/imx/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_IMX8M_FEATCTRL) += imx8m-featctrl.o
 obj-$(CONFIG_ARCH_IMX8M) += soc-imx8m.o
+obj-$(CONFIG_ARCH_IMX93) += imx93-src.o
diff --git a/drivers/soc/imx/imx93-src.c b/drivers/soc/imx/imx93-src.c
new file mode 100644
index 0000000000000000000000000000000000000000..4889948141b0f669259306d52862158894557569
--- /dev/null
+++ b/drivers/soc/imx/imx93-src.c
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2022 NXP
+ */
+
+#include <init.h>
+#include <driver.h>
+#include <linux/module.h>
+
+static int imx93_src_probe(struct device *dev)
+{
+	return of_platform_populate(dev->of_node, NULL, dev);
+}
+
+static const struct of_device_id imx93_src_ids[] = {
+	{ .compatible = "fsl,imx93-src" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, imx93_src_ids);
+
+static struct driver imx93_src_driver = {
+	.name	= "imx93_src",
+	.probe = imx93_src_probe,
+	.of_compatible = imx93_src_ids,
+};
+core_platform_driver(imx93_src_driver);
+
+MODULE_AUTHOR("Peng Fan <peng.fan@nxp.com>");
+MODULE_DESCRIPTION("NXP i.MX93 src driver");
+MODULE_LICENSE("GPL");

-- 
2.47.3



