Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZKTd-0001Rh-OE
 for barebox@lists.infradead.org; Sun, 13 Apr 2014 13:29:43 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p578FE321.dip0.t-ipconnect.de [87.143.227.33])
 by lynxeye.de (Postfix) with ESMTPA id BF12218B425E
 for <barebox@lists.infradead.org>; Sun, 13 Apr 2014 15:27:59 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 13 Apr 2014 15:27:43 +0200
Message-Id: <1397395668-9325-14-git-send-email-dev@lynxeye.de>
In-Reply-To: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
References: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 13/18] clk: tegra: add Tegra3 driver
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/tegra/Makefile      |   3 +-
 drivers/clk/tegra/clk-tegra30.c | 365 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 367 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/tegra/clk-tegra30.c

diff --git a/drivers/clk/tegra/Makefile b/drivers/clk/tegra/Makefile
index e614722c2ccc..7317f225414f 100644
--- a/drivers/clk/tegra/Makefile
+++ b/drivers/clk/tegra/Makefile
@@ -4,4 +4,5 @@ obj-y	+= clk-periph.o
 obj-y	+= clk-pll.o
 obj-y	+= clk-pll-out.o
 
-obj-$(CONFIG_ARCH_TEGRA_2x_SOC)		+= clk-tegra20.o
\ No newline at end of file
+obj-$(CONFIG_ARCH_TEGRA_2x_SOC)		+= clk-tegra20.o
+obj-$(CONFIG_ARCH_TEGRA_3x_SOC)		+= clk-tegra30.o
diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
new file mode 100644
index 000000000000..94bbeace4ae4
--- /dev/null
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -0,0 +1,365 @@
+/*
+ * Copyright (C) 2014 Lucas Stach <l.stach@pengutronix.de>
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
+#include <dt-bindings/clock/tegra30-car.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/lowlevel.h>
+#include <mach/tegra20-car.h>
+#include <mach/tegra30-car.h>
+
+#include "clk.h"
+
+static void __iomem *car_base;
+
+static struct clk *clks[TEGRA30_CLK_CLK_MAX];
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
+static void tegra30_osc_clk_init(void)
+{
+	clks[TEGRA30_CLK_CLK_M] = clk_fixed("clk_m", tegra_get_osc_clock());
+	clks[TEGRA30_CLK_CLK_32K] = clk_fixed("clk_32k", 32768);
+
+	clks[TEGRA30_CLK_PLL_REF] = clk_fixed_factor("pll_ref", "clk_m", 1,
+						     get_pll_ref_div(), 0);
+}
+
+/* PLL frequency tables */
+static struct tegra_clk_pll_freq_table pll_c_freq_table[] = {
+	{ 12000000, 1040000000, 520,  6, 0, 8},
+	{ 26000000, 1040000000, 520, 13, 0, 8},
+
+	{ 12000000, 832000000, 416,  6, 0, 8},
+	{ 26000000, 832000000, 416, 13, 0, 8},
+
+	{ 12000000, 624000000, 624, 12, 0, 8},
+	{ 26000000, 624000000, 624, 26, 0, 8},
+
+	{ 12000000, 600000000, 600, 12, 0, 8},
+	{ 26000000, 600000000, 600, 26, 0, 8},
+
+	{ 12000000, 520000000, 520, 12, 0, 8},
+	{ 26000000, 520000000, 520, 26, 0, 8},
+
+	{ 12000000, 416000000, 416, 12, 0, 8},
+	{ 26000000, 416000000, 416, 26, 0, 8},
+	{ 0, 0, 0, 0, 0, 0 },
+};
+
+static struct tegra_clk_pll_freq_table pll_p_freq_table[] = {
+	{ 12000000, 408000000, 408, 12, 1, 8},
+	{ 26000000, 408000000, 408, 26, 1, 8},
+	{ 0, 0, 0, 0, 0, 0 },
+};
+
+static struct tegra_clk_pll_freq_table pll_m_freq_table[] = {
+	{ 12000000, 666000000, 666, 12, 0, 8},
+	{ 26000000, 666000000, 666, 26, 0, 8},
+
+	{ 12000000, 600000000, 600, 12, 0, 8},
+	{ 26000000, 600000000, 600, 26, 0, 8},
+	{ 0, 0, 0, 0, 0, 0 },
+};
+
+static struct tegra_clk_pll_freq_table pll_x_freq_table[] = {
+	/* 1.7 GHz */
+	{ 12000000, 1700000000, 850,  6,  0, 8},
+	{ 26000000, 1700000000, 850,  13, 0, 8},
+
+	/* 1.6 GHz */
+	{ 12000000, 1600000000, 800,  6,  0, 8},
+	{ 26000000, 1600000000, 800,  13, 0, 8},
+
+	/* 1.5 GHz */
+	{ 12000000, 1500000000, 750,  6,  0, 8},
+	{ 26000000, 1500000000, 750,  13, 0, 8},
+
+	/* 1.4 GHz */
+	{ 12000000, 1400000000, 700,  6,  0, 8},
+	{ 26000000, 1400000000, 700,  13, 0, 8},
+
+	/* 1.3 GHz */
+	{ 12000000, 1300000000, 975,  9,  0, 8},
+	{ 26000000, 1300000000, 650,  13, 0, 8},
+
+	/* 1.2 GHz */
+	{ 12000000, 1200000000, 1000, 10, 0, 8},
+	{ 26000000, 1200000000, 600,  13, 0, 8},
+
+	/* 1.1 GHz */
+	{ 12000000, 1100000000, 825,  9,  0, 8},
+	{ 26000000, 1100000000, 550,  13, 0, 8},
+
+	/* 1 GHz */
+	{ 12000000, 1000000000, 1000, 12, 0, 8},
+	{ 26000000, 1000000000, 1000, 26, 0, 8},
+
+	{ 0, 0, 0, 0, 0, 0 },
+};
+
+static struct tegra_clk_pll_freq_table pll_u_freq_table[] = {
+	{ 12000000, 480000000, 960, 12, 0, 12},
+	{ 26000000, 480000000, 960, 26, 0, 12},
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
+static void tegra30_pll_init(void)
+{
+	/* PLLC */
+	clks[TEGRA30_CLK_PLL_C] = tegra_clk_register_pll("pll_c", "pll_ref",
+			car_base, 0, 0, &pll_c_params, TEGRA_PLL_HAS_CPCON,
+			pll_c_freq_table);
+
+	clks[TEGRA30_CLK_PLL_C_OUT1] = tegra_clk_register_pll_out("pll_c_out1",
+			"pll_c", car_base + CRC_PLLC_OUT, 0,
+			TEGRA_DIVIDER_ROUND_UP);
+
+	/* PLLP */
+	clks[TEGRA30_CLK_PLL_P] = tegra_clk_register_pll("pll_p", "pll_ref",
+			car_base, 0, 408000000, &pll_p_params, TEGRA_PLL_FIXED |
+			TEGRA_PLL_HAS_CPCON, pll_p_freq_table);
+
+	clks[TEGRA30_CLK_PLL_P_OUT1] = tegra_clk_register_pll_out("pll_p_out1",
+			"pll_p", car_base + CRC_PLLP_OUTA, 0,
+			TEGRA_DIVIDER_FIXED | TEGRA_DIVIDER_ROUND_UP);
+
+	clks[TEGRA30_CLK_PLL_P_OUT2] = tegra_clk_register_pll_out("pll_p_out2",
+			"pll_p", car_base + CRC_PLLP_OUTA, 16,
+			TEGRA_DIVIDER_FIXED | TEGRA_DIVIDER_ROUND_UP);
+
+	clks[TEGRA30_CLK_PLL_P_OUT3] = tegra_clk_register_pll_out("pll_p_out3",
+			"pll_p", car_base + CRC_PLLP_OUTB, 0,
+			TEGRA_DIVIDER_FIXED | TEGRA_DIVIDER_ROUND_UP);
+
+	clks[TEGRA30_CLK_PLL_P_OUT4] = tegra_clk_register_pll_out("pll_p_out4",
+			"pll_p", car_base + CRC_PLLP_OUTB, 16,
+			TEGRA_DIVIDER_FIXED | TEGRA_DIVIDER_ROUND_UP);
+
+	/* PLLM */
+	clks[TEGRA30_CLK_PLL_M] = tegra_clk_register_pll("pll_m", "pll_ref",
+			car_base, 0, 0, &pll_m_params, TEGRA_PLL_HAS_CPCON,
+			pll_m_freq_table);
+
+	clks[TEGRA30_CLK_PLL_M_OUT1] = tegra_clk_register_pll_out("pll_m_out1",
+			"pll_m", car_base + CRC_PLLM_OUT, 0,
+			TEGRA_DIVIDER_ROUND_UP);
+
+	/* PLLX */
+	clks[TEGRA30_CLK_PLL_X] = tegra_clk_register_pll("pll_x", "pll_ref",
+			car_base, 0, 0, &pll_x_params, TEGRA_PLL_HAS_CPCON,
+			pll_x_freq_table);
+
+	/* PLLU */
+	clks[TEGRA30_CLK_PLL_U] = tegra_clk_register_pll("pll_u", "pll_ref",
+			car_base, 0, 0, &pll_u_params, TEGRA_PLLU |
+			TEGRA_PLL_HAS_CPCON, pll_u_freq_table);
+}
+
+static const char *mux_pllpcm_clkm[] = {"pll_p", "pll_c", "pll_m", "clk_m"};
+
+static void tegra30_periph_init(void)
+{
+	/* peripheral clocks without a divider */
+	clks[TEGRA30_CLK_UARTA] = tegra_clk_register_periph_nodiv("uarta",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_UARTA, TEGRA30_CLK_UARTA,
+			TEGRA_PERIPH_ON_APB);
+	clks[TEGRA30_CLK_UARTB] = tegra_clk_register_periph_nodiv("uartb",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_UARTB, 7,
+			TEGRA_PERIPH_ON_APB);
+	clks[TEGRA30_CLK_UARTC] = tegra_clk_register_periph_nodiv("uartc",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_UARTC, TEGRA30_CLK_UARTC,
+			TEGRA_PERIPH_ON_APB);
+	clks[TEGRA30_CLK_UARTD] = tegra_clk_register_periph_nodiv("uartd",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_UARTD, TEGRA30_CLK_UARTD,
+			TEGRA_PERIPH_ON_APB);
+	clks[TEGRA30_CLK_UARTE] = tegra_clk_register_periph_nodiv("uarte",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_UARTE, TEGRA30_CLK_UARTE,
+			TEGRA_PERIPH_ON_APB);
+
+	/* peripheral clocks with a divider */
+	clks[TEGRA30_CLK_MSELECT] = tegra_clk_register_periph("mselect",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_MSEL, TEGRA30_CLK_MSELECT, 1);
+
+	clks[TEGRA30_CLK_SDMMC1] = tegra_clk_register_periph("sdmmc1",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_SDMMC1, TEGRA30_CLK_SDMMC1, 1);
+	clks[TEGRA30_CLK_SDMMC2] = tegra_clk_register_periph("sdmmc2",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_SDMMC2, TEGRA30_CLK_SDMMC2, 1);
+	clks[TEGRA30_CLK_SDMMC3] = tegra_clk_register_periph("sdmmc3",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_SDMMC3, TEGRA30_CLK_SDMMC3, 1);
+	clks[TEGRA30_CLK_SDMMC4] = tegra_clk_register_periph("sdmmc4",
+			mux_pllpcm_clkm, ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_SDMMC4, TEGRA30_CLK_SDMMC4, 1);
+}
+
+static struct tegra_clk_init_table init_table[] = {
+	{TEGRA30_CLK_PLL_P,		TEGRA30_CLK_CLK_MAX,	408000000,	1},
+	{TEGRA30_CLK_PLL_P_OUT1,	TEGRA30_CLK_CLK_MAX,	9600000,	1},
+	{TEGRA30_CLK_PLL_P_OUT2,	TEGRA30_CLK_CLK_MAX,	48000000,	1},
+	{TEGRA30_CLK_PLL_P_OUT3,	TEGRA30_CLK_CLK_MAX,	102000000,	1},
+	{TEGRA30_CLK_PLL_P_OUT4,	TEGRA30_CLK_CLK_MAX,	204000000,	1},
+	{TEGRA30_CLK_MSELECT,		TEGRA30_CLK_PLL_P,	204000000,	1},
+	{TEGRA30_CLK_UARTA,		TEGRA30_CLK_PLL_P,	0,		1},
+	{TEGRA30_CLK_UARTB,		TEGRA30_CLK_PLL_P,	0,		1},
+	{TEGRA30_CLK_UARTC,		TEGRA30_CLK_PLL_P,	0,		1},
+	{TEGRA30_CLK_UARTD,		TEGRA30_CLK_PLL_P,	0,		1},
+	{TEGRA30_CLK_UARTE,		TEGRA30_CLK_PLL_P,	0,		1},
+	{TEGRA30_CLK_SDMMC1,		TEGRA30_CLK_PLL_P,	48000000,	0},
+	{TEGRA30_CLK_SDMMC2,		TEGRA30_CLK_PLL_P,	48000000,	0},
+	{TEGRA30_CLK_SDMMC3,		TEGRA30_CLK_PLL_P,	48000000,	0},
+	{TEGRA30_CLK_SDMMC4,		TEGRA30_CLK_PLL_P,	48000000,	0},
+	{TEGRA30_CLK_CLK_MAX,		TEGRA30_CLK_CLK_MAX,	0,	0}, /* sentinel */
+};
+
+static int tegra30_car_probe(struct device_d *dev)
+{
+	car_base = dev_request_mem_region(dev, 0);
+	if (!car_base)
+		return -EBUSY;
+
+	tegra30_osc_clk_init();
+	tegra30_pll_init();
+	tegra30_periph_init();
+
+	tegra_init_from_table(init_table, clks, TEGRA30_CLK_CLK_MAX);
+
+	/* speed up system bus */
+	writel(CRC_SCLK_BURST_POLICY_SYS_STATE_RUN <<
+	       CRC_SCLK_BURST_POLICY_SYS_STATE_SHIFT |
+	       CRC_SCLK_BURST_POLICY_SRC_PLLP_OUT4 <<
+	       CRC_SCLK_BURST_POLICY_RUN_SRC_SHIFT,
+	       car_base + CRC_SCLK_BURST_POLICY);
+
+	clk_data.clks = clks;
+	clk_data.clk_num = ARRAY_SIZE(clks);
+	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
+			    &clk_data);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id tegra30_car_dt_ids[] = {
+	{
+		.compatible = "nvidia,tegra30-car",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d tegra30_car_driver = {
+	.probe	= tegra30_car_probe,
+	.name	= "tegra30-car",
+	.of_compatible = DRV_OF_COMPAT(tegra30_car_dt_ids),
+};
+
+static int tegra30_car_init(void)
+{
+	return platform_driver_register(&tegra30_car_driver);
+}
+postcore_initcall(tegra30_car_init);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
