Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d4768-0005BP-Vf
 for barebox@lists.infradead.org; Fri, 28 Apr 2017 14:42:22 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 28 Apr 2017 16:41:42 +0200
Message-Id: <4c56402a84790e6801941f163de19bb1d055dd62.1493390425.git-series.s.trumtrar@pengutronix.de>
In-Reply-To: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
References: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
In-Reply-To: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
References: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 6/8] clk: socfpga: add arria10 clk drivers
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Arria10 has a (slightly) different clock controller than the
Cyclone5. Add new drivers for it.

This driver only reads out the setup and builds the clocktree,
it does not setup any clocks.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/clk/socfpga/Makefile         |   2 +-
 drivers/clk/socfpga/clk-gate-a10.c   | 197 ++++++++++++++++++++++++++++-
 drivers/clk/socfpga/clk-periph-a10.c | 130 ++++++++++++++++++-
 drivers/clk/socfpga/clk-pll-a10.c    | 143 ++++++++++++++++++++-
 drivers/clk/socfpga/clk.c            |  11 +-
 drivers/clk/socfpga/clk.h            |  90 +++++++++++++-
 6 files changed, 572 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/socfpga/clk-gate-a10.c
 create mode 100644 drivers/clk/socfpga/clk-periph-a10.c
 create mode 100644 drivers/clk/socfpga/clk-pll-a10.c
 create mode 100644 drivers/clk/socfpga/clk.h

diff --git a/drivers/clk/socfpga/Makefile b/drivers/clk/socfpga/Makefile
index fc216adb744e..341e6433e560 100644
--- a/drivers/clk/socfpga/Makefile
+++ b/drivers/clk/socfpga/Makefile
@@ -1 +1,3 @@
 obj-y	+= clk.o
