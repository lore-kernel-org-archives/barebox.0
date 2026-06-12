Delivery-date: Fri, 12 Jun 2026 08:00:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXuwq-004xuU-2v
	for lore@lore.pengutronix.de;
	Fri, 12 Jun 2026 08:00:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXuwp-0005e2-D1
	for lore@pengutronix.de; Fri, 12 Jun 2026 08:00:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X0VAXFQHxj20L823uTA8AAe9vVbLurCkhMxfcPG3Xes=; b=lF1tendBbWyvqNAbcScUWjAiml
	MD+9RLBqGlMof539I+1m+yLhA3k4DCe5C0ffB+UoOFJ59Xbg/KH58E3dv3hLNYtG9yNoMs4/U3oo1
	5x4pYBqhvRqKc4I2HGnv7a3hU0OenrZ3RGlh8jTSaT7i6sv+MsnXFtWR0GzvWnJIO9bULPpHjoGFO
	e8og3g25XqVmwRb2jgexMSshdZVp3tKgrQ7ogyaVWqc05Es1rDK+4dDAb1u5Hgh7sXHxFoAWP45sM
	jaAtYtqHUIwy6xX04LQAuG05w6edIVoK40Sr6wE0DrZx7Cj4d9fKk21fA12FD5sCxZOB2mfcjjWkw
	OmtYqUNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXuve-0000000AOT2-0O3p;
	Fri, 12 Jun 2026 05:59:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXuvZ-0000000AOPd-1sB4
	for barebox@lists.infradead.org;
	Fri, 12 Jun 2026 05:59:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-0004nF-97; Fri, 12 Jun 2026 07:59:34 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-002Kez-0b;
	Fri, 12 Jun 2026 07:59:34 +0200
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-00000002fQI-0Dif;
	Fri, 12 Jun 2026 07:59:34 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 12 Jun 2026 07:59:24 +0200
Message-ID: <20260612055930.635833-8-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260612055930.635833-1-o.rempel@pengutronix.de>
References: <20260612055930.635833-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_225937_500708_FAFF5AEE 
X-CRM114-Status: GOOD (  20.55  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 08/10] reset: add Microchip sparx5 / LAN969X / LAN966X switch reset driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the reset controller for the Microchip sparx5 / LAN969X / LAN966X
switch SoCs. The reset is asserted once at probe time so downstream
peripherals (SGPIO, MDIO, switch core) come up against a clean IP
state instead of inheriting whatever the previous boot stage left.

Ported from Linux drivers/reset/reset-microchip-sparx5.c at tag
v7.1-rc7

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/reset/Kconfig                  |  10 ++
 drivers/reset/Makefile                 |   1 +
 drivers/reset/reset-microchip-sparx5.c | 170 +++++++++++++++++++++++++
 3 files changed, 181 insertions(+)
 create mode 100644 drivers/reset/reset-microchip-sparx5.c

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index c3779f087490..1819da73b27f 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -63,4 +63,14 @@ config RESET_SOCFPGA32
 	help
 	  This enables the reset controller driver for 32-bit SoCFPGA platforms.
 
+config RESET_MICROCHIP_SPARX5
+	bool "Microchip Sparx5 / LAN969X / LAN966X switch reset driver"
+	depends on OFDEVICE
+	select MFD_SYSCON
+	help
+	  This enables the switch reset controller driver for the Microchip
+	  Sparx5 / LAN969X / LAN966X switch SoCs. The reset is asserted once
+	  at probe time so downstream peripherals (SGPIO, MDIO, switch core)
+	  see a clean IP state.
+
 endif
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index a446cb20d0b7..b5540252bc9a 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -5,3 +5,4 @@ obj-$(CONFIG_RESET_SOCFPGA32) += reset-socfpga.o
 obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
 obj-$(CONFIG_RESET_STARFIVE) += reset-starfive-vic.o
 obj-$(CONFIG_RESET_SCMI) += reset-scmi.o
