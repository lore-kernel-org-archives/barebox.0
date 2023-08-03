Delivery-date: Thu, 03 Aug 2023 12:52:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVwD-004wUC-0s
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:52:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVw8-0002F9-44
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:52:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=edMaPNKP1dDQCkWJgYdpvggXmM8Oy99dZ1uW0nncj0w=; b=HflsvVOnrLNZ7U9+Bw6A7X+y+O
	Vp3V72a031XQUlURpoOp7yDoeRBfgppflDTYL87wZger5zaeHGa6Q4b2WIk9nHBFgzV+CNljaxJl3
	JS+eLcT2rzxOWD2700gXIlYlyxBrRoU0NLpNLzl/KvfHSP+7yaOkgT4jVIVvtTLa57kXwLrv/fHyo
	gDfH0Ox7OFVxADCUcjq/FgjtBb5Eu9qpSJ44vwlKCzNpZ1wrA8LOXmBwcFnPNjArFUNK7J4OG711G
	wYKeY4Ou/gTk49mIbIVCR9v2G9uQgGr4Y0CdMZhFATgBcoJXdwipnWGe43scCnvbzLqJrP0A5R3Gz
	xe400lOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVus-007VBD-0B;
	Thu, 03 Aug 2023 10:50:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuC-007UXV-33
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-0000v4-LU; Thu, 03 Aug 2023 12:50:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuA-000ovF-UY; Thu, 03 Aug 2023 12:50:06 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAzT-LL; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:52 +0200
Message-Id: <20230803105003.4088205-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035009_141951_A65524E9 
X-CRM114-Status: GOOD (  26.42  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 11/22] soc: ti: Add ti_sci_pm_domains driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds a driver to control power domains on TI K3 SoCs. The driver
is based on Linux-6.5-rc3.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/soc/Kconfig                |   1 +
 drivers/soc/Makefile               |   1 +
 drivers/soc/ti/Kconfig             |   7 ++
 drivers/soc/ti/Makefile            |   1 +
 drivers/soc/ti/ti_sci_pm_domains.c | 196 +++++++++++++++++++++++++++++
 5 files changed, 206 insertions(+)
 create mode 100644 drivers/soc/ti/Kconfig
 create mode 100644 drivers/soc/ti/Makefile
 create mode 100644 drivers/soc/ti/ti_sci_pm_domains.c

diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
index c0fe214429..cbde3c35a4 100644
--- a/drivers/soc/Kconfig
+++ b/drivers/soc/Kconfig
@@ -3,5 +3,6 @@ menu "SoC drivers"
 source "drivers/soc/imx/Kconfig"
 source "drivers/soc/kvx/Kconfig"
 source "drivers/soc/rockchip/Kconfig"
+source "drivers/soc/ti/Kconfig"
 
 endmenu
diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index 9bff737b78..75ae4382ff 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -5,3 +5,4 @@ obj-$(CONFIG_KVX)		+= kvx/
 obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_CPU_SIFIVE)	+= sifive/
 obj-$(CONFIG_SOC_STARFIVE)	+= starfive/
