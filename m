Delivery-date: Thu, 13 Aug 2026 10:15:26 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuQaz-002cMV-2I
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 10:15:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F3256201EBF
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 10:15:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Bm+cSthO;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kw+ct8coDt2tNEDLonRq82vHTRXOBeFNyJL/Eah2lFA=; b=Bm+cSthOG1vG8OdMpW7MuwBiVw
	7qQxvHiqaIOcfMJNm4xpY9oKK32RxmhrcEyxCi6HN5wAkZEpVvCPk0oolRe2OLKKoPqkDxbv7dWYm
	FMU7rZj8hDGmeCzcavrAcxDr7bkE15P1BlgPYzC9beyy8KIRoKljylphXvtDpyzC/qHcf12JP2hKZ
	UljT9PZvENqeJx2xP2S8wea0aV2AVynwZ2iGX5FZTTEWVsbt8HQWssmnZBLq6N/Z+x/v7j/kmRHEu
	5oSM5Bxa/k9kQTcv1Hw67fEeIR1Pv542QWsdUqtnE0Ox7XhFFZTkSbi6gubrM1EUqLsvfmf7uWTq6
	5iBDSq/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaX-000000006Iv-39Fy;
	Thu, 13 Aug 2026 08:14:57 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaT-000000006DB-3jt8
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 08:14:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B5039201EC5;
	Thu, 13 Aug 2026 10:14:45 +0200 (CEST)
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-001Fmj-1Z;
	Thu, 13 Aug 2026 10:14:45 +0200
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-00000007spG-1gNE;
	Thu, 13 Aug 2026 10:14:45 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: robert.marko@sartura.hr,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: [PATCH v2 3/9] clk: add Microchip LAN966X / LAN969X generic clock controller driver
