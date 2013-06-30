Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UtOrT-0002dE-EO
 for barebox@lists.infradead.org; Sun, 30 Jun 2013 21:08:49 +0000
Received: from tellur.localdomain (p54832945.dip0.t-ipconnect.de
 [84.131.41.69]) by lynxeye.de (Postfix) with ESMTPA id 78AC726C2002
 for <barebox@lists.infradead.org>; Sun, 30 Jun 2013 23:06:55 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 30 Jun 2013 23:08:48 +0200
Message-Id: <1372626529-23443-6-git-send-email-dev@lynxeye.de>
In-Reply-To: <1372626529-23443-1-git-send-email-dev@lynxeye.de>
References: <1372626529-23443-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 6/7] tegra: add new clock framework driver
To: barebox@lists.infradead.org

This removes the existing Tegra CAR driver and replaces it with code
ported from the Linux clock framework.

In the current state only the relevant PLLs are supported, but this is
no functional regression from the existing code.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/Kconfig                               |   1 +
 arch/arm/mach-tegra/Makefile                   |   1 -
 arch/arm/mach-tegra/include/mach/tegra20-car.h |  36 ++
 arch/arm/mach-tegra/tegra20-car.c              | 120 -------
 drivers/clk/Makefile                           |   1 +
 drivers/clk/tegra/Makefile                     |   6 +
 drivers/clk/tegra/clk-divider.c                | 201 +++++++++++
 drivers/clk/tegra/clk-pll-out.c                | 139 ++++++++
 drivers/clk/tegra/clk-pll.c                    | 451 +++++++++++++++++++++++++
 drivers/clk/tegra/clk-tegra20.c                | 326 ++++++++++++++++++
 drivers/clk/tegra/clk.c                        |  57 ++++
 drivers/clk/tegra/clk.h                        | 127 +++++++
 12 files changed, 1345 insertions(+), 121 deletions(-)
 delete mode 100644 arch/arm/mach-tegra/tegra20-car.c
 create mode 100644 drivers/clk/tegra/Makefile
 create mode 100644 drivers/clk/tegra/clk-divider.c
 create mode 100644 drivers/clk/tegra/clk-pll-out.c
 create mode 100644 drivers/clk/tegra/clk-pll.c
 create mode 100644 drivers/clk/tegra/clk-tegra20.c
 create mode 100644 drivers/clk/tegra/clk.c
 create mode 100644 drivers/clk/tegra/clk.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index af5d8cd..e7d8cdd 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -149,6 +149,7 @@ config ARCH_TEGRA
 	select HAS_DEBUG_LL
 	select BUILTIN_DTB
 	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
 	select CLKDEV_LOOKUP
 	select GPIOLIB
 	select GPIO_TEGRA
diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index f9c771f..fd6a870 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -2,6 +2,5 @@ CFLAGS_tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t
 lwl-y += tegra_avp_init.o
 lwl-y += tegra_maincomplex_init.o
 obj-y += tegra20.o
-obj-y += tegra20-car.o
 obj-y += tegra20-pmc.o
 obj-y += tegra20-timer.o
diff --git a/arch/arm/mach-tegra/include/mach/tegra20-car.h b/arch/arm/mach-tegra/include/mach/tegra20-car.h
index 54c74c7..b770ae3 100644
--- a/arch/arm/mach-tegra/include/mach/tegra20-car.h
+++ b/arch/arm/mach-tegra/include/mach/tegra20-car.h
@@ -82,6 +82,39 @@
 #define CRC_OSC_CTRL_PLL_REF_DIV_SHIFT	28
 #define CRC_OSC_CTRL_PLL_REF_DIV_MASK	(0x3 << CRC_OSC_CTRL_PLL_REF_DIV_SHIFT)
 
+#define CRC_PLL_BASE_LOCK		27
+#define CRC_PLLE_MISC_LOCK		11
+
+#define CRC_PLL_MISC_LOCK_ENABLE	18
+#define CRC_PLLDU_MISC_LOCK_ENABLE	22
+#define CRC_PLLE_MISC_LOCK_ENABLE	9
+
+#define CRC_PLLS_BASE			0x0f0
+#define CRC_PLLS_MISC			0x0f4
+
+#define CRC_PLLC_BASE			0x080
+#define CRC_PLLC_OUT			0x084
+#define CRC_PLLC_MISC			0x08c
+
+#define CRC_PLLM_BASE			0x090
+#define CRC_PLLM_OUT			0x094
+#define CRC_PLLM_MISC			0x09c
+
+#define CRC_PLLP_BASE			0x0a0
+#define CRC_PLLP_OUTA			0x0a4
+#define CRC_PLLP_OUTB			0x0a8
+#define CRC_PLLP_MISC			0x0ac
+
+#define CRC_PLLA_BASE			0x0b0
+#define CRC_PLLA_OUT			0x0b4
+#define CRC_PLLA_MISC			0x0bc
+
+#define CRC_PLLU_BASE			0x0c0
+#define CRC_PLLU_MISC			0x0cc
+
+#define CRC_PLLD_BASE			0x0d0
+#define CRC_PLLD_MISC			0x0dc
+
 #define CRC_PLLX_BASE			0x0e0
 #define CRC_PLLX_BASE_BYPASS		(1 << 31)
 #define CRC_PLLX_BASE_ENABLE		(1 << 30)
@@ -110,6 +143,9 @@
 #define CRC_PLLX_MISC_VCOCON_SHIFT	0
 #define CRC_PLLX_MISC_VCOCON_MASK	(0xf << CRC_PLLX_MISC_VCOCON_SHIFT)
 
+#define CRC_PLLE_BASE			0x0e8
+#define CRC_PLLE_MISC			0x0ec
+
 #define CRC_RST_DEV_L_SET		0x300
 #define CRC_RST_DEV_L_CACHE2		(1 << 31)
 #define CRC_RST_DEV_L_VCP		(1 << 29)
