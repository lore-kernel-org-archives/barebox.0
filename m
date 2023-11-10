Delivery-date: Fri, 10 Nov 2023 13:59:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R73-005rXI-1d
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6w-0003P5-Ns
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xB/lAl/TGweiaFCGwGhJq8GHeM1tXhxmqyzaaxo+h3Q=; b=MajOtiF2MANlo28VM7Z7Wmzc7F
	QyuYab7V2t9sS3oNwOvi3tVPww0O1EIL1Bo7oIYDB6eFF5Dm4R3AuY2d91OLTlsjhTjRWczbB8Cur
	+hsJI+9zHwy7XJbsypHMsHlQdIPsJM1VSSAXZRzT3I4iZSqVNzZK6PM5ZDgoATxeTohPhvU/+yk4w
	oDFhuGfe2bJ0yv3ITOm9fbPbaSvMPqtOWxKUZFGqIpGCW6YsA6pzQw7bATKK9Abo+Fsgfpl8w6gl5
	0TXUgIKtONeysm4TMQLYxhxHiveCHpIQJSeZmmUCzyQhDe0bUlL8elbggYyOMGFtmlM2pcQjWmvdr
	SRc5rARg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5a-008k00-0K;
	Fri, 10 Nov 2023 12:58:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5J-008joN-32
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-00026W-MI; Fri, 10 Nov 2023 13:58:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-0081XC-Pp; Fri, 10 Nov 2023 13:58:02 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-008rzT-2O;
	Fri, 10 Nov 2023 13:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:41 +0100
Message-Id: <20231110125800.1901232-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_045806_463760_18FA9845 
X-CRM114-Status: GOOD (  26.24  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 06/25] clk: Add i.MX93 clock support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Based on Linux i.MX93 clock support as of Linux-6.6

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/Makefile           |   1 +
 drivers/clk/imx/clk-composite-93.c | 216 ++++++++++++++++
 drivers/clk/imx/clk-fracn-gppll.c  | 392 +++++++++++++++++++++++++++++
 drivers/clk/imx/clk-gate-93.c      | 186 ++++++++++++++
 drivers/clk/imx/clk-imx93.c        | 331 ++++++++++++++++++++++++
 drivers/clk/imx/clk.h              |  42 ++++
 6 files changed, 1168 insertions(+)
 create mode 100644 drivers/clk/imx/clk-composite-93.c
 create mode 100644 drivers/clk/imx/clk-fracn-gppll.c
 create mode 100644 drivers/clk/imx/clk-gate-93.c
 create mode 100644 drivers/clk/imx/clk-imx93.c

diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index 4a792422d5..eb9f8334c3 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -34,4 +34,5 @@ obj-$(CONFIG_ARCH_IMX8MM) += clk-imx8mm.o
 obj-$(CONFIG_ARCH_IMX8MN) += clk-imx8mn.o
 obj-$(CONFIG_ARCH_IMX8MP) += clk-imx8mp.o
 obj-$(CONFIG_ARCH_IMX8MQ) += clk-imx8mq.o
+obj-$(CONFIG_ARCH_IMX93) += clk-imx93.o clk-composite-93.o clk-gate-93.o clk-fracn-gppll.o
 obj-$(CONFIG_ARCH_VF610)  += clk-vf610.o
