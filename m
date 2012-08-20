Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T3Sqd-0006Qu-K5
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 14:21:07 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 20 Aug 2012 16:20:28 +0200
Message-Id: <1345472428-17417-14-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 13/13] omap3_clock: avoid initializing cores not present on TI
 AM35xx
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/sys_info.h |    2 ++
 arch/arm/mach-omap/omap3_clock.c           |   18 +++++++++++++++---
 arch/arm/mach-omap/omap3_generic.c         |    7 +++++++
 3 files changed, 24 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/sys_info.h b/arch/arm/mach-omap/include/mach/sys_info.h
index f0594bf..ca7471f 100644
--- a/arch/arm/mach-omap/include/mach/sys_info.h
+++ b/arch/arm/mach-omap/include/mach/sys_info.h
@@ -50,6 +50,7 @@
 #define CPU_2430	0x2430
 #define CPU_3430	0x3430
 #define CPU_3630	0x3630
+#define CPU_AM35XX	0x3500
 
 /**
  * Define CPU revisions
@@ -85,6 +86,7 @@
  * Hawkeye definitions to identify silicon families
  */
 #define OMAP_HAWKEYE_34XX	0xB7AE
+#define OMAP_HAWKEYE_AM35XX	0xB868
 #define OMAP_HAWKEYE_36XX	0xB891
 
 /** These are implemented by the System specific code in omapX-generic.c */
diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index 1b0c65c..454bccb 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -627,6 +627,11 @@ void prcm_init(void)
 		init_mpu_dpll_34x(cpu_rev, clk_index);
 		init_iva_dpll_34x(cpu_rev, clk_index);
 	}
+	else if (cpu_type == CPU_AM35XX) {
+		init_core_dpll_34x(cpu_rev, clk_index);
+		init_per_dpll_34x(cpu_rev, clk_index);
+		init_mpu_dpll_34x(cpu_rev, clk_index);
+	}
 	else if (cpu_type == CPU_3630) {
 		init_core_dpll_36x(cpu_rev, clk_index);
 		init_per_dpll_36x(cpu_rev, clk_index);
@@ -667,6 +672,10 @@ void prcm_init(void)
  */
 static void per_clocks_enable(void)
 {
+#ifdef CONFIG_OMAP_CLOCK_ALL
+	u32 cpu_type = get_cpu_type();
+#endif
+
 	/* Enable GP2 timer. */
 	sr32(CM_REG(CLKSEL_PER), 0, 1, 0x1);	/* GPT2 = sys clk */
 	sr32(CM_REG(ICLKEN_PER), 3, 1, 0x1);	/* ICKen GPT2 */
@@ -713,7 +722,8 @@ static void per_clocks_enable(void)
 #define ICK_CAM_ON	0x00000001
 #define FCK_PER_ON	0x0003ffff
 #define ICK_PER_ON	0x0003ffff
-	sr32(CM_REG(FCLKEN_IVA2), 0, 32, FCK_IVA2_ON);
+	if (cpu_type != CPU_AM35XX) /* AM35xx has no IVA */
+		sr32(CM_REG(FCLKEN_IVA2), 0, 32, FCK_IVA2_ON);
 	sr32(CM_REG(FCLKEN1_CORE), 0, 32, FCK_CORE1_ON);
 	sr32(CM_REG(ICLKEN1_CORE), 0, 32, ICK_CORE1_ON);
 	sr32(CM_REG(ICLKEN2_CORE), 0, 32, ICK_CORE2_ON);
@@ -721,8 +731,10 @@ static void per_clocks_enable(void)
 	sr32(CM_REG(ICLKEN_WKUP), 0, 32, ICK_WKUP_ON);
 	sr32(CM_REG(FCLKEN_DSS), 0, 32, FCK_DSS_ON);
 	sr32(CM_REG(ICLKEN_DSS), 0, 32, ICK_DSS_ON);
-	sr32(CM_REG(FCLKEN_CAM), 0, 32, FCK_CAM_ON);
-	sr32(CM_REG(ICLKEN_CAM), 0, 32, ICK_CAM_ON);
+	if (cpu_type != CPU_AM35XX) { /* AM35xx has no CAM */
+		sr32(CM_REG(FCLKEN_CAM), 0, 32, FCK_CAM_ON);
+		sr32(CM_REG(ICLKEN_CAM), 0, 32, ICK_CAM_ON);
+	}
 	sr32(CM_REG(FCLKEN_PER), 0, 32, FCK_PER_ON);
 	sr32(CM_REG(ICLKEN_PER), 0, 32, ICK_PER_ON);
 #endif
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 4ab265a..662995d 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -82,6 +82,9 @@ u32 get_cpu_type(void)
 	if (hawkeye == OMAP_HAWKEYE_34XX)
 		return CPU_3430;
 
+	if (hawkeye == OMAP_HAWKEYE_AM35XX)
+		return CPU_AM35XX;
+
 	if (hawkeye == OMAP_HAWKEYE_36XX)
 		return CPU_3630;
 
@@ -125,6 +128,10 @@ u32 get_cpu_rev(void)
 			retval = OMAP36XX_ES1_2;
 		}
 		break;
+	case CPU_AM35XX:
+		/*
+		 * Same as default case
+		 */
 	case CPU_3430:
 		/*
 		 * Same as default case
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