diff --git a/arch/arm/mach-tegra/tegra20-car.c b/arch/arm/mach-tegra/tegra20-car.c
deleted file mode 100644
index 3af7bdc..0000000
--- a/arch/arm/mach-tegra/tegra20-car.c
+++ /dev/null
@@ -1,120 +0,0 @@
-/*
- * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program.  If not, see <http://www.gnu.org/licenses/>.
- */
-
-/**
- * @file
- * @brief Device driver for the Tegra 20 clock and reset (CAR) controller
- */
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <linux/clk.h>
-#include <linux/clkdev.h>
-#include <linux/err.h>
-#include <mach/iomap.h>
-
-#include <mach/tegra20-car.h>
-
-static void __iomem *car_base;
-
-enum tegra20_clks {
-	cpu, ac97 = 3, rtc, timer, uarta, gpio = 8, sdmmc2, i2s1 = 11, i2c1,
-	ndflash, sdmmc1, sdmmc4, twc, pwm, i2s2, epp, gr2d = 21, usbd, isp,
-	gr3d, ide, disp2, disp1, host1x, vcp, cache2 = 31, mem, ahbdma, apbdma,
-	kbc = 36, stat_mon, pmc, fuse, kfuse, sbc1, nor, spi, sbc2, xio, sbc3,
-	dvc, dsi, mipi = 50, hdmi, csi, tvdac, i2c2, uartc, emc = 57, usb2,
-	usb3, mpe, vde, bsea, bsev, speedo, uartd, uarte, i2c3, sbc4, sdmmc3,
-	pex, owr, afi, csite, pcie_xclk, avpucq = 75, la, irama = 84, iramb,
-	iramc, iramd, cram2, audio_2x, clk_d, csus = 92, cdev1, cdev2,
-	uartb = 96, vfir, spdif_in, spdif_out, vi, vi_sensor, tvo, cve,
-	osc, clk_32k, clk_m, sclk, cclk, hclk, pclk, blink, pll_a, pll_a_out0,
-	pll_c, pll_c_out1, pll_d, pll_d_out0, pll_e, pll_m, pll_m_out1,
-	pll_p, pll_p_out1, pll_p_out2, pll_p_out3, pll_p_out4, pll_u,
-	pll_x, audio, pll_ref, twd, clk_max,
-};
-
-static struct clk *clks[clk_max];
-
-static unsigned long get_osc_frequency(void)
-{
-	u32 osc_ctrl = readl(car_base + CRC_OSC_CTRL);
-
-	switch ((osc_ctrl & CRC_OSC_CTRL_OSC_FREQ_MASK) >>
-		CRC_OSC_CTRL_OSC_FREQ_SHIFT) {
-	case 0:
-		return 13000000;
-	case 1:
-		return 19200000;
-	case 2:
-		return 12000000;
-	case 3:
-		return 26000000;
-	default:
-		return 0;
-	}
-}
-
-static unsigned int get_pll_ref_div(void)
-{
-	u32 osc_ctrl = readl(car_base + CRC_OSC_CTRL);
-
-	return 1U << ((osc_ctrl & CRC_OSC_CTRL_PLL_REF_DIV_MASK) >>
-		      CRC_OSC_CTRL_PLL_REF_DIV_SHIFT);
-}
-
-static int tegra20_car_probe(struct device_d *dev)
-{
-	car_base = dev_request_mem_region(dev, 0);
-	if (!car_base)
-		return -EBUSY;
-
-	/* primary clocks */
-	clks[clk_m] = clk_fixed("clk_m", get_osc_frequency());
-	clks[clk_32k] = clk_fixed("clk_32k", 32768);
-
-	clks[pll_ref] = clk_fixed_factor("pll_ref", "clk_m", 1,
-					 get_pll_ref_div());
-
-	/* derived clocks */
-	/* timer is a gate, but as it's enabled by BOOTROM we needn't worry */
-	clks[timer] = clk_fixed_factor("timer", "clk_m", 1, 1);
-
-	/* device to clock links */
-	clkdev_add_physbase(clks[timer], TEGRA_TMR1_BASE, NULL);
-
-	return 0;
-}
-
-static __maybe_unused struct of_device_id tegra20_car_dt_ids[] = {
-	{
-		.compatible = "nvidia,tegra20-car",
-	}, {
-		/* sentinel */
-	}
-};
-
-static struct driver_d tegra20_car_driver = {
-	.probe	= tegra20_car_probe,
-	.name	= "tegra20-car",
-	.of_compatible = DRV_OF_COMPAT(tegra20_car_dt_ids),
-};
-
-static int tegra20_car_init(void)
-{
-	return platform_driver_register(&tegra20_car_driver);
-}
-postcore_initcall(tegra20_car_init);
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index d6c923d..fb426c0 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -3,3 +3,4 @@ obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o \
 obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
 
 obj-$(CONFIG_ARCH_MXS)		+= mxs/
