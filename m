Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamF-00027f-Az
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:26 +0200
Message-Id: <1350507817-7819-18-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/28] ARM: remove now unused *_LOWLEVEL_INIT Kconfig options
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c      |   12 ------------
 arch/arm/cpu/start.c          |   12 ------------
 arch/arm/mach-at91/Kconfig    |    8 --------
 arch/arm/mach-ep93xx/Kconfig  |    8 --------
 arch/arm/mach-imx/Kconfig     |   16 ----------------
 arch/arm/mach-netx/Kconfig    |    1 -
 arch/arm/mach-omap/Kconfig    |    5 -----
 arch/arm/mach-pxa/Kconfig     |    1 -
 arch/arm/mach-samsung/Kconfig |    6 ------
 common/Kconfig                |   12 ------------
 10 files changed, 81 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 30877b4..8b4f691 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -44,18 +44,6 @@ void __naked __section(.text_head_entry) pbl_start(void)
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
index 79cb437..c21a8d7 100644
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
index 8ec033b..a4a0ebf 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -45,8 +45,6 @@ config ARCH_AT91RM9200
 	bool "AT91RM9200"
 	select CPU_ARM920T
 	select HAS_AT91_ETHER
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_AT91SAM9260
 	bool "AT91SAM9260"
@@ -189,8 +187,6 @@ config MACH_PM9261
 	bool "Ronetix PM9261"
 	select HAVE_AT91SAM926X_LOWLEVEL_INIT
 	select HAS_DM9000
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 	help
 	  Say y here if you are using the Ronetix PM9261 Board
 
@@ -266,8 +262,6 @@ choice
 
 config MACH_AT91SAM9263EK
 	bool "Atmel AT91SAM9263-EK"
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	select HAVE_AT91SAM926X_LOWLEVEL_INIT
 	help
@@ -281,8 +275,6 @@ config MACH_MMCCPU
 
 config MACH_PM9263
 	bool "Ronetix PM9263"
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 	select HAVE_AT91SAM926X_LOWLEVEL_INIT
 	help
 	  Say y here if you are using the Ronetix PM9263 Board
diff --git a/arch/arm/mach-ep93xx/Kconfig b/arch/arm/mach-ep93xx/Kconfig
index ed6e986..90859d5 100644
--- a/arch/arm/mach-ep93xx/Kconfig
+++ b/arch/arm/mach-ep93xx/Kconfig
@@ -38,7 +38,6 @@ choice
 config MACH_EDB9301
 	bool "Cirrus Logic EDB9301"
 	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9301 Evaluation board
 
@@ -103,14 +102,12 @@ choice
 config MACH_EDB9302
 	bool "Cirrus Logic EDB9302"
 	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9302 Evaluation board
 
 config MACH_EDB9302A
 	bool "Cirrus Logic EDB9302A"
 	select EP93XX_SDCE0_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9302A Evaluation board
 
@@ -222,14 +219,12 @@ choice
 config MACH_EDB9307
 	bool "Cirrus Logic EDB9307"
 	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9307 Evaluation board
 
 config MACH_EDB9307A
 	bool "Cirrus Logic EDB9307A"
 	select EP93XX_SDCE0_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9307A Evaluation board
 
@@ -309,7 +304,6 @@ choice
 config MACH_EDB9312
 	bool "Cirrus Logic EDB9312"
 	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9312 Evaluation board
 
@@ -358,14 +352,12 @@ choice
 config MACH_EDB9315
 	bool "Cirrus Logic EDB9315"
 	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9315 Evaluation board
 
 config MACH_EDB9315A
 	bool "Cirrus Logic EDB9315A"
 	select EP93XX_SDCE0_PHYS_OFFSET
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9315A Evaluation board
 
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index cca8394..447e8b9 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -203,7 +203,6 @@ choice
 config MACH_SCB9328
 	bool "Synertronixx scb9328"
 	select HAS_DM9000
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Synertronixx scb9328 board
 
