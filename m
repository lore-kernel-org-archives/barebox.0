Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PYIu6-0000Fu-8l
	for barebox@lists.infradead.org; Thu, 30 Dec 2010 13:50:57 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id oBUDon1p030509
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 30 Dec 2010 07:50:52 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Thu, 30 Dec 2010 19:19:57 +0530
Message-Id: <1293716998-5154-5-git-send-email-premi@ti.com>
In-Reply-To: <1293716998-5154-1-git-send-email-premi@ti.com>
References: <1293716998-5154-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 5/6] omap3: Define separate functions for DPLL configuration
To: barebox@lists.infradead.org

Content from monolith implementation in prcm_init() has been
moved into separate functions - per clock domain. This makes
code easy to adapt for silicon revisions and families.

Few cosmetic changes may have been done during this movement.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/mach-omap/omap3_clock.c |  319 +++++++++++++++++++++++++-------------
 1 files changed, 210 insertions(+), 109 deletions(-)

diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index 13e8729..ff99b2c 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -137,89 +137,87 @@ static void get_sys_clkin_sel(u32 osc_clk, u32 *sys_clkin_sel)
 }
 
 /**
- * @brief Inits clocks for PRCM
+ * @brief Initialize CORE DPLL for OMAP34x
  *
- * This is called from SRAM, or Flash (using temp SRAM stack).
- * if CONFIG_OMAP3_COPY_CLOCK_SRAM is defined, @ref go_to_speed
- *
- * @return void
+ * @param[in] cpu_rev - Silicon revision
+ * @param[in] clk_sel - Clock selection used as index into the dpll table
  */
