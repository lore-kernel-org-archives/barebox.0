Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Urkff-0000v0-6Z
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 08:01:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 10:00:47 +0200
Message-Id: <1372233657-19455-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372233657-19455-1-git-send-email-s.hauer@pengutronix.de>
References: <1372233657-19455-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/11] ARM: i.MX: select SoC from board
To: barebox@lists.infradead.org

In principle we could build barebox for multiple i.MX SoCs, so
select the correct SoC from the board selection.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/eukrea_cpuimx25_defconfig        |   1 +
 arch/arm/configs/eukrea_cpuimx27_defconfig        |   1 +
 arch/arm/configs/eukrea_cpuimx35_defconfig        |   1 +
 arch/arm/configs/freescale-mx6-arm2_defconfig     |   1 +
 arch/arm/configs/freescale_mx51_babbage_defconfig |   1 +
 arch/arm/configs/freescale_mx53_loco_defconfig    |   1 +
 arch/arm/configs/mx21ads_defconfig                |   1 +
 arch/arm/configs/pcm037_defconfig                 |   1 +
 arch/arm/mach-imx/Kconfig                         | 169 +++++++++-------------
 9 files changed, 76 insertions(+), 101 deletions(-)

diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
index c3537aa..4f8a95c 100644
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX25=y
+CONFIG_MACH_EUKREA_CPUIMX25=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_AEABI=y
diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
index bbcd454..97b4291 100644
--- a/arch/arm/configs/eukrea_cpuimx27_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX27=y
+CONFIG_MACH_EUKREA_CPUIMX27=y
 CONFIG_IMX_CLKO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
index f85e9a2..88e1e3d 100644
--- a/arch/arm/configs/eukrea_cpuimx35_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_IMX=y
 CONFIG_CACHE_L2X0=y
 CONFIG_ARCH_IMX35=y
+CONFIG_MACH_EUKREA_CPUIMX35=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_AEABI=y
diff --git a/arch/arm/configs/freescale-mx6-arm2_defconfig b/arch/arm/configs/freescale-mx6-arm2_defconfig
index d2812e4..6982e0c 100644
--- a/arch/arm/configs/freescale-mx6-arm2_defconfig
+++ b/arch/arm/configs/freescale-mx6-arm2_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX6=y
+CONFIG_MACH_MX6Q_ARM2=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_AEABI=y
diff --git a/arch/arm/configs/freescale_mx51_babbage_defconfig b/arch/arm/configs/freescale_mx51_babbage_defconfig
index d382dc8..27f3ae8 100644
--- a/arch/arm/configs/freescale_mx51_babbage_defconfig
+++ b/arch/arm/configs/freescale_mx51_babbage_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX51=y
+CONFIG_MACH_FREESCALE_MX51_PDK=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_THUMB2_BAREBOX=y
diff --git a/arch/arm/configs/freescale_mx53_loco_defconfig b/arch/arm/configs/freescale_mx53_loco_defconfig
index f502f5e..b2b4c79 100644
--- a/arch/arm/configs/freescale_mx53_loco_defconfig
+++ b/arch/arm/configs/freescale_mx53_loco_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX53=y
+CONFIG_MACH_FREESCALE_MX53_LOCO=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_THUMB2_BAREBOX=y
diff --git a/arch/arm/configs/mx21ads_defconfig b/arch/arm/configs/mx21ads_defconfig
index dbc2962..13c005b 100644
--- a/arch/arm/configs/mx21ads_defconfig
+++ b/arch/arm/configs/mx21ads_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX21=y
+CONFIG_MACH_IMX21ADS=y
 CONFIG_IMX_CLKO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0xc3000000
diff --git a/arch/arm/configs/pcm037_defconfig b/arch/arm/configs/pcm037_defconfig
index 7c630a5..1a75701 100644
--- a/arch/arm/configs/pcm037_defconfig
+++ b/arch/arm/configs/pcm037_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_IMX=y
 CONFIG_CACHE_L2X0=y
 CONFIG_ARCH_IMX31=y
