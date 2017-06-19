Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMxbg-0003Kz-I7
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 14:24:46 +0000
Received: by mail-pf0-x242.google.com with SMTP id y7so17279005pfd.3
 for <barebox@lists.infradead.org>; Mon, 19 Jun 2017 07:24:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 19 Jun 2017 07:23:55 -0700
Message-Id: <20170619142355.17429-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: Update zii_vf610_dev_defconfig
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>

Update zii_vf610_dev_defconfig to add needed and remove unused
features.

Signed-off-by: Chris Healy <cphealy@gmail.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/configs/zii_vf610_dev_defconfig | 39 ++++++++------------------------
 1 file changed, 9 insertions(+), 30 deletions(-)

diff --git a/arch/arm/configs/zii_vf610_dev_defconfig b/arch/arm/configs/zii_vf610_dev_defconfig
index bda6044..e2cb658 100644
--- a/arch/arm/configs/zii_vf610_dev_defconfig
+++ b/arch/arm/configs/zii_vf610_dev_defconfig
@@ -1,9 +1,6 @@
 CONFIG_ARCH_IMX=y
 CONFIG_IMX_MULTI_BOARDS=y
-CONFIG_MACH_SABRESD=y
 CONFIG_MACH_ZII_VF610_DEV=y
-CONFIG_IMX_IIM=y
-CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
@@ -23,6 +20,7 @@ CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BLSPEC=y
+CONFIG_CONSOLE_RATP=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
@@ -63,7 +61,6 @@ CONFIG_CMD_EDIT=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_MENUTREE=y
-CONFIG_CMD_SPLASH=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
@@ -76,7 +73,6 @@ CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
-CONFIG_CMD_NANDTEST=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_USBGADGET=y
@@ -89,32 +85,28 @@ CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
+CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_AIODEV=y
+CONFIG_LM75=y
 CONFIG_DRIVER_NET_FEC_IMX=y
-CONFIG_AT803X_PHY=y
+CONFIG_MARVELL_PHY=y
 CONFIG_MICREL_PHY=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 CONFIG_NET_USB_SMSC95XX=y
 CONFIG_DRIVER_SPI_IMX=y
-CONFIG_DRIVER_SPI_DSPI=y
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
+CONFIG_I2C_MUX=y
+CONFIG_I2C_MUX_PCA954x=y
 CONFIG_MTD=y
 CONFIG_MTD_RAW_DEVICE=y
 CONFIG_MTD_DATAFLASH=y
 CONFIG_MTD_M25P80=y
 CONFIG_MTD_SST25L=y
-CONFIG_NAND=y
-CONFIG_NAND_ALLOW_ERASE_BAD=y
-CONFIG_NAND_IMX=y
-CONFIG_NAND_IMX_BBM=y
 CONFIG_MTD_UBI=y
 CONFIG_MTD_UBI_FASTMAP=y
-CONFIG_DISK_AHCI=y
-CONFIG_DISK_AHCI_IMX=y
-CONFIG_DISK_INTF_PLATFORM_IDE=y
-CONFIG_DISK_PATA_IMX=y
 CONFIG_USB_HOST=y
 CONFIG_USB_IMX_CHIPIDEA=y
 CONFIG_USB_EHCI=y
@@ -124,31 +116,18 @@ CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_USB_GADGET_FASTBOOT=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_IMX_IPUV3=y
-CONFIG_DRIVER_VIDEO_IMX_IPUV3_LVDS=y
-CONFIG_DRIVER_VIDEO_IMX_IPUV3_HDMI=y
-CONFIG_DRIVER_VIDEO_SIMPLEFB=y
-CONFIG_DRIVER_VIDEO_EDID=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_IMX_ESDHC=y
-CONFIG_MFD_MC13XXX=y
-CONFIG_MFD_MC34704=y
-CONFIG_MFD_MC9SDZ60=y
-CONFIG_MFD_STMPE=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_EEPROM_AT25=y
 CONFIG_EEPROM_AT24=y
-CONFIG_KEYBOARD_GPIO=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_IMX=y
-CONFIG_PWM=y
-CONFIG_PWM_IMX=y
-CONFIG_GPIO_STMPE=y
+CONFIG_GPIO_PCA953X=y
 CONFIG_GPIO_SX150X=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
@@ -162,4 +141,4 @@ CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
 CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
-CONFIG_PNG=y
+CONFIG_ZLIB=y
-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
