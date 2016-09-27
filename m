Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1botBz-0004QJ-6h
 for barebox@lists.infradead.org; Tue, 27 Sep 2016 14:17:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2016 16:16:39 +0200
Message-Id: <20160927141639.27403-2-s.hauer@pengutronix.de>
In-Reply-To: <20160927141639.27403-1-s.hauer@pengutronix.de>
References: <20160927141639.27403-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] Make generic default environment type a use choice
To: Barebox List <barebox@lists.infradead.org>

So far it was hardcoded for each board if defenv-1 or defenv-2 is used.
Make this a user choice so that a particular board no longer enforces
a defenv type.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                |  1 -
 arch/arm/mach-at91/Kconfig      |  3 ---
 arch/arm/mach-clps711x/Kconfig  |  1 -
 arch/arm/mach-davinci/Kconfig   |  1 -
 arch/arm/mach-highbank/Kconfig  |  1 -
 arch/arm/mach-imx/Kconfig       |  9 ---------
 arch/arm/mach-mxs/Kconfig       |  5 -----
 arch/arm/mach-omap/Kconfig      |  3 ---
 arch/arm/mach-samsung/Kconfig   |  1 -
 arch/arm/mach-socfpga/Kconfig   |  4 ----
 arch/arm/mach-uemd/Kconfig      |  1 -
 arch/arm/mach-versatile/Kconfig |  1 -
 arch/efi/Kconfig                |  1 -
 arch/openrisc/Kconfig           |  1 -
 common/Kconfig                  | 36 +++++++++++++++---------------------
 15 files changed, 15 insertions(+), 54 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 150320c..f13cc1d 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -232,7 +232,6 @@ config ARCH_TEGRA
 	select CLKDEV_LOOKUP
 	select GPIOLIB
 	select GPIO_TEGRA
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select HAVE_PBL_MULTI_IMAGES
 	select OFDEVICE
 	select OFTREE
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 4166fa5..c45fc4d 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -255,7 +255,6 @@ config MACH_USB_A9260
 
 config MACH_GE863
 	bool "Telit EVK-PRO3"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Say y here if you are using Telit EVK-PRO3 with GE863-PRO3
 	  <http://www.telit.com>
@@ -494,13 +493,11 @@ choice
 
 config MACH_SAMA5D4EK
 	bool "Atmel SAMA5D4 Evaluation Kit"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Select this if you are using Atmel's SAMA5D4-EK Evaluation Kit.
 
 config MACH_SAMA5D4_XPLAINED
 	bool "Atmel SAMA5D4 XPLAINED ULTRA Evaluation Kit"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Select this if you are using Atmel's SAMA5D4_XPLAINED ULTRA Evaluation Kit.
 
diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
index 92dd51a..0853ce2 100644
--- a/arch/arm/mach-clps711x/Kconfig
+++ b/arch/arm/mach-clps711x/Kconfig
@@ -5,7 +5,6 @@ choice
 
 config MACH_CLEP7212
 	bool "Cirrus Logic CLEP7212"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Boards based on the Cirrus Logic 7212/7312 CPU.
 
diff --git a/arch/arm/mach-davinci/Kconfig b/arch/arm/mach-davinci/Kconfig
index 3165d50..66d3d7a 100644
--- a/arch/arm/mach-davinci/Kconfig
+++ b/arch/arm/mach-davinci/Kconfig
@@ -9,7 +9,6 @@ choice
 
 config MACH_VIRT2REAL
 	bool "Virt2Real"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 
 endchoice
 
diff --git a/arch/arm/mach-highbank/Kconfig b/arch/arm/mach-highbank/Kconfig
index 8af4808..8a22348 100644
--- a/arch/arm/mach-highbank/Kconfig
+++ b/arch/arm/mach-highbank/Kconfig
@@ -10,7 +10,6 @@ choice
 config MACH_HIGHBANK
 	bool "Calxeda Highbank"
 	select OFTREE
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 
 endchoice
 
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index a80bc6b..ae35aaa 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -151,7 +151,6 @@ config ARCH_IMX6SX
 
 config IMX_MULTI_BOARDS
 	bool "Allow multiple boards to be selected"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select HAVE_PBL_MULTI_IMAGES
 
 if IMX_MULTI_BOARDS
@@ -166,7 +165,6 @@ config MACH_TX25
 config MACH_PCA100
 	bool "phyCard-i.MX27"
 	select ARCH_IMX27
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select ARCH_IMX_EXTERNAL_BOOT_NAND
 	help
 	  Say Y here if you are using Phytec's phyCard-i.MX27 (pca100) equipped
