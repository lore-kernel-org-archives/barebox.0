Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UtOrT-0002dD-EP
 for barebox@lists.infradead.org; Sun, 30 Jun 2013 21:08:45 +0000
Received: from tellur.localdomain (p54832945.dip0.t-ipconnect.de
 [84.131.41.69]) by lynxeye.de (Postfix) with ESMTPA id 4AE8218B424F
 for <barebox@lists.infradead.org>; Sun, 30 Jun 2013 23:06:57 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 30 Jun 2013 23:08:49 +0200
Message-Id: <1372626529-23443-7-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 7/7] tegra: add peripheral clocks
To: barebox@lists.infradead.org

Only UART clocks are included for now, but the code should cover
other peripherals needs, too.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/tegra20-car.h |  49 ++++++
 drivers/clk/tegra/Makefile                     |   1 +
 drivers/clk/tegra/clk-periph.c                 | 202 +++++++++++++++++++++++++
 drivers/clk/tegra/clk-tegra20.c                |  28 ++++
 drivers/clk/tegra/clk.h                        |  23 +++
 5 files changed, 303 insertions(+)
 create mode 100644 drivers/clk/tegra/clk-periph.c

diff --git a/arch/arm/mach-tegra/include/mach/tegra20-car.h b/arch/arm/mach-tegra/include/mach/tegra20-car.h
index b770ae3..d4cb238 100644
--- a/arch/arm/mach-tegra/include/mach/tegra20-car.h
+++ b/arch/arm/mach-tegra/include/mach/tegra20-car.h
@@ -146,6 +146,55 @@
 #define CRC_PLLE_BASE			0x0e8
 #define CRC_PLLE_MISC			0x0ec
 
+#define CRC_CLK_SOURCE_I2S1		0x100
+#define CRC_CLK_SOURCE_I2S2		0x104
+#define CRC_CLK_SOURCE_SPDIF_OUT	0x108
+#define CRC_CLK_SOURCE_SPDIF_IN		0x10c
+#define CRC_CLK_SOURCE_PWM		0x110
+#define CRC_CLK_SOURCE_SPI		0x114
+#define CRC_CLK_SOURCE_SBC1		0x134
+#define CRC_CLK_SOURCE_SBC2		0x118
+#define CRC_CLK_SOURCE_SBC3		0x11c
+#define CRC_CLK_SOURCE_SBC4		0x1b4
+#define CRC_CLK_SOURCE_XIO		0x120
+#define CRC_CLK_SOURCE_TWC		0x12c
+#define CRC_CLK_SOURCE_IDE		0x144
+#define CRC_CLK_SOURCE_NDFLASH		0x160
+#define CRC_CLK_SOURCE_VFIR		0x168
+#define CRC_CLK_SOURCE_SDMMC1		0x150
+#define CRC_CLK_SOURCE_SDMMC2		0x154
+#define CRC_CLK_SOURCE_SDMMC3		0x1bc
+#define CRC_CLK_SOURCE_SDMMC4		0x164
+#define CRC_CLK_SOURCE_CVE		0x140
+#define CRC_CLK_SOURCE_TVO		0x188
+#define CRC_CLK_SOURCE_TVDAC		0x194
+#define CRC_CLK_SOURCE_HDMI		0x18c
+#define CRC_CLK_SOURCE_DISP1		0x138
+#define CRC_CLK_SOURCE_DISP2		0x13c
+#define CRC_CLK_SOURCE_CSITE		0x1d4
+#define CRC_CLK_SOURCE_LA		0x1f8
+#define CRC_CLK_SOURCE_OWR		0x1cc
+#define CRC_CLK_SOURCE_NOR		0x1d0
+#define CRC_CLK_SOURCE_MIPI		0x174
+#define CRC_CLK_SOURCE_I2C1		0x124
+#define CRC_CLK_SOURCE_I2C2		0x198
+#define CRC_CLK_SOURCE_I2C3		0x1b8
+#define CRC_CLK_SOURCE_DVC		0x128
+#define CRC_CLK_SOURCE_UARTA		0x178
+#define CRC_CLK_SOURCE_UARTB		0x17c
+#define CRC_CLK_SOURCE_UARTC		0x1a0
+#define CRC_CLK_SOURCE_UARTD		0x1c0
+#define CRC_CLK_SOURCE_UARTE		0x1c4
+#define CRC_CLK_SOURCE_3D		0x158
+#define CRC_CLK_SOURCE_2D		0x15c
+#define CRC_CLK_SOURCE_MPE		0x170
+#define CRC_CLK_SOURCE_EPP		0x16c
+#define CRC_CLK_SOURCE_HOST1X		0x180
+#define CRC_CLK_SOURCE_VDE		0x1c8
+#define CRC_CLK_SOURCE_VI		0x148
+#define CRC_CLK_SOURCE_VI_SENSOR	0x1a8
+#define CRC_CLK_SOURCE_EMC		0x19c
+
 #define CRC_RST_DEV_L_SET		0x300
 #define CRC_RST_DEV_L_CACHE2		(1 << 31)
 #define CRC_RST_DEV_L_VCP		(1 << 29)