+
+obj-$(CONFIG_ARCH_SOCFPGA_ARRIA10) += clk-gate-a10.o clk-periph-a10.o clk-pll-a10.o
diff --git a/drivers/clk/socfpga/clk-gate-a10.c b/drivers/clk/socfpga/clk-gate-a10.c
new file mode 100644
index 000000000000..07f6026c2e8d
--- /dev/null
+++ b/drivers/clk/socfpga/clk-gate-a10.c
@@ -0,0 +1,197 @@
+/*
+ * Copyright (C) 2015 Altera Corporation. All rights reserved
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <malloc.h>
+#include <regmap.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <mach/arria10-regs.h>
+#include <mach/arria10-system-manager.h>
+
+#include "clk.h"
+
+#define to_socfpga_gate_clk(p) container_of(p, struct socfpga_gate_clk, clk)
+
+/* SDMMC Group for System Manager defines */
+#define SYSMGR_SDMMCGRP_CTRL_OFFSET	0x28
+
+static unsigned long socfpga_gate_clk_recalc_rate(struct clk *clk,
+	unsigned long parent_rate)
+{
+	struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(clk);
+	u32 div = 1, val;
+
+	if (socfpgaclk->fixed_div)
+		div = socfpgaclk->fixed_div;
+	else if (socfpgaclk->div_reg) {
+		val = readl(socfpgaclk->div_reg) >> socfpgaclk->shift;
+		val &= GENMASK(socfpgaclk->width - 1, 0);
+		div = (1 << val);
+	}
+
+	return parent_rate / div;
+}
+
+static int socfpga_clk_prepare(struct clk *clk)
+{
+	struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(clk);
+	int i;
+	u32 hs_timing;
+	u32 clk_phase[2];
+
+	if (socfpgaclk->clk_phase[0] || socfpgaclk->clk_phase[1]) {
+		for (i = 0; i < ARRAY_SIZE(clk_phase); i++) {
+			switch (socfpgaclk->clk_phase[i]) {
+			case 0:
+				clk_phase[i] = 0;
+				break;
+			case 45:
+				clk_phase[i] = 1;
+				break;
+			case 90:
+				clk_phase[i] = 2;
+				break;
+			case 135:
+				clk_phase[i] = 3;
+				break;
+			case 180:
+				clk_phase[i] = 4;
+				break;
+			case 225:
+				clk_phase[i] = 5;
+				break;
+			case 270:
+				clk_phase[i] = 6;
+				break;
+			case 315:
+				clk_phase[i] = 7;
+				break;
+			default:
+				clk_phase[i] = 0;
+				break;
+			}
+		}
+
+		hs_timing = SYSMGR_SDMMC_CTRL_SET(clk_phase[0], clk_phase[1]);
+		writel(hs_timing, ARRIA10_SYSMGR_SDMMC);
+	}
+	return 0;
+}
+
+static int clk_socfpga_enable(struct clk *clk)
+{
+	struct socfpga_gate_clk *socfpga_clk = to_socfpga_gate_clk(clk);
+	u32 val;
+
+	socfpga_clk_prepare(clk);
+
+	val = readl(socfpga_clk->reg);
+	val |= 1 << socfpga_clk->bit_idx;
+	writel(val, socfpga_clk->reg);
+
+	return 0;
+}
+
+static void clk_socfpga_disable(struct clk *clk)
+{
+	struct socfpga_gate_clk *socfpga_clk = to_socfpga_gate_clk(clk);
+	u32 val;
+
+	val = readl(socfpga_clk->reg);
+	val &= ~(1 << socfpga_clk->shift);
+	writel(val, socfpga_clk->reg);
+}
+
+static struct clk_ops gateclk_ops = {
+	.recalc_rate = socfpga_gate_clk_recalc_rate,
+};
+
+static struct clk *__socfpga_gate_init(struct device_node *node,
+	const struct clk_ops *ops)
+{
+	u32 clk_gate[2];
+	u32 div_reg[3];
+	u32 clk_phase[2];
+	u32 fixed_div;
+	struct socfpga_gate_clk *socfpga_clk;
+	const char *clk_name = node->name;
+	int rc;
+	int i;
+
+	socfpga_clk = xzalloc(sizeof(*socfpga_clk));
+
+	rc = of_property_read_u32_array(node, "clk-gate", clk_gate, 2);
+	if (rc)
+		clk_gate[0] = 0;
+
+	if (clk_gate[0]) {
+		socfpga_clk->reg = clk_mgr_base_addr + clk_gate[0];
+		socfpga_clk->bit_idx = clk_gate[1];
+
+		gateclk_ops.enable = clk_socfpga_enable;
+		gateclk_ops.disable = clk_socfpga_disable;
+	}
+
+	rc = of_property_read_u32(node, "fixed-divider", &fixed_div);
+	if (rc)
+		socfpga_clk->fixed_div = 0;
+	else
+		socfpga_clk->fixed_div = fixed_div;
+
+	rc = of_property_read_u32_array(node, "div-reg", div_reg, 3);
+	if (!rc) {
+		socfpga_clk->div_reg = clk_mgr_base_addr + div_reg[0];
+		socfpga_clk->shift = div_reg[1];
+		socfpga_clk->width = div_reg[2];
+	} else {
+		socfpga_clk->div_reg = NULL;
+	}
+
+	rc = of_property_read_u32_array(node, "clk-phase", clk_phase, 2);
+	if (!rc) {
+		socfpga_clk->clk_phase[0] = clk_phase[0];
+		socfpga_clk->clk_phase[1] = clk_phase[1];
+	}
+
+	of_property_read_string(node, "clock-output-names", &clk_name);
+
+	socfpga_clk->clk.name = xstrdup(clk_name);
+	socfpga_clk->clk.ops = ops;
+
+	for (i = 0; i < SOCFPGA_MAX_PARENTS; i++) {
+		socfpga_clk->parent_names[i] = of_clk_get_parent_name(node, i);
+		if (!socfpga_clk->parent_names[i])
+			break;
+	}
+
+	socfpga_clk->clk.num_parents = i;
+	socfpga_clk->clk.parent_names = socfpga_clk->parent_names;
+
+	rc = clk_register(&socfpga_clk->clk);
+	if (rc) {
+		free(socfpga_clk);
+		return ERR_PTR(rc);
+	}
+
+	return &socfpga_clk->clk;
+}
+
+struct clk *socfpga_a10_gate_init(struct device_node *node)
+{
+	return __socfpga_gate_init(node, &gateclk_ops);
+}
diff --git a/drivers/clk/socfpga/clk-periph-a10.c b/drivers/clk/socfpga/clk-periph-a10.c
new file mode 100644
index 000000000000..9dd7fc9c2552
--- /dev/null
+++ b/drivers/clk/socfpga/clk-periph-a10.c
@@ -0,0 +1,130 @@
+/*
+ * Copyright (C) 2015 Altera Corporation. All rights reserved
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+
+#include "clk.h"
+
+#define CLK_MGR_FREE_SHIFT		16
+#define CLK_MGR_FREE_MASK		0x7
+
+#define SOCFPGA_MPU_FREE_CLK		"mpu_free_clk"
+#define SOCFPGA_NOC_FREE_CLK		"noc_free_clk"
+#define SOCFPGA_SDMMC_FREE_CLK		"sdmmc_free_clk"
+#define to_socfpga_periph_clk(p) container_of(p, struct socfpga_periph_clk, clk)
+
+static unsigned long clk_periclk_recalc_rate(struct clk *clk,
+					     unsigned long parent_rate)
+{
+	struct socfpga_periph_clk *socfpgaclk = to_socfpga_periph_clk(clk);
+	u32 div;
+
+	if (socfpgaclk->fixed_div) {
+		div = socfpgaclk->fixed_div;
+	} else if (socfpgaclk->div_reg) {
+		div = readl(socfpgaclk->div_reg) >> socfpgaclk->shift;
+		div &= GENMASK(socfpgaclk->width - 1, 0);
+		div += 1;
+	} else {
+		div = ((readl(socfpgaclk->reg) & 0x7ff) + 1);
+	}
+
+	return parent_rate / div;
+}
+
+static int clk_periclk_get_parent(struct clk *clk)
+{
+	struct socfpga_periph_clk *socfpgaclk = to_socfpga_periph_clk(clk);
+	u32 clk_src;
+
+	clk_src = readl(socfpgaclk->reg);
+	if (streq(clk->name, SOCFPGA_MPU_FREE_CLK) ||
+	    streq(clk->name, SOCFPGA_NOC_FREE_CLK) ||
+	    streq(clk->name, SOCFPGA_SDMMC_FREE_CLK))
+		return (clk_src >> CLK_MGR_FREE_SHIFT) &
+			CLK_MGR_FREE_MASK;
+	else
+		return 0;
+}
+
+static const struct clk_ops periclk_ops = {
+	.recalc_rate = clk_periclk_recalc_rate,
+	.get_parent = clk_periclk_get_parent,
+};
+
+static struct clk *__socfpga_periph_init(struct device_node *node,
+	const struct clk_ops *ops)
+{
+	u32 reg;
+	struct socfpga_periph_clk *periph_clk;
+	const char *clk_name = node->name;
+	int rc;
+	u32 fixed_div;
+	u32 div_reg[3];
+	int i;
+
+	of_property_read_u32(node, "reg", &reg);
+
+	periph_clk = xzalloc(sizeof(*periph_clk));
+
+	periph_clk->reg = clk_mgr_base_addr + reg;
+
+	rc = of_property_read_u32_array(node, "div-reg", div_reg, 3);
+	if (!rc) {
+		periph_clk->div_reg = clk_mgr_base_addr + div_reg[0];
+		periph_clk->shift = div_reg[1];
+		periph_clk->width = div_reg[2];
+	} else {
+		periph_clk->div_reg = NULL;
+	}
+
+	rc = of_property_read_u32(node, "fixed-divider", &fixed_div);
+	if (rc)
+		periph_clk->fixed_div = 0;
+	else
+		periph_clk->fixed_div = fixed_div;
+
+	of_property_read_string(node, "clock-output-names", &clk_name);
+
+	for (i = 0; i < SOCFPGA_MAX_PARENTS; i++) {
+		periph_clk->parent_names[i] = of_clk_get_parent_name(node, i);
+		if (!periph_clk->parent_names[i])
+			break;
+	}
+
+	periph_clk->clk.num_parents = i;
+	periph_clk->clk.parent_names = periph_clk->parent_names;
+
+	periph_clk->clk.name = xstrdup(clk_name);
+	periph_clk->clk.ops = ops;
+
+	rc = clk_register(&periph_clk->clk);
+	if (rc) {
+		free(periph_clk);
+		return ERR_PTR(rc);
+	}
+
+	return &periph_clk->clk;
+}
+
+struct clk *socfpga_a10_periph_init(struct device_node *node)
+{
+	return __socfpga_periph_init(node, &periclk_ops);
+}
diff --git a/drivers/clk/socfpga/clk-pll-a10.c b/drivers/clk/socfpga/clk-pll-a10.c
new file mode 100644
index 000000000000..4dae3e537bc2
--- /dev/null
+++ b/drivers/clk/socfpga/clk-pll-a10.c
@@ -0,0 +1,143 @@
+/*
+ * Copyright (C) 2015 Altera Corporation. All rights reserved
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+#include <common.h>
+#include <io.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <asm-generic/div64.h>
+
+#include "clk.h"
+
+/* Clock Manager offsets */
+#define CLK_MGR_PLL_CLK_SRC_SHIFT	8
+#define CLK_MGR_PLL_CLK_SRC_MASK	0x3
+
+/* Clock bypass bits */
+#define SOCFPGA_PLL_BG_PWRDWN		0
+#define SOCFPGA_PLL_PWR_DOWN		1
+#define SOCFPGA_PLL_EXT_ENA		2
+#define SOCFPGA_PLL_DIVF_MASK		0x00001FFF
+#define SOCFPGA_PLL_DIVF_SHIFT	0
+#define SOCFPGA_PLL_DIVQ_MASK		0x003F0000
+#define SOCFPGA_PLL_DIVQ_SHIFT	16
+#define SOCFGPA_MAX_PARENTS	5
+
+#define SOCFPGA_MAIN_PLL_CLK		"main_pll"
+#define SOCFPGA_PERIP_PLL_CLK		"periph_pll"
+
+#define to_socfpga_clk(p) container_of(p, struct socfpga_pll, clk)
+
+static unsigned long clk_pll_recalc_rate(struct clk *clk,
+					 unsigned long parent_rate)
+{
+	struct socfpga_pll *socfpgaclk = to_socfpga_clk(clk);
+	unsigned long divf, divq, reg;
+	unsigned long long vco_freq;
+
+	/* read VCO1 reg for numerator and denominator */
+	reg = readl(socfpgaclk->reg + 0x4);
+	divf = (reg & SOCFPGA_PLL_DIVF_MASK) >> SOCFPGA_PLL_DIVF_SHIFT;
+	divq = (reg & SOCFPGA_PLL_DIVQ_MASK) >> SOCFPGA_PLL_DIVQ_SHIFT;
+	vco_freq = (unsigned long long)parent_rate * (divf + 1);
+	do_div(vco_freq, (1 + divq));
+	return (unsigned long)vco_freq;
+}
+
+static int clk_pll_get_parent(struct clk *clk)
+{
+	struct socfpga_pll *socfpgaclk = to_socfpga_clk(clk);
+	u32 pll_src;
+
+	pll_src = readl(socfpgaclk->reg);
+
+	return (pll_src >> CLK_MGR_PLL_CLK_SRC_SHIFT) &
+		CLK_MGR_PLL_CLK_SRC_MASK;
+}
+
+static int clk_socfpga_enable(struct clk *clk)
+{
+	struct socfpga_pll *socfpga_clk = to_socfpga_clk(clk);
+	u32 val;
+
+	val = readl(socfpga_clk->reg);
+	val |= 1 << socfpga_clk->bit_idx;
+	writel(val, socfpga_clk->reg);
+
+	return 0;
+}
+
+static void clk_socfpga_disable(struct clk *clk)
+{
+	struct socfpga_pll *socfpga_clk = to_socfpga_clk(clk);
+	u32 val;
+
+	val = readl(socfpga_clk->reg);
+	val &= ~(1 << socfpga_clk->bit_idx);
+	writel(val, socfpga_clk->reg);
+}
+
+static struct clk_ops clk_pll_ops = {
+	.recalc_rate = clk_pll_recalc_rate,
+	.get_parent = clk_pll_get_parent,
+};
+
+static struct clk *__socfpga_pll_init(struct device_node *node,
+	const struct clk_ops *ops)
+{
+	u32 reg;
+	struct socfpga_pll *pll_clk;
+	const char *clk_name = node->name;
+	int rc;
+	int i;
+
+	of_property_read_u32(node, "reg", &reg);
+
+	pll_clk = xzalloc(sizeof(*pll_clk));
+
+	pll_clk->reg = clk_mgr_base_addr + reg;
+
+	of_property_read_string(node, "clock-output-names", &clk_name);
+
+	pll_clk->clk.name = xstrdup(clk_name);
+	pll_clk->clk.ops = ops;
+
+	for (i = 0; i < SOCFPGA_MAX_PARENTS; i++) {
+		pll_clk->parent_names[i] = of_clk_get_parent_name(node, i);
+		if (!pll_clk->parent_names[i])
+			break;
+	}
+
+	pll_clk->bit_idx = SOCFPGA_PLL_EXT_ENA;
+	pll_clk->clk.num_parents = i;
+	pll_clk->clk.parent_names = pll_clk->parent_names;
+
+	clk_pll_ops.enable = clk_socfpga_enable;
+	clk_pll_ops.disable = clk_socfpga_disable;
+
+	rc = clk_register(&pll_clk->clk);
+	if (rc) {
+		free(pll_clk);
+		return NULL;
+	}
+
+	return &pll_clk->clk;
+}
+
+struct clk *socfpga_a10_pll_init(struct device_node *node)
+{
+	return __socfpga_pll_init(node, &clk_pll_ops);
+}
diff --git a/drivers/clk/socfpga/clk.c b/drivers/clk/socfpga/clk.c
index 6af0632cafc2..ade608ffe314 100644
--- a/drivers/clk/socfpga/clk.c
+++ b/drivers/clk/socfpga/clk.c
@@ -12,6 +12,7 @@
  */
 
 #include <common.h>
