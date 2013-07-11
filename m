Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ux9oo-0006dO-UD
 for barebox@lists.infradead.org; Thu, 11 Jul 2013 05:53:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Jul 2013 07:52:59 +0200
Message-Id: <1373521979-7719-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373521979-7719-1-git-send-email-s.hauer@pengutronix.de>
References: <1373521979-7719-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: mxs: make ssp gates parents of ssp dividers
To: barebox@lists.infradead.org

When changing the rates of the ssp clocks we have to poll the
busy bit, but only when they are enabled. The current code can
not check this properly since the gates are registered as children
of the dividers. This has the effect that when the gate is disabled
the busy bit will be set forever resulting in a freezed system.

Fix this by making the gates parents of the dividers which allows
clk_is_enabled to return the correct result.

The Kernel has the same problem, but here the busy polling is
limited to 10ms, so probably noone noticed this.

The datasheet mentions that the ssp dividers shall only be changed
when the clocks are enabled. The kernel and barebox currently ignore
this. I don't know what effect violating this rule has.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/mxs/clk-imx28.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index 0350aff..ed38d4b 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -64,7 +64,7 @@ enum imx28_clk {
 	ref_pix, ref_hsadc, ref_gpmi, saif0_sel, saif1_sel, gpmi_sel,
 	ssp0_sel, ssp1_sel, ssp2_sel, ssp3_sel, emi_sel, etm_sel,
 	lcdif_sel, cpu, ptp_sel, cpu_pll, cpu_xtal, hbus, xbus,
-	ssp0_div, ssp1_div, ssp2_div, ssp3_div, gpmi_div, emi_pll,
+	ssp0_gate, ssp1_gate, ssp2_gate, ssp3_gate, gpmi_div, emi_pll,
 	emi_xtal, lcdif_div, etm_div, ptp, saif0_div, saif1_div,
 	clk32k_div, rtc, lradc, spdif_div, clk32k, pwm, uart, ssp0,
 	ssp1, ssp2, ssp3, gpmi, spdif, emi, saif0, saif1, lcdif, etm,
@@ -101,10 +101,14 @@ int __init mx28_clocks_init(void __iomem *regs)
 	clks[cpu_xtal] = mxs_clk_div("cpu_xtal", "ref_xtal", CPU, 16, 10, 29);
 	clks[hbus] = mxs_clk_div("hbus", "cpu", HBUS, 0, 5, 31);
 	clks[xbus] = mxs_clk_div("xbus", "ref_xtal", XBUS, 0, 10, 31);
-	clks[ssp0_div] = mxs_clk_div("ssp0_div", "ssp0_sel", SSP0, 0, 9, 29);
-	clks[ssp1_div] = mxs_clk_div("ssp1_div", "ssp1_sel", SSP1, 0, 9, 29);
-	clks[ssp2_div] = mxs_clk_div("ssp2_div", "ssp2_sel", SSP2, 0, 9, 29);
-	clks[ssp3_div] = mxs_clk_div("ssp3_div", "ssp3_sel", SSP3, 0, 9, 29);
+	clks[ssp0_gate] = mxs_clk_gate("ssp0_gate", "ssp0_sel", SSP0, 31);
+	clks[ssp1_gate] = mxs_clk_gate("ssp1_gate", "ssp1_sel", SSP1, 31);
+	clks[ssp2_gate] = mxs_clk_gate("ssp2_gate", "ssp2_sel", SSP2, 31);
+	clks[ssp3_gate] = mxs_clk_gate("ssp3_gate", "ssp3_sel", SSP3, 31);
+	clks[ssp0] = mxs_clk_div("ssp0", "ssp0_gate", SSP0, 0, 9, 29);
+	clks[ssp1] = mxs_clk_div("ssp1", "ssp1_gate", SSP1, 0, 9, 29);
+	clks[ssp2] = mxs_clk_div("ssp2", "ssp2_gate", SSP2, 0, 9, 29);
+	clks[ssp3] = mxs_clk_div("ssp3", "ssp3_gate", SSP3, 0, 9, 29);
 	clks[gpmi_div] = mxs_clk_div("gpmi_div", "gpmi_sel", GPMI, 0, 10, 29);
 	clks[emi_pll] = mxs_clk_div("emi_pll", "ref_emi", EMI, 0, 6, 28);
 	clks[emi_xtal] = mxs_clk_div("emi_xtal", "ref_xtal", EMI, 8, 4, 29);
@@ -116,10 +120,6 @@ int __init mx28_clocks_init(void __iomem *regs)
 	clks[clk32k] = mxs_clk_gate("clk32k", "clk32k_div", XTAL, 26);
 	clks[pwm] = mxs_clk_gate("pwm", "ref_xtal", XTAL, 29);
 	clks[uart] = mxs_clk_gate("uart", "ref_xtal", XTAL, 31);
-	clks[ssp0] = mxs_clk_gate("ssp0", "ssp0_div", SSP0, 31);
-	clks[ssp1] = mxs_clk_gate("ssp1", "ssp1_div", SSP1, 31);
-	clks[ssp2] = mxs_clk_gate("ssp2", "ssp2_div", SSP2, 31);
-	clks[ssp3] = mxs_clk_gate("ssp3", "ssp3_div", SSP3, 31);
 	clks[gpmi] = mxs_clk_gate("gpmi", "gpmi_div", GPMI, 31);
 	clks[emi] = mxs_clk_gate("emi", "emi_sel", EMI, 31);
 	clks[lcdif] = mxs_clk_gate("lcdif", "lcdif_div", LCDIF, 31);
@@ -137,10 +137,10 @@ int __init mx28_clocks_init(void __iomem *regs)
 	clk_set_parent(clks[ssp1_sel], clks[ref_io0]);
 	clk_set_parent(clks[ssp2_sel], clks[ref_io1]);
 	clk_set_parent(clks[ssp3_sel], clks[ref_io1]);
-	clk_set_rate(clks[ssp0_div], 96000000);
-	clk_set_rate(clks[ssp1_div], 96000000);
-	clk_set_rate(clks[ssp2_div], 96000000);
-	clk_set_rate(clks[ssp3_div], 96000000);
+	clk_set_rate(clks[ssp0], 96000000);
+	clk_set_rate(clks[ssp1], 96000000);
+	clk_set_rate(clks[ssp2], 96000000);
+	clk_set_rate(clks[ssp3], 96000000);
 	clk_set_parent(clks[lcdif_sel], clks[ref_pix]);
 	clk_enable(clks[enet_out]);
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
