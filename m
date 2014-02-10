Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WCtOS-0001FQ-CH
 for barebox@lists.infradead.org; Mon, 10 Feb 2014 16:07:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Feb 2014 17:07:12 +0100
Message-Id: <1392048433-22749-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX25: Fix LCDC clocks
To: barebox@lists.infradead.org

- Make sure the LCDC ipg clock is turned off during startup
- register all LCDC clocks (ahb, ipg, per) and pass them to driver

This is necessary because the LCDC doesn't have an enable bit. It just
starts working once the clocks are turned on. If the registers have
invalid values at that time the controller goes into some error state.
So we have to make sure the clocks are turned off during startup and
only turned on in the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx25.c | 27 +++++++++++++++++++++------
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
index 4d8631c..1114ad2 100644
--- a/arch/arm/mach-imx/clk-imx25.c
+++ b/arch/arm/mach-imx/clk-imx25.c
@@ -55,7 +55,20 @@ enum mx25_clks {
 	per7_sel, per8_sel, per9_sel, per10_sel, per11_sel, per12_sel,
 	per13_sel, per14_sel, per15_sel, per0, per1, per2, per3, per4, per5,
 	per6, per7, per8, per9, per10, per11, per12, per13, per14, per15,
-	lcdc_per_gate, clk_max
+	csi_ipg_per, epit_ipg_per, esai_ipg_per, esdhc1_ipg_per, esdhc2_ipg_per,
+	gpt_ipg_per, i2c_ipg_per, lcdc_ipg_per, nfc_ipg_per, owire_ipg_per,
+	pwm_ipg_per, sim1_ipg_per, sim2_ipg_per, ssi1_ipg_per, ssi2_ipg_per,
+	uart_ipg_per, ata_ahb, reserved1, csi_ahb, emi_ahb, esai_ahb, esdhc1_ahb,
+	esdhc2_ahb, fec_ahb, lcdc_ahb, rtic_ahb, sdma_ahb, slcdc_ahb, usbotg_ahb,
+	reserved2, reserved3, reserved4, reserved5, can1_ipg, can2_ipg, csi_ipg,
+	cspi1_ipg, cspi2_ipg, cspi3_ipg, dryice_ipg, ect_ipg, epit1_ipg, epit2_ipg,
+	reserved6, esdhc1_ipg, esdhc2_ipg, fec_ipg, reserved7, reserved8, reserved9,
+	gpt1_ipg, gpt2_ipg, gpt3_ipg, gpt4_ipg, reserved10, reserved11, reserved12,
+	iim_ipg, reserved13, reserved14, kpp_ipg, lcdc_ipg, reserved15, pwm1_ipg,
+	pwm2_ipg, pwm3_ipg, pwm4_ipg, rngb_ipg, reserved16, scc_ipg, sdma_ipg,
+	sim1_ipg, sim2_ipg, slcdc_ipg, spba_ipg, ssi1_ipg, ssi2_ipg, tsc_ipg,
+	uart1_ipg, uart2_ipg, uart3_ipg, uart4_ipg, uart5_ipg, reserved17,
+	wdt_ipg, clk_max
 };
 
 static struct clk *clks[clk_max];
@@ -83,7 +96,7 @@ static int imx25_ccm_probe(struct device_d *dev)
 
 	writel((1 << 5) | (1 << 6) | (1 << 7) | (1 << 8) | (1 << 13) | (1 << 14) |
 			(1 << 15) | (1 << 19) | (1 << 20) | (1 << 21) | (1 << 22) |
-			(1 << 26) | (1 << 29) | (1 << 31),
+			(1 << 26) | (1 << 31),
 			base + CCM_CGCR1);
 
 	writel((1 << 0) | (1 << 1) | (1 << 2) | (1 << 10) | (1 << 13) | (1 << 14) |
@@ -132,7 +145,9 @@ static int imx25_ccm_probe(struct device_d *dev)
 	clks[per13] = imx_clk_divider("per13", "per13_sel", base + CCM_PCDR3, 8, 6);
 	clks[per14] = imx_clk_divider("per14", "per14_sel", base + CCM_PCDR3, 16, 6);
 	clks[per15] = imx_clk_divider("per15", "per15_sel", base + CCM_PCDR3, 24, 6);
-	clks[lcdc_per_gate] = imx_clk_gate("lcdc_per_gate", "per7", base + CCM_CGCR0, 7);
+	clks[lcdc_ahb] = imx_clk_gate("lcdc_ahb", "ahb", base + CCM_CGCR0, 24);
+	clks[lcdc_ipg] = imx_clk_gate("lcdc_ipg", "ipg", base + CCM_CGCR1, 29);
+	clks[lcdc_ipg_per] = imx_clk_gate("lcdc_ipg_per", "per7", base + CCM_CGCR0, 7);
 
 	clkdev_add_physbase(clks[per15], MX25_UART1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per15], MX25_UART2_BASE_ADDR, NULL);
@@ -152,9 +167,9 @@ static int imx25_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[ipg], MX25_CSPI3_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per3], MX25_ESDHC1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per4], MX25_ESDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[lcdc_per_gate], MX25_LCDC_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[dummy], MX25_LCDC_BASE_ADDR, "ipg");
-	clkdev_add_physbase(clks[dummy], MX25_LCDC_BASE_ADDR, "ahb");
+	clkdev_add_physbase(clks[lcdc_ipg_per], MX25_LCDC_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[lcdc_ipg], MX25_LCDC_BASE_ADDR, "ipg");
+	clkdev_add_physbase(clks[lcdc_ahb], MX25_LCDC_BASE_ADDR, "ahb");
 
 	return 0;
 }
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
