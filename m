Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X87X4-0006ij-4a
 for barebox@lists.infradead.org; Fri, 18 Jul 2014 12:45:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Jul 2014 14:44:36 +0200
Message-Id: <1405687479-3507-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405687479-3507-1-git-send-email-s.hauer@pengutronix.de>
References: <1405687479-3507-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] USB: Kconfig: introduce USB_HOST symbol
To: barebox@lists.infradead.org

This renames USB to USB_HOST since this is what the symbol really
means. Introduce a USB symbol which is selected by both USB_GADGET
and USB_HOST. This gives us a symbol to let common USB code depend
on.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_defconfig                  |  2 +-
 arch/arm/configs/animeo_ip_defconfig               |  2 +-
 arch/arm/configs/archosg9_defconfig                |  2 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig        |  2 +-
 arch/arm/configs/at91sam9m10ihd_defconfig          |  2 +-
 arch/arm/configs/at91sam9x5ek_defconfig            |  2 +-
 arch/arm/configs/ccmx51_defconfig                  |  2 +-
 arch/arm/configs/chumbyone_defconfig               |  2 +-
 arch/arm/configs/dss11_defconfig                   |  2 +-
 arch/arm/configs/efika-mx-smartbook_defconfig      |  2 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |  2 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |  2 +-
 arch/arm/configs/freescale-mx25-3ds_defconfig      |  2 +-
 arch/arm/configs/freescale-mx6-arm2_defconfig      |  2 +-
 arch/arm/configs/friendlyarm_mini2440_defconfig    |  2 +-
 arch/arm/configs/imx233-olinuxino_defconfig        |  2 +-
 arch/arm/configs/imx_defconfig                     |  2 +-
 arch/arm/configs/imx_v7_defconfig                  |  2 +-
 arch/arm/configs/module-mb7707_defconfig           |  2 +-
 arch/arm/configs/neso_defconfig                    |  2 +-
 arch/arm/configs/omap3530_beagle_defconfig         |  2 +-
 arch/arm/configs/panda_defconfig                   |  2 +-
 arch/arm/configs/phytec-phycore-imx31_defconfig    |  2 +-
 arch/arm/configs/phytec-phycore-omap4460_defconfig |  2 +-
 arch/arm/configs/pm9g45_defconfig                  |  2 +-
 arch/arm/configs/solidrun_cubox_defconfig          |  2 +-
 commands/Kconfig                                   |  2 +-
 drivers/net/usb/Kconfig                            |  2 +-
 drivers/usb/Kconfig                                | 10 +++++++---
 drivers/usb/core/Makefile                          |  2 +-
 drivers/usb/gadget/Kconfig                         |  1 +
 31 files changed, 37 insertions(+), 32 deletions(-)

diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_defconfig
index 0c92c96..8af38e5 100644
--- a/arch/arm/configs/am335x_defconfig
+++ b/arch/arm/configs/am335x_defconfig
@@ -95,7 +95,7 @@ CONFIG_MTD_M25P80=y
 CONFIG_NAND=y
 CONFIG_NAND_OMAP_GPMC=y
 CONFIG_MTD_UBI=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index ca8d2f1..825c5e4 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -66,7 +66,7 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_OHCI=y
 CONFIG_USB_OHCI_AT91=y
 CONFIG_MCI=y
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index 0a6ad68..66fbf1a 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -77,7 +77,7 @@ CONFIG_NET_USB_SMSC95XX=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_OMAP=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index b088976..02bb983 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -74,7 +74,7 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_EHCI_ATMEL=y
 CONFIG_USB_STORAGE=y
diff --git a/arch/arm/configs/at91sam9m10ihd_defconfig b/arch/arm/configs/at91sam9m10ihd_defconfig
index c3df023..cc40850 100644
--- a/arch/arm/configs/at91sam9m10ihd_defconfig
+++ b/arch/arm/configs/at91sam9m10ihd_defconfig
@@ -76,7 +76,7 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_EHCI_ATMEL=y
 CONFIG_USB_STORAGE=y
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index 93975d4..48c88bd 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -70,7 +70,7 @@ CONFIG_NAND=y
 CONFIG_NAND_ATMEL=y
 CONFIG_NAND_ATMEL_PMECC=y
 CONFIG_UBI=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_EHCI_ATMEL=y
 CONFIG_USB_STORAGE=y