+obj-$(CONFIG_RESET_MICROCHIP_SPARX5) += reset-microchip-sparx5.o
diff --git a/drivers/reset/reset-microchip-sparx5.c b/drivers/reset/reset-microchip-sparx5.c
new file mode 100644
index 000000000000..8944e3fc1510
--- /dev/null
+++ b/drivers/reset/reset-microchip-sparx5.c
@@ -0,0 +1,170 @@
+// SPDX-License-Identifier: GPL-2.0+
+/* Microchip Sparx5 / LAN969X / LAN966X Switch Reset driver
+ *
+ * Copyright (c) 2020 Microchip Technology Inc. and its subsidiaries.
+ *
+ * Ported from Linux drivers/reset/reset-microchip-sparx5.c. Identifiers,
+ * struct layouts and per-SoC props are kept aligned with Linux so future
+ * fixes can be backported with minimal context churn.
+ */
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <io.h>
+#include <of.h>
+#include <linux/err.h>
+#include <linux/iopoll.h>
+#include <linux/regmap.h>
+#include <linux/reset-controller.h>
+#include <mfd/syscon.h>
+
+struct reset_props {
+	u32 protect_reg;
+	u32 protect_bit;
+	u32 reset_reg;
+	u32 reset_bit;
+};
+
+struct mchp_reset_context {
+	struct regmap *cpu_ctrl;
+	struct regmap *gcb_ctrl;
+	struct reset_controller_dev rcdev;
+	const struct reset_props *props;
+};
+
+static const struct regmap_config sparx5_reset_regmap_config = {
+	.reg_bits	= 32,
+	.val_bits	= 32,
+	.reg_stride	= 4,
+};
+
+static int sparx5_switch_reset(struct mchp_reset_context *ctx)
+{
+	u32 val;
+
+	/* Make sure the core is PROTECTED from reset */
+	regmap_update_bits(ctx->cpu_ctrl, ctx->props->protect_reg,
+			   ctx->props->protect_bit, ctx->props->protect_bit);
+
+	/* Start soft reset */
+	regmap_write(ctx->gcb_ctrl, ctx->props->reset_reg,
+		     ctx->props->reset_bit);
+
+	/* Wait for soft reset done */
+	return regmap_read_poll_timeout(ctx->gcb_ctrl, ctx->props->reset_reg,
+					val,
+					(val & ctx->props->reset_bit) == 0,
+					100);
+}
+
+static int sparx5_reset_noop(struct reset_controller_dev *rcdev,
+			     unsigned long id)
+{
+	return 0;
+}
+
+static const struct reset_control_ops sparx5_reset_ops = {
+	.reset = sparx5_reset_noop,
+};
+
+static int mchp_sparx5_reset_probe(struct device *dev)
+{
+	struct device_node *dn = dev->of_node;
+	struct mchp_reset_context *ctx;
+	struct device_node *syscon_np;
+	struct resource *iores;
+	void __iomem *base;
+	int ret;
+
+	ctx = xzalloc(sizeof(*ctx));
+
+	syscon_np = of_parse_phandle(dn, "cpu-syscon", 0);
+	if (!syscon_np) {
+		dev_err(dev, "missing 'cpu-syscon' phandle\n");
+		ret = -ENODEV;
+		goto err;
+	}
+	ctx->cpu_ctrl = syscon_node_to_regmap(syscon_np);
+	if (IS_ERR(ctx->cpu_ctrl)) {
+		dev_err(dev, "failed to map cpu-syscon: %pe\n", ctx->cpu_ctrl);
+		ret = PTR_ERR(ctx->cpu_ctrl);
+		goto err;
+	}
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		ret = PTR_ERR(iores);
+		goto err;
+	}
+	base = IOMEM(iores->start);
+	ctx->gcb_ctrl = regmap_init_mmio(dev, base, &sparx5_reset_regmap_config);
+	if (IS_ERR(ctx->gcb_ctrl)) {
+		ret = PTR_ERR(ctx->gcb_ctrl);
+		goto err;
+	}
+
+	ctx->props = device_get_match_data(dev);
+	if (!ctx->props) {
+		ret = -EINVAL;
+		goto err;
+	}
+
+	ctx->rcdev.nr_resets = 1;
+	ctx->rcdev.ops = &sparx5_reset_ops;
+	ctx->rcdev.of_node = dn;
+
+	/*
+	 * Issue the reset very early; reset_control_reset() callers see a
+	 * no-op afterwards.
+	 */
+	ret = sparx5_switch_reset(ctx);
+	if (ret) {
+		dev_err(dev, "switch reset timed out: %d\n", ret);
+		goto err;
+	}
+
+	ret = reset_controller_register(&ctx->rcdev);
+	if (ret)
+		goto err;
+
+	dev_info(dev, "switch reset complete\n");
+	return 0;
+
+err:
+	free(ctx);
+	return ret;
+}
+
+static const struct reset_props reset_props_sparx5 = {
+	.protect_reg    = 0x84,
+	.protect_bit    = BIT(10),
+	.reset_reg      = 0x0,
+	.reset_bit      = BIT(1),
+};
+
+static const struct reset_props reset_props_lan966x = {
+	.protect_reg    = 0x88,
+	.protect_bit    = BIT(5),
+	.reset_reg      = 0x0,
+	.reset_bit      = BIT(1),
+};
+
+static const struct of_device_id mchp_sparx5_reset_of_match[] = {
+	{ .compatible = "microchip,sparx5-switch-reset",
+	  .data = &reset_props_sparx5 },
+	{ .compatible = "microchip,lan966x-switch-reset",
+	  .data = &reset_props_lan966x },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, mchp_sparx5_reset_of_match);
+
+static struct driver mchp_sparx5_reset_driver = {
+	.name = "sparx5-switch-reset",
+	.probe = mchp_sparx5_reset_probe,
+	.of_compatible = DRV_OF_COMPAT(mchp_sparx5_reset_of_match),
+};
+/*
+ * Same rationale as Linux's postcore_initcall(): the switch IP must be
+ * reset before downstream consumers (SGPIO, MDIO, switch fabric) probe.
+ */
+coredevice_platform_driver(mchp_sparx5_reset_driver);
-- 
2.47.3



