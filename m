Delivery-date: Fri, 05 Jun 2026 15:08:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVUHV-002cpo-1s
	for lore@lore.pengutronix.de;
	Fri, 05 Jun 2026 15:08:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVUHT-0005Ov-Qr
	for lore@pengutronix.de; Fri, 05 Jun 2026 15:08:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DbMDTzemS5jiDHJZYEl5U8BD4hL2r2zgHDkxtodTOOo=; b=NCl1x6q5LY3e/sO3lFwCoxotrg
	eVBf9qDk8jzb8NzSKvR1bX0kj8pwXG6OHtRvBvkkARJaxY9FOD5cz1QrAidizyC2O/w3pYYugqzei
	gkfOroEsIZM5RP2VYnpHGQongZiMhbjXephdAk6QnlnoFTdWTwCZ2quHLvbd/Td3c05HcP2FMa7fe
	LKX7N/ViGzbESWWwWH0eBLK6AOcI8G4DJSpoVKneEYOeOCxNz9oKW8XTxRYrHTw3imQK91i0RRUP+
	9ekgmrrAyV+vTAdI3NkXSVN/cY3+oeB/EOG2zav/laO3MY6/R7FwCrLMGztX7lx+9WI2i0j+Wch52
	OQOF1vkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVUG9-00000000eol-0tek;
	Fri, 05 Jun 2026 13:06:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVUG5-00000000emg-1hcy
	for barebox@lists.infradead.org;
	Fri, 05 Jun 2026 13:06:48 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wVUG3-0004ul-Qq; Fri, 05 Jun 2026 15:06:43 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 05 Jun 2026 15:06:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260605-socfpga-agilex5-clk-v2-3-780562ec169f@pengutronix.de>
References: <20260605-socfpga-agilex5-clk-v2-0-780562ec169f@pengutronix.de>
In-Reply-To: <20260605-socfpga-agilex5-clk-v2-0-780562ec169f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_060645_764539_CCFDDE7C 
X-CRM114-Status: GOOD (  19.25  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] clk: socfpga: sync clock structs with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Sync struct socfpga_pll, struct socfpga_gate_clk, and struct
socfpga_periph_clk and change the base from clk_hw to clk_gate. This
allows easier syncing with the Linux driver.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/clk/socfpga/clk-gate-a10.c   | 26 +++++++++---------
 drivers/clk/socfpga/clk-gate-s10.c   | 25 ++++++++---------
 drivers/clk/socfpga/clk-periph-a10.c | 14 +++++-----
 drivers/clk/socfpga/clk-periph-s10.c | 28 ++++++++++---------
 drivers/clk/socfpga/clk-pll-a10.c    | 29 ++++++++++----------
 drivers/clk/socfpga/clk-pll-s10.c    | 52 ++++++++++++++++++++++--------------
 drivers/clk/socfpga/clk.h            | 15 +++--------
 7 files changed, 96 insertions(+), 93 deletions(-)

diff --git a/drivers/clk/socfpga/clk-gate-a10.c b/drivers/clk/socfpga/clk-gate-a10.c
index b43e19d2ca3f..dfa227b3f74e 100644
--- a/drivers/clk/socfpga/clk-gate-a10.c
+++ b/drivers/clk/socfpga/clk-gate-a10.c
@@ -14,7 +14,7 @@
 
 #include "clk.h"
 
-#define to_socfpga_gate_clk(p) container_of(p, struct socfpga_gate_clk, hw)
+#define to_socfpga_gate_clk(p) container_of(p, struct socfpga_gate_clk, hw.hw)
 
 /* SDMMC Group for System Manager defines */
 #define SYSMGR_SDMMCGRP_CTRL_OFFSET	0x28
@@ -41,9 +41,9 @@ static int clk_socfpga_enable(struct clk_hw *hw)
 	struct socfpga_gate_clk *socfpga_clk = to_socfpga_gate_clk(hw);
 	u32 val;
 
-	val = readl(socfpga_clk->reg);
-	val |= 1 << socfpga_clk->bit_idx;
-	writel(val, socfpga_clk->reg);
+	val = readl(socfpga_clk->hw.reg);
+	val |= 1 << socfpga_clk->hw.bit_idx;
+	writel(val, socfpga_clk->hw.reg);
 
 	return 0;
 }