diff --git a/arch/arm/configs/ccmx51_defconfig b/arch/arm/configs/ccmx51_defconfig
index cc2baa2..4c54d4d 100644
--- a/arch/arm/configs/ccmx51_defconfig
+++ b/arch/arm/configs/ccmx51_defconfig
@@ -50,7 +50,7 @@ CONFIG_I2C_IMX=y
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_IMX=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_IMX_CHIPIDEA=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_ULPI=y
diff --git a/arch/arm/configs/chumbyone_defconfig b/arch/arm/configs/chumbyone_defconfig
index 5eb5962..92b59b8 100644
--- a/arch/arm/configs/chumbyone_defconfig
+++ b/arch/arm/configs/chumbyone_defconfig
@@ -43,7 +43,7 @@ CONFIG_NET_RESOLV=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 # CONFIG_SPI is not set
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_STM=y
diff --git a/arch/arm/configs/dss11_defconfig b/arch/arm/configs/dss11_defconfig
index 0785b9a..f15fb6b 100644
--- a/arch/arm/configs/dss11_defconfig
+++ b/arch/arm/configs/dss11_defconfig
@@ -31,7 +31,7 @@ CONFIG_NAND=y
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
 CONFIG_DISK_WRITE=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_OHCI=y
 CONFIG_USB_OHCI_AT91=y
 CONFIG_USB_STORAGE=y
diff --git a/arch/arm/configs/efika-mx-smartbook_defconfig b/arch/arm/configs/efika-mx-smartbook_defconfig
index 753e9b6..c078ff1 100644
--- a/arch/arm/configs/efika-mx-smartbook_defconfig
+++ b/arch/arm/configs/efika-mx-smartbook_defconfig
@@ -89,7 +89,7 @@ CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_DISK_INTF_PLATFORM_IDE=y
 CONFIG_DISK_PATA_IMX=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_IMX_CHIPIDEA=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_ULPI=y
diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
index e81fb70..7f7776d 100644
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -65,7 +65,7 @@ CONFIG_MTD=y
 CONFIG_MTD_RAW_DEVICE=y
 CONFIG_NAND=y
 CONFIG_NAND_IMX=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_GADGET=y
diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
index bec7336..7569cde 100644
--- a/arch/arm/configs/eukrea_cpuimx35_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
@@ -66,7 +66,7 @@ CONFIG_MTD=y
 CONFIG_MTD_RAW_DEVICE=y
 CONFIG_NAND=y
 CONFIG_NAND_IMX=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_GADGET=y
diff --git a/arch/arm/configs/freescale-mx25-3ds_defconfig b/arch/arm/configs/freescale-mx25-3ds_defconfig
index 65d8f20..ead8cbf 100644
--- a/arch/arm/configs/freescale-mx25-3ds_defconfig
+++ b/arch/arm/configs/freescale-mx25-3ds_defconfig
@@ -53,7 +53,7 @@ CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_ZLIB=y
 CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/freescale-mx6-arm2_defconfig b/arch/arm/configs/freescale-mx6-arm2_defconfig
index 7489c47..f4119f0 100644
--- a/arch/arm/configs/freescale-mx6-arm2_defconfig
+++ b/arch/arm/configs/freescale-mx6-arm2_defconfig
@@ -54,7 +54,7 @@ CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 CONFIG_NET_USB_SMSC95XX=y
 # CONFIG_SPI is not set
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
diff --git a/arch/arm/configs/friendlyarm_mini2440_defconfig b/arch/arm/configs/friendlyarm_mini2440_defconfig
index 6cbafef..25db5be 100644
--- a/arch/arm/configs/friendlyarm_mini2440_defconfig
+++ b/arch/arm/configs/friendlyarm_mini2440_defconfig
@@ -36,7 +36,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_OHCI=y
 CONFIG_MCI=y
 CONFIG_MCI_S3C=y
diff --git a/arch/arm/configs/imx233-olinuxino_defconfig b/arch/arm/configs/imx233-olinuxino_defconfig
index 3f444f1..75b5911 100644
--- a/arch/arm/configs/imx233-olinuxino_defconfig
+++ b/arch/arm/configs/imx233-olinuxino_defconfig
@@ -47,7 +47,7 @@ CONFIG_NET_RESOLV=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_SMSC95XX=y
 CONFIG_DISK_INTF_PLATFORM_IDE=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
 CONFIG_VIDEO=y
diff --git a/arch/arm/configs/imx_defconfig b/arch/arm/configs/imx_defconfig
index 8751ccc..c106f39 100644
--- a/arch/arm/configs/imx_defconfig
+++ b/arch/arm/configs/imx_defconfig
@@ -92,7 +92,7 @@ CONFIG_NAND=y
 CONFIG_NAND_IMX=y
 CONFIG_MTD_UBI=y
 CONFIG_MTD_UBI_FASTMAP=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_ULPI=y
 CONFIG_MCI=y
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 66fc123..eca244d 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -127,7 +127,7 @@ CONFIG_DISK_AHCI=y
 CONFIG_DISK_AHCI_IMX=y
 CONFIG_DISK_INTF_PLATFORM_IDE=y
 CONFIG_DISK_PATA_IMX=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_IMX_CHIPIDEA=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_ULPI=y