@@ -221,7 +220,6 @@ choice
 
 config MACH_IMX21ADS
 	bool "Freescale i.MX21ADS"
-	select MACH_HAS_LOWLEVEL_INIT
 	select HAS_CS8900
 	help
 	  Say Y here if you are using the Freescale i.MX21ads board equipped
@@ -241,14 +239,12 @@ choice
 
 config MACH_EUKREA_CPUIMX25
 	bool "Eukrea CPUIMX25"
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Eukrea Electromatique's CPUIMX25
 	  equipped with a Freescale i.MX25 Processor
 
 config MACH_FREESCALE_MX25_3STACK
 	bool "Freescale MX25 3stack"
-	select MACH_HAS_LOWLEVEL_INIT
 	select I2C
 	select I2C_MC34704
 	help
@@ -257,7 +253,6 @@ config MACH_FREESCALE_MX25_3STACK
 
 config MACH_TX25
 	bool "Ka-Ro TX25"
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Ka-Ro tx25 board
 
@@ -275,28 +270,24 @@ choice
 
 config MACH_EUKREA_CPUIMX27
 	bool "EUKREA CPUIMX27"
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using Eukrea's CPUIMX27 equipped
 	  with a Freescale i.MX27 Processor
 
 config MACH_IMX27ADS
 	bool "Freescale i.MX27ADS"
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Freescale i.MX27ads board equipped
 	  with a Freescale i.MX27 Processor
 
 config MACH_PCA100
 	bool "phyCard-i.MX27"
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using Phytec's phyCard-i.MX27 (pca100) equipped
 	  with a Freescale i.MX27 Processor
 
 config MACH_PCM038
 	bool "phyCORE-i.MX27"
-	select MACH_HAS_LOWLEVEL_INIT
 	select SPI
 	select DRIVER_SPI_IMX
 	select MFD_MC13XXX
@@ -315,7 +306,6 @@ config MACH_PCM970_BASEBOARD
 
 config MACH_NESO
 	bool "Garz+Fricke Neso"
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Garz+Fricke Neso board equipped
 	  with a Freescale i.MX27 Processor
@@ -334,7 +324,6 @@ choice
 
 config MACH_PCM037
 	bool "phyCORE-i.MX31"
-	select MACH_HAS_LOWLEVEL_INIT
 	select USB_ULPI if USB
 	select ARCH_HAS_L2X0
 	help
@@ -355,7 +344,6 @@ choice
 
 config MACH_EUKREA_CPUIMX35
 	bool "EUKREA CPUIMX35"
-	select MACH_HAS_LOWLEVEL_INIT
 	select ARCH_HAS_L2X0
 	help
 	  Say Y here if you are using Eukrea's CPUIMX35 equipped
@@ -363,7 +351,6 @@ config MACH_EUKREA_CPUIMX35
 
 config MACH_FREESCALE_MX35_3STACK
 	bool "Freescale MX35 3stack"
-	select MACH_HAS_LOWLEVEL_INIT
 	select I2C
 	select I2C_IMX
 	select MFD_MC13XXX
@@ -374,7 +361,6 @@ config MACH_FREESCALE_MX35_3STACK
 
 config MACH_PCM043
 	bool "phyCORE-i.MX35"
-	select MACH_HAS_LOWLEVEL_INIT
 	select ARCH_HAS_L2X0
 	help
 	  Say Y here if you are using Phytec's phyCORE-i.MX35 (pcm043) equipped
@@ -382,7 +368,6 @@ config MACH_PCM043
 
 config MACH_GUF_CUPID
 	bool "Garz+Fricke Cupid"
-	select MACH_HAS_LOWLEVEL_INIT
 	select ARCH_HAS_L2X0
 	help
 	  Say Y here if you are using the Garz+Fricke Neso board equipped
@@ -464,7 +449,6 @@ config MACH_TQMA53_1GB_RAM
 config MACH_TX53
 	bool "Ka-Ro TX53"
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Ka-Ro tx53 board
 
