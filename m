Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x236.google.com ([2a00:1450:4008:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9xXm-00061n-Eo
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 13:25:00 +0000
Received: by mail-bk0-f54.google.com with SMTP id mz12so232487bkb.27
 for <barebox@lists.infradead.org>; Thu, 15 Aug 2013 06:24:27 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Thu, 15 Aug 2013 15:24:18 +0200
Message-Id: <1376573059-15055-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1376573059-15055-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1376573059-15055-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 2/3] clk: mvebu: add OF clock providers for Marvell MVEBU SoCs
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

This adds of_clk_providers for core clocks and clock gates found on
Marvell MVEBU SoCs (Armada 370, Armada XP, Dove, and Kirkwood).
It is based on Linux clock providers with clock flags removed, as they
are not used on Barebox.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/Kconfig               |    1 +
 drivers/clk/Makefile           |    1 +
 drivers/clk/mvebu/Makefile     |    5 +
 drivers/clk/mvebu/armada-370.c |  160 ++++++++++++++++++++++++++++
 drivers/clk/mvebu/armada-xp.c  |  194 ++++++++++++++++++++++++++++++++++
 drivers/clk/mvebu/common.c     |  208 +++++++++++++++++++++++++++++++++++++
 drivers/clk/mvebu/common.h     |   70 +++++++++++++
 drivers/clk/mvebu/dove.c       |  179 ++++++++++++++++++++++++++++++++
 drivers/clk/mvebu/kirkwood.c   |  224 ++++++++++++++++++++++++++++++++++++++++
 9 files changed, 1042 insertions(+), 0 deletions(-)
 create mode 100644 drivers/clk/mvebu/Makefile
 create mode 100644 drivers/clk/mvebu/armada-370.c
 create mode 100644 drivers/clk/mvebu/armada-xp.c
 create mode 100644 drivers/clk/mvebu/common.c
 create mode 100644 drivers/clk/mvebu/common.h
 create mode 100644 drivers/clk/mvebu/dove.c
 create mode 100644 drivers/clk/mvebu/kirkwood.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index e4db8da..7a54bd3 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -83,6 +83,7 @@ config ARCH_IMX
 config ARCH_MVEBU
 	bool "Marvell EBU platforms"
 	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
 	select CLKDEV_LOOKUP
 	select GPIOLIB
 	select HAS_DEBUG_LL
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index fb426c0..a121947 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -2,5 +2,6 @@ obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o \
 				clk-mux.o clk-gate.o clk-divider-table.o
 obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
 
+obj-$(CONFIG_ARCH_MVEBU)	+= mvebu/
 obj-$(CONFIG_ARCH_MXS)		+= mxs/
 obj-$(CONFIG_ARCH_TEGRA)	+= tegra/
diff --git a/drivers/clk/mvebu/Makefile b/drivers/clk/mvebu/Makefile
new file mode 100644
index 0000000..6255a5f
--- /dev/null
+++ b/drivers/clk/mvebu/Makefile
@@ -0,0 +1,5 @@
+obj-y				+= common.o
+obj-$(CONFIG_ARCH_ARMADA_370)	+= armada-370.o
+obj-$(CONFIG_ARCH_ARMADA_XP)	+= armada-xp.o
+obj-$(CONFIG_ARCH_DOVE)		+= dove.o
+obj-$(CONFIG_ARCH_KIRKWOOD)	+= kirkwood.o
diff --git a/drivers/clk/mvebu/armada-370.c b/drivers/clk/mvebu/armada-370.c
new file mode 100644
index 0000000..d189c6c
--- /dev/null
+++ b/drivers/clk/mvebu/armada-370.c
@@ -0,0 +1,160 @@
+/*
+ * Marvell Armada 370 SoC clocks
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * Based on Linux Marvell MVEBU clock providers
+ *   Copyright (C) 2012 Marvell
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2.  This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#include <common.h>
+#include <io.h>
+
+#include "common.h"
+
+/*
+ * Core Clocks
+ */
+
+#define SARL				0	/* Low part [0:31] */
+#define	 SARL_A370_PCLK_FREQ_OPT	11
+#define	 SARL_A370_PCLK_FREQ_OPT_MASK	0xF
+#define	 SARL_A370_FAB_FREQ_OPT		15
+#define	 SARL_A370_FAB_FREQ_OPT_MASK	0x1F
+#define	 SARL_A370_TCLK_FREQ_OPT	20
+#define	 SARL_A370_TCLK_FREQ_OPT_MASK	0x1
+
+enum { A370_CPU_TO_NBCLK, A370_CPU_TO_HCLK, A370_CPU_TO_DRAMCLK };
+
+static const struct coreclk_ratio a370_coreclk_ratios[] = {
+	{ .id = A370_CPU_TO_NBCLK, .name = "nbclk" },
+	{ .id = A370_CPU_TO_HCLK, .name = "hclk" },
+	{ .id = A370_CPU_TO_DRAMCLK, .name = "dramclk" },
+};
+
+static const u32 a370_tclk_freqs[] = {
+	16600000,
+	20000000,
+};
+
+static u32 a370_get_tclk_freq(void __iomem *sar)
+{
+	u8 tclk_freq_select = 0;
+
+	tclk_freq_select = ((readl(sar) >> SARL_A370_TCLK_FREQ_OPT) &
+			    SARL_A370_TCLK_FREQ_OPT_MASK);
+	return a370_tclk_freqs[tclk_freq_select];
+}
+
+static const u32 a370_cpu_freqs[] = {
+	400000000,
+	533000000,
+	667000000,
+	800000000,
+	1000000000,
+	1067000000,
+	1200000000,
+};
+
+static u32 a370_get_cpu_freq(void __iomem *sar)
+{
+	u32 cpu_freq;
+	u8 cpu_freq_select = 0;
+
+	cpu_freq_select = ((readl(sar) >> SARL_A370_PCLK_FREQ_OPT) &
+			   SARL_A370_PCLK_FREQ_OPT_MASK);
+	if (cpu_freq_select >= ARRAY_SIZE(a370_cpu_freqs)) {
+		pr_err("CPU freq select unsupported %d\n", cpu_freq_select);
+		cpu_freq = 0;
+	} else
+		cpu_freq = a370_cpu_freqs[cpu_freq_select];
+
+	return cpu_freq;
+}
+
+static const int a370_nbclk_ratios[32][2] = {
+	{0, 1}, {1, 2}, {2, 2}, {2, 2},
+	{1, 2}, {1, 2}, {1, 1}, {2, 3},
+	{0, 1}, {1, 2}, {2, 4}, {0, 1},
+	{1, 2}, {0, 1}, {0, 1}, {2, 2},
+	{0, 1}, {0, 1}, {0, 1}, {1, 1},
+	{2, 3}, {0, 1}, {0, 1}, {0, 1},
+	{0, 1}, {0, 1}, {0, 1}, {1, 1},
+	{0, 1}, {0, 1}, {0, 1}, {0, 1},
+};
+
+static const int a370_hclk_ratios[32][2] = {
+	{0, 1}, {1, 2}, {2, 6}, {2, 3},
+	{1, 3}, {1, 4}, {1, 2}, {2, 6},
+	{0, 1}, {1, 6}, {2, 10}, {0, 1},
+	{1, 4}, {0, 1}, {0, 1}, {2, 5},
+	{0, 1}, {0, 1}, {0, 1}, {1, 2},
+	{2, 6}, {0, 1}, {0, 1}, {0, 1},
+	{0, 1}, {0, 1}, {0, 1}, {1, 1},
+	{0, 1}, {0, 1}, {0, 1}, {0, 1},
+};
+
+static const int a370_dramclk_ratios[32][2] = {
+	{0, 1}, {1, 2}, {2, 3}, {2, 3},
+	{1, 3}, {1, 2}, {1, 2}, {2, 6},
+	{0, 1}, {1, 3}, {2, 5}, {0, 1},
+	{1, 4}, {0, 1}, {0, 1}, {2, 5},
+	{0, 1}, {0, 1}, {0, 1}, {1, 1},
+	{2, 3}, {0, 1}, {0, 1}, {0, 1},
+	{0, 1}, {0, 1}, {0, 1}, {1, 1},
+	{0, 1}, {0, 1}, {0, 1}, {0, 1},
+};
+
+static void a370_get_clk_ratio(
+	void __iomem *sar, int id, int *mult, int *div)
+{
+	u32 opt = ((readl(sar) >> SARL_A370_FAB_FREQ_OPT) &
+		SARL_A370_FAB_FREQ_OPT_MASK);
+
+	switch (id) {
+	case A370_CPU_TO_NBCLK:
+		*mult = a370_nbclk_ratios[opt][0];
+		*div = a370_nbclk_ratios[opt][1];
+		break;
+	case A370_CPU_TO_HCLK:
+		*mult = a370_hclk_ratios[opt][0];
+		*div = a370_hclk_ratios[opt][1];
+		break;
+	case A370_CPU_TO_DRAMCLK:
+		*mult = a370_dramclk_ratios[opt][0];
+		*div = a370_dramclk_ratios[opt][1];
+		break;
+	}
+}
+
+const struct coreclk_soc_desc armada_370_coreclks = {
+	.get_tclk_freq = a370_get_tclk_freq,
+	.get_cpu_freq = a370_get_cpu_freq,
+	.get_clk_ratio = a370_get_clk_ratio,
+	.ratios = a370_coreclk_ratios,
+	.num_ratios = ARRAY_SIZE(a370_coreclk_ratios),
+};
+
+/*
+ * Clock Gating Control
+ */
+
+const struct clk_gating_soc_desc armada_370_gating_desc[] = {
+	{ "audio", NULL, 0 },
+	{ "pex0_en", NULL, 1 },
+	{ "pex1_en", NULL, 2 },
+	{ "ge1", NULL, 3 },
+	{ "ge0", NULL, 4 },
+	{ "pex0", "pex0_en", 5 },
+	{ "pex1", "pex1_en", 9 },
+	{ "sata0", NULL, 15 },
+	{ "sdio", NULL, 17 },
+	{ "tdm", NULL, 25 },
+	{ "ddr", NULL, 28 },
+	{ "sata1", NULL, 30 },
+	{ }
+};
diff --git a/drivers/clk/mvebu/armada-xp.c b/drivers/clk/mvebu/armada-xp.c
new file mode 100644
index 0000000..ffe4f27
--- /dev/null
+++ b/drivers/clk/mvebu/armada-xp.c
@@ -0,0 +1,194 @@
+/*
+ * Marvell Armada XP SoC clocks
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * Based on Linux Marvell MVEBU clock providers
+ *   Copyright (C) 2012 Marvell
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2.  This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#include <common.h>
+#include <io.h>
+
+#include "common.h"
+
+/*
+ * Core Clocks
+ *
+ * Armada XP Sample At Reset is a 64 bit bitfiled split in two
+ * register of 32 bits
+ */
+
+#define SARL				0	/* Low part [0:31] */
+#define	 SARL_AXP_PCLK_FREQ_OPT		21
+#define	 SARL_AXP_PCLK_FREQ_OPT_MASK	0x7
+#define	 SARL_AXP_FAB_FREQ_OPT		24
+#define	 SARL_AXP_FAB_FREQ_OPT_MASK	0xF
+#define SARH				4	/* High part [32:63] */
+#define	 SARH_AXP_PCLK_FREQ_OPT		(52-32)
+#define	 SARH_AXP_PCLK_FREQ_OPT_MASK	0x1
+#define	 SARH_AXP_PCLK_FREQ_OPT_SHIFT	3
+#define	 SARH_AXP_FAB_FREQ_OPT		(51-32)
+#define	 SARH_AXP_FAB_FREQ_OPT_MASK	0x1
+#define	 SARH_AXP_FAB_FREQ_OPT_SHIFT	4
+
+enum { AXP_CPU_TO_NBCLK, AXP_CPU_TO_HCLK, AXP_CPU_TO_DRAMCLK };
+
+static const struct coreclk_ratio axp_coreclk_ratios[] = {
+	{ .id = AXP_CPU_TO_NBCLK, .name = "nbclk" },
+	{ .id = AXP_CPU_TO_HCLK, .name = "hclk" },
+	{ .id = AXP_CPU_TO_DRAMCLK, .name = "dramclk" },
+};
+
+/* Armada XP TCLK frequency is fixed to 250MHz */
+static u32 axp_get_tclk_freq(void __iomem *sar)
+{
+	return 250000000;
+}
+
+static const u32 axp_cpu_freqs[] = {
+	1000000000,
+	1066000000,
+	1200000000,
+	1333000000,
+	1500000000,
+	1666000000,
+	1800000000,
+	2000000000,
+	667000000,
+	0,
+	800000000,
+	1600000000,
+};
+
+static u32 axp_get_cpu_freq(void __iomem *sar)
+{
+	u32 cpu_freq;
+	u8 cpu_freq_select = 0;
+
+	cpu_freq_select = ((readl(sar + SARL) >> SARL_AXP_PCLK_FREQ_OPT) &
+			   SARL_AXP_PCLK_FREQ_OPT_MASK);
+	/*
+	 * The upper bit is not contiguous to the other ones and
+	 * located in the high part of the SAR registers
+	 */
+	cpu_freq_select |= (((readl(sar + SARH) >> SARH_AXP_PCLK_FREQ_OPT) &
+	     SARH_AXP_PCLK_FREQ_OPT_MASK) << SARH_AXP_PCLK_FREQ_OPT_SHIFT);
+	if (cpu_freq_select >= ARRAY_SIZE(axp_cpu_freqs)) {
+		pr_err("CPU freq select unsupported: %d\n", cpu_freq_select);
+		cpu_freq = 0;
+	} else
+		cpu_freq = axp_cpu_freqs[cpu_freq_select];
+
+	return cpu_freq;
+}
+
+static const int axp_nbclk_ratios[32][2] = {
+	{0, 1}, {1, 2}, {2, 2}, {2, 2},
+	{1, 2}, {1, 2}, {1, 1}, {2, 3},
+	{0, 1}, {1, 2}, {2, 4}, {0, 1},
+	{1, 2}, {0, 1}, {0, 1}, {2, 2},
+	{0, 1}, {0, 1}, {0, 1}, {1, 1},
+	{2, 3}, {0, 1}, {0, 1}, {0, 1},
+	{0, 1}, {0, 1}, {0, 1}, {1, 1},
+	{0, 1}, {0, 1}, {0, 1}, {0, 1},
+};
+
+static const int axp_hclk_ratios[32][2] = {
+	{0, 1}, {1, 2}, {2, 6}, {2, 3},
+	{1, 3}, {1, 4}, {1, 2}, {2, 6},
+	{0, 1}, {1, 6}, {2, 10}, {0, 1},
+	{1, 4}, {0, 1}, {0, 1}, {2, 5},
+	{0, 1}, {0, 1}, {0, 1}, {1, 2},
+	{2, 6}, {0, 1}, {0, 1}, {0, 1},
+	{0, 1}, {0, 1}, {0, 1}, {1, 1},
+	{0, 1}, {0, 1}, {0, 1}, {0, 1},
+};
+
+static const int axp_dramclk_ratios[32][2] = {
+	{0, 1}, {1, 2}, {2, 3}, {2, 3},
+	{1, 3}, {1, 2}, {1, 2}, {2, 6},
+	{0, 1}, {1, 3}, {2, 5}, {0, 1},
+	{1, 4}, {0, 1}, {0, 1}, {2, 5},
+	{0, 1}, {0, 1}, {0, 1}, {1, 1},
+	{2, 3}, {0, 1}, {0, 1}, {0, 1},
+	{0, 1}, {0, 1}, {0, 1}, {1, 1},
+	{0, 1}, {0, 1}, {0, 1}, {0, 1},
+};
+
+static void axp_get_clk_ratio(
+	void __iomem *sar, int id, int *mult, int *div)
+{
+	u32 opt = ((readl(sar + SARL) >> SARL_AXP_FAB_FREQ_OPT) &
+	      SARL_AXP_FAB_FREQ_OPT_MASK);
+	/*
+	 * The upper bit is not contiguous to the other ones and
+	 * located in the high part of the SAR registers
+	 */
+	opt |= (((readl(sar + SARH) >> SARH_AXP_FAB_FREQ_OPT) &
+		 SARH_AXP_FAB_FREQ_OPT_MASK) << SARH_AXP_FAB_FREQ_OPT_SHIFT);
+
+	switch (id) {
+	case AXP_CPU_TO_NBCLK:
+		*mult = axp_nbclk_ratios[opt][0];
+		*div = axp_nbclk_ratios[opt][1];
+		break;
+	case AXP_CPU_TO_HCLK:
+		*mult = axp_hclk_ratios[opt][0];
+		*div = axp_hclk_ratios[opt][1];
+		break;
+	case AXP_CPU_TO_DRAMCLK:
+		*mult = axp_dramclk_ratios[opt][0];
+		*div = axp_dramclk_ratios[opt][1];
+		break;
+	}
+}
+
+const struct coreclk_soc_desc armada_xp_coreclks = {
+	.get_tclk_freq = axp_get_tclk_freq,
+	.get_cpu_freq = axp_get_cpu_freq,
+	.get_clk_ratio = axp_get_clk_ratio,
+	.ratios = axp_coreclk_ratios,
+	.num_ratios = ARRAY_SIZE(axp_coreclk_ratios),
+};
+
+/*
+ * Clock Gating Control
+ */
+
+const struct clk_gating_soc_desc armada_xp_gating_desc[] = {
+	{ "audio", NULL, 0 },
+	{ "ge3", NULL, 1 },
+	{ "ge2", NULL,  2 },
+	{ "ge1", NULL, 3 },
+	{ "ge0", NULL, 4 },
+	{ "pex00", NULL, 5 },
+	{ "pex01", NULL, 6 },
+	{ "pex02", NULL, 7 },
+	{ "pex03", NULL, 8 },
+	{ "pex10", NULL, 9 },
+	{ "pex11", NULL, 10 },
+	{ "pex12", NULL, 11 },
+	{ "pex13", NULL, 12 },
+	{ "bp", NULL, 13 },
+	{ "sata0lnk", NULL, 14 },
+	{ "sata0", "sata0lnk", 15 },
+	{ "lcd", NULL, 16 },
+	{ "sdio", NULL, 17 },
+	{ "usb0", NULL, 18 },
+	{ "usb1", NULL, 19 },
+	{ "usb2", NULL, 20 },
+	{ "xor0", NULL, 22 },
+	{ "crypto", NULL, 23 },
+	{ "tdm", NULL, 25 },
+	{ "pex20", NULL, 26 },
+	{ "pex30", NULL, 27 },
+	{ "xor1", NULL, 28 },
+	{ "sata1lnk", NULL, 29 },
+	{ "sata1", "sata1lnk", 30 },
+	{ }
+};
diff --git a/drivers/clk/mvebu/common.c b/drivers/clk/mvebu/common.c
new file mode 100644
index 0000000..37cc156
--- /dev/null
+++ b/drivers/clk/mvebu/common.c
@@ -0,0 +1,208 @@
+/*
+ * Marvell EBU SoC common clock handling
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * Based on Linux Marvell MVEBU clock providers
+ *   Copyright (C) 2012 Marvell
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2.  This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <of.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+
+#include "common.h"
+
+/*
+ * Core Clocks
+ */
+
+static struct clk_onecell_data clk_data;
+
+static struct of_device_id mvebu_coreclk_ids[] = {
+	{ .compatible = "marvell,armada-370-core-clock",
+	  .data = (u32)&armada_370_coreclks },
+	{ .compatible = "marvell,armada-xp-core-clock",
+	  .data = (u32)&armada_xp_coreclks },
+	{ .compatible = "marvell,dove-core-clock",
+	  .data = (u32)&dove_coreclks },
+	{ .compatible = "marvell,kirkwood-core-clock",
+	  .data = (u32)&kirkwood_coreclks },
+	{ .compatible = "marvell,mv88f6180-core-clock",
+	  .data = (u32)&mv88f6180_coreclks },
+	{ }
+};
+
+int mvebu_coreclk_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	const struct of_device_id *match;
+	const struct coreclk_soc_desc *desc;
+	const char *tclk_name = "tclk";
+	const char *cpuclk_name = "cpuclk";
+	void __iomem *base;
+	unsigned long rate;
+	int n;
+
+	match = of_match_node(mvebu_coreclk_ids, np);
+	if (!match)
+		return -EINVAL;
+	desc = (const struct coreclk_soc_desc *)match->data;
+
+	/* Get SAR base address */
+	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -EINVAL;
+
+	/* Allocate struct for TCLK, cpu clk, and core ratio clocks */
+	clk_data.clk_num = 2 + desc->num_ratios;
+	clk_data.clks = xzalloc(clk_data.clk_num * sizeof(struct clk *));
+
+	/* Register TCLK */
+	of_property_read_string_index(np, "clock-output-names", 0,
+				      &tclk_name);
+	rate = desc->get_tclk_freq(base);
+	clk_data.clks[0] = clk_fixed(tclk_name, rate);
+	WARN_ON(IS_ERR(clk_data.clks[0]));
+
+	/* Register CPU clock */
+	of_property_read_string_index(np, "clock-output-names", 1,
+				      &cpuclk_name);
+	rate = desc->get_cpu_freq(base);
+	clk_data.clks[1] = clk_fixed(cpuclk_name, rate);
+	WARN_ON(IS_ERR(clk_data.clks[1]));
+
+	/* Register fixed-factor clocks derived from CPU clock */
+	for (n = 0; n < desc->num_ratios; n++) {
+		const char *rclk_name = desc->ratios[n].name;
+		int mult, div;
+
+		of_property_read_string_index(np, "clock-output-names",
+					      2+n, &rclk_name);
+		desc->get_clk_ratio(base, desc->ratios[n].id, &mult, &div);
+		clk_data.clks[2+n] = clk_fixed_factor(rclk_name, cpuclk_name,
+						mult, div);
+		WARN_ON(IS_ERR(clk_data.clks[2+n]));
+	};
+
+	return of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
+}
+
+static struct driver_d mvebu_coreclk_driver = {
+	.probe	= mvebu_coreclk_probe,
+	.name	= "mvebu-core-clk",
+	.of_compatible = DRV_OF_COMPAT(mvebu_coreclk_ids),
+};
+
+static int mvebu_coreclk_init(void)
+{
+	return platform_driver_register(&mvebu_coreclk_driver);
+}
+core_initcall(mvebu_coreclk_init);
+
+/*
+ * Clock Gating Control
+ */
+
+struct gate {
+	struct clk *clk;
+	int bit_idx;
+};
+
+struct clk_gating_ctrl {
+	struct gate *gates;
+	int num_gates;
+};
+
+static struct clk *clk_gating_get_src(
+	struct of_phandle_args *clkspec, void *data)
+{
+	struct clk_gating_ctrl *ctrl = (struct clk_gating_ctrl *)data;
+	int n;
+
+	if (clkspec->args_count < 1)
+		return ERR_PTR(-EINVAL);
+
+	for (n = 0; n < ctrl->num_gates; n++) {
+		if (clkspec->args[0] == ctrl->gates[n].bit_idx)
+			return ctrl->gates[n].clk;
+	}
+	return ERR_PTR(-ENODEV);
+}
+
+static struct of_device_id mvebu_clk_gating_ids[] = {
+	{ .compatible = "marvell,armada-370-gating-clock",
+	  .data = (u32)&armada_370_gating_desc },
+	{ .compatible = "marvell,armada-xp-gating-clock",
+	  .data = (u32)&armada_xp_gating_desc },
+	{ .compatible = "marvell,dove-gating-clock",
+	  .data = (u32)&dove_gating_desc },
+	{ .compatible = "marvell,kirkwood-gating-clock",
+	  .data = (u32)&kirkwood_gating_desc },
+	{ }
+};
+
+int mvebu_clk_gating_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	const struct of_device_id *match;
+	const struct clk_gating_soc_desc *desc;
+	struct clk_gating_ctrl *ctrl;
+	struct gate *gate;
+	struct clk *clk;
+	void __iomem *base;
+	const char *default_parent = NULL;
+	int n;
+
+	match = of_match_node(mvebu_clk_gating_ids, np);
+	if (!match)
+		return -EINVAL;
+	desc = (const struct clk_gating_soc_desc *)match->data;
+
+	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -EINVAL;
+
+	clk = of_clk_get(np, 0);
+	if (IS_ERR(clk))
+		return -EINVAL;
+
+	default_parent = clk->name;
+	ctrl = xzalloc(sizeof(*ctrl));
+
+	/* Count, allocate, and register clock gates */
+	for (n = 0; desc[n].name;)
+		n++;
+
+	ctrl->num_gates = n;
+	ctrl->gates = xzalloc(ctrl->num_gates * sizeof(*gate));
+
+	for (n = 0, gate = ctrl->gates; n < ctrl->num_gates; n++, gate++) {
+		const char *parent =
+			(desc[n].parent) ? desc[n].parent : default_parent;
+		gate->bit_idx = desc[n].bit_idx;
+		gate->clk = clk_gate(desc[n].name, parent,
+				base, desc[n].bit_idx);
+		WARN_ON(IS_ERR(gate->clk));
+	}
+
+	return of_clk_add_provider(np, clk_gating_get_src, ctrl);
+}
+
+static struct driver_d mvebu_clk_gating_driver = {
+	.probe	= mvebu_clk_gating_probe,
+	.name	= "mvebu-clk-gating",
+	.of_compatible = DRV_OF_COMPAT(mvebu_clk_gating_ids),
+};
+
+static int mvebu_clk_gating_init(void)
+{
+	return platform_driver_register(&mvebu_clk_gating_driver);
+}
+postcore_initcall(mvebu_clk_gating_init);
diff --git a/drivers/clk/mvebu/common.h b/drivers/clk/mvebu/common.h
new file mode 100644
index 0000000..522ccde
--- /dev/null
+++ b/drivers/clk/mvebu/common.h
@@ -0,0 +1,70 @@
+/*
+ * Marvell EBU SoC common clock handling
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * Based on Linux Marvell MVEBU clock providers
+ *   Copyright (C) 2012 Marvell
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2.  This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#ifndef __CLK_MVEBU_COMMON_H_
+#define __CLK_MVEBU_COMMON_H_
+
+struct coreclk_ratio {
+	int id;
+	const char *name;
+};
+
+struct coreclk_soc_desc {
+	u32 (*get_tclk_freq)(void __iomem *sar);
+	u32 (*get_cpu_freq)(void __iomem *sar);
+	void (*get_clk_ratio)(void __iomem *sar, int id, int *mult, int *div);
+	const struct coreclk_ratio *ratios;
+	int num_ratios;
+};
+
+struct clk_gating_soc_desc {
+	const char *name;
+	const char *parent;
+	int bit_idx;
+};
+
+#ifdef CONFIG_ARCH_ARMADA_370
+extern const struct coreclk_soc_desc armada_370_coreclks;
+extern const struct clk_gating_soc_desc armada_370_gating_desc[];
+#else
+static const u32 armada_370_coreclks;
+static const u32 armada_370_gating_desc;
+#endif
+
+#ifdef CONFIG_ARCH_ARMADA_XP
+extern const struct coreclk_soc_desc armada_xp_coreclks;
+extern const struct clk_gating_soc_desc armada_xp_gating_desc[];
+#else
+static const u32 armada_xp_coreclks;
+static const u32 armada_xp_gating_desc;
+#endif
+
+#ifdef CONFIG_ARCH_DOVE
+extern const struct coreclk_soc_desc dove_coreclks;
+extern const struct clk_gating_soc_desc dove_gating_desc[];
+#else
+static const u32 dove_coreclks;
+static const u32 dove_gating_desc;
+#endif
+
+#ifdef CONFIG_ARCH_KIRKWOOD
+extern const struct coreclk_soc_desc kirkwood_coreclks;
+extern const struct coreclk_soc_desc mv88f6180_coreclks;
+extern const struct clk_gating_soc_desc kirkwood_gating_desc[];
+#else
+static const u32 kirkwood_coreclks;
+static const u32 mv88f6180_coreclks;
+static const u32 kirkwood_gating_desc;
+#endif
+
+#endif
diff --git a/drivers/clk/mvebu/dove.c b/drivers/clk/mvebu/dove.c
new file mode 100644
index 0000000..9bdf89a
--- /dev/null
+++ b/drivers/clk/mvebu/dove.c
@@ -0,0 +1,179 @@
+/*
+ * Marvell Dove SoC clocks
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * Based on Linux Marvell MVEBU clock providers
+ *   Copyright (C) 2012 Marvell
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2.  This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#include <common.h>
+#include <io.h>
+
+#include "common.h"
+
+/*
+ * Core Clocks
+ *
+ * Dove PLL sample-at-reset configuration
+ *
+ * SAR0[8:5]   : CPU frequency
+ *		 5  = 1000 MHz
+ *		 6  =  933 MHz
+ *		 7  =  933 MHz
+ *		 8  =  800 MHz
+ *		 9  =  800 MHz
+ *		 10 =  800 MHz
+ *		 11 = 1067 MHz
+ *		 12 =  667 MHz
+ *		 13 =  533 MHz
+ *		 14 =  400 MHz
+ *		 15 =  333 MHz
+ *		 others reserved.
+ *
+ * SAR0[11:9]  : CPU to L2 Clock divider ratio
+ *		 0 = (1/1) * CPU
+ *		 2 = (1/2) * CPU
+ *		 4 = (1/3) * CPU
+ *		 6 = (1/4) * CPU
+ *		 others reserved.
+ *
+ * SAR0[15:12] : CPU to DDR DRAM Clock divider ratio
+ *		 0  = (1/1) * CPU
+ *		 2  = (1/2) * CPU
+ *		 3  = (2/5) * CPU
+ *		 4  = (1/3) * CPU
+ *		 6  = (1/4) * CPU
+ *		 8  = (1/5) * CPU
+ *		 10 = (1/6) * CPU
+ *		 12 = (1/7) * CPU
+ *		 14 = (1/8) * CPU
+ *		 15 = (1/10) * CPU
+ *		 others reserved.
+ *
+ * SAR0[24:23] : TCLK frequency
+ *		 0 = 166 MHz
+ *		 1 = 125 MHz
+ *		 others reserved.
+ */
+
+#define SAR_DOVE_CPU_FREQ		5
+#define SAR_DOVE_CPU_FREQ_MASK		0xf
+#define SAR_DOVE_L2_RATIO		9
+#define SAR_DOVE_L2_RATIO_MASK		0x7
+#define SAR_DOVE_DDR_RATIO		12
+#define SAR_DOVE_DDR_RATIO_MASK		0xf
+#define SAR_DOVE_TCLK_FREQ		23
+#define SAR_DOVE_TCLK_FREQ_MASK		0x3
+
+enum { DOVE_CPU_TO_L2, DOVE_CPU_TO_DDR };
+
+static const struct coreclk_ratio dove_coreclk_ratios[] = {
+	{ .id = DOVE_CPU_TO_L2, .name = "l2clk", },
+	{ .id = DOVE_CPU_TO_DDR, .name = "ddrclk", }
+};
+
+static const u32 dove_tclk_freqs[] = {
+	166666667,
+	125000000,
+	0, 0
+};
+
+static u32 dove_get_tclk_freq(void __iomem *sar)
+{
+	u32 opt = (readl(sar) >> SAR_DOVE_TCLK_FREQ) &
+		SAR_DOVE_TCLK_FREQ_MASK;
+	return dove_tclk_freqs[opt];
+}
+
+static const u32 dove_cpu_freqs[] = {
+	0, 0, 0, 0, 0,
+	1000000000,
+	933333333, 933333333,
+	800000000, 800000000, 800000000,
+	1066666667,
+	666666667,
+	533333333,
+	400000000,
+	333333333
+};
+
+static u32 dove_get_cpu_freq(void __iomem *sar)
+{
+	u32 opt = (readl(sar) >> SAR_DOVE_CPU_FREQ) &
+		SAR_DOVE_CPU_FREQ_MASK;
+	return dove_cpu_freqs[opt];
+}
+
+static const int dove_cpu_l2_ratios[8][2] = {
+	{ 1, 1 }, { 0, 1 }, { 1, 2 }, { 0, 1 },
+	{ 1, 3 }, { 0, 1 }, { 1, 4 }, { 0, 1 }
+};
+
+static const int dove_cpu_ddr_ratios[16][2] = {
+	{ 1, 1 }, { 0, 1 }, { 1, 2 }, { 2, 5 },
+	{ 1, 3 }, { 0, 1 }, { 1, 4 }, { 0, 1 },
+	{ 1, 5 }, { 0, 1 }, { 1, 6 }, { 0, 1 },
+	{ 1, 7 }, { 0, 1 }, { 1, 8 }, { 1, 10 }
+};
+
+static void dove_get_clk_ratio(
+	void __iomem *sar, int id, int *mult, int *div)
+{
+	switch (id) {
+	case DOVE_CPU_TO_L2:
+	{
+		u32 opt = (readl(sar) >> SAR_DOVE_L2_RATIO) &
+			SAR_DOVE_L2_RATIO_MASK;
+		*mult = dove_cpu_l2_ratios[opt][0];
+		*div = dove_cpu_l2_ratios[opt][1];
+		break;
+	}
+	case DOVE_CPU_TO_DDR:
+	{
+		u32 opt = (readl(sar) >> SAR_DOVE_DDR_RATIO) &
+			SAR_DOVE_DDR_RATIO_MASK;
+		*mult = dove_cpu_ddr_ratios[opt][0];
+		*div = dove_cpu_ddr_ratios[opt][1];
+		break;
+	}
+	}
+}
+
+const struct coreclk_soc_desc dove_coreclks = {
+	.get_tclk_freq = dove_get_tclk_freq,
+	.get_cpu_freq = dove_get_cpu_freq,
+	.get_clk_ratio = dove_get_clk_ratio,
+	.ratios = dove_coreclk_ratios,
+	.num_ratios = ARRAY_SIZE(dove_coreclk_ratios),
+};
+
+/*
+ * Clock Gating Control
+ */
+
+const struct clk_gating_soc_desc dove_gating_desc[] = {
+	{ "usb0", NULL, 0 },
+	{ "usb1", NULL, 1 },
+	{ "ge",	"gephy", 2 },
+	{ "sata", NULL, 3 },
+	{ "pex0", NULL, 4 },
+	{ "pex1", NULL, 5 },
+	{ "sdio0", NULL, 8 },
+	{ "sdio1", NULL, 9 },
+	{ "nand", NULL, 10 },
+	{ "camera", NULL, 11 },
+	{ "i2s0", NULL, 12 },
+	{ "i2s1", NULL, 13 },
+	{ "crypto", NULL, 15 },
+	{ "ac97", NULL, 21 },
+	{ "pdma", NULL, 22 },
+	{ "xor0", NULL, 23 },
+	{ "xor1", NULL, 24 },
+	{ "gephy", NULL, 30 },
+	{ }
+};
diff --git a/drivers/clk/mvebu/kirkwood.c b/drivers/clk/mvebu/kirkwood.c
new file mode 100644
index 0000000..5024baf
--- /dev/null
+++ b/drivers/clk/mvebu/kirkwood.c
@@ -0,0 +1,224 @@
+/*
+ * Marvell Kirkwood SoC clocks
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * Based on Linux Marvell MVEBU clock providers
+ *   Copyright (C) 2012 Marvell
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2.  This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#include <common.h>
+#include <io.h>
+
+#include "common.h"
+
+/*
+ * Core Clocks
+ *
+ * Kirkwood PLL sample-at-reset configuration
+ * (6180 has different SAR layout than other Kirkwood SoCs)
+ *
+ * SAR0[4:3,22,1] : CPU frequency (6281,6292,6282)
+ *	4  =  600 MHz
+ *	6  =  800 MHz
+ *	7  = 1000 MHz
+ *	9  = 1200 MHz
+ *	12 = 1500 MHz
+ *	13 = 1600 MHz
+ *	14 = 1800 MHz
+ *	15 = 2000 MHz
+ *	others reserved.
+ *
+ * SAR0[19,10:9] : CPU to L2 Clock divider ratio (6281,6292,6282)
+ *	1 = (1/2) * CPU
+ *	3 = (1/3) * CPU
+ *	5 = (1/4) * CPU
+ *	others reserved.
+ *
+ * SAR0[8:5] : CPU to DDR DRAM Clock divider ratio (6281,6292,6282)
+ *	2 = (1/2) * CPU
+ *	4 = (1/3) * CPU
+ *	6 = (1/4) * CPU
+ *	7 = (2/9) * CPU
+ *	8 = (1/5) * CPU
+ *	9 = (1/6) * CPU
+ *	others reserved.
+ *
+ * SAR0[4:2] : Kirkwood 6180 cpu/l2/ddr clock configuration (6180 only)
+ *	5 = [CPU =  600 MHz, L2 = (1/2) * CPU, DDR = 200 MHz = (1/3) * CPU]
+ *	6 = [CPU =  800 MHz, L2 = (1/2) * CPU, DDR = 200 MHz = (1/4) * CPU]
+ *	7 = [CPU = 1000 MHz, L2 = (1/2) * CPU, DDR = 200 MHz = (1/5) * CPU]
+ *	others reserved.
+ *
+ * SAR0[21] : TCLK frequency
+ *	0 = 200 MHz
+ *	1 = 166 MHz
+ *	others reserved.
+ */
+
+#define SAR_KIRKWOOD_CPU_FREQ(x)	\
+	(((x & (1 <<  1)) >>  1) |	\
+	 ((x & (1 << 22)) >> 21) |	\
+	 ((x & (3 <<  3)) >>  1))
+#define SAR_KIRKWOOD_L2_RATIO(x)	\
+	(((x & (3 <<  9)) >> 9) |	\
+	 (((x & (1 << 19)) >> 17)))
+#define SAR_KIRKWOOD_DDR_RATIO		5
+#define SAR_KIRKWOOD_DDR_RATIO_MASK	0xf
+#define SAR_MV88F6180_CLK		2
+#define SAR_MV88F6180_CLK_MASK		0x7
+#define SAR_KIRKWOOD_TCLK_FREQ		21
+#define SAR_KIRKWOOD_TCLK_FREQ_MASK	0x1
+
+enum { KIRKWOOD_CPU_TO_L2, KIRKWOOD_CPU_TO_DDR };
+
+static const struct coreclk_ratio kirkwood_coreclk_ratios[] = {
+	{ .id = KIRKWOOD_CPU_TO_L2, .name = "l2clk", },
+	{ .id = KIRKWOOD_CPU_TO_DDR, .name = "ddrclk", }
+};
+
+static u32 kirkwood_get_tclk_freq(void __iomem *sar)
+{
+	u32 opt = (readl(sar) >> SAR_KIRKWOOD_TCLK_FREQ) &
+		SAR_KIRKWOOD_TCLK_FREQ_MASK;
+	return (opt) ? 166666667 : 200000000;
+}
+
+static const u32 kirkwood_cpu_freqs[] = {
+	0, 0, 0, 0,
+	600000000,
+	0,
+	800000000,
+	1000000000,
+	0,
+	1200000000,
+	0, 0,
+	1500000000,
+	1600000000,
+	1800000000,
+	2000000000
+};
+
+static u32 kirkwood_get_cpu_freq(void __iomem *sar)
+{
+	u32 opt = SAR_KIRKWOOD_CPU_FREQ(readl(sar));
+	return kirkwood_cpu_freqs[opt];
+}
+
+static const int kirkwood_cpu_l2_ratios[8][2] = {
+	{ 0, 1 }, { 1, 2 }, { 0, 1 }, { 1, 3 },
+	{ 0, 1 }, { 1, 4 }, { 0, 1 }, { 0, 1 }
+};
+
+static const int kirkwood_cpu_ddr_ratios[16][2] = {
+	{ 0, 1 }, { 0, 1 }, { 1, 2 }, { 0, 1 },
+	{ 1, 3 }, { 0, 1 }, { 1, 4 }, { 2, 9 },
+	{ 1, 5 }, { 1, 6 }, { 0, 1 }, { 0, 1 },
+	{ 0, 1 }, { 0, 1 }, { 0, 1 }, { 0, 1 }
+};
+
+static void kirkwood_get_clk_ratio(
+	void __iomem *sar, int id, int *mult, int *div)
+{
+	switch (id) {
+	case KIRKWOOD_CPU_TO_L2:
+	{
+		u32 opt = SAR_KIRKWOOD_L2_RATIO(readl(sar));
+		*mult = kirkwood_cpu_l2_ratios[opt][0];
+		*div = kirkwood_cpu_l2_ratios[opt][1];
+		break;
+	}
+	case KIRKWOOD_CPU_TO_DDR:
+	{
+		u32 opt = (readl(sar) >> SAR_KIRKWOOD_DDR_RATIO) &
+			SAR_KIRKWOOD_DDR_RATIO_MASK;
+		*mult = kirkwood_cpu_ddr_ratios[opt][0];
+		*div = kirkwood_cpu_ddr_ratios[opt][1];
+		break;
+	}
+	}
+}
+
+static const u32 mv88f6180_cpu_freqs[] = {
+	0, 0, 0, 0, 0,
+	600000000,
+	800000000,
+	1000000000
+};
+
+static u32 mv88f6180_get_cpu_freq(void __iomem *sar)
+{
+	u32 opt = (readl(sar) >> SAR_MV88F6180_CLK) & SAR_MV88F6180_CLK_MASK;
+	return mv88f6180_cpu_freqs[opt];
+}
+
+static const int mv88f6180_cpu_ddr_ratios[8][2] = {
+	{ 0, 1 }, { 0, 1 }, { 0, 1 }, { 0, 1 },
+	{ 0, 1 }, { 1, 3 }, { 1, 4 }, { 1, 5 }
+};
+
+static void mv88f6180_get_clk_ratio(
+	void __iomem *sar, int id, int *mult, int *div)
+{
+	switch (id) {
+	case KIRKWOOD_CPU_TO_L2:
+	{
+		/* mv88f6180 has a fixed 1:2 CPU-to-L2 ratio */
+		*mult = 1;
+		*div = 2;
+		break;
+	}
+	case KIRKWOOD_CPU_TO_DDR:
+	{
+		u32 opt = (readl(sar) >> SAR_MV88F6180_CLK) &
+			SAR_MV88F6180_CLK_MASK;
+		*mult = mv88f6180_cpu_ddr_ratios[opt][0];
+		*div = mv88f6180_cpu_ddr_ratios[opt][1];
+		break;
+	}
+	}
+}
+
+const struct coreclk_soc_desc kirkwood_coreclks = {
+	.get_tclk_freq = kirkwood_get_tclk_freq,
+	.get_cpu_freq = kirkwood_get_cpu_freq,
+	.get_clk_ratio = kirkwood_get_clk_ratio,
+	.ratios = kirkwood_coreclk_ratios,
+	.num_ratios = ARRAY_SIZE(kirkwood_coreclk_ratios),
+};
+
+const struct coreclk_soc_desc mv88f6180_coreclks = {
+	.get_tclk_freq = kirkwood_get_tclk_freq,
+	.get_cpu_freq = mv88f6180_get_cpu_freq,
+	.get_clk_ratio = mv88f6180_get_clk_ratio,
+	.ratios = kirkwood_coreclk_ratios,
+	.num_ratios = ARRAY_SIZE(kirkwood_coreclk_ratios),
+};
+
+/*
+ * Clock Gating Control
+ */
+
+const struct clk_gating_soc_desc kirkwood_gating_desc[] = {
+	{ "ge0", NULL, 0 },
+	{ "pex0", NULL, 2 },
+	{ "usb0", NULL, 3 },
+	{ "sdio", NULL, 4 },
+	{ "tsu", NULL, 5 },
+	{ "runit", NULL, 7 },
+	{ "xor0", NULL, 8 },
+	{ "audio", NULL, 9 },
+	{ "powersave", "cpuclk", 11 },
+	{ "sata0", NULL, 14 },
+	{ "sata1", NULL, 15 },
+	{ "xor1", NULL, 16 },
+	{ "crypto", NULL, 17 },
+	{ "pex1", NULL, 18 },
+	{ "ge1", NULL, 19 },
+	{ "tdm", NULL, 20 },
+	{ }
+};
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