diff --git a/arch/arm/configs/module-mb7707_defconfig b/arch/arm/configs/module-mb7707_defconfig
index 9a4f1d1..843dd59 100644
--- a/arch/arm/configs/module-mb7707_defconfig
+++ b/arch/arm/configs/module-mb7707_defconfig
@@ -41,7 +41,7 @@ CONFIG_CMD_TIME=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 # CONFIG_SPI is not set
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
 CONFIG_CLOCKSOURCE_DUMMY=y
diff --git a/arch/arm/configs/neso_defconfig b/arch/arm/configs/neso_defconfig
index 846eca0..278916a 100644
--- a/arch/arm/configs/neso_defconfig
+++ b/arch/arm/configs/neso_defconfig
@@ -66,7 +66,7 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 CONFIG_NAND_IMX=y
 CONFIG_UBI=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_ULPI=y
 CONFIG_VIDEO=y
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index 1ef4825..3068fbb 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -73,7 +73,7 @@ CONFIG_I2C_OMAP=y
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_OMAP_GPMC=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_EHCI_OMAP=y
 CONFIG_USB_TWL4030=y
diff --git a/arch/arm/configs/panda_defconfig b/arch/arm/configs/panda_defconfig
index dab407c..3399bd2 100644
--- a/arch/arm/configs/panda_defconfig
+++ b/arch/arm/configs/panda_defconfig
@@ -69,7 +69,7 @@ CONFIG_NET_USB_SMSC95XX=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_OMAP=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
diff --git a/arch/arm/configs/phytec-phycore-imx31_defconfig b/arch/arm/configs/phytec-phycore-imx31_defconfig
index 7f19b4a..b83f74a 100644
--- a/arch/arm/configs/phytec-phycore-imx31_defconfig
+++ b/arch/arm/configs/phytec-phycore-imx31_defconfig
@@ -76,7 +76,7 @@ CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_IMX=y
 CONFIG_UBI=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/phytec-phycore-omap4460_defconfig b/arch/arm/configs/phytec-phycore-omap4460_defconfig
index 8d5543f..4c7042c 100644
--- a/arch/arm/configs/phytec-phycore-omap4460_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460_defconfig
@@ -61,7 +61,7 @@ CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_OMAP_GPMC=y
 CONFIG_UBI=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_OMAP=y
 CONFIG_IMAGE_RENDERER=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index 2079bcf..d3a5624 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -50,7 +50,7 @@ CONFIG_NAND=y
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
 CONFIG_DISK_ATA=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_OHCI=y
 CONFIG_USB_OHCI_AT91=y
 CONFIG_USB_STORAGE=y
diff --git a/arch/arm/configs/solidrun_cubox_defconfig b/arch/arm/configs/solidrun_cubox_defconfig
index 2937949..7ba42a9 100644
--- a/arch/arm/configs/solidrun_cubox_defconfig
+++ b/arch/arm/configs/solidrun_cubox_defconfig
@@ -80,7 +80,7 @@ CONFIG_I2C=y
 CONFIG_MTD=y
 CONFIG_MTD_M25P80=y
 CONFIG_DISK_AHCI=y
-CONFIG_USB=y
+CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
diff --git a/commands/Kconfig b/commands/Kconfig
index 61816f5..174a5b6 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1818,7 +1818,7 @@ config CMD_LED_TRIGGER
 
 config CMD_USB
 	bool
-	depends on USB
+	depends on USB_HOST
 	prompt "usb command"
 	default y
 	help
diff --git a/drivers/net/usb/Kconfig b/drivers/net/usb/Kconfig
index adb1b0b..5bad954 100644
--- a/drivers/net/usb/Kconfig
+++ b/drivers/net/usb/Kconfig
@@ -1,5 +1,5 @@
 menuconfig NET_USB
-	depends on USB
+	depends on USB_HOST
 	bool "USB network support"
 
 if NET_USB
diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
index 0b349bf..eedd20e 100644
--- a/drivers/usb/Kconfig
+++ b/drivers/usb/Kconfig
@@ -1,7 +1,11 @@
-menuconfig USB
-	bool "USB support"
+config USB
+	bool
 
-if USB
+menuconfig USB_HOST
+	select USB
+	bool "USB Host support"
+
+if USB_HOST
 
 source drivers/usb/imx/Kconfig
 
diff --git a/drivers/usb/core/Makefile b/drivers/usb/core/Makefile
index 368fb56..a74f141 100644
--- a/drivers/usb/core/Makefile
+++ b/drivers/usb/core/Makefile
@@ -1,3 +1,3 @@
 
-obj-y += usb.o
+obj-$(CONFIG_USB_HOST) += usb.o
 obj-$(CONFIG_OFDEVICE) += of.o
diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 97a7d21..7d5a346 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -4,6 +4,7 @@ config USB_HAVE_GADGET_DRIVER
 
 menuconfig USB_GADGET
 	depends on USB_HAVE_GADGET_DRIVER
+	select USB
 	bool "USB gadget support"
 
 if USB_GADGET
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
