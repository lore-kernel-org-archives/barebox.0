Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1biO0m-0006B8-AH
 for barebox@lists.infradead.org; Fri, 09 Sep 2016 15:46:52 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Fri,  9 Sep 2016 17:43:43 +0200
Message-Id: <1473435824-7830-5-git-send-email-akurz@blala.de>
In-Reply-To: <1473435824-7830-1-git-send-email-akurz@blala.de>
References: <1473435824-7830-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 5/6] Add i.MX50 support
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/Kconfig                       |   6 +
 arch/arm/mach-imx/Makefile                      |   2 +
 arch/arm/mach-imx/clk-imx5.c                    |  88 +++++++++++
 arch/arm/mach-imx/imx.c                         |   6 +
 arch/arm/mach-imx/imx50.c                       | 187 ++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/clock-imx51_53.h |   1 +
 arch/arm/mach-imx/include/mach/debug_ll.h       |  11 ++
 arch/arm/mach-imx/include/mach/devices-imx50.h  |  83 +++++++++++
 arch/arm/mach-imx/include/mach/generic.h        |   3 +
 arch/arm/mach-imx/include/mach/imx5.h           |   1 +
 arch/arm/mach-imx/include/mach/imx50-regs.h     |  92 ++++++++++++
 common/Kconfig                                  |   7 +
 include/serial/imx-uart.h                       |   5 +
 13 files changed, 492 insertions(+)
 create mode 100644 arch/arm/mach-imx/imx50.c
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx50.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx50-regs.h

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 82fc945..a80bc6b 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -115,6 +115,12 @@ config ARCH_IMX35
 	select ARCH_HAS_FEC_IMX
 	select PINCTRL_IMX_IOMUX_V3
 
+config ARCH_IMX50
+	bool
+	select CPU_V7
+	select ARCH_HAS_FEC_IMX
+	select PINCTRL_IMX_IOMUX_V3
+
 config ARCH_IMX51
 	bool
 	select CPU_V7
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index db1cf7d..0763944 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -5,6 +5,8 @@ obj-$(CONFIG_ARCH_IMX21) += imx21.o clk-imx21.o
 obj-$(CONFIG_ARCH_IMX27) += imx27.o clk-imx27.o
 obj-$(CONFIG_ARCH_IMX31) += imx31.o clk-imx31.o
 obj-$(CONFIG_ARCH_IMX35) += imx35.o clk-imx35.o
+obj-$(CONFIG_ARCH_IMX50) += imx50.o imx5.o clk-imx5.o
+pbl-$(CONFIG_ARCH_IMX50) += imx50.o imx5.o
 obj-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o clk-imx5.o
 pbl-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o
 obj-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o clk-imx5.o esdctl-v4.o
diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index f16a148..d3cde7e 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -14,6 +14,7 @@
 #include <of.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
+#include <mach/imx50-regs.h>
 #include <mach/imx51-regs.h>
 #include <mach/imx53-regs.h>
 #include <dt-bindings/clock/imx5-clock.h>
@@ -68,6 +69,17 @@ static const char *standard_pll_sel[] = {
 	"lp_apm",
 };
 
+static const char *mx50_3bit_clk_sel[] = {
+	"pll1_sw",
+	"pll2_sw",
+	"pll3_sw",
+	"lp_apm",
+	"pfd0",
+	"pfd1",
+	"pfd4",
+	"osc",
+};
+
 static const char *lp_apm_sel[] = {
 	"osc",
 };
@@ -83,6 +95,13 @@ static const char *main_bus_sel[] = {
 	"periph_apm",
 };
 
+static const char *mx50_periph_clk_sel[] = {
+	"pll1_sw",
+	"pll2_sw",
+	"pll3_sw",
+	"lp_apm",
+};
+
 static const char *per_lp_apm_sel[] = {
 	"main_bus",
 	"lp_apm",
@@ -260,6 +279,73 @@ static void mx5_clocks_ipu_init(void __iomem *regs)
 	clks[IMX5_CLK_IPU_SEL]		= imx_clk_mux("ipu_sel", regs + CCM_CBCMR, 6, 2, ipu_sel, ARRAY_SIZE(ipu_sel));
 }
 