@@ -53,9 +53,9 @@ static void clk_socfpga_disable(struct clk_hw *hw)
 	struct socfpga_gate_clk *socfpga_clk = to_socfpga_gate_clk(hw);
 	u32 val;
 
-	val = readl(socfpga_clk->reg);
-	val &= ~(1 << socfpga_clk->shift);
-	writel(val, socfpga_clk->reg);
+	val = readl(socfpga_clk->hw.reg);
+	val &= ~(1 << socfpga_clk->hw.shift);
+	writel(val, socfpga_clk->hw.reg);
 }
 
 static struct clk_ops gateclk_ops = {
@@ -63,7 +63,7 @@ static struct clk_ops gateclk_ops = {
 };
 
 static struct clk *__socfpga_gate_init(struct device_node *node,
-	const struct clk_ops *ops)
+				       const struct clk_ops *ops)
 {
 	u32 clk_gate[2];
 	u32 div_reg[3];
@@ -82,8 +82,8 @@ static struct clk *__socfpga_gate_init(struct device_node *node,
 		clk_gate[0] = 0;
 
 	if (clk_gate[0]) {
-		socfpga_clk->reg = clk_mgr_base_addr + clk_gate[0];
-		socfpga_clk->bit_idx = clk_gate[1];
+		socfpga_clk->hw.reg = clk_mgr_base_addr + clk_gate[0];
+		socfpga_clk->hw.bit_idx = clk_gate[1];
 
 		gateclk_ops.enable = clk_socfpga_enable;
 		gateclk_ops.disable = clk_socfpga_disable;
@@ -112,14 +112,14 @@ static struct clk *__socfpga_gate_init(struct device_node *node,
 
 	init.num_parents = of_clk_parent_fill(node, parent_name, SOCFPGA_MAX_PARENTS);
 	init.parent_names = parent_name;
-	socfpga_clk->hw.init = &init;
-	hw_clk = &socfpga_clk->hw;
+	socfpga_clk->hw.hw.init = &init;
+	hw_clk = &socfpga_clk->hw.hw;
 
 	rc = clk_hw_register(NULL, hw_clk);
 	if (rc)
 		return ERR_PTR(rc);
 
-	return &socfpga_clk->hw.clk;
+	return &hw_clk->clk;
 }
 
 struct clk *socfpga_a10_gate_init(struct device_node *node)
diff --git a/drivers/clk/socfpga/clk-gate-s10.c b/drivers/clk/socfpga/clk-gate-s10.c
index c4f51b86740a..8fc8a4ea7b8f 100644
--- a/drivers/clk/socfpga/clk-gate-s10.c
+++ b/drivers/clk/socfpga/clk-gate-s10.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/socfpga/clk-gate-s10.c?id=2050b57ecda040010ec797fb07713889372c5041
 /*
  * Copyright (C) 2017, Intel Corporation
  */
@@ -13,7 +14,7 @@
 #include "clk.h"
 
 #define SOCFPGA_CS_PDBG_CLK	"cs_pdbg_clk"
-#define to_socfpga_gate_clk(p) container_of(p, struct socfpga_gate_clk, hw)
+#define to_socfpga_gate_clk(p) container_of(p, struct socfpga_gate_clk, hw.hw)
 
 #define SOCFPGA_EMAC0_CLK		"emac0_clk"
 #define SOCFPGA_EMAC1_CLK		"emac1_clk"
@@ -113,7 +114,7 @@ static int socfpga_agilex_gate_get_parent(struct clk_hw *hwclk)
 	return parent;
 }
 
-static struct clk_ops agilex_gateclk_ops = {
+static const struct clk_ops agilex_gateclk_ops = {
 	.recalc_rate = socfpga_gate_clk_recalc_rate,
 	.get_parent = socfpga_agilex_gate_get_parent,
 };
@@ -132,11 +133,9 @@ struct clk_hw *agilex_register_gate(const struct stratix10_gate_clock *clks, voi
 	int ret;
 
 	socfpga_clk = xzalloc(sizeof(*socfpga_clk));
-	socfpga_clk->reg = regbase + clks->gate_reg;
-	socfpga_clk->bit_idx = clks->gate_idx;
 
-	agilex_gateclk_ops.enable = clk_gate_ops.enable;
-	agilex_gateclk_ops.disable = clk_gate_ops.disable;
+	socfpga_clk->hw.reg = regbase + clks->gate_reg;
+	socfpga_clk->hw.bit_idx = clks->gate_idx;
 
 	socfpga_clk->fixed_div = clks->fixed_div;
 
@@ -158,21 +157,19 @@ struct clk_hw *agilex_register_gate(const struct stratix10_gate_clock *clks, voi
 		init.ops = &dbgclk_ops;
 	else
 		init.ops = &agilex_gateclk_ops;
+
 	init.name = clks->name;
 	init.flags = clks->flags;
-
 	init.num_parents = clks->num_parents;
 	init.parent_names = parent_name ? &parent_name : NULL;
 	if (init.parent_names == NULL)
 		init.parent_data = clks->parent_data;
-	socfpga_clk->hw.init = &init;
+	socfpga_clk->hw.hw.init = &init;
+	hw_clk = &socfpga_clk->hw.hw;
 
-	hw_clk = &socfpga_clk->hw;
-
-	ret = clk_hw_register(NULL, &socfpga_clk->hw);
-	if (ret) {
-		kfree(socfpga_clk);
+	ret = clk_hw_register(NULL, &socfpga_clk->hw.hw);
+	if (ret)
 		return ERR_PTR(ret);
-	}
+
 	return hw_clk;
 }
diff --git a/drivers/clk/socfpga/clk-periph-a10.c b/drivers/clk/socfpga/clk-periph-a10.c
index 61b693d295f7..b120139bf32b 100644
--- a/drivers/clk/socfpga/clk-periph-a10.c
+++ b/drivers/clk/socfpga/clk-periph-a10.c
@@ -17,7 +17,7 @@
 #define SOCFPGA_MPU_FREE_CLK		"mpu_free_clk"
 #define SOCFPGA_NOC_FREE_CLK		"noc_free_clk"
 #define SOCFPGA_SDMMC_FREE_CLK		"sdmmc_free_clk"
-#define to_socfpga_periph_clk(p) container_of(p, struct socfpga_periph_clk, hw)
+#define to_socfpga_periph_clk(p) container_of(p, struct socfpga_periph_clk, hw.hw)
 
 static unsigned long clk_periclk_recalc_rate(struct clk_hw *hw,
 					     unsigned long parent_rate)
@@ -32,7 +32,7 @@ static unsigned long clk_periclk_recalc_rate(struct clk_hw *hw,
 		div &= GENMASK(socfpgaclk->width - 1, 0);
 		div += 1;
 	} else {
-		div = ((readl(socfpgaclk->reg) & 0x7ff) + 1);
+		div = ((readl(socfpgaclk->hw.reg) & 0x7ff) + 1);
 	}
 
 	return parent_rate / div;
@@ -43,7 +43,7 @@ static int clk_periclk_get_parent(struct clk_hw *hw)
 	struct socfpga_periph_clk *socfpgaclk = to_socfpga_periph_clk(hw);
 	u32 clk_src;
 
-	clk_src = readl(socfpgaclk->reg);
+	clk_src = readl(socfpgaclk->hw.reg);
 	if (streq(clk_hw_get_name(hw), SOCFPGA_MPU_FREE_CLK) ||
 	    streq(clk_hw_get_name(hw), SOCFPGA_NOC_FREE_CLK) ||
 	    streq(clk_hw_get_name(hw), SOCFPGA_SDMMC_FREE_CLK))
@@ -59,7 +59,7 @@ static const struct clk_ops periclk_ops = {
 };
 
 static struct clk *__socfpga_periph_init(struct device_node *node,
-	const struct clk_ops *ops)
+					 const struct clk_ops *ops)
 {
 	u32 reg;
 	struct clk_hw *hw_clk;
@@ -75,7 +75,7 @@ static struct clk *__socfpga_periph_init(struct device_node *node,
 
 	periph_clk = xzalloc(sizeof(*periph_clk));
 
-	periph_clk->reg = clk_mgr_base_addr + reg;
+	periph_clk->hw.reg = clk_mgr_base_addr + reg;
 
 	rc = of_property_read_u32_array(node, "div-reg", div_reg, 3);
 	if (!rc) {
@@ -101,9 +101,9 @@ static struct clk *__socfpga_periph_init(struct device_node *node,
 	init.num_parents = of_clk_parent_fill(node, parent_name, SOCFPGA_MAX_PARENTS);
 	init.parent_names = parent_name;
 
-	periph_clk->hw.init = &init;
+	periph_clk->hw.hw.init = &init;
 
-	hw_clk = &periph_clk->hw;
+	hw_clk = &periph_clk->hw.hw;
 
 	rc = clk_hw_register(NULL, hw_clk);
 	if (rc)
diff --git a/drivers/clk/socfpga/clk-periph-s10.c b/drivers/clk/socfpga/clk-periph-s10.c
index 3689b08f7d78..3f527e43f0b7 100644
--- a/drivers/clk/socfpga/clk-periph-s10.c
+++ b/drivers/clk/socfpga/clk-periph-s10.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/socfpga/clk-periph-s10.c?id=2050b57ecda040010ec797fb07713889372c5041
 /*
  * Copyright (C) 2017, Intel Corporation
  */
@@ -15,7 +16,7 @@
 #define CLK_MGR_FREE_MASK		0x7
 #define SWCTRLBTCLKSEN_SHIFT		8
 
-#define to_periph_clk(p) container_of(p, struct socfpga_periph_clk, hw)
+#define to_periph_clk(p) container_of(p, struct socfpga_periph_clk, hw.hw)
 
 static unsigned long clk_peri_c_clk_recalc_rate(struct clk_hw *hwclk,
 					     unsigned long parent_rate)
@@ -23,7 +24,7 @@ static unsigned long clk_peri_c_clk_recalc_rate(struct clk_hw *hwclk,
 	struct socfpga_periph_clk *socfpgaclk = to_periph_clk(hwclk);
 	u32 val;
 
-	val = readl(socfpgaclk->reg);
+	val = readl(socfpgaclk->hw.reg);
 	val &= GENMASK(SWCTRLBTCLKSEN_SHIFT - 1, 0);
 	parent_rate /= val;
 
@@ -39,8 +40,8 @@ static unsigned long clk_peri_cnt_clk_recalc_rate(struct clk_hw *hwclk,
 	if (socfpgaclk->fixed_div) {
 		div = socfpgaclk->fixed_div;
 	} else {
-		if (socfpgaclk->reg)
-			div = ((readl(socfpgaclk->reg) & 0x7ff) + 1);
+		if (socfpgaclk->hw.reg)
+			div = ((readl(socfpgaclk->hw.reg) & 0x7ff) + 1);
 	}
 
 	return parent_rate / div;
@@ -61,8 +62,8 @@ static int clk_periclk_get_parent(struct clk_hw *hwclk)
 			return parent;
 	}
 
-	if (socfpgaclk->reg) {
-		clk_src = readl(socfpgaclk->reg);
+	if (socfpgaclk->hw.reg) {
+		clk_src = readl(socfpgaclk->hw.reg);
 		parent = (clk_src >> CLK_MGR_FREE_SHIFT) &
 			  CLK_MGR_FREE_MASK;
 	}
@@ -90,7 +91,8 @@ struct clk_hw *s10_register_periph(const struct stratix10_perip_c_clock *clks,
 	int ret;
 
 	periph_clk = xzalloc(sizeof(*periph_clk));
-	periph_clk->reg = reg + clks->offset;
+
+	periph_clk->hw.reg = reg + clks->offset;
 
 	init.name = name;
 	init.ops = &peri_c_clk_ops;
@@ -101,8 +103,8 @@ struct clk_hw *s10_register_periph(const struct stratix10_perip_c_clock *clks,
 	if (init.parent_names == NULL)
 		init.parent_data = clks->parent_data;
 
-	periph_clk->hw.init = &init;
-	hw_clk = &periph_clk->hw;
+	periph_clk->hw.hw.init = &init;
+	hw_clk = &periph_clk->hw.hw;
 
 	ret = clk_hw_register(NULL, hw_clk);
 	if (ret) {
@@ -125,9 +127,9 @@ struct clk_hw *s10_register_cnt_periph(const struct stratix10_perip_cnt_clock *c
 	periph_clk = xzalloc(sizeof(*periph_clk));
 
 	if (clks->offset)
-		periph_clk->reg = regbase + clks->offset;
+		periph_clk->hw.reg = regbase + clks->offset;
 	else
-		periph_clk->reg = NULL;
+		periph_clk->hw.reg = NULL;
 
 	if (clks->bypass_reg)
 		periph_clk->bypass_reg = regbase + clks->bypass_reg;
@@ -145,8 +147,8 @@ struct clk_hw *s10_register_cnt_periph(const struct stratix10_perip_cnt_clock *c
 	if (init.parent_names == NULL)
 		init.parent_data = clks->parent_data;
 
-	periph_clk->hw.init = &init;
-	hw_clk = &periph_clk->hw;
+	periph_clk->hw.hw.init = &init;
+	hw_clk = &periph_clk->hw.hw;
 
 	ret = clk_hw_register(NULL, hw_clk);
 	if (ret) {
diff --git a/drivers/clk/socfpga/clk-pll-a10.c b/drivers/clk/socfpga/clk-pll-a10.c
index 566d99563ff6..414a5e70a5ac 100644
--- a/drivers/clk/socfpga/clk-pll-a10.c
+++ b/drivers/clk/socfpga/clk-pll-a10.c
@@ -28,7 +28,7 @@
 #define SOCFPGA_MAIN_PLL_CLK		"main_pll"
 #define SOCFPGA_PERIP_PLL_CLK		"periph_pll"
 
-#define to_socfpga_clk(p) container_of(p, struct socfpga_pll, hw)
+#define to_socfpga_clk(p) container_of(p, struct socfpga_pll, hw.hw)
 
 static unsigned long clk_pll_recalc_rate(struct clk_hw *hw,
 					 unsigned long parent_rate)
@@ -38,7 +38,7 @@ static unsigned long clk_pll_recalc_rate(struct clk_hw *hw,
 	unsigned long long vco_freq;
 
 	/* read VCO1 reg for numerator and denominator */
-	reg = readl(socfpgaclk->reg + 0x4);
+	reg = readl(socfpgaclk->hw.reg + 0x4);
 	divf = (reg & SOCFPGA_PLL_DIVF_MASK) >> SOCFPGA_PLL_DIVF_SHIFT;
 	divq = (reg & SOCFPGA_PLL_DIVQ_MASK) >> SOCFPGA_PLL_DIVQ_SHIFT;
 	vco_freq = (unsigned long long)parent_rate * (divf + 1);
@@ -51,7 +51,7 @@ static int clk_pll_get_parent(struct clk_hw *hw)
 	struct socfpga_pll *socfpgaclk = to_socfpga_clk(hw);
 	u32 pll_src;
 
-	pll_src = readl(socfpgaclk->reg);
+	pll_src = readl(socfpgaclk->hw.reg);
 
 	return (pll_src >> CLK_MGR_PLL_CLK_SRC_SHIFT) &
 		CLK_MGR_PLL_CLK_SRC_MASK;
@@ -62,9 +62,9 @@ static int clk_socfpga_enable(struct clk_hw *hw)
 	struct socfpga_pll *socfpga_clk = to_socfpga_clk(hw);
 	u32 val;
 
-	val = readl(socfpga_clk->reg);
-	val |= 1 << socfpga_clk->bit_idx;
-	writel(val, socfpga_clk->reg);
+	val = readl(socfpga_clk->hw.reg);
+	val |= 1 << socfpga_clk->hw.bit_idx;
+	writel(val, socfpga_clk->hw.reg);
 
 	return 0;
 }
@@ -74,9 +74,9 @@ static void clk_socfpga_disable(struct clk_hw *hw)
 	struct socfpga_pll *socfpga_clk = to_socfpga_clk(hw);
 	u32 val;
 
-	val = readl(socfpga_clk->reg);
-	val &= ~(1 << socfpga_clk->bit_idx);
-	writel(val, socfpga_clk->reg);
+	val = readl(socfpga_clk->hw.reg);
+	val &= ~(1 << socfpga_clk->hw.bit_idx);
+	writel(val, socfpga_clk->hw.reg);
 }
 
 static struct clk_ops clk_pll_ops = {
@@ -100,7 +100,7 @@ static struct clk *__socfpga_pll_init(struct device_node *node,
 
 	pll_clk = xzalloc(sizeof(*pll_clk));
 
-	pll_clk->reg = clk_mgr_base_addr + reg;
+	pll_clk->hw.reg = clk_mgr_base_addr + reg;
 
 	of_property_read_string(node, "clock-output-names", &clk_name);
 
@@ -113,18 +113,19 @@ static struct clk *__socfpga_pll_init(struct device_node *node,
 		i++;
 	init.num_parents = i;
 	init.parent_names = parent_name;
+	pll_clk->hw.hw.init = &init;
 
-	pll_clk->bit_idx = SOCFPGA_PLL_EXT_ENA;
-	hw_clk = &pll_clk->hw;
+	pll_clk->hw.bit_idx = SOCFPGA_PLL_EXT_ENA;
+	hw_clk = &pll_clk->hw.hw;
 
 	clk_pll_ops.enable = clk_socfpga_enable;
 	clk_pll_ops.disable = clk_socfpga_disable;
 
-	rc = clk_hw_register(NULL, &pll_clk->hw);
+	rc = clk_hw_register(NULL, &pll_clk->hw.hw);
 	if (rc)
 		ERR_PTR(rc);
 
-	return &pll_clk->hw.clk;
+	return &pll_clk->hw.hw.clk;
 }
 
 struct clk *socfpga_a10_pll_init(struct device_node *node)
diff --git a/drivers/clk/socfpga/clk-pll-s10.c b/drivers/clk/socfpga/clk-pll-s10.c
index 2b1e8f60c378..4c00c0e7481a 100644
--- a/drivers/clk/socfpga/clk-pll-s10.c
+++ b/drivers/clk/socfpga/clk-pll-s10.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/socfpga/clk-pll-s10.c?id=2050b57ecda040010ec797fb07713889372c5041
 /*
  * Copyright (C) 2017, Intel Corporation
  */
@@ -31,7 +32,7 @@
 
 #define SOCFPGA_BOOT_CLK		"boot_clk"
 
-#define to_socfpga_clk(p) container_of(p, struct socfpga_pll, hw)
+#define to_socfpga_clk(p) container_of(p, struct socfpga_pll, hw.hw)
 
 static unsigned long agilex_clk_pll_recalc_rate(struct clk_hw *hwclk,
 						unsigned long parent_rate)
@@ -41,13 +42,13 @@ static unsigned long agilex_clk_pll_recalc_rate(struct clk_hw *hwclk,
 	unsigned long long vco_freq;
 
 	/* read VCO1 reg for numerator and denominator */
-	reg = readl(socfpgaclk->reg);
+	reg = readl(socfpgaclk->hw.reg);
 	arefdiv = (reg & SOCFPGA_PLL_AREFDIV_MASK) >> SOCFPGA_PLL_REFDIV_SHIFT;
 
 	vco_freq = (unsigned long long)parent_rate / arefdiv;
 
 	/* Read mdiv and fdiv from the fdbck register */
-	reg = readl(socfpgaclk->reg + 0x24);
+	reg = readl(socfpgaclk->hw.reg + 0x24);
 	mdiv = reg & SOCFPGA_AGILEX_PLL_MDIV_MASK;
 
 	vco_freq = (unsigned long long)vco_freq * mdiv;
@@ -60,7 +61,7 @@ static unsigned long clk_boot_clk_recalc_rate(struct clk_hw *hwclk,
 	struct socfpga_pll *socfpgaclk = to_socfpga_clk(hwclk);
 	u32 div;
 
-	div = ((readl(socfpgaclk->reg) &
+	div = ((readl(socfpgaclk->hw.reg) &
 		SWCTRLBTCLKSEL_MASK) >>
 		SWCTRLBTCLKSEL_SHIFT);
 	div += 1;
@@ -72,7 +73,7 @@ static int clk_pll_get_parent(struct clk_hw *hwclk)
 	struct socfpga_pll *socfpgaclk = to_socfpga_clk(hwclk);
 	u32 pll_src;
 
-	pll_src = readl(socfpgaclk->reg);
+	pll_src = readl(socfpgaclk->hw.reg);
 	return (pll_src >> CLK_MGR_PLL_CLK_SRC_SHIFT) &
 		CLK_MGR_PLL_CLK_SRC_MASK;
 }
@@ -82,25 +83,38 @@ static int clk_boot_get_parent(struct clk_hw *hwclk)
 	struct socfpga_pll *socfpgaclk = to_socfpga_clk(hwclk);
 	u32 pll_src;
 
-	pll_src = readl(socfpgaclk->reg);
+	pll_src = readl(socfpgaclk->hw.reg);
 	return (pll_src >> SWCTRLBTCLKSEL_SHIFT) &
 		SWCTRLBTCLKSEL_MASK;
 }
 
-/* TODO need to fix, Agilex5 SM requires change */
-static const struct clk_ops agilex5_clk_pll_ops = {
-	/* TODO This may require a custom Agilex5 implementation */
+static int clk_pll_enable(struct clk_hw *hwclk)
+{
+	struct socfpga_pll *socfpgaclk = to_socfpga_clk(hwclk);
+	u32 reg;
+
+	/* Bring PLL out of reset */
+	reg = readl(socfpgaclk->hw.reg);
+	reg |= SOCFPGA_PLL_RESET_MASK;
+	writel(reg, socfpgaclk->hw.reg);
+
+	return 0;
+}
+
+static const struct clk_ops agilex_clk_pll_ops = {
 	.recalc_rate = agilex_clk_pll_recalc_rate,
 	.get_parent = clk_pll_get_parent,
+	.enable = clk_pll_enable,
 };
 
 static const struct clk_ops clk_boot_ops = {
 	.recalc_rate = clk_boot_clk_recalc_rate,
 	.get_parent = clk_boot_get_parent,
+	.enable = clk_pll_enable,
 };
 
 struct clk_hw *agilex5_register_pll(const struct stratix10_pll_clock *clks,
-				void __iomem *reg)
+				    void __iomem *reg)
 {
 	struct clk_hw *hw_clk;
 	struct socfpga_pll *pll_clk;
@@ -109,29 +123,27 @@ struct clk_hw *agilex5_register_pll(const struct stratix10_pll_clock *clks,
 	int ret;
 
 	pll_clk = xzalloc(sizeof(*pll_clk));
-	pll_clk->reg = reg + clks->offset;
+
+	pll_clk->hw.reg = reg + clks->offset;
 
 	if (streq(name, SOCFPGA_BOOT_CLK))
 		init.ops = &clk_boot_ops;
 	else
-		init.ops = &agilex5_clk_pll_ops;
+		init.ops = &agilex_clk_pll_ops;
 
 	init.name = name;
 	init.flags = clks->flags;
-
 	init.num_parents = clks->num_parents;
 	init.parent_names = NULL;
 	init.parent_data = clks->parent_data;
-	pll_clk->hw.init = &init;
-
-	pll_clk->bit_idx = SOCFPGA_PLL_POWER;
-	hw_clk = &pll_clk->hw;
+	pll_clk->hw.hw.init = &init;
+	pll_clk->hw.bit_idx = SOCFPGA_PLL_POWER;
+	hw_clk = &pll_clk->hw.hw;
 
 	ret = clk_hw_register(NULL, hw_clk);
-	if (ret) {
-		kfree(pll_clk);
+	if (ret)
 		return ERR_PTR(ret);
-	}
+
 	return hw_clk;
 }
 
diff --git a/drivers/clk/socfpga/clk.h b/drivers/clk/socfpga/clk.h
index cc682ee4e00f..e50bdc3e20f1 100644
--- a/drivers/clk/socfpga/clk.h
+++ b/drivers/clk/socfpga/clk.h
@@ -49,14 +49,11 @@ static inline struct clk *socfpga_a10_gate_init(struct device_node *node)
 #endif
 
 struct socfpga_pll {
-	struct clk_hw hw;
-	void __iomem *reg;
-	u32 bit_idx;
-	const char *parent_names[SOCFPGA_MAX_PARENTS];
+	struct clk_gate	hw;
 };
 
 struct socfpga_gate_clk {
-	struct clk_hw hw;
+	struct clk_gate hw;
 	char *parent_name;
 	u32 fixed_div;
 	void __iomem *div_reg;
@@ -64,16 +61,11 @@ struct socfpga_gate_clk {
 	struct regmap *sys_mgr_base_addr;
 	u32 width;	/* only valid if div_reg != 0 */
 	u32 shift;	/* only valid if div_reg != 0 */
-	u32 bit_idx;
-	void __iomem *reg;
 	u32 bypass_shift;      /* only valid if bypass_reg != 0 */
-	u32 clk_phase[2];
-	const char *parent_names[SOCFPGA_MAX_PARENTS];
 };
 
 struct socfpga_periph_clk {
-	struct clk_hw hw;
-	void __iomem *reg;
+	struct clk_gate hw;
 	char *parent_name;
 	u32 fixed_div;
 	void __iomem *div_reg;
@@ -81,7 +73,6 @@ struct socfpga_periph_clk {
 	u32 width;      /* only valid if div_reg != 0 */
 	u32 shift;      /* only valid if div_reg != 0 */
 	u32 bypass_shift;      /* only valid if bypass_reg != 0 */
-	const char *parent_names[SOCFPGA_MAX_PARENTS];
 };
 
 #endif /* SOCFPGA_CLK_H */

-- 
2.47.3



