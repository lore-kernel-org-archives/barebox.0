Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1CrQ-0003X5-CS
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 09:57:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 11:56:22 +0200
Message-Id: <1374486983-5263-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374486983-5263-1-git-send-email-s.hauer@pengutronix.de>
References: <1374486983-5263-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: omap4: Use writel where appropriate
To: barebox@lists.infradead.org

Instead of making a pure 32bit write to a read/modify/write
operation with sr32 use writel directly. This saves a few bytes
of binary space.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/omap4_clock.c | 176 +++++++++++++++++++--------------------
 1 file changed, 88 insertions(+), 88 deletions(-)

diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
index 889d1f9..268f7c1 100644
--- a/arch/arm/mach-omap/omap4_clock.c
+++ b/arch/arm/mach-omap/omap4_clock.c
@@ -89,7 +89,7 @@ void omap4_configure_per_dpll(const struct dpll_param *dpll_param)
 void omap4_configure_abe_dpll(const struct dpll_param *dpll_param)
 {
 	/* Select sys_clk as ref clk for ABE dpll */
-	sr32(CM_ABE_PLL_REF_CLKSEL, 0, 32, 0x0);
+	writel(CM_ABE_PLL_REF_CLKSEL, 0x0);
 
 	/* Unlock the ABE dpll */
 	sr32(CM_CLKMODE_DPLL_ABE, 0, 3, PLL_MN_POWER_BYPASS);
@@ -102,11 +102,11 @@ void omap4_configure_abe_dpll(const struct dpll_param *dpll_param)
 	sr32(CM_CLKSEL_DPLL_ABE, 0, 6, dpll_param->n);
 
 	/* Force DPLL CLKOUTHIF to stay enabled */
-	sr32(CM_DIV_M2_DPLL_ABE, 0, 32, 0x500);
+	writel(CM_DIV_M2_DPLL_ABE, 0x500);
 	sr32(CM_DIV_M2_DPLL_ABE, 0, 5, dpll_param->m2);
 	sr32(CM_DIV_M2_DPLL_ABE, 8, 1, 0x1);
 	/* Force DPLL CLKOUTHIF to stay enabled */
-	sr32(CM_DIV_M3_DPLL_ABE, 0, 32, 0x100);
+	writel(CM_DIV_M3_DPLL_ABE, 0x100);
 	sr32(CM_DIV_M3_DPLL_ABE, 0, 5, dpll_param->m3);
 	sr32(CM_DIV_M3_DPLL_ABE, 8, 1, 0x1);
 
@@ -120,7 +120,7 @@ void omap4_configure_abe_dpll(const struct dpll_param *dpll_param)
 void omap4_configure_usb_dpll(const struct dpll_param *dpll_param)
 {
 	/* Select the 60Mhz clock 480/8 = 60*/
-	sr32(CM_CLKSEL_USB_60MHz, 0, 32, 0x1);
+	writel(CM_CLKSEL_USB_60MHz, 0x1);
 
 	/* Unlock the USB dpll */
 	sr32(CM_CLKMODE_DPLL_USB, 0, 3, PLL_MN_POWER_BYPASS);
@@ -133,7 +133,7 @@ void omap4_configure_usb_dpll(const struct dpll_param *dpll_param)
 	sr32(CM_CLKSEL_DPLL_USB, 0, 6, dpll_param->n);
 
 	/* Force DPLL CLKOUT to stay active */
-	sr32(CM_DIV_M2_DPLL_USB, 0, 32, 0x100);
+	writel(CM_DIV_M2_DPLL_USB, 0x100);
 	sr32(CM_DIV_M2_DPLL_USB, 0, 5, dpll_param->m2);
 	sr32(CM_DIV_M2_DPLL_USB, 8, 1, 0x1);
 	sr32(CM_CLKDCOLDO_DPLL_USB, 8, 1, 0x1);
@@ -143,7 +143,7 @@ void omap4_configure_usb_dpll(const struct dpll_param *dpll_param)
 	wait_on_value((1 << 0), 1, CM_IDLEST_DPLL_USB, LDELAY);
 
 	/* force enable the CLKDCOLDO clock */
-	sr32(CM_CLKDCOLDO_DPLL_USB, 0, 32, 0x100);
+	writel(CM_CLKDCOLDO_DPLL_USB, 0x100);
 
 	return;
 }
@@ -151,7 +151,7 @@ void omap4_configure_usb_dpll(const struct dpll_param *dpll_param)
 void omap4_configure_core_dpll_no_lock(const struct dpll_param *param)
 {
 	/* CORE_CLK=CORE_X2_CLK/2, L3_CLK=CORE_CLK/2, L4_CLK=L3_CLK/2 */
-	sr32(CM_CLKSEL_CORE, 0, 32, 0x110);
+	writel(CM_CLKSEL_CORE, 0x110);
 
 	/* Unlock the CORE dpll */
 	sr32(CM_CLKMODE_DPLL_CORE, 0, 3, PLL_MN_POWER_BYPASS);
@@ -205,107 +205,107 @@ void omap4_lock_core_dpll_shadow(const struct dpll_param *param)
 
 void omap4_enable_gpio_clocks(void)
 {
-	sr32(CM_L4PER_GPIO2_CLKCTRL, 0, 32, 0x1);
+	writel(CM_L4PER_GPIO2_CLKCTRL, 0x1);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO2_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_GPIO3_CLKCTRL, 0, 32, 0x1);
+	writel(CM_L4PER_GPIO3_CLKCTRL, 0x1);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO3_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_GPIO4_CLKCTRL, 0, 32, 0x1);
+	writel(CM_L4PER_GPIO4_CLKCTRL, 0x1);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO4_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_GPIO5_CLKCTRL, 0, 32, 0x1);
+	writel(CM_L4PER_GPIO5_CLKCTRL, 0x1);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO5_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_GPIO6_CLKCTRL, 0, 32, 0x1);
+	writel(CM_L4PER_GPIO6_CLKCTRL, 0x1);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_GPIO6_CLKCTRL, LDELAY);
 }
 
 void omap4_enable_gpio1_wup_clocks(void)
 {
 	/* WKUP clocks */
-	sr32(CM_WKUP_GPIO1_CLKCTRL, 0, 32, 0x1);
+	writel(CM_WKUP_GPIO1_CLKCTRL, 0x1);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_WKUP_GPIO1_CLKCTRL, LDELAY);
 }
 
 void omap4_enable_all_clocks(void)
 {
 	/* Enable Ducati clocks */
-	sr32(CM_DUCATI_DUCATI_CLKCTRL, 0, 32, 0x1);
-	sr32(CM_DUCATI_CLKSTCTRL, 0, 32, 0x2);
+	writel(CM_DUCATI_DUCATI_CLKCTRL, 0x1);
+	writel(CM_DUCATI_CLKSTCTRL, 0x2);
 
 	wait_on_value((1 << 8), (1 << 8), CM_DUCATI_CLKSTCTRL, LDELAY);
 
 	/* Enable ivahd and sl2 clocks */
-	sr32(IVAHD_IVAHD_CLKCTRL, 0, 32, 0x1);
-	sr32(IVAHD_SL2_CLKCTRL, 0, 32, 0x1);
-	sr32(IVAHD_CLKSTCTRL, 0, 32, 0x2);
+	writel(IVAHD_IVAHD_CLKCTRL, 0x1);
+	writel(IVAHD_SL2_CLKCTRL, 0x1);
+	writel(IVAHD_CLKSTCTRL, 0x2);
 
 	wait_on_value((1 << 8), (1 << 8), IVAHD_CLKSTCTRL, LDELAY);
 
 	/* Enable Tesla clocks */
-	sr32(DSP_DSP_CLKCTRL, 0, 32, 0x1);
-	sr32(DSP_CLKSTCTRL, 0, 32, 0x2);
+	writel(DSP_DSP_CLKCTRL, 0x1);
+	writel(DSP_CLKSTCTRL, 0x2);
 
 	wait_on_value((1 << 8), (1 << 8), DSP_CLKSTCTRL, LDELAY);
 
 	/* wait for tesla to become accessible */
 
 	/* ABE clocks */
-	sr32(CM1_ABE_CLKSTCTRL, 0, 32, 0x3);
-	sr32(CM1_ABE_AESS_CLKCTRL, 0, 32, 0x2);
-	sr32(CM1_ABE_PDM_CLKCTRL, 0, 32, 0x2);
-	sr32(CM1_ABE_DMIC_CLKCTRL, 0, 32, 0x2);
-	sr32(CM1_ABE_MCASP_CLKCTRL, 0, 32, 0x2);
-	sr32(CM1_ABE_MCBSP1_CLKCTRL, 0, 32, 0x2);
-	sr32(CM1_ABE_MCBSP2_CLKCTRL, 0, 32, 0x2);
-	sr32(CM1_ABE_MCBSP3_CLKCTRL, 0, 32, 0x2);
-	sr32(CM1_ABE_SLIMBUS_CLKCTRL, 0, 32, 0xf02);
-	sr32(CM1_ABE_TIMER5_CLKCTRL, 0, 32, 0x2);
-	sr32(CM1_ABE_TIMER6_CLKCTRL, 0, 32, 0x2);
-	sr32(CM1_ABE_TIMER7_CLKCTRL, 0, 32, 0x2);
-	sr32(CM1_ABE_TIMER8_CLKCTRL, 0, 32, 0x2);
-	sr32(CM1_ABE_WDT3_CLKCTRL, 0, 32, 0x2);
+	writel(CM1_ABE_CLKSTCTRL, 0x3);
+	writel(CM1_ABE_AESS_CLKCTRL, 0x2);
+	writel(CM1_ABE_PDM_CLKCTRL, 0x2);
+	writel(CM1_ABE_DMIC_CLKCTRL, 0x2);
+	writel(CM1_ABE_MCASP_CLKCTRL, 0x2);
+	writel(CM1_ABE_MCBSP1_CLKCTRL, 0x2);
+	writel(CM1_ABE_MCBSP2_CLKCTRL, 0x2);
+	writel(CM1_ABE_MCBSP3_CLKCTRL, 0x2);
+	writel(CM1_ABE_SLIMBUS_CLKCTRL, 0xf02);
+	writel(CM1_ABE_TIMER5_CLKCTRL, 0x2);
+	writel(CM1_ABE_TIMER6_CLKCTRL, 0x2);
+	writel(CM1_ABE_TIMER7_CLKCTRL, 0x2);
+	writel(CM1_ABE_TIMER8_CLKCTRL, 0x2);
+	writel(CM1_ABE_WDT3_CLKCTRL, 0x2);
 	/* Disable sleep transitions */
-	sr32(CM1_ABE_CLKSTCTRL, 0, 32, 0x0);
+	writel(CM1_ABE_CLKSTCTRL, 0x0);
 
 	/* L4PER clocks */
-	sr32(CM_L4PER_CLKSTCTRL, 0, 32, 0x2);
-	sr32(CM_L4PER_DMTIMER10_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_CLKSTCTRL, 0x2);
+	writel(CM_L4PER_DMTIMER10_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_DMTIMER10_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_DMTIMER11_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_DMTIMER11_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_DMTIMER11_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_DMTIMER2_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_DMTIMER2_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_DMTIMER2_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_DMTIMER3_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_DMTIMER3_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_DMTIMER3_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_DMTIMER4_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_DMTIMER4_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_DMTIMER4_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_DMTIMER9_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_DMTIMER9_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_DMTIMER9_CLKCTRL, LDELAY);
 
 	/* GPIO clocks */
 	omap4_enable_gpio_clocks();
 
-	sr32(CM_L4PER_HDQ1W_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_HDQ1W_CLKCTRL, 0x2);
 
 	/* I2C clocks */
-	sr32(CM_L4PER_I2C1_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_I2C1_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_I2C1_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_I2C2_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_I2C2_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_I2C2_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_I2C3_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_I2C3_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_I2C3_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_I2C4_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_I2C4_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_I2C4_CLKCTRL, LDELAY);
 
-	sr32(CM_L4PER_MCBSP4_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_MCBSP4_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_MCBSP4_CLKCTRL, LDELAY);
 
 	/* MCSPI clocks */
-	sr32(CM_L4PER_MCSPI1_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_MCSPI1_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_MCSPI1_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_MCSPI2_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_MCSPI2_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_MCSPI2_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_MCSPI3_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_MCSPI3_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_MCSPI3_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_MCSPI4_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_MCSPI4_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_MCSPI4_CLKCTRL, LDELAY);
 
 	/* MMC clocks */
@@ -313,86 +313,86 @@ void omap4_enable_all_clocks(void)
 	sr32(CM_L3INIT_HSMMC1_CLKCTRL, 24, 1, 0x1);
 	sr32(CM_L3INIT_HSMMC2_CLKCTRL, 0, 2, 0x2);
 	sr32(CM_L3INIT_HSMMC2_CLKCTRL, 24, 1, 0x1);
-	sr32(CM_L4PER_MMCSD3_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_MMCSD3_CLKCTRL, 0x2);
 	wait_on_value((1 << 18)|(1 << 17)|(1 << 16), 0, CM_L4PER_MMCSD3_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_MMCSD4_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_MMCSD4_CLKCTRL, 0x2);
 	wait_on_value((1 << 18)|(1 << 17)|(1 << 16), 0, CM_L4PER_MMCSD4_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_MMCSD5_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_MMCSD5_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_MMCSD5_CLKCTRL, LDELAY);
 
 	/* UART clocks */
-	sr32(CM_L4PER_UART1_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_UART1_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_UART1_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_UART2_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_UART2_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_UART2_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_UART3_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_UART3_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_UART3_CLKCTRL, LDELAY);
-	sr32(CM_L4PER_UART4_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L4PER_UART4_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L4PER_UART4_CLKCTRL, LDELAY);
 
 	/* WKUP clocks */
 	omap4_enable_gpio1_wup_clocks();
-	sr32(CM_WKUP_TIMER1_CLKCTRL, 0, 32, 0x01000002);
+	writel(CM_WKUP_TIMER1_CLKCTRL, 0x01000002);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_WKUP_TIMER1_CLKCTRL, LDELAY);
 
