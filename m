Delivery-date: Sun, 16 Aug 2026 20:14:43 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfNa-003qPu-32
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:14:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3B95C201B02
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:14:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Afuaeool;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FrKmWXwi4UxdQ5PK4EwhIiAHzZ2yL6g4lkW60CTEOTM=; b=AfuaeoolHYFXNPbkDm3yP0XlHl
	B23QQVmCl6x45TvxHd7jWc9R5RxZ3lVm954fsGnTmY4M8Ym0Tkz4ATZg6BITcQLS3hSyyCefXp56L
	boGhU2XIxyS5AxGQt7VCsaXxkIsSMYaWu1+EpMOPVlD8kSRzif3JlqC2L9BWWMDUptdERrTKRKD3j
	V8muE2qXObn04wc/Qwsx9JxH0a7l5mdglwkhy57NV+wA7E7U/npHfPK0VsZnXxddQfJSQEiIsPCyD
	udvlj9lw8ZoXQgr8S3At5t8OthbAJYSw85Ei1eM7nZTGQS0C0XbcqO1UPPigfKm37XlIrvRn17um2
	FFHyaVhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf66-00000004wgD-2dgo;
	Sun, 16 Aug 2026 17:56:38 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf63-00000004wdI-0dri
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 17:56:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id AEBDB201EC1;
	Sun, 16 Aug 2026 19:56:26 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-001oeU-1H;
	Sun, 16 Aug 2026 19:56:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-11kH;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:27 +0200