+int __init mx50_clocks_init(struct device_d *dev, void __iomem *regs)
+{
+	clks[IMX5_CLK_PLL1_SW] = imx_clk_pllv2("pll1_sw", "osc",
+					       (void *)MX50_PLL1_BASE_ADDR);
+	clks[IMX5_CLK_PLL2_SW] = imx_clk_pllv2("pll2_sw", "osc",
+					       (void *)MX50_PLL2_BASE_ADDR);
+	clks[IMX5_CLK_PLL3_SW] = imx_clk_pllv2("pll3_sw", "osc",
+					       (void *)MX50_PLL3_BASE_ADDR);
+
+	mx5_clocks_common_init(dev, regs);
+
+	clks[IMX5_CLK_LP_APM] = imx_clk_mux("lp_apm", regs + CCM_CCSR, 10, 1, lp_apm_sel, ARRAY_SIZE(lp_apm_sel));
+	clks[IMX5_CLK_MAIN_BUS] = imx_clk_mux("main_bus", regs + CCM_CBCDR, 25, 2, mx50_periph_clk_sel, ARRAY_SIZE(mx50_periph_clk_sel));
+	clks[IMX5_CLK_ESDHC_A_SEL] = imx_clk_mux("esdhc_a_sel", regs + CCM_CSCMR1, 21, 2, standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
+	clks[IMX5_CLK_ESDHC_B_SEL] = imx_clk_mux("esdhc_b_sel", regs + CCM_CSCMR1, 16, 3, mx50_3bit_clk_sel, ARRAY_SIZE(mx50_3bit_clk_sel));
+	clks[IMX5_CLK_ESDHC_C_SEL] = imx_clk_mux("esdhc_c_sel", regs + CCM_CSCMR1, 20, 1, esdhc_c_sel, ARRAY_SIZE(esdhc_c_sel));
+	clks[IMX5_CLK_ESDHC_D_SEL] = imx_clk_mux("esdhc_d_sel", regs + CCM_CSCMR1, 19, 1, esdhc_d_sel, ARRAY_SIZE(esdhc_d_sel));
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX50_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX50_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX50_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_I2C3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX50_CSPI_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX50_ECSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX50_ECSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX50_FEC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_A_PODF], MX50_ESDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_C_SEL], MX50_ESDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_B_PODF], MX50_ESDHC3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_D_SEL], MX50_ESDHC4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_PWM1_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_PWM2_BASE_ADDR, "per");
+
+	return 0;
+}
+
+static int imx50_ccm_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *regs;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	regs = IOMEM(iores->start);
+
+	mx50_clocks_init(dev, regs);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id imx50_ccm_dt_ids[] = {
+	{
+		.compatible = "fsl,imx50-ccm",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d imx50_ccm_driver = {
+	.probe	= imx50_ccm_probe,
+	.name	= "imx50-ccm",
+	.of_compatible = DRV_OF_COMPAT(imx50_ccm_dt_ids),
+};
+
 static void mx51_clocks_ipu_init(void __iomem *regs)
 {
 	clks[IMX5_CLK_IPU_DI0_SEL]	= imx_clk_mux_p("ipu_di0_sel", regs + CCM_CSCMR2, 26, 3,
@@ -434,6 +520,8 @@ static struct driver_d imx53_ccm_driver = {
 
 static int imx5_ccm_init(void)
 {
+	if (IS_ENABLED(CONFIG_ARCH_IMX50))
+		platform_driver_register(&imx50_ccm_driver);
 	if (IS_ENABLED(CONFIG_ARCH_IMX51))
 		platform_driver_register(&imx51_ccm_driver);
 	if (IS_ENABLED(CONFIG_ARCH_IMX53))
diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 2e33325..5ab6afc 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -49,6 +49,8 @@ static int imx_soc_from_dt(void)
 		return IMX_CPU_IMX31;
 	if (of_machine_is_compatible("fsl,imx35"))
 		return IMX_CPU_IMX35;
+	if (of_machine_is_compatible("fsl,imx50"))
+		return IMX_CPU_IMX50;
 	if (of_machine_is_compatible("fsl,imx51"))
 		return IMX_CPU_IMX51;
 	if (of_machine_is_compatible("fsl,imx53"))
@@ -89,6 +91,8 @@ static int imx_init(void)
 		ret = imx31_init();
 	else if (cpu_is_mx35())
 		ret = imx35_init();
+	else if (cpu_is_mx50())
+		ret = imx50_init();
 	else if (cpu_is_mx51())
 		ret = imx51_init();
 	else if (cpu_is_mx53())
@@ -113,6 +117,8 @@ static int imx_init(void)
 		ret = imx31_devices_init();
 	else if (cpu_is_mx35())
 		ret = imx35_devices_init();
+	else if (cpu_is_mx50())
+		ret = imx50_devices_init();
 	else if (cpu_is_mx51())
 		ret = imx51_devices_init();
 	else if (cpu_is_mx53())
diff --git a/arch/arm/mach-imx/imx50.c b/arch/arm/mach-imx/imx50.c
new file mode 100644
index 0000000..fb278a5
--- /dev/null
+++ b/arch/arm/mach-imx/imx50.c
@@ -0,0 +1,187 @@
+/*
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
+ */
+
+#include <init.h>
+#include <common.h>
+#include <io.h>
+#include <notifier.h>
+#include <linux/sizes.h>
+#include <mach/imx5.h>
+#include <mach/imx50-regs.h>
+#include <mach/revision.h>
+#include <mach/clock-imx51_53.h>
+#include <mach/generic.h>
+
+#define SI_REV 0x48
+
+static int imx50_silicon_revision(void)
+{
+	void __iomem *rom = MX50_IROM_BASE_ADDR;
+	u32 rev;
+	u32 mx50_silicon_revision;
+
+	rev = readl(rom + SI_REV);
+	switch (rev) {
+	case 0x10:
+		mx50_silicon_revision = IMX_CHIP_REV_1_0;
+		break;
+	case 0x11:
+		mx50_silicon_revision = IMX_CHIP_REV_1_1;
+		break;
+	default:
+		mx50_silicon_revision = IMX_CHIP_REV_UNKNOWN;
+	}
+
+	imx_set_silicon_revision("i.MX50", mx50_silicon_revision);
+
+	return 0;
+}
+
+int imx50_init(void)
+{
+	imx50_silicon_revision();
+	imx53_boot_save_loc((void *)MX50_SRC_BASE_ADDR);
+
+	return 0;
+}
+
+int imx50_devices_init(void)
+{
+	add_generic_device("imx-iomuxv3", 0, NULL, MX50_IOMUXC_BASE_ADDR,
+		0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx50-ccm", 0, NULL, MX50_CCM_BASE_ADDR,
+		0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpt", 0, NULL, MX50_GPT1_BASE_ADDR,
+		0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 0, NULL, MX50_GPIO1_BASE_ADDR,
+		0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 1, NULL, MX50_GPIO2_BASE_ADDR,
+		0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 2, NULL, MX50_GPIO3_BASE_ADDR,
+		0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 3, NULL, MX50_GPIO4_BASE_ADDR,
+		0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 4, NULL, MX50_GPIO5_BASE_ADDR,
+		0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 5, NULL, MX50_GPIO6_BASE_ADDR,
+		0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx21-wdt", 0, NULL, MX50_WDOG1_BASE_ADDR,
+		0x1000, IORESOURCE_MEM, NULL);
+
+	return 0;
+}
+
+void imx50_init_lowlevel_early(unsigned int cpufreq_mhz)
+{
+	void __iomem *ccm = (void __iomem *)MX50_CCM_BASE_ADDR;
+	u32 r;
+
+	imx5_init_lowlevel();
+
+	/*
+	 * AIPS setup - Only setup MPROTx registers.
+	 * The PACR default values are good.
+	 * Set all MPROTx to be non-bufferable, trusted for R/W,
+	 * not forced to user-mode.
+	 */
+	writel(0x77777777, MX50_AIPS1_BASE_ADDR + 0);
+	writel(0x77777777, MX50_AIPS1_BASE_ADDR + 4);
+	writel(0x77777777, MX50_AIPS2_BASE_ADDR + 0);
+	writel(0x77777777, MX50_AIPS2_BASE_ADDR + 4);
+
+	/* Gate of clocks to the peripherals first */
+	writel(0x3fffffff, ccm + MX5_CCM_CCGR0);
+	writel(0x00000000, ccm + MX5_CCM_CCGR1);
+	writel(0x00000000, ccm + MX5_CCM_CCGR2);
+	writel(0x00000000, ccm + MX5_CCM_CCGR3);
+	writel(0x00030000, ccm + MX5_CCM_CCGR4);
+	writel(0x00fff030, ccm + MX5_CCM_CCGR5);
+	writel(0x0f00030f, ccm + MX5_CCM_CCGR6);
+	writel(0x00000000, ccm + MX50_CCM_CCGR7);
+
+	/* Switch ARM to step clock */
+	writel(0x4, ccm + MX5_CCM_CCSR);
+
+	if (cpufreq_mhz == 400)
+		imx5_setup_pll_400((void __iomem *)MX50_PLL1_BASE_ADDR);
+	else
+		imx5_setup_pll_800((void __iomem *)MX50_PLL1_BASE_ADDR);
+
+	imx5_setup_pll_216((void __iomem *)MX50_PLL3_BASE_ADDR);
+
+	/* Switch peripheral to PLL3 */
+	writel(0x00015154, ccm + MX5_CCM_CBCMR);
+	writel(0x04880945 | (1<<16), ccm + MX5_CCM_CBCDR);
+
+	/* make sure change is effective */
+	while (readl(ccm + MX5_CCM_CDHIPR));
+
+	imx5_setup_pll_400((void __iomem *)MX50_PLL2_BASE_ADDR);
+
+	/* Switch peripheral to PLL2 */
+	r = 0x02800145 |
+		(2 << 10) |
+		(0 << 16) |
+		(1 << 19);
+
+	writel(r, ccm + MX5_CCM_CBCDR);
+
+	r = readl(ccm + MX5_CCM_CSCMR1);
+
+	/* change uart clk parent to pll2 */
+	r &= ~MX5_CCM_CSCMR1_UART_CLK_SEL_MASK;
+	r |= 1 << MX5_CCM_CSCMR1_UART_CLK_SEL_OFFSET;
+
+	writel(r, ccm + MX5_CCM_CSCMR1);
+
+	/* make sure change is effective */
+	while (readl(ccm + MX5_CCM_CDHIPR));
+
+	/* Set the platform clock dividers */
+	writel(0x00000124, MX50_ARM_BASE_ADDR + 0x14);
+
+	writel(0, ccm + MX5_CCM_CACRR);
+
+	/* Switch ARM back to PLL 1. */
+	writel(0, ccm + MX5_CCM_CCSR);
+
+	/* make uart div = 6*/
+	r = readl(ccm + MX5_CCM_CSCDR1);
+	r &= ~0x3f;
+	r |= 0x0a;
+
+	r &= ~MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_MASK;
+	r &= ~MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PODF_MASK;
+	r |= 1 << MX5_CCM_CSCDR1_ESDHC1_MSHC1_CLK_PRED_OFFSET;
+
+	writel(r, ccm + MX5_CCM_CSCDR1);
+
+	/* Restore the default values in the Gate registers */
+	writel(0xffffffff, ccm + MX5_CCM_CCGR0);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR1);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR2);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR3);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR4);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR5);
+	writel(0xffffffff, ccm + MX5_CCM_CCGR6);
+	writel(0xffffffff, ccm + MX50_CCM_CCGR7);
+
+	writel(0, ccm + MX5_CCM_CCDR);
+}
+
+void imx50_init_lowlevel(unsigned int cpufreq_mhz)
+{
+	imx50_init_lowlevel_early(cpufreq_mhz);
+
+	clock_notifier_call_chain();
+}
diff --git a/arch/arm/mach-imx/include/mach/clock-imx51_53.h b/arch/arm/mach-imx/include/mach/clock-imx51_53.h
index 0f25dfb..06ea2e2 100644
--- a/arch/arm/mach-imx/include/mach/clock-imx51_53.h
+++ b/arch/arm/mach-imx/include/mach/clock-imx51_53.h
@@ -102,6 +102,7 @@
 #define MX5_CCM_CCGR4		0x78
 #define MX5_CCM_CCGR5		0x7C
 #define MX5_CCM_CCGR6		0x80
+#define MX50_CCM_CCGR7		0x84
 #define MX53_CCM_CCGR7		0x84
 #define MX51_CCM_CMEOR		0x84
 
diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index 4f2d923..5c2db6c 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -10,6 +10,7 @@
 #include <mach/imx27-regs.h>
 #include <mach/imx31-regs.h>
 #include <mach/imx35-regs.h>
+#include <mach/imx50-regs.h>
 #include <mach/imx51-regs.h>
 #include <mach/imx53-regs.h>
 #include <mach/imx6-regs.h>
@@ -33,6 +34,8 @@
 #define IMX_DEBUG_SOC MX31
 #elif defined CONFIG_DEBUG_IMX35_UART
 #define IMX_DEBUG_SOC MX35
+#elif defined CONFIG_DEBUG_IMX50_UART
+#define IMX_DEBUG_SOC MX50
 #elif defined CONFIG_DEBUG_IMX51_UART
 #define IMX_DEBUG_SOC MX51
 #elif defined CONFIG_DEBUG_IMX53_UART
@@ -43,6 +46,13 @@
 #error "unknown i.MX debug uart soc type"
 #endif
 
+static inline void imx50_uart_setup_ll(void)
+{
+	void *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC, CONFIG_DEBUG_IMX_UART_PORT));
+
+	imx50_uart_setup(base);
+}
+
 static inline void imx51_uart_setup_ll(void)
 {
 	void *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC, CONFIG_DEBUG_IMX_UART_PORT));
