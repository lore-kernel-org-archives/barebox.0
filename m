Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBxdh-0006z1-Ie
 for barebox@lists.infradead.org; Sun, 03 Mar 2013 01:22:59 +0000
Message-Id: <13f79e3d64f81140c9637abbf78cf3a70be1099c.1362273612.git.joshc@eso.teric.us>
In-Reply-To: <cover.1362273612.git.joshc@eso.teric.us>
References: <cover.1362273612.git.joshc@eso.teric.us>
From: Josh Cartwright <joshc@eso.teric.us>
Date: Sat, 2 Mar 2013 18:48:47 -0600
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
Subject: [PATCH 4/5] ARM: zynq: add support for Zynq 7000 SoC
To: barebox@lists.infradead.org
Cc: Michal Simek <monstr@monstr.eu>

Signed-off-by: Josh Cartwright <joshc@eso.teric.us>
---
 arch/arm/Kconfig                           |   9 +
 arch/arm/mach-zynq/Kconfig                 |   3 +
 arch/arm/mach-zynq/Makefile                |   1 +
 arch/arm/mach-zynq/clocks.c                | 341 +++++++++++++++++++++++++++++
 arch/arm/mach-zynq/include/mach/clkdev.h   |   7 +
 arch/arm/mach-zynq/include/mach/debug_ll.h |  21 ++
 arch/arm/mach-zynq/include/mach/slcr.h     |  26 +++
 arch/arm/mach-zynq/reset.c                 |  28 +++
 8 files changed, 436 insertions(+)
 create mode 100644 arch/arm/mach-zynq/Kconfig
 create mode 100644 arch/arm/mach-zynq/Makefile
 create mode 100644 arch/arm/mach-zynq/clocks.c
 create mode 100644 arch/arm/mach-zynq/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-zynq/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-zynq/include/mach/slcr.h
 create mode 100644 arch/arm/mach-zynq/reset.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 28332ec..37b7de0 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -110,6 +110,14 @@ config ARCH_TEGRA
 	select CPU_ARM926T
 	select HAS_DEBUG_LL
 
+config ARCH_ZYNQ
+	bool "Xilinx Zynq-based boards"
+	select CPU_V7
+	select HAS_DEBUG_LL
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
+	select ARM_SMP_TWD
+
 endchoice
 
 source arch/arm/cpu/Kconfig
@@ -126,6 +134,7 @@ source arch/arm/mach-pxa/Kconfig
 source arch/arm/mach-samsung/Kconfig
 source arch/arm/mach-versatile/Kconfig
 source arch/arm/mach-tegra/Kconfig
