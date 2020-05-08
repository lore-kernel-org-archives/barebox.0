Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWwSW-0008ES-M1
 for barebox@lists.infradead.org; Fri, 08 May 2020 06:26:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  8 May 2020 08:25:28 +0200
Message-Id: <20200508062530.23241-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200508062530.23241-1-a.fatoum@pengutronix.de>
References: <20200508062530.23241-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/5] drivers: mark first batch of compilable drivers for
 COMPILE_TEST
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

All of these drivers have a runtime dependency on SoC peripherals, but
can nevertheless be compile-tested. Add COMPILE_TEST as an alternate
dependency.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/aiodev/Kconfig         |  2 +-
 drivers/bus/Kconfig            |  4 ++--
 drivers/crypto/caam/Kconfig    |  2 +-
 drivers/crypto/imx-scc/Kconfig |  4 ++--
 drivers/gpio/Kconfig           | 16 ++++++++--------
 drivers/hw_random/Kconfig      |  4 ++--
 drivers/input/Kconfig          |  2 +-
 drivers/mci/Kconfig            | 14 +++++++-------
 drivers/memory/Kconfig         |  2 +-
 drivers/mfd/Kconfig            |  2 +-
 drivers/mtd/nand/Kconfig       |  8 ++++----
 drivers/net/Kconfig            | 10 +++++-----
 drivers/net/phy/Kconfig        |  2 +-
 drivers/pci/Kconfig            |  2 +-
 drivers/phy/Kconfig            |  2 +-
 drivers/pinctrl/Kconfig        |  4 ++--
 drivers/pwm/Kconfig            |  4 ++--
 drivers/watchdog/Kconfig       | 18 +++++++++---------
 18 files changed, 51 insertions(+), 51 deletions(-)

diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
index 7f1d0fd4a9a9..a4909d8ecdc6 100644
--- a/drivers/aiodev/Kconfig
+++ b/drivers/aiodev/Kconfig
@@ -18,7 +18,7 @@ config IMX_THERMAL
 
 config QORIQ_THERMAL
 	tristate "QorIQ Thermal Monitoring Unit"
-	depends on ARCH_IMX8MQ
+	depends on ARCH_IMX8MQ || COMPILE_TEST
 	help
 	  Support for Thermal Monitoring Unit (TMU) found on QorIQ and
 	  i.MX8MQ platforms.
diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 1a2ff9129e8e..6b4e1d30e365 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -7,7 +7,7 @@ config BUS_OMAP_GPMC
 	bool "TI OMAP/AM33xx GPMC support"
 
 config TI_SYSC
-	depends on ARCH_OMAP
+	depends on ARCH_OMAP || COMPILE_TEST
 	bool "TI sysc interconnect target module driver"
 	default y
 	help
@@ -15,7 +15,7 @@ config TI_SYSC
 	  found on many TI SoCs.
 
 config IMX_WEIM
-	depends on ARCH_IMX
+	depends on ARCH_IMX || COMPILE_TEST
 	bool "i.MX WEIM driver"
 
 config MVEBU_MBUS
diff --git a/drivers/crypto/caam/Kconfig b/drivers/crypto/caam/Kconfig
index 6bb8278d69e8..398167850122 100644
--- a/drivers/crypto/caam/Kconfig
+++ b/drivers/crypto/caam/Kconfig
@@ -1,6 +1,6 @@
 config CRYPTO_DEV_FSL_CAAM
 	bool "Freescale CAAM-Multicore driver backend"
-	depends on ARCH_IMX6
+	depends on ARCH_IMX6 || COMPILE_TEST
 	help
 	  Enables the driver module for Freescale's Cryptographic Accelerator
 	  and Assurance Module (CAAM), also known as the SEC version 4 (SEC4).
diff --git a/drivers/crypto/imx-scc/Kconfig b/drivers/crypto/imx-scc/Kconfig
index bc4676a10af7..b5dffb62f6da 100644
--- a/drivers/crypto/imx-scc/Kconfig
+++ b/drivers/crypto/imx-scc/Kconfig
@@ -1,12 +1,12 @@
 config CRYPTO_DEV_MXC_SCC
 	tristate "Support for Freescale Security Controller (SCC)"
-	depends on ARCH_IMX25 && OFTREE
+	depends on (ARCH_IMX25 || COMPILE_TEST) && OFTREE
 	help
 	  This option enables support for the Security Controller (SCC)
 	  found in Freescale i.MX25 chips.
 
 config CRYPTO_DEV_MXC_SCC_BLOB_GEN
 	tristate "Support for SCC blob gen"
