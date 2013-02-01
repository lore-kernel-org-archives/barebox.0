Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXO-0004LZ-AA
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 07:59:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:35 +0100
Message-Id: <1359705587-9762-23-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 22/34] ARM: remove now unused MACH_[HAS|DO]_LOWLEVEL_INIT
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                        |   30 ------------------------------
 arch/arm/configs/archosg9_defconfig     |    1 -
 arch/arm/configs/phycard_a_l1_defconfig |    2 --
 arch/arm/cpu/start-pbl.c                |   12 ------------
 arch/arm/cpu/start.c                    |   12 ------------
 arch/arm/mach-at91/Kconfig              |    3 ---
 arch/arm/mach-omap/arch-omap.dox        |    1 -
 arch/arm/mach-pxa/Kconfig               |    1 -
 common/Kconfig                          |   12 ------------
 9 files changed, 74 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 0d5e004..6f7a71f 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -30,8 +30,6 @@ config ARCH_AT91
 	select CLKDEV_LOOKUP
 	select HAS_DEBUG_LL
 	select HAVE_MACH_ARM_HEAD
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_BCM2835
 	bool "Broadcom BCM2835 boards"
@@ -41,22 +39,16 @@ config ARCH_BCM2835
 	select COMMON_CLK
 	select CLOCKSOURCE_BCM2835
 	select ARM_AMBA
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_CLPS711X
 	bool "Cirrus Logic EP711x/EP721x/EP731x"
 	select CLKDEV_LOOKUP
 	select CPU_32v4T
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
 	select CPU_ARM920T
 	select GENERIC_GPIO
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_IMX
 	bool "Freescale iMX-based"
@@ -66,27 +58,19 @@ config ARCH_IMX
 	select CLKDEV_LOOKUP
 	select WATCHDOG_IMX_RESET_SOURCE
 	select HAS_DEBUG_LL
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_MXS
 	bool "Freescale i.MX23/28 (mxs) based"
 	select GENERIC_GPIO
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_NETX
 	bool "Hilscher NetX based"
 	select CPU_ARM926T
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_NOMADIK
 	bool "STMicroelectronics Nomadik"
 	select CPU_ARM926T
 	select CLOCKSOURCE_NOMADIK
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 	help
 	  Support for the Nomadik platform by ST-Ericsson
 
@@ -94,52 +78,38 @@ config ARCH_OMAP
 	bool "TI OMAP"
 	select HAS_DEBUG_LL
 	select GPIOLIB
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_PXA
 	bool "Intel/Marvell PXA based"
 	select GENERIC_GPIO
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_S3C24xx
 	bool "Samsung S3C2410, S3C2440"
 	select ARCH_SAMSUNG
 	select CPU_ARM920T
 	select GENERIC_GPIO
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_S5PCxx
 	bool "Samsung S5PC110, S5PV210"
 	select ARCH_SAMSUNG
 	select CPU_V7
 	select GENERIC_GPIO
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_S3C64xx
 	bool "Samsung S3C64xx"
 	select ARCH_SAMSUNG
 	select CPU_V6
 	select GENERIC_GPIO
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
 	select CPU_ARM926T
 	select GPIOLIB
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_TEGRA
 	bool "Nvidia Tegra-based boards"
 	select CPU_ARM926T
 	select HAS_DEBUG_LL
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 endchoice
 
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index 1f3d105..9a051da 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -2,7 +2,6 @@ CONFIG_MACH_ARCHOSG9=y
 CONFIG_ARCH_OMAP=y
 CONFIG_ARCH_OMAP4=y
 CONFIG_AEABI=y
