Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1biO0m-0006Az-Ad
 for barebox@lists.infradead.org; Fri, 09 Sep 2016 15:46:44 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Fri,  9 Sep 2016 17:43:41 +0200
Message-Id: <1473435824-7830-3-git-send-email-akurz@blala.de>
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
Subject: [PATCH 3/6] ARM: i.MX clock: cleanup imx50 incompatibilities
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Move all MX5 clock functionality which does not apply to i.MX50 to
a new mx51_mx53 related function.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/clk-imx5.c | 43 +++++++++++++++++++++++++++----------------
 1 file changed, 27 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index 51a6460..f16a148 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -194,12 +194,6 @@ static void __init mx5_clocks_common_init(struct device_d *dev, void __iomem *ba
 		clks[IMX5_CLK_OSC] = clk_fixed("osc", 24000000);
 	}
 
-	clks[IMX5_CLK_LP_APM] = imx_clk_mux("lp_apm", base + CCM_CCSR, 9, 1,
-				lp_apm_sel, ARRAY_SIZE(lp_apm_sel));
-	clks[IMX5_CLK_PERIPH_APM] = imx_clk_mux("periph_apm", base + CCM_CBCMR, 12, 2,
-				periph_apm_sel, ARRAY_SIZE(periph_apm_sel));
-	clks[IMX5_CLK_MAIN_BUS] = imx_clk_mux("main_bus", base + CCM_CBCDR, 25, 1,
-				main_bus_sel, ARRAY_SIZE(main_bus_sel));
 	clks[IMX5_CLK_PER_LP_APM] = imx_clk_mux("per_lp_apm", base + CCM_CBCMR, 1, 1,
 				per_lp_apm_sel, ARRAY_SIZE(per_lp_apm_sel));
 	clks[IMX5_CLK_PER_PRED1] = imx_clk_divider("per_pred1", "per_lp_apm", base + CCM_CBCDR, 6, 2);
