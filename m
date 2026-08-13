Delivery-date: Thu, 13 Aug 2026 10:15:27 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuQb0-002cN1-2l
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 10:15:27 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1D07E201898
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 10:15:27 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=x+EKRwVC;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G8MSPRCuGjGO89KKtMH9u0BRJzn23/8ASUxQuqQUEsQ=; b=x+EKRwVCvSJoYtwSqZoHiqEKIX
	3EcWwwBwgtG4uU3vA/gGnb4aR4mtYH8VaAdgChVp2N2zQhZfWuRlc65hdGxm8YJhyZuF3wieWwmLC
	e0WUEgL4zBvN8pnXJPFOTnLZR9BYSPj5gPE0N2+r+5mAqAcdiSRAqu11alNv+t8a+60RaYcVWCuPe
	tKNX9gsR5uak0SZjIOxTLehmBnM2lYgvnvBuziuYgYAAHZntSZvWf2B3ZaLE/64hM6U32vapUdViZ
	s9eBNpD9SzWAOam9MdWUL8vZnKHNSxFUD5qFLRDaGm9bA+lp2JPr1CxLsbLvn/JHVBWIK7oQkkhsY
	lwgeKjyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaU-000000006EC-1cai;
	Thu, 13 Aug 2026 08:14:54 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaP-000000006Bb-0nol
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 08:14:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CEA3D201ECA;
	Thu, 13 Aug 2026 10:14:45 +0200 (CEST)
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-001Fmo-21;
	Thu, 13 Aug 2026 10:14:45 +0200
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-00000007spW-1uHP;
	Thu, 13 Aug 2026 10:14:45 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: robert.marko@sartura.hr,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: [PATCH v2 7/9] reset: add Microchip sparx5 / LAN969X / LAN966X switch reset driver
Date: Thu, 13 Aug 2026 10:14:37 +0200
Message-ID: <20260813081444.1879009-8-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260813081444.1879009-1-o.rempel@pengutronix.de>
References: <20260813081444.1879009-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_011449_381350_860432C4 
X-CRM114-Status: GOOD (  21.64  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Add the reset controller for the Microchip sparx5 / LAN969X
    / LAN966X switch SoCs. The reset is asserted once at probe time so downstream
    peripherals (SGPIO, MDIO, switch core) come up against a clean [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: bt6br59nt1uiynbmdaozqy1ni1m3hi43
X-Spamd-Result: default: False [-6.01 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 1D07E201898

Add the reset controller for the Microchip sparx5 / LAN969X / LAN966X
switch SoCs. The reset is asserted once at probe time so downstream
peripherals (SGPIO, MDIO, switch core) come up against a clean IP
state instead of inheriting whatever the previous boot stage left.

Ported from Linux drivers/reset/reset-microchip-sparx5.c at tag
v7.1-rc7

Assisted-by: Claude-Code:claude-opus-5
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
Link to v1: https://lore.barebox.org/barebox/20260612055930.635833-8-o.rempel@pengutronix.de/

Changes v2:
- add SPDX-Comment: Origin-URL: tag pointing at the Linux source file
  and the exact commit it was taken from (Sascha Hauer)
---
 drivers/reset/Kconfig                  |  10 ++
 drivers/reset/Makefile                 |   1 +
 drivers/reset/reset-microchip-sparx5.c | 171 +++++++++++++++++++++++++
 3 files changed, 182 insertions(+)
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
index 000000000000..dfe0dddb33d9
--- /dev/null
+++ b/drivers/reset/reset-microchip-sparx5.c
@@ -0,0 +1,171 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/reset/reset-microchip-sparx5.c?id=b7e5ac83cb16f7ffd11dc23736f84276602100ed
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



