Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTWbh-0000Y8-W4
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 14:18:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Mar 2015 15:18:10 +0100
Message-Id: <1425565092-9570-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: i.MX5: Do not register fixed clocks twice
To: Barebox List <barebox@lists.infradead.org>

When booting with device tree the fixed clocks are registered from
the device tree, so do not register them again in the clock driver.

This also removes the ckih1 and ckih2 clocks which are unused at least
when booting without device tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx5.c | 27 +++++++++++----------------
 1 file changed, 11 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index ea805b0..8a0d875 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -178,9 +178,7 @@ static const char *ipu_sel[] = {
 	"ahb",
 };
 
-static void __init mx5_clocks_common_init(void __iomem *base, unsigned long rate_ckil,
-		unsigned long rate_osc, unsigned long rate_ckih1,
-		unsigned long rate_ckih2)
+static void __init mx5_clocks_common_init(struct device_d *dev, void __iomem *base)
 {
 	writel(0xffffffff, base + CCM_CCGR0);
 	writel(0xffffffff, base + CCM_CCGR1);
@@ -191,11 +189,10 @@ static void __init mx5_clocks_common_init(void __iomem *base, unsigned long rate
 	writel(0xffffffff, base + CCM_CCGR6);
 	writel(0xffffffff, base + CCM_CCGR7);
 
-	clks[IMX5_CLK_DUMMY] = clk_fixed("dummy", 0);
-	clks[IMX5_CLK_CKIL] = clk_fixed("ckil", rate_ckil);
-	clks[IMX5_CLK_OSC] = clk_fixed("osc", rate_osc);
-	clks[IMX5_CLK_CKIH1] = clk_fixed("ckih1", rate_ckih1);
-	clks[IMX5_CLK_CKIH2] = clk_fixed("ckih2", rate_ckih2);
+	if (!IS_ENABLED(COMMON_CLK_OF_PROVIDER) || !dev->device_node) {
+		clks[IMX5_CLK_CKIL] = clk_fixed("ckil", 32768);
+		clks[IMX5_CLK_OSC] = clk_fixed("osc", 24000000);
+	}
 
 	clks[IMX5_CLK_LP_APM] = imx_clk_mux("lp_apm", base + CCM_CCSR, 9, 1,
 				lp_apm_sel, ARRAY_SIZE(lp_apm_sel));
@@ -273,14 +270,13 @@ static void mx51_clocks_ipu_init(void __iomem *regs)
 	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI1_SEL], MX51_IPU_BASE_ADDR, "di1");
 }
 
-int __init mx51_clocks_init(void __iomem *regs, unsigned long rate_ckil, unsigned long rate_osc,
-			unsigned long rate_ckih1, unsigned long rate_ckih2)
+int __init mx51_clocks_init(struct device_d *dev, void __iomem *regs)
 {
 	clks[IMX5_CLK_PLL1_SW] = imx_clk_pllv2("pll1_sw", "osc", (void *)MX51_PLL1_BASE_ADDR);
 	clks[IMX5_CLK_PLL2_SW] = imx_clk_pllv2("pll2_sw", "osc", (void *)MX51_PLL2_BASE_ADDR);
 	clks[IMX5_CLK_PLL3_SW] = imx_clk_pllv2("pll3_sw", "osc", (void *)MX51_PLL3_BASE_ADDR);
 
-	mx5_clocks_common_init(regs, rate_ckil, rate_osc, rate_ckih1, rate_ckih2);
+	mx5_clocks_common_init(dev, regs);
 
 	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX51_UART1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX51_UART2_BASE_ADDR, NULL);
@@ -314,7 +310,7 @@ static int imx51_ccm_probe(struct device_d *dev)
 	if (IS_ERR(regs))
 		return PTR_ERR(regs);
 
-	mx51_clocks_init(regs, 32768, 24000000, 22579200, 0); /* FIXME */
+	mx51_clocks_init(dev, regs);
 
 	return 0;
 }
@@ -359,15 +355,14 @@ static void mx53_clocks_ipu_init(void __iomem *regs)
 	clkdev_add_physbase(clks[IMX5_CLK_IPU_DI1_SEL], MX53_IPU_BASE_ADDR, "di1");
 }
 
-int __init mx53_clocks_init(void __iomem *regs, unsigned long rate_ckil, unsigned long rate_osc,
-			unsigned long rate_ckih1, unsigned long rate_ckih2)
+int __init mx53_clocks_init(struct device_d *dev, void __iomem *regs)
 {
 	clks[IMX5_CLK_PLL1_SW] = imx_clk_pllv2("pll1_sw", "osc", (void *)MX53_PLL1_BASE_ADDR);
 	clks[IMX5_CLK_PLL2_SW] = imx_clk_pllv2("pll2_sw", "osc", (void *)MX53_PLL2_BASE_ADDR);
 	clks[IMX5_CLK_PLL3_SW] = imx_clk_pllv2("pll3_sw", "osc", (void *)MX53_PLL3_BASE_ADDR);
 	clks[IMX5_CLK_PLL4_SW] = imx_clk_pllv2("pll4_sw", "osc", (void *)MX53_PLL4_BASE_ADDR);
 
-	mx5_clocks_common_init(regs, rate_ckil, rate_osc, rate_ckih1, rate_ckih2);
+	mx5_clocks_common_init(dev, regs);
 
 	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART2_BASE_ADDR, NULL);
@@ -401,7 +396,7 @@ static int imx53_ccm_probe(struct device_d *dev)
 
 	regs = dev_request_mem_region(dev, 0);
 
-	mx53_clocks_init(regs, 32768, 24000000, 22579200, 0); /* FIXME */
+	mx53_clocks_init(dev, regs);
 
 	return 0;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
