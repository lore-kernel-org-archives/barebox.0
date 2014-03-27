Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTHpe-00025v-BA
 for barebox@lists.infradead.org; Thu, 27 Mar 2014 21:27:29 +0000
Received: by mail-lb0-f170.google.com with SMTP id s7so3125438lbd.29
 for <barebox@lists.infradead.org>; Thu, 27 Mar 2014 14:27:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Mar 2014 01:26:40 +0400
Message-Id: <1395955604-12826-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
References: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 5/9] clk: add Atheros AR933x driver
To: barebox@lists.infradead.org

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/clk/Makefile                   |   1 +
 drivers/clk/clk-ar933x.c               | 175 +++++++++++++++++++++++++++++++++
 include/dt-bindings/clock/ar933x-clk.h |  22 +++++
 3 files changed, 198 insertions(+)

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index f5c0592..b4b5414 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_ARCH_MVEBU)	+= mvebu/
 obj-$(CONFIG_ARCH_MXS)		+= mxs/
 obj-$(CONFIG_ARCH_TEGRA)	+= tegra/
 obj-$(CONFIG_CLK_SOCFPGA)	+= socfpga.o
+obj-$(CONFIG_MACH_MIPS_ATH79)	+= clk-ar933x.o
diff --git a/drivers/clk/clk-ar933x.c b/drivers/clk/clk-ar933x.c
new file mode 100644
index 0000000..f9701ae
--- /dev/null
+++ b/drivers/clk/clk-ar933x.c
@@ -0,0 +1,175 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * Based on the Linux Tegra clock code
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program. If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+
+#include <mach/ath79.h>
+#include <dt-bindings/clock/ar933x-clk.h>
+
+static struct clk *clks[AR933X_CLK_END];
+static struct clk_onecell_data clk_data;
+
+struct clk_ar933x {
+	struct clk clk;
+	void __iomem *base;
+	u32 div_shift;
+	u32 div_mask;
+	const char *parent;
+};
+
+static unsigned long clk_ar933x_recalc_rate(struct clk *clk,
+	unsigned long parent_rate)
+{
+	struct clk_ar933x *f = container_of(clk, struct clk_ar933x, clk);
+	unsigned long rate;
+	unsigned long freq;
+	u32 clock_ctrl;
+	u32 cpu_config;
+	u32 t;
+
+	clock_ctrl = __raw_readl(f->base + AR933X_PLL_CLOCK_CTRL_REG);
+
+	if (clock_ctrl & AR933X_PLL_CLOCK_CTRL_BYPASS) {
+		rate = parent_rate;
+	} else {
+		cpu_config = __raw_readl(f->base + AR933X_PLL_CPU_CONFIG_REG);
+
+		t = (cpu_config >> AR933X_PLL_CPU_CONFIG_REFDIV_SHIFT) &
+		    AR933X_PLL_CPU_CONFIG_REFDIV_MASK;
+		freq = parent_rate / t;
+
+		t = (cpu_config >> AR933X_PLL_CPU_CONFIG_NINT_SHIFT) &
+		    AR933X_PLL_CPU_CONFIG_NINT_MASK;
+		freq *= t;
+
+		t = (cpu_config >> AR933X_PLL_CPU_CONFIG_OUTDIV_SHIFT) &
+		    AR933X_PLL_CPU_CONFIG_OUTDIV_MASK;
+		if (t == 0)
+			t = 1;
+
+		freq >>= t;
+
+		t = ((clock_ctrl >> f->div_shift) & f->div_mask) + 1;
+		rate = freq / t;
+	}
+
+	return rate;
+}
+
+struct clk_ops clk_ar933x_ops = {
+	.recalc_rate = clk_ar933x_recalc_rate,
+};
+
+static struct clk *clk_ar933x(const char *name, const char *parent,
+	void __iomem *base, u32 div_shift, u32 div_mask)
+{
+	struct clk_ar933x *f = xzalloc(sizeof(*f));
+
+	f->parent = parent;
+	f->base = base;
+	f->div_shift = div_shift;
+	f->div_mask = div_mask;
+
+	f->clk.ops = &clk_ar933x_ops;
+	f->clk.name = name;
+	f->clk.parent_names = &f->parent;
+	f->clk.num_parents = 1;
+
+	clk_register(&f->clk);
+
+	return &f->clk;
+}
+
+static void ar933x_ref_clk_init(void __iomem *base)
+{
+	u32 t;
+	unsigned long ref_rate;
+	struct clk *clk;
+	int err;
+
+	t = ath79_reset_rr(AR933X_RESET_REG_BOOTSTRAP);
+	if (t & AR933X_BOOTSTRAP_REF_CLK_40)
+		ref_rate = (40 * 1000 * 1000);
+	else
+		ref_rate = (25 * 1000 * 1000);
+
+	clks[AR933X_CLK_REF] = clk_fixed("ref", ref_rate);
+}
+
+static void ar933x_pll_init(void __iomem *base)
+{
+	clks[AR933X_CLK_UART] = clk_fixed_factor("uart", "ref", 1, 1);
+
+	clks[AR933X_CLK_CPU] = clk_ar933x("cpu", "ref", base,
+		AR933X_PLL_CLOCK_CTRL_CPU_DIV_SHIFT,
+		AR933X_PLL_CLOCK_CTRL_CPU_DIV_MASK);
+
+	clks[AR933X_CLK_DDR] = clk_ar933x("ddr", "ref", base,
+		AR933X_PLL_CLOCK_CTRL_DDR_DIV_SHIFT,
+		AR933X_PLL_CLOCK_CTRL_DDR_DIV_MASK);
+
+	clks[AR933X_CLK_AHB] = clk_ar933x("ahb", "ref", base,
+		AR933X_PLL_CLOCK_CTRL_AHB_DIV_SHIFT,
+		AR933X_PLL_CLOCK_CTRL_AHB_DIV_MASK);
+
+	clks[AR933X_CLK_WDT] = clk_fixed_factor("wdt", "ahb", 1, 1);
+}
+
+static int ar933x_clk_probe(struct device_d *dev)
+{
+	void __iomem *base;
+
+	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -EBUSY;
+
+	ar933x_ref_clk_init(base);
+	ar933x_pll_init(base);
+
+	clk_data.clks = clks;
+	clk_data.clk_num = ARRAY_SIZE(clks);
+	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
+			    &clk_data);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id ar933x_clk_dt_ids[] = {
+	{
+		.compatible = "qca,ar933x-clk",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d ar933x_clk_driver = {
+	.probe	= ar933x_clk_probe,
+	.name	= "ar933x_clk",
+	.of_compatible = DRV_OF_COMPAT(ar933x_clk_dt_ids),
+};
+
+static int ar933x_clk_init(void)
+{
+	return platform_driver_register(&ar933x_clk_driver);
+}
+postcore_initcall(ar933x_clk_init);
diff --git a/include/dt-bindings/clock/ar933x-clk.h b/include/dt-bindings/clock/ar933x-clk.h
new file mode 100644
index 0000000..f048930
--- /dev/null
+++ b/include/dt-bindings/clock/ar933x-clk.h
@@ -0,0 +1,22 @@
+/*
+ * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+
+#ifndef __DT_BINDINGS_AR933X_CLK_H
+#define __DT_BINDINGS_AR933X_CLK_H
+
+#define AR933X_CLK_REF		0
+#define AR933X_CLK_UART		1
+#define AR933X_CLK_CPU		2
+#define AR933X_CLK_DDR		3
+#define AR933X_CLK_AHB		4
+#define AR933X_CLK_WDT		5
+
+#define AR933X_CLK_END		6
+
+#endif /* __DT_BINDINGS_AR933X_CLK_H */
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