-	depends on ARCH_IMX25
+	depends on ARCH_IMX25 || COMPILE_TEST
 	select BLOBGEN
 	select CRYPTO_DEV_MXC_SCC
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 7e4fc90d3934..5f0ba7994ebe 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -11,7 +11,7 @@ config GPIO_GENERIC
 
 config GPIO_DIGIC
 	bool "GPIO support for Canon DIGIC"
-	depends on ARCH_DIGIC
+	depends on ARCH_DIGIC || COMPILE_TEST
 
 config GPIO_74164
 	bool "Generic SPI attached shift register"
@@ -23,7 +23,7 @@ config GPIO_74164
 
 config GPIO_CLPS711X
 	bool "GPIO support for CLPS711X"
-	depends on ARCH_CLPS711X
+	depends on ARCH_CLPS711X || COMPILE_TEST
 	select GPIO_GENERIC
 	help
 	  Say yes here to enable the GPIO driver for the CLPS711X CPUs
@@ -31,7 +31,7 @@ config GPIO_CLPS711X
 config GPIO_DAVINCI
 	bool "TI Davinci/Keystone GPIO support"
 	default y if ARCH_DAVINCI
-	depends on ARM && ARCH_DAVINCI
+	depends on (ARM && ARCH_DAVINCI) || COMPILE_TEST
 	help
 	  Say yes here to enable GPIO support for TI Davinci/Keystone SoCs.
 
@@ -53,13 +53,13 @@ config GPIO_MXS
 
 config GPIO_JZ4740
 	bool "GPIO support for Ingenic SoCs"
-	depends on MACH_MIPS_XBURST
+	depends on MACH_MIPS_XBURST || COMPILE_TEST
 	help
 	  Say yes here to enable the GPIO driver for the Ingenic SoCs.
 
 config GPIO_MALTA_FPGA_I2C
 	bool "Malta CBUS FPGA I2C GPIO"
-	depends on MACH_MIPS_MALTA
+	depends on MACH_MIPS_MALTA || COMPILE_TEST
 	help
 	  Support access to the CBUS FPGA I2C lines through the gpio library.
 
@@ -69,7 +69,7 @@ config GPIO_MALTA_FPGA_I2C
 
 config GPIO_MPC8XXX
 	bool "MPC512x/MPC8xxx/QorIQ GPIO support"
-	depends on ARCH_LAYERSCAPE
+	depends on ARCH_LAYERSCAPE || COMPILE_TEST
 	select GPIO_GENERIC
 	help
 	  Say Y here if you're going to use hardware that connects to the
@@ -80,7 +80,7 @@ config GPIO_OMAP
 
 config GPIO_ORION
 	bool "GPIO support for Marvell Orion/MVEBU SoCs"