Date: Thu, 13 Aug 2026 10:14:33 +0200
Message-ID: <20260813081444.1879009-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260813081444.1879009-1-o.rempel@pengutronix.de>
References: <20260813081444.1879009-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_011454_247841_333E1867 
X-CRM114-Status: GOOD (  25.60  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Port the Microchip LAN966X Generic Clock Controller (GCK)
   driver from the Linux kernel. GCK generates and supplies clocks to peripherals
    on the LAN966X and LAN969X switch SoCs (UART, SDHCI, QSPI, SGPI [...] 
 
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
X-Stat-Signature: bgtexgcun8j5wg6wpsgtkaine1btm3he
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
X-Rspamd-Queue-Id: F3256201EBF

Port the Microchip LAN966X Generic Clock Controller (GCK) driver from
the Linux kernel. GCK generates and supplies clocks to peripherals on
the LAN966X and LAN969X switch SoCs (UART, SDHCI, QSPI, SGPIO, ...).

Ported from Linux drivers/clk/clk-lan966x.c at tag v7.1-rc7
Barebox-specific deltas:
- probe() takes `struct device *` instead of `platform_device`
- no devm_* - allocations use xzalloc(), which cannot fail
- clk_parent_data carries both `.fw_name` (for Linux source-compat) and
  `.name` (used by barebox at register time, since barebox's clk
  framework does not resolve `fw_name` via clock-names).
- Linux's `.determine_rate` is implemented here as `.round_rate`.

Assisted-by: Claude-Code:claude-opus-5
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
Link to v1: https://lore.barebox.org/barebox/20260612055930.635833-3-o.rempel@pengutronix.de/

Changes v2:
- add SPDX-Comment: Origin-URL: tag pointing at the Linux source file
  and the exact commit it was taken from (Sascha Hauer)
- use xzalloc() instead of kzalloc()/kcalloc(): xzalloc() cannot return
  NULL, so the -ENOMEM error paths Marco flagged as leaking are gone
  entirely. Sascha noted probe-path leaks are not worth handling, this
  way there is nothing to handle. (Marco Felsch, Sascha Hauer)
- the file-scope "static void __iomem *base" Marco asked about is kept:
  it is verbatim from Linux (drivers/clk/clk-lan966x.c), and there is
  only ever one GCK instance per SoC
---
 drivers/clk/Kconfig       |   9 ++
 drivers/clk/Makefile      |   1 +
 drivers/clk/clk-lan966x.c | 319 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 329 insertions(+)
 create mode 100644 drivers/clk/clk-lan966x.c

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index d2a61329e125..fe7056f8971b 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -84,4 +84,13 @@ config COMMON_CLK_GPIO
 
 source "drivers/clk/sifive/Kconfig"
 
+config COMMON_CLK_LAN966X
+	bool "Generic Clock Controller driver for LAN966X SoC"
+	depends on OFDEVICE
+	depends on COMMON_CLK
+	help
+	  Microchip LAN966X and LAN969X SoC Generic Clock Controller (GCK).
+	  GCK generates and supplies clocks to various peripherals within the
+	  SoC.
+
 endif
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 4fda2c1e0dd3..d7e06de04230 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -33,3 +33,4 @@ obj-$(CONFIG_COMMON_CLK_SCMI)	+= clk-scmi.o
 obj-$(CONFIG_COMMON_CLK_GPIO)   += clk-gpio.o
 obj-$(CONFIG_TI_SCI_CLK)	+= ti-sci-clk.o
 obj-$(CONFIG_ARCH_K3)		+= k3/
+obj-$(CONFIG_COMMON_CLK_LAN966X)	+= clk-lan966x.o
diff --git a/drivers/clk/clk-lan966x.c b/drivers/clk/clk-lan966x.c
new file mode 100644
index 000000000000..15e0105ce7b4
--- /dev/null
+++ b/drivers/clk/clk-lan966x.c
@@ -0,0 +1,319 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/clk-lan966x.c?id=b7e5ac83cb16f7ffd11dc23736f84276602100ed
+/*
+ * Microchip LAN966x SoC Clock driver.
+ *
+ * Copyright (C) 2021 Microchip Technology, Inc. and its subsidiaries
+ *
+ * Author: Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>
+ *
+ * Ported from Linux drivers/clk/clk-lan966x.c. Structure and identifiers
+ * are kept aligned with Linux so future fixes can be backported with
+ * minimal context churn.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <io.h>
+#include <of.h>
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/spinlock.h>
+
+#define GCK_ENA         BIT(0)
+#define GCK_SRC_SEL     GENMASK(9, 8)
+#define GCK_PRESCALER   GENMASK(23, 16)
+
+#define DIV_MAX		255
+
+static const char * const lan966x_clk_names[] = {
+	"qspi0", "qspi1", "qspi2", "sdmmc0",
+	"pi", "mcan0", "mcan1", "flexcom0",
+	"flexcom1", "flexcom2", "flexcom3",
+	"flexcom4", "timer1", "usb_refclk",
+};
+
+static const char * const lan969x_clk_names[] = {
+	"qspi0", "qspi2", "sdmmc0", "sdmmc1",
+	"mcan0", "mcan1", "flexcom0",
+	"flexcom1", "flexcom2", "flexcom3",
+	"timer1", "usb_refclk",
+};
+
+struct lan966x_gck {
+	struct clk_hw hw;
+	void __iomem *reg;
+};
+#define to_lan966x_gck(hw) container_of(hw, struct lan966x_gck, hw)
+
+static const struct clk_parent_data lan966x_gck_pdata[] = {
+	{ .fw_name = "cpu", .name = "cpu-clk", },
+	{ .fw_name = "ddr", .name = "ddr-clk", },
+	{ .fw_name = "sys", .name = "fx100-clk", },
+};
+
+static struct clk_init_data init = {
+	.parent_data = lan966x_gck_pdata,
+	.num_parents = ARRAY_SIZE(lan966x_gck_pdata),
+};
+
+struct clk_gate_soc_desc {
+	const char *name;
+	int bit_idx;
+};
+
+static const struct clk_gate_soc_desc lan966x_clk_gate_desc[] = {
+	{ "uhphs", 11 },
+	{ "udphs", 10 },
+	{ "mcramc", 9 },
+	{ "hmatrix", 8 },
+	{ }
+};
+
+static const struct clk_gate_soc_desc lan969x_clk_gate_desc[] = {
+	{ "usb_drd", 10 },
+	{ "mcramc", 9 },
+	{ "hmatrix", 8 },
+	{ }
+};
+
+struct lan966x_match_data {
+	char *name;
+	const char * const *clk_name;
+	const struct clk_gate_soc_desc *clk_gate_desc;
+	u8 num_generic_clks;
+	u8 num_total_clks;
+};
+
+static struct lan966x_match_data lan966x_desc = {
+	.name = "lan966x",
+	.clk_name = lan966x_clk_names,
+	.clk_gate_desc = lan966x_clk_gate_desc,
+	.num_total_clks = 18,
+	.num_generic_clks = 14,
+};
+
+static struct lan966x_match_data lan969x_desc = {
+	.name = "lan969x",
+	.clk_name = lan969x_clk_names,
+	.clk_gate_desc = lan969x_clk_gate_desc,
+	.num_total_clks = 15,
+	.num_generic_clks = 12,
+};
+
+static DEFINE_SPINLOCK(clk_gate_lock);
+static void __iomem *base;
+
+static int lan966x_gck_enable(struct clk_hw *hw)
+{
+	struct lan966x_gck *gck = to_lan966x_gck(hw);
+	u32 val = readl(gck->reg);
+
+	val |= GCK_ENA;
+	writel(val, gck->reg);
+
+	return 0;
+}
+
+static void lan966x_gck_disable(struct clk_hw *hw)
+{
+	struct lan966x_gck *gck = to_lan966x_gck(hw);
+	u32 val = readl(gck->reg);
+
+	val &= ~GCK_ENA;
+	writel(val, gck->reg);
+}
+
+static int lan966x_gck_set_rate(struct clk_hw *hw,
+				unsigned long rate,
+				unsigned long parent_rate)
+{
+	struct lan966x_gck *gck = to_lan966x_gck(hw);
+	u32 div, val = readl(gck->reg);
+
+	if (rate == 0 || parent_rate == 0)
+		return -EINVAL;
+
+	/* Set Prescalar */
+	div = parent_rate / rate;
+	val &= ~GCK_PRESCALER;
+	val |= FIELD_PREP(GCK_PRESCALER, (div - 1));
+	writel(val, gck->reg);
+
+	return 0;
+}
+
+static unsigned long lan966x_gck_recalc_rate(struct clk_hw *hw,
+					     unsigned long parent_rate)
+{
+	struct lan966x_gck *gck = to_lan966x_gck(hw);
+	u32 div, val = readl(gck->reg);
+
+	div = FIELD_GET(GCK_PRESCALER, val);
+
+	return parent_rate / (div + 1);
+}
+
+/*
+ * Linux uses .determine_rate, which barebox does not have. round_rate is
+ * called against the already-selected parent, so we just clamp the divider.
+ * Source selection happens via .set_parent / .get_parent.
+ */
+static long lan966x_gck_round_rate(struct clk_hw *hw, unsigned long rate,
+				   unsigned long *parent_rate)
+{
+	unsigned long div;
+
+	if (!rate || !*parent_rate)
+		return 0;
+
+	div = DIV_ROUND_CLOSEST(*parent_rate, rate);
+	if (div > DIV_MAX + 1)
+		div = DIV_MAX + 1;
+	if (div < 1)
+		div = 1;
+
+	return *parent_rate / div;
+}
+
+static int lan966x_gck_get_parent(struct clk_hw *hw)
+{
+	struct lan966x_gck *gck = to_lan966x_gck(hw);
+	u32 val = readl(gck->reg);
+
+	return FIELD_GET(GCK_SRC_SEL, val);
+}
+
+static int lan966x_gck_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct lan966x_gck *gck = to_lan966x_gck(hw);
+	u32 val = readl(gck->reg);
+
+	val &= ~GCK_SRC_SEL;
+	val |= FIELD_PREP(GCK_SRC_SEL, index);
+	writel(val, gck->reg);
+
+	return 0;
+}
+
+static const struct clk_ops lan966x_gck_ops = {
+	.enable		= lan966x_gck_enable,
+	.disable	= lan966x_gck_disable,
+	.set_rate	= lan966x_gck_set_rate,
+	.recalc_rate	= lan966x_gck_recalc_rate,
+	.round_rate	= lan966x_gck_round_rate,
+	.set_parent	= lan966x_gck_set_parent,
+	.get_parent	= lan966x_gck_get_parent,
+};
+
+static struct clk_hw *lan966x_gck_clk_register(struct device *dev, int i)
+{
+	struct lan966x_gck *priv;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->reg = base + (i * 4);
+	priv->hw.init = &init;
+	ret = clk_hw_register(dev, &priv->hw);
+	if (ret) {
+		free(priv);
+		return ERR_PTR(ret);
+	}
+
+	return &priv->hw;
+};
+
+static int lan966x_gate_clk_register(struct device *dev,
+				     const struct lan966x_match_data *data,
+				     struct clk_onecell_data *clk_data,
+				     void __iomem *gate_base)
+{
+	struct clk_hw *hw;
+	int i;
+
+	for (i = data->num_generic_clks; i < data->num_total_clks; ++i) {
+		int idx = i - data->num_generic_clks;
+		const struct clk_gate_soc_desc *desc;
+
+		desc = &data->clk_gate_desc[idx];
+
+		hw = clk_hw_register_gate(dev, desc->name,
+					  data->name, 0, gate_base,
+					  desc->bit_idx,
+					  0, &clk_gate_lock);
+		if (IS_ERR(hw)) {
+			dev_err(dev, "failed to register %s clock\n",
+				desc->name);
+			return PTR_ERR(hw);
+		}
+		clk_data->clks[i] = clk_hw_to_clk(hw);
+	}
+
+	return 0;
+}
+
+static int lan966x_clk_probe(struct device *dev)
+{
+	const struct lan966x_match_data *data;
+	struct clk_onecell_data *clk_data;
+	struct resource *iores;
+	int i, ret;
+
+	data = device_get_match_data(dev);
+	if (!data)
+		return -EINVAL;
+
+	clk_data = xzalloc(sizeof(*clk_data));
+	clk_data->clks = xzalloc(data->num_total_clks *
+				 sizeof(*clk_data->clks));
+	clk_data->clk_num = data->num_total_clks;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	base = IOMEM(iores->start);
+
+	init.ops = &lan966x_gck_ops;
+
+	for (i = 0; i < data->num_generic_clks; i++) {
+		struct clk_hw *hw;
+
+		init.name = data->clk_name[i];
+		hw = lan966x_gck_clk_register(dev, i);
+		if (IS_ERR(hw)) {
+			dev_err(dev, "failed to register %s clock\n",
+				init.name);
+			return PTR_ERR(hw);
+		}
+		clk_data->clks[i] = clk_hw_to_clk(hw);
+	}
+
+	iores = dev_request_mem_resource(dev, 1);
+	if (!IS_ERR(iores)) {
+		void __iomem *gate_base = IOMEM(iores->start);
+
+		ret = lan966x_gate_clk_register(dev, data, clk_data, gate_base);
+		if (ret)
+			return ret;
+	}
+
+	return of_clk_add_provider(dev->of_node, of_clk_src_onecell_get,
+				   clk_data);
+}
+
+static const struct of_device_id lan966x_clk_dt_ids[] = {
+	{ .compatible = "microchip,lan966x-gck", .data = &lan966x_desc },
+	{ .compatible = "microchip,lan9691-gck", .data = &lan969x_desc },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, lan966x_clk_dt_ids);
+
+static struct driver lan966x_clk_driver = {
+	.name = "lan966x-clk",
+	.probe = lan966x_clk_probe,
+	.of_compatible = DRV_OF_COMPAT(lan966x_clk_dt_ids),
+};
+postcore_platform_driver(lan966x_clk_driver);
-- 
2.47.3