-	sr32(CM_WKUP_KEYBOARD_CLKCTRL, 0, 32, 0x2);
+	writel(CM_WKUP_KEYBOARD_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_WKUP_KEYBOARD_CLKCTRL, LDELAY);
 
-	sr32(CM_SDMA_CLKSTCTRL, 0, 32, 0x0);
-	sr32(CM_MEMIF_CLKSTCTRL, 0, 32, 0x3);
-	sr32(CM_MEMIF_EMIF_1_CLKCTRL, 0, 32, 0x1);
+	writel(CM_SDMA_CLKSTCTRL, 0x0);
+	writel(CM_MEMIF_CLKSTCTRL, 0x3);
+	writel(CM_MEMIF_EMIF_1_CLKCTRL, 0x1);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_MEMIF_EMIF_1_CLKCTRL, LDELAY);
-	sr32(CM_MEMIF_EMIF_2_CLKCTRL, 0, 32, 0x1);
+	writel(CM_MEMIF_EMIF_2_CLKCTRL, 0x1);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_MEMIF_EMIF_2_CLKCTRL, LDELAY);
-	sr32(CM_D2D_CLKSTCTRL, 0, 32, 0x3);
-	sr32(CM_L3_2_GPMC_CLKCTRL, 0, 32, 0x1);
+	writel(CM_D2D_CLKSTCTRL, 0x3);
+	writel(CM_L3_2_GPMC_CLKCTRL, 0x1);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L3_2_GPMC_CLKCTRL, LDELAY);
-	sr32(CM_L3INSTR_L3_3_CLKCTRL, 0, 32, 0x1);
+	writel(CM_L3INSTR_L3_3_CLKCTRL, 0x1);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L3INSTR_L3_3_CLKCTRL, LDELAY);
-	sr32(CM_L3INSTR_L3_INSTR_CLKCTRL, 0, 32, 0x1);
+	writel(CM_L3INSTR_L3_INSTR_CLKCTRL, 0x1);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L3INSTR_L3_INSTR_CLKCTRL, LDELAY);
-	sr32(CM_L3INSTR_OCP_WP1_CLKCTRL, 0, 32, 0x1);
+	writel(CM_L3INSTR_OCP_WP1_CLKCTRL, 0x1);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_L3INSTR_OCP_WP1_CLKCTRL, LDELAY);
 
 	/* WDT clocks */