-	depends on ARCH_MVEBU
+	depends on ARCH_MVEBU || COMPILE_TEST
 	help
 	  Say yes here to add the driver for the GPIO controller
 	  found on Marvell Orion and MVEBU SoCs (Armada 370/XP,
@@ -142,7 +142,7 @@ config GPIO_STMPE
 
 config GPIO_TEGRA
 	bool "GPIO support for the Tegra SoCs"
-	depends on ARCH_TEGRA
+	depends on ARCH_TEGRA || COMPILE_TEST
 	help
 	  Say yes here to include the driver for the GPIO controller found on the
 	  Tegra line of SoCs.
diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
index 492105456821..1923c755dbba 100644
--- a/drivers/hw_random/Kconfig
+++ b/drivers/hw_random/Kconfig
@@ -9,14 +9,14 @@ if HWRNG
 
 config HWRNG_MXC_RNGC
 	tristate "Freescale i.MX RNGC Random Number Generator"
-	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX53
+	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX53 || COMPILE_TEST
 	help
 	  This driver provides kernel-side support for the Random Number
 	  Generator hardware found on some Freescale i.MX processors.
 
 config HWRNG_STM32
 	tristate "STM32 Random Number Generator"
-	depends on ARCH_STM32MP
+	depends on ARCH_STM32MP || COMPILE_TEST
 	help
 	  This driver provides barebox support for the Random Number
 	  Generator hardware found on the STM32 family of MPUs and MCUs.
diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index e40032d91b2f..95aa51ebfc9e 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -27,7 +27,7 @@ config KEYBOARD_GPIO
 
 config KEYBOARD_IMX_KEYPAD
 	bool "IMX Keypad"
-	depends on ARCH_IMX
+	depends on ARCH_IMX || COMPILE_TEST
 	select INPUT_MATRIXKMAP
 	select POLLER
 	select INPUT
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index ffb265e0dfbc..b2f16390e77e 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -68,16 +68,16 @@ config MCI_S3C
 
 config MCI_BCM283X
 	bool "MCI support for BCM283X"
-	depends on ARCH_BCM283X
+	depends on ARCH_BCM283X || COMPILE_TEST
 
 config MCI_BCM283X_SDHOST
 	bool "BCM283X sdhost"
-	depends on ARCH_BCM283X
+	depends on ARCH_BCM283X || COMPILE_TEST
 	select MCI_SDHCI
 
 config MCI_DOVE
 	bool "Marvell Dove SDHCI"
-	depends on ARCH_DOVE
+	depends on ARCH_DOVE || COMPILE_TEST
 	select MCI_SDHCI
 	help
 	  Enable this entry to add support to read and write SD cards on a
@@ -85,14 +85,14 @@ config MCI_DOVE
 
 config MCI_IMX
 	bool "i.MX"
-	depends on ARCH_IMX27 || ARCH_IMX31
+	depends on ARCH_IMX27 || ARCH_IMX31 || COMPILE_TEST
 	help
 	  Enable this entry to add support to read and write SD cards on a
 	  Freescale i.MX based system.
 
 config MCI_IMX_ESDHC
 	bool "i.MX esdhc"
-	depends on ARCH_IMX || ARCH_LAYERSCAPE
+	depends on ARCH_IMX || ARCH_LAYERSCAPE || COMPILE_TEST
 	select MCI_SDHCI
 	help
 	  Enable this entry to add support to read and write SD cards on a
@@ -128,7 +128,7 @@ config MCI_ATMEL
 config MCI_ATMEL_SDHCI
 	bool "ATMEL SDHCI (sama5d2)"
 	select MCI_SDHCI
-	depends on ARCH_AT91
+	depends on ARCH_AT91 || COMPILE_TEST
 	help
 	  Enable this entry to add support to read and write SD cards on an
 	  Atmel sama5d2
@@ -142,7 +142,7 @@ config MCI_MMCI
 
 config MCI_TEGRA
 	bool "Tegra SD/MMC"
-	depends on ARCH_TEGRA
+	depends on ARCH_TEGRA || COMPILE_TEST
 	select MCI_SDHCI
 	help
 	  Enable this to support SD and MMC card read/write on a Tegra based
diff --git a/drivers/memory/Kconfig b/drivers/memory/Kconfig
index 39fd64477328..134dc9e37a56 100644
--- a/drivers/memory/Kconfig
+++ b/drivers/memory/Kconfig
@@ -2,7 +2,7 @@ menu "Memory controller drivers"
 
 config MC_TEGRA124
 	bool "Support for Tegra124 memory controller"
-	depends on ARCH_TEGRA
+	depends on ARCH_TEGRA || COMPILE_TEST
 	help
 	  Say yes here to include the driver for the memory controller found on
 	  the Tegra124 SoC. This driver performs the necessary initialization
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 32a2c661fc4f..42346154e63a 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -84,7 +84,7 @@ config SMSC_SUPERIO
 
 config MFD_STM32_TIMERS
 	bool "STM32 Timers"
-	depends on ARCH_STM32MP
+	depends on ARCH_STM32MP || COMPILE_TEST
 	help
 	  Select this to get regmap support for the timer blocks on STM32
 	  MCUs and MPUs.
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index f93f7e504b4f..fff9903d1d35 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -87,7 +87,7 @@ config NAND_OMAP_GPMC
 
 config MTD_NAND_OMAP_ELM
 	bool "Support for ELM (Error Location Module) on OMAP platforms"
-	depends on NAND_OMAP_GPMC
+	depends on NAND_OMAP_GPMC || COMPILE_TEST
 	help
 	  This config enables the ELM hardware engine, which can be used to
 	  locate and correct errors when using BCH ECC scheme. This offloads
@@ -98,14 +98,14 @@ config MTD_NAND_OMAP_ELM
 config NAND_ORION
 	bool
 	prompt "Marvell Orion NAND driver"
-	depends on ARCH_KIRKWOOD
+	depends on ARCH_KIRKWOOD || COMPILE_TEST
 	help
 	  Support for the Orion NAND controller, present in Kirkwood SoCs.
 
 config NAND_MRVL_NFC
 	bool
 	prompt "Marvell PXA3xx NAND driver"
-	depends on ARCH_ARMADA_370 || ARCH_ARMADA_XP || ARCH_PXA3XX
+	depends on ARCH_ARMADA_370 || ARCH_ARMADA_XP || ARCH_PXA3XX || COMPILE_TEST
 	help
 	  Support for the PXA3xx NAND controller, present in Armada 370/XP and
 	  PXA3xx SoCs.
@@ -118,7 +118,7 @@ config NAND_ATMEL
 config NAND_ATMEL_PMECC
 	bool
 	prompt "PMECC support"
-	depends on NAND_ATMEL
+	depends on NAND_ATMEL || COMPILE_TEST
 	select NAND_ECC_HW
 	help
 	  Support for PMECC present on the SoC sam9x5 and sam9n12
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index efa16b30e40e..9bb498527557 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -45,7 +45,7 @@ config DRIVER_NET_CALXEDA_XGMAC
 
 config DRIVER_NET_CS8900
 	bool "cs8900 ethernet driver"
-	depends on HAS_CS8900
+	depends on HAS_CS8900 || COMPILE_TEST
 
 config DRIVER_NET_CPSW
 	bool "CPSW ethernet driver"
@@ -75,7 +75,7 @@ config DRIVER_NET_DESIGNWARE_GENERIC
 
 config DRIVER_NET_DESIGNWARE_SOCFPGA
 	bool "Designware Universal MAC ethernet driver for SoCFPGA platforms"
-	depends on ARCH_SOCFPGA
+	depends on ARCH_SOCFPGA || COMPILE_TEST
 	select MFD_SYSCON
 	select RESET_CONTROLLER
 	help
@@ -112,7 +112,7 @@ endif
 
 config DRIVER_NET_DM9K
 	bool "Davicom dm9k[E|A|B] ethernet driver"
-	depends on HAS_DM9000
+	depends on HAS_DM9000 || COMPILE_TEST
 	select PHYLIB
 
 config DRIVER_NET_E1000
@@ -154,7 +154,7 @@ config DRIVER_NET_ETHOC
 
 config DRIVER_NET_FEC_IMX
 	bool "i.MX FEC Ethernet driver"
-	depends on ARCH_HAS_FEC_IMX
+	depends on ARCH_HAS_FEC_IMX || COMPILE_TEST
 	select PHYLIB
 
 config DRIVER_NET_FSL_FMAN
@@ -179,7 +179,7 @@ config DRIVER_NET_KS8851_MLL
 
 config DRIVER_NET_MACB
 	bool "macb Ethernet driver"
-	depends on HAS_MACB
+	depends on HAS_MACB || COMPILE_TEST
 	select PHYLIB
 
 config DRIVER_NET_MICREL
diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 2806af376fbe..6cb162a43777 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -68,7 +68,7 @@ comment "MII bus device drivers"
 
 config MDIO_MVEBU
 	bool "Driver for MVEBU SoC MDIO bus"
-	depends on ARCH_MVEBU
+	depends on ARCH_MVEBU || COMPILE_TEST
 	help
 	  Driver for the MDIO bus found on Marvell EBU SoCs.
 
diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index 025c418f2bcf..542d734c3c8e 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -49,7 +49,7 @@ config PCI_IMX6
 
 config PCI_LAYERSCAPE
 	bool "Freescale Layerscape PCIe controller"
-	depends on ARCH_LAYERSCAPE
+	depends on ARCH_LAYERSCAPE || COMPILE_TEST
 	select PCIE_DW
 	select OF_PCI
 	select PCI
diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index b5c8e98b9e48..0b513b68d0ef 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -26,7 +26,7 @@ source "drivers/phy/freescale/Kconfig"
 
 config PHY_STM32_USBPHYC
 	tristate "STM32 USB HS PHY Controller"
-	depends on ARCH_STM32MP
+	depends on ARCH_STM32MP || COMPILE_TEST
 	help
 	  Enable this to support the High-Speed USB transceivers that are part
 	  of some STMicroelectronics STM32 SoCs.
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 4f05f5d49458..5553571983d2 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -19,7 +19,7 @@ config PINCTRL_AT91
 
 config PINCTRL_BCM283X
 	bool "GPIO and pinmux support for BCM283X"
-	depends on ARCH_BCM283X
+	depends on ARCH_BCM283X || COMPILE_TEST
 	help
 	    The pinmux controller on BCM2835
 
@@ -57,7 +57,7 @@ config PINCTRL_AT91PIO4
 
 config PINCTRL_MXS
 	bool "MXS pinctrl"
-	depends on ARCH_MXS
+	depends on ARCH_MXS || COMPILE_TEST
 	default ARCH_MXS
 	help
 	  This pinmux controller is found on i.MX23,28
diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index f4aead19fd26..478ea49eede7 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -18,7 +18,7 @@ config PWM_PXA
 
 config PWM_IMX
 	bool "i.MX PWM Support"
-	depends on ARCH_IMX
+	depends on ARCH_IMX || COMPILE_TEST
 	help
 	  This enables PWM support for Freescale i.MX SoCs
 
@@ -31,7 +31,7 @@ config PWM_MXS
 
 config PWM_STM32
 	bool "STM32 PWM Support"
-	depends on ARCH_STM32MP
+	depends on ARCH_STM32MP || COMPILE_TEST
 	help
 	  This enables PWM support for STM32 MCUs and MPUs.
 
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index fe979d930698..d9734ef58895 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -18,7 +18,7 @@ config WATCHDOG_POLLER
 
 config WATCHDOG_AR9344
 	bool "QCA AR9344"
-	depends on SOC_QCA_AR9344 || SOC_QCA_AR9331
+	depends on SOC_QCA_AR9344 || SOC_QCA_AR9331 || COMPILE_TEST
 	help
 	  Add support for watchdog on the QCA AR9344 SoC.
 
@@ -30,7 +30,7 @@ config WATCHDOG_EFI
 
 config WATCHDOG_DAVINCI
 	bool "TI Davinci"
-	depends on ARCH_DAVINCI
+	depends on ARCH_DAVINCI || COMPILE_TEST
 	help
 	  Add support for watchdog on the TI Davinci SoC.
 
@@ -42,31 +42,31 @@ config WATCHDOG_DW
 
 config WATCHDOG_MXS28
 	bool "i.MX28"
-	depends on ARCH_IMX28
+	depends on ARCH_IMX28 || COMPILE_TEST
 	help
 	  Add support for watchdog management for the i.MX28 SoC.
 
 config WATCHDOG_IMX
 	bool "i.MX watchdog"
-	depends on ARCH_IMX || ARCH_LAYERSCAPE
+	depends on ARCH_IMX || ARCH_LAYERSCAPE || COMPILE_TEST
 	help
 	  Add support for watchdog found on Freescale i.MX SoCs.
 
 config WATCHDOG_JZ4740
 	bool "Ingenic jz4740 SoC hardware watchdog"
-	depends on MACH_MIPS_XBURST
+	depends on MACH_MIPS_XBURST || COMPILE_TEST
 	help
 	  Hardware driver for the built-in watchdog timer on Ingenic jz4740 SoCs.
 
 config WATCHDOG_OMAP
 	bool "TI OMAP"
-	depends on ARCH_OMAP
+	depends on ARCH_OMAP || COMPILE_TEST
 	help
 	  Add support for watchdog on the TI OMAP SoC.
 
 config WATCHDOG_ORION
 	bool "Watchdog for Armada XP"
-	depends on ARCH_ARMADA_XP
+	depends on ARCH_ARMADA_XP || COMPILE_TEST
 	help
 	  Add support for watchdog on the Marvall Armada XP
 
@@ -78,7 +78,7 @@ config WATCHDOG_KVX
 
 config WATCHDOG_BCM2835
 	bool "Watchdog for BCM283x SoCs"
-	depends on ARCH_BCM283X
+	depends on ARCH_BCM283X || COMPILE_TEST
 	help
 	  Add support for watchdog on the Broadcom BCM283X SoCs.
 
@@ -90,7 +90,7 @@ config RAVE_SP_WATCHDOG
 
 config STM32_IWDG_WATCHDOG
 	bool "STM32 IWDG"
-	depends on ARCH_STM32MP
+	depends on ARCH_STM32MP || COMPILE_TEST
 	select MFD_SYSCON
 	help
 	  Enable to support configuration of the STM32's on-SoC IWDG watchdog.
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
