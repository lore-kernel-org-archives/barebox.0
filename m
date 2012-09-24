Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TB-0000ed-Cm
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:37 +0200
Message-Id: <1348484692-24993-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/23] ARM i.MX5: Switch to common clk support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile   |    4 +-
 arch/arm/mach-imx/clk-imx5.c |  298 ++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx51.c    |    3 +-
 arch/arm/mach-imx/imx53.c    |    3 +-
 4 files changed, 304 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/mach-imx/clk-imx5.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 4cb7011..282913d 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -6,8 +6,8 @@ obj-$(CONFIG_ARCH_IMX21) += speed-imx21.o imx21.o iomux-v1.o
 obj-$(CONFIG_ARCH_IMX27) += speed-imx27.o imx27.o iomux-v1.o clk-imx27.o
 obj-$(CONFIG_ARCH_IMX31) += speed-imx31.o imx31.o iomux-v2.o
 obj-$(CONFIG_ARCH_IMX35) += speed-imx35.o imx35.o iomux-v3.o
-obj-$(CONFIG_ARCH_IMX51) += speed-imx51.o imx51.o iomux-v3.o imx5.o
-obj-$(CONFIG_ARCH_IMX53) += speed-imx53.o imx53.o iomux-v3.o imx5.o
+obj-$(CONFIG_ARCH_IMX51) += speed-imx51.o imx51.o iomux-v3.o imx5.o clk-imx5.o
+obj-$(CONFIG_ARCH_IMX53) += speed-imx53.o imx53.o iomux-v3.o imx5.o clk-imx5.o
 obj-$(CONFIG_ARCH_IMX6) += speed-imx6.o imx6.o iomux-v3.o usb-imx6.o
 obj-$(CONFIG_IMX_CLKO)	+= clko.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