-# CONFIG_MACH_DO_LOWLEVEL_INIT is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 # CONFIG_MMU is not set
diff --git a/arch/arm/configs/phycard_a_l1_defconfig b/arch/arm/configs/phycard_a_l1_defconfig
index 5170722..d90a333 100644
--- a/arch/arm/configs/phycard_a_l1_defconfig
+++ b/arch/arm/configs/phycard_a_l1_defconfig
@@ -36,8 +36,6 @@ CONFIG_STACK_SIZE=0x8000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_DLMALLOC=y
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
 CONFIG_ARCH_HAS_LOWLEVEL_INIT=y
 CONFIG_PROMPT="phyCARD-A-L1 >"
 CONFIG_BAUDRATE=115200
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 11ab025..06c0a17 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -45,18 +45,6 @@ void __naked __section(.text_head_entry) pbl_start(void)
 	barebox_arm_head();
 }
 
-/*
- * The actual reset vector. This code is position independent and usually
- * does not run at the address it's linked at.
- */
-#ifndef CONFIG_MACH_DO_LOWLEVEL_INIT
-void __naked __bare_init reset(void)
-{
-	common_reset();
-	board_init_lowlevel_return();
-}
-#endif
-
 extern void *input_data;
 extern void *input_data_end;
 
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f212b61..4966ab6 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -40,18 +40,6 @@ void __naked __section(.text_entry) start(void)
 }
 
 /*
- * The actual reset vector. This code is position independent and usually
- * does not run at the address it's linked at.
- */
-#ifndef CONFIG_MACH_DO_LOWLEVEL_INIT
-void __naked __bare_init reset(void)
-{
-	common_reset();
-	board_init_lowlevel_return();
-}
-#endif
-
-/*
  * Board code can jump here by either returning from board_init_lowlevel
  * or by calling this function directly.
  */
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 337d2a6..c9fdd01 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -26,8 +26,6 @@ config SOC_SAMA5
 	select CPU_V7
 	select AT91SAM9_SMC
 	select AT91SAM9_TIMER
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_TEXT_BASE
 	hex
@@ -157,7 +155,6 @@ choice
 
 config ARCH_AT91RM9200
 	bool "AT91RM9200"
-	select MACH_DO_LOWLEVEL_INIT
 	select SOC_AT91RM9200
 
 config ARCH_AT91SAM9260
diff --git a/arch/arm/mach-omap/arch-omap.dox b/arch/arm/mach-omap/arch-omap.dox
index 6b6b3a8..8c2b47d 100644
--- a/arch/arm/mach-omap/arch-omap.dox
+++ b/arch/arm/mach-omap/arch-omap.dox
@@ -70,7 +70,6 @@ The responsibility of arch_init_lowlevel and related calls is to setup OMAP. No
 Once this is past, the code returns back to arm common code (cpu/start-arm.S). Here Instruction and Data caches are disabled. The execution proceeds to normal board initialization.
 
 @section board_boot The board boot path
-If the proper CONFIG_MACH_DO_LOWLEVEL_INIT flag is setup, board_init_lowlevel is called. This again would call a common file arch/arm/boards/omap/platform.S which setups a temporary SRAM stack and bumps the control to board_init.
 Every Board in OMAP platform can potentially define a board_init and enable defconfig in arch/arm/configs directory. The responsibility here is to setup OMAP for board configurations - this includes SDRAM configuration and pin muxing configuration.
 
 Once this is complete, @a barebox boot process proceeds by calling init functions and finally entering shell prompt
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 6808d2f..2bc040c 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -42,7 +42,6 @@ config MACH_MIOA701
 
 config MACH_PCM027
 	bool "Phytec phyCORE-PXA270"
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using a Phytec phyCORE PXA270
 	  board
diff --git a/common/Kconfig b/common/Kconfig
index 2e062ba..595e91f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -244,18 +244,6 @@ config RELOCATABLE
 	  allowing it to relocate to the end of the available RAM. This
 	  way you have the whole memory in a single piece.
 
-config MACH_HAS_LOWLEVEL_INIT
-	bool
-
-config MACH_DO_LOWLEVEL_INIT
-	bool "run machine low-level init"
-	depends on MACH_HAS_LOWLEVEL_INIT
-	default y
-	help
-	  This entry enables SDRAM and other board low level initialization
-	  on many platforms. Disabling this option allows configurations to use
-	  barebox as a second stage boot loader.
-
 config PROMPT
 	string
 	prompt "barebox command prompt"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