+CONFIG_MACH_PCM037=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_AEABI=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index d9291bb..ac2e9b8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -165,112 +165,98 @@ config BAREBOX_UPDATE_IMX_EXTERNAL_NAND
 
 comment "Freescale i.MX System-on-Chip"
 
-choice
-	prompt "Freescale i.MX Processor"
-
 config ARCH_IMX1
-	bool "i.MX1"
+	bool
 	select CPU_ARM920T
 	select PINCTRL_IMX_IOMUX_V1
 
 config ARCH_IMX21
-	bool "i.MX21"
+	bool
 	select CPU_ARM926T
 	select PINCTRL_IMX_IOMUX_V1
 
 config ARCH_IMX25
-	bool "i.MX25"
+	bool
 	select CPU_ARM926T
 	select ARCH_HAS_FEC_IMX
 	select PINCTRL_IMX_IOMUX_V3
 
 config ARCH_IMX27
-	bool "i.MX27"
+	bool
 	select CPU_ARM926T
 	select ARCH_HAS_FEC_IMX
 	select PINCTRL_IMX_IOMUX_V1
 
 config ARCH_IMX31
 	select CPU_V6
-	bool "i.MX31"
+	bool
 	select PINCTRL_IMX_IOMUX_V2
 
 config ARCH_IMX35
-	bool "i.MX35"
+	bool
 	select CPU_V6
 	select ARCH_HAS_FEC_IMX
 	select PINCTRL_IMX_IOMUX_V3
 
 config ARCH_IMX51
-	bool "i.MX51"
+	bool
 	select CPU_V7
 	select ARCH_HAS_FEC_IMX
 	select PINCTRL_IMX_IOMUX_V3
 
 config ARCH_IMX53
-	bool "i.MX53"
+	bool
 	select CPU_V7
 	select ARCH_HAS_FEC_IMX
 	select PINCTRL_IMX_IOMUX_V3
 
 config ARCH_IMX6
-	bool "i.MX6"
+	bool
 	select ARCH_HAS_FEC_IMX
 	select CPU_V7
 	select PINCTRL_IMX_IOMUX_V3
 
-endchoice
-
 # ----------------------------------------------------------
 
-if ARCH_IMX1
-
 choice
-	prompt "i.MX1 Board Type"
+	prompt "Select Board"
+
+comment "i.MX1 Boards"
 
 config MACH_SCB9328
 	bool "Synertronixx scb9328"
+	select ARCH_IMX1
 	select HAS_DM9000
 	help
 	  Say Y here if you are using the Synertronixx scb9328 board
 
-endchoice
-
-endif
-
 # ----------------------------------------------------------
 
-if ARCH_IMX21
-
-choice
-	prompt "i.MX21 Board Type"
+comment "i.MX21 Boards"
 
 config MACH_IMX21ADS
 	bool "Freescale i.MX21ADS"
+	select ARCH_IMX21
 	select HAS_CS8900
 	help
 	  Say Y here if you are using the Freescale i.MX21ads board equipped
 	  with a Freescale i.MX21 Processor
 
-endchoice
-
-endif
 
 # ----------------------------------------------------------
 
-if ARCH_IMX25
-
-choice
-	prompt "i.MX25 Board Type"
+comment "i.MX25 Boards"
 
 config MACH_EUKREA_CPUIMX25
 	bool "Eukrea CPUIMX25"
+	select ARCH_IMX25
 	help
 	  Say Y here if you are using the Eukrea Electromatique's CPUIMX25
 	  equipped with a Freescale i.MX25 Processor
 
 config MACH_FREESCALE_MX25_3STACK
 	bool "Freescale MX25 3stack"
+	select ARCH_IMX25
 	select I2C
 	select MFD_MC34704
 	help
