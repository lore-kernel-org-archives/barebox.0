Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHg-00005m-PY
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:23 +0100
Message-Id: <20181214141730.26181-17-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 16/23] ARM: omap: Add AM35XX support
To: Barebox List <barebox@lists.infradead.org>

Not much to be done here. The AM35xx is very similar to OMAP3.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig                    |  6 ++++++
 arch/arm/mach-omap/include/mach/omap3-clock.h |  2 ++
 arch/arm/mach-omap/include/mach/sys_info.h    |  2 ++
 arch/arm/mach-omap/omap3_clock.c              | 14 +++++++++-----
 arch/arm/mach-omap/omap3_generic.c            |  3 +++
 5 files changed, 22 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 34d37dcd7e..5537f5101a 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -48,6 +48,12 @@ config ARCH_AM33XX
 	help
 	  Say Y here if you are using Texas Instrument's AM33xx based platform
 
+config ARCH_AM35XX
+	bool
+	select ARCH_OMAP3
+	help
+	  Say Y here if you are using Texas Instrument's AM35XX based platform
+
 config OMAP_GPMC
 	prompt "Support for GPMC configuration"
 	bool
diff --git a/arch/arm/mach-omap/include/mach/omap3-clock.h b/arch/arm/mach-omap/include/mach/omap3-clock.h
index 7c52da754f..849964ab3e 100644
--- a/arch/arm/mach-omap/include/mach/omap3-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap3-clock.h
@@ -64,6 +64,8 @@
 #define CM_CLKSEL_CAM		0X0f40
 #define CM_FCLKEN_PER		0X1000
 #define CM_ICLKEN_PER		0X1010
+#define CM_IDLEST_PER		0X1020
+#define CM_AUTOIDLE_PER		0X1030
 #define CM_CLKSEL_PER		0X1040
 #define CM_CLKSEL1_EMU		0X1140
 #define CM_FCLKEN_USBH		0x1400
diff --git a/arch/arm/mach-omap/include/mach/sys_info.h b/arch/arm/mach-omap/include/mach/sys_info.h
index e36f49df8a..57bfb3c680 100644
--- a/arch/arm/mach-omap/include/mach/sys_info.h
+++ b/arch/arm/mach-omap/include/mach/sys_info.h
@@ -43,6 +43,7 @@
 #define CPU_3350	0x3350
 #define CPU_3430	0x3430
 #define CPU_3630	0x3630
+#define CPU_AM35XX	0x3500
 
 /**
  * Define CPU revisions
@@ -84,6 +85,7 @@
 #define OMAP_HAWKEYE_34XX	0xB7AE /* OMAP34xx */
 #define OMAP_HAWKEYE_36XX	0xB891 /* OMAP36xx */
 #define OMAP_HAWKEYE_335X	0xB944 /* AM335x */
+#define OMAP_HAWKEYE_AM35XX	0xb868 /* AM35xx */
 
 /** These are implemented by the System specific code in omapX-generic.c */
 u32 get_cpu_type(void);
diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index 6700f56f39..0159574f30 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -617,11 +617,12 @@ void prcm_init(void)
 	sr32(OMAP3_CM_REG(CLKEN_PLL_MPU), 0, 3, PLL_LOW_POWER_BYPASS);
 	wait_on_value((0x1 << 0), 0, OMAP3_CM_REG(IDLEST_PLL_MPU), LDELAY);
 
-	if (cpu_type == CPU_3430) {
+	if (cpu_type == CPU_3430 || cpu_type == CPU_AM35XX) {
 		init_core_dpll_34x(cpu_rev, clk_index);
 		init_per_dpll_34x(cpu_rev, clk_index);
 		init_mpu_dpll_34x(cpu_rev, clk_index);
-		init_iva_dpll_34x(cpu_rev, clk_index);
+		if (cpu_type != CPU_AM35XX)
+			init_iva_dpll_34x(cpu_rev, clk_index);
 	}
 	else if (cpu_type == CPU_3630) {
 		init_core_dpll_36x(cpu_rev, clk_index);
@@ -676,7 +677,12 @@ static void per_clocks_enable(void)
 #define ICK_CAM_ON	0x00000001
 #define FCK_PER_ON	0x0003ffff
 #define ICK_PER_ON	0x0003ffff
-	sr32(OMAP3_CM_REG(FCLKEN_IVA2), 0, 32, FCK_IVA2_ON);
+
+	if (get_cpu_type() != CPU_AM35XX) {
+		sr32(OMAP3_CM_REG(FCLKEN_IVA2), 0, 32, FCK_IVA2_ON);
+		sr32(OMAP3_CM_REG(FCLKEN_CAM), 0, 32, FCK_CAM_ON);
+		sr32(OMAP3_CM_REG(ICLKEN_CAM), 0, 32, ICK_CAM_ON);
+	}
 	sr32(OMAP3_CM_REG(FCLKEN1_CORE), 0, 32, FCK_CORE1_ON);
 	sr32(OMAP3_CM_REG(ICLKEN1_CORE), 0, 32, ICK_CORE1_ON);
 	sr32(OMAP3_CM_REG(ICLKEN2_CORE), 0, 32, ICK_CORE2_ON);
@@ -684,8 +690,6 @@ static void per_clocks_enable(void)
 	sr32(OMAP3_CM_REG(ICLKEN_WKUP), 0, 32, ICK_WKUP_ON);
 	sr32(OMAP3_CM_REG(FCLKEN_DSS), 0, 32, FCK_DSS_ON);
 	sr32(OMAP3_CM_REG(ICLKEN_DSS), 0, 32, ICK_DSS_ON);
-	sr32(OMAP3_CM_REG(FCLKEN_CAM), 0, 32, FCK_CAM_ON);
-	sr32(OMAP3_CM_REG(ICLKEN_CAM), 0, 32, ICK_CAM_ON);
 	sr32(OMAP3_CM_REG(FCLKEN_PER), 0, 32, FCK_PER_ON);
 	sr32(OMAP3_CM_REG(ICLKEN_PER), 0, 32, ICK_PER_ON);
 
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 3f91441d2e..348a00cdff 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -78,6 +78,9 @@ u32 get_cpu_type(void)
 	if (hawkeye == OMAP_HAWKEYE_34XX)
 		return CPU_3430;
 
+	if (hawkeye == OMAP_HAWKEYE_AM35XX)
+		return CPU_AM35XX;
+
 	if (hawkeye == OMAP_HAWKEYE_36XX)
 		return CPU_3630;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