@@ -76,6 +86,7 @@ static inline void PUTC_LL(int c)
 }
 #else
 
+static inline void imx50_uart_setup_ll(void) {}
 static inline void imx51_uart_setup_ll(void) {}
 static inline void imx53_uart_setup_ll(void) {}
 static inline void imx6_uart_setup_ll(void)  {}
diff --git a/arch/arm/mach-imx/include/mach/devices-imx50.h b/arch/arm/mach-imx/include/mach/devices-imx50.h
new file mode 100644
index 0000000..9e0eaa8
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/devices-imx50.h
@@ -0,0 +1,83 @@
+
+#include <mach/devices.h>
+#include <mach/imx50-regs.h>
+
+static inline struct device_d *imx50_add_spi0(struct spi_imx_master *pdata)
+{
+	return imx_add_spi_imx51((void *)MX50_ECSPI1_BASE_ADDR, 0, pdata);
+}
+
+static inline struct device_d *imx50_add_spi1(struct spi_imx_master *pdata)
+{
+	return imx_add_spi_imx51((void *)MX50_ECSPI2_BASE_ADDR, 1, pdata);
+}
+
+static inline struct device_d *imx50_add_cspi(struct spi_imx_master *pdata)
+{
+	return imx_add_spi_imx35((void *)MX50_CSPI_BASE_ADDR, 2, pdata);
+}
+
+static inline struct device_d *imx50_add_i2c0(struct i2c_platform_data *pdata)
+{
+	return imx_add_i2c((void *)MX50_I2C1_BASE_ADDR, 0, pdata);
+}
+
+static inline struct device_d *imx50_add_i2c1(struct i2c_platform_data *pdata)
+{
+	return imx_add_i2c((void *)MX50_I2C2_BASE_ADDR, 1, pdata);
+}
+
+static inline struct device_d *imx50_add_i2c2(struct i2c_platform_data *pdata)
+{
+	return imx_add_i2c((void *)MX50_I2C3_BASE_ADDR, 2, pdata);
+}
+
+static inline struct device_d *imx50_add_uart0(void)
+{
+	return imx_add_uart_imx21((void *)MX50_UART1_BASE_ADDR, 0);
+}
+
+static inline struct device_d *imx50_add_uart1(void)
+{
+	return imx_add_uart_imx21((void *)MX50_UART2_BASE_ADDR, 1);
+}
+
+static inline struct device_d *imx50_add_uart2(void)
+{
+	return imx_add_uart_imx21((void *)MX50_UART3_BASE_ADDR, 2);
+}
+
+static inline struct device_d *imx50_add_uart3(void)
+{
+	return imx_add_uart_imx21((void *)MX50_UART4_BASE_ADDR, 3);
+}
+
+static inline struct device_d *imx50_add_fec(struct fec_platform_data *pdata)
+{
+	return imx_add_fec_imx27((void *)MX50_FEC_BASE_ADDR, pdata);
+}
+
+static inline struct device_d *imx50_add_mmc0(struct esdhc_platform_data *pdata)
+{
+	return imx_add_esdhc((void *)MX50_ESDHC1_BASE_ADDR, 0, pdata);
+}
+
+static inline struct device_d *imx50_add_mmc1(struct esdhc_platform_data *pdata)
+{
+	return imx_add_esdhc((void *)MX50_ESDHC2_BASE_ADDR, 1, pdata);
+}
+
+static inline struct device_d *imx50_add_mmc2(struct esdhc_platform_data *pdata)
+{
+	return imx_add_esdhc((void *)MX50_ESDHC3_BASE_ADDR, 2, pdata);
+}
+
+static inline struct device_d *imx50_add_mmc3(struct esdhc_platform_data *pdata)
+{
+	return imx_add_esdhc((void *)MX50_ESDHC4_BASE_ADDR, 3, pdata);
+}
+
+static inline struct device_d *imx50_add_kpp(struct matrix_keymap_data *pdata)
+{
+	return imx_add_kpp((void *)MX50_KPP_BASE_ADDR, pdata);
+}
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 243239d..cadc501 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -11,6 +11,7 @@ u64 imx_uid(void);
 void imx25_boot_save_loc(void __iomem *ccm_base);
 void imx35_boot_save_loc(void __iomem *ccm_base);
 void imx27_boot_save_loc(void __iomem *sysctrl_base);