+source arch/arm/mach-zynq/Kconfig
 
 config ARM_ASM_UNIFIED
 	bool
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
new file mode 100644
index 0000000..90b17f3
--- /dev/null
+++ b/arch/arm/mach-zynq/Kconfig
@@ -0,0 +1,3 @@
+if ARCH_ZYNQ
+
+endif
diff --git a/arch/arm/mach-zynq/Makefile b/arch/arm/mach-zynq/Makefile
new file mode 100644
index 0000000..58c62a9
--- /dev/null
+++ b/arch/arm/mach-zynq/Makefile
@@ -0,0 +1 @@
+obj-y	+= reset.o clocks.o
diff --git a/arch/arm/mach-zynq/clocks.c b/arch/arm/mach-zynq/clocks.c
new file mode 100644
index 0000000..1e8ca5a
--- /dev/null
+++ b/arch/arm/mach-zynq/clocks.c
@@ -0,0 +1,341 @@
+/*
+ * Copyright (c) 2013 Josh Cartwright <joshc@eso.teric.us>
+ *
+ * Based on drivers/clk-zynq.c from Linux.
+ *
+ * Copyright (c) 2012 National Instruments
+ *
+ * Josh Cartwright <josh.cartwright@ni.com>
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
+ * You should have received a copy of the GNU General Public License along with
+ * this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+
+#include <io.h>
+
+#define ZYNQ_SLCR_BASE	0xF8000000
+
+enum zynq_clks {
+	dummy, ps_clk, arm_pll, ddr_pll, io_pll, uart_clk, uart0, uart1,
+	cpu_clk, cpu_6x4x, cpu_3x2x, cpu_2x, cpu_1x, clks_max
+};
+
+static struct clk *clks[clks_max];
+
+struct zynq_pll_clk {
+	struct clk	clk;
+	void __iomem	*pll_ctrl;
+};
+
+#define to_zynq_pll_clk(c)	container_of(c, struct zynq_pll_clk, clk)
+
+#define PLL_CTRL_FDIV(x)	(((x) >> 12) & 0x7F)
+
+static unsigned long zynq_pll_recalc_rate(struct clk *clk,
+					  unsigned long parent_rate)
+{
+	struct zynq_pll_clk *pll = to_zynq_pll_clk(clk);
+	return parent_rate * PLL_CTRL_FDIV(readl(pll->pll_ctrl));
+}
+
+static struct clk_ops zynq_pll_clk_ops = {
+	.recalc_rate	= zynq_pll_recalc_rate,
+};
+
+static inline struct clk *zynq_pll_clk(const char *name, void __iomem *pll_ctrl)
+{
+	static const char *pll_parent = "ps_clk";
+	struct zynq_pll_clk *pll;
+	int ret;
+
+	pll = xzalloc(sizeof(*pll));
+
+	pll->pll_ctrl		= pll_ctrl;
+	pll->clk.ops		= &zynq_pll_clk_ops;
+	pll->clk.name		= name;
+	pll->clk.parent_names	= &pll_parent;
+	pll->clk.num_parents	= 1;
+
+	ret = clk_register(&pll->clk);
+	if (ret) {
+		free(pll);
+		return ERR_PTR(ret);
+	}
+
+	return &pll->clk;
+}
+
+struct zynq_periph_clk {
+	struct clk	clk;
+	void __iomem	*clk_ctrl;
+};
+
+#define to_zynq_periph_clk(c)	container_of(c, struct zynq_periph_clk, c)
+
+static const u8 periph_clk_parent_map[] = {
+	0, 0, 1, 2
+};
+#define PERIPH_CLK_CTRL_SRC(x)	(periph_clk_parent_map[((x) & 0x30) >> 4])
+#define PERIPH_CLK_CTRL_DIV(x)	(((x) & 0x3F00) >> 8)
+
+static unsigned long zynq_periph_recalc_rate(struct clk *clk,
+					     unsigned long parent_rate)
+{
+	struct zynq_periph_clk *periph = to_zynq_periph_clk(clk);
+	return parent_rate / PERIPH_CLK_CTRL_DIV(readl(periph->clk_ctrl));
+}
+
+static int zynq_periph_get_parent(struct clk *clk)
+{
+	struct zynq_periph_clk *periph = to_zynq_periph_clk(clk);
+	return PERIPH_CLK_CTRL_SRC(readl(periph->clk_ctrl));
+}
+
+static const struct clk_ops zynq_periph_clk_ops = {
+	.recalc_rate	= zynq_periph_recalc_rate,
+	.get_parent	= zynq_periph_get_parent,
+};
+
+static struct clk *zynq_periph_clk(const char *name, void __iomem *clk_ctrl)
+{
+	static const char *peripheral_parents[] = {
+		"io_pll",
+		"arm_pll",
+		"ddr_pll",
+	};
+	struct zynq_periph_clk *periph;
+	int ret;
+
+	periph = xzalloc(sizeof(*periph));
+
+	periph->clk_ctrl	= clk_ctrl;
+	periph->clk.name	= name;
+	periph->clk.ops		= &zynq_periph_clk_ops;
+
+	periph->clk.parent_names = peripheral_parents;
+	periph->clk.num_parents  = ARRAY_SIZE(peripheral_parents);
+
+	ret = clk_register(&periph->clk);
+	if (ret) {
+		free(periph);
+		return ERR_PTR(ret);
+	}
+
+	return &periph->clk;
+}
+
+/* CPU Clock domain is modelled as a mux with 4 children subclks, whose
+ * derivative rates depend on CLK_621_TRUE
+ */
+
+struct zynq_cpu_clk {
+	struct clk		clk;
+	void __iomem		*clk_ctrl;
+};
+
+#define to_zynq_cpu_clk(c)	container_of(c, struct zynq_cpu_clk, c)
+
+static const u8 zynq_cpu_clk_parent_map[] = {
+	1, 1, 2, 0
+};
+#define CPU_CLK_SRCSEL(x)	(zynq_cpu_clk_parent_map[(((x) & 0x30) >> 4)])
+#define CPU_CLK_CTRL_DIV(x)	(((x) & 0x3F00) >> 8)
+
+static unsigned long zynq_cpu_clk_recalc_rate(struct clk *clk,
+					      unsigned long parent_rate)
+{
+	struct zynq_cpu_clk *cpuclk = to_zynq_cpu_clk(clk);
+	return parent_rate / CPU_CLK_CTRL_DIV(readl(cpuclk->clk_ctrl));
+}
+
+static int zynq_cpu_clk_get_parent(struct clk *clk)
+{
+	struct zynq_cpu_clk *cpuclk = to_zynq_cpu_clk(clk);
+	return CPU_CLK_SRCSEL(readl(cpuclk->clk_ctrl));
+}
+
+static const struct clk_ops zynq_cpu_clk_ops = {
+	.get_parent	= zynq_cpu_clk_get_parent,
+	.recalc_rate	= zynq_cpu_clk_recalc_rate,
+};
+
+static struct clk *zynq_cpu_clk(const char *name, void __iomem *clk_ctrl)
+{
+	static const char *cpu_parents[] = {
+		"io_pll",
+		"arm_pll",
+		"ddr_pll",
+	};
+	struct zynq_cpu_clk *cpu;
+	int ret;
+
+	cpu = xzalloc(sizeof(*cpu));
+
+	cpu->clk_ctrl		= clk_ctrl;
+	cpu->clk.ops		= &zynq_cpu_clk_ops;
+	cpu->clk.name		= name;
+	cpu->clk.parent_names	= cpu_parents;
+	cpu->clk.num_parents	= ARRAY_SIZE(cpu_parents);
+
+	ret = clk_register(&cpu->clk);
+	if (ret) {
+		free(cpu);
+		return ERR_PTR(ret);
+	}
+
+	return &cpu->clk;
+}
+
+enum zynq_cpu_subclk_which {
+	CPU_SUBCLK_6X4X,
+	CPU_SUBCLK_3X2X,
+	CPU_SUBCLK_2X,
+	CPU_SUBCLK_1X,
+};
+
+struct zynq_cpu_subclk {
+	struct clk	clk;
+	void __iomem	*clk_ctrl;
+	void __iomem	*clk_621;
+	enum zynq_cpu_subclk_which which;
+};
+
+#define CLK_621_TRUE(x)	((x) & 1)
+
+#define to_zynq_cpu_subclk(c)	container_of(c, struct zynq_cpu_subclk, c);
+
+static unsigned long zynq_cpu_subclk_recalc_rate(struct clk *clk,
+						 unsigned long parent_rate)
+{
+	unsigned long uninitialized_var(rate);
+	struct zynq_cpu_subclk *subclk;
+	bool is_621;
+
+	subclk = to_zynq_cpu_subclk(clk)
+	is_621 = CLK_621_TRUE(readl(subclk->clk_621));
+
+	switch (subclk->which) {
+	case CPU_SUBCLK_6X4X:
+		rate = parent_rate;
+		break;
+	case CPU_SUBCLK_3X2X:
+		rate = parent_rate / 2;
+		break;
+	case CPU_SUBCLK_2X:
+		rate = parent_rate / (is_621 ? 3 : 2);
+		break;
+	case CPU_SUBCLK_1X:
+		rate = parent_rate / (is_621 ? 6 : 4);
+		break;
+	};
+
+	return rate;
+}
+
+static int zynq_cpu_subclk_enable(struct clk *clk)
+{
+	struct zynq_cpu_subclk *subclk;
+	u32 tmp;
+
+	subclk = to_zynq_cpu_subclk(clk);
+
+	tmp = readl(subclk->clk_ctrl);
+	tmp |= 1 << (24 + subclk->which);
+	writel(tmp, subclk->clk_ctrl);
+
+	return 0;
+}
+
+static void zynq_cpu_subclk_disable(struct clk *clk)
+{
+	struct zynq_cpu_subclk *subclk;
+	u32 tmp;
+
+	subclk = to_zynq_cpu_subclk(clk);
+
+	tmp = readl(subclk->clk_ctrl);
+	tmp &= ~(1 << (24 + subclk->which));
+	writel(tmp, subclk->clk_ctrl);
+}
+
+static const struct clk_ops zynq_cpu_subclk_ops = {
+	.enable		= zynq_cpu_subclk_enable,
+	.disable	= zynq_cpu_subclk_disable,
+	.recalc_rate	= zynq_cpu_subclk_recalc_rate,
+};
+
+static struct clk *zynq_cpu_subclk(const char *name,
+				   enum zynq_cpu_subclk_which which,
+				   void __iomem *clk_ctrl,
+				   void __iomem *clk_621)
+{
+	static const char *subclk_parent = "cpu_clk";
+	struct zynq_cpu_subclk *subclk;
+	int ret;
+
+	subclk = xzalloc(sizeof(*subclk));
+
+	subclk->clk_ctrl	= clk_ctrl;
+	subclk->clk_621		= clk_621;
+	subclk->which		= which;
+	subclk->clk.name	= name;
+	subclk->clk.ops		= &zynq_cpu_subclk_ops;
+
+	subclk->clk.parent_names	= &subclk_parent;
+	subclk->clk.num_parents		= 1;
+
+	ret = clk_register(&subclk->clk);
+	if (ret) {
+		free(subclk);
+		return ERR_PTR(ret);
+	}
+
+	return &subclk->clk;
+}
+
+static int zynq_init_clks(void)
+{
+	void __iomem *slcr_base = (void __iomem *) ZYNQ_SLCR_BASE;
+
+	request_iomem_region("zynq_slcr", ZYNQ_SLCR_BASE,
+			     ZYNQ_SLCR_BASE + 0x1000);
+
+	clks[ps_clk]  = clk_fixed("ps_clk", CONFIG_ZYNQ_PS_CLK_FREQ);
+
+	clks[arm_pll] = zynq_pll_clk("arm_pll", slcr_base + 0x100);
+	clks[ddr_pll] = zynq_pll_clk("ddr_pll", slcr_base + 0x104);
+	clks[ io_pll] = zynq_pll_clk( "io_pll", slcr_base + 0x108);
+
+	clks[uart_clk] = zynq_periph_clk("uart_clk", slcr_base + 0x154);
+
+	clks[uart0] = clk_gate("uart0", "uart_clk", slcr_base + 0x154, 0);
+	clks[uart1] = clk_gate("uart1", "uart_clk", slcr_base + 0x154, 1);
+
+	clks[cpu_clk] = zynq_cpu_clk("cpu_clk", slcr_base + 0x120);
+
+	clks[cpu_6x4x] = zynq_cpu_subclk("cpu_6x4x", CPU_SUBCLK_6X4X, slcr_base + 0x120, slcr_base + 0x1C4);
+	clks[cpu_3x2x] = zynq_cpu_subclk("cpu_3x2x", CPU_SUBCLK_3X2X, slcr_base + 0x120, slcr_base + 0x1C4);
+	clks[  cpu_2x] = zynq_cpu_subclk(  "cpu_2x",   CPU_SUBCLK_2X, slcr_base + 0x120, slcr_base + 0x1C4);
+	clks[  cpu_1x] = zynq_cpu_subclk(  "cpu_1x",   CPU_SUBCLK_1X, slcr_base + 0x120, slcr_base + 0x1C4);
+
+	clk_register_clkdev(clks[cpu_3x2x], NULL, "smp_twd0");
+	clk_register_clkdev(clks[uart0], NULL, "zynq_serial0");
+	clk_register_clkdev(clks[uart1], NULL, "zynq_serial1");
+	return 0;
+}
+core_initcall(zynq_init_clks);
diff --git a/arch/arm/mach-zynq/include/mach/clkdev.h b/arch/arm/mach-zynq/include/mach/clkdev.h
new file mode 100644
index 0000000..04b37a8
--- /dev/null
+++ b/arch/arm/mach-zynq/include/mach/clkdev.h
@@ -0,0 +1,7 @@
+#ifndef __ASM_MACH_CLKDEV_H
+#define __ASM_MACH_CLKDEV_H
+
+#define __clk_get(clk) ({ 1; })
+#define __clk_put(clk) do { } while (0)
+
+#endif
diff --git a/arch/arm/mach-zynq/include/mach/debug_ll.h b/arch/arm/mach-zynq/include/mach/debug_ll.h
new file mode 100644
index 0000000..bb180a6
--- /dev/null
+++ b/arch/arm/mach-zynq/include/mach/debug_ll.h
@@ -0,0 +1,21 @@
+#ifndef __MACH_DEBUG_LL_H__
+#define __MACH_DEBUG_LL_H__
+
+#include <io.h>
+
+#define UART_BASE	0xE0001000
+#define UART_SR		0x0000002C
+#define UART_FIFO	0x00000030
+
+#define UART_SR_TXEMPTY	(1<<3)
+
+static inline void PUTC_LL(char c)
+{
+	void __iomem *base = (void __iomem *) UART_BASE;
+
+	writel(c, base + UART_FIFO);
+
+	while (!(readl(base + UART_SR) & UART_SR_TXEMPTY));
+}
+
+#endif
diff --git a/arch/arm/mach-zynq/include/mach/slcr.h b/arch/arm/mach-zynq/include/mach/slcr.h
new file mode 100644
index 0000000..eada153
--- /dev/null
+++ b/arch/arm/mach-zynq/include/mach/slcr.h
@@ -0,0 +1,26 @@
+#ifndef __MACH_SLCR_H__
+#define __MACH_SLCR_H__
+
+#include <io.h>
+
+#define SLCR_BASE		0xF8000000
+#define SLCR_LOCK		0x00000004
+#define SLCR_UNLOCK		0x00000008
+#define SLCR_PSS_RST_CTRL	0x00000200
+
+static inline void slcr_write(unsigned long val, unsigned long reg)
+{
+	writel(val, SLCR_BASE + reg);
+}
+
+static inline void slcr_unlock(void)
+{
+	slcr_write(0xDF0D, SLCR_UNLOCK);
+}
+
+static inline void slcr_lock(void)
+{
+	slcr_write(0x767B, SLCR_LOCK);
+}
+
+#endif
diff --git a/arch/arm/mach-zynq/reset.c b/arch/arm/mach-zynq/reset.c
new file mode 100644
index 0000000..8554eca
--- /dev/null
+++ b/arch/arm/mach-zynq/reset.c
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2013 Josh Cartwright <joshc@eso.teric.us>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+#include <common.h>
+#include <mach/slcr.h>
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	slcr_unlock();
+	slcr_write(1, SLCR_PSS_RST_CTRL);
+
+	while (1);
+}
-- 
1.8.1.2



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
