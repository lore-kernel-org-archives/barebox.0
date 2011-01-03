Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PZlLW-0003TV-P8
	for barebox@lists.infradead.org; Mon, 03 Jan 2011 14:25:16 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id p03EPBwC023042
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Mon, 3 Jan 2011 08:25:13 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Mon,  3 Jan 2011 19:54:52 +0530
Message-Id: <1294064695-10865-6-git-send-email-premi@ti.com>
In-Reply-To: <1294064695-10865-1-git-send-email-premi@ti.com>
References: <1294064695-10865-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 5/8] omap36x: Define per domain functions for DPLL
	configuration
To: barebox@lists.infradead.org

This patch defines functions that contain steps to configure
DPLL for each clock domain.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/mach-omap/omap3_clock.c |  193 ++++++++++++++++++++++++++++++++++++++
 1 files changed, 193 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index c5a32e9..492e309 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -351,6 +351,199 @@ static void init_iva_dpll_34x(u32 cpu_rev, u32 clk_sel)
 }
 
 /**
+ * @brief Initialize CORE DPLL for OMAP36x
+ *
+ * @param[in] cpu_rev - Silicon revision
+ * @param[in] clk_sel - Clock selection used as index into the dpll table
+ */
+static void init_core_dpll_36x(u32 cpu_rev, u32 clk_sel)
+{
+	struct dpll_param *dp = get_core_dpll_param_36x(cpu_rev);
+#ifdef CONFIG_OMAP3_COPY_CLOCK_SRAM
+	int p0, p1, p2, p3;
+#endif
+
+	dp += clk_sel;
+
+	if (running_in_sram()) {
+		sr32(CM_REG(CLKEN_PLL), 0, 3, PLL_FAST_RELOCK_BYPASS);
+		wait_on_value((0x1 << 0), 0, CM_REG(IDLEST_CKGEN), LDELAY);
+
+		/* CM_CLKSEL1_EMU[DIV_DPLL3] */
+		sr32(CM_REG(CLKSEL1_EMU), 16, 5, CORE_M3X2);
+
+		/* M2 (CORE_DPLL_CLKOUT_DIV): CM_CLKSEL1_PLL[27:31] */
+		sr32(CM_REG(CLKSEL1_PLL), 27, 5, dp->m2);
+
+		/* M (CORE_DPLL_MULT): CM_CLKSEL1_PLL[16:26] */
+		sr32(CM_REG(CLKSEL1_PLL), 16, 11, dp->m);
+
+		/* N (CORE_DPLL_DIV): CM_CLKSEL1_PLL[8:14] */
+		sr32(CM_REG(CLKSEL1_PLL), 8, 7, dp->n);
+
+		/* Set source CM_96M_FCLK: CM_CLKSEL1_PLL[6] */
+		sr32(CM_REG(CLKSEL1_PLL), 6, 1, 0);
+
+		sr32(CM_REG(CLKSEL_CORE), 8, 4, CORE_SSI_DIV);
+		sr32(CM_REG(CLKSEL_CORE), 4, 2, CORE_FUSB_DIV);
+		sr32(CM_REG(CLKSEL_CORE), 2, 2, CORE_L4_DIV);
+		sr32(CM_REG(CLKSEL_CORE), 0, 2, CORE_L3_DIV);
+		sr32(CM_REG(CLKSEL_GFX),  0, 3, GFX_DIV_36X);
+		sr32(CM_REG(CLKSEL_WKUP), 1, 2, WKUP_RSM);
+
+		/* FREQSEL (CORE_DPLL_FREQSEL): CM_CLKEN_PLL[4:7] */
+		sr32(CM_REG(CLKEN_PLL), 4, 4, dp->fsel);
+
+		/* Lock Mode */
+		sr32(CM_REG(CLKEN_PLL), 0, 3, PLL_LOCK);
+		wait_on_value((0x1 << 0), 1, CM_REG(IDLEST_CKGEN), LDELAY);
+	} else if (running_in_flash()) {
+#ifdef CONFIG_OMAP3_COPY_CLOCK_SRAM
+		f_lock_pll = (void *)(OMAP_SRAM_INTVECT +
+					OMAP_SRAM_INTVECT_COPYSIZE);
+
+		/*
+		 * Jump to small relocated code area in SRAM.
+		 */
+		p0 = readl(CM_REG(CLKEN_PLL));
+		sr32((u32) &p0, 0, 3, PLL_FAST_RELOCK_BYPASS);
+
+		/* FREQSEL (CORE_DPLL_FREQSEL): CM_CLKEN_PLL[4:7] */
+		sr32((u32) &p0, 4, 4, dp->fsel);
+
+		p1 = readl(CM_REG(CLKSEL1_PLL));
+
+		/* M2 (CORE_DPLL_CLKOUT_DIV): CM_CLKSEL1_PLL[27:31] */
+		sr32((u32) &p1, 27, 5, dp->m2);
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
+		p2 = readl(CM_REG(CLKSEL_CORE));
+		sr32((u32) &p2, 8, 4, CORE_SSI_DIV);
+		sr32((u32) &p2, 4, 2, CORE_FUSB_DIV);
+		sr32((u32) &p2, 2, 2, CORE_L4_DIV);
+		sr32((u32) &p2, 0, 2, CORE_L3_DIV);
+
+		p3 = CM_REG(IDLEST_CKGEN);
+
+		(*f_lock_pll) (p0, p1, p2, p3);
+#else
+		/***Oopps.. Wrong .config!! *****/
+		hang();
+#endif
+	}
+}
+
+/**
+ * @brief Initialize PER DPLL for OMAP36x
+ *
+ * @param[in] cpu_rev - Silicon revision
+ * @param[in] clk_sel - Clock selection used as index into the dpll table
+ */
+static void init_per_dpll_36x(u32 cpu_rev, u32 clk_sel)
+{
+	struct dpll_param_per_36x *dp = get_per_dpll_param_36x(cpu_rev);
+
+	dp += clk_sel;
+
+	sr32(CM_REG(CLKEN_PLL), 16, 3, PLL_STOP);
+	wait_on_value((0x1 << 1), 0, CM_REG(IDLEST_CKGEN), LDELAY);
+
+	/* Set M6 (DIV_DPLL4): CM_CLKSEL1_EMU[24:29] */
+	sr32(CM_REG(CLKSEL1_EMU), 24, 6, dp->m6);
+
+	/* Set M5 (CLKSEL_CAM): CM_CLKSEL_CAM[0:5] */
+	sr32(CM_REG(CLKSEL_CAM), 0, 6, dp->m5);
+
+	/* Set M4 (CLKSEL_DSS1): CM_CLKSEL_DSS[0:5] */
+	sr32(CM_REG(CLKSEL_DSS), 0, 6, dp->m4);
+
+	/* Set M3 (CLKSEL_DSS2): CM_CLKSEL_DSS[8:13] */
+	sr32(CM_REG(CLKSEL_DSS), 8, 6, dp->m3);
+
+	/* Set M2: CM_CLKSEL3_PLL[0:4] */
+	sr32(CM_REG(CLKSEL3_PLL), 0, 5, dp->m2);
+
+	/* M (PERIPH_DPLL_MULT): CM_CLKSEL2_PLL[8:19] */
+	sr32(CM_REG(CLKSEL2_PLL), 8, 12, dp->m);
+
+	/* N (PERIPH_DPLL_DIV): CM_CLKSEL2_PLL[0:6] */
+	sr32(CM_REG(CLKSEL2_PLL), 0, 7, dp->n);
+
+	/* M2DIV (CLKSEL_96M): CM_CLKSEL_CORE[12:13] */
+	sr32(CM_REG(CLKSEL_CORE), 12, 2, dp->m2div);
+
+	/* LOCK MODE (EN_PERIPH_DPLL): CM_CLKEN_PLL[16:18] */
+	sr32(CM_REG(CLKEN_PLL), 16, 3, PLL_LOCK);
+	wait_on_value((0x1 << 1), 2, CM_REG(IDLEST_CKGEN), LDELAY);
+}
+
+/**
+ * @brief Initialize MPU DPLL for OMAP36x
+ *
+ * @param[in] cpu_rev - Silicon revision
+ * @param[in] clk_sel - Clock selection used as index into the dpll table
+ */
+static void init_mpu_dpll_36x(u32 cpu_rev, u32 clk_sel)
+{
+	struct dpll_param *dp = get_mpu_dpll_param_36x(cpu_rev);
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
+ * @brief Initialize IVA DPLL for OMAP36x
+ *
+ * @param[in] cpu_rev - Silicon revision
+ * @param[in] clk_sel - Clock selection used as index into the dpll table
+ */
+static void init_iva_dpll_36x(u32 cpu_rev, u32 clk_sel)
+{
+	struct dpll_param *dp = get_iva_dpll_param_36x(cpu_rev);
+
+	dp += clk_sel;
+
+	/* EN_IVA2_DPLL : CM_CLKEN_PLL_IVA2[0:2] */
+	sr32(CM_REG(CLKEN_PLL_IVA2), 0, 3, PLL_STOP);
+	wait_on_value((0x1 << 0), 0, CM_REG(IDLEST_PLL_IVA2), LDELAY);
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
+	wait_on_value((0x1 << 0), 1, CM_REG(IDLEST_PLL_IVA2), LDELAY);
+}
+
+/**
  * @brief Inits clocks for PRCM
  *
  * This is called from SRAM, or Flash (using temp SRAM stack).
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