+obj-y += ti/
diff --git a/drivers/soc/ti/Kconfig b/drivers/soc/ti/Kconfig
new file mode 100644
index 0000000000..dc1ec3efb7
--- /dev/null
+++ b/drivers/soc/ti/Kconfig
@@ -0,0 +1,7 @@
+config TI_SCI_PM_DOMAINS
+	bool "TI SCI PM Domains Driver"
+	depends on TI_SCI_PROTOCOL
+	depends on PM_GENERIC_DOMAINS
+	help
+	  Generic power domain implementation for TI device implementing
+	  the TI SCI protocol.
diff --git a/drivers/soc/ti/Makefile b/drivers/soc/ti/Makefile
new file mode 100644
index 0000000000..f87420e414
--- /dev/null
+++ b/drivers/soc/ti/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_TI_SCI_PM_DOMAINS) += ti_sci_pm_domains.o
diff --git a/drivers/soc/ti/ti_sci_pm_domains.c b/drivers/soc/ti/ti_sci_pm_domains.c
new file mode 100644
index 0000000000..ab0a4d3829
--- /dev/null
+++ b/drivers/soc/ti/ti_sci_pm_domains.c
@@ -0,0 +1,196 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * TI SCI Generic Power Domain Driver
+ *
+ * Copyright (C) 2015-2017 Texas Instruments Incorporated - http://www.ti.com/
+ *	J Keerthy <j-keerthy@ti.com>
+ *	Dave Gerlach <d-gerlach@ti.com>
+ */
+
+#include <of_device.h>
+#include <common.h>
+#include <abort.h>
+#include <malloc.h>
+#include <io.h>
+#include <init.h>
+#include <pm_domain.h>
+#include <soc/ti/ti_sci_protocol.h>
+#include <dt-bindings/soc/ti,sci_pm_domain.h>
+
+/**
+ * struct ti_sci_genpd_provider: holds common TI SCI genpd provider data
+ * @ti_sci: handle to TI SCI protocol driver that provides ops to
+ *	    communicate with system control processor.
+ * @dev: pointer to dev for the driver for devm allocs
+ * @pd_list: list of all the power domains on the device
+ * @data: onecell data for genpd core
+ */
+struct ti_sci_genpd_provider {
+	const struct ti_sci_handle *ti_sci;
+	struct device *dev;
+	struct list_head pd_list;
+	struct genpd_onecell_data data;
+};
+
+/**
+ * struct ti_sci_pm_domain: TI specific data needed for power domain
+ * @idx: index of the device that identifies it with the system
+ *	 control processor.
+ * @exclusive: Permissions for exclusive request or shared request of the
+ *	       device.
+ * @pd: generic_pm_domain for use with the genpd framework
+ * @node: link for the genpd list
+ * @parent: link to the parent TI SCI genpd provider
+ */
+struct ti_sci_pm_domain {
+	int idx;
+	u8 exclusive;
+	struct generic_pm_domain pd;
+	struct list_head node;
+	struct ti_sci_genpd_provider *parent;
+};
+
+#define genpd_to_ti_sci_pd(gpd) container_of(gpd, struct ti_sci_pm_domain, pd)
+
+/*
+ * ti_sci_pd_power_off(): genpd power down hook
+ * @domain: pointer to the powerdomain to power off
+ */
+static int ti_sci_pd_power_off(struct generic_pm_domain *domain)
+{
+	struct ti_sci_pm_domain *pd = genpd_to_ti_sci_pd(domain);
+	const struct ti_sci_handle *ti_sci = pd->parent->ti_sci;
+
+	return ti_sci->ops.dev_ops.put_device(ti_sci, pd->idx);
+}
+
+/*
+ * ti_sci_pd_power_on(): genpd power up hook
+ * @domain: pointer to the powerdomain to power on
+ */
+static int ti_sci_pd_power_on(struct generic_pm_domain *domain)
+{
+	struct ti_sci_pm_domain *pd = genpd_to_ti_sci_pd(domain);
+	const struct ti_sci_handle *ti_sci = pd->parent->ti_sci;
+
+	if (pd->exclusive)
+		return ti_sci->ops.dev_ops.get_device_exclusive(ti_sci,
+								pd->idx);
+	else
+		return ti_sci->ops.dev_ops.get_device(ti_sci, pd->idx);
+}
+
+/*
+ * ti_sci_pd_xlate(): translation service for TI SCI genpds
+ * @genpdspec: DT identification data for the genpd
+ * @data: genpd core data for all the powerdomains on the device
+ */
+static struct generic_pm_domain *ti_sci_pd_xlate(
+					struct of_phandle_args *genpdspec,
+					void *data)
+{
+	struct genpd_onecell_data *genpd_data = data;
+	unsigned int idx = genpdspec->args[0];
+
+	if (genpdspec->args_count != 1 && genpdspec->args_count != 2)
+		return ERR_PTR(-EINVAL);
+
+	if (idx >= genpd_data->num_domains) {
+		pr_err("%s: invalid domain index %u\n", __func__, idx);
+		return ERR_PTR(-EINVAL);
+	}
+
+	if (!genpd_data->domains[idx])
+		return ERR_PTR(-ENOENT);
+
+	genpd_to_ti_sci_pd(genpd_data->domains[idx])->exclusive =
+		genpdspec->args[1];
+
+	return genpd_data->domains[idx];
+}
+
+static const struct of_device_id ti_sci_pm_domain_matches[] = {
+	{ .compatible = "ti,sci-pm-domain", },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, ti_sci_pm_domain_matches);
+
+static int ti_sci_pm_domain_probe(struct device *dev)
+{
+	struct ti_sci_genpd_provider *pd_provider;
+	struct ti_sci_pm_domain *pd;
+	struct device_node *np = NULL;
+	struct of_phandle_args args;
+	int ret;
+	u32 max_id = 0;
+	int index;
+
+	pd_provider = xzalloc(sizeof(*pd_provider));
+
+	pd_provider->ti_sci = ti_sci_get_handle(dev);
+	if (IS_ERR(pd_provider->ti_sci))
+		return PTR_ERR(pd_provider->ti_sci);
+
+	pd_provider->dev = dev;
+
+	INIT_LIST_HEAD(&pd_provider->pd_list);
+
+	/* Find highest device ID used for power domains */
+	while (1) {
+		np = of_find_node_with_property(np, "power-domains");
+		if (!np)
+			break;
+
+		index = 0;
+
+		while (1) {
+			ret = of_parse_phandle_with_args(np, "power-domains",
+							 "#power-domain-cells",
+							 index, &args);
+			if (ret)
+				break;
+
+			if (args.args_count >= 1 && args.np == dev->of_node) {
+				if (args.args[0] > max_id)
+					max_id = args.args[0];
+
+				pd = xzalloc(sizeof(*pd));
+
+				pd->pd.name = basprintf("pd:%d", args.args[0]);
+				if (!pd->pd.name)
+					return -ENOMEM;
+
+				pd->pd.power_off = ti_sci_pd_power_off;
+				pd->pd.power_on = ti_sci_pd_power_on;
+				pd->idx = args.args[0];
+				pd->parent = pd_provider;
+
+				pm_genpd_init(&pd->pd, NULL, true);
+
+				list_add(&pd->node, &pd_provider->pd_list);
+			}
+			index++;
+		}
+	}
+
+	pd_provider->data.domains =
+		xzalloc((max_id + 1) * sizeof(*pd_provider->data.domains));
+
+	pd_provider->data.num_domains = max_id + 1;
+	pd_provider->data.xlate = ti_sci_pd_xlate;
+
+	list_for_each_entry(pd, &pd_provider->pd_list, node)
+		pd_provider->data.domains[pd->idx] = &pd->pd;
+
+	return of_genpd_add_provider_onecell(dev->of_node, &pd_provider->data);
+}
+
+static struct driver ti_sci_pm_domains_driver = {
+	.probe = ti_sci_pm_domain_probe,
+	.name = "ti_sci_pm_domains",
+	.of_match_table = ti_sci_pm_domain_matches,
+};
+core_platform_driver(ti_sci_pm_domains_driver);
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("TI System Control Interface (SCI) Power Domain driver");
+MODULE_AUTHOR("Dave Gerlach");
-- 
2.39.2



