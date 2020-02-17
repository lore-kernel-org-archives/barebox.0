Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3foI-0000sL-Gq
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:47:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:23 +0100
Message-Id: <20200217124623.14520-43-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 42/42] ARM: i.MX: update imx_v8_defconfig for i.MX8MM
To: Barebox List <barebox@lists.infradead.org>

Enable support for the i.MX8MM EVK and some of its peripherals.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/imx_v8_defconfig | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index 4571ef6902..06fb406084 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_IMX=y
 CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_ZII_IMX8MQ_DEV=y
+CONFIG_MACH_NXP_IMX8MM_EVK=y
 CONFIG_MACH_NXP_IMX8MQ_EVK=y
 CONFIG_MACH_PHYTEC_SOM_IMX8MQ=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -19,6 +20,7 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_PBL_CONSOLE=y
 CONFIG_CONSOLE_RATP=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
@@ -70,6 +72,7 @@ CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_USBGADGET=y
 CONFIG_CMD_WD=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_NODE=y
@@ -88,12 +91,22 @@ CONFIG_NET_DSA_MV88E6XXX=y
 CONFIG_MDIO_BITBANG=y
 CONFIG_MDIO_GPIO=y
 CONFIG_MDIO_BUS_MUX_GPIO=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_ASIX=y
+CONFIG_NET_USB_SMSC95XX=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
 CONFIG_MTD=y
 CONFIG_MTD_DATAFLASH=y
 CONFIG_MTD_M25P80=y
+CONFIG_USB_HOST=y
+CONFIG_USB_IMX_CHIPIDEA=y
+CONFIG_USB_STORAGE=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_USB_GADGET_FASTBOOT=y
+CONFIG_USB_GADGET_FASTBOOT_SPARSE=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_IMX_ESDHC=y
@@ -107,13 +120,15 @@ CONFIG_EEPROM_AT24=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_IMX=y
 CONFIG_RAVE_SP_WATCHDOG=y
-CONFIG_NVMEM=y
 CONFIG_IMX_OCOTP=y
 CONFIG_RAVE_SP_EEPROM=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_DS1307=y
+CONFIG_GENERIC_PHY=y
+CONFIG_USB_NOP_XCEIV=y
+CONFIG_PHY_FSL_IMX8MQ_USB=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
@@ -122,4 +137,3 @@ CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
 CONFIG_FS_RATP=y
 CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