@@ -178,7 +176,6 @@ config MACH_PCM038
 	select SPI
 	select DRIVER_SPI_IMX
 	select MFD_MC13XXX
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select ARCH_IMX_EXTERNAL_BOOT_NAND
 	help
 	  Say Y here if you are using Phytec's phyCORE-i.MX27 (pcm038) equipped
@@ -272,7 +269,6 @@ config MACH_TX6X
 config MACH_SABRELITE
 	bool "Freescale i.MX6 Sabre Lite"
 	select ARCH_IMX6
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select HAVE_PBL_MULTI_IMAGES
 
 config MACH_SABRESD
@@ -404,7 +400,6 @@ config MACH_PCM037
 	bool "phyCORE-i.MX31"
 	select ARCH_IMX31
 	select USB_ULPI if USB
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select ARCH_HAS_L2X0
 	help
 	  Say Y here if you are using Phytec's phyCORE-i.MX31 (pcm037) equipped
@@ -414,7 +409,6 @@ config MACH_MX31MOBOARD
 	bool "mx31moboard-i.MX31"
 	select ARCH_IMX31
 	select USB_ULPI if USB
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select ARCH_HAS_L2X0
 	help
 	  Say Y here if you are using EPFL mx31moboard board equipped
@@ -447,7 +441,6 @@ config MACH_PCM043
 	bool "phyCORE-i.MX35"
 	select ARCH_IMX35
 	select ARCH_HAS_L2X0
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Say Y here if you are using Phytec's phyCORE-i.MX35 (pcm043) equipped
 	  with a Freescale i.MX35 Processor
@@ -464,7 +457,6 @@ config MACH_KINDLE3
 	bool "Amazon Kindle3"
 	select ARCH_IMX35
 	select ARCH_HAS_L2X0
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Say Y here if you are using the Amazon Model No. D00901 Kindle
 
@@ -515,7 +507,6 @@ config MACH_FREESCALE_MX53_SMD
 config MACH_TX53
 	bool "Ka-Ro TX53"
 	select ARCH_IMX53
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Say Y here if you are using the Ka-Ro tx53 board
 
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index ea0fa5a..facab9c 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -45,7 +45,6 @@ config MACH_CHUMBY
 
 config MACH_IMX233_OLINUXINO
 	bool "Olimex.ltd imx223-olinuxino"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using the imx233-olinuxino
@@ -61,14 +60,12 @@ choice
 
 config MACH_TX28
 	bool "KARO tx28"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using the KARO TX28 CPU module.
 
 config MACH_MX28EVK
 	bool "mx28-evk"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select MXS_OCOTP
 	select HAVE_PBL_MULTI_IMAGES
 	help
@@ -76,7 +73,6 @@ config MACH_MX28EVK
 
 config MACH_DUCKBILL
 	bool "Duckbill"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select MXS_OCOTP
 	select HAVE_PBL_MULTI_IMAGES
 	help
@@ -84,7 +80,6 @@ config MACH_DUCKBILL
 
 config MACH_CFA10036
 	bool "cfa-10036"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select MXS_OCOTP
 	select I2C_GPIO
 	select EEPROM_AT24
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index d7c863c..f8ec195 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -155,7 +155,6 @@ config OMAP_SERIALBOOT
 
 config OMAP_MULTI_BOARDS
 	bool "Allow multiple boards to be selected"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select HAVE_PBL_MULTI_IMAGES
 
 if OMAP_MULTI_BOARDS
@@ -168,7 +167,6 @@ config MACH_AFI_GF
 
 config MACH_BEAGLE
 	bool "Texas Instrument's Beagle Board"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select ARCH_OMAP3
 	help
 	  Say Y here if you are using Beagle Board
@@ -204,7 +202,6 @@ config MACH_OMAP3EVM
 
 config MACH_PANDA
 	bool "Texas Instrument's Panda Board"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select ARCH_OMAP4
 	help
 	  Say Y here if you are using OMAP4 Panda board
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index 8f421bb..a2ddabf 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -52,7 +52,6 @@ config MACH_MINI2440
 	select S3C_PLL_INIT
 	select S3C_SDRAM_INIT
 	select HAS_DM9000
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Say Y here if you are using Mini 2440 dev board equipped
 	  with a Samsung S3C2440 Processor
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 94689e3..04b5416 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -13,19 +13,15 @@ config ARCH_TEXT_BASE
 	default 0x00100000 if MACH_SOCFPGA_CYCLONE5
 
 config MACH_SOCFPGA_ALTERA_SOCDK
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	bool "Altera SoCFPGA Development Kit"
 
 config MACH_SOCFPGA_EBV_SOCRATES
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	bool "EBV Socrates"
 
 config MACH_SOCFPGA_TERASIC_DE0_NANO_SOC
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	bool "Terasic DE0-NANO-SoC aka Atlas"
 
 config MACH_SOCFPGA_TERASIC_SOCKIT
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	bool "Terasic SoCKit"
 
 endif