diff --git a/arch/arm/mach-netx/Kconfig b/arch/arm/mach-netx/Kconfig
index 8e83417..ea92afb 100644
--- a/arch/arm/mach-netx/Kconfig
+++ b/arch/arm/mach-netx/Kconfig
@@ -47,7 +47,6 @@ config MACH_NXDB500
 	bool "Hilscher Netx nxdb500"
 	select HAS_NETX_ETHER
 	select HAS_CFI
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Hilscher Netx nxdb500 board
 
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index da39530..d79e33f 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -29,7 +29,6 @@ config ARCH_OMAP3
 	bool "OMAP3"
 	select CPU_V7
 	select GENERIC_GPIO
-	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_SOURCE_S32K
 	help
 	  Say Y here if you are using Texas Instrument's OMAP343x based platform
@@ -127,7 +126,6 @@ config MACH_OMAP3EVM
 config MACH_PANDA
 	bool "Texas Instrument's Panda Board"
 	select HAVE_NOSHELL
-	select MACH_HAS_LOWLEVEL_INIT
 	depends on ARCH_OMAP4
 	help
 	  Say Y here if you are using OMAP4 Panda board
@@ -135,7 +133,6 @@ config MACH_PANDA
 config MACH_ARCHOSG9
 	bool "Archos G9 tablets"
 	select HAVE_NOSHELL
-	select MACH_HAS_LOWLEVEL_INIT
 	depends on ARCH_OMAP4
 	help
 	  Say Y here if you are using OMAP4-based Archos G9 tablet
@@ -144,7 +141,6 @@ config MACH_PCM049
 	bool "Phytec phyCORE pcm049"
 	select HAVE_NOSHELL
 	depends on ARCH_OMAP4
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using Phytecs phyCORE pcm049 board
 	  based on OMAP4
@@ -159,7 +155,6 @@ config MACH_PCAAL1
 config MACH_PCAAXL2
 	bool "Phytec phyCARD XL2"
 	select HAVE_NOSHELL
-	select MACH_HAS_LOWLEVEL_INIT
 	depends on ARCH_OMAP4
 	help
 	  Say Y here if you are using a phyCARD-A-XL1 PCA-A-XL1
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 029fd8b..61f323b 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -43,7 +43,6 @@ config MACH_MIOA701
 config MACH_PCM027
 	bool "Phytec phyCORE-PXA270"
 	select HAS_CFI
-	select MACH_HAS_LOWLEVEL_INIT
 	select HAVE_MMU
 	help
 	  Say Y here if you are using a Phytec phyCORE PXA270
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index 7312f5e..b3796cd 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -41,7 +41,6 @@ choice
 config MACH_A9M2410
 	bool "Digi A9M2410"
 	select CPU_S3C2410
-	select MACH_HAS_LOWLEVEL_INIT
 	select S3C_PLL_INIT
 	select S3C_SDRAM_INIT
 	help
@@ -51,7 +50,6 @@ config MACH_A9M2410
 config MACH_A9M2440
 	bool "Digi A9M2440"
 	select CPU_S3C2440
-	select MACH_HAS_LOWLEVEL_INIT
 	select S3C_PLL_INIT
 	help
 	  Say Y here if you are using Digi's Connect Core 9M equipped
@@ -60,8 +58,6 @@ config MACH_A9M2440
 config MACH_MINI2440
 	bool "Mini 2440"
 	select CPU_S3C2440
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 	select S3C_PLL_INIT
 	select S3C_SDRAM_INIT
 	select HAS_DM9000
@@ -141,8 +137,6 @@ choice
 config MACH_TINY210
 	bool "Tiny 210"
 	select CPU_S5PV210
-	select MACH_HAS_LOWLEVEL_INIT
-	select MACH_DO_LOWLEVEL_INIT
 	select S3C_SDRAM_INIT
 
 endchoice
diff --git a/common/Kconfig b/common/Kconfig
index d60db80..1eb1e45 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -287,18 +287,6 @@ config RELOCATABLE
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