+#include <debug_ll.h>
 #include <init.h>
 #include <driver.h>
 #include <linux/clk.h>
@@ -20,6 +21,8 @@
 #include <linux/clkdev.h>
 #include <linux/err.h>
 
+#include "clk.h"
+
 /* Clock Manager offsets */
 #define CLKMGR_CTRL	0x0
 #define CLKMGR_BYPASS	0x4
@@ -52,7 +55,7 @@
 #define div_mask(width)	((1 << (width)) - 1)
 #define streq(a, b) (strcmp((a), (b)) == 0)
 
-static void __iomem *clk_mgr_base_addr;
+void __iomem *clk_mgr_base_addr;
 
 struct clk_pll {
 	struct clk clk;
@@ -385,6 +388,12 @@ static void socfpga_register_clocks(struct device_d *dev, struct device_node *no
 		clk = socfpga_periph_clk(node);
 	else if (of_device_is_compatible(node, "altr,socfpga-gate-clk"))
 		clk = socfpga_gate_clk(node);
+	else if (of_device_is_compatible(node, "altr,socfpga-a10-pll-clock"))
+		clk = socfpga_a10_pll_init(node);
+	else if (of_device_is_compatible(node, "altr,socfpga-a10-perip-clk"))
+		clk = socfpga_a10_periph_init(node);
+	else if (of_device_is_compatible(node, "altr,socfpga-a10-gate-clk"))
+		clk = socfpga_a10_gate_init(node);
 	else
 		return;
 
diff --git a/drivers/clk/socfpga/clk.h b/drivers/clk/socfpga/clk.h
new file mode 100644
index 000000000000..6d6c28344df4
--- /dev/null
+++ b/drivers/clk/socfpga/clk.h
@@ -0,0 +1,90 @@
+/*
+ * Copyright (c) 2013, Steffen Trumtrar <s.trumtrar@pengutronix.de>
+ *
+ * based on drivers/clk/tegra/clk.h
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ */
+
+#ifndef __SOCFPGA_CLK_H
+#define __SOCFPGA_CLK_H
+
+#include <linux/clk.h>
+
+/* Clock Manager offsets */
+#define CLKMGR_CTRL		0x0
+#define CLKMGR_BYPASS		0x4
+#define CLKMGR_DBCTRL		0x10
+#define CLKMGR_L4SRC		0x70
+#define CLKMGR_PERPLL_SRC	0xAC
+
+#define SOCFPGA_MAX_PARENTS		5
+
+#define streq(a, b) (strcmp((a), (b)) == 0)
+
+extern void __iomem *clk_mgr_base_addr;
+
+void __init socfpga_pll_init(struct device_node *node);
+void __init socfpga_periph_init(struct device_node *node);
+void __init socfpga_gate_init(struct device_node *node);
+
+#ifdef CONFIG_ARCH_SOCFPGA_ARRIA10
+struct clk *socfpga_a10_pll_init(struct device_node *node);
+struct clk *socfpga_a10_periph_init(struct device_node *node);
+struct clk *socfpga_a10_gate_init(struct device_node *node);
+#else
+struct clk *socfpga_a10_pll_init(struct device_node *node)
+{
+	return ERR_PTR(-ENOSYS);
+}
+struct clk *socfpga_a10_periph_init(struct device_node *node)
+{
+	return ERR_PTR(-ENOSYS);
+}
+struct clk *socfpga_a10_gate_init(struct device_node *node)
+{
+	return ERR_PTR(-ENOSYS);
+}
+#endif
+
+struct socfpga_pll {
+	struct clk clk;
+	void __iomem *reg;
+	u32 bit_idx;
+	const char *parent_names[SOCFPGA_MAX_PARENTS];
+};
+
+struct socfpga_gate_clk {
+	struct clk clk;
+	char *parent_name;
+	u32 fixed_div;
+	void __iomem *div_reg;
+	struct regmap *sys_mgr_base_addr;
+	u32 width;	/* only valid if div_reg != 0 */
+	u32 shift;	/* only valid if div_reg != 0 */
+	u32 bit_idx;
+	void __iomem *reg;
+	u32 clk_phase[2];
+	const char *parent_names[SOCFPGA_MAX_PARENTS];
+};
+
+struct socfpga_periph_clk {
+	struct clk clk;
+	void __iomem *reg;
+	char *parent_name;
+	u32 fixed_div;
+	void __iomem *div_reg;
+	u32 width;      /* only valid if div_reg != 0 */
+	u32 shift;      /* only valid if div_reg != 0 */
+	const char *parent_names[SOCFPGA_MAX_PARENTS];
+};
+
+#endif /* SOCFPGA_CLK_H */
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