@@ -279,41 +265,39 @@ config MACH_FREESCALE_MX25_3STACK
 
 config MACH_TX25
 	bool "Ka-Ro TX25"
+	select ARCH_IMX25
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Say Y here if you are using the Ka-Ro tx25 board
 
-endchoice
-
-endif
-
 # ----------------------------------------------------------
 
-if ARCH_IMX27
-
-choice
-	prompt "i.MX27 Board Type"
+comment "i.MX27 Boards"
 
 config MACH_EUKREA_CPUIMX27
 	bool "EUKREA CPUIMX27"
+	select ARCH_IMX27
 	help
 	  Say Y here if you are using Eukrea's CPUIMX27 equipped
 	  with a Freescale i.MX27 Processor
 
 config MACH_IMX27ADS
 	bool "Freescale i.MX27ADS"
+	select ARCH_IMX27
 	help
 	  Say Y here if you are using the Freescale i.MX27ads board equipped
 	  with a Freescale i.MX27 Processor
 
 config MACH_PCA100
 	bool "phyCard-i.MX27"
+	select ARCH_IMX27
 	help
 	  Say Y here if you are using Phytec's phyCard-i.MX27 (pca100) equipped
 	  with a Freescale i.MX27 Processor
 
 config MACH_PCM038
 	bool "phyCORE-i.MX27"
+	select ARCH_IMX27
 	select IMX_IIM
 	select SPI
 	select DRIVER_SPI_IMX
@@ -334,23 +318,18 @@ config MACH_PCM970_BASEBOARD
 
 config MACH_NESO
 	bool "Garz+Fricke Neso"
+	select ARCH_IMX27
 	help
 	  Say Y here if you are using the Garz+Fricke Neso board equipped
 	  with a Freescale i.MX27 Processor
 
-endchoice
-
-endif
-
 # ----------------------------------------------------------
 
-if ARCH_IMX31
-
-choice
-	prompt "i.MX31 Board Type"
+comment "i.MX31 Boards"
 
 config MACH_PCM037
 	bool "phyCORE-i.MX31"
+	select ARCH_IMX31
 	select USB_ULPI if USB
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select ARCH_HAS_L2X0
@@ -358,19 +337,13 @@ config MACH_PCM037
 	  Say Y here if you are using Phytec's phyCORE-i.MX31 (pcm037) equipped
 	  with a Freescale i.MX31 Processor
 
-endchoice
-
-endif
-
 # ----------------------------------------------------------
 
-if ARCH_IMX35
-
-choice
-	prompt "i.MX35 Board Type"
+comment "i.MX35 Boards"
 
 config MACH_EUKREA_CPUIMX35
 	bool "EUKREA CPUIMX35"
+	select ARCH_IMX35
 	select ARCH_HAS_L2X0
 	help
 	  Say Y here if you are using Eukrea's CPUIMX35 equipped
@@ -378,6 +351,7 @@ config MACH_EUKREA_CPUIMX35
 
 config MACH_FREESCALE_MX35_3STACK
 	bool "Freescale MX35 3stack"
+	select ARCH_IMX35
 	select I2C
 	select I2C_IMX
 	select MFD_MC13XXX
@@ -388,6 +362,7 @@ config MACH_FREESCALE_MX35_3STACK
 
 config MACH_PCM043
 	bool "phyCORE-i.MX35"
+	select ARCH_IMX35
 	select ARCH_HAS_L2X0
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
@@ -396,40 +371,38 @@ config MACH_PCM043
 
 config MACH_GUF_CUPID
 	bool "Garz+Fricke Cupid"
+	select ARCH_IMX35
 	select ARCH_HAS_L2X0
 	help
 	  Say Y here if you are using the Garz+Fricke Neso board equipped
 	  with a Freescale i.MX35 Processor
 
-endchoice
-
-endif
-
 # ----------------------------------------------------------
 