+void imx50_boot_save_loc(void __iomem *src_base);
 void imx51_boot_save_loc(void __iomem *src_base);
 void imx53_boot_save_loc(void __iomem *src_base);
 void imx6_boot_save_loc(void __iomem *src_base);
@@ -22,6 +23,7 @@ int imx25_init(void);
 int imx27_init(void);
 int imx31_init(void);
 int imx35_init(void);
+int imx50_init(void);
 int imx51_init(void);
 int imx53_init(void);
 int imx6_init(void);
@@ -32,6 +34,7 @@ int imx25_devices_init(void);
 int imx27_devices_init(void);
 int imx31_devices_init(void);
 int imx35_devices_init(void);
+int imx50_devices_init(void);
 int imx51_devices_init(void);
 int imx53_devices_init(void);
 int imx6_devices_init(void);
diff --git a/arch/arm/mach-imx/include/mach/imx5.h b/arch/arm/mach-imx/include/mach/imx5.h
index 5d1a7d7..5957141 100644
--- a/arch/arm/mach-imx/include/mach/imx5.h
+++ b/arch/arm/mach-imx/include/mach/imx5.h
@@ -1,6 +1,7 @@
 #ifndef __MACH_MX5_H
 #define __MACH_MX5_H
 
+void imx50_init_lowlevel(unsigned int cpufreq_mhz);
 void imx51_init_lowlevel(unsigned int cpufreq_mhz);
 void imx53_init_lowlevel(unsigned int cpufreq_mhz);
 void imx53_init_lowlevel_early(unsigned int cpufreq_mhz);