diff --git a/drivers/clk/tegra/Makefile b/drivers/clk/tegra/Makefile
index be58c20..e614722 100644
--- a/drivers/clk/tegra/Makefile
+++ b/drivers/clk/tegra/Makefile
@@ -1,5 +1,6 @@
 obj-y	+= clk.o
 obj-y	+= clk-divider.o
+obj-y	+= clk-periph.o
 obj-y	+= clk-pll.o
 obj-y	+= clk-pll-out.o
 
diff --git a/drivers/clk/tegra/clk-periph.c b/drivers/clk/tegra/clk-periph.c
new file mode 100644
index 0000000..e969495
--- /dev/null
+++ b/drivers/clk/tegra/clk-periph.c
@@ -0,0 +1,202 @@
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
+#define to_clk_periph(_hw) container_of(_hw, struct tegra_clk_periph, hw)
+
+static int clk_periph_get_parent(struct clk *hw)
+{
+	struct tegra_clk_periph *periph = to_clk_periph(hw);
+
+	return periph->mux->ops->get_parent(periph->mux);
+}
+
+static int clk_periph_set_parent(struct clk *hw, u8 index)
+{
+	struct tegra_clk_periph *periph = to_clk_periph(hw);
+
+	return periph->mux->ops->set_parent(periph->mux, index);
+}
+
+static unsigned long clk_periph_recalc_rate(struct clk *hw,
+					    unsigned long parent_rate)
+{
+	struct tegra_clk_periph *periph = to_clk_periph(hw);
+
+	return periph->div->ops->recalc_rate(periph->div, parent_rate);
+}
+
+static long clk_periph_round_rate(struct clk *hw, unsigned long rate,
+				  unsigned long *prate)
+{
+	struct tegra_clk_periph *periph = to_clk_periph(hw);
+
+	return periph->div->ops->round_rate(periph->div, rate, prate);
+}
+
+static int clk_periph_set_rate(struct clk *hw, unsigned long rate,
+			       unsigned long parent_rate)
+{
+	struct tegra_clk_periph *periph = to_clk_periph(hw);
+
+	return periph->div->ops->set_rate(periph->div, rate, parent_rate);
+}
+
+static int clk_periph_is_enabled(struct clk *hw)
+{
+	struct tegra_clk_periph *periph = to_clk_periph(hw);
+
+	return periph->gate->ops->is_enabled(periph->gate);
+}
+
+static int clk_periph_enable(struct clk *hw)
+{
+	struct tegra_clk_periph *periph = to_clk_periph(hw);
+	u32 reg;
+
+	reg = readl(periph->rst_reg);
+	reg |= (1 << periph->rst_shift);
+	writel(reg, periph->rst_reg);
+
+	periph->gate->ops->enable(periph->gate);
+
+	udelay(2);
+
+	reg = readl(periph->rst_reg);
+	reg &= ~(1 << periph->rst_shift);
+	writel(reg, periph->rst_reg);
+
+	return 0;
+}
+
+static void clk_periph_disable(struct clk *hw)
+{
+	struct tegra_clk_periph *periph = to_clk_periph(hw);
+	u32 reg;
+
+	reg = readl(periph->rst_reg);
+	reg |= (1 << periph->rst_shift);
+	writel(reg, periph->rst_reg);
+
+	udelay(2);
+
+	periph->gate->ops->disable(periph->gate);
+}
+
+const struct clk_ops tegra_clk_periph_ops = {
+	.get_parent = clk_periph_get_parent,
+	.set_parent = clk_periph_set_parent,
+	.recalc_rate = clk_periph_recalc_rate,
+	.round_rate = clk_periph_round_rate,
+	.set_rate = clk_periph_set_rate,
+	.is_enabled = clk_periph_is_enabled,
+	.enable = clk_periph_enable,
+	.disable = clk_periph_disable,
+};
+
+const struct clk_ops tegra_clk_periph_nodiv_ops = {
+	.get_parent = clk_periph_get_parent,
+	.set_parent = clk_periph_set_parent,
+	.is_enabled = clk_periph_is_enabled,
+	.enable = clk_periph_enable,
+	.disable = clk_periph_disable,
+};
+
+struct clk *_tegra_clk_register_periph(const char *name,
+		const char **parent_names, int num_parents,
+		void __iomem *clk_base, u32 reg_offset, u8 id, u8 flags,
+		bool has_div)
+{
+	struct tegra_clk_periph *periph;
+	int ret;
+
+	periph = kzalloc(sizeof(*periph), GFP_KERNEL);
+	if (!periph) {
+		pr_err("%s: could not allocate peripheral clk\n",
+		       __func__);
+		goto out_periph;
+	}
+
+	periph->mux = clk_mux_alloc(NULL, clk_base + reg_offset, 30, 2,
+				    parent_names, num_parents);
+	if (!periph->mux)
+		goto out_mux;
+
+	periph->gate = clk_gate_alloc(NULL, NULL, clk_base + 0x10 +
+				      ((id >> 3) & 0xc), id & 0x1f);
+	if (!periph->gate)
+		goto out_gate;
+
+	if (has_div) {
+		periph->div = tegra_clk_divider_alloc(NULL, NULL, clk_base +
+				reg_offset, 0, TEGRA_DIVIDER_ROUND_UP, 0, 8, 1);
+		if (!periph->div)
+			goto out_div;
+	}
+
+	periph->hw.name = name;
+	periph->hw.ops = has_div ? &tegra_clk_periph_ops :
+				   &tegra_clk_periph_nodiv_ops;
+	periph->hw.parent_names = parent_names;
+	periph->hw.num_parents = num_parents;
+	periph->flags = flags;
+	periph->rst_reg = clk_base + 0x4 + ((id >> 3) & 0xc);
+	periph->rst_shift = id & 0x1f;
+
+	ret = clk_register(&periph->hw);
+	if (ret)
+		goto out_register;
+
+	return &periph->hw;
+
+out_register:
+	tegra_clk_divider_free(periph->div);
+out_div:
+	clk_gate_free(periph->gate);
+out_gate:
+	clk_mux_free(periph->mux);
+out_mux:
+	kfree(periph);
+out_periph:
+	return NULL;
+}
+
+struct clk *tegra_clk_register_periph_nodiv(const char *name,
+		const char **parent_names, int num_parents,
+		void __iomem *clk_base, u32 reg_offset, u8 id, u8 flags)
+{
+	return _tegra_clk_register_periph(name, parent_names, num_parents,
+					  clk_base, reg_offset, id, flags,
+					  false);
+}
+
+struct clk *tegra_clk_register_periph(const char *name,
+		const char **parent_names, int num_parents,
+		void __iomem *clk_base, u32 reg_offset, u8 id, u8 flags)
+{
+	return _tegra_clk_register_periph(name, parent_names, num_parents,
+					  clk_base, reg_offset, id, flags,
+					  true);
+}
diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index 5f668cb..e70f99a 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -275,6 +275,28 @@ static void tegra20_pll_init(void)
 			TEGRA_PLL_HAS_CPCON, pll_u_freq_table);
 }
 
