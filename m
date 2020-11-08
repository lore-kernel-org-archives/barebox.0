Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kblGU-0000Ae-UJ
 for barebox@lists.infradead.org; Sun, 08 Nov 2020 14:01:56 +0000
Received: by mail-qk1-x743.google.com with SMTP id n132so4511361qke.1
 for <barebox@lists.infradead.org>; Sun, 08 Nov 2020 06:01:54 -0800 (PST)
From: Du Huanpeng <u74147@gmail.com>
Date: Sun,  8 Nov 2020 22:01:38 +0800
Message-Id: <1604844099-27647-3-git-send-email-u74147@gmail.com>
In-Reply-To: <1604844099-27647-1-git-send-email-u74147@gmail.com>
References: <1604844099-27647-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH 2/3] clk: ls1b200: add clk driver for loongson 1b
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

add "pll" and "oscillator" node to devicetree.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 arch/mips/dts/loongson-ls1b.dts          |   6 ++
 arch/mips/dts/ls1b.dtsi                  |   9 ++
 drivers/clk/Makefile                     |   1 +
 drivers/clk/loongson/Makefile            |   2 +
 drivers/clk/loongson/clk-ls1b200.c       | 151 +++++++++++++++++++++++++++++++
 dts/include/dt-bindings/clock/ls1b-clk.h |  21 +++++
 6 files changed, 190 insertions(+)
 create mode 100644 drivers/clk/loongson/Makefile
 create mode 100644 drivers/clk/loongson/clk-ls1b200.c
 create mode 100644 dts/include/dt-bindings/clock/ls1b-clk.h

diff --git a/arch/mips/dts/loongson-ls1b.dts b/arch/mips/dts/loongson-ls1b.dts
index 6b53311..89cce56 100644
--- a/arch/mips/dts/loongson-ls1b.dts
+++ b/arch/mips/dts/loongson-ls1b.dts
@@ -6,6 +6,12 @@
 	model = "Loongson Tech LS1B Demo Board";
 	compatible = "loongson,ls1b";
 
+	oscillator: oscillator {
+			#clock-cells = <0>;
+			compatible = "fixed-clock";
+			clock-frequency = <33000000>;
+	};
+
 	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x4000000>;
diff --git a/arch/mips/dts/ls1b.dtsi b/arch/mips/dts/ls1b.dtsi
index cb85814..8b772af 100644
--- a/arch/mips/dts/ls1b.dtsi
+++ b/arch/mips/dts/ls1b.dtsi
@@ -1,3 +1,5 @@
+#include <dt-bindings/clock/ls1b-clk.h>
+
 / {
 	#address-cells = <1>;
 	#size-cells = <1>;
@@ -40,5 +42,12 @@
 			clock-frequency = <83000000>;
 			status = "disabled";
 		};
+
+		pll: pll@1fe78030 {
+			compatible = "loongson,ls1b-pll";
+			#clock-cells = <1>;
+			reg = <0x1fe78030 0x8>;
+			clocks = <&oscillator>;
+		};
 	};
 };
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 0903274..04c797e 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -19,4 +19,5 @@ obj-$(CONFIG_ARCH_IMX)		+= imx/
 obj-$(CONFIG_COMMON_CLK_AT91)	+= at91/
 obj-$(CONFIG_ARCH_STM32MP)	+= clk-stm32mp1.o
 obj-$(CONFIG_MACH_VEXPRESS)	+= vexpress/
+obj-$(CONFIG_MACH_MIPS_LOONGSON)+= loongson/
 obj-$(CONFIG_ARCH_LAYERSCAPE)	+= clk-qoric.o
