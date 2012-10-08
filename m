Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJFX-00058W-MU
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:44:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:44:16 +0200
Message-Id: <1349725459-20226-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
References: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] ARM i.MX27: Add lcdc per gate
To: barebox@lists.infradead.org

This gate is used to enable/disable the lcd controller, hence we
need a gate for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx27.c |   25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx27.c b/arch/arm/mach-imx/clk-imx27.c
index abfde0f..881be22 100644
--- a/arch/arm/mach-imx/clk-imx27.c
+++ b/arch/arm/mach-imx/clk-imx27.c
@@ -29,7 +29,7 @@
 enum mx27_clks {
 	dummy, ckih, ckil, mpll, spll, mpll_main2, ahb, ipg, nfc_div, per1_div,
 	per2_div, per3_div, per4_div, usb_div, cpu_sel,	clko_sel, cpu_div, clko_div,
-	clko_en, clk_max
+	clko_en, lcdc_per_gate, clk_max
 };
 
 static struct clk *clks[clk_max];
@@ -72,18 +72,18 @@ static int imx27_ccm_probe(struct device_d *dev)
 	base = dev_request_mem_region(dev, 0);
 
 	writel(PCCR0_SDHC3_EN | PCCR0_SDHC2_EN | PCCR0_SDHC1_EN |
-			PCCR0_PWM_EN | PCCR0_KPP_EN | PCCR0_IIM_EN | PCCR0_I2C2_EN |
-			PCCR0_I2C1_EN | PCCR0_GPT6_EN | PCCR0_GPT5_EN | PCCR0_GPT4_EN |
-			PCCR0_GPT3_EN | PCCR0_GPT2_EN | PCCR0_GPT1_EN | PCCR0_GPIO_EN |
-			PCCR0_FEC_EN | PCCR0_CSPI3_EN | PCCR0_CSPI2_EN | PCCR0_CSPI1_EN,
+			PCCR0_PWM_EN | PCCR0_KPP_EN | PCCR0_LCDC_EN | PCCR0_IIM_EN |
+			PCCR0_I2C2_EN | PCCR0_I2C1_EN | PCCR0_GPT6_EN | PCCR0_GPT5_EN |
+			PCCR0_GPT4_EN | PCCR0_GPT3_EN | PCCR0_GPT2_EN | PCCR0_GPT1_EN |
+			PCCR0_GPIO_EN | PCCR0_FEC_EN | PCCR0_CSPI3_EN | PCCR0_CSPI2_EN |
+			PCCR0_CSPI1_EN,
 			base + CCM_PCCR0);
 
-	writel(PCCR1_NFC_BAUDEN | PCCR1_PERCLK4_EN | PCCR1_PERCLK3_EN |
-		       PCCR1_PERCLK2_EN | PCCR1_PERCLK1_EN | PCCR1_HCLK_USB |
-		       PCCR1_HCLK_FEC | PCCR1_HCLK_EMI | PCCR1_WDT_EN | PCCR1_USB_EN |
-		       PCCR1_UART6_EN | PCCR1_UART5_EN | PCCR1_UART4_EN |
-		       PCCR1_UART3_EN | PCCR1_UART2_EN | PCCR1_UART1_EN,
-		       base + CCM_PCCR1);
+	writel(PCCR1_NFC_BAUDEN | PCCR1_PERCLK4_EN | PCCR1_PERCLK2_EN | PCCR1_PERCLK1_EN |
+			PCCR1_HCLK_USB | PCCR1_HCLK_LCDC | PCCR1_HCLK_FEC | PCCR1_HCLK_EMI |
+			PCCR1_WDT_EN | PCCR1_USB_EN | PCCR1_UART6_EN | PCCR1_UART5_EN |
+			PCCR1_UART4_EN | PCCR1_UART3_EN | PCCR1_UART2_EN | PCCR1_UART1_EN,
+			base + CCM_PCCR1);
 
 	clks[dummy] = clk_fixed("dummy", 0);
 	clks[ckih] = clk_fixed("ckih", 26000000);
@@ -115,6 +115,7 @@ static int imx27_ccm_probe(struct device_d *dev)
 	else
 		clks[cpu_div] = imx_clk_divider("cpu_div", "cpu_sel", base + CCM_CSCR, 13, 3);
 	clks[clko_div] = imx_clk_divider("clko_div", "clko_sel", base + CCM_PCDR0, 22, 3);
+	clks[lcdc_per_gate] = imx_clk_gate("lcdc_per_gate", "per3_div", base + CCM_PCCR1, 7);
 
 	clkdev_add_physbase(clks[per1_div], MX27_GPT1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per1_div], MX27_GPT2_BASE_ADDR, NULL);
@@ -136,7 +137,7 @@ static int imx27_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[per2_div], MX27_SDHC1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per2_div], MX27_SDHC2_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per2_div], MX27_SDHC3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per3_div], MX27_LCDC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[lcdc_per_gate], MX27_LCDC_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg], MX27_FEC_BASE_ADDR, NULL);
 
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
