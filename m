Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z70PJ-0002Zt-MS
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 12:00:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jun 2015 14:00:34 +0200
Message-Id: <1434974434-14563-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: OMAP: remove unused CONFIG_OMAP3_CLOCK_CONFIG option
To: Barebox List <barebox@lists.infradead.org>

All boards have this option enabled and there should be no reason
to disable it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/phytec-phycard-omap3_defconfig | 1 -
 arch/arm/mach-omap/Kconfig                      | 8 --------
 arch/arm/mach-omap/Makefile                     | 4 ++--
 arch/arm/mach-omap/omap3_generic.c              | 5 -----
 4 files changed, 2 insertions(+), 16 deletions(-)

diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
index a2564d4..5865ebd 100644
--- a/arch/arm/configs/phytec-phycard-omap3_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3_defconfig
@@ -7,7 +7,6 @@ CONFIG_CPU_V7=y
 CONFIG_CPU_32v7=y
 CONFIG_ARCH_OMAP3=y
 CONFIG_OMAP_CLOCK_SOURCE_S32K=y
-CONFIG_OMAP3_CLOCK_CONFIG=y
 CONFIG_OMAP3_COPY_CLOCK_SRAM=n
 CONFIG_OMAP_GPMC=y
 CONFIG_MACH_PCAAL1=y
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index bc00d5b..c865423 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -54,14 +54,6 @@ config OMAP_CLOCK_SOURCE_S32K
 config OMAP_CLOCK_SOURCE_DMTIMER0
 	bool
 
-config OMAP3_CLOCK_CONFIG
-	prompt "Clock Configuration"
-	bool
-	depends on ARCH_OMAP3
-	default y
-	help
-	  Say Y here if you like to have OMAP3 Clock configuration done.
-
 config OMAP_GPMC
 	prompt "Support for GPMC configuration"
 	bool
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index bef1d05..fcc2727 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -25,8 +25,8 @@ obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 obj-pbl-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o
 obj-$(CONFIG_ARCH_AM33XX) += am33xx_scrm.o
-obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
-pbl-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
+obj-$(CONFIG_ARCH_OMAP3) += omap3_clock.o
+pbl-$(CONFIG_ARCH_OMAP3) += omap3_clock.o
 obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
 obj-$(CONFIG_SHELL_NONE) += xload.o
 obj-$(CONFIG_MFD_TWL6030) += omap4_twl6030_mmc.o
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index dbb0b5f..0f2e9ce 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -435,9 +435,6 @@ static void try_unlock_memory(void)
  * Does early system init of disabling the watchdog, enable
  * memory and configuring the clocks.
  *
- * prcm_init is called only if CONFIG_OMAP3_CLOCK_CONFIG is defined.
- * We depend on link time clean up to remove a_init if no caller exists.
- *
  * @warning Called path is with SRAM stack
  *
  * @return void
@@ -459,9 +456,7 @@ void omap3_core_init(void)
 
 	sdelay(100);
 
-#ifdef CONFIG_OMAP3_CLOCK_CONFIG
 	prcm_init();
-#endif
 }
 
 #define OMAP3_TRACING_VECTOR1 0x4020ffb4
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