+static const char *mux_pllpcm_clkm[] = {"pll_p", "pll_c", "pll_m", "clk_m"};
+
+static void tegra20_periph_init(void)
+{
+	/* peripheral clocks without a divider */
+	clks[uarta] = tegra_clk_register_periph_nodiv("uarta", mux_pllpcm_clkm,
+			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_UARTA, uarta, TEGRA_PERIPH_ON_APB);
+	clks[uartb] = tegra_clk_register_periph_nodiv("uartb", mux_pllpcm_clkm,
+			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_UARTB, uartb, TEGRA_PERIPH_ON_APB);
+	clks[uartc] = tegra_clk_register_periph_nodiv("uartc", mux_pllpcm_clkm,
+			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_UARTC, uartc, TEGRA_PERIPH_ON_APB);
+	clks[uartd] = tegra_clk_register_periph_nodiv("uartd", mux_pllpcm_clkm,
+			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_UARTD, uartd, TEGRA_PERIPH_ON_APB);
+	clks[uarte] = tegra_clk_register_periph_nodiv("uarte", mux_pllpcm_clkm,
+			ARRAY_SIZE(mux_pllpcm_clkm), car_base,
+			CRC_CLK_SOURCE_UARTE, uarte, TEGRA_PERIPH_ON_APB);
+}
+
 static struct tegra_clk_init_table init_table[] = {
 	{pll_p,		clk_max,	216000000,	1},
 	{pll_p_out1,	clk_max,	28800000,	1},
@@ -283,6 +305,11 @@ static struct tegra_clk_init_table init_table[] = {
 	{pll_p_out4,	clk_max,	24000000,	1},
 	{pll_c,		clk_max,	600000000,	1},
 	{pll_c_out1,	clk_max,	120000000,	1},
+	{uarta,		pll_p,		0,		1},
+	{uartb,		pll_p,		0,		1},
+	{uartc,		pll_p,		0,		1},
+	{uartd,		pll_p,		0,		1},
+	{uarte,		pll_p,		0,		1},
 	{clk_max,	clk_max,	0,		0}, /* sentinel */
 };
 
@@ -294,6 +321,7 @@ static int tegra20_car_probe(struct device_d *dev)
 
 	tegra20_osc_clk_init();
 	tegra20_pll_init();
+	tegra20_periph_init();
 
 	tegra_init_from_table(init_table, clks, clk_max);
 
diff --git a/drivers/clk/tegra/clk.h b/drivers/clk/tegra/clk.h
index 2bc3698..9bb8f1c 100644
--- a/drivers/clk/tegra/clk.h
+++ b/drivers/clk/tegra/clk.h
@@ -115,6 +115,29 @@ struct clk *tegra_clk_register_pll_out(const char *name,
 		const char *parent_name, void __iomem *reg, u8 shift,
 		u8 divider_flags);
 
+/* struct clk-periph - peripheral clock */
+struct tegra_clk_periph {
+	struct clk	hw;
+	struct clk	*gate;
+	struct clk	*mux;
+	struct clk	*div;
+	u8 		flags;
+	u8		rst_shift;
+	void __iomem	*rst_reg;
+};
+
+#define TEGRA_PERIPH_NO_RESET BIT(0)
+#define TEGRA_PERIPH_MANUAL_RESET BIT(1)
+#define TEGRA_PERIPH_ON_APB BIT(2)
+
+struct clk *tegra_clk_register_periph_nodiv(const char *name,
+		const char **parent_names, int num_parents,
+		void __iomem *clk_base, u32 reg_offset, u8 id, u8 flags);
+
+struct clk *tegra_clk_register_periph(const char *name,
+		const char **parent_names, int num_parents,
+		void __iomem *clk_base, u32 reg_offset, u8 id, u8 flags);
+
 /* struct clk_init_table - clock initialization table */
 struct tegra_clk_init_table {
 	unsigned int	clk_id;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
