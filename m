Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Axf-0003In-Jx
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:16 +0100
Message-Id: <1389971012-22977-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/22] ARM: i.MX27: Add missing MPLL clock sources
To: barebox@lists.infradead.org

The MPLL can be driven from the low frequency reference clock. This
is the reset default. Currently the clock code assumes this has been
changed from the lowlevel code. If that didn't happen we get wrong
clock rates. This adds the missing clocks so that we get correct
clock rates.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx27.c | 44 ++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 39 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx27.c b/arch/arm/mach-imx/clk-imx27.c
index 6fd3cd6..c792261 100644
--- a/arch/arm/mach-imx/clk-imx27.c
+++ b/arch/arm/mach-imx/clk-imx27.c
@@ -92,8 +92,23 @@
 
 enum mx27_clks {
 	dummy, ckih, ckil, mpll, spll, mpll_main2, ahb, ipg, nfc_div, per1_div,
-	per2_div, per3_div, per4_div, usb_div, cpu_sel,	clko_sel, cpu_div, clko_div,
-	clko_en, lcdc_per_gate, lcdc_ahb_gate, lcdc_ipg_gate, clk_max
+	per2_div, per3_div, per4_div, vpu_sel, vpu_div, usb_div, cpu_sel,
+	clko_sel, cpu_div, clko_div, ssi1_sel, ssi2_sel, ssi1_div, ssi2_div,
+	clko_en, ssi2_ipg_gate, ssi1_ipg_gate, slcdc_ipg_gate, sdhc3_ipg_gate,
+	sdhc2_ipg_gate, sdhc1_ipg_gate, scc_ipg_gate, sahara_ipg_gate,
+	rtc_ipg_gate, pwm_ipg_gate, owire_ipg_gate, lcdc_ipg_gate,
+	kpp_ipg_gate, iim_ipg_gate, i2c2_ipg_gate, i2c1_ipg_gate,
+	gpt6_ipg_gate, gpt5_ipg_gate, gpt4_ipg_gate, gpt3_ipg_gate,
+	gpt2_ipg_gate, gpt1_ipg_gate, gpio_ipg_gate, fec_ipg_gate,
+	emma_ipg_gate, dma_ipg_gate, cspi3_ipg_gate, cspi2_ipg_gate,
+	cspi1_ipg_gate, nfc_baud_gate, ssi2_baud_gate, ssi1_baud_gate,
+	vpu_baud_gate, per4_gate, per3_gate, per2_gate, per1_gate,
+	usb_ahb_gate, slcdc_ahb_gate, sahara_ahb_gate, lcdc_ahb_gate,
+	vpu_ahb_gate, fec_ahb_gate, emma_ahb_gate, emi_ahb_gate, dma_ahb_gate,
+	csi_ahb_gate, brom_ahb_gate, ata_ahb_gate, wdog_ipg_gate, usb_ipg_gate,
+	uart6_ipg_gate, uart5_ipg_gate, uart4_ipg_gate, uart3_ipg_gate,
+	uart2_ipg_gate, uart1_ipg_gate, ckih_div1p5, fpm, mpll_osc_sel,
+	mpll_sel, spll_gate, clk_max
 };
 
 static struct clk *clks[clk_max];
@@ -103,6 +118,16 @@ static const char *cpu_sel_clks[] = {
 	"mpll",
 };
 
+static const char *mpll_sel_clks[] = {
+	"fpm",
+	"mpll_osc_sel",
+};
+
+static const char *mpll_osc_sel_clks[] = {
+	"ckih",
+	"ckih_div1p5",
+};
+
 static const char *clko_sel_clks[] = {
 	"ckil",
 	NULL,
@@ -152,7 +177,16 @@ static int imx27_ccm_probe(struct device_d *dev)
 	clks[dummy] = clk_fixed("dummy", 0);
 	clks[ckih] = clk_fixed("ckih", 26000000);
 	clks[ckil] = clk_fixed("ckil", 32768);
-	clks[mpll] = imx_clk_pllv1("mpll", "ckih", base + CCM_MPCTL0);
+	clks[fpm] = imx_clk_fixed_factor("fpm", "ckil", 1024, 1);
+	clks[ckih_div1p5] = imx_clk_fixed_factor("ckih_div1p5", "ckih", 2, 3);
+
+	clks[mpll_osc_sel] = imx_clk_mux("mpll_osc_sel", base + CCM_CSCR, 4, 1,
+			mpll_osc_sel_clks,
+			ARRAY_SIZE(mpll_osc_sel_clks));
+	clks[mpll_sel] = imx_clk_mux("mpll_sel", base + CCM_CSCR, 16, 1, mpll_sel_clks,
+			ARRAY_SIZE(mpll_sel_clks));
+
+	clks[mpll] = imx_clk_pllv1("mpll", "mpll_sel", base + CCM_MPCTL0);
 	clks[spll] = imx_clk_pllv1("spll", "ckih", base + CCM_SPCTL0);
 	clks[mpll_main2] = imx_clk_fixed_factor("mpll_main2", "mpll", 2, 3);
 
@@ -179,7 +213,7 @@ static int imx27_ccm_probe(struct device_d *dev)
 	else
 		clks[cpu_div] = imx_clk_divider("cpu_div", "cpu_sel", base + CCM_CSCR, 13, 3);
 	clks[clko_div] = imx_clk_divider("clko_div", "clko_sel", base + CCM_PCDR0, 22, 3);
-	clks[lcdc_per_gate] = imx_clk_gate("lcdc_per_gate", "per3_div", base + CCM_PCCR1, 8);
+	clks[per3_gate] = imx_clk_gate("per3_gate", "per3_div", base + CCM_PCCR1, 8);
 	clks[lcdc_ahb_gate] = imx_clk_gate("lcdc_ahb_gate", "ahb", base + CCM_PCCR1, 15);
 	clks[lcdc_ipg_gate] = imx_clk_gate("lcdc_ipg_gate", "ipg", base + CCM_PCCR0, 14);
 
@@ -203,7 +237,7 @@ static int imx27_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[per2_div], MX27_SDHC1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per2_div], MX27_SDHC2_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per2_div], MX27_SDHC3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[lcdc_per_gate], MX27_LCDC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per3_gate], MX27_LCDC_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[lcdc_ahb_gate], MX27_LCDC_BASE_ADDR, "ahb");
 	clkdev_add_physbase(clks[lcdc_ipg_gate], MX27_LCDC_BASE_ADDR, "ipg");
 	clkdev_add_physbase(clks[ipg], MX27_FEC_BASE_ADDR, NULL);
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