diff --git a/arch/arm/mach-uemd/Kconfig b/arch/arm/mach-uemd/Kconfig
index aedd757..2bcdd32 100644
--- a/arch/arm/mach-uemd/Kconfig
+++ b/arch/arm/mach-uemd/Kconfig
@@ -9,7 +9,6 @@ choice
 
 config MACH_MB7707
 	bool "MB7707"
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 
 endchoice
 
diff --git a/arch/arm/mach-versatile/Kconfig b/arch/arm/mach-versatile/Kconfig
index 755fdc1..3c5cced 100644
--- a/arch/arm/mach-versatile/Kconfig
+++ b/arch/arm/mach-versatile/Kconfig
@@ -9,7 +9,6 @@ config MACH_VERSATILEPB
 	default y
 	select ARM_AMBA
 	select CLKDEV_LOOKUP
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 
 choice
 	prompt "ARM Board type"
diff --git a/arch/efi/Kconfig b/arch/efi/Kconfig
index 26fecaa..d8d0592 100644
--- a/arch/efi/Kconfig
+++ b/arch/efi/Kconfig
@@ -3,7 +3,6 @@ config ARCH_EFI
 	default y
 	select HAS_DEBUG_LL
 	select HAS_KALLSYMS
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select EFI_GUID
 	select EFI_DEVICEPATH
 	select PRINTF_UUID
diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
index 483ae6d..2a8abf0 100644
--- a/arch/openrisc/Kconfig
+++ b/arch/openrisc/Kconfig
@@ -3,7 +3,6 @@ config OPENRISC
 	select OFTREE
 	select HAS_CACHE
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select GENERIC_FIND_NEXT_BIT
 	default y
 
diff --git a/common/Kconfig b/common/Kconfig
index f2badc7..3923c6c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -826,11 +826,8 @@ config DEFAULT_COMPRESSION_NONE
 
 endchoice
 
-config HAVE_DEFAULT_ENVIRONMENT_NEW
-	bool
-
 config DEFAULT_ENVIRONMENT_GENERIC_NEW
-	bool
+	bool "Generic environment template"
 	depends on DEFAULT_ENVIRONMENT
 	depends on SHELL_HUSH
 	select BOOTM
@@ -850,31 +847,16 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	select FLEXIBLE_BOOTARGS
 	select CMD_BOOT
 	select NET_CMD_IFUP if NET
-	prompt "Generic environment template"
-
-config DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU
-	bool
-	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
-	depends on CMD_MENUTREE
-	default y
-
-config DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU
-	bool
-	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
-	depends on USB_GADGET_DFU
-	default y
 
 config DEFAULT_ENVIRONMENT_GENERIC
-	bool
-	depends on !HAVE_DEFAULT_ENVIRONMENT_NEW
+	bool "Generic environment template (old version)"
 	depends on DEFAULT_ENVIRONMENT
+	depends on !DEFAULT_ENVIRONMENT_GENERIC_NEW
 	depends on SHELL_HUSH
 	select CMD_GETOPT
 	select CMD_CRC
 	select CMD_CRC_CMP
-	select CMD_AUTOMOUNT if HAVE_DEFAULT_ENVIRONMENT_NEW
 	select CMD_GLOBAL
-	prompt "Default environment generic"
 	help
 	  With this option barebox will use the generic default
 	  environment found under defaultenv/ in the src tree.
@@ -883,6 +865,18 @@ config DEFAULT_ENVIRONMENT_GENERIC
 	  at least contain a /env/config file.
 	  This will be able to overwrite the files from defaultenv.
 
+config DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU
+	bool
+	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
+	depends on CMD_MENUTREE
+	default y
+
+config DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU
+	bool
+	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
+	depends on USB_GADGET_DFU
+	default y
+
 config DEFAULT_ENVIRONMENT_PATH
 	string
 	depends on DEFAULT_ENVIRONMENT
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