diff --git a/arch/arm/mach-imx/include/mach/imx50-regs.h b/arch/arm/mach-imx/include/mach/imx50-regs.h
new file mode 100644
index 0000000..97ac8e2
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx50-regs.h
@@ -0,0 +1,92 @@
+#ifndef __MACH_IMX50_REGS_H
+#define __MACH_IMX50_REGS_H
+
+#include <linux/sizes.h>
+
+#define MX50_IROM_BASE_ADDR	0x0
+
+#define MX50_IRAM_BASE_ADDR     0xF8000000
+#define MX50_IRAM_SIZE          SZ_128K
+
+/*
+ * SPBA global module enabled #0
+ */
+#define MX50_SPBA0_BASE_ADDR		0x50000000
+#define MX50_SPBA0_SIZE		SZ_1M
+
+#define MX50_ESDHC1_BASE_ADDR	(MX50_SPBA0_BASE_ADDR + 0x00004000)
+#define MX50_ESDHC2_BASE_ADDR	(MX50_SPBA0_BASE_ADDR + 0x00008000)
+#define MX50_UART3_BASE_ADDR		(MX50_SPBA0_BASE_ADDR + 0x0000C000)
+#define MX50_ECSPI1_BASE_ADDR		(MX50_SPBA0_BASE_ADDR + 0x00010000)
+#define MX50_SSI2_BASE_ADDR		(MX50_SPBA0_BASE_ADDR + 0x00014000)
+#define MX50_ESDHC3_BASE_ADDR	(MX50_SPBA0_BASE_ADDR + 0x00020000)
+#define MX50_ESDHC4_BASE_ADDR	(MX50_SPBA0_BASE_ADDR + 0x00024000)
+#define MX50_SPBA_CTRL_BASE_ADDR	(MX50_SPBA0_BASE_ADDR + 0x0003C000)
+
+/*
+ * AIPS 1
+ */
+#define MX50_AIPS1_BASE_ADDR	0x53F00000
+#define MX50_AIPS1_SIZE		SZ_512K
+
+#define MX50_OTG_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x00080000)
+#define MX50_GPIO1_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x00084000)
+#define MX50_GPIO2_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x00088000)
+#define MX50_GPIO3_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x0008C000)
+#define MX50_GPIO4_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x00090000)
+#define MX50_KPP_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x00094000)
+#define MX50_WDOG1_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x00098000)
+#define MX50_GPT1_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x000A0000)
+#define MX50_SRTC_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x000A4000)
+#define MX50_IOMUXC_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x000A8000)
+#define MX50_EPIT1_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x000AC000)
+#define MX50_PWM1_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x000B4000)
+#define MX50_PWM2_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x000B8000)
+#define MX50_UART1_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x000BC000)
+#define MX50_UART2_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x000C0000)
+
+#define MX50_SRC_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x000D0000)
+#define MX50_CCM_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x000D4000)
+#define MX50_GPC_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x000D8000)
+#define MX50_GPIO5_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x000DC000)
+#define MX50_GPIO6_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x000E0000)
+#define MX50_I2C3_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x000EC000)
+#define MX50_UART4_BASE_ADDR	(MX50_AIPS1_BASE_ADDR + 0x000F0000)
+
+/*
+ * AIPS 2
+ */
+#define MX50_AIPS2_BASE_ADDR		0x63F00000
+#define MX50_AIPS2_SIZE			SZ_512K
+
+#define MX50_PLL1_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x00080000)
+#define MX50_PLL2_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x00084000)
+#define MX50_PLL3_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x00088000)
+#define MX50_UART5_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x00090000)
+#define MX50_AHBMAX_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x00094000)
+#define MX50_ARM_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x000A0000)
+#define MX50_OWIRE_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x000A4000)
+#define MX50_ECSPI2_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x000AC000)
+#define MX50_SDMA_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x000B0000)
+#define MX50_ROMCP_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x000B8000)
+#define MX50_CSPI_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x000C0000)
+#define MX50_I2C2_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x000C4000)
+#define MX50_I2C1_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x000C8000)
+#define MX50_SSI1_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x000CC000)
+#define MX50_AUDMUX_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x000D0000)
+#define MX50_WEIM_BASE_ADDR     (MX50_AIPS2_BASE_ADDR + 0x000DA000)
+#define MX50_FEC_BASE_ADDR	(MX50_AIPS2_BASE_ADDR + 0x000EC000)
+
+/*
+ * Memory regions and CS
+ */
+#define MX50_CSD0_BASE_ADDR		0x70000000
+#define MX50_CSD1_BASE_ADDR		0xB0000000
+#define MX50_CS0_BASE_ADDR		0xF0000000
+#define MX50_CS1_32MB_BASE_ADDR		0xF2000000
+#define MX50_CS1_64MB_BASE_ADDR		0xF4000000
+#define MX50_CS2_64MB_BASE_ADDR		0xF4000000
+#define MX50_CS2_96MB_BASE_ADDR		0xF6000000
+#define MX50_CS3_BASE_ADDR		0xF6000000
+
+#endif /* __MACH_IMX50_REGS_H */
diff --git a/common/Kconfig b/common/Kconfig
index e4ad39e..f2badc7 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1043,6 +1043,13 @@ config DEBUG_IMX35_UART
 	  Say Y here if you want kernel low-level debugging support
 	  on i.MX35.
 
+config DEBUG_IMX50_UART
+	bool "i.MX50 Debug UART"
+	depends on ARCH_IMX50
+	help
+	  Say Y here if you want kernel low-level debugging support
+	  on i.MX50.
+
 config DEBUG_IMX51_UART
 	bool "i.MX51 Debug UART"
 	depends on ARCH_IMX51
diff --git a/include/serial/imx-uart.h b/include/serial/imx-uart.h
index 29b117c..901b26a 100644
--- a/include/serial/imx-uart.h
+++ b/include/serial/imx-uart.h
@@ -146,6 +146,11 @@ static inline void imx_uart_setup(void __iomem *uartbase,
 	writel(UCR1_UARTEN, uartbase + UCR1);
 }
 
+static inline void imx50_uart_setup(void __iomem *uartbase)
+{
+	imx_uart_setup(uartbase, 66666666);
+}
+
 static inline void imx51_uart_setup(void __iomem *uartbase)
 {
 	imx_uart_setup(uartbase, 54000000);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