diff --git a/drivers/clk/loongson/Makefile b/drivers/clk/loongson/Makefile
new file mode 100644
index 0000000..dd76b25
--- /dev/null
+++ b/drivers/clk/loongson/Makefile
@@ -0,0 +1,2 @@
+obj-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) += clk-ls1b200.o
+
diff --git a/drivers/clk/loongson/clk-ls1b200.c b/drivers/clk/loongson/clk-ls1b200.c
new file mode 100644
index 0000000..66f8e26
--- /dev/null
+++ b/drivers/clk/loongson/clk-ls1b200.c
@@ -0,0 +1,151 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Based on the ath79 clock code by Antony Pavlov <antonynpavlov@gmail.com>
+ *  Barebox drivers/clk/clk-ar933x.c
+ *
+ * Copyright (C) 2020 Du Huanpeng <u74147@gmail.com>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+
+#include <dt-bindings/clock/ls1b-clk.h>
+
+#define LS1B_CPU_DIV_SHIFT	20
+#define LS1B_CPU_DIV_WIDTH	4
+
+#define LS1B_DDR_DIV_SHIFT	14
+#define LS1B_DDR_DIV_WIDTH	4
+
+#define LS1B_DC_DIV_SHIFT	26
+#define LS1B_DC_DIV_WIDTH	4
+
+#define LS1B_CLK_APB_MULT	1
+#define LS1B_CLK_APB_DIV2	2
+
+/* register offset */
+#define PLL_FREQ	0
+#define PLL_DIV_PARAM	4
+
+static struct clk *clks[LS1B_CLK_END];
+static struct clk_onecell_data clk_data;
+
+struct clk_ls1b200 {
+	struct clk clk;
+	void __iomem *base;
+	int div_shift;
+	int div_mask;
+	const char *parent;
+};
+
+static unsigned long clk_ls1b200_recalc_rate(struct clk *clk, unsigned long parent_rate)
+{
+	int n;
+	unsigned long rate;
+	int pll_freq;
+	struct clk_ls1b200 *ls1bclk;
+
+	ls1bclk = container_of(clk, struct clk_ls1b200, clk);
+	pll_freq = __raw_readl(ls1bclk->base);
+
+	n  = 12 * 1024;
+	n += (pll_freq & 0x3F) * 1024;
+	n += (pll_freq >> 8) & 0x3FF;
+
+	rate = parent_rate / 2 / 1024;
+	/* avoid overflow. */
+	rate *= n;
+
+	return rate;
+}
+
+struct clk_ops clk_ls1b200_ops = {
+	.recalc_rate = clk_ls1b200_recalc_rate,
+};
+
+static struct clk *clk_ls1b200(const char *name, const char *parent,
+	void __iomem *base, int div_shift, int div_mask)
+{
+	struct clk_ls1b200 *f = xzalloc(sizeof(struct clk_ls1b200));
+
+	f->parent = parent;
+	f->base = base;
+	f->div_shift = div_shift;
+	f->div_mask = div_mask;
+
+	f->clk.ops = &clk_ls1b200_ops;
+	f->clk.name = name;
+	f->clk.parent_names = &f->parent;
+	f->clk.num_parents = 1;
+
+	clk_register(&f->clk);
+
+	return &f->clk;
+}
+
+static const char * const cpu_mux[] = {"cpu_div", "oscillator", };
+static const char * const ddr_mux[] = {"ddr_div", "oscillator", };
+static const char * const dc_mux[]  = {"dc_div", "oscillator", };
+
+static void ls1b200_pll_init(void __iomem *base)
+{
+	clks[LS1B_CLK_PLL] = clk_ls1b200("pll", "oscillator", base + PLL_FREQ, 0, 0);
+
+	clks[LS1B_CLK_CPU_DIV] = clk_divider("cpu_div", "pll", 0,
+		base + PLL_DIV_PARAM, LS1B_CPU_DIV_SHIFT, LS1B_CPU_DIV_WIDTH, CLK_DIVIDER_ONE_BASED);
+	clks[LS1B_CLK_CPU_MUX] = clk_mux("cpu_mux", 0, base + PLL_DIV_PARAM,
+		8, 1, cpu_mux,  ARRAY_SIZE(cpu_mux), 0);
+
+	clks[LS1B_CLK_DDR_DIV] = clk_divider("ddr_div", "pll", 0,
+		base + PLL_DIV_PARAM, LS1B_DDR_DIV_SHIFT, LS1B_DDR_DIV_WIDTH, CLK_DIVIDER_ONE_BASED);
+	clks[LS1B_CLK_DDR_MUX] = clk_mux("ddr_mux", 0, base + PLL_DIV_PARAM,
+		10, 1, ddr_mux,  ARRAY_SIZE(ddr_mux), 0);
+	clks[LS1B_CLK_APB_DIV] = clk_fixed_factor("apb_div", "ddr_mux", LS1B_CLK_APB_MULT, LS1B_CLK_APB_DIV2, 0);
+
+	clks[LS1B_CLK_DIV4] = clk_fixed_factor("dc_div4", "pll", 1, 4, 0);
+
+	clks[LS1B_CLK_DC_DIV] = clk_divider("dc_div", "dc_div4", 0,
+		base + PLL_DIV_PARAM, LS1B_DC_DIV_SHIFT, LS1B_DC_DIV_WIDTH, CLK_DIVIDER_ONE_BASED);
+	clks[LS1B_CLK_DC_MUX] = clk_mux("dc_mux", 0, base + PLL_DIV_PARAM,
+		10, 1, dc_mux,  ARRAY_SIZE(dc_mux), 0);
+}
+
+static int ls1b200_clk_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *base;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	base = IOMEM(iores->start);
+
+	/* now got the controller base address */
+	ls1b200_pll_init(base);
+
+	clk_data.clks = clks;
+	clk_data.clk_num = ARRAY_SIZE(clks);
+	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id ls1b200_clk_dt_ids[] = {
+	{
+		.compatible = "loongson,ls1b-pll",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d ls1b200_clk_driver = {
+	.probe	= ls1b200_clk_probe,
+	.name	= "ls1b-clk",
+	.of_compatible = DRV_OF_COMPAT(ls1b200_clk_dt_ids),
+};
+
+postcore_platform_driver(ls1b200_clk_driver);
diff --git a/dts/include/dt-bindings/clock/ls1b-clk.h b/dts/include/dt-bindings/clock/ls1b-clk.h
new file mode 100644
index 0000000..2277225
--- /dev/null
+++ b/dts/include/dt-bindings/clock/ls1b-clk.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 Du Huanpeng <u74147@gmail.com>
+ */
+
+#ifndef __DT_BINDINGS_LS1B_CLK_H
+#define __DT_BINDINGS_LS1B_CLK_H
+
+#define LS1B_CLK_PLL		0
+#define LS1B_CLK_CPU_DIV	1
+#define LS1B_CLK_CPU_MUX	2
+#define LS1B_CLK_DDR_DIV	3
+#define LS1B_CLK_DDR_MUX	4
+#define LS1B_CLK_APB_DIV	5
+#define LS1B_CLK_DC_DIV		6
+#define LS1B_CLK_DIV4		7
+#define LS1B_CLK_DC_MUX		8
+
+#define LS1B_CLK_END		9
+
+#endif /* __DT_BINDINGS_LS1B_CLK_H */
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