-if ARCH_IMX51
-
-choice
-	prompt "i.MX51 Board Type"
+comment "i.MX51 Boards"
 
 config MACH_FREESCALE_MX51_PDK
+	bool "Freescale i.MX51 PDK"
+	select ARCH_IMX51
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select HAVE_PBL_MULTI_IMAGES
-	bool "Freescale i.MX51 PDK"
 
 config MACH_EUKREA_CPUIMX51SD
-	bool "EUKREA CPUIMX51"
+	bool "Ka-Ro TX51"
+	select ARCH_IMX51
 	help
 	  Say Y here if you are using Eukrea's CPUIMX51 equipped
 	  with a Freescale i.MX51 Processor
 
 config MACH_TX51
 	bool "Ka-Ro TX51"
+	select ARCH_IMX51
 	help
 	  Say Y here if you are using the Ka-Ro tx51 board
 
 config MACH_CCMX51
 	bool "ConnectCore i.MX51"
+	select ARCH_IMX51
 	select IMX_IIM
 	select SPI
 	select DRIVER_SPI_IMX
@@ -448,84 +421,65 @@ config MACH_CCMX51_BASEBOARD
 
 config MACH_EFIKA_MX_SMARTBOOK
 	bool "Efika MX smartbook"
+	select ARCH_IMX51
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Choose this to compile barebox for the Efika MX Smartbook
 
-endchoice
-
-endif
-
 # ----------------------------------------------------------
 
-if ARCH_IMX53
-
-choice
-	prompt "i.MX53 Board Type"
+comment "i.MX53 Boards"
 
 config MACH_FREESCALE_MX53_LOCO
+	bool "Freescale i.MX53 LOCO"
+	select ARCH_IMX53
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select HAVE_PBL_MULTI_IMAGES
-	bool "Freescale i.MX53 LOCO"
 
 config MACH_FREESCALE_MX53_SMD
 	bool "Freescale i.MX53 SMD"
+	select ARCH_IMX53
 
 config MACH_TQMA53
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	bool "TQ i.MX53 TQMa53"
+	select ARCH_IMX53
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 
 config MACH_TX53
 	bool "Ka-Ro TX53"
+	select ARCH_IMX53
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Say Y here if you are using the Ka-Ro tx53 board
 
 config MACH_GUF_VINCELL
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	bool "Garz-Fricke Vincell"
+	select ARCH_IMX53
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 
-endchoice
-
-if MACH_TX53
-
-choice
-	prompt "TX53 board revision"
-config TX53_REV_1011
-	bool "1011"
-config TX53_REV_XX30
-	bool "8030 / 1030"
-
-endchoice
-
-endif
-
-endif
-
-if ARCH_IMX6
-
-choice
-	prompt "i.MX6 Board Type"
+comment "i.MX6 Boards"
 
 config MACH_MX6Q_ARM2
 	bool "Freescale i.MX6q Armadillo2"
+	select ARCH_IMX6
 
 config MACH_SABRELITE
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	bool "Freescale i.MX6 Sabre Lite"
+	select ARCH_IMX6
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 
 config MACH_SABRESD
 	bool "Freescale i.MX6 SabreSD"
+	select ARCH_IMX6
 
 config MACH_REALQ7
 	bool "DataModul i.MX6Q Real Qseven Board"
+	select ARCH_IMX6
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select HAVE_PBL_MULTI_IMAGES
 
 endchoice
 
-endif
-
 # ----------------------------------------------------------
 
 menu "Board specific settings"
@@ -607,6 +561,19 @@ config MACH_TQMA53_1GB_RAM
 
 endif
 
+if MACH_TX53
+
+choice
+	prompt "TX53 board revision"
+config TX53_REV_1011
+	bool "1011"
+config TX53_REV_XX30
+	bool "8030 / 1030"
+
+endchoice
+
+endif
+
 endmenu
 
 menu "i.MX specific settings"
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