-	sr32(CM_WKUP_WDT2_CLKCTRL, 0, 32, 0x2);
+	writel(CM_WKUP_WDT2_CLKCTRL, 0x2);
 	wait_on_value((1 << 17)|(1 << 16), 0, CM_WKUP_WDT2_CLKCTRL, LDELAY);
 
 	/* Enable Camera clocks */
-	sr32(CM_CAM_CLKSTCTRL, 0, 32, 0x3);
-	sr32(CM_CAM_ISS_CLKCTRL, 0, 32, 0x102);
-	sr32(CM_CAM_FDIF_CLKCTRL, 0, 32, 0x2);
-	sr32(CM_CAM_CLKSTCTRL, 0, 32, 0x0);
+	writel(CM_CAM_CLKSTCTRL, 0x3);
+	writel(CM_CAM_ISS_CLKCTRL, 0x102);
+	writel(CM_CAM_FDIF_CLKCTRL, 0x2);
+	writel(CM_CAM_CLKSTCTRL, 0x0);
 
 	/* Enable DSS clocks */
 	/* PM_DSS_PWRSTCTRL ON State and LogicState = 1 (Retention) */
 	__raw_writel(7, 0x4A307100); /* DSS_PRM */
 
-	sr32(CM_DSS_CLKSTCTRL, 0, 32, 0x2);
-	sr32(CM_DSS_DSS_CLKCTRL, 0, 32, 0xf02);
-	sr32(CM_DSS_DEISS_CLKCTRL, 0, 32, 0x2);
+	writel(CM_DSS_CLKSTCTRL, 0x2);
+	writel(CM_DSS_DSS_CLKCTRL, 0xf02);
+	writel(CM_DSS_DEISS_CLKCTRL, 0x2);
 
 	/* Check for DSS Clocks */
 	while ((__raw_readl(0x4A009100) & 0xF00) != 0xE00)
 		;
 	/* Set HW_AUTO transition mode */
