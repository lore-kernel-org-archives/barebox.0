Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUnI-0001yG-Jf
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 07:54:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Sep 2019 09:54:21 +0200
Message-Id: <20190918075421.20456-17-s.hauer@pengutronix.de>
In-Reply-To: <20190918075421.20456-1-s.hauer@pengutronix.de>
References: <20190918075421.20456-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/16] ARM: add common i.MX23 defconfig file
To: Barebox List <barebox@lists.infradead.org>

Merge the defconfigs for the i.MX23 boards into a common
imx23_defconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/chumbyone_defconfig          | 46 ----------------
 arch/arm/configs/freescale-mx23-evk_defconfig | 28 ----------
 ...33-olinuxino_defconfig => imx23_defconfig} | 54 +++++++++++--------
 3 files changed, 31 insertions(+), 97 deletions(-)
 delete mode 100644 arch/arm/configs/chumbyone_defconfig
 delete mode 100644 arch/arm/configs/freescale-mx23-evk_defconfig
 rename arch/arm/configs/{imx233-olinuxino_defconfig => imx23_defconfig} (72%)

diff --git a/arch/arm/configs/chumbyone_defconfig b/arch/arm/configs/chumbyone_defconfig
deleted file mode 100644
index 2b38b8cf88..0000000000
--- a/arch/arm/configs/chumbyone_defconfig
+++ /dev/null
@@ -1,46 +0,0 @@
-CONFIG_ARCH_MXS=y
-CONFIG_MACH_CHUMBY=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_PROMPT="chumby:"
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/chumby_falconwing/env"
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_GETOPT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_GPIO=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
-CONFIG_NET_USB=y
-CONFIG_NET_USB_ASIX=y
-# CONFIG_SPI is not set
-CONFIG_USB_HOST=y
-CONFIG_USB_EHCI=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_STM=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/freescale-mx23-evk_defconfig b/arch/arm/configs/freescale-mx23-evk_defconfig
deleted file mode 100644
index 2b12e297b3..0000000000
--- a/arch/arm/configs/freescale-mx23-evk_defconfig
+++ /dev/null
@@ -1,28 +0,0 @@
-CONFIG_ARCH_MXS=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_RESET_SOURCE=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-# CONFIG_SPI is not set
-CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_DFU=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_MXS=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/imx233-olinuxino_defconfig b/arch/arm/configs/imx23_defconfig
similarity index 72%
rename from arch/arm/configs/imx233-olinuxino_defconfig
rename to arch/arm/configs/imx23_defconfig
index 15d15a0b9d..26c63814b9 100644
--- a/arch/arm/configs/imx233-olinuxino_defconfig
+++ b/arch/arm/configs/imx23_defconfig
@@ -1,11 +1,13 @@
 CONFIG_ARCH_MXS=y
+CONFIG_MACH_MX23EVK=y
+CONFIG_MACH_CHUMBY=y
 CONFIG_MACH_IMX233_OLINUXINO=y
 CONFIG_MXS_OCOTP=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x1000000
+CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
@@ -16,11 +18,8 @@ CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BLSPEC=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_COMPRESSION_LZO=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
 CONFIG_CMD_DMESG=y
@@ -31,9 +30,9 @@ CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
-CONFIG_CMD_DEFAULTENV=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
@@ -44,7 +43,6 @@ CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_LN=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SHA224SUM=y
 CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LET=y
@@ -56,35 +54,42 @@ CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_MENUTREE=y
 CONFIG_CMD_SPLASH=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_2048=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_NANDTEST=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_USBGADGET=y
+CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_DISPLAY_TIMINGS=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_AUART=y
-CONFIG_NET_USB=y
-CONFIG_NET_USB_SMSC95XX=y
-# CONFIG_SPI is not set
-CONFIG_USB_HOST=y
-CONFIG_USB_EHCI=y
-CONFIG_USB_STORAGE=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_MXS=y
+CONFIG_MTD_UBI=y
+CONFIG_MTD_UBI_FASTMAP=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_USB_GADGET_FASTBOOT=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_STM=y
 CONFIG_MCI=y
@@ -92,14 +97,17 @@ CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MXS=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
 CONFIG_LED_TRIGGERS=y
-CONFIG_KEYBOARD_GPIO=y
+CONFIG_EEPROM_AT24=y
+CONFIG_WATCHDOG=y
 CONFIG_MXS_APBH_DMA=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
+CONFIG_FS_UBIFS=y
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