+obj-$(CONFIG_ARCH_TEGRA)	+= tegra/
diff --git a/drivers/clk/tegra/Makefile b/drivers/clk/tegra/Makefile
new file mode 100644
index 0000000..be58c20
--- /dev/null
+++ b/drivers/clk/tegra/Makefile
@@ -0,0 +1,6 @@
+obj-y	+= clk.o
+obj-y	+= clk-divider.o
+obj-y	+= clk-pll.o
+obj-y	+= clk-pll-out.o
+
+obj-$(CONFIG_ARCH_TEGRA_2x_SOC)		+= clk-tegra20.o
\ No newline at end of file
diff --git a/drivers/clk/tegra/clk-divider.c b/drivers/clk/tegra/clk-divider.c
new file mode 100644
index 0000000..0ddd64e
--- /dev/null
+++ b/drivers/clk/tegra/clk-divider.c
@@ -0,0 +1,201 @@
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
+#include <io.h>
+#include <malloc.h>
+#include <asm-generic/div64.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include "clk.h"
+
+#define pll_out_override(p) (BIT((p->shift - 6)))
+#define div_mask(d) ((1 << (d->width)) - 1)
+#define get_mul(d) (1 << d->frac_width)
+#define get_max_div(d) div_mask(d)
+
+#define PERIPH_CLK_UART_DIV_ENB BIT(24)
+
+#define to_clk_frac_div(_hw) container_of(_hw, struct tegra_clk_frac_div, hw)
+
+static int get_div(struct tegra_clk_frac_div *divider, unsigned long rate,
+		   unsigned long parent_rate)
+{
+	u64 divider_ux1 = parent_rate;
+	u8 flags = divider->flags;
+	int mul;
+
+	if (!rate)
+		return 0;
+
+	mul = get_mul(divider);
+
+	if (!(flags & TEGRA_DIVIDER_INT))
+		divider_ux1 *= mul;
+
+	if (flags & TEGRA_DIVIDER_ROUND_UP)
+		divider_ux1 += rate - 1;
+
+	do_div(divider_ux1, rate);
+
+	if (flags & TEGRA_DIVIDER_INT)
+		divider_ux1 *= mul;
+
+	divider_ux1 -= mul;
+
+	if (divider_ux1 < 0)
+		return 0;
+
+	if (divider_ux1 > get_max_div(divider))
+		return -EINVAL;
+
+	return divider_ux1;
+}
+
+static unsigned long clk_frac_div_recalc_rate(struct clk *hw,
+					     unsigned long parent_rate)
+{
+	struct tegra_clk_frac_div *divider = to_clk_frac_div(hw);
+	u32 reg;
+	int div, mul;
+	u64 rate = parent_rate;
+
+	reg = readl(divider->reg) >> divider->shift;
+	div = reg & div_mask(divider);
+
+	mul = get_mul(divider);
+	div += mul;
+
+	rate *= mul;
+	rate += div - 1;
+	do_div(rate, div);
+
+	return rate;
+}
+
+static long clk_frac_div_round_rate(struct clk *hw, unsigned long rate,
+				   unsigned long *prate)
+{
+	struct tegra_clk_frac_div *divider = to_clk_frac_div(hw);
+	int div, mul;
+	unsigned long output_rate = *prate;
+
+	if (!rate)
+		return output_rate;
+
+	div = get_div(divider, rate, output_rate);
+	if (div < 0)
+		return *prate;
+
+	mul = get_mul(divider);
+
+	return DIV_ROUND_UP(output_rate * mul, div + mul);
+}
+
+static int clk_frac_div_set_rate(struct clk *hw, unsigned long rate,
+				unsigned long parent_rate)
+{
+	struct tegra_clk_frac_div *divider = to_clk_frac_div(hw);
+	int div;
+	u32 val;
+
+	div = get_div(divider, rate, parent_rate);
+	if (div < 0)
+		return div;
+
+	val = readl(divider->reg);
+	val &= ~(div_mask(divider) << divider->shift);
+	val |= div << divider->shift;
+
+	if (divider->flags & TEGRA_DIVIDER_UART) {
+		if (div)
+			val |= PERIPH_CLK_UART_DIV_ENB;
+		else
+			val &= ~PERIPH_CLK_UART_DIV_ENB;
+	}
+
+	if (divider->flags & TEGRA_DIVIDER_FIXED)
+		val |= pll_out_override(divider);
+
+	writel(val, divider->reg);
+
+	return 0;
+}
+
+const struct clk_ops tegra_clk_frac_div_ops = {
+	.recalc_rate = clk_frac_div_recalc_rate,
+	.set_rate = clk_frac_div_set_rate,
+	.round_rate = clk_frac_div_round_rate,
+};
+
+struct clk *tegra_clk_divider_alloc(const char *name, const char *parent_name,
+		void __iomem *reg, unsigned long flags, u8 clk_divider_flags,
+		u8 shift, u8 width, u8 frac_width)
+{
+	struct tegra_clk_frac_div *divider;
+
+	divider = kzalloc(sizeof(*divider), GFP_KERNEL);
+	if (!divider) {
+		pr_err("%s: could not allocate fractional divider clk\n",
+		       __func__);
+		return NULL;
+	}
+
+	divider->parent = parent_name;
+	divider->hw.name = name;
+	divider->hw.ops = &tegra_clk_frac_div_ops;
+	divider->hw.flags = flags;
+	divider->hw.parent_names = divider->parent ? &divider->parent : NULL;
+	divider->hw.num_parents = divider->parent ? 1 : 0;
+
+	divider->reg = reg;
+	divider->shift = shift;
+	divider->width = width;
+	divider->frac_width = frac_width;
+	divider->flags = clk_divider_flags;
+
+	return &divider->hw;
+}
+
+void tegra_clk_divider_free(struct clk *clk_div)
+{
+	struct tegra_clk_frac_div *divider = to_clk_frac_div(clk_div);
+
+	kfree(divider);
+}
+
+struct clk *tegra_clk_register_divider(const char *name,
+		const char *parent_name, void __iomem *reg, unsigned long flags,
+		u8 clk_divider_flags, u8 shift, u8 width, u8 frac_width)
+{
+	struct tegra_clk_frac_div *divider;
+	int ret;
+
+	divider = to_clk_frac_div(tegra_clk_divider_alloc(name, parent_name,
+				  reg, flags, clk_divider_flags, shift, width,
+				  frac_width));
+
+	ret = clk_register(&divider->hw);
+	if (ret) {
+		kfree(divider);
+		return ERR_PTR(ret);
+	}
+
+	return &divider->hw;
+}
diff --git a/drivers/clk/tegra/clk-pll-out.c b/drivers/clk/tegra/clk-pll-out.c
new file mode 100644
index 0000000..52d8473
--- /dev/null
+++ b/drivers/clk/tegra/clk-pll-out.c
@@ -0,0 +1,139 @@
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
+#include <io.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include "clk.h"
+
+#define pll_out_enb(p) (BIT(p->enb_bit_idx))
+#define pll_out_rst(p) (BIT(p->rst_bit_idx))
+
+#define to_clk_pll_out(_hw) container_of(_hw, struct tegra_clk_pll_out, hw)
+
+static int clk_pll_out_is_enabled(struct clk *hw)
+{
+	struct tegra_clk_pll_out *pll_out = to_clk_pll_out(hw);
+	u32 val = readl(pll_out->reg);
+	int state;
+
+	state = (val & pll_out_enb(pll_out)) ? 1 : 0;
+	if (!(val & (pll_out_rst(pll_out))))
+		state = 0;
+	return state;
+}
+
+static int clk_pll_out_enable(struct clk *hw)
+{
+	struct tegra_clk_pll_out *pll_out = to_clk_pll_out(hw);
+	u32 val;
+
+	val = readl(pll_out->reg);
+
+	val |= (pll_out_enb(pll_out) | pll_out_rst(pll_out));
+
+	writel(val, pll_out->reg);
+	udelay(2);
+
+	return 0;
+}
+
+static void clk_pll_out_disable(struct clk *hw)
+{
+	struct tegra_clk_pll_out *pll_out = to_clk_pll_out(hw);
+	u32 val;
+
+	val = readl(pll_out->reg);
+
+	val &= ~(pll_out_enb(pll_out) | pll_out_rst(pll_out));
+
+	writel(val, pll_out->reg);
+	udelay(2);
+}
+
+static unsigned long clk_pll_out_recalc_rate(struct clk *hw,
+					     unsigned long parent_rate)
+{
+	struct tegra_clk_pll_out *pll_out = to_clk_pll_out(hw);
+
+	return pll_out->div->ops->recalc_rate(pll_out->div, parent_rate);
+}
+
+static long clk_pll_out_round_rate(struct clk *hw, unsigned long rate,
+				   unsigned long *prate)
+{
+	struct tegra_clk_pll_out *pll_out = to_clk_pll_out(hw);
+
+	return pll_out->div->ops->round_rate(pll_out->div, rate, prate);
+}
+
+static int clk_pll_out_set_rate(struct clk *hw, unsigned long rate,
+				unsigned long parent_rate)
+{
+	struct tegra_clk_pll_out *pll_out = to_clk_pll_out(hw);
+
+	return pll_out->div->ops->set_rate(pll_out->div, rate, parent_rate);
+}
+
+const struct clk_ops tegra_clk_pll_out_ops = {
+	.is_enabled = clk_pll_out_is_enabled,
+	.enable = clk_pll_out_enable,
+	.disable = clk_pll_out_disable,
+	.recalc_rate = clk_pll_out_recalc_rate,
+	.round_rate = clk_pll_out_round_rate,
+	.set_rate = clk_pll_out_set_rate,
+};
+
+struct clk *tegra_clk_register_pll_out(const char *name,
+		const char *parent_name, void __iomem *reg, u8 shift, u8 divider_flags)
+{
+	struct tegra_clk_pll_out *pll_out;
+	int ret;
+
+	pll_out = kzalloc(sizeof(*pll_out), GFP_KERNEL);
+	if (!pll_out)
+		return NULL;
+
+	pll_out->div = tegra_clk_divider_alloc(NULL, NULL, reg, 0, divider_flags, shift + 8, 8, 1);
+	if (!pll_out->div) {
+		kfree(pll_out);
+		return NULL;
+	}
+
+	pll_out->parent = parent_name;
+	pll_out->hw.name = name;
+	pll_out->hw.ops = &tegra_clk_pll_out_ops;
+	pll_out->hw.parent_names = (pll_out->parent ? &pll_out->parent : NULL);
+	pll_out->hw.num_parents = (pll_out->parent ? 1 : 0);
+
+	pll_out->reg = reg;
+	pll_out->enb_bit_idx = shift + 1;
+	pll_out->rst_bit_idx = shift;
+
+	ret = clk_register(&pll_out->hw);
+	if (ret) {
+		tegra_clk_divider_free(pll_out->div);
+		kfree(pll_out);
+		return ERR_PTR(ret);
+	}
+
+	return &pll_out->hw;
+}
diff --git a/drivers/clk/tegra/clk-pll.c b/drivers/clk/tegra/clk-pll.c
new file mode 100644
index 0000000..f3257c4
--- /dev/null
+++ b/drivers/clk/tegra/clk-pll.c
@@ -0,0 +1,451 @@
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
+#include <io.h>
+#include <malloc.h>
+#include <asm-generic/div64.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include "clk.h"
+
+#define PLL_BASE_BYPASS		BIT(31)
+#define PLL_BASE_ENABLE		BIT(30)
+#define PLL_BASE_REF_ENABLE	BIT(29)
+#define PLL_BASE_OVERRIDE	BIT(28)
+
+#define PLL_BASE_DIVP_SHIFT	20
+#define PLL_BASE_DIVP_WIDTH	3
+#define PLL_BASE_DIVN_SHIFT	8
+#define PLL_BASE_DIVN_WIDTH	10
+#define PLL_BASE_DIVM_SHIFT	0
+#define PLL_BASE_DIVM_WIDTH	5
+#define PLLU_POST_DIVP_MASK	0x1
+
+#define PLL_MISC_DCCON_SHIFT	20
+#define PLL_MISC_CPCON_SHIFT	8
+#define PLL_MISC_CPCON_WIDTH	4
+#define PLL_MISC_CPCON_MASK	((1 << PLL_MISC_CPCON_WIDTH) - 1)
+#define PLL_MISC_LFCON_SHIFT	4
+#define PLL_MISC_LFCON_WIDTH	4
+#define PLL_MISC_LFCON_MASK	((1 << PLL_MISC_LFCON_WIDTH) - 1)
+#define PLL_MISC_VCOCON_SHIFT	0
+#define PLL_MISC_VCOCON_WIDTH	4
+#define PLL_MISC_VCOCON_MASK	((1 << PLL_MISC_VCOCON_WIDTH) - 1)
+
+#define OUT_OF_TABLE_CPCON	8
+
+#define PMC_PLLP_WB0_OVERRIDE			0xf8
+#define PMC_PLLP_WB0_OVERRIDE_PLLM_ENABLE	BIT(12)
+#define PMC_PLLP_WB0_OVERRIDE_PLLM_OVERRIDE	BIT(11)
+
+#define PLL_POST_LOCK_DELAY	50
+
+#define PLLDU_LFCON_SET_DIVN	600
+
+#define PLLE_BASE_DIVCML_SHIFT	24
+#define PLLE_BASE_DIVCML_WIDTH	4
+#define PLLE_BASE_DIVP_SHIFT	16
+#define PLLE_BASE_DIVP_WIDTH	7
+#define PLLE_BASE_DIVN_SHIFT	8
+#define PLLE_BASE_DIVN_WIDTH	8
+#define PLLE_BASE_DIVM_SHIFT	0
+#define PLLE_BASE_DIVM_WIDTH	8
+
+#define PLLE_MISC_SETUP_BASE_SHIFT	16
+#define PLLE_MISC_SETUP_BASE_MASK	(0xffff << PLLE_MISC_SETUP_BASE_SHIFT)
+#define PLLE_MISC_LOCK_ENABLE		BIT(9)
+#define PLLE_MISC_READY			BIT(15)
+#define PLLE_MISC_SETUP_EX_SHIFT	2
+#define PLLE_MISC_SETUP_EX_MASK		(3 << PLLE_MISC_SETUP_EX_SHIFT)
+#define PLLE_MISC_SETUP_MASK		(PLLE_MISC_SETUP_BASE_MASK |	\
+					 PLLE_MISC_SETUP_EX_MASK)
+#define PLLE_MISC_SETUP_VALUE		(7 << PLLE_MISC_SETUP_BASE_SHIFT)
+
+#define PLLE_SS_CTRL		0x68
+#define PLLE_SS_DISABLE		(7 << 10)
+
+#define PMC_SATA_PWRGT			0x1ac
+#define PMC_SATA_PWRGT_PLLE_IDDQ_VALUE	BIT(5)
+#define PMC_SATA_PWRGT_PLLE_IDDQ_SWCTL	BIT(4)
+
+#define pll_readl(offset, p) readl(p->clk_base + offset)
+#define pll_readl_base(p) pll_readl(p->params->base_reg, p)
+#define pll_readl_misc(p) pll_readl(p->params->misc_reg, p)
+
+#define pll_writel(val, offset, p) writel(val, p->clk_base + offset)
+#define pll_writel_base(val, p) pll_writel(val, p->params->base_reg, p)
+#define pll_writel_misc(val, p) pll_writel(val, p->params->misc_reg, p)
+
+#define mask(w) ((1 << (w)) - 1)
+#define divm_mask(p) mask(p->divm_width)
+#define divn_mask(p) mask(p->divn_width)
+#define divp_mask(p) (p->flags & TEGRA_PLLU ? PLLU_POST_DIVP_MASK :	\
+		      mask(p->divp_width))
+
+#define divm_max(p) (divm_mask(p))
+#define divn_max(p) (divn_mask(p))
+#define divp_max(p) (1 << (divp_mask(p)))
+
+#define to_clk_pll(_hw) container_of(_hw, struct tegra_clk_pll, hw)
+
+static int clk_pll_is_enabled(struct clk *hw)
+{
+	struct tegra_clk_pll *pll = to_clk_pll(hw);
+	u32 val;
+
+	val = pll_readl_base(pll);
+
+	return val & PLL_BASE_ENABLE ? 1 : 0;
+}
+
+static void clk_pll_enable_lock(struct tegra_clk_pll *pll)
+{
+	u32 val;
+
+	if (!(pll->flags & TEGRA_PLL_USE_LOCK))
+		return;
+
+	val = pll_readl_misc(pll);
+	val |= BIT(pll->params->lock_enable_bit_idx);
+	pll_writel_misc(val, pll);
+}
+
+static int clk_pll_wait_for_lock(struct tegra_clk_pll *pll,
+				 void __iomem *lock_addr, u32 lock_bit_idx)
+{
+	int i;
+	u32 val;
+
+	if (!(pll->flags & TEGRA_PLL_USE_LOCK)) {
+		udelay(pll->params->lock_delay);
+		return 0;
+	}
+
+	for (i = 0; i < pll->params->lock_delay; i++) {
+		val = readl(lock_addr);
+		if (val & BIT(lock_bit_idx)) {
+			udelay(PLL_POST_LOCK_DELAY);
+			return 0;
+		}
+		udelay(2); /* timeout = 2 * lock time */
+	}
+
+	pr_err("%s: Timed out waiting for pll %s lock\n", __func__,
+	       pll->hw.name);
+
+	return -1;
+}
+
+static int clk_pll_enable(struct clk *hw)
+{
+	struct tegra_clk_pll *pll = to_clk_pll(hw);
+	u32 val;
+
+	clk_pll_enable_lock(pll);
+
+	val = pll_readl_base(pll);
+	val &= ~PLL_BASE_BYPASS;
+	val |= PLL_BASE_ENABLE;
+	pll_writel_base(val, pll);
+
+	clk_pll_wait_for_lock(pll, pll->clk_base + pll->params->base_reg,
+			      pll->params->lock_bit_idx);
+
+	return 0;
+}
+
+static void clk_pll_disable(struct clk *hw)
+{
+	struct tegra_clk_pll *pll = to_clk_pll(hw);
+	u32 val;
+
+	val = pll_readl_base(pll);
+	val &= ~(PLL_BASE_BYPASS | PLL_BASE_ENABLE);
+	pll_writel_base(val, pll);
+}
+
+static int _get_table_rate(struct clk *hw,
+			   struct tegra_clk_pll_freq_table *cfg,
+			   unsigned long rate, unsigned long parent_rate)
+{
+	struct tegra_clk_pll *pll = to_clk_pll(hw);
+	struct tegra_clk_pll_freq_table *sel;
+
+	for (sel = pll->freq_table; sel->input_rate != 0; sel++)
+		if (sel->input_rate == parent_rate &&
+		    sel->output_rate == rate)
+			break;
+
+	if (sel->input_rate == 0)
+		return -EINVAL;
+
+	BUG_ON(sel->p < 1);
+
+	cfg->input_rate = sel->input_rate;
+	cfg->output_rate = sel->output_rate;
+	cfg->m = sel->m;
+	cfg->n = sel->n;
+	cfg->p = sel->p;
+	cfg->cpcon = sel->cpcon;
+
+	return 0;
+}
+
+static unsigned long clk_pll_recalc_rate(struct clk *hw,
+					 unsigned long parent_rate)
+{
+	struct tegra_clk_pll *pll = to_clk_pll(hw);
+	u32 val = pll_readl_base(pll);
+	u32 divn = 0, divm = 0, divp = 0;
+	u64 rate = parent_rate;
+
+	if (val & PLL_BASE_BYPASS)
+		return parent_rate;
+
+	if ((pll->flags & TEGRA_PLL_FIXED) && !(val & PLL_BASE_OVERRIDE)) {
+		struct tegra_clk_pll_freq_table sel;
+		if (_get_table_rate(hw, &sel, pll->fixed_rate, parent_rate)) {
+			pr_err("Clock %s has unknown fixed frequency\n",
+			       hw->name);
+			BUG();
+		}
+		return pll->fixed_rate;
+	}
+
+	divp = (val >> pll->divp_shift) & (divp_mask(pll));
+	if (pll->flags & TEGRA_PLLU)
+		divp ^= 1;
+
+	divn = (val >> pll->divn_shift) & (divn_mask(pll));
+	divm = (val >> pll->divm_shift) & (divm_mask(pll));
+	divm *= (1 << divp);
+
+	rate *= divn;
+	do_div(rate, divm);
+
+	return rate;
+}
+
+static int _calc_rate(struct clk *hw, struct tegra_clk_pll_freq_table *cfg,
+		      unsigned long rate, unsigned long parent_rate)
+{
+	struct tegra_clk_pll *pll = to_clk_pll(hw);
+	unsigned long cfreq;
+	u32 p_div = 0;
+
+	switch (parent_rate) {
+	case 12000000:
+	case 26000000:
+		cfreq = (rate <= 1000000 * 1000) ? 1000000 : 2000000;
+		break;
+	case 13000000:
+		cfreq = (rate <= 1000000 * 1000) ? 1000000 : 2600000;
+		break;
+	case 16800000:
+	case 19200000:
+		cfreq = (rate <= 1200000 * 1000) ? 1200000 : 2400000;
+		break;
+	case 9600000:
+	case 28800000:
+		/*
+		 * PLL_P_OUT1 rate is not listed in PLLA table
+		 */
+		cfreq = parent_rate/(parent_rate/1000000);
+		break;
+	default:
+		pr_err("%s Unexpected reference rate %lu\n",
+		       __func__, parent_rate);
+		BUG();
+	}
+
+	/* Raise VCO to guarantee 0.5% accuracy */
+	for (cfg->output_rate = rate; cfg->output_rate < 200 * cfreq;
+	     cfg->output_rate <<= 1)
+		p_div++;
+
+	cfg->p = 1 << p_div;
+	cfg->m = parent_rate / cfreq;
+	cfg->n = cfg->output_rate / cfreq;
+	cfg->cpcon = OUT_OF_TABLE_CPCON;
+
+	if (cfg->m > divm_max(pll) || cfg->n > divn_max(pll) ||
+	    cfg->p > divp_max(pll) || cfg->output_rate > pll->params->vco_max) {
+		pr_err("%s: Failed to set %s rate %lu\n",
+		       __func__, hw->name, rate);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static long clk_pll_round_rate(struct clk *hw, unsigned long rate,
+			unsigned long *prate)
+{
+	struct tegra_clk_pll *pll = to_clk_pll(hw);
+	struct tegra_clk_pll_freq_table cfg;
+	u64 output_rate = *prate;
+
+	if (pll->flags & TEGRA_PLL_FIXED)
+		return pll->fixed_rate;
+
+	/* PLLM is used for memory; we do not change rate */
+	if (pll->flags & TEGRA_PLLM)
+		return clk_get_rate(hw);
+
+	if (_get_table_rate(hw, &cfg, rate, *prate) &&
+	    _calc_rate(hw, &cfg, rate, *prate))
+		return -EINVAL;
+
+	output_rate *= cfg.n;
+	do_div(output_rate, cfg.m * cfg.p);
+
+	return output_rate;
+}
+
+static int _program_pll(struct clk *hw, struct tegra_clk_pll_freq_table *cfg,
+			unsigned long rate)
+{
+	struct tegra_clk_pll *pll = to_clk_pll(hw);
+	u32 divp, val, old_base;
+	int state;
+
+	divp = __ffs(cfg->p);
+
+	if (pll->flags & TEGRA_PLLU)
+		divp ^= 1;
+
+	old_base = val = pll_readl_base(pll);
+	val &= ~((divm_mask(pll) << pll->divm_shift) |
+		 (divn_mask(pll) << pll->divn_shift) |
+		 (divp_mask(pll) << pll->divp_shift));
+	val |= ((cfg->m << pll->divm_shift) |
+		(cfg->n << pll->divn_shift) |
+		(divp << pll->divp_shift));
+	if (pll->flags & TEGRA_PLL_FIXED)
+		val |= PLL_BASE_OVERRIDE;
+	if (val == old_base) {
+		return 0;
+	}
+
+	state = clk_pll_is_enabled(hw);
+
+	if (state) {
+		clk_pll_disable(hw);
+		val &= ~(PLL_BASE_BYPASS | PLL_BASE_ENABLE);
+	}
+	pll_writel_base(val, pll);
+
+	if (pll->flags & TEGRA_PLL_HAS_CPCON) {
+		val = pll_readl_misc(pll);
+		val &= ~(PLL_MISC_CPCON_MASK << PLL_MISC_CPCON_SHIFT);
+		val |= cfg->cpcon << PLL_MISC_CPCON_SHIFT;
+		if (pll->flags & TEGRA_PLL_SET_LFCON) {
+			val &= ~(PLL_MISC_LFCON_MASK << PLL_MISC_LFCON_SHIFT);
+			if (cfg->n >= PLLDU_LFCON_SET_DIVN)
+				val |= 0x1 << PLL_MISC_LFCON_SHIFT;
+		} else if (pll->flags & TEGRA_PLL_SET_DCCON) {
+			val &= ~(0x1 << PLL_MISC_DCCON_SHIFT);
+			if (rate >= (pll->params->vco_max >> 1))
+				val |= 0x1 << PLL_MISC_DCCON_SHIFT;
+		}
+		pll_writel_misc(val, pll);
+	}
+
+	if (state)
+		clk_pll_enable(hw);
+
+	return 0;
+}
+
+static int clk_pll_set_rate(struct clk *hw, unsigned long rate,
+			unsigned long parent_rate)
+{
+	struct tegra_clk_pll_freq_table cfg;
+
+	if (_get_table_rate(hw, &cfg, rate, parent_rate) &&
+	    _calc_rate(hw, &cfg, rate, parent_rate))
+		return -EINVAL;
+
+	return _program_pll(hw, &cfg, rate);
+}
+
+const struct clk_ops tegra_clk_pll_ops = {
+	.is_enabled = clk_pll_is_enabled,
+	.enable = clk_pll_enable,
+	.disable = clk_pll_disable,
+	.recalc_rate = clk_pll_recalc_rate,
+	.round_rate = clk_pll_round_rate,
+	.set_rate = clk_pll_set_rate,
+};
+
+static struct clk *_tegra_clk_register_pll(const char *name,
+		const char *parent_name, void __iomem *clk_base,
+		unsigned long flags, unsigned long fixed_rate,
+		struct tegra_clk_pll_params *pll_params, u8 pll_flags,
+		struct tegra_clk_pll_freq_table *freq_table,
+		const struct clk_ops *ops)
+{
+	struct tegra_clk_pll *pll;
+	int ret;
+
+	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
+	if (!pll)
+		return NULL;
+
+	pll->parent = parent_name;
+	pll->hw.name = name;
+	pll->hw.ops = ops;
+	pll->hw.flags = flags;
+	pll->hw.parent_names = (pll->parent ? &pll->parent : NULL);
+	pll->hw.num_parents = (pll->parent ? 1 : 0);
+
+	pll->clk_base = clk_base;
+
+	pll->freq_table = freq_table;
+	pll->params = pll_params;
+	pll->fixed_rate = fixed_rate;
+	pll->flags = pll_flags;
+
+	pll->divp_shift = PLL_BASE_DIVP_SHIFT;
+	pll->divp_width = PLL_BASE_DIVP_WIDTH;
+	pll->divn_shift = PLL_BASE_DIVN_SHIFT;
+	pll->divn_width = PLL_BASE_DIVN_WIDTH;
+	pll->divm_shift = PLL_BASE_DIVM_SHIFT;
+	pll->divm_width = PLL_BASE_DIVM_WIDTH;
+
+	ret = clk_register(&pll->hw);
+	if (ret) {
+		kfree(pll);
+		return ERR_PTR(ret);
+	}
+
+	return &pll->hw;
+}
+
+struct clk *tegra_clk_register_pll(const char *name, const char *parent_name,
+		void __iomem *clk_base,
+		unsigned long flags, unsigned long fixed_rate,
+		struct tegra_clk_pll_params *pll_params, u8 pll_flags,
+		struct tegra_clk_pll_freq_table *freq_table)
+{
+	return _tegra_clk_register_pll(name, parent_name, clk_base,
+			flags, fixed_rate, pll_params, pll_flags, freq_table,
+			&tegra_clk_pll_ops);
+}
diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
new file mode 100644
index 0000000..5f668cb
--- /dev/null
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -0,0 +1,326 @@
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
+#include <mach/lowlevel.h>
+#include <mach/tegra20-car.h>
+
+#include "clk.h"
+
+static void __iomem *car_base;
+
+enum tegra20_clks {
+	cpu, ac97 = 3, rtc, timer, uarta, uartb, gpio, sdmmc2, i2s1 = 11, i2c1,
+	ndflash, sdmmc1, sdmmc4, twc, pwm, i2s2, epp, gr2d = 21, usbd, isp,
+	gr3d, ide, disp2, disp1, host1x, vcp, cache2 = 31, mem, ahbdma, apbdma,
+	kbc = 36, stat_mon, pmc, fuse, kfuse, sbc1, nor, spi, sbc2, xio, sbc3,
+	dvc, dsi, mipi = 50, hdmi, csi, tvdac, i2c2, uartc, emc = 57, usb2,
+	usb3, mpe, vde, bsea, bsev, speedo, uartd, uarte, i2c3, sbc4, sdmmc3,
+	pex, owr, afi, csite, pcie_xclk, avpucq = 75, la, irama = 84, iramb,
+	iramc, iramd, cram2, audio_2x, clk_d, csus = 92, cdev2, cdev1,
+	vfir = 96, spdif_in, spdif_out, vi, vi_sensor, tvo, cve,
+	osc, clk_32k, clk_m, sclk, cclk, hclk, pclk, blink, pll_a, pll_a_out0,
+	pll_c, pll_c_out1, pll_d, pll_d_out0, pll_e, pll_m, pll_m_out1,
+	pll_p, pll_p_out1, pll_p_out2, pll_p_out3, pll_p_out4, pll_u,
+	pll_x, audio, pll_ref, twd, clk_max,
+};
+
+static struct clk *clks[clk_max];
+static struct clk_onecell_data clk_data;
+
+static unsigned int get_pll_ref_div(void)
+{
+	u32 osc_ctrl = readl(car_base + CRC_OSC_CTRL);
+
+	return 1U << ((osc_ctrl & CRC_OSC_CTRL_PLL_REF_DIV_MASK) >>
+		      CRC_OSC_CTRL_PLL_REF_DIV_SHIFT);
+}
+
+static void tegra20_osc_clk_init(void)
+{
+	clks[clk_m] = clk_fixed("clk_m", tegra_get_osc_clock());
+	clks[clk_32k] = clk_fixed("clk_32k", 32768);
+
+	clks[pll_ref] = clk_fixed_factor("pll_ref", "clk_m", 1,
+					 get_pll_ref_div());
+}
+
+/* PLL frequency tables */
+static struct tegra_clk_pll_freq_table pll_c_freq_table[] = {
+	{ 12000000, 600000000, 600, 12, 1, 8 },
+	{ 13000000, 600000000, 600, 13, 1, 8 },
+	{ 19200000, 600000000, 500, 16, 1, 6 },
+	{ 26000000, 600000000, 600, 26, 1, 8 },
+	{ 0, 0, 0, 0, 0, 0 },
+};
+
+static struct tegra_clk_pll_freq_table pll_p_freq_table[] = {
+	{ 12000000, 216000000, 432, 12, 2, 8},
+	{ 13000000, 216000000, 432, 13, 2, 8},
+	{ 19200000, 216000000, 90,   4, 2, 1},
+	{ 26000000, 216000000, 432, 26, 2, 8},
+	{ 0, 0, 0, 0, 0, 0 },
+};
+
+static struct tegra_clk_pll_freq_table pll_m_freq_table[] = {
+	{ 12000000, 666000000, 666, 12, 1, 8},
+	{ 13000000, 666000000, 666, 13, 1, 8},
+	{ 19200000, 666000000, 555, 16, 1, 8},
+	{ 26000000, 666000000, 666, 26, 1, 8},
+	{ 12000000, 600000000, 600, 12, 1, 8},
+	{ 13000000, 600000000, 600, 13, 1, 8},
+	{ 19200000, 600000000, 375, 12, 1, 6},
+	{ 26000000, 600000000, 600, 26, 1, 8},
+	{ 0, 0, 0, 0, 0, 0 },
+};
+
+static struct tegra_clk_pll_freq_table pll_x_freq_table[] = {
+	/* 1 GHz */
+	{ 12000000, 1000000000, 1000, 12, 1, 12},
+	{ 13000000, 1000000000, 1000, 13, 1, 12},
+	{ 19200000, 1000000000, 625,  12, 1, 8},
+	{ 26000000, 1000000000, 1000, 26, 1, 12},
+
+	/* 912 MHz */
+	{ 12000000, 912000000,  912,  12, 1, 12},
+	{ 13000000, 912000000,  912,  13, 1, 12},
+	{ 19200000, 912000000,  760,  16, 1, 8},
+	{ 26000000, 912000000,  912,  26, 1, 12},
+
+	/* 816 MHz */
+	{ 12000000, 816000000,  816,  12, 1, 12},
+	{ 13000000, 816000000,  816,  13, 1, 12},
+	{ 19200000, 816000000,  680,  16, 1, 8},
+	{ 26000000, 816000000,  816,  26, 1, 12},
+
+	/* 760 MHz */
+	{ 12000000, 760000000,  760,  12, 1, 12},
+	{ 13000000, 760000000,  760,  13, 1, 12},
+	{ 19200000, 760000000,  950,  24, 1, 8},
+	{ 26000000, 760000000,  760,  26, 1, 12},
+
+	/* 750 MHz */
+	{ 12000000, 750000000,  750,  12, 1, 12},
+	{ 13000000, 750000000,  750,  13, 1, 12},
+	{ 19200000, 750000000,  625,  16, 1, 8},
+	{ 26000000, 750000000,  750,  26, 1, 12},
+
+	/* 608 MHz */
+	{ 12000000, 608000000,  608,  12, 1, 12},
+	{ 13000000, 608000000,  608,  13, 1, 12},
+	{ 19200000, 608000000,  380,  12, 1, 8},
+	{ 26000000, 608000000,  608,  26, 1, 12},
+
+	/* 456 MHz */
+	{ 12000000, 456000000,  456,  12, 1, 12},
+	{ 13000000, 456000000,  456,  13, 1, 12},
+	{ 19200000, 456000000,  380,  16, 1, 8},
+	{ 26000000, 456000000,  456,  26, 1, 12},
+
+	/* 312 MHz */
+	{ 12000000, 312000000,  312,  12, 1, 12},
+	{ 13000000, 312000000,  312,  13, 1, 12},
+	{ 19200000, 312000000,  260,  16, 1, 8},
+	{ 26000000, 312000000,  312,  26, 1, 12},
+
+	{ 0, 0, 0, 0, 0, 0 },
+};
+
+static struct tegra_clk_pll_freq_table pll_u_freq_table[] = {
+	{ 12000000, 480000000, 960, 12, 2, 0},
+	{ 13000000, 480000000, 960, 13, 2, 0},
+	{ 19200000, 480000000, 200, 4,  2, 0},
+	{ 26000000, 480000000, 960, 26, 2, 0},
+	{ 0, 0, 0, 0, 0, 0 },
+};
+
+/* PLL parameters */
+static struct tegra_clk_pll_params pll_c_params = {
+	.input_min = 2000000,
+	.input_max = 31000000,
+	.cf_min = 1000000,
+	.cf_max = 6000000,
+	.vco_min = 20000000,
+	.vco_max = 1400000000,
+	.base_reg = CRC_PLLC_BASE,
+	.misc_reg = CRC_PLLC_MISC,
+	.lock_bit_idx = CRC_PLL_BASE_LOCK,
+	.lock_enable_bit_idx = CRC_PLL_MISC_LOCK_ENABLE,
+	.lock_delay = 300,
+};
+
+static struct tegra_clk_pll_params pll_p_params = {
+	.input_min = 2000000,
+	.input_max = 31000000,
+	.cf_min = 1000000,
+	.cf_max = 6000000,
+	.vco_min = 20000000,
+	.vco_max = 1400000000,
+	.base_reg = CRC_PLLP_BASE,
+	.misc_reg = CRC_PLLP_MISC,
+	.lock_bit_idx = CRC_PLL_BASE_LOCK,
+	.lock_enable_bit_idx = CRC_PLL_MISC_LOCK_ENABLE,
+	.lock_delay = 300,
+};
+
+static struct tegra_clk_pll_params pll_m_params = {
+	.input_min = 2000000,
+	.input_max = 31000000,
+	.cf_min = 1000000,
+	.cf_max = 6000000,
+	.vco_min = 20000000,
+	.vco_max = 1200000000,
+	.base_reg = CRC_PLLM_BASE,
+	.misc_reg = CRC_PLLM_MISC,
+	.lock_bit_idx = CRC_PLL_BASE_LOCK,
+	.lock_enable_bit_idx = CRC_PLL_MISC_LOCK_ENABLE,
+	.lock_delay = 300,
+};
+
+static struct tegra_clk_pll_params pll_x_params = {
+	.input_min = 2000000,
+	.input_max = 31000000,
+	.cf_min = 1000000,
+	.cf_max = 6000000,
+	.vco_min = 20000000,
+	.vco_max = 1200000000,
+	.base_reg = CRC_PLLX_BASE,
+	.misc_reg = CRC_PLLX_MISC,
+	.lock_bit_idx = CRC_PLL_BASE_LOCK,
+	.lock_enable_bit_idx = CRC_PLL_MISC_LOCK_ENABLE,
+	.lock_delay = 300,
+};
+
+static struct tegra_clk_pll_params pll_u_params = {
+	.input_min = 2000000,
+	.input_max = 40000000,
+	.cf_min = 1000000,
+	.cf_max = 6000000,
+	.vco_min = 48000000,
+	.vco_max = 960000000,
+	.base_reg = CRC_PLLU_BASE,
+	.misc_reg = CRC_PLLU_MISC,
+	.lock_bit_idx = CRC_PLL_BASE_LOCK,
+	.lock_enable_bit_idx = CRC_PLLDU_MISC_LOCK_ENABLE,
+	.lock_delay = 1000,
+};
+
+static void tegra20_pll_init(void)
+{
+	/* PLLC */
+	clks[pll_c] = tegra_clk_register_pll("pll_c", "pll_ref", car_base,
+			0, 0, &pll_c_params, TEGRA_PLL_HAS_CPCON,
+			pll_c_freq_table);
+
+	clks[pll_c_out1] = tegra_clk_register_pll_out("pll_c_out1", "pll_c",
+			car_base + CRC_PLLC_OUT, 0, TEGRA_DIVIDER_ROUND_UP);
+
+	/* PLLP */
+	clks[pll_p] = tegra_clk_register_pll("pll_p", "pll_ref", car_base,
+			0, 216000000, &pll_p_params, TEGRA_PLL_FIXED |
+			TEGRA_PLL_HAS_CPCON, pll_p_freq_table);
+
+	clks[pll_p_out1] = tegra_clk_register_pll_out("pll_p_out1", "pll_p",
+			car_base + CRC_PLLP_OUTA, 0,
+			TEGRA_DIVIDER_FIXED | TEGRA_DIVIDER_ROUND_UP);
+
+	clks[pll_p_out2] = tegra_clk_register_pll_out("pll_p_out2", "pll_p",
+			car_base + CRC_PLLP_OUTA, 16,
+			TEGRA_DIVIDER_FIXED | TEGRA_DIVIDER_ROUND_UP);
+
+	clks[pll_p_out3] = tegra_clk_register_pll_out("pll_p_out3", "pll_p",
+			car_base + CRC_PLLP_OUTB, 0,
+			TEGRA_DIVIDER_FIXED | TEGRA_DIVIDER_ROUND_UP);
+
+	clks[pll_p_out4] = tegra_clk_register_pll_out("pll_p_out4", "pll_p",
+			car_base + CRC_PLLP_OUTB, 16,
+			TEGRA_DIVIDER_FIXED | TEGRA_DIVIDER_ROUND_UP);
+
+	/* PLLM */
+	clks[pll_m] = tegra_clk_register_pll("pll_m", "pll_ref", car_base,
+			0, 0, &pll_m_params, TEGRA_PLL_HAS_CPCON,
+			pll_m_freq_table);
+
+	clks[pll_m_out1] = tegra_clk_register_pll_out("pll_m_out1", "pll_m",
+			car_base + CRC_PLLM_OUT, 0, TEGRA_DIVIDER_ROUND_UP);
+
+	/* PLLX */
+	clks[pll_x] = tegra_clk_register_pll("pll_x", "pll_ref", car_base,
+			0, 0, &pll_x_params, TEGRA_PLL_HAS_CPCON,
+			pll_x_freq_table);
+
+	/* PLLU */
+	clks[pll_u] = tegra_clk_register_pll("pll_u", "pll_ref", car_base,
+			0, 0, &pll_u_params, TEGRA_PLLU |
+			TEGRA_PLL_HAS_CPCON, pll_u_freq_table);
+}
+
+static struct tegra_clk_init_table init_table[] = {
+	{pll_p,		clk_max,	216000000,	1},
+	{pll_p_out1,	clk_max,	28800000,	1},
+	{pll_p_out2,	clk_max,	48000000,	1},
+	{pll_p_out3,	clk_max,	72000000,	1},
+	{pll_p_out4,	clk_max,	24000000,	1},
+	{pll_c,		clk_max,	600000000,	1},
+	{pll_c_out1,	clk_max,	120000000,	1},
+	{clk_max,	clk_max,	0,		0}, /* sentinel */
+};
+
+static int tegra20_car_probe(struct device_d *dev)
+{
+	car_base = dev_request_mem_region(dev, 0);
+	if (!car_base)
+		return -EBUSY;
+
+	tegra20_osc_clk_init();
+	tegra20_pll_init();
+
+	tegra_init_from_table(init_table, clks, clk_max);
+
+	clk_data.clks = clks;
+	clk_data.clk_num = ARRAY_SIZE(clks);
+	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
+			    &clk_data);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id tegra20_car_dt_ids[] = {
+	{
+		.compatible = "nvidia,tegra20-car",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d tegra20_car_driver = {
+	.probe	= tegra20_car_probe,
+	.name	= "tegra20-car",
+	.of_compatible = DRV_OF_COMPAT(tegra20_car_dt_ids),
+};
+
+static int tegra20_car_init(void)
+{
+	return platform_driver_register(&tegra20_car_driver);
+}
+postcore_initcall(tegra20_car_init);
diff --git a/drivers/clk/tegra/clk.c b/drivers/clk/tegra/clk.c
new file mode 100644
index 0000000..f4013e7
--- /dev/null
+++ b/drivers/clk/tegra/clk.c
@@ -0,0 +1,57 @@
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
+#include <linux/clk.h>
+
+#include "clk.h"
+
+void tegra_init_from_table(struct tegra_clk_init_table *tbl,
+				  struct clk *clks[], int clk_max)
+{
+	struct clk *clk;
+
+	for (; tbl->clk_id < clk_max; tbl++) {
+		clk = clks[tbl->clk_id];
+		if (!clk)
+			return;
+
+		if (tbl->parent_id < clk_max) {
+			struct clk *parent = clks[tbl->parent_id];
+			if (clk_set_parent(clk, parent)) {
+				pr_err("%s: Failed to set parent %s of %s\n",
+				       __func__, parent->name, clk->name);
+				WARN_ON(1);
+			}
+		}
+
+		if (tbl->rate)
+			if (clk_set_rate(clk, tbl->rate)) {
+				pr_err("%s: Failed to set rate %lu of %s\n",
+				       __func__, tbl->rate, clk->name);
+				WARN_ON(1);
+			}
+
+		if (tbl->state)
+			if (clk_enable(clk)) {
+				pr_err("%s: Failed to enable %s\n", __func__,
+				       clk->name);
+				WARN_ON(1);
+			}
+	}
+}
diff --git a/drivers/clk/tegra/clk.h b/drivers/clk/tegra/clk.h
new file mode 100644
index 0000000..2bc3698
--- /dev/null
+++ b/drivers/clk/tegra/clk.h
@@ -0,0 +1,127 @@
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
+/* struct tegra_clk_frac_div - fractional divider */
+struct tegra_clk_frac_div {
+	struct clk	hw;
+	void __iomem	*reg;
+	u8		flags;
+	u8		shift;
+	u8		width;
+	u8		frac_width;
+	const char	*parent;
+};
+
+#define TEGRA_DIVIDER_ROUND_UP	BIT(0)
+#define TEGRA_DIVIDER_FIXED	BIT(1)
+#define TEGRA_DIVIDER_INT	BIT(2)
+#define TEGRA_DIVIDER_UART	BIT(3)
+
+struct clk *tegra_clk_divider_alloc(const char *name, const char *parent_name,
+		void __iomem *reg, unsigned long flags, u8 clk_divider_flags,
+		u8 shift, u8 width, u8 frac_width);
+
+void tegra_clk_divider_free(struct clk *divider);
+
+struct clk *tegra_clk_register_divider(const char *name,
+		const char *parent_name, void __iomem *reg, unsigned long flags,
+		u8 clk_divider_flags, u8 shift, u8 width, u8 frac_width);
+
+/* struct tegra_clk_pll_freq_table - PLL frequecy table */
+struct tegra_clk_pll_freq_table {
+	unsigned long	input_rate;
+	unsigned long	output_rate;
+	u16		n;
+	u16		m;
+	u8		p;
+	u8		cpcon;
+};
+
+/* struct clk_pll_params - PLL parameters */
+struct tegra_clk_pll_params {
+	unsigned long	input_min;
+	unsigned long	input_max;
+	unsigned long	cf_min;
+	unsigned long	cf_max;
+	unsigned long	vco_min;
+	unsigned long	vco_max;
+
+	u32		base_reg;
+	u32		misc_reg;
+	u32		lock_reg;
+	u8		lock_bit_idx;
+	u8		lock_enable_bit_idx;
+	int		lock_delay;
+};
+
+/* struct tegra_clk_pll - Tegra PLL clock */
+struct tegra_clk_pll {
+	struct clk	hw;
+	void __iomem	*clk_base;
+	u8		flags;
+	unsigned long	fixed_rate;
+	u8		divn_shift;
+	u8		divn_width;
+	u8		divm_shift;
+	u8		divm_width;
+	u8		divp_shift;
+	u8		divp_width;
+	struct tegra_clk_pll_freq_table	*freq_table;
+	struct tegra_clk_pll_params	*params;
+	const char	*parent;
+};
+
+#define TEGRA_PLL_USE_LOCK	BIT(0)
+#define TEGRA_PLL_HAS_CPCON	BIT(1)
+#define TEGRA_PLL_SET_LFCON	BIT(2)
+#define TEGRA_PLL_SET_DCCON	BIT(3)
+#define TEGRA_PLLU		BIT(4)
+#define TEGRA_PLLM		BIT(5)
+#define TEGRA_PLL_FIXED		BIT(6)
+#define TEGRA_PLLE_CONFIGURE	BIT(7)
+
+struct clk *tegra_clk_register_pll(const char *name, const char *parent_name,
+		void __iomem *clk_base,
+		unsigned long flags, unsigned long fixed_rate,
+		struct tegra_clk_pll_params *pll_params, u8 pll_flags,
+		struct tegra_clk_pll_freq_table *freq_table);
+
+/* struct tegra_clk_pll_out - PLL output divider */
+struct tegra_clk_pll_out {
+	struct clk	hw;
+	struct clk	*div;
+	void __iomem	*reg;
+	u8		enb_bit_idx;
+	u8		rst_bit_idx;
+	const char	*parent;
+};
+
+struct clk *tegra_clk_register_pll_out(const char *name,
+		const char *parent_name, void __iomem *reg, u8 shift,
+		u8 divider_flags);
+
+/* struct clk_init_table - clock initialization table */
+struct tegra_clk_init_table {
+	unsigned int	clk_id;
+	unsigned int	parent_id;
+	unsigned long	rate;
+	int		state;
+};
+
+void tegra_init_from_table(struct tegra_clk_init_table *tbl,
+		struct clk *clks[], int clk_max);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