@@ -215,26 +209,42 @@ static void __init mx5_clocks_common_init(struct device_d *dev, void __iomem *ba
 				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
 	clks[IMX5_CLK_UART_PRED] = imx_clk_divider("uart_pred", "uart_sel", base + CCM_CSCDR1, 3, 3);
 	clks[IMX5_CLK_UART_ROOT] = imx_clk_divider("uart_root", "uart_pred", base + CCM_CSCDR1, 0, 3);
+	clks[IMX5_CLK_ESDHC_A_PRED] = imx_clk_divider("esdhc_a_pred",
+		"esdhc_a_sel", base + CCM_CSCDR1, 16, 3);
+	clks[IMX5_CLK_ESDHC_A_PODF] = imx_clk_divider("esdhc_a_podf",
+		"esdhc_a_pred", base + CCM_CSCDR1, 11, 3);
+	clks[IMX5_CLK_ESDHC_B_PRED] = imx_clk_divider("esdhc_b_pred",
+		"esdhc_b_sel", base + CCM_CSCDR1, 22, 3);
+	clks[IMX5_CLK_ESDHC_B_PODF] = imx_clk_divider("esdhc_b_podf",
+		"esdhc_b_pred", base + CCM_CSCDR1, 19, 3);
+	clks[IMX5_CLK_ECSPI_SEL] = imx_clk_mux("ecspi_sel", base + CCM_CSCMR1,
+		4, 2, standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
+	clks[IMX5_CLK_ECSPI_PRED] = imx_clk_divider("ecspi_pred",
+		"ecspi_sel", base + CCM_CSCDR2, 25, 3);
+	clks[IMX5_CLK_ECSPI_PODF] = imx_clk_divider("ecspi_podf",
+		"ecspi_pred", base + CCM_CSCDR2, 19, 6);
+	clks[IMX5_CLK_CPU_PODF] = imx_clk_divider("cpu_podf",
+		"pll1_sw", base + CCM_CACRR, 0, 3);
+}
 
+static void mx5_clocks_mx51_mx53_init(void __iomem *base)
+{
+	clks[IMX5_CLK_LP_APM] = imx_clk_mux("lp_apm", base + CCM_CCSR, 9, 1,
+				lp_apm_sel, ARRAY_SIZE(lp_apm_sel));
+	clks[IMX5_CLK_PERIPH_APM] = imx_clk_mux("periph_apm", base + CCM_CBCMR, 12, 2,
+				periph_apm_sel, ARRAY_SIZE(periph_apm_sel));
+	clks[IMX5_CLK_MAIN_BUS] = imx_clk_mux("main_bus", base + CCM_CBCDR, 25, 1,
+				main_bus_sel, ARRAY_SIZE(main_bus_sel));
 	clks[IMX5_CLK_ESDHC_A_SEL] = imx_clk_mux("esdhc_a_sel", base + CCM_CSCMR1, 20, 2,
 				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
 	clks[IMX5_CLK_ESDHC_B_SEL] = imx_clk_mux("esdhc_b_sel", base + CCM_CSCMR1, 16, 2,
 				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
-	clks[IMX5_CLK_ESDHC_A_PRED] = imx_clk_divider("esdhc_a_pred", "esdhc_a_sel", base + CCM_CSCDR1, 16, 3);
-	clks[IMX5_CLK_ESDHC_A_PODF] = imx_clk_divider("esdhc_a_podf", "esdhc_a_pred", base + CCM_CSCDR1, 11, 3);
-	clks[IMX5_CLK_ESDHC_B_PRED] = imx_clk_divider("esdhc_b_pred", "esdhc_b_sel", base + CCM_CSCDR1, 22, 3);
-	clks[IMX5_CLK_ESDHC_B_PODF] = imx_clk_divider("esdhc_b_podf", "esdhc_b_pred", base + CCM_CSCDR1, 19, 3);
 	clks[IMX5_CLK_ESDHC_C_SEL] = imx_clk_mux("esdhc_c_sel", base + CCM_CSCMR1, 19, 1, esdhc_c_sel, ARRAY_SIZE(esdhc_c_sel));
 	clks[IMX5_CLK_ESDHC_D_SEL] = imx_clk_mux("esdhc_d_sel", base + CCM_CSCMR1, 18, 1, esdhc_d_sel, ARRAY_SIZE(esdhc_d_sel));
-
 	clks[IMX5_CLK_EMI_SEL] = imx_clk_mux("emi_sel", base + CCM_CBCDR, 26, 1,
 				emi_slow_sel, ARRAY_SIZE(emi_slow_sel));
 	clks[IMX5_CLK_EMI_SLOW_PODF] = imx_clk_divider("emi_slow_podf", "emi_sel", base + CCM_CBCDR, 22, 3);
 	clks[IMX5_CLK_NFC_PODF] = imx_clk_divider("nfc_podf", "emi_slow_podf", base + CCM_CBCDR, 13, 3);
-	clks[IMX5_CLK_ECSPI_SEL] = imx_clk_mux("ecspi_sel", base + CCM_CSCMR1, 4, 2,
-				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
-	clks[IMX5_CLK_ECSPI_PRED] = imx_clk_divider("ecspi_pred", "ecspi_sel", base + CCM_CSCDR2, 25, 3);
-	clks[IMX5_CLK_ECSPI_PODF] = imx_clk_divider("ecspi_podf", "ecspi_pred", base + CCM_CSCDR2, 19, 6);
 	clks[IMX5_CLK_USBOH3_SEL] = imx_clk_mux("usboh3_sel", base + CCM_CSCMR1, 22, 2,
 				standard_pll_sel, ARRAY_SIZE(standard_pll_sel));
 	clks[IMX5_CLK_USBOH3_PRED] = imx_clk_divider("usboh3_pred", "usboh3_sel", base + CCM_CSCDR1, 8, 3);
@@ -243,7 +253,6 @@ static void __init mx5_clocks_common_init(struct device_d *dev, void __iomem *ba
 	clks[IMX5_CLK_USB_PHY_PODF] = imx_clk_divider("usb_phy_podf", "usb_phy_pred", base + CCM_CDCDR, 0, 3);
 	clks[IMX5_CLK_USB_PHY_SEL] = imx_clk_mux("usb_phy_sel", base + CCM_CSCMR1, 26, 1,
 				usb_phy_sel_str, ARRAY_SIZE(usb_phy_sel_str));
-	clks[IMX5_CLK_CPU_PODF] = imx_clk_divider("cpu_podf", "pll1_sw", base + CCM_CACRR, 0, 3);
 }
 
 static void mx5_clocks_ipu_init(void __iomem *regs)
@@ -277,6 +286,7 @@ int __init mx51_clocks_init(struct device_d *dev, void __iomem *regs)
 	clks[IMX5_CLK_PLL3_SW] = imx_clk_pllv2("pll3_sw", "osc", (void *)MX51_PLL3_BASE_ADDR);
 
 	mx5_clocks_common_init(dev, regs);
+	mx5_clocks_mx51_mx53_init(regs);
 
 	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX51_UART1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX51_UART2_BASE_ADDR, NULL);
@@ -365,6 +375,7 @@ int __init mx53_clocks_init(struct device_d *dev, void __iomem *regs)
 	clks[IMX5_CLK_PLL4_SW] = imx_clk_pllv2("pll4_sw", "osc", (void *)MX53_PLL4_BASE_ADDR);
 
 	mx5_clocks_common_init(dev, regs);
+	mx5_clocks_mx51_mx53_init(regs);
 
 	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART2_BASE_ADDR, NULL);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
