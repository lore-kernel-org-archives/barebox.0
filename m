Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Whwqk-0008K2-Sm
 for barebox@lists.infradead.org; Wed, 07 May 2014 08:05:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 May 2014 10:04:34 +0200
Message-Id: <1399449884-19089-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
References: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/14] ARM: i.MX53: Use clock number defines from dt-bindings
To: barebox@lists.infradead.org

i.MX5 has clock number defines in dt-bindings, use them rather
then manually keeping the clock enums in sync.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx5.c | 176 ++++++++++++++++++++-----------------------
 1 file changed, 82 insertions(+), 94 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index f389653..9d536bc 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -16,6 +16,7 @@
 #include <linux/err.h>
 #include <mach/imx51-regs.h>
 #include <mach/imx53-regs.h>
+#include <dt-bindings/clock/imx5-clock.h>
 
 #include "clk.h"
 
@@ -57,20 +58,7 @@
 
 #define CCM_CMEOR	0x84
 
-enum imx5_clks {
-	dummy, ckil, osc, ckih1, ckih2, ahb, ipg, axi_a, axi_b, uart_pred,
-	uart_root, esdhc_a_pred, esdhc_b_pred, esdhc_c_s, esdhc_d_s,
-	emi_sel, emi_slow_podf, nfc_podf, ecspi_pred, ecspi_podf, usboh3_pred,
-	usboh3_podf, usb_phy_pred, usb_phy_podf, cpu_podf, di_pred, lp_apm,
-	periph_apm, main_bus, ahb_max, aips_tz1, aips_tz2, tmax1, tmax2,
-	tmax3, spba, uart_sel, esdhc_a_sel, esdhc_b_sel, esdhc_a_podf,
-	esdhc_b_podf, ecspi_sel, usboh3_sel, usb_phy_sel,
-	gpc_dvfs, pll1_sw, pll2_sw,
-	pll3_sw, pll4_sw, per_lp_apm, per_pred1, per_pred2, per_podf, per_root,
-	clk_max
-};
-
-static struct clk *clks[clk_max];
+static struct clk *clks[IMX5_CLK_END];
 
 /* This is used multiple times */
 static const char *standard_pll_sel[] = {
@@ -138,89 +126,89 @@ static void __init mx5_clocks_common_init(void __iomem *base, unsigned long rate
 	writel(0xffffffff, base + CCM_CCGR6);
 	writel(0xffffffff, base + CCM_CCGR7);
 
-	clks[dummy] = clk_fixed("dummy", 0);
-	clks[ckil] = clk_fixed("ckil", rate_ckil);
-	clks[osc] = clk_fixed("osc", rate_osc);
-	clks[ckih1] = clk_fixed("ckih1", rate_ckih1);
-	clks[ckih2] = clk_fixed("ckih2", rate_ckih2);
+	clks[IMX5_CLK_DUMMY] = clk_fixed("dummy", 0);
+	clks[IMX5_CLK_CKIL] = clk_fixed("ckil", rate_ckil);
+	clks[IMX5_CLK_OSC] = clk_fixed("osc", rate_osc);
+	clks[IMX5_CLK_CKIH1] = clk_fixed("ckih1", rate_ckih1);
+	clks[IMX5_CLK_CKIH2] = clk_fixed("ckih2", rate_ckih2);
 
-	clks[lp_apm] = imx_clk_mux("lp_apm", base + CCM_CCSR, 9, 1,
+	clks[IMX5_CLK_LP_APM] = imx_clk_mux("lp_apm", base + CCM_CCSR, 9, 1,
 				lp_apm_sel, ARRAY_SIZE(lp_apm_sel));
-	clks[periph_apm] = imx_clk_mux("periph_apm", base + CCM_CBCMR, 12, 2,
+	clks[IMX5_CLK_PERIPH_APM] = imx_clk_mux("periph_apm", base + CCM_CBCMR, 12, 2,
 				periph_apm_sel, ARRAY_SIZE(periph_apm_sel));
-	clks[main_bus] = imx_clk_mux("main_bus", base + CCM_CBCDR, 25, 1,
+	clks[IMX5_CLK_MAIN_BUS] = imx_clk_mux("main_bus", base + CCM_CBCDR, 25, 1,
 				main_bus_sel, ARRAY_SIZE(main_bus_sel));
-	clks[per_lp_apm] = imx_clk_mux("per_lp_apm", base + CCM_CBCMR, 1, 1,
+	clks[IMX5_CLK_PER_LP_APM] = imx_clk_mux("per_lp_apm", base + CCM_CBCMR, 1, 1,
 				per_lp_apm_sel, ARRAY_SIZE(per_lp_apm_sel));
-	clks[per_pred1] = imx_clk_divider("per_pred1", "per_lp_apm", base + CCM_CBCDR, 6, 2);
-	clks[per_pred2] = imx_clk_divider("per_pred2", "per_pred1", base + CCM_CBCDR, 3, 3);
-	clks[per_podf] = imx_clk_divider("per_podf", "per_pred2", base + CCM_CBCDR, 0, 3);
-	clks[per_root] = imx_clk_mux("per_root", base + CCM_CBCMR, 0, 1,
+	clks[IMX5_CLK_PER_PRED1] = imx_clk_divider("per_pred1", "per_lp_apm", base + CCM_CBCDR, 6, 2);
+	clks[IMX5_CLK_PER_PRED2] = imx_clk_divider("per_pred2", "per_pred1", base + CCM_CBCDR, 3, 3);
+	clks[IMX5_CLK_PER_PODF] = imx_clk_divider("per_podf", "per_pred2", base + CCM_CBCDR, 0, 3);
+	clks[IMX5_CLK_PER_ROOT] = imx_clk_mux("per_root", base + CCM_CBCMR, 0, 1,
 				per_root_sel, ARRAY_SIZE(per_root_sel));
-	clks[ahb] = imx_clk_divider("ahb", "main_bus", base + CCM_CBCDR, 10, 3);
-	clks[ipg] = imx_clk_divider("ipg", "ahb", base + CCM_CBCDR, 8, 2);
-	clks[axi_a] = imx_clk_divider("axi_a", "main_bus", base + CCM_CBCDR, 16, 3);
-	clks[axi_b] = imx_clk_divider("axi_b", "main_bus", base + CCM_CBCDR, 19, 3);
-	clks[uart_sel] = imx_clk_mux("uart_sel", base + CCM_CSCMR1, 24, 2,
+	clks[IMX5_CLK_AHB] = imx_clk_divider("ahb", "main_bus", base + CCM_CBCDR, 10, 3);
+	clks[IMX5_CLK_IPG] = imx_clk_divider("ipg", "ahb", base + CCM_CBCDR, 8, 2);
+	clks[IMX5_CLK_AXI_A] = imx_clk_divider("axi_a", "main_bus", base + CCM_CBCDR, 16, 3);
+	clks[IMX5_CLK_AXI_B] = imx_clk_divider("axi_b", "main_bus", base + CCM_CBCDR, 19, 3);
+	clks[IMX5_CLK_UART_SEL] = imx_clk_mux("uart_sel", base + CCM_CSCMR1, 24, 2,
 				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
-	clks[uart_pred] = imx_clk_divider("uart_pred", "uart_sel", base + CCM_CSCDR1, 3, 3);
-	clks[uart_root] = imx_clk_divider("uart_root", "uart_pred", base + CCM_CSCDR1, 0, 3);
+	clks[IMX5_CLK_UART_PRED] = imx_clk_divider("uart_pred", "uart_sel", base + CCM_CSCDR1, 3, 3);
+	clks[IMX5_CLK_UART_ROOT] = imx_clk_divider("uart_root", "uart_pred", base + CCM_CSCDR1, 0, 3);
 
-	clks[esdhc_a_sel] = imx_clk_mux("esdhc_a_sel", base + CCM_CSCMR1, 20, 2,
+	clks[IMX5_CLK_ESDHC_A_SEL] = imx_clk_mux("esdhc_a_sel", base + CCM_CSCMR1, 20, 2,
 				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
-	clks[esdhc_b_sel] = imx_clk_mux("esdhc_b_sel", base + CCM_CSCMR1, 16, 2,
+	clks[IMX5_CLK_ESDHC_B_SEL] = imx_clk_mux("esdhc_b_sel", base + CCM_CSCMR1, 16, 2,
 				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
-	clks[esdhc_a_pred] = imx_clk_divider("esdhc_a_pred", "esdhc_a_sel", base + CCM_CSCDR1, 16, 3);
-	clks[esdhc_a_podf] = imx_clk_divider("esdhc_a_podf", "esdhc_a_pred", base + CCM_CSCDR1, 11, 3);
-	clks[esdhc_b_pred] = imx_clk_divider("esdhc_b_pred", "esdhc_b_sel", base + CCM_CSCDR1, 22, 3);
-	clks[esdhc_b_podf] = imx_clk_divider("esdhc_b_podf", "esdhc_b_pred", base + CCM_CSCDR1, 19, 3);
-	clks[esdhc_c_s] = imx_clk_mux("esdhc_c_sel", base + CCM_CSCMR1, 19, 1, esdhc_c_sel, ARRAY_SIZE(esdhc_c_sel));
-	clks[esdhc_d_s] = imx_clk_mux("esdhc_d_sel", base + CCM_CSCMR1, 18, 1, esdhc_d_sel, ARRAY_SIZE(esdhc_d_sel));
-
-	clks[emi_sel] = imx_clk_mux("emi_sel", base + CCM_CBCDR, 26, 1,
+	clks[IMX5_CLK_ESDHC_A_PRED] = imx_clk_divider("esdhc_a_pred", "esdhc_a_sel", base + CCM_CSCDR1, 16, 3);
+	clks[IMX5_CLK_ESDHC_A_PODF] = imx_clk_divider("esdhc_a_podf", "esdhc_a_pred", base + CCM_CSCDR1, 11, 3);
+	clks[IMX5_CLK_ESDHC_B_PRED] = imx_clk_divider("esdhc_b_pred", "esdhc_b_sel", base + CCM_CSCDR1, 22, 3);
+	clks[IMX5_CLK_ESDHC_B_PODF] = imx_clk_divider("esdhc_b_podf", "esdhc_b_pred", base + CCM_CSCDR1, 19, 3);
+	clks[IMX5_CLK_ESDHC_C_SEL] = imx_clk_mux("esdhc_c_sel", base + CCM_CSCMR1, 19, 1, esdhc_c_sel, ARRAY_SIZE(esdhc_c_sel));
+	clks[IMX5_CLK_ESDHC_D_SEL] = imx_clk_mux("esdhc_d_sel", base + CCM_CSCMR1, 18, 1, esdhc_d_sel, ARRAY_SIZE(esdhc_d_sel));
+
+	clks[IMX5_CLK_EMI_SEL] = imx_clk_mux("emi_sel", base + CCM_CBCDR, 26, 1,
 				emi_slow_sel, ARRAY_SIZE(emi_slow_sel));
-	clks[emi_slow_podf] = imx_clk_divider("emi_slow_podf", "emi_sel", base + CCM_CBCDR, 22, 3);
-	clks[nfc_podf] = imx_clk_divider("nfc_podf", "emi_slow_podf", base + CCM_CBCDR, 13, 3);
-	clks[ecspi_sel] = imx_clk_mux("ecspi_sel", base + CCM_CSCMR1, 4, 2,
+	clks[IMX5_CLK_EMI_SLOW_PODF] = imx_clk_divider("emi_slow_podf", "emi_sel", base + CCM_CBCDR, 22, 3);
+	clks[IMX5_CLK_NFC_PODF] = imx_clk_divider("nfc_podf", "emi_slow_podf", base + CCM_CBCDR, 13, 3);
+	clks[IMX5_CLK_ECSPI_SEL] = imx_clk_mux("ecspi_sel", base + CCM_CSCMR1, 4, 2,
 				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
-	clks[ecspi_pred] = imx_clk_divider("ecspi_pred", "ecspi_sel", base + CCM_CSCDR2, 25, 3);
-	clks[ecspi_podf] = imx_clk_divider("ecspi_podf", "ecspi_pred", base + CCM_CSCDR2, 19, 6);
-	clks[usboh3_sel] = imx_clk_mux("usboh3_sel", base + CCM_CSCMR1, 22, 2,
+	clks[IMX5_CLK_ECSPI_PRED] = imx_clk_divider("ecspi_pred", "ecspi_sel", base + CCM_CSCDR2, 25, 3);
+	clks[IMX5_CLK_ECSPI_PODF] = imx_clk_divider("ecspi_podf", "ecspi_pred", base + CCM_CSCDR2, 19, 6);
+	clks[IMX5_CLK_USBOH3_SEL] = imx_clk_mux("usboh3_sel", base + CCM_CSCMR1, 22, 2,
 				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
-	clks[usboh3_pred] = imx_clk_divider("usboh3_pred", "usboh3_sel", base + CCM_CSCDR1, 8, 3);
-	clks[usboh3_podf] = imx_clk_divider("usboh3_podf", "usboh3_pred", base + CCM_CSCDR1, 6, 2);
-	clks[usb_phy_pred] = imx_clk_divider("usb_phy_pred", "pll3_sw", base + CCM_CDCDR, 3, 3);
-	clks[usb_phy_podf] = imx_clk_divider("usb_phy_podf", "usb_phy_pred", base + CCM_CDCDR, 0, 3);
-	clks[usb_phy_sel] = imx_clk_mux("usb_phy_sel", base + CCM_CSCMR1, 26, 1,
+	clks[IMX5_CLK_USBOH3_PRED] = imx_clk_divider("usboh3_pred", "usboh3_sel", base + CCM_CSCDR1, 8, 3);
+	clks[IMX5_CLK_USBOH3_PODF] = imx_clk_divider("usboh3_podf", "usboh3_pred", base + CCM_CSCDR1, 6, 2);
+	clks[IMX5_CLK_USB_PHY_PRED] = imx_clk_divider("usb_phy_pred", "pll3_sw", base + CCM_CDCDR, 3, 3);
+	clks[IMX5_CLK_USB_PHY_PODF] = imx_clk_divider("usb_phy_podf", "usb_phy_pred", base + CCM_CDCDR, 0, 3);
+	clks[IMX5_CLK_USB_PHY_SEL] = imx_clk_mux("usb_phy_sel", base + CCM_CSCMR1, 26, 1,
 				usb_phy_sel_str, ARRAY_SIZE(usb_phy_sel_str));
-	clks[cpu_podf] = imx_clk_divider("cpu_podf", "pll1_sw", base + CCM_CACRR, 0, 3);
+	clks[IMX5_CLK_CPU_PODF] = imx_clk_divider("cpu_podf", "pll1_sw", base + CCM_CACRR, 0, 3);
 }
 
 #ifdef CONFIG_ARCH_IMX51
 int __init mx51_clocks_init(void __iomem *regs, unsigned long rate_ckil, unsigned long rate_osc,
 			unsigned long rate_ckih1, unsigned long rate_ckih2)
 {
-	clks[pll1_sw] = imx_clk_pllv2("pll1_sw", "osc", (void *)MX51_PLL1_BASE_ADDR);
-	clks[pll2_sw] = imx_clk_pllv2("pll2_sw", "osc", (void *)MX51_PLL2_BASE_ADDR);
-	clks[pll3_sw] = imx_clk_pllv2("pll3_sw", "osc", (void *)MX51_PLL3_BASE_ADDR);
+	clks[IMX5_CLK_PLL1_SW] = imx_clk_pllv2("pll1_sw", "osc", (void *)MX51_PLL1_BASE_ADDR);
+	clks[IMX5_CLK_PLL2_SW] = imx_clk_pllv2("pll2_sw", "osc", (void *)MX51_PLL2_BASE_ADDR);
+	clks[IMX5_CLK_PLL3_SW] = imx_clk_pllv2("pll3_sw", "osc", (void *)MX51_PLL3_BASE_ADDR);
 
 	mx5_clocks_common_init(regs, rate_ckil, rate_osc, rate_ckih1, rate_ckih2);
 
-	clkdev_add_physbase(clks[uart_root], MX51_UART1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[uart_root], MX51_UART2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[uart_root], MX51_UART3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per_root], MX51_I2C1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per_root], MX51_I2C2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per_root], MX51_GPT1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX51_CSPI_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ecspi_podf], MX51_ECSPI1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ecspi_podf], MX51_ECSPI2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX51_MXC_FEC_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[esdhc_a_podf], MX51_MMC_SDHC1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[esdhc_b_podf], MX51_MMC_SDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[esdhc_c_s], MX51_MMC_SDHC3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[esdhc_d_s], MX51_MMC_SDHC4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX51_ATA_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX51_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX51_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX51_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX51_CSPI_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX51_ECSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX51_ECSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX51_MXC_FEC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_A_PODF], MX51_MMC_SDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_B_PODF], MX51_MMC_SDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_C_SEL], MX51_MMC_SDHC3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_D_SEL], MX51_MMC_SDHC4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX51_ATA_BASE_ADDR, NULL);
 
 	return 0;
 }
@@ -261,29 +249,29 @@ core_initcall(imx51_ccm_init);
 int __init mx53_clocks_init(void __iomem *regs, unsigned long rate_ckil, unsigned long rate_osc,
 			unsigned long rate_ckih1, unsigned long rate_ckih2)
 {
-	clks[pll1_sw] = imx_clk_pllv2("pll1_sw", "osc", (void *)MX53_PLL1_BASE_ADDR);
-	clks[pll2_sw] = imx_clk_pllv2("pll2_sw", "osc", (void *)MX53_PLL2_BASE_ADDR);
-	clks[pll3_sw] = imx_clk_pllv2("pll3_sw", "osc", (void *)MX53_PLL3_BASE_ADDR);
-	clks[pll4_sw] = imx_clk_pllv2("pll4_sw", "osc", (void *)MX53_PLL4_BASE_ADDR);
+	clks[IMX5_CLK_PLL1_SW] = imx_clk_pllv2("pll1_sw", "osc", (void *)MX53_PLL1_BASE_ADDR);
+	clks[IMX5_CLK_PLL2_SW] = imx_clk_pllv2("pll2_sw", "osc", (void *)MX53_PLL2_BASE_ADDR);
+	clks[IMX5_CLK_PLL3_SW] = imx_clk_pllv2("pll3_sw", "osc", (void *)MX53_PLL3_BASE_ADDR);
+	clks[IMX5_CLK_PLL4_SW] = imx_clk_pllv2("pll4_sw", "osc", (void *)MX53_PLL4_BASE_ADDR);
 
 	mx5_clocks_common_init(regs, rate_ckil, rate_osc, rate_ckih1, rate_ckih2);
 
-	clkdev_add_physbase(clks[uart_root], MX53_UART1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[uart_root], MX53_UART2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[uart_root], MX53_UART3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per_root], MX53_I2C1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per_root], MX53_I2C2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per_root], MX53_I2C3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per_root], MX53_GPT1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX53_CSPI_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ecspi_podf], MX53_ECSPI1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ecspi_podf], MX53_ECSPI2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX53_FEC_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[esdhc_a_podf], MX53_ESDHC1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[esdhc_c_s], MX53_ESDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[esdhc_b_podf], MX53_ESDHC3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[esdhc_d_s], MX53_ESDHC4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ahb], MX53_SATA_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_I2C1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_I2C2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_I2C3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_GPT1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX53_CSPI_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX53_ECSPI1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ECSPI_PODF], MX53_ECSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX53_FEC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_A_PODF], MX53_ESDHC1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_C_SEL], MX53_ESDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_B_PODF], MX53_ESDHC3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_D_SEL], MX53_ESDHC4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_AHB], MX53_SATA_BASE_ADDR, NULL);
 
 	return 0;
 }
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