-	sr32(CM_DSS_CLKSTCTRL, 0, 32, 0x3);
+	writel(CM_DSS_CLKSTCTRL, 0x3);
 
 	/* Enable SGX clocks */
-	sr32(CM_SGX_CLKSTCTRL, 0, 32, 0x2);
-	sr32(CM_SGX_SGX_CLKCTRL, 0, 32, 0x2);
+	writel(CM_SGX_CLKSTCTRL, 0x2);
+	writel(CM_SGX_SGX_CLKCTRL, 0x2);
 	/* Check for SGX FCLK and ICLK */
 	while (__raw_readl(0x4A009200) != 0x302)
 		;
 	/* Enable hsi/unipro/usb clocks */
-	sr32(CM_L3INIT_HSI_CLKCTRL, 0, 32, 0x1);
-	sr32(CM_L3INIT_UNIPRO1_CLKCTRL, 0, 32, 0x2);
-	sr32(CM_L3INIT_HSUSBHOST_CLKCTRL, 0, 32, 0x2);
-	sr32(CM_L3INIT_HSUSBOTG_CLKCTRL, 0, 32, 0x1);
-	sr32(CM_L3INIT_HSUSBTLL_CLKCTRL, 0, 32, 0x1);
-	sr32(CM_L3INIT_FSUSB_CLKCTRL, 0, 32, 0x2);
+	writel(CM_L3INIT_HSI_CLKCTRL, 0x1);
+	writel(CM_L3INIT_UNIPRO1_CLKCTRL, 0x2);
+	writel(CM_L3INIT_HSUSBHOST_CLKCTRL, 0x2);
+	writel(CM_L3INIT_HSUSBOTG_CLKCTRL, 0x1);
+	writel(CM_L3INIT_HSUSBTLL_CLKCTRL, 0x1);
+	writel(CM_L3INIT_FSUSB_CLKCTRL, 0x2);
 	/* enable the 32K, 48M optional clocks and enable the module */
-	sr32(CM_L3INIT_USBPHY_CLKCTRL, 0, 32, 0x301);
+	writel(CM_L3INIT_USBPHY_CLKCTRL, 0x301);
 }
 
 void omap4_do_scale_tps62361(u32 reg, u32 volt_mv)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