Subject: [PATCH 07/27] clk: pxa: add a device tree clock driver for PXA3xx
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-7-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=25383;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=w0cS0Cu6hfCeyq2xWsiAZSvqFB1bam6ImYOJ/49N5AY=;
 b=uurrh+I+WrDK8VbCgQKnxcCwfXBg7YivPwWwI7AomKrT0Jeaz5KDm4Nz1f6gYmGfBSp1z5vsp
 L6MbCoU7AmCAjlA7BxrixnU8i19ae4oNUFQUnjBuRTmgf4BdWoufHMi
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_105635_512512_DAF33542 
X-CRM114-Status: GOOD (  31.59  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  barebox had no clock driver for the "marvell,pxa300-clocks"
    node the device tree points every PXA3xx peripheral at. arch/arm/mach-pxa/speed-*
    instead hardcoded a few rates and handed them out through [...] 
 
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
X-Stat-Signature: xxwwxkp7xiw3ar17jbbc9wex7wwi9jrn
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: 3B95C201B02

barebox had no clock driver for the "marvell,pxa300-clocks" node the
device tree points every PXA3xx peripheral at. arch/arm/mach-pxa/speed-*
instead hardcoded a few rates and handed them out through non-device-tree
means: pxa_get_uartclk() and friends, plus a fixed "nand" clock that had
to be registered by physical base address to be found at all.

Port the clock driver from Linux, so the clocks come from the device tree
like on every other architecture. With the drivers converted to the clk
API in the previous commits, speed-pxa3xx.c and mach/pxa/clock.h have no
users left and go away with it.

Two things had to be adapted from the kernel:

- barebox's clk_hw embeds the struct clk itself and
  clk_hw_register_composite() writes the ops into it, so the mux and the
  rate half of a CKEN clock cannot share one clk_hw the way they do in
  Linux -- the second assignment overwrites the ops of the first. Give
  them one each.

- barebox has no .determine_rate, so the read-only muxes only implement
  .get_parent. .set_parent still has to be there because the core will
  not register a mux without one.

Everything the bootloader has no use for -- frequency changing, the
cpufreq helpers and pxa3xx_get_clk_frequency_khz() -- has been left out.

The clock ids come from dt-bindings/clock/pxa-clock.h, which the dts
directory already carries.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-pxa/Kconfig        |   1 +
 arch/arm/mach-pxa/Makefile       |   2 +-
 arch/arm/mach-pxa/speed-pxa3xx.c |  43 -----
 drivers/clk/Makefile             |   1 +
 drivers/clk/pxa/Makefile         |   3 +
 drivers/clk/pxa/clk-pxa.c        | 122 +++++++++++++
 drivers/clk/pxa/clk-pxa.h        | 118 +++++++++++++
 drivers/clk/pxa/clk-pxa3xx.c     | 357 +++++++++++++++++++++++++++++++++++++++
 include/mach/pxa/clock.h         |  19 ---
 9 files changed, 603 insertions(+), 63 deletions(-)

diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 3a58736d2d..738fa7d9bb 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -10,6 +10,7 @@ config ARCH_PXA3XX
 	select CPU_XSC3
 	select HAVE_CLK
 	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
 
 config ARCH_PXA310
 	bool
diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index fbcc4b8859..b4f3a51046 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -6,4 +6,4 @@ obj-y += common.o
 obj-y += gpio.o
 obj-y += devices.o
 
-obj-$(CONFIG_ARCH_PXA3XX) += speed-pxa3xx.o mfp-pxa3xx.o pxa3xx.o
+obj-$(CONFIG_ARCH_PXA3XX) += mfp-pxa3xx.o pxa3xx.o
diff --git a/arch/arm/mach-pxa/speed-pxa3xx.c b/arch/arm/mach-pxa/speed-pxa3xx.c
deleted file mode 100644
index 2579966f41..0000000000
--- a/arch/arm/mach-pxa/speed-pxa3xx.c
+++ /dev/null
@@ -1,43 +0,0 @@
-/*
- * clock.h - implementation of the PXA clock functions
- *
- * Copyright (C) 2014 by Robert Jarzmik <robert.jarzmik@free.fr>
- *
- * This file is released under the GPLv2
- *
- */
-
-#include <common.h>
-#include <init.h>
-#include <linux/clk.h>
-#include <linux/clkdev.h>
-#include <mach/pxa/clock.h>
-#include <mach/pxa/pxa-regs.h>
-
-/* Crystal clock: 13MHz */
-#define BASE_CLK	13000000
-
-unsigned long pxa_get_uartclk(void)
-{
-	return 14857000;
-}
-
-unsigned long pxa_get_pwmclk(void)
-{
-	return BASE_CLK;
-}
-
-static int pxa3xx_clock_init(void)
-{
-	unsigned long nand_rate = (cpu_is_pxa320()) ? 104000000 : 156000000;
-	struct clk *clk;
-	int ret;
-
-	clk = clk_fixed("nand", nand_rate);
-	ret = clk_register_clkdev(clk, NULL, "nand");
-	if (ret)
-		return ret;
-
-	return 0;
-}
-postcore_initcall(pxa3xx_clock_init);
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 4fda2c1e0d..3653bb63be 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -33,3 +33,4 @@ obj-$(CONFIG_COMMON_CLK_SCMI)	+= clk-scmi.o
 obj-$(CONFIG_COMMON_CLK_GPIO)   += clk-gpio.o
 obj-$(CONFIG_TI_SCI_CLK)	+= ti-sci-clk.o
 obj-$(CONFIG_ARCH_K3)		+= k3/
+obj-$(CONFIG_ARCH_PXA)		+= pxa/
diff --git a/drivers/clk/pxa/Makefile b/drivers/clk/pxa/Makefile
new file mode 100644
index 0000000000..60ecde7aaf
--- /dev/null
+++ b/drivers/clk/pxa/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y				+= clk-pxa.o
+obj-$(CONFIG_ARCH_PXA3XX)	+= clk-pxa3xx.o
diff --git a/drivers/clk/pxa/clk-pxa.c b/drivers/clk/pxa/clk-pxa.c
new file mode 100644
index 0000000000..b5b6c88231
--- /dev/null
+++ b/drivers/clk/pxa/clk-pxa.c
@@ -0,0 +1,122 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Marvell PXA family clocks
+ *
+ * Copyright (C) 2014 Robert Jarzmik
+ *
+ * Common clock code for PXA clocks ("CKEN" type clocks + DT)
+ *
+ * Ported from the Linux kernel.
+ */
+#include <common.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <of.h>
+
+#include <dt-bindings/clock/pxa-clock.h>
+#include "clk-pxa.h"
+
+static struct clk *pxa_clocks[CLK_MAX];
+static struct clk_onecell_data onecell_data = {
+	.clks = pxa_clocks,
+	.clk_num = CLK_MAX,
+};
+
+/*
+ * Unlike Linux, barebox's clk_hw embeds the struct clk itself and
+ * clk_hw_register_composite() stores the ops in it, so the mux and the rate
+ * part cannot share one clk_hw: the second assignment would overwrite the
+ * ops of the first.
+ */
+struct pxa_clk {
+	struct clk_hw mux_hw;
+	struct clk_hw rate_hw;
+	struct clk_fixed_factor lp;
+	struct clk_fixed_factor hp;
+	struct clk_gate gate;
+	bool (*is_in_low_power)(void);
+};
+
+#define mux_to_pxa_clk(_hw) container_of(_hw, struct pxa_clk, mux_hw)
+#define rate_to_pxa_clk(_hw) container_of(_hw, struct pxa_clk, rate_hw)
+
+static unsigned long cken_recalc_rate(struct clk_hw *hw,
+				      unsigned long parent_rate)
+{
+	struct pxa_clk *pclk = rate_to_pxa_clk(hw);
+	struct clk_fixed_factor *fix;
+
+	if (!pclk->is_in_low_power || pclk->is_in_low_power())
+		fix = &pclk->lp;
+	else
+		fix = &pclk->hp;
+
+	/*
+	 * barebox's fixed factor only looks at mult and div, so unlike in
+	 * Linux there is no need to point the embedded clk_hw at our parent
+	 * first.
+	 */
+	return clk_fixed_factor_ops.recalc_rate(&fix->hw, parent_rate);
+}
+
+static const struct clk_ops cken_rate_ops = {
+	.recalc_rate = cken_recalc_rate,
+};
+
+static int cken_get_parent(struct clk_hw *hw)
+{
+	struct pxa_clk *pclk = mux_to_pxa_clk(hw);
+
+	if (!pclk->is_in_low_power)
+		return 0;
+	return pclk->is_in_low_power() ? 0 : 1;
+}
+
+static const struct clk_ops cken_mux_ops = {
+	.get_parent = cken_get_parent,
+	.set_parent = dummy_clk_set_parent,
+};
+
+void clkdev_pxa_register(int ckid, const char *con_id, const char *dev_id,
+			 struct clk *clk)
+{
+	if (!IS_ERR(clk) && (ckid != CLK_NONE))
+		pxa_clocks[ckid] = clk;
+	if (!IS_ERR(clk))
+		clk_register_clkdev(clk, con_id, dev_id);
+}
+
+int clk_pxa_cken_init(const struct desc_clk_cken *clks, int nb_clks,
+		      void __iomem *clk_regs)
+{
+	struct pxa_clk *pxa_clk;
+	struct clk_hw *hw;
+	int i;
+
+	for (i = 0; i < nb_clks; i++) {
+		pxa_clk = xzalloc(sizeof(*pxa_clk));
+		pxa_clk->is_in_low_power = clks[i].is_in_low_power;
+		pxa_clk->lp = clks[i].lp;
+		pxa_clk->hp = clks[i].hp;
+		pxa_clk->gate = clks[i].gate;
+		pxa_clk->gate.reg = clk_regs + clks[i].cken_reg;
+
+		hw = clk_hw_register_composite(NULL, clks[i].name,
+					       clks[i].parent_names, 2,
+					       &pxa_clk->mux_hw, &cken_mux_ops,
+					       &pxa_clk->rate_hw, &cken_rate_ops,
+					       &pxa_clk->gate.hw, &clk_gate_ops,
+					       clks[i].flags);
+		clkdev_pxa_register(clks[i].ckid, clks[i].con_id,
+				    clks[i].dev_id, clk_hw_to_clk(hw));
+	}
+
+	return 0;
+}
+
+int clk_pxa_dt_common_init(struct device_node *np)
+{
+	return of_clk_add_provider(np, of_clk_src_onecell_get, &onecell_data);
+}
diff --git a/drivers/clk/pxa/clk-pxa.h b/drivers/clk/pxa/clk-pxa.h
new file mode 100644
index 0000000000..f0fef5245c
--- /dev/null
+++ b/drivers/clk/pxa/clk-pxa.h
@@ -0,0 +1,118 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Marvell PXA family clocks
+ *
+ * Copyright (C) 2014 Robert Jarzmik
+ *
+ * Common clock code for PXA clocks ("CKEN" type clocks + DT)
+ *
+ * Ported from the Linux kernel.
+ */
+#ifndef _CLK_PXA_
+#define _CLK_PXA_
+
+#define PARENTS(name) \
+	static const char *const name ## _parents[]
+
+/*
+ * Unlike Linux, barebox's clk core has no .determine_rate, and it never
+ * changes a parent behind the driver's back, so the read-only muxes below
+ * only need .get_parent. .set_parent still has to exist because the core
+ * refuses to register a mux without one.
+ */
+#define MUX_RO_RATE_RO_OPS(name, clk_name)			\
+	static struct clk_hw name ## _mux_hw;			\
+	static struct clk_hw name ## _rate_hw;			\
+	static const struct clk_ops name ## _mux_ops = {	\
+		.get_parent = name ## _get_parent,		\
+		.set_parent = dummy_clk_set_parent,		\
+	};							\
+	static const struct clk_ops name ## _rate_ops = {	\
+		.recalc_rate = name ## _get_rate,		\
+	};							\
+	static struct clk *clk_register_ ## name(void)		\
+	{							\
+		return clk_hw_to_clk(clk_hw_register_composite(NULL, \
+			clk_name,				\
+			name ## _parents,			\
+			ARRAY_SIZE(name ## _parents),		\
+			&name ## _mux_hw, &name ## _mux_ops,	\
+			&name ## _rate_hw, &name ## _rate_ops,	\
+			NULL, NULL, CLK_GET_RATE_NOCACHE));	\
+	}
+
+#define RATE_RO_OPS(name, clk_name)				\
+	static struct clk_hw name ## _rate_hw;			\
+	static const struct clk_ops name ## _rate_ops = {	\
+		.recalc_rate = name ## _get_rate,		\
+	};							\
+	static struct clk *clk_register_ ## name(void)		\
+	{							\
+		return clk_hw_to_clk(clk_hw_register_composite(NULL, \
+			clk_name,				\
+			name ## _parents,			\
+			ARRAY_SIZE(name ## _parents),		\
+			NULL, NULL,				\
+			&name ## _rate_hw, &name ## _rate_ops,	\
+			NULL, NULL, CLK_GET_RATE_NOCACHE));	\
+	}
+
+/*
+ * CKEN clock type
+ * This clock takes it source from 2 possible parents :
+ *  - a low power parent
+ *  - a normal parent
+ *
+ *  +------------+     +-----------+
+ *  |  Low Power | --- | x mult_lp |
+ *  |    Clock   |     | / div_lp  |\
+ *  +------------+     +-----------+ \+-----+   +-----------+
+ *                                    | Mux |---| CKEN gate |
+ *  +------------+     +-----------+ /+-----+   +-----------+
+ *  | High Power |     | x mult_hp |/
+ *  |    Clock   | --- | / div_hp  |
+ *  +------------+     +-----------+
+ */
+struct desc_clk_cken {
+	struct clk_hw hw;
+	int ckid;
+	int cken_reg;
+	const char *name;
+	const char *dev_id;
+	const char *con_id;
+	const char * const *parent_names;
+	struct clk_fixed_factor lp;
+	struct clk_fixed_factor hp;
+	struct clk_gate gate;
+	bool (*is_in_low_power)(void);
+	const unsigned long flags;
+};
+
+#define PXA_CKEN(_dev_id, _con_id, _name, parents, _mult_lp, _div_lp,	\
+		 _mult_hp, _div_hp, is_lp, _cken_reg, _cken_bit, flag)	\
+	{ .ckid = CLK_ ## _name, .name = #_name,			\
+	  .cken_reg = _cken_reg,					\
+	  .dev_id = _dev_id, .con_id = _con_id,	.parent_names = parents,\
+	  .lp = { .mult = _mult_lp, .div = _div_lp },			\
+	  .hp = { .mult = _mult_hp, .div = _div_hp },			\
+	  .is_in_low_power = is_lp,					\
+	  .gate = { .bit_idx = _cken_bit },				\
+	  .flags = flag,						\
+	}
+#define PXA_CKEN_1RATE(dev_id, con_id, name, parents, cken_reg,		\
+			    cken_bit, flag)				\
+	PXA_CKEN(dev_id, con_id, name, parents, 1, 1, 1, 1,		\
+		 NULL, cken_reg, cken_bit, flag)
+
+static inline int dummy_clk_set_parent(struct clk_hw *hw, u8 index)
+{
+	return 0;
+}
+
+void clkdev_pxa_register(int ckid, const char *con_id, const char *dev_id,
+			 struct clk *clk);
+int clk_pxa_cken_init(const struct desc_clk_cken *clks, int nb_clks,
+		      void __iomem *clk_regs);
+int clk_pxa_dt_common_init(struct device_node *np);
+
+#endif
diff --git a/drivers/clk/pxa/clk-pxa3xx.c b/drivers/clk/pxa/clk-pxa3xx.c
new file mode 100644
index 0000000000..1ef72120ac
--- /dev/null
+++ b/drivers/clk/pxa/clk-pxa3xx.c
@@ -0,0 +1,357 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Marvell PXA3xxx family clocks
+ *
+ * Copyright (C) 2014 Robert Jarzmik
+ *
+ * Heavily inspired from former arch/arm/mach-pxa/pxa3xx.c
+ *
+ * Ported from the Linux kernel. Everything the bootloader cannot make use
+ * of -- frequency changing, the cpufreq helpers and the clocks feeding
+ * peripherals barebox has no driver for -- has been left out.
+ */
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <of.h>
+#include <mach/pxa/hardware.h>
+
+#include <dt-bindings/clock/pxa-clock.h>
+#include "clk-pxa.h"
+
+#define KHz 1000
+#define MHz (1000 * 1000)
+
+#define ACCR	(0x0000)	/* Application Subsystem Clock Configuration */
+#define ACSR	(0x0004)	/* Application Subsystem Clock Status */
+#define CKENA	(0x000C)	/* A Clock Enable Register */
+#define CKENB	(0x0010)	/* B Clock Enable Register */
+#define AC97_DIV (0x0014)	/* AC97 clock divisor value register */
+
+/*
+ * Static memory controller. pxa3xx-regs.h has this, but it also has
+ * ACCR/ACSR/CKENA/CKENB as absolute addresses, which collide with the
+ * offsets above, so take just the one register we need.
+ */
+#define MEMCLKCFG	0x4a000068
+
+#define ACCR_D0CS	(1 << 26)	/* D0 Mode Clock Select */
+#define ACCR_XN_MASK	(0x7 << 8)	/* Core PLL Turbo-to-Run Ratio */
+#define ACCR_XL_MASK	(0x1f)		/* Core PLL Run-to-Oscillator Ratio */
+
+/*
+ * Clock Enable Bit
+ */
+#define CKEN_LCD	1	/* < LCD Clock Enable */
+#define CKEN_USBH	2	/* < USB host clock enable */
+#define CKEN_CAMERA	3	/* < Camera interface clock enable */
+#define CKEN_NAND	4	/* < NAND Flash Controller Clock Enable */
+#define CKEN_USB2	6	/* < USB 2.0 client clock enable. */
+#define CKEN_SMC	9	/* < Static Memory Controller clock enable */
+#define CKEN_MMC1	12	/* < MMC1 Clock enable */
+#define CKEN_MMC2	13	/* < MMC2 clock enable */
+#define CKEN_KEYPAD	14	/* < Keypand Controller Clock Enable */
+#define CKEN_UDC	20	/* < UDC clock enable */
+#define CKEN_BTUART	21	/* < BTUART clock enable */
+#define CKEN_FFUART	22	/* < FFUART clock enable */
+#define CKEN_STUART	23	/* < STUART clock enable */
+#define CKEN_AC97	24	/* < AC97 clock enable */
+#define CKEN_SSP1	26	/* < SSP1 clock enable */
+#define CKEN_SSP2	27	/* < SSP2 clock enable */
+#define CKEN_SSP3	28	/* < SSP3 clock enable */
+#define CKEN_SSP4	29	/* < SSP4 clock enable */
+#define CKEN_PWM0	32	/* < PWM[0] clock enable */
+#define CKEN_PWM1	33	/* < PWM[1] clock enable */
+#define CKEN_I2C	36	/* < I2C clock enable */
+#define CKEN_GPIO	39	/* < GPIO clock enable */
+#define CKEN_MMC3	5	/* < MMC3 Clock Enable */
+#define CKEN_PXA300_GCU	42	/* Graphics controller clock enable */
+#define CKEN_PXA320_GCU	7	/* Graphics controller clock enable */
+
+enum {
+	PXA_CORE_60Mhz = 0,
+	PXA_CORE_RUN,
+	PXA_CORE_TURBO,
+};
+
+enum {
+	PXA_BUS_60Mhz = 0,
+	PXA_BUS_HSS,
+};
+
+/* crystal frequency to HSIO bus frequency multiplier (HSS) */
+static unsigned char hss_mult[4] = { 8, 12, 16, 24 };
+
+/* crystal frequency to static memory controller multiplier (SMCFS) */
+static unsigned int smcfs_mult[8] = { 6, 0, 8, 0, 0, 16, };
+static const unsigned int df_clkdiv[4] = { 1, 2, 4, 1 };
+
+static void __iomem *clk_regs;
+
+static unsigned int pxa3xx_smemc_get_memclkdiv(void)
+{
+	return df_clkdiv[(readl(IOMEM(MEMCLKCFG)) >> 16) & 0x3];
+}
+
+static unsigned long clk_pxa3xx_ac97_get_rate(struct clk_hw *hw,
+					      unsigned long parent_rate)
+{
+	unsigned long ac97_div, rate;
+
+	ac97_div = readl(clk_regs + AC97_DIV);
+
+	/*
+	 * This may loose precision for some rates but won't for the
+	 * standard 24.576MHz.
+	 */
+	rate = parent_rate / 2;
+	rate /= ((ac97_div >> 12) & 0x7fff);
+	rate *= (ac97_div & 0xfff);
+
+	return rate;
+}
+PARENTS(clk_pxa3xx_ac97) = { "spll_624mhz" };
+RATE_RO_OPS(clk_pxa3xx_ac97, "ac97");
+
+static unsigned long clk_pxa3xx_smemc_get_rate(struct clk_hw *hw,
+					       unsigned long parent_rate)
+{
+	unsigned long acsr = readl(clk_regs + ACSR);
+
+	return (parent_rate / 48) * smcfs_mult[(acsr >> 23) & 0x7] /
+		pxa3xx_smemc_get_memclkdiv();
+}
+PARENTS(clk_pxa3xx_smemc) = { "spll_624mhz" };
+RATE_RO_OPS(clk_pxa3xx_smemc, "smemc");
+
+static bool pxa3xx_is_ring_osc_forced(void)
+{
+	unsigned long acsr = readl(clk_regs + ACSR);
+
+	return acsr & ACCR_D0CS;
+}
+
+PARENTS(pxa3xx_pbus) = { "ring_osc_60mhz", "spll_624mhz" };
+PARENTS(pxa3xx_32Khz_bus) = { "osc_32_768khz", "osc_32_768khz" };
+PARENTS(pxa3xx_13MHz_bus) = { "osc_13mhz", "osc_13mhz" };
+PARENTS(pxa3xx_ac97_bus) = { "ring_osc_60mhz", "ac97" };
+PARENTS(pxa3xx_sbus) = { "ring_osc_60mhz", "system_bus" };
+PARENTS(pxa3xx_smemcbus) = { "ring_osc_60mhz", "smemc" };
+
+#define CKEN_AB(bit) ((CKEN_ ## bit > 31) ? CKENB : CKENA)
+#define PXA3XX_CKEN(dev_id, con_id, parents, mult_lp, div_lp, mult_hp,	\
+		    div_hp, bit, is_lp, flags)				\
+	PXA_CKEN(dev_id, con_id, bit, parents, mult_lp, div_lp,		\
+		 mult_hp, div_hp, is_lp,  CKEN_AB(bit),			\
+		 (CKEN_ ## bit % 32), flags)
+#define PXA3XX_PBUS_CKEN(dev_id, con_id, bit, mult_lp, div_lp,		\
+			 mult_hp, div_hp, delay)			\
+	PXA3XX_CKEN(dev_id, con_id, pxa3xx_pbus_parents, mult_lp,	\
+		    div_lp, mult_hp, div_hp, bit, pxa3xx_is_ring_osc_forced, 0)
+#define PXA3XX_CKEN_1RATE(dev_id, con_id, bit, parents)			\
+	PXA_CKEN_1RATE(dev_id, con_id, bit, parents,			\
+		       CKEN_AB(bit), (CKEN_ ## bit % 32), 0)
+
+static struct desc_clk_cken pxa3xx_clocks[] = {
+	PXA3XX_PBUS_CKEN("pxa2xx-uart.0", NULL, FFUART, 1, 4, 1, 42, 1),
+	PXA3XX_PBUS_CKEN("pxa2xx-uart.1", NULL, BTUART, 1, 4, 1, 42, 1),
+	PXA3XX_PBUS_CKEN("pxa2xx-uart.2", NULL, STUART, 1, 4, 1, 42, 1),
+	PXA3XX_PBUS_CKEN("pxa2xx-i2c.0", NULL, I2C, 2, 5, 1, 19, 0),
+	PXA3XX_PBUS_CKEN("pxa27x-udc", NULL, UDC, 1, 4, 1, 13, 5),
+	PXA3XX_PBUS_CKEN("pxa27x-ohci", NULL, USBH, 1, 4, 1, 13, 0),
+	PXA3XX_PBUS_CKEN("pxa3xx-u2d", NULL, USB2, 1, 4, 1, 13, 0),
+	PXA3XX_PBUS_CKEN("pxa27x-pwm.0", NULL, PWM0, 1, 6, 1, 48, 0),
+	PXA3XX_PBUS_CKEN("pxa27x-pwm.1", NULL, PWM1, 1, 6, 1, 48, 0),
+	PXA3XX_PBUS_CKEN("pxa2xx-mci.0", NULL, MMC1, 1, 4, 1, 24, 0),
+	PXA3XX_PBUS_CKEN("pxa2xx-mci.1", NULL, MMC2, 1, 4, 1, 24, 0),
+	PXA3XX_PBUS_CKEN("pxa2xx-mci.2", NULL, MMC3, 1, 4, 1, 24, 0),
+
+	PXA3XX_CKEN_1RATE("pxa27x-keypad", NULL, KEYPAD,
+			  pxa3xx_32Khz_bus_parents),
+	PXA3XX_CKEN_1RATE("pxa3xx-ssp.0", NULL, SSP1, pxa3xx_13MHz_bus_parents),
+	PXA3XX_CKEN_1RATE("pxa3xx-ssp.1", NULL, SSP2, pxa3xx_13MHz_bus_parents),
+	PXA3XX_CKEN_1RATE("pxa3xx-ssp.2", NULL, SSP3, pxa3xx_13MHz_bus_parents),
+	PXA3XX_CKEN_1RATE("pxa3xx-ssp.3", NULL, SSP4, pxa3xx_13MHz_bus_parents),
+
+	PXA3XX_CKEN(NULL, "AC97CLK", pxa3xx_ac97_bus_parents, 1, 4, 1, 1, AC97,
+		    pxa3xx_is_ring_osc_forced, 0),
+	PXA3XX_CKEN(NULL, "CAMCLK", pxa3xx_sbus_parents, 1, 2, 1, 1, CAMERA,
+		    pxa3xx_is_ring_osc_forced, 0),
+	PXA3XX_CKEN("pxa2xx-fb", NULL, pxa3xx_sbus_parents, 1, 1, 1, 1, LCD,
+		    pxa3xx_is_ring_osc_forced, 0),
+	PXA3XX_CKEN("pxa2xx-pcmcia", NULL, pxa3xx_smemcbus_parents, 1, 4,
+		    1, 1, SMC, pxa3xx_is_ring_osc_forced, CLK_IGNORE_UNUSED),
+};
+
+static struct desc_clk_cken pxa300_310_clocks[] = {
+	PXA3XX_PBUS_CKEN("pxa3xx-gcu", NULL, PXA300_GCU, 1, 1, 1, 1, 0),
+	PXA3XX_PBUS_CKEN("pxa3xx-nand", NULL, NAND, 1, 2, 1, 4, 0),
+	PXA3XX_CKEN_1RATE("pxa3xx-gpio", NULL, GPIO, pxa3xx_13MHz_bus_parents),
+};
+
+static struct desc_clk_cken pxa320_clocks[] = {
+	PXA3XX_PBUS_CKEN("pxa3xx-nand", NULL, NAND, 1, 2, 1, 6, 0),
+	PXA3XX_PBUS_CKEN("pxa3xx-gcu", NULL, PXA320_GCU, 1, 1, 1, 1, 0),
+	PXA3XX_CKEN_1RATE("pxa3xx-gpio", NULL, GPIO, pxa3xx_13MHz_bus_parents),
+};
+
+static unsigned long clk_pxa3xx_system_bus_get_rate(struct clk_hw *hw,
+						    unsigned long parent_rate)
+{
+	unsigned long acsr = readl(clk_regs + ACSR);
+	unsigned int hss = (acsr >> 14) & 0x3;
+
+	if (pxa3xx_is_ring_osc_forced())
+		return parent_rate;
+	return parent_rate / 48 * hss_mult[hss];
+}
+
+static int clk_pxa3xx_system_bus_get_parent(struct clk_hw *hw)
+{
+	if (pxa3xx_is_ring_osc_forced())
+		return PXA_BUS_60Mhz;
+	else
+		return PXA_BUS_HSS;
+}
+
+PARENTS(clk_pxa3xx_system_bus) = { "ring_osc_60mhz", "spll_624mhz" };
+MUX_RO_RATE_RO_OPS(clk_pxa3xx_system_bus, "system_bus");
+
+static unsigned long clk_pxa3xx_core_get_rate(struct clk_hw *hw,
+					      unsigned long parent_rate)
+{
+	return parent_rate;
+}
+
+static int clk_pxa3xx_core_get_parent(struct clk_hw *hw)
+{
+	unsigned long xclkcfg;
+	unsigned int t;
+
+	if (pxa3xx_is_ring_osc_forced())
+		return PXA_CORE_60Mhz;
+
+	/* Read XCLKCFG register turbo bit */
+	__asm__ __volatile__("mrc\tp14, 0, %0, c6, c0, 0" : "=r"(xclkcfg));
+	t = xclkcfg & 0x1;
+
+	if (t)
+		return PXA_CORE_TURBO;
+	return PXA_CORE_RUN;
+}
+PARENTS(clk_pxa3xx_core) = { "ring_osc_60mhz", "run", "cpll" };
+MUX_RO_RATE_RO_OPS(clk_pxa3xx_core, "core");
+
+static unsigned long clk_pxa3xx_run_get_rate(struct clk_hw *hw,
+					     unsigned long parent_rate)
+{
+	unsigned long acsr = readl(clk_regs + ACSR);
+	unsigned int xn = (acsr & ACCR_XN_MASK) >> 8;
+	unsigned int t, xclkcfg;
+
+	/* Read XCLKCFG register turbo bit */
+	__asm__ __volatile__("mrc\tp14, 0, %0, c6, c0, 0" : "=r"(xclkcfg));
+	t = xclkcfg & 0x1;
+
+	return t ? (parent_rate / xn) * 2 : parent_rate;
+}
+PARENTS(clk_pxa3xx_run) = { "cpll" };
+RATE_RO_OPS(clk_pxa3xx_run, "run");
+
+static unsigned long clk_pxa3xx_cpll_get_rate(struct clk_hw *hw,
+					      unsigned long parent_rate)
+{
+	unsigned long acsr = readl(clk_regs + ACSR);
+	unsigned int xn = (acsr & ACCR_XN_MASK) >> 8;
+	unsigned int xl = acsr & ACCR_XL_MASK;
+	unsigned int t, xclkcfg;
+
+	/* Read XCLKCFG register turbo bit */
+	__asm__ __volatile__("mrc\tp14, 0, %0, c6, c0, 0" : "=r"(xclkcfg));
+	t = xclkcfg & 0x1;
+
+	return t ? parent_rate * xl * xn : parent_rate * xl;
+}
+PARENTS(clk_pxa3xx_cpll) = { "osc_13mhz" };
+RATE_RO_OPS(clk_pxa3xx_cpll, "cpll");
+
+static void pxa3xx_register_core(void)
+{
+	clk_register_clk_pxa3xx_cpll();
+	clk_register_clk_pxa3xx_run();
+
+	clkdev_pxa_register(CLK_CORE, "core", NULL,
+			    clk_register_clk_pxa3xx_core());
+}
+
+static void pxa3xx_register_plls(void)
+{
+	clk_register_fixed_rate("osc_13mhz", NULL, CLK_GET_RATE_NOCACHE,
+				13 * MHz);
+	clkdev_pxa_register(CLK_OSC32k768, "osc_32_768khz", NULL,
+			    clk_register_fixed_rate("osc_32_768khz", NULL,
+						    CLK_GET_RATE_NOCACHE,
+						    32768));
+	clk_register_fixed_rate("ring_osc_120mhz", NULL, CLK_GET_RATE_NOCACHE,
+				120 * MHz);
+	clk_register_fixed_rate("clk_dummy", NULL, 0, 0);
+	clk_register_fixed_factor(NULL, "spll_624mhz", "osc_13mhz", 0, 48, 1);
+	clk_register_fixed_factor(NULL, "ring_osc_60mhz", "ring_osc_120mhz",
+				  0, 1, 2);
+}
+
+static void pxa3xx_base_clocks_init(void __iomem *oscc_reg)
+{
+	struct clk *clk;
+
+	pxa3xx_register_plls();
+	pxa3xx_register_core();
+	clk_register_clk_pxa3xx_system_bus();
+	clk_register_clk_pxa3xx_ac97();
+	clk_register_clk_pxa3xx_smemc();
+
+	clk = clk_register_gate(NULL, "CLK_POUT", "osc_13mhz", 0, oscc_reg,
+				11, 0, NULL);
+	clk_register_clkdev(clk, "CLK_POUT", NULL);
+	clkdev_pxa_register(CLK_OSTIMER, "OSTIMER0", NULL,
+			    clk_register_fixed_factor(NULL, "os-timer0",
+						      "osc_13mhz", 0, 1, 4));
+}
+
+static int pxa3xx_clocks_init(void __iomem *regs, void __iomem *oscc_reg)
+{
+	int ret;
+
+	clk_regs = regs;
+	pxa3xx_base_clocks_init(oscc_reg);
+
+	ret = clk_pxa_cken_init(pxa3xx_clocks, ARRAY_SIZE(pxa3xx_clocks), regs);
+	if (ret)
+		return ret;
+
+	if (cpu_is_pxa320())
+		return clk_pxa_cken_init(pxa320_clocks,
+					 ARRAY_SIZE(pxa320_clocks), regs);
+
+	return clk_pxa_cken_init(pxa300_310_clocks,
+				 ARRAY_SIZE(pxa300_310_clocks), regs);
+}
+
+static int pxa3xx_dt_clocks_init(struct device_node *np)
+{
+	int ret;
+
+	/*
+	 * The clock unit has no reg property of its own in the binding, the
+	 * addresses are implied by the compatible.
+	 */
+	ret = pxa3xx_clocks_init(IOMEM(0x41340000), IOMEM(0x41350000));
+	if (ret)
+		return ret;
+
+	return clk_pxa_dt_common_init(np);
+}
+CLK_OF_DECLARE(pxa_clks, "marvell,pxa300-clocks", pxa3xx_dt_clocks_init);
diff --git a/include/mach/pxa/clock.h b/include/mach/pxa/clock.h
deleted file mode 100644
index f86152f7af..0000000000
--- a/include/mach/pxa/clock.h
+++ /dev/null
@@ -1,19 +0,0 @@
-
-/*
- * clock.h - definitions of the PXA clock functions
- *
- * Copyright (C) 2010 by Marc Kleine-Budde <mkl@pengutronix.de>
- *
- * This file is released under the GPLv2
- *
- */
-
-#ifndef __MACH_CLOCK_H
-#define __MACH_CLOCK_H
-
-unsigned long pxa_get_uartclk(void);
-unsigned long pxa_get_mmcclk(void);
-unsigned long pxa_get_lcdclk(void);
-unsigned long pxa_get_pwmclk(void);
-
-#endif	/* !__MACH_CLOCK_H */

-- 
2.47.3



