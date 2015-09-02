Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZX1jm-0001ND-Mr
 for barebox@lists.infradead.org; Wed, 02 Sep 2015 06:41:39 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 19CB7A00226
 for <barebox@lists.infradead.org>; Wed,  2 Sep 2015 08:43:18 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Wed, 2 Sep 2015 08:38:47 +0200
Message-Id: <1441175928-38242-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 1/2] ARM: dts: Add include to strip am33xx clocks
To: barebox@lists.infradead.org

Include this file to disable all clocks.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/dts/am33xx-clocks-strip.dtsi | 79 +++++++++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 arch/arm/dts/am33xx-clocks-strip.dtsi

diff --git a/arch/arm/dts/am33xx-clocks-strip.dtsi b/arch/arm/dts/am33xx-clocks-strip.dtsi
new file mode 100644
index 0000000..831f163
--- /dev/null
+++ b/arch/arm/dts/am33xx-clocks-strip.dtsi
@@ -0,0 +1,79 @@
+/*
+ * Copyright (C) 2015 PHYTEC Messtechnik GmbH,
+ * Author: Daniel Schultz <d.schultz@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+/delete-node/ &adc_tsc_fck;
+/delete-node/ &dcan0_fck;
+/delete-node/ &dcan1_fck;
+/delete-node/ &mcasp0_fck;
+/delete-node/ &mcasp1_fck;
+/delete-node/ &smartreflex0_fck;
+/delete-node/ &smartreflex1_fck;
+/delete-node/ &sha0_fck;
+/delete-node/ &aes0_fck;
+/delete-node/ &rng_fck;
+/delete-node/ &ehrpwm0_tbclk;
+/delete-node/ &ehrpwm1_tbclk;
+/delete-node/ &ehrpwm2_tbclk;
+/delete-node/ &clk_32768_ck;
+/delete-node/ &clk_rc32k_ck;
+/delete-node/ &tclkin_ck;
+/delete-node/ &dpll_core_m6_ck;
+/delete-node/ &dpll_mpu_m2_ck;
+/delete-node/ &dpll_ddr_ck;
+/delete-node/ &dpll_ddr_m2_ck;
+/delete-node/ &dpll_ddr_m2_div2_ck;
+/delete-node/ &dpll_disp_ck;
+/delete-node/ &dpll_disp_m2_ck;
+/delete-node/ &dpll_per_ck;
+/delete-node/ &dpll_per_m2_ck;
+/delete-node/ &dpll_per_m2_div4_wkupdm_ck;
+/delete-node/ &dpll_per_m2_div4_ck;
+/delete-node/ &cefuse_fck;
+/delete-node/ &clk_24mhz;
+/delete-node/ &clkdiv32k_ck;
+/delete-node/ &clkdiv32k_ick;
+/delete-node/ &l3_gclk;
+/delete-node/ &pruss_ocp_gclk;
+/delete-node/ &mmu_fck;
+/delete-node/ &timer1_fck;
+/delete-node/ &timer2_fck;
+/delete-node/ &timer3_fck;
+/delete-node/ &timer4_fck;
+/delete-node/ &timer5_fck;
+/delete-node/ &timer6_fck;
+/delete-node/ &timer7_fck;
+/delete-node/ &usbotg_fck;
+/delete-node/ &dpll_core_m4_div2_ck;
+/delete-node/ &ieee5000_fck;
+/delete-node/ &wdt1_fck;
+/delete-node/ &l4_rtc_gclk;
+/delete-node/ &l4hs_gclk;
+/delete-node/ &l3s_gclk;
+/delete-node/ &l4fw_gclk;
+/delete-node/ &l4ls_gclk;
+/delete-node/ &sysclk_div_ck;
+/delete-node/ &gpio0_dbclk_mux_ck;
+/delete-node/ &gpio0_dbclk;
+/delete-node/ &gpio1_dbclk;
+/delete-node/ &gpio2_dbclk;
+/delete-node/ &gpio3_dbclk;
+/delete-node/ &lcd_gclk;
+/delete-node/ &mmc_clk;
+/delete-node/ &gfx_fclk_clksel_ck;
+/delete-node/ &gfx_fck_div_ck;
+/delete-node/ &sysclkout_pre_ck;
+/delete-node/ &clkout2_div_ck;
+/delete-node/ &dbg_sysclk_ck;
+/delete-node/ &dbg_clka_ck;
+/delete-node/ &stm_pmd_clock_mux_ck;
+/delete-node/ &trace_pmd_clk_mux_ck;
+/delete-node/ &stm_clk_div_ck;
+/delete-node/ &trace_clk_div_ck;
+/delete-node/ &clkout2_ck;
+/delete-node/ &clk_24mhz_clkdm;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