-void prcm_init(void)
+static void init_core_dpll_34x(u32 cpu_rev, u32 clk_sel)
 {
-	int xip_safe;
-	u32 osc_clk = 0, sys_clkin_sel = 0;
-	u32 clk_index, sil_index = 0;
-	struct dpll_param *dpll_param_p;
+	struct dpll_param *dp = get_core_dpll_param();
 #ifdef CONFIG_OMAP3_COPY_CLOCK_SRAM
 	int p0, p1, p2, p3;
-	f_lock_pll = (void *)(OMAP_SRAM_INTVECT + OMAP_SRAM_INTVECT_COPYSIZE);
 #endif
 
-	xip_safe = running_in_sram();
+	dp += clk_sel;
 
-	/* Gauge the input clock speed and find out the sys_clkin_sel
-	 * value corresponding to the input clock.
-	 */
-	osc_clk = get_osc_clk_speed();
-	get_sys_clkin_sel(osc_clk, &sys_clkin_sel);
-	/* set input crystal speed */
-	sr32(PRM_REG(CLKSEL), 0, 3, sys_clkin_sel);
-
-	/* If the input clock is greater than 19.2M always divide/2 */
-	if (sys_clkin_sel > 2) {
-		/* input clock divider */
-		sr32(PRM_REG(CLKSRC_CTRL), 6, 2, 2);
-		clk_index = sys_clkin_sel / 2;
-	} else {
-		/* input clock divider */
-		sr32(PRM_REG(CLKSRC_CTRL), 6, 2, 1);
-		clk_index = sys_clkin_sel;
-	}
-
-	/* Unlock MPU DPLL (slows things down, and needed later) */
-	sr32(CM_REG(CLKEN_PLL_MPU), 0, 3, PLL_LOW_POWER_BYPASS);
-	wait_on_value((0x1 << 0), 0, CM_REG(IDLEST_PLL_MPU), LDELAY);
-
-	/* Getting the base address of Core DPLL param table */
-	dpll_param_p = (struct dpll_param *)get_core_dpll_param();
-	/* Moving it to the right sysclk and ES rev base */
-	dpll_param_p = dpll_param_p + MAX_SIL_INDEX * clk_index + sil_index;
-	if (xip_safe) {
-		/* CORE DPLL */
-		/* sr32(CM_REG(CLKSEL2_EMU)) set override to work when asleep */
+	if (running_in_sram()) {
 		sr32(CM_REG(CLKEN_PLL), 0, 3, PLL_FAST_RELOCK_BYPASS);
 		wait_on_value((0x1 << 0), 0, CM_REG(IDLEST_CKGEN), LDELAY);
-		/* For 3430 ES1.0 Errata 1.50, default value directly doesnt
-		   work. write another value and then default value. */
+
+		/*
+		 * OMAP3430 ES1.0 Errata 1.50
+		 * Writing default value doesn't work. First write a different
+		 * value and then write the default value.
+		 */
+
+		/* CM_CLKSEL1_EMU[DIV_DPLL3] */
 		sr32(CM_REG(CLKSEL1_EMU), 16, 5, CORE_M3X2 + 1);
 		sr32(CM_REG(CLKSEL1_EMU), 16, 5, CORE_M3X2);
-		sr32(CM_REG(CLKSEL1_PLL), 27, 2, dpll_param_p->m2);
-		sr32(CM_REG(CLKSEL1_PLL), 16, 11, dpll_param_p->m);
-		sr32(CM_REG(CLKSEL1_PLL), 8, 7, dpll_param_p->n);
+
+		/* M2 (CORE_DPLL_CLKOUT_DIV): CM_CLKSEL1_PLL[27:31] */
+		sr32(CM_REG(CLKSEL1_PLL), 27, 2, dp->m2);
+
+		/* M (CORE_DPLL_MULT): CM_CLKSEL1_PLL[16:26] */
+		sr32(CM_REG(CLKSEL1_PLL), 16, 11, dp->m);
+
+		/* N (CORE_DPLL_DIV): CM_CLKSEL1_PLL[8:14] */
+		sr32(CM_REG(CLKSEL1_PLL), 8, 7, dp->n);
+
+		/* Set source CM_96M_FCLK: CM_CLKSEL1_PLL[6] */
 		sr32(CM_REG(CLKSEL1_PLL), 6, 1, 0);
+
 		sr32(CM_REG(CLKSEL_CORE), 8, 4, CORE_SSI_DIV);
 		sr32(CM_REG(CLKSEL_CORE), 4, 2, CORE_FUSB_DIV);
 		sr32(CM_REG(CLKSEL_CORE), 2, 2, CORE_L4_DIV);
 		sr32(CM_REG(CLKSEL_CORE), 0, 2, CORE_L3_DIV);
 		sr32(CM_REG(CLKSEL_GFX), 0, 3, GFX_DIV);
 		sr32(CM_REG(CLKSEL_WKUP), 1, 2, WKUP_RSM);
-		sr32(CM_REG(CLKEN_PLL), 4, 4, dpll_param_p->fsel);
+
+		/* FREQSEL (CORE_DPLL_FREQSEL): CM_CLKEN_PLL[4:7] */
+		sr32(CM_REG(CLKEN_PLL), 4, 4, dp->fsel);
+
+		/* Lock Mode */
 		sr32(CM_REG(CLKEN_PLL), 0, 3, PLL_LOCK);
 		wait_on_value((0x1 << 0), 1, CM_REG(IDLEST_CKGEN), LDELAY);
 	} else if (running_in_flash()) {
 #ifdef CONFIG_OMAP3_COPY_CLOCK_SRAM
-		/* if running from flash,
-		 * jump to small relocated code area in SRAM.
+		f_lock_pll = (void *)(OMAP_SRAM_INTVECT +
+					OMAP_SRAM_INTVECT_COPYSIZE);
+
+		/*
+		 * Jump to small relocated code area in SRAM.
 		 */
 		p0 = readl(CM_REG(CLKEN_PLL));
 		sr32((u32) &p0, 0, 3, PLL_FAST_RELOCK_BYPASS);
-		sr32((u32) &p0, 4, 4, dpll_param_p->fsel);
+
+		/* FREQSEL (CORE_DPLL_FREQSEL): CM_CLKEN_PLL[4:7] */
+		sr32((u32) &p0, 4, 4, dp->fsel);
 
 		p1 = readl(CM_REG(CLKSEL1_PLL));
-		sr32((u32) &p1, 27, 2, dpll_param_p->m2);
-		sr32((u32) &p1, 16, 11, dpll_param_p->m);
-		sr32((u32) &p1, 8, 7, dpll_param_p->n);
-		sr32((u32) &p1, 6, 1, 0);	/* set source for 96M */
+
+		/* M2 (CORE_DPLL_CLKOUT_DIV): CM_CLKSEL1_PLL[27:31] */
+		sr32((u32) &p1, 27, 2, dp->m2);
+
+		/* M (CORE_DPLL_MULT): CM_CLKSEL1_PLL[16:26] */
+		sr32((u32) &p1, 16, 11, dp->m);
+
+		/* N (CORE_DPLL_DIV): CM_CLKSEL1_PLL[8:14] */
+		sr32((u32) &p1, 8, 7, dp->n);
+
+		/* Set source CM_96M_FCLK: CM_CLKSEL1_PLL[6] */
+		sr32((u32) &p1, 6, 1, 0);
+
 		p2 = readl(CM_REG(CLKSEL_CORE));
 		sr32((u32) &p2, 8, 4, CORE_SSI_DIV);
 		sr32((u32) &p2, 4, 2, CORE_FUSB_DIV);
@@ -234,70 +232,173 @@ void prcm_init(void)
 		hang();
 #endif
 	}
+}
+
+/**
+ * @brief Initialize PER DPLL for OMAP34x
+ *
+ * @param[in] cpu_rev - Silicon revision
+ * @param[in] clk_sel - Clock selection used as index into the dpll table
+ */
+static void init_per_dpll_34x(u32 cpu_rev, u32 clk_sel)
+{
+	struct dpll_param *dp = get_per_dpll_param();
+
+	dp += clk_sel;
+
+	/*
+	 * OMAP3430 ES1.0 Errata 1.50
+	 * Writing default value doesn't work. First write a different
+	 * value and then write the default value.
+	 */
 
-	/* PER DPLL */
 	sr32(CM_REG(CLKEN_PLL), 16, 3, PLL_STOP);
 	wait_on_value((0x1 << 1), 0, CM_REG(IDLEST_CKGEN), LDELAY);
 
-	/* Getting the base address to PER  DPLL param table */
-	/* Set N */
-	dpll_param_p = (struct dpll_param *)get_per_dpll_param();
-	/* Moving it to the right sysclk base */
-	dpll_param_p = dpll_param_p + clk_index;
-	/* Errata 1.50 Workaround for 3430 ES1.0 only */
-	/* If using default divisors, write default divisor + 1
-	   and then the actual divisor value */
-	/* Need to change it to silicon and revisino check */
-	if (1) {
-		sr32(CM_REG(CLKSEL1_EMU), 24, 5, PER_M6X2 + 1);	/* set M6 */
-		sr32(CM_REG(CLKSEL1_EMU), 24, 5, PER_M6X2);	/* set M6 */
-		sr32(CM_REG(CLKSEL_CAM), 0, 5, PER_M5X2 + 1);	/* set M5 */
-		sr32(CM_REG(CLKSEL_CAM), 0, 5, PER_M5X2);	/* set M5 */
-		sr32(CM_REG(CLKSEL_DSS), 0, 5, PER_M4X2 + 1);	/* set M4 */
-		sr32(CM_REG(CLKSEL_DSS), 0, 5, PER_M4X2);	/* set M4 */
-		sr32(CM_REG(CLKSEL_DSS), 8, 5, PER_M3X2 + 1);	/* set M3 */
-		sr32(CM_REG(CLKSEL_DSS), 8, 5, PER_M3X2);	/* set M3 */
-		/* set M2 */
-		sr32(CM_REG(CLKSEL3_PLL), 0, 5, dpll_param_p->m2 + 1);
-		sr32(CM_REG(CLKSEL3_PLL), 0, 5, dpll_param_p->m2);
-	} else {
-		sr32(CM_REG(CLKSEL1_EMU), 24, 5, PER_M6X2);	/* set M6 */
-		sr32(CM_REG(CLKSEL_CAM), 0, 5, PER_M5X2);	/* set M5 */
-		sr32(CM_REG(CLKSEL_DSS), 0, 5, PER_M4X2);	/* set M4 */
-		sr32(CM_REG(CLKSEL_DSS), 8, 5, PER_M3X2);	/* set M3 */
-		sr32(CM_REG(CLKSEL3_PLL), 0, 5, dpll_param_p->m2);
-	}
-	sr32(CM_REG(CLKSEL2_PLL), 8, 11, dpll_param_p->m);	/* set m */
-	sr32(CM_REG(CLKSEL2_PLL), 0, 7, dpll_param_p->n);	/* set n */
-	sr32(CM_REG(CLKEN_PLL), 20, 4, dpll_param_p->fsel);	/* FREQSEL */
-	sr32(CM_REG(CLKEN_PLL), 16, 3, PLL_LOCK);	/* lock mode */
+	/* Set M6 */
+	sr32(CM_REG(CLKSEL1_EMU), 24, 5, PER_M6X2 + 1);
+	sr32(CM_REG(CLKSEL1_EMU), 24, 5, PER_M6X2);
+
+	/* Set M5 */
+	sr32(CM_REG(CLKSEL_CAM), 0, 5, PER_M5X2 + 1);
+	sr32(CM_REG(CLKSEL_CAM), 0, 5, PER_M5X2);
+
+	/* Set M4 */
+	sr32(CM_REG(CLKSEL_DSS), 0, 5, PER_M4X2 + 1);
+	sr32(CM_REG(CLKSEL_DSS), 0, 5, PER_M4X2);
+
+	/* Set M3 */
+	sr32(CM_REG(CLKSEL_DSS), 8, 5, PER_M3X2 + 1);
+	sr32(CM_REG(CLKSEL_DSS), 8, 5, PER_M3X2);
+
+	/* Set M2 */
+	sr32(CM_REG(CLKSEL3_PLL), 0, 5, dp->m2 + 1);
+	sr32(CM_REG(CLKSEL3_PLL), 0, 5, dp->m2);
+
+	/* M (PERIPH_DPLL_MULT): CM_CLKSEL2_PLL[8:18] */
+	sr32(CM_REG(CLKSEL2_PLL), 8, 11, dp->m);
+
+	/* N (PERIPH_DPLL_DIV): CM_CLKSEL2_PLL[0:6] */
+	sr32(CM_REG(CLKSEL2_PLL), 0, 7, dp->n);
+
+	/* FREQSEL (PERIPH_DPLL_FREQSEL): CM_CLKEN_PLL[20:23] */
+	sr32(CM_REG(CLKEN_PLL), 20, 4, dp->fsel);
+
+	/* LOCK MODE (EN_PERIPH_DPLL): CM_CLKEN_PLL[16:18] */
+	sr32(CM_REG(CLKEN_PLL), 16, 3, PLL_LOCK);
 	wait_on_value((0x1 << 1), 2, CM_REG(IDLEST_CKGEN), LDELAY);
+}
 
-	/* Getting the base address to MPU DPLL param table */
-	dpll_param_p = (struct dpll_param *)get_mpu_dpll_param();
-	/* Moving it to the right sysclk and ES rev base */
-	dpll_param_p = dpll_param_p + MAX_SIL_INDEX * clk_index + sil_index;
-	/* MPU DPLL (unlocked already) */
-	sr32(CM_REG(CLKSEL2_PLL_MPU), 0, 5, dpll_param_p->m2);	/* Set M2 */
-	sr32(CM_REG(CLKSEL1_PLL_MPU), 8, 11, dpll_param_p->m);	/* Set M */
-	sr32(CM_REG(CLKSEL1_PLL_MPU), 0, 7, dpll_param_p->n);	/* Set N */
-	sr32(CM_REG(CLKEN_PLL_MPU), 4, 4, dpll_param_p->fsel);	/* FREQSEL */
-	sr32(CM_REG(CLKEN_PLL_MPU), 0, 3, PLL_LOCK);	/* lock mode */
-	wait_on_value((0x1 << 0), 1, CM_REG(IDLEST_PLL_MPU), LDELAY);
+/**
+ * @brief Initialize MPU DPLL for OMAP34x
+ *
+ * The MPU DPLL is already unlocked when control reaches here. This
+ * function doesn't lock the DPLL either - defers to the caller.
+ *
+ * @param[in] cpu_rev - Silicon revision
+ * @param[in] clk_sel - Clock selection used as index into the dpll table
+ */
+static void init_mpu_dpll_34x(u32 cpu_rev, u32 clk_sel)
+{
+	struct dpll_param *dp = get_mpu_dpll_param();
+
+	dp += clk_sel;
+
+	/* M2 (MPU_DPLL_CLKOUT_DIV) : CM_CLKSEL2_PLL_MPU[0:4] */
+	sr32(CM_REG(CLKSEL2_PLL_MPU), 0, 5, dp->m2);
+
+	/* M (MPU_DPLL_MULT) : CM_CLKSEL2_PLL_MPU[8:18] */
+	sr32(CM_REG(CLKSEL1_PLL_MPU), 8, 11, dp->m);
+
+	/* N (MPU_DPLL_DIV) : CM_CLKSEL2_PLL_MPU[0:6] */
+	sr32(CM_REG(CLKSEL1_PLL_MPU), 0, 7, dp->n);
+
+	/* FREQSEL (MPU_DPLL_FREQSEL) : CM_CLKEN_PLL_MPU[4:7] */
+	sr32(CM_REG(CLKEN_PLL_MPU), 4, 4, dp->fsel);
+}
+
+/**
+ * @brief Initialize IVA DPLL for OMAP34x
+ *
+ * @param[in] cpu_rev - Silicon revision
+ * @param[in] clk_sel - Clock selection used as index into the dpll table
+ */
+static void init_iva_dpll_34x(u32 cpu_rev, u32 clk_sel)
+{
+	struct dpll_param *dp = get_iva_dpll_param();
 
-	/* Getting the base address to IVA DPLL param table */
-	dpll_param_p = (struct dpll_param *)get_iva_dpll_param();
-	/* Moving it to the right sysclk and ES rev base */
-	dpll_param_p = dpll_param_p + MAX_SIL_INDEX * clk_index + sil_index;
-	/* IVA DPLL (set to 12*20=240MHz) */
+	dp += clk_sel;
+
+	/* EN_IVA2_DPLL : CM_CLKEN_PLL_IVA2[0:2] */
 	sr32(CM_REG(CLKEN_PLL_IVA2), 0, 3, PLL_STOP);
 	wait_on_value((0x1 << 0), 0, CM_REG(IDLEST_PLL_IVA2), LDELAY);
-	sr32(CM_REG(CLKSEL2_PLL_IVA2), 0, 5, dpll_param_p->m2);	/* set M2 */
-	sr32(CM_REG(CLKSEL1_PLL_IVA2), 8, 11, dpll_param_p->m);	/* set M */
-	sr32(CM_REG(CLKSEL1_PLL_IVA2), 0, 7, dpll_param_p->n);	/* set N */
-	sr32(CM_REG(CLKEN_PLL_IVA2), 4, 4, dpll_param_p->fsel);	/* FREQSEL */
-	sr32(CM_REG(CLKEN_PLL_IVA2), 0, 3, PLL_LOCK);	/* lock mode */
+
+	/* M2 (IVA2_DPLL_CLKOUT_DIV) : CM_CLKSEL2_PLL_IVA2[0:4] */
+	sr32(CM_REG(CLKSEL2_PLL_IVA2), 0, 5, dp->m2);
+
+	/* M (IVA2_DPLL_MULT) : CM_CLKSEL1_PLL_IVA2[8:18] */
+	sr32(CM_REG(CLKSEL1_PLL_IVA2), 8, 11, dp->m);
+
+	/* N (IVA2_DPLL_DIV) : CM_CLKSEL1_PLL_IVA2[0:6] */
+	sr32(CM_REG(CLKSEL1_PLL_IVA2), 0, 7, dp->n);
+
+	/* FREQSEL (IVA2_DPLL_FREQSEL) : CM_CLKEN_PLL_IVA2[4:7] */
+	sr32(CM_REG(CLKEN_PLL_IVA2), 4, 4, dp->fsel);
+
+	/* LOCK (MODE (EN_IVA2_DPLL) : CM_CLKEN_PLL_IVA2[0:2] */
+	sr32(CM_REG(CLKEN_PLL_IVA2), 0, 3, PLL_LOCK);
 	wait_on_value((0x1 << 0), 1, CM_REG(IDLEST_PLL_IVA2), LDELAY);
+}
+
+/**
+ * @brief Inits clocks for PRCM
+ *
+ * This is called from SRAM, or Flash (using temp SRAM stack).
+ * if CONFIG_OMAP3_COPY_CLOCK_SRAM is defined, @ref go_to_speed
+ *
+ * @return void
+ */
+void prcm_init(void)
+{
+	u32 osc_clk = 0, sys_clkin_sel = 0;
+	u32 cpu_rev = get_cpu_rev();
+	u32 clk_index;
+
+	/* Gauge the input clock speed and find out the sys_clkin_sel
+	 * value corresponding to the input clock.
+	 */
+	osc_clk = get_osc_clk_speed();
+	get_sys_clkin_sel(osc_clk, &sys_clkin_sel);
+	/* set input crystal speed */
+	sr32(PRM_REG(CLKSEL), 0, 3, sys_clkin_sel);
+
+	/* If the input clock is greater than 19.2M always divide/2 */
+	if (sys_clkin_sel > 2) {
+		/* input clock divider */
+		sr32(PRM_REG(CLKSRC_CTRL), 6, 2, 2);
+		clk_index = sys_clkin_sel / 2;
+	} else {
+		/* input clock divider */
+		sr32(PRM_REG(CLKSRC_CTRL), 6, 2, 1);
+		clk_index = sys_clkin_sel;
+	}
+
+	/*
+	 * Unlock the MPU PLL. Run slow while clocks are being configured.
+	 */
+	sr32(CM_REG(CLKEN_PLL_MPU), 0, 3, PLL_LOW_POWER_BYPASS);
+	wait_on_value((0x1 << 0), 0, CM_REG(IDLEST_PLL_MPU), LDELAY);
+
+	init_core_dpll_34x(cpu_rev, clk_index);
+	init_per_dpll_34x(cpu_rev, clk_index);
+	init_mpu_dpll_34x(cpu_rev, clk_index);
+	init_iva_dpll_34x(cpu_rev, clk_index);
+
+	/*
+	 * Clock configuration complete. Lock MPU PLL.
+	 */
+	sr32(CM_REG(CLKEN_PLL_MPU), 0, 3, PLL_LOCK);
+	wait_on_value((0x1 << 0), 1, CM_REG(IDLEST_PLL_MPU), LDELAY);
 
 	/* Set up GPTimers to sys_clk source only */
 	sr32(CM_REG(CLKSEL_PER), 0, 8, 0xff);
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
