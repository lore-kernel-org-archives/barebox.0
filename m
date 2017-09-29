Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dy3X6-0006M4-Mf
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 22:13:25 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sat, 30 Sep 2017 00:12:44 +0200
Message-Id: <20170929221245.8653-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 1/2] clk: add ar9344 clock driver
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/clk/Makefile     |   3 +-
 drivers/clk/clk-ar9344.c | 148 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 150 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/clk-ar9344.c

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index b5abe1cdf..ddd971c60 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_ARCH_MXS)		+= mxs/
 obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_ARCH_TEGRA)	+= tegra/
 obj-$(CONFIG_CLK_SOCFPGA)	+= socfpga/
-obj-$(CONFIG_MACH_MIPS_ATH79)	+= clk-ar933x.o
+obj-$(CONFIG_SOC_QCA_AR9331)	+= clk-ar933x.o
+obj-$(CONFIG_SOC_QCA_AR9344)	+= clk-ar9344.o
 obj-$(CONFIG_ARCH_IMX)		+= imx/
 obj-$(CONFIG_COMMON_CLK_AT91)	+= at91/
diff --git a/drivers/clk/clk-ar9344.c b/drivers/clk/clk-ar9344.c
new file mode 100644
index 000000000..c3c49fb10
--- /dev/null
+++ b/drivers/clk/clk-ar9344.c
@@ -0,0 +1,148 @@
+/*
+ * Copyright (C) 2017 Oleksij Rempel <linux@rempel-privat.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
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
+#include <dt-bindings/clock/ath79-clk.h>
+
+#define AR9344_CPU_PLL_CONFIG			0x00
+#define AR9344_DDR_PLL_CONFIG			0x04
+#define AR9344_OUTDIV_M				0x3
+#define AR9344_OUTDIV_S				19
+#define AR9344_REFDIV_M				0x1f
+#define AR9344_REFDIV_S				12
+#define AR9344_NINT_M				0x3f
+#define AR9344_NINT_S				6
+#define AR9344_NFRAC_M				0x3f
+#define AR9344_NFRAC_S				0
+
+
+#define AR9344_CPU_DDR_CLOCK_CONTROL		0x08
+#define AR9344_CPU_FROM_CPUPLL			BIT(20)
+#define AR9344_CPU_PLL_BYPASS			BIT(2)
+#define AR9344_CPU_POST_DIV_M			0x1f
+#define AR9344_CPU_POST_DIV_S			5
+
+static struct clk *clks[ATH79_CLK_END];
+static struct clk_onecell_data clk_data;
+
+struct clk_ar9344 {
+	struct clk clk;
+	void __iomem *base;
+	u32 div_shift;
+	u32 div_mask;
+	const char *parent;
+};
+
+static unsigned long clk_ar9344_recalc_rate(struct clk *clk,
+	unsigned long parent_rate)
+{
+	struct clk_ar9344 *f = container_of(clk, struct clk_ar9344, clk);
+	int outdiv, refdiv, nint, nfrac;
+	int cpu_post_div;
+	u32 clock_ctrl;
+	u32 val;
+
+	clock_ctrl = __raw_readl(f->base + AR9344_CPU_DDR_CLOCK_CONTROL);
+	cpu_post_div = ((clock_ctrl >> AR9344_CPU_POST_DIV_S)
+			& AR9344_CPU_POST_DIV_M) + 1;
+	if (clock_ctrl & AR9344_CPU_PLL_BYPASS) {
+		return parent_rate;
+	} else if (clock_ctrl & AR9344_CPU_FROM_CPUPLL) {
+		val = __raw_readl(f->base + AR9344_CPU_PLL_CONFIG);
+	} else {
+		val = __raw_readl(f->base + AR9344_DDR_PLL_CONFIG);
+	}
+
+	outdiv = (val >> AR9344_OUTDIV_S) & AR9344_OUTDIV_M;
+	refdiv = (val >> AR9344_REFDIV_S) & AR9344_REFDIV_M;
+	nint = (val >> AR9344_NINT_S) & AR9344_NINT_M;
+	nfrac = (val >> AR9344_NFRAC_S) & AR9344_NFRAC_M;
+
+	return (parent_rate * (nint + (nfrac >> 9))) / (refdiv * (1 << outdiv));
+}
+
+struct clk_ops clk_ar9344_ops = {
+	.recalc_rate = clk_ar9344_recalc_rate,
+};
+
+static struct clk *clk_ar9344(const char *name, const char *parent,
+	void __iomem *base)
+{
+	struct clk_ar9344 *f = xzalloc(sizeof(*f));
+
+	f->parent = parent;
+	f->base = base;
+	f->div_shift = 0;
+	f->div_mask = 0;
+
+	f->clk.ops = &clk_ar9344_ops;
+	f->clk.name = name;
+	f->clk.parent_names = &f->parent;
+	f->clk.num_parents = 1;
+
+	clk_register(&f->clk);
+
+	return &f->clk;
+}
+
+static void ar9344_pll_init(void __iomem *base)
+{
+	clks[ATH79_CLK_CPU] = clk_ar9344("cpu", "ref", base);
+}
+
+static int ar9344_clk_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *base;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	base = IOMEM(iores->start);
+
+	ar9344_pll_init(base);
+
+	clk_data.clks = clks;
+	clk_data.clk_num = ARRAY_SIZE(clks);
+	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
+			    &clk_data);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id ar9344_clk_dt_ids[] = {
+	{
+		.compatible = "qca,ar9344-pll",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d ar9344_clk_driver = {
+	.probe	= ar9344_clk_probe,
+	.name	= "ar9344_clk",
+	.of_compatible = DRV_OF_COMPAT(ar9344_clk_dt_ids),
+};
+
+static int ar9344_clk_init(void)
+{
+	return platform_driver_register(&ar9344_clk_driver);
+}
+postcore_initcall(ar9344_clk_init);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