new file mode 100644
index 0000000..476ea29
--- /dev/null
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -0,0 +1,298 @@
+/*
+ * Copyright (C) 2011 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <mach/imx-regs.h>
+
+#include "clk.h"
+
+/* Register addresses of CCM*/
+#define CCM_CCR		0x00
+#define CCM_CCDR	0x04
+#define CCM_CSR		0x08
+#define CCM_CCSR	0x0C
+#define CCM_CACRR	0x10
+#define CCM_CBCDR	0x14
+#define CCM_CBCMR	0x18
+#define CCM_CSCMR1	0x1C
+#define CCM_CSCMR2	0x20
+#define CCM_CSCDR1	0x24
+#define CCM_CS1CDR	0x28
+#define CCM_CS2CDR	0x2C
+#define CCM_CDCDR	0x30
+#define CCM_CHSCDR	0x34
+#define CCM_CSCDR2	0x38
+#define CCM_CSCDR3	0x3C
+#define CCM_CSCDR4	0x40
+#define CCM_CWDR	0x44
+#define CCM_CDHIPR	0x48
+#define CCM_CDCR	0x4C
+#define CCM_CTOR	0x50
+#define CCM_CLPCR	0x54
+#define CCM_CISR	0x58
+#define CCM_CIMR	0x5C
+#define CCM_CCOSR	0x60
+#define CCM_CGPR	0x64
+#define CCM_CCGR0	0x68
+#define CCM_CCGR1	0x6C
+#define CCM_CCGR2	0x70
+#define CCM_CCGR3	0x74
+#define CCM_CCGR4	0x78
+#define CCM_CCGR5	0x7C
+#define CCM_CCGR6	0x80
+#define CCM_CCGR7	0x84
+
+#define CCM_CMEOR	0x84
+
+enum imx5_clks {
+	dummy, ckil, osc, ckih1, ckih2, ahb, ipg, axi_a, axi_b, uart_pred,
+	uart_root, esdhc_a_pred, esdhc_b_pred, esdhc_c_s, esdhc_d_s,
+	emi_sel, emi_slow_podf, nfc_podf, ecspi_pred, ecspi_podf, usboh3_pred,
+	usboh3_podf, usb_phy_pred, usb_phy_podf, cpu_podf, di_pred, lp_apm,
+	periph_apm, main_bus, ahb_max, aips_tz1, aips_tz2, tmax1, tmax2,
+	tmax3, spba, uart_sel, esdhc_a_sel, esdhc_b_sel, esdhc_a_podf,
+	esdhc_b_podf, ecspi_sel, usboh3_sel, usb_phy_sel,
+	gpc_dvfs, pll1_sw, pll2_sw,
+	pll3_sw, pll4_sw, per_lp_apm, per_pred1, per_pred2, per_podf, per_root,
+	clk_max
+};
+
+static struct clk *clks[clk_max];
+
+/* This is used multiple times */
+static const char *standard_pll_sel[] = {
+	"pll1_sw",
+	"pll2_sw",
+	"pll3_sw",
+	"lp_apm",
+};
+
+static const char *lp_apm_sel[] = {
+	"osc",
+};
+
+static const char *periph_apm_sel[] = {
+	"pll1_sw",
+	"pll3_sw",
+	"lp_apm",
+};
+
+static const char *main_bus_sel[] = {
+	"pll2_sw",
+	"periph_apm",
+};
+
+static const char *per_lp_apm_sel[] = {
+	"main_bus",
+	"lp_apm",
+};
+
+static const char *per_root_sel[] = {
+	"per_podf",
+	"ipg",
+};
+
+static const char *esdhc_c_sel[] = {
+	"esdhc_a_podf",
+	"esdhc_b_podf",
+};
+
+static const char *esdhc_d_sel[] = {
+	"esdhc_a_podf",
+	"esdhc_b_podf",
+};
+
+static const char *emi_slow_sel[] = {
+	"main_bus",
+	"ahb",
+};
+
+static const char *usb_phy_sel_str[] = {
+	"osc",
+	"usb_phy_podf",
+};
+
+static void __init mx5_clocks_common_init(void __iomem *base, unsigned long rate_ckil,
+		unsigned long rate_osc, unsigned long rate_ckih1,
+		unsigned long rate_ckih2)
+{
+	writel(0xffffffff, base + CCM_CCGR0);
+	writel(0xffffffff, base + CCM_CCGR1);
+	writel(0xffffffff, base + CCM_CCGR2);
+	writel(0xffffffff, base + CCM_CCGR3);
+	writel(0xffffffff, base + CCM_CCGR4);
+	writel(0xffffffff, base + CCM_CCGR5);
+	writel(0xffffffff, base + CCM_CCGR6);
+	writel(0xffffffff, base + CCM_CCGR7);
+
+	clks[dummy] = clk_fixed("dummy", 0);
+	clks[ckil] = clk_fixed("ckil", rate_ckil);
+	clks[osc] = clk_fixed("osc", rate_osc);
+	clks[ckih1] = clk_fixed("ckih1", rate_ckih1);
+	clks[ckih2] = clk_fixed("ckih2", rate_ckih2);
+
+	clks[lp_apm] = imx_clk_mux("lp_apm", base + CCM_CCSR, 9, 1,
+				lp_apm_sel, ARRAY_SIZE(lp_apm_sel));
+	clks[periph_apm] = imx_clk_mux("periph_apm", base + CCM_CBCMR, 12, 2,
+				periph_apm_sel, ARRAY_SIZE(periph_apm_sel));
+	clks[main_bus] = imx_clk_mux("main_bus", base + CCM_CBCDR, 25, 1,
+				main_bus_sel, ARRAY_SIZE(main_bus_sel));
+	clks[per_lp_apm] = imx_clk_mux("per_lp_apm", base + CCM_CBCMR, 1, 1,
+				per_lp_apm_sel, ARRAY_SIZE(per_lp_apm_sel));
+	clks[per_pred1] = imx_clk_divider("per_pred1", "per_lp_apm", base + CCM_CBCDR, 6, 2);
+	clks[per_pred2] = imx_clk_divider("per_pred2", "per_pred1", base + CCM_CBCDR, 3, 3);
+	clks[per_podf] = imx_clk_divider("per_podf", "per_pred2", base + CCM_CBCDR, 0, 3);
+	clks[per_root] = imx_clk_mux("per_root", base + CCM_CBCMR, 0, 1,
+				per_root_sel, ARRAY_SIZE(per_root_sel));
+	clks[ahb] = imx_clk_divider("ahb", "main_bus", base + CCM_CBCDR, 10, 3);
+	clks[ipg] = imx_clk_divider("ipg", "ahb", base + CCM_CBCDR, 8, 2);
+	clks[axi_a] = imx_clk_divider("axi_a", "main_bus", base + CCM_CBCDR, 16, 3);
+	clks[axi_b] = imx_clk_divider("axi_b", "main_bus", base + CCM_CBCDR, 19, 3);
+	clks[uart_sel] = imx_clk_mux("uart_sel", base + CCM_CSCMR1, 24, 2,
+				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
+	clks[uart_pred] = imx_clk_divider("uart_pred", "uart_sel", base + CCM_CSCDR1, 3, 3);
+	clks[uart_root] = imx_clk_divider("uart_root", "uart_pred", base + CCM_CSCDR1, 0, 3);
+
+	clks[esdhc_a_sel] = imx_clk_mux("esdhc_a_sel", base + CCM_CSCMR1, 20, 2,
+				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
+	clks[esdhc_b_sel] = imx_clk_mux("esdhc_b_sel", base + CCM_CSCMR1, 16, 2,
+				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
+	clks[esdhc_a_pred] = imx_clk_divider("esdhc_a_pred", "esdhc_a_sel", base + CCM_CSCDR1, 16, 3);
+	clks[esdhc_a_podf] = imx_clk_divider("esdhc_a_podf", "esdhc_a_pred", base + CCM_CSCDR1, 11, 3);
+	clks[esdhc_b_pred] = imx_clk_divider("esdhc_b_pred", "esdhc_b_sel", base + CCM_CSCDR1, 22, 3);
+	clks[esdhc_b_podf] = imx_clk_divider("esdhc_b_podf", "esdhc_b_pred", base + CCM_CSCDR1, 19, 3);
+	clks[esdhc_c_s] = imx_clk_mux("esdhc_c_sel", base + CCM_CSCMR1, 19, 1, esdhc_c_sel, ARRAY_SIZE(esdhc_c_sel));
+	clks[esdhc_d_s] = imx_clk_mux("esdhc_d_sel", base + CCM_CSCMR1, 18, 1, esdhc_d_sel, ARRAY_SIZE(esdhc_d_sel));
+
+	clks[emi_sel] = imx_clk_mux("emi_sel", base + CCM_CBCDR, 26, 1,
+				emi_slow_sel, ARRAY_SIZE(emi_slow_sel));
+	clks[emi_slow_podf] = imx_clk_divider("emi_slow_podf", "emi_sel", base + CCM_CBCDR, 22, 3);
+	clks[nfc_podf] = imx_clk_divider("nfc_podf", "emi_slow_podf", base + CCM_CBCDR, 13, 3);
+	clks[ecspi_sel] = imx_clk_mux("ecspi_sel", base + CCM_CSCMR1, 4, 2,
+				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
+	clks[ecspi_pred] = imx_clk_divider("ecspi_pred", "ecspi_sel", base + CCM_CSCDR2, 25, 3);
+	clks[ecspi_podf] = imx_clk_divider("ecspi_podf", "ecspi_pred", base + CCM_CSCDR2, 19, 6);
+	clks[usboh3_sel] = imx_clk_mux("usboh3_sel", base + CCM_CSCMR1, 22, 2,
+				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
+	clks[usboh3_pred] = imx_clk_divider("usboh3_pred", "usboh3_sel", base + CCM_CSCDR1, 8, 3);
+	clks[usboh3_podf] = imx_clk_divider("usboh3_podf", "usboh3_pred", base + CCM_CSCDR1, 6, 2);
+	clks[usb_phy_pred] = imx_clk_divider("usb_phy_pred", "pll3_sw", base + CCM_CDCDR, 3, 3);
+	clks[usb_phy_podf] = imx_clk_divider("usb_phy_podf", "usb_phy_pred", base + CCM_CDCDR, 0, 3);
+	clks[usb_phy_sel] = imx_clk_mux("usb_phy_sel", base + CCM_CSCMR1, 26, 1,
+				usb_phy_sel_str, ARRAY_SIZE(usb_phy_sel_str));
+	clks[cpu_podf] = imx_clk_divider("cpu_podf", "pll1_sw", base + CCM_CACRR, 0, 3);
+}
+
+#ifdef CONFIG_ARCH_IMX51
+int __init mx51_clocks_init(void __iomem *regs, unsigned long rate_ckil, unsigned long rate_osc,
+			unsigned long rate_ckih1, unsigned long rate_ckih2)
+{
+	clks[pll1_sw] = imx_clk_pllv2("pll1_sw", "osc", (void *)MX51_PLL1_BASE_ADDR);
+	clks[pll2_sw] = imx_clk_pllv2("pll2_sw", "osc", (void *)MX51_PLL2_BASE_ADDR);
+	clks[pll3_sw] = imx_clk_pllv2("pll3_sw", "osc", (void *)MX51_PLL2_BASE_ADDR);
+
+	mx5_clocks_common_init(regs, rate_ckil, rate_osc, rate_ckih1, rate_ckih2);
+
+	clkdev_add_physbase(clks[uart_root], MX51_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[uart_root], MX51_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[uart_root], MX51_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per_root], MX51_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per_root], MX51_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX51_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX51_CSPI_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ecspi_podf], MX51_ECSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ecspi_podf], MX51_ECSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX51_MXC_FEC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[esdhc_a_podf], MX51_MMC_SDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[esdhc_b_podf], MX51_MMC_SDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[esdhc_c_s], MX51_MMC_SDHC3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[esdhc_d_s], MX51_MMC_SDHC4_BASE_ADDR, NULL);
+
+	return 0;
+}
+
+static int imx51_ccm_probe(struct device_d *dev)
+{
+	void __iomem *regs;
+
+	regs = dev_request_mem_region(dev, 0);
+
+	mx51_clocks_init(regs, 32768, 24000000, 22579200, 0); /* FIXME */
+
+	return 0;
+}
+
+static struct driver_d imx51_ccm_driver = {
+	.probe	= imx51_ccm_probe,
+	.name	= "imx51-ccm",
+};
+
+static int imx51_ccm_init(void)
+{
+	return register_driver(&imx51_ccm_driver);
+}
+postcore_initcall(imx51_ccm_init);
+#endif
+
+#ifdef CONFIG_ARCH_IMX53
+int __init mx53_clocks_init(void __iomem *regs, unsigned long rate_ckil, unsigned long rate_osc,
+			unsigned long rate_ckih1, unsigned long rate_ckih2)
+{
+	clks[pll1_sw] = imx_clk_pllv2("pll1_sw", "osc", (void *)MX53_PLL1_BASE_ADDR);
+	clks[pll2_sw] = imx_clk_pllv2("pll2_sw", "osc", (void *)MX53_PLL2_BASE_ADDR);
+	clks[pll3_sw] = imx_clk_pllv2("pll3_sw", "osc", (void *)MX53_PLL3_BASE_ADDR);
+	clks[pll4_sw] = imx_clk_pllv2("pll4_sw", "osc", (void *)MX53_PLL4_BASE_ADDR);
+
+	mx5_clocks_common_init(regs, rate_ckil, rate_osc, rate_ckih1, rate_ckih2);
+
+	clkdev_add_physbase(clks[uart_root], MX53_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[uart_root], MX53_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[uart_root], MX53_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per_root], MX53_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per_root], MX53_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX53_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX53_CSPI_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ecspi_podf], MX53_ECSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ecspi_podf], MX53_ECSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX53_FEC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[esdhc_a_podf], MX53_ESDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[esdhc_c_s], MX53_ESDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[esdhc_b_podf], MX53_ESDHC3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[esdhc_d_s], MX53_ESDHC4_BASE_ADDR, NULL);
+
+	return 0;
+}
+
+static int imx53_ccm_probe(struct device_d *dev)
+{
+	void __iomem *regs;
+
+	regs = dev_request_mem_region(dev, 0);
+
+	mx53_clocks_init(regs, 32768, 24000000, 22579200, 0); /* FIXME */
+
+	return 0;
+}
+
+static struct driver_d imx53_ccm_driver = {
+	.probe	= imx53_ccm_probe,
+	.name	= "imx53-ccm",
+};
+
+static int imx53_ccm_init(void)
+{
+	return register_driver(&imx53_ccm_driver);
+}
+postcore_initcall(imx53_ccm_init);
+#endif
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index b1eeb0c..8709c43 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -74,6 +74,7 @@ static int imx51_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX51_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	add_generic_device("imx51-ccm", 0, NULL, MX51_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpt", 0, NULL, MX51_GPT1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 0, NULL, MX51_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 1, NULL, MX51_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
@@ -82,7 +83,7 @@ static int imx51_init(void)
 
 	return 0;
 }
-coredevice_initcall(imx51_init);
+postcore_initcall(imx51_init);
 
 /*
  * Saves the boot source media into the $barebox_loc enviroment variable
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 2d7c174..88b4274 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -70,6 +70,7 @@ static int imx53_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX53_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	add_generic_device("imx53-ccm", 0, NULL, MX53_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpt", 0, NULL, 0X53fa0000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 0, NULL, MX53_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 1, NULL, MX53_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
@@ -81,7 +82,7 @@ static int imx53_init(void)
 
 	return 0;
 }
-coredevice_initcall(imx53_init);
+postcore_initcall(imx53_init);
 
 #define setup_pll_1000(base)	imx5_setup_pll((base), 1000, ((10 << 4) + ((1 - 1) << 0)), (12 - 1), 5)
 #define setup_pll_800(base)	imx5_setup_pll((base), 800, ((8 << 4) + ((1 - 1) << 0)), (3 - 1), 1)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