diff --git a/drivers/clk/imx/clk-composite-93.c b/drivers/clk/imx/clk-composite-93.c
new file mode 100644
index 0000000000..2b3753d569
--- /dev/null
+++ b/drivers/clk/imx/clk-composite-93.c
@@ -0,0 +1,216 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2021 NXP
+ *
+ * Peng Fan <peng.fan@nxp.com>
+ */
+
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/types.h>
+#include <of_address.h>
+#include <linux/iopoll.h>
+
+#include "clk.h"
+
+#define TIMEOUT_US	500U
+
+#define CCM_DIV_SHIFT	0
+#define CCM_DIV_WIDTH	8
+#define CCM_MUX_SHIFT	8
+#define CCM_MUX_MASK	3
+#define CCM_OFF_SHIFT	24
+#define CCM_BUSY_SHIFT	28
+
+#define STAT_OFFSET	0x4
+#define AUTHEN_OFFSET	0x30
+#define TZ_NS_SHIFT	9
+#define TZ_NS_MASK	BIT(9)
+
+#define WHITE_LIST_SHIFT	16
+
+static int imx93_clk_composite_wait_ready(struct clk_hw *hw, void __iomem *reg)
+{
+	int ret;
+	u32 val;
+
+	ret = readl_poll_timeout(reg + STAT_OFFSET, val, !(val & BIT(CCM_BUSY_SHIFT)),
+				 TIMEOUT_US);
+	if (ret)
+		pr_err("Slice[%s] busy timeout\n", clk_hw_get_name(hw));
+
+	return ret;
+}
+
+static void imx93_clk_composite_gate_endisable(struct clk_hw *hw, int enable)
+{
+	struct clk_gate *gate = to_clk_gate(hw);
+	u32 reg;
+
+	reg = readl(gate->reg);
+
+	if (enable)
+		reg &= ~BIT(gate->shift);
+	else
+		reg |= BIT(gate->shift);
+
+	writel(reg, gate->reg);
+
+	imx93_clk_composite_wait_ready(hw, gate->reg);
+}
+
+static int imx93_clk_composite_gate_enable(struct clk_hw *hw)
+{
+	imx93_clk_composite_gate_endisable(hw, 1);
+
+	return 0;
+}
+
+static void imx93_clk_composite_gate_disable(struct clk_hw *hw)
+{
+	imx93_clk_composite_gate_endisable(hw, 0);
+}
+
+static const struct clk_ops imx93_clk_composite_gate_ops = {
+	.enable = imx93_clk_composite_gate_enable,
+	.disable = imx93_clk_composite_gate_disable,
+	.is_enabled = clk_gate_is_enabled,
+};
+
+static unsigned long
+imx93_clk_composite_divider_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
+{
+	return clk_divider_ops.recalc_rate(hw, parent_rate);
+}
+
+static long
+imx93_clk_composite_divider_round_rate(struct clk_hw *hw, unsigned long rate, unsigned long *prate)
+{
+	return clk_divider_ops.round_rate(hw, rate, prate);
+}
+
+static int imx93_clk_composite_divider_set_rate(struct clk_hw *hw, unsigned long rate,
+						unsigned long parent_rate)
+{
+	struct clk_divider *divider = to_clk_divider(hw);
+	int value;
+	u32 val;
+	int ret;
+
+	value = divider_get_val(rate, parent_rate, divider->table, divider->width, divider->flags);
+	if (value < 0)
+		return value;
+
+	val = readl(divider->reg);
+	val &= ~(clk_div_mask(divider->width) << divider->shift);
+	val |= (u32)value << divider->shift;
+	writel(val, divider->reg);
+
+	ret = imx93_clk_composite_wait_ready(hw, divider->reg);
+
+	return ret;
+}
+
+static const struct clk_ops imx93_clk_composite_divider_ops = {
+	.recalc_rate = imx93_clk_composite_divider_recalc_rate,
+	.round_rate = imx93_clk_composite_divider_round_rate,
+	.set_rate = imx93_clk_composite_divider_set_rate,
+};
+
+static int imx93_clk_composite_mux_get_parent(struct clk_hw *hw)
+{
+	return clk_mux_ops.get_parent(hw);
+}
+
+static int imx93_clk_composite_mux_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct clk_mux *mux = to_clk_mux(hw);
+	u32 val = clk_mux_index_to_val(mux->table, mux->flags, index);
+	u32 reg;
+	int ret;
+
+	reg = readl(mux->reg);
+	reg &= ~(((1 << mux->width) - 1) << mux->shift);
+	val = val << mux->shift;
+	reg |= val;
+	writel(reg, mux->reg);
+
+	ret = imx93_clk_composite_wait_ready(hw, mux->reg);
+
+	return ret;
+}
+
+static const struct clk_ops imx93_clk_composite_mux_ops = {
+	.get_parent = imx93_clk_composite_mux_get_parent,
+	.set_parent = imx93_clk_composite_mux_set_parent,
+};
+
+struct clk *imx93_clk_composite_flags(const char *name, const char * const *parent_names,
+				      int num_parents, void __iomem *reg, u32 domain_id,
+				      unsigned long flags)
+{
+	struct clk_hw *hw = ERR_PTR(-ENOMEM), *mux_hw;
+	struct clk_hw *div_hw, *gate_hw;
+	struct clk_divider *div = NULL;
+	struct clk_gate *gate = NULL;
+	struct clk_mux *mux = NULL;
+	bool clk_ro = false;
+	u32 authen;
+
+	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
+	if (!mux)
+		goto fail;
+
+	mux_hw = &mux->hw;
+	mux->reg = reg;
+	mux->shift = CCM_MUX_SHIFT;
+	mux->width = 2;
+
+	div = kzalloc(sizeof(*div), GFP_KERNEL);
+	if (!div)
+		goto fail;
+
+	div_hw = &div->hw;
+	div->reg = reg;
+	div->shift = CCM_DIV_SHIFT;
+	div->width = CCM_DIV_WIDTH;
+//	div->flags = CLK_DIVIDER_ROUND_CLOSEST;
+
+	authen = readl(reg + AUTHEN_OFFSET);
+	if (!(authen & TZ_NS_MASK) || !(authen & BIT(WHITE_LIST_SHIFT + domain_id)))
+		clk_ro = true;
+
+	if (clk_ro) {
+		hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
+					       mux_hw, &clk_mux_ro_ops, div_hw,
+					       &clk_divider_ro_ops, NULL, NULL, flags);
+	} else {
+		gate = kzalloc(sizeof(*gate), GFP_KERNEL);
+		if (!gate)
+			goto fail;
+
+		gate_hw = &gate->hw;
+		gate->reg = reg;
+		gate->shift = CCM_OFF_SHIFT;
+		gate->flags = CLK_GATE_SET_TO_DISABLE;
+
+		hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
+					       mux_hw, &imx93_clk_composite_mux_ops, div_hw,
+					       &imx93_clk_composite_divider_ops, gate_hw,
+					       &imx93_clk_composite_gate_ops,
+					       flags | CLK_SET_RATE_NO_REPARENT);
+	}
+
+	if (IS_ERR(hw))
+		goto fail;
+
+	return &hw->clk;
+
+fail:
+	kfree(gate);
+	kfree(div);
+	kfree(mux);
+	return ERR_CAST(hw);
+}
+EXPORT_SYMBOL_GPL(imx93_clk_composite_flags);
diff --git a/drivers/clk/imx/clk-fracn-gppll.c b/drivers/clk/imx/clk-fracn-gppll.c
new file mode 100644
index 0000000000..5fbc79f948
--- /dev/null
+++ b/drivers/clk/imx/clk-fracn-gppll.c
@@ -0,0 +1,392 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2021 NXP
+ */
+
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/types.h>
+#include <of_address.h>
+#include <linux/iopoll.h>
+#include <linux/bitfield.h>
+
+#include "clk.h"
+
+#define PLL_CTRL		0x0
+#define HW_CTRL_SEL		BIT(16)
+#define CLKMUX_BYPASS		BIT(2)
+#define CLKMUX_EN		BIT(1)
+#define POWERUP_MASK		BIT(0)
+
+#define PLL_ANA_PRG		0x10
+#define PLL_SPREAD_SPECTRUM	0x30
+
+#define PLL_NUMERATOR		0x40
+#define PLL_MFN_MASK		GENMASK(31, 2)
+
+#define PLL_DENOMINATOR		0x50
+#define PLL_MFD_MASK		GENMASK(29, 0)
+
+#define PLL_DIV			0x60
+#define PLL_MFI_MASK		GENMASK(24, 16)
+#define PLL_RDIV_MASK		GENMASK(15, 13)
+#define PLL_ODIV_MASK		GENMASK(7, 0)
+
+#define PLL_DFS_CTRL(x)		(0x70 + (x) * 0x10)
+
+#define PLL_STATUS		0xF0
+#define LOCK_STATUS		BIT(0)
+
+#define DFS_STATUS		0xF4
+
+#define LOCK_TIMEOUT_US		200
+
+#define PLL_FRACN_GP(_rate, _mfi, _mfn, _mfd, _rdiv, _odiv)	\
+	{							\
+		.rate	=	(_rate),			\
+		.mfi	=	(_mfi),				\
+		.mfn	=	(_mfn),				\
+		.mfd	=	(_mfd),				\
+		.rdiv	=	(_rdiv),			\
+		.odiv	=	(_odiv),			\
+	}
+
+#define PLL_FRACN_GP_INTEGER(_rate, _mfi, _rdiv, _odiv)		\
+	{							\
+		.rate	=	(_rate),			\
+		.mfi	=	(_mfi),				\
+		.mfn	=	0,				\
+		.mfd	=	0,				\
+		.rdiv	=	(_rdiv),			\
+		.odiv	=	(_odiv),			\
+	}
+
+struct clk_fracn_gppll {
+	struct clk_hw			hw;
+	void __iomem			*base;
+	const struct imx_fracn_gppll_rate_table *rate_table;
+	int rate_count;
+	u32 flags;
+};
+
+/*
+ * Fvco = (Fref / rdiv) * (MFI + MFN / MFD)
+ * Fout = Fvco / odiv
+ * The (Fref / rdiv) should be in range 20MHz to 40MHz
+ * The Fvco should be in range 2.5Ghz to 5Ghz
+ */
+static const struct imx_fracn_gppll_rate_table fracn_tbl[] = {
+	PLL_FRACN_GP(650000000U, 162, 50, 100, 0, 6),
+	PLL_FRACN_GP(594000000U, 198, 0, 1, 0, 8),
+	PLL_FRACN_GP(560000000U, 140, 0, 1, 0, 6),
+	PLL_FRACN_GP(519750000U, 173, 25, 100, 1, 8),
+	PLL_FRACN_GP(498000000U, 166, 0, 1, 0, 8),
+	PLL_FRACN_GP(484000000U, 121, 0, 1, 0, 6),
+	PLL_FRACN_GP(445333333U, 167, 0, 1, 0, 9),
+	PLL_FRACN_GP(400000000U, 200, 0, 1, 0, 12),
+	PLL_FRACN_GP(393216000U, 163, 84, 100, 0, 10),
+	PLL_FRACN_GP(300000000U, 150, 0, 1, 0, 12)
+};
+
+struct imx_fracn_gppll_clk imx_fracn_gppll = {
+	.rate_table = fracn_tbl,
+	.rate_count = ARRAY_SIZE(fracn_tbl),
+};
+EXPORT_SYMBOL_GPL(imx_fracn_gppll);
+
+/*
+ * Fvco = (Fref / rdiv) * MFI
+ * Fout = Fvco / odiv
+ * The (Fref / rdiv) should be in range 20MHz to 40MHz
+ * The Fvco should be in range 2.5Ghz to 5Ghz
+ */
+static const struct imx_fracn_gppll_rate_table int_tbl[] = {
+	PLL_FRACN_GP_INTEGER(1700000000U, 141, 1, 2),
+	PLL_FRACN_GP_INTEGER(1400000000U, 175, 1, 3),
+	PLL_FRACN_GP_INTEGER(900000000U, 150, 1, 4),
+};
+
+struct imx_fracn_gppll_clk imx_fracn_gppll_integer = {
+	.rate_table = int_tbl,
+	.rate_count = ARRAY_SIZE(int_tbl),
+};
+EXPORT_SYMBOL_GPL(imx_fracn_gppll_integer);
+
+static inline struct clk_fracn_gppll *to_clk_fracn_gppll(struct clk_hw *hw)
+{
+	return container_of(hw, struct clk_fracn_gppll, hw);
+}
+
+static const struct imx_fracn_gppll_rate_table *
+imx_get_pll_settings(struct clk_fracn_gppll *pll, unsigned long rate)
+{
+	const struct imx_fracn_gppll_rate_table *rate_table = pll->rate_table;
+	int i;
+
+	for (i = 0; i < pll->rate_count; i++)
+		if (rate == rate_table[i].rate)
+			return &rate_table[i];
+
+	return NULL;
+}
+
+static long clk_fracn_gppll_round_rate(struct clk_hw *hw, unsigned long rate,
+				       unsigned long *prate)
+{
+	struct clk_fracn_gppll *pll = to_clk_fracn_gppll(hw);
+	const struct imx_fracn_gppll_rate_table *rate_table = pll->rate_table;
+	int i;
+
+	/* Assuming rate_table is in descending order */
+	for (i = 0; i < pll->rate_count; i++)
+		if (rate >= rate_table[i].rate)
+			return rate_table[i].rate;
+
+	/* return minimum supported value */
+	return rate_table[pll->rate_count - 1].rate;
+}
+
+static unsigned long clk_fracn_gppll_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
+{
+	struct clk_fracn_gppll *pll = to_clk_fracn_gppll(hw);
+	const struct imx_fracn_gppll_rate_table *rate_table = pll->rate_table;
+	u32 pll_numerator, pll_denominator, pll_div;
+	u32 mfi, mfn, mfd, rdiv, odiv;
+	u64 fvco = parent_rate;
+	long rate = 0;
+	int i;
+
+	pll_numerator = readl_relaxed(pll->base + PLL_NUMERATOR);
+	mfn = FIELD_GET(PLL_MFN_MASK, pll_numerator);
+
+	pll_denominator = readl_relaxed(pll->base + PLL_DENOMINATOR);
+	mfd = FIELD_GET(PLL_MFD_MASK, pll_denominator);
+
+	pll_div = readl_relaxed(pll->base + PLL_DIV);
+	mfi = FIELD_GET(PLL_MFI_MASK, pll_div);
+
+	rdiv = FIELD_GET(PLL_RDIV_MASK, pll_div);
+	odiv = FIELD_GET(PLL_ODIV_MASK, pll_div);
+
+	/*
+	 * Sometimes, the recalculated rate has deviation due to
+	 * the frac part. So find the accurate pll rate from the table
+	 * first, if no match rate in the table, use the rate calculated
+	 * from the equation below.
+	 */
+	for (i = 0; i < pll->rate_count; i++) {
+		if (rate_table[i].mfn == mfn && rate_table[i].mfi == mfi &&
+		    rate_table[i].mfd == mfd && rate_table[i].rdiv == rdiv &&
+		    rate_table[i].odiv == odiv)
+			rate = rate_table[i].rate;
+	}
+
+	if (rate)
+		return (unsigned long)rate;
+
+	if (!rdiv)
+		rdiv = rdiv + 1;
+
+	switch (odiv) {
+	case 0:
+		odiv = 2;
+		break;
+	case 1:
+		odiv = 3;
+		break;
+	default:
+		break;
+	}
+
+	if (pll->flags & CLK_FRACN_GPPLL_INTEGER) {
+		/* Fvco = (Fref / rdiv) * MFI */
+		fvco = fvco * mfi;
+		do_div(fvco, rdiv * odiv);
+	} else {
+		/* Fvco = (Fref / rdiv) * (MFI + MFN / MFD) */
+		fvco = fvco * mfi * mfd + fvco * mfn;
+		do_div(fvco, mfd * rdiv * odiv);
+	}
+
+	return (unsigned long)fvco;
+}
+
+static int clk_fracn_gppll_wait_lock(struct clk_fracn_gppll *pll)
+{
+	u32 val;
+
+	return readl_poll_timeout(pll->base + PLL_STATUS, val,
+				  val & LOCK_STATUS, LOCK_TIMEOUT_US);
+}
+
+static int clk_fracn_gppll_set_rate(struct clk_hw *hw, unsigned long drate,
+				    unsigned long prate)
+{
+	struct clk_fracn_gppll *pll = to_clk_fracn_gppll(hw);
+	const struct imx_fracn_gppll_rate_table *rate;
+	u32 tmp, pll_div, ana_mfn;
+	int ret;
+
+	rate = imx_get_pll_settings(pll, drate);
+
+	/* Hardware control select disable. PLL is control by register */
+	tmp = readl_relaxed(pll->base + PLL_CTRL);
+	tmp &= ~HW_CTRL_SEL;
+	writel_relaxed(tmp, pll->base + PLL_CTRL);
+
+	/* Disable output */
+	tmp = readl_relaxed(pll->base + PLL_CTRL);
+	tmp &= ~CLKMUX_EN;
+	writel_relaxed(tmp, pll->base + PLL_CTRL);
+
+	/* Power Down */
+	tmp &= ~POWERUP_MASK;
+	writel_relaxed(tmp, pll->base + PLL_CTRL);
+
+	/* Disable BYPASS */
+	tmp &= ~CLKMUX_BYPASS;
+	writel_relaxed(tmp, pll->base + PLL_CTRL);
+
+	pll_div = FIELD_PREP(PLL_RDIV_MASK, rate->rdiv) | rate->odiv |
+		FIELD_PREP(PLL_MFI_MASK, rate->mfi);
+	writel_relaxed(pll_div, pll->base + PLL_DIV);
+	if (pll->flags & CLK_FRACN_GPPLL_FRACN) {
+		writel_relaxed(rate->mfd, pll->base + PLL_DENOMINATOR);
+		writel_relaxed(FIELD_PREP(PLL_MFN_MASK, rate->mfn), pll->base + PLL_NUMERATOR);
+	}
+
+	/* Wait for 5us according to fracn mode pll doc */
+	udelay(5);
+
+	/* Enable Powerup */
+	tmp |= POWERUP_MASK;
+	writel_relaxed(tmp, pll->base + PLL_CTRL);
+
+	/* Wait Lock */
+	ret = clk_fracn_gppll_wait_lock(pll);
+	if (ret)
+		return ret;
+
+	/* Enable output */
+	tmp |= CLKMUX_EN;
+	writel_relaxed(tmp, pll->base + PLL_CTRL);
+
+	ana_mfn = readl_relaxed(pll->base + PLL_STATUS);
+	ana_mfn = FIELD_GET(PLL_MFN_MASK, ana_mfn);
+
+	WARN(ana_mfn != rate->mfn, "ana_mfn != rate->mfn\n");
+
+	return 0;
+}
+
+static int clk_fracn_gppll_prepare(struct clk_hw *hw)
+{
+	struct clk_fracn_gppll *pll = to_clk_fracn_gppll(hw);
+	u32 val;
+	int ret;
+
+	val = readl_relaxed(pll->base + PLL_CTRL);
+	if (val & POWERUP_MASK)
+		return 0;
+
+	val |= CLKMUX_BYPASS;
+	writel_relaxed(val, pll->base + PLL_CTRL);
+
+	val |= POWERUP_MASK;
+	writel_relaxed(val, pll->base + PLL_CTRL);
+
+	val |= CLKMUX_EN;
+	writel_relaxed(val, pll->base + PLL_CTRL);
+
+	ret = clk_fracn_gppll_wait_lock(pll);
+	if (ret)
+		return ret;
+
+	val &= ~CLKMUX_BYPASS;
+	writel_relaxed(val, pll->base + PLL_CTRL);
+
+	return 0;
+}
+
+static int clk_fracn_gppll_is_prepared(struct clk_hw *hw)
+{
+	struct clk_fracn_gppll *pll = to_clk_fracn_gppll(hw);
+	u32 val;
+
+	val = readl_relaxed(pll->base + PLL_CTRL);
+
+	return (val & POWERUP_MASK) ? 1 : 0;
+}
+
+static void clk_fracn_gppll_unprepare(struct clk_hw *hw)
+{
+	struct clk_fracn_gppll *pll = to_clk_fracn_gppll(hw);
+	u32 val;
+
+	val = readl_relaxed(pll->base + PLL_CTRL);
+	val &= ~POWERUP_MASK;
+	writel_relaxed(val, pll->base + PLL_CTRL);
+}
+
+static const struct clk_ops clk_fracn_gppll_ops = {
+	.enable		= clk_fracn_gppll_prepare,
+	.disable	= clk_fracn_gppll_unprepare,
+	.is_enabled	= clk_fracn_gppll_is_prepared,
+	.recalc_rate	= clk_fracn_gppll_recalc_rate,
+	.round_rate	= clk_fracn_gppll_round_rate,
+	.set_rate	= clk_fracn_gppll_set_rate,
+};
+
+static struct clk *_imx_clk_fracn_gppll(const char *name, const char *parent_name,
+					void __iomem *base,
+					const struct imx_fracn_gppll_clk *pll_clk,
+					u32 pll_flags)
+{
+	struct clk_fracn_gppll *pll;
+	struct clk_hw *hw;
+	struct clk_init_data init;
+	int ret;
+
+	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
+	if (!pll)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.flags = pll_clk->flags;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	init.ops = &clk_fracn_gppll_ops;
+
+	pll->base = base;
+	pll->hw.init = &init;
+	pll->rate_table = pll_clk->rate_table;
+	pll->rate_count = pll_clk->rate_count;
+	pll->flags = pll_flags;
+
+	hw = &pll->hw;
+
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
+		pr_err("%s: failed to register pll %s %d\n", __func__, name, ret);
+		kfree(pll);
+		return ERR_PTR(ret);
+	}
+
+	return &hw->clk;
+}
+
+struct clk *imx_clk_fracn_gppll(const char *name, const char *parent_name, void __iomem *base,
+				const struct imx_fracn_gppll_clk *pll_clk)
+{
+	return _imx_clk_fracn_gppll(name, parent_name, base, pll_clk, CLK_FRACN_GPPLL_FRACN);
+}
+EXPORT_SYMBOL_GPL(imx_clk_fracn_gppll);
+
+struct clk *imx_clk_fracn_gppll_integer(const char *name, const char *parent_name,
+					void __iomem *base,
+					const struct imx_fracn_gppll_clk *pll_clk)
+{
+	return _imx_clk_fracn_gppll(name, parent_name, base, pll_clk, CLK_FRACN_GPPLL_INTEGER);
+}
+EXPORT_SYMBOL_GPL(imx_clk_fracn_gppll_integer);
diff --git a/drivers/clk/imx/clk-gate-93.c b/drivers/clk/imx/clk-gate-93.c
new file mode 100644
index 0000000000..ed2714a03c
--- /dev/null
+++ b/drivers/clk/imx/clk-gate-93.c
@@ -0,0 +1,186 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2022 NXP
+ *
+ * Peng Fan <peng.fan@nxp.com>
+ */
+
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/types.h>
+#include <of_address.h>
+#include <linux/iopoll.h>
+
+#include "clk.h"
+
+#define DIRECT_OFFSET		0x0
+
+/*
+ * 0b000 - LPCG will be OFF in any CPU mode.
+ * 0b100 - LPCG will be ON in any CPU mode.
+ */
+#define LPM_SETTING_OFF		0x0
+#define LPM_SETTING_ON		0x4
+
+#define LPM_CUR_OFFSET		0x1c
+
+#define AUTHEN_OFFSET		0x30
+#define CPULPM_EN		BIT(2)
+#define TZ_NS_SHIFT		9
+#define TZ_NS_MASK		BIT(9)
+
+#define WHITE_LIST_SHIFT	16
+
+struct imx93_clk_gate {
+	struct clk_hw hw;
+	void __iomem	*reg;
+	u32		bit_idx;
+	u32		val;
+	u32		mask;
+	spinlock_t	*lock;
+	unsigned int	*share_count;
+};
+
+#define to_imx93_clk_gate(_hw) container_of(_hw, struct imx93_clk_gate, hw)
+
+static void imx93_clk_gate_do_hardware(struct clk_hw *hw, bool enable)
+{
+	struct imx93_clk_gate *gate = to_imx93_clk_gate(hw);
+	u32 val;
+
+	val = readl(gate->reg + AUTHEN_OFFSET);
+	if (val & CPULPM_EN) {
+		val = enable ? LPM_SETTING_ON : LPM_SETTING_OFF;
+		writel(val, gate->reg + LPM_CUR_OFFSET);
+	} else {
+		val = readl(gate->reg + DIRECT_OFFSET);
+		val &= ~(gate->mask << gate->bit_idx);
+		if (enable)
+			val |= (gate->val & gate->mask) << gate->bit_idx;
+		writel(val, gate->reg + DIRECT_OFFSET);
+	}
+}
+
+static int imx93_clk_gate_enable(struct clk_hw *hw)
+{
+	struct imx93_clk_gate *gate = to_imx93_clk_gate(hw);
+	unsigned long flags;
+
+	spin_lock_irqsave(gate->lock, flags);
+
+	if (gate->share_count && (*gate->share_count)++ > 0)
+		goto out;
+
+	imx93_clk_gate_do_hardware(hw, true);
+out:
+	spin_unlock_irqrestore(gate->lock, flags);
+
+	return 0;
+}
+
+static void imx93_clk_gate_disable(struct clk_hw *hw)
+{
+	struct imx93_clk_gate *gate = to_imx93_clk_gate(hw);
+	unsigned long flags;
+
+	spin_lock_irqsave(gate->lock, flags);
+
+	if (gate->share_count) {
+		if (WARN_ON(*gate->share_count == 0))
+			goto out;
+		else if (--(*gate->share_count) > 0)
+			goto out;
+	}
+
+	imx93_clk_gate_do_hardware(hw, false);
+out:
+	spin_unlock_irqrestore(gate->lock, flags);
+}
+
+static int imx93_clk_gate_reg_is_enabled(struct imx93_clk_gate *gate)
+{
+	u32 val = readl(gate->reg + AUTHEN_OFFSET);
+
+	if (val & CPULPM_EN) {
+		val = readl(gate->reg + LPM_CUR_OFFSET);
+		if (val == LPM_SETTING_ON)
+			return 1;
+	} else {
+		val = readl(gate->reg);
+		if (((val >> gate->bit_idx) & gate->mask) == gate->val)
+			return 1;
+	}
+
+	return 0;
+}
+
+static int imx93_clk_gate_is_enabled(struct clk_hw *hw)
+{
+	struct imx93_clk_gate *gate = to_imx93_clk_gate(hw);
+	unsigned long flags;
+	int ret;
+
+	spin_lock_irqsave(gate->lock, flags);
+
+	ret = imx93_clk_gate_reg_is_enabled(gate);
+
+	spin_unlock_irqrestore(gate->lock, flags);
+
+	return ret;
+}
+
+static const struct clk_ops imx93_clk_gate_ops = {
+	.set_rate = clk_parent_set_rate,
+	.round_rate = clk_parent_round_rate,
+	.enable = imx93_clk_gate_enable,
+	.disable = imx93_clk_gate_disable,
+	.is_enabled = imx93_clk_gate_is_enabled,
+};
+
+static const struct clk_ops imx93_clk_gate_ro_ops = {
+	.is_enabled = imx93_clk_gate_is_enabled,
+};
+
+struct clk *imx93_clk_gate(struct device *dev, const char *name, const char *parent_name,
+			   unsigned long flags, void __iomem *reg, u32 bit_idx, u32 val,
+			   u32 mask, u32 domain_id, unsigned int *share_count)
+{
+	struct imx93_clk_gate *gate;
+	struct clk_hw *hw;
+	struct clk_init_data init;
+	int ret;
+	u32 authen;
+
+	gate = kzalloc(sizeof(struct imx93_clk_gate), GFP_KERNEL);
+	if (!gate)
+		return ERR_PTR(-ENOMEM);
+
+	gate->reg = reg;
+	gate->bit_idx = bit_idx;
+	gate->val = val;
+	gate->mask = mask;
+	gate->share_count = share_count;
+
+	init.name = name;
+	init.ops = &imx93_clk_gate_ops;
+	init.flags = flags | CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE;
+	init.parent_names = parent_name ? &parent_name : NULL;
+	init.num_parents = parent_name ? 1 : 0;
+
+	gate->hw.init = &init;
+	hw = &gate->hw;
+
+	authen = readl(reg + AUTHEN_OFFSET);
+	if (!(authen & TZ_NS_MASK) || !(authen & BIT(WHITE_LIST_SHIFT + domain_id)))
+		init.ops = &imx93_clk_gate_ro_ops;
+
+	ret = clk_hw_register(dev, hw);
+	if (ret) {
+		kfree(gate);
+		return ERR_PTR(ret);
+	}
+
+	return &hw->clk;
+}
+EXPORT_SYMBOL_GPL(imx93_clk_gate);
diff --git a/drivers/clk/imx/clk-imx93.c b/drivers/clk/imx/clk-imx93.c
new file mode 100644
index 0000000000..e460091ba6
--- /dev/null
+++ b/drivers/clk/imx/clk-imx93.c
@@ -0,0 +1,331 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2021 NXP.
+ */
+
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/types.h>
+#include <of_address.h>
+#include <dt-bindings/clock/imx93-clock.h>
+
+#include "clk.h"
+
+enum clk_sel {
+	LOW_SPEED_IO_SEL,
+	NON_IO_SEL,
+	FAST_SEL,
+	AUDIO_SEL,
+	VIDEO_SEL,
+	TPM_SEL,
+	CKO1_SEL,
+	CKO2_SEL,
+	MISC_SEL,
+	MAX_SEL
+};
+
+static u32 share_count_sai1;
+static u32 share_count_sai2;
+static u32 share_count_sai3;
+static u32 share_count_mub;
+static u32 share_count_pdm;
+
+static const char * const a55_core_sels[] = {"a55_alt", "arm_pll"};
+static const char *parent_names[MAX_SEL][4] = {
+	{"osc_24m", "sys_pll_pfd0_div2", "sys_pll_pfd1_div2", "video_pll"},
+	{"osc_24m", "sys_pll_pfd0_div2", "sys_pll_pfd1_div2", "sys_pll_pfd2_div2"},
+	{"osc_24m", "sys_pll_pfd0", "sys_pll_pfd1", "sys_pll_pfd2"},
+	{"osc_24m", "audio_pll", "video_pll", "clk_ext1"},
+	{"osc_24m", "audio_pll", "video_pll", "sys_pll_pfd0"},
+	{"osc_24m", "sys_pll_pfd0", "audio_pll", "clk_ext1"},
+	{"osc_24m", "sys_pll_pfd0", "sys_pll_pfd1", "audio_pll"},
+	{"osc_24m", "sys_pll_pfd0", "sys_pll_pfd1", "video_pll"},
+	{"osc_24m", "audio_pll", "video_pll", "sys_pll_pfd2"},
+};
+
+static const struct imx93_clk_root {
+	u32 clk;
+	char *name;
+	u32 off;
+	enum clk_sel sel;
+	unsigned long flags;
+} root_array[] = {
+	/* a55/m33/bus critical clk for system run */
+	{ IMX93_CLK_A55_PERIPH,		"a55_periph_root",	0x0000,	FAST_SEL, CLK_IS_CRITICAL },
+	{ IMX93_CLK_A55_MTR_BUS,	"a55_mtr_bus_root",	0x0080,	LOW_SPEED_IO_SEL, CLK_IS_CRITICAL },
+	{ IMX93_CLK_A55,		"a55_alt_root",		0x0100,	FAST_SEL, CLK_IS_CRITICAL },
+	{ IMX93_CLK_M33,		"m33_root",		0x0180,	LOW_SPEED_IO_SEL, CLK_IS_CRITICAL },
+	{ IMX93_CLK_BUS_WAKEUP,		"bus_wakeup_root",	0x0280,	LOW_SPEED_IO_SEL, CLK_IS_CRITICAL },
+	{ IMX93_CLK_BUS_AON,		"bus_aon_root",		0x0300,	LOW_SPEED_IO_SEL, CLK_IS_CRITICAL },
+	{ IMX93_CLK_WAKEUP_AXI,		"wakeup_axi_root",	0x0380,	FAST_SEL, CLK_IS_CRITICAL },
+	{ IMX93_CLK_SWO_TRACE,		"swo_trace_root",	0x0400,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_M33_SYSTICK,	"m33_systick_root",	0x0480,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_FLEXIO1,		"flexio1_root",		0x0500,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_FLEXIO2,		"flexio2_root",		0x0580,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPTMR1,		"lptmr1_root",		0x0700,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPTMR2,		"lptmr2_root",		0x0780,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_TPM2,		"tpm2_root",		0x0880,	TPM_SEL, },
+	{ IMX93_CLK_TPM4,		"tpm4_root",		0x0980,	TPM_SEL, },
+	{ IMX93_CLK_TPM5,		"tpm5_root",		0x0a00,	TPM_SEL, },
+	{ IMX93_CLK_TPM6,		"tpm6_root",		0x0a80,	TPM_SEL, },
+	{ IMX93_CLK_FLEXSPI1,		"flexspi1_root",	0x0b00,	FAST_SEL, },
+	{ IMX93_CLK_CAN1,		"can1_root",		0x0b80,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_CAN2,		"can2_root",		0x0c00,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPUART1,		"lpuart1_root",		0x0c80,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPUART2,		"lpuart2_root",		0x0d00,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPUART3,		"lpuart3_root",		0x0d80,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPUART4,		"lpuart4_root",		0x0e00,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPUART5,		"lpuart5_root",		0x0e80,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPUART6,		"lpuart6_root",		0x0f00,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPUART7,		"lpuart7_root",		0x0f80,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPUART8,		"lpuart8_root",		0x1000,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPI2C1,		"lpi2c1_root",		0x1080,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPI2C2,		"lpi2c2_root",		0x1100,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPI2C3,		"lpi2c3_root",		0x1180,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPI2C4,		"lpi2c4_root",		0x1200,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPI2C5,		"lpi2c5_root",		0x1280,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPI2C6,		"lpi2c6_root",		0x1300,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPI2C7,		"lpi2c7_root",		0x1380,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPI2C8,		"lpi2c8_root",		0x1400,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPSPI1,		"lpspi1_root",		0x1480,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPSPI2,		"lpspi2_root",		0x1500,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPSPI3,		"lpspi3_root",		0x1580,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPSPI4,		"lpspi4_root",		0x1600,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPSPI5,		"lpspi5_root",		0x1680,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPSPI6,		"lpspi6_root",		0x1700,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPSPI7,		"lpspi7_root",		0x1780,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_LPSPI8,		"lpspi8_root",		0x1800,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_I3C1,		"i3c1_root",		0x1880,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_I3C2,		"i3c2_root",		0x1900,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_USDHC1,		"usdhc1_root",		0x1980,	FAST_SEL, },
+	{ IMX93_CLK_USDHC2,		"usdhc2_root",		0x1a00,	FAST_SEL, },
+	{ IMX93_CLK_USDHC3,		"usdhc3_root",		0x1a80,	FAST_SEL, },
+	{ IMX93_CLK_SAI1,		"sai1_root",		0x1b00,	AUDIO_SEL, },
+	{ IMX93_CLK_SAI2,		"sai2_root",		0x1b80,	AUDIO_SEL, },
+	{ IMX93_CLK_SAI3,		"sai3_root",		0x1c00,	AUDIO_SEL, },
+	{ IMX93_CLK_CCM_CKO1,		"ccm_cko1_root",	0x1c80,	CKO1_SEL, },
+	{ IMX93_CLK_CCM_CKO2,		"ccm_cko2_root",	0x1d00,	CKO2_SEL, },
+	{ IMX93_CLK_CCM_CKO3,		"ccm_cko3_root",	0x1d80,	CKO1_SEL, },
+	{ IMX93_CLK_CCM_CKO4,		"ccm_cko4_root",	0x1e00,	CKO2_SEL, },
+	/*
+	 * Critical because clk is used for handshake between HSIOMIX and NICMIX when
+	 * NICMIX power down/on during system suspend/resume
+	 */
+	{ IMX93_CLK_HSIO,		"hsio_root",		0x1e80,	LOW_SPEED_IO_SEL, CLK_IS_CRITICAL},
+	{ IMX93_CLK_HSIO_USB_TEST_60M,	"hsio_usb_test_60m_root", 0x1f00, LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_HSIO_ACSCAN_80M,	"hsio_acscan_80m_root",	0x1f80,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_HSIO_ACSCAN_480M,	"hsio_acscan_480m_root", 0x2000, MISC_SEL, },
+	{ IMX93_CLK_NIC_AXI,		"nic_axi_root",		0x2080, FAST_SEL, CLK_IS_CRITICAL, },
+	{ IMX93_CLK_ML_APB,		"ml_apb_root",		0x2180,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_ML,			"ml_root",		0x2200,	FAST_SEL, },
+	{ IMX93_CLK_MEDIA_AXI,		"media_axi_root",	0x2280,	FAST_SEL, },
+	{ IMX93_CLK_MEDIA_APB,		"media_apb_root",	0x2300,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_MEDIA_LDB,		"media_ldb_root",	0x2380,	VIDEO_SEL, },
+	{ IMX93_CLK_MEDIA_DISP_PIX,	"media_disp_pix_root",	0x2400,	VIDEO_SEL, },
+	{ IMX93_CLK_CAM_PIX,		"cam_pix_root",		0x2480,	VIDEO_SEL, },
+	{ IMX93_CLK_MIPI_TEST_BYTE,	"mipi_test_byte_root",	0x2500,	VIDEO_SEL, },
+	{ IMX93_CLK_MIPI_PHY_CFG,	"mipi_phy_cfg_root",	0x2580,	VIDEO_SEL, },
+	{ IMX93_CLK_ADC,		"adc_root",		0x2700,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_PDM,		"pdm_root",		0x2780,	AUDIO_SEL, },
+	{ IMX93_CLK_TSTMR1,		"tstmr1_root",		0x2800,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_TSTMR2,		"tstmr2_root",		0x2880,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_MQS1,		"mqs1_root",		0x2900,	AUDIO_SEL, },
+	{ IMX93_CLK_MQS2,		"mqs2_root",		0x2980,	AUDIO_SEL, },
+	{ IMX93_CLK_AUDIO_XCVR,		"audio_xcvr_root",	0x2a00,	NON_IO_SEL, },
+	{ IMX93_CLK_SPDIF,		"spdif_root",		0x2a80,	AUDIO_SEL, },
+	{ IMX93_CLK_ENET,		"enet_root",		0x2b00,	NON_IO_SEL, },
+	{ IMX93_CLK_ENET_TIMER1,	"enet_timer1_root",	0x2b80,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_ENET_TIMER2,	"enet_timer2_root",	0x2c00,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_ENET_REF,		"enet_ref_root",	0x2c80,	NON_IO_SEL, },
+	{ IMX93_CLK_ENET_REF_PHY,	"enet_ref_phy_root",	0x2d00,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_I3C1_SLOW,		"i3c1_slow_root",	0x2d80,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_I3C2_SLOW,		"i3c2_slow_root",	0x2e00,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_USB_PHY_BURUNIN,	"usb_phy_root",		0x2e80,	LOW_SPEED_IO_SEL, },
+	{ IMX93_CLK_PAL_CAME_SCAN,	"pal_came_scan_root",	0x2f00,	MISC_SEL, }
+};
+
+static const struct imx93_clk_ccgr {
+	u32 clk;
+	char *name;
+	char *parent_name;
+	u32 off;
+	unsigned long flags;
+	u32 *shared_count;
+} ccgr_array[] = {
+	{ IMX93_CLK_A55_GATE,		"a55_alt",	"a55_alt_root",		0x8000, },
+	/* M33 critical clk for system run */
+	{ IMX93_CLK_CM33_GATE,		"cm33",		"m33_root",		0x8040, CLK_IS_CRITICAL },
+	{ IMX93_CLK_ADC1_GATE,		"adc1",		"adc_root",		0x82c0, },
+	{ IMX93_CLK_WDOG1_GATE,		"wdog1",	"osc_24m",		0x8300, },
+	{ IMX93_CLK_WDOG2_GATE,		"wdog2",	"osc_24m",		0x8340, },
+	{ IMX93_CLK_WDOG3_GATE,		"wdog3",	"osc_24m",		0x8380, },
+	{ IMX93_CLK_WDOG4_GATE,		"wdog4",	"osc_24m",		0x83c0, },
+	{ IMX93_CLK_WDOG5_GATE,		"wdog5",	"osc_24m",		0x8400, },
+	{ IMX93_CLK_SEMA1_GATE,		"sema1",	"bus_aon_root",		0x8440, },
+	{ IMX93_CLK_SEMA2_GATE,		"sema2",	"bus_wakeup_root",	0x8480, },
+	{ IMX93_CLK_MU1_A_GATE,		"mu1_a",	"bus_aon_root",		0x84c0, CLK_IGNORE_UNUSED },
+	{ IMX93_CLK_MU2_A_GATE,		"mu2_a",	"bus_wakeup_root",	0x84c0, CLK_IGNORE_UNUSED },
+	{ IMX93_CLK_MU1_B_GATE,		"mu1_b",	"bus_aon_root",		0x8500, 0, &share_count_mub },
+	{ IMX93_CLK_MU2_B_GATE,		"mu2_b",	"bus_wakeup_root",	0x8500, 0, &share_count_mub },
+	{ IMX93_CLK_EDMA1_GATE,		"edma1",	"m33_root",		0x8540, },
+	{ IMX93_CLK_EDMA2_GATE,		"edma2",	"wakeup_axi_root",	0x8580, },
+	{ IMX93_CLK_FLEXSPI1_GATE,	"flexspi1",	"flexspi1_root",	0x8640, },
+	{ IMX93_CLK_GPIO1_GATE,		"gpio1",	"m33_root",		0x8880, },
+	{ IMX93_CLK_GPIO2_GATE,		"gpio2",	"bus_wakeup_root",	0x88c0, },
+	{ IMX93_CLK_GPIO3_GATE,		"gpio3",	"bus_wakeup_root",	0x8900, },
+	{ IMX93_CLK_GPIO4_GATE,		"gpio4",	"bus_wakeup_root",	0x8940, },
+	{ IMX93_CLK_FLEXIO1_GATE,	"flexio1",	"flexio1_root",		0x8980, },
+	{ IMX93_CLK_FLEXIO2_GATE,	"flexio2",	"flexio2_root",		0x89c0, },
+	{ IMX93_CLK_LPIT1_GATE,		"lpit1",	"bus_aon_root",		0x8a00, },
+	{ IMX93_CLK_LPIT2_GATE,		"lpit2",	"bus_wakeup_root",	0x8a40, },
+	{ IMX93_CLK_LPTMR1_GATE,	"lptmr1",	"lptmr1_root",		0x8a80, },
+	{ IMX93_CLK_LPTMR2_GATE,	"lptmr2",	"lptmr2_root",		0x8ac0, },
+	{ IMX93_CLK_TPM1_GATE,		"tpm1",		"bus_aon_root",		0x8b00, },
+	{ IMX93_CLK_TPM2_GATE,		"tpm2",		"tpm2_root",		0x8b40, },
+	{ IMX93_CLK_TPM3_GATE,		"tpm3",		"bus_wakeup_root",	0x8b80, },
+	{ IMX93_CLK_TPM4_GATE,		"tpm4",		"tpm4_root",		0x8bc0, },
+	{ IMX93_CLK_TPM5_GATE,		"tpm5",		"tpm5_root",		0x8c00, },
+	{ IMX93_CLK_TPM6_GATE,		"tpm6",		"tpm6_root",		0x8c40, },
+	{ IMX93_CLK_CAN1_GATE,		"can1",		"can1_root",		0x8c80, },
+	{ IMX93_CLK_CAN2_GATE,		"can2",		"can2_root",		0x8cc0, },
+	{ IMX93_CLK_LPUART1_GATE,	"lpuart1",	"lpuart1_root",		0x8d00, },
+	{ IMX93_CLK_LPUART2_GATE,	"lpuart2",	"lpuart2_root",		0x8d40, },
+	{ IMX93_CLK_LPUART3_GATE,	"lpuart3",	"lpuart3_root",		0x8d80, },
+	{ IMX93_CLK_LPUART4_GATE,	"lpuart4",	"lpuart4_root",		0x8dc0, },
+	{ IMX93_CLK_LPUART5_GATE,	"lpuart5",	"lpuart5_root",		0x8e00, },
+	{ IMX93_CLK_LPUART6_GATE,	"lpuart6",	"lpuart6_root",		0x8e40, },
+	{ IMX93_CLK_LPUART7_GATE,	"lpuart7",	"lpuart7_root",		0x8e80, },
+	{ IMX93_CLK_LPUART8_GATE,	"lpuart8",	"lpuart8_root",		0x8ec0, },
+	{ IMX93_CLK_LPI2C1_GATE,	"lpi2c1",	"lpi2c1_root",		0x8f00, },
+	{ IMX93_CLK_LPI2C2_GATE,	"lpi2c2",	"lpi2c2_root",		0x8f40, },
+	{ IMX93_CLK_LPI2C3_GATE,	"lpi2c3",	"lpi2c3_root",		0x8f80, },
+	{ IMX93_CLK_LPI2C4_GATE,	"lpi2c4",	"lpi2c4_root",		0x8fc0, },
+	{ IMX93_CLK_LPI2C5_GATE,	"lpi2c5",	"lpi2c5_root",		0x9000, },
+	{ IMX93_CLK_LPI2C6_GATE,	"lpi2c6",	"lpi2c6_root",		0x9040, },
+	{ IMX93_CLK_LPI2C7_GATE,	"lpi2c7",	"lpi2c7_root",		0x9080, },
+	{ IMX93_CLK_LPI2C8_GATE,	"lpi2c8",	"lpi2c8_root",		0x90c0, },
+	{ IMX93_CLK_LPSPI1_GATE,	"lpspi1",	"lpspi1_root",		0x9100, },
+	{ IMX93_CLK_LPSPI2_GATE,	"lpspi2",	"lpspi2_root",		0x9140, },
+	{ IMX93_CLK_LPSPI3_GATE,	"lpspi3",	"lpspi3_root",		0x9180, },
+	{ IMX93_CLK_LPSPI4_GATE,	"lpspi4",	"lpspi4_root",		0x91c0, },
+	{ IMX93_CLK_LPSPI5_GATE,	"lpspi5",	"lpspi5_root",		0x9200, },
+	{ IMX93_CLK_LPSPI6_GATE,	"lpspi6",	"lpspi6_root",		0x9240, },
+	{ IMX93_CLK_LPSPI7_GATE,	"lpspi7",	"lpspi7_root",		0x9280, },
+	{ IMX93_CLK_LPSPI8_GATE,	"lpspi8",	"lpspi8_root",		0x92c0, },
+	{ IMX93_CLK_I3C1_GATE,		"i3c1",		"i3c1_root",		0x9300, },
+	{ IMX93_CLK_I3C2_GATE,		"i3c2",		"i3c2_root",		0x9340, },
+	{ IMX93_CLK_USDHC1_GATE,	"usdhc1",	"usdhc1_root",		0x9380, },
+	{ IMX93_CLK_USDHC2_GATE,	"usdhc2",	"usdhc2_root",		0x93c0, },
+	{ IMX93_CLK_USDHC3_GATE,	"usdhc3",	"usdhc3_root",		0x9400, },
+	{ IMX93_CLK_SAI1_GATE,          "sai1",         "sai1_root",            0x9440, 0, &share_count_sai1},
+	{ IMX93_CLK_SAI1_IPG,		"sai1_ipg_clk", "bus_aon_root",		0x9440, 0, &share_count_sai1},
+	{ IMX93_CLK_SAI2_GATE,          "sai2",         "sai2_root",            0x9480, 0, &share_count_sai2},
+	{ IMX93_CLK_SAI2_IPG,		"sai2_ipg_clk", "bus_wakeup_root",	0x9480, 0, &share_count_sai2},
+	{ IMX93_CLK_SAI3_GATE,          "sai3",         "sai3_root",            0x94c0, 0, &share_count_sai3},
+	{ IMX93_CLK_SAI3_IPG,		"sai3_ipg_clk", "bus_wakeup_root",	0x94c0, 0, &share_count_sai3},
+	{ IMX93_CLK_MIPI_CSI_GATE,	"mipi_csi",	"media_apb_root",	0x9580, },
+	{ IMX93_CLK_MIPI_DSI_GATE,	"mipi_dsi",	"media_apb_root",	0x95c0, },
+	{ IMX93_CLK_LVDS_GATE,		"lvds",		"media_ldb_root",	0x9600, },
+	{ IMX93_CLK_LCDIF_GATE,		"lcdif",	"media_apb_root",	0x9640, },
+	{ IMX93_CLK_PXP_GATE,		"pxp",		"media_apb_root",	0x9680, },
+	{ IMX93_CLK_ISI_GATE,		"isi",		"media_apb_root",	0x96c0, },
+	{ IMX93_CLK_NIC_MEDIA_GATE,	"nic_media",	"media_axi_root",	0x9700, },
+	{ IMX93_CLK_USB_CONTROLLER_GATE, "usb_controller", "hsio_root",		0x9a00, },
+	{ IMX93_CLK_USB_TEST_60M_GATE,	"usb_test_60m",	"hsio_usb_test_60m_root", 0x9a40, },
+	{ IMX93_CLK_HSIO_TROUT_24M_GATE, "hsio_trout_24m", "osc_24m",		0x9a80, },
+	{ IMX93_CLK_PDM_GATE,		"pdm",		"pdm_root",		0x9ac0, 0, &share_count_pdm},
+	{ IMX93_CLK_PDM_IPG,		"pdm_ipg_clk",	"bus_aon_root",		0x9ac0, 0, &share_count_pdm},
+	{ IMX93_CLK_MQS1_GATE,		"mqs1",		"sai1_root",		0x9b00, },
+	{ IMX93_CLK_MQS2_GATE,		"mqs2",		"sai3_root",		0x9b40, },
+	{ IMX93_CLK_AUD_XCVR_GATE,	"aud_xcvr",	"audio_xcvr_root",	0x9b80, },
+	{ IMX93_CLK_SPDIF_GATE,		"spdif",	"spdif_root",		0x9c00, },
+	{ IMX93_CLK_HSIO_32K_GATE,	"hsio_32k",	"osc_32k",		0x9dc0, },
+	{ IMX93_CLK_ENET1_GATE,		"enet1",	"wakeup_axi_root",	0x9e00, },
+	{ IMX93_CLK_ENET_QOS_GATE,	"enet_qos",	"wakeup_axi_root",	0x9e40, },
+	/* Critical because clk accessed during CPU idle */
+	{ IMX93_CLK_SYS_CNT_GATE,	"sys_cnt",	"osc_24m",		0x9e80, CLK_IS_CRITICAL},
+	{ IMX93_CLK_TSTMR1_GATE,	"tstmr1",	"bus_aon_root",		0x9ec0, },
+	{ IMX93_CLK_TSTMR2_GATE,	"tstmr2",	"bus_wakeup_root",	0x9f00, },
+	{ IMX93_CLK_TMC_GATE,		"tmc",		"osc_24m",		0x9f40, },
+	{ IMX93_CLK_PMRO_GATE,		"pmro",		"osc_24m",		0x9f80, }
+};
+
+static struct clk_onecell_data clk_data;
+static struct clk *clks[IMX93_CLK_END];
+
+static int imx93_clocks_probe(struct device_node *np)
+{
+	struct device_node *anatop_np;
+	const struct imx93_clk_root *root;
+	const struct imx93_clk_ccgr *ccgr;
+	void __iomem *base, *anatop_base;
+	int i, ret;
+
+	clk_data.clk_num = IMX93_CLK_END;
+	clk_data.clks = clks;
+
+	clks[IMX93_CLK_DUMMY] = clk_fixed("dummy", 0);
+	clks[IMX93_CLK_24M] = of_clk_get_by_name(np, "osc_24m");
+	clks[IMX93_CLK_32K] = of_clk_get_by_name(np, "osc_32k");
+	clks[IMX93_CLK_EXT1] = of_clk_get_by_name(np, "clk_ext1");
+
+	clks[IMX93_CLK_SYS_PLL_PFD0] = clk_fixed("sys_pll_pfd0", 1000000000);
+	clks[IMX93_CLK_SYS_PLL_PFD0_DIV2] = imx_clk_hw_fixed_factor("sys_pll_pfd0_div2",
+								    "sys_pll_pfd0", 1, 2);
+	clks[IMX93_CLK_SYS_PLL_PFD1] = clk_fixed("sys_pll_pfd1", 800000000);
+	clks[IMX93_CLK_SYS_PLL_PFD1_DIV2] = imx_clk_hw_fixed_factor("sys_pll_pfd1_div2",
+								    "sys_pll_pfd1", 1, 2);
+	clks[IMX93_CLK_SYS_PLL_PFD2] = clk_fixed("sys_pll_pfd2", 625000000);
+	clks[IMX93_CLK_SYS_PLL_PFD2_DIV2] = imx_clk_hw_fixed_factor("sys_pll_pfd2_div2",
+								    "sys_pll_pfd2", 1, 2);
+
+	anatop_np = of_find_compatible_node(NULL, NULL, "fsl,imx93-anatop");
+	anatop_base = of_iomap(anatop_np, 0);
+	if (WARN_ON(IS_ERR(anatop_base)))
+		return PTR_ERR(anatop_base);
+
+	clks[IMX93_CLK_ARM_PLL] = imx_clk_fracn_gppll_integer("arm_pll", "osc_24m",
+							      anatop_base + 0x1000,
+							      &imx_fracn_gppll_integer);
+	clks[IMX93_CLK_AUDIO_PLL] = imx_clk_fracn_gppll("audio_pll", "osc_24m", anatop_base + 0x1200,
+							&imx_fracn_gppll);
+	clks[IMX93_CLK_VIDEO_PLL] = imx_clk_fracn_gppll("video_pll", "osc_24m", anatop_base + 0x1400,
+							&imx_fracn_gppll);
+
+	base = of_iomap(np, 0);
+	if (WARN_ON(IS_ERR(base)))
+		return PTR_ERR(base);
+
+	for (i = 0; i < ARRAY_SIZE(root_array); i++) {
+		root = &root_array[i];
+		clks[root->clk] = imx93_clk_composite_flags(root->name,
+							    parent_names[root->sel],
+							    4, base + root->off, 3,
+							    root->flags);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(ccgr_array); i++) {
+		ccgr = &ccgr_array[i];
+		clks[ccgr->clk] = imx93_clk_gate(NULL, ccgr->name, ccgr->parent_name,
+						 ccgr->flags, base + ccgr->off, 0, 1, 1, 3,
+						 ccgr->shared_count);
+	}
+
+	clks[IMX93_CLK_A55_SEL] = imx_clk_hw_mux2("a55_sel", base + 0x4820, 0, 1, a55_core_sels,
+						  ARRAY_SIZE(a55_core_sels));
+	clks[IMX93_CLK_A55_CORE] = imx_clk_hw_cpu("a55_core", "a55_sel",
+						  clks[IMX93_CLK_A55_SEL],
+						  clks[IMX93_CLK_A55_SEL],
+						  clks[IMX93_CLK_ARM_PLL],
+						  clks[IMX93_CLK_A55_GATE]);
+
+	imx_check_clocks(clks, IMX93_CLK_END);
+
+	ret = of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+CLK_OF_DECLARE(imx93, "fsl,imx93-ccm", imx93_clocks_probe);
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 041592a064..1d3316619f 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -304,6 +304,48 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 #define imx8m_clk_composite_critical(name, parent_names, reg) \
 	__imx8m_clk_composite(name, parent_names, reg, CLK_IS_CRITICAL)
 
+#define CLK_FRACN_GPPLL_INTEGER BIT(0)
+#define CLK_FRACN_GPPLL_FRACN   BIT(1)
+
+/* NOTE: Rate table should be kept sorted in descending order. */
+struct imx_fracn_gppll_rate_table {
+	unsigned int rate;
+	unsigned int mfi;
+	unsigned int mfn;
+	unsigned int mfd;
+	unsigned int rdiv;
+	unsigned int odiv;
+};
+
+struct imx_fracn_gppll_clk {
+	const struct imx_fracn_gppll_rate_table *rate_table;
+	int rate_count;
+	int flags;
+};
+
+struct clk *imx_clk_fracn_gppll(const char *name, const char *parent_name, void __iomem *base,
+				const struct imx_fracn_gppll_clk *pll_clk);
+struct clk *imx_clk_fracn_gppll_integer(const char *name, const char *parent_name,
+					void __iomem *base,
+					const struct imx_fracn_gppll_clk *pll_clk);
+
+extern struct imx_fracn_gppll_clk imx_fracn_gppll;
+extern struct imx_fracn_gppll_clk imx_fracn_gppll_integer;
+
+struct clk *imx93_clk_composite_flags(const char *name,
+				      const char * const *parent_names,
+				      int num_parents,
+				      void __iomem *reg,
+				      u32 domain_id,
+				      unsigned long flags);
+#define imx93_clk_composite(name, parent_names, num_parents, reg, domain_id) \
+        imx93_clk_composite_flags(name, parent_names, num_parents, reg, domain_id \
+                                  CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
+
+struct clk *imx93_clk_gate(struct device *dev, const char *name, const char *parent_name,
+			   unsigned long flags, void __iomem *reg, u32 bit_idx, u32 val,
+			   u32 mask, u32 domain_id, unsigned int *share_count);
+
 /*
  * Names of the above functions used in the Linux Kernel. Added here
  * to be able to use the same names in barebox to reduce the diffs
-- 
2.39.2



