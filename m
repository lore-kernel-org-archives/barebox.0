Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WuybE-0005CF-R4
 for barebox@lists.infradead.org; Thu, 12 Jun 2014 06:35:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Jun 2014 08:34:34 +0200
Message-Id: <1402554874-14055-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1402554874-14055-1-git-send-email-s.hauer@pengutronix.de>
References: <1402554874-14055-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: i.MX53 QSB: Drop board defconfig
To: barebox@lists.infradead.org

imx_v7_defconfig covers the QSB board, no need for a board defconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../arm/boards/freescale-mx53-qsb/env/config-board |   6 --
 arch/arm/configs/freescale-mx53-qsb_defconfig      | 117 ---------------------
 2 files changed, 123 deletions(-)
 delete mode 100644 arch/arm/boards/freescale-mx53-qsb/env/config-board
 delete mode 100644 arch/arm/configs/freescale-mx53-qsb_defconfig

diff --git a/arch/arm/boards/freescale-mx53-qsb/env/config-board b/arch/arm/boards/freescale-mx53-qsb/env/config-board
deleted file mode 100644
index e8e8378..0000000
--- a/arch/arm/boards/freescale-mx53-qsb/env/config-board
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/configs/freescale-mx53-qsb_defconfig b/arch/arm/configs/freescale-mx53-qsb_defconfig
deleted file mode 100644
index efcf284..0000000
--- a/arch/arm/configs/freescale-mx53-qsb_defconfig
+++ /dev/null
@@ -1,117 +0,0 @@
-CONFIG_ARCH_IMX=y
-CONFIG_IMX_MULTI_BOARDS=y
-CONFIG_MACH_FREESCALE_MX53_LOCO=y
-CONFIG_IMX_IIM=y
-CONFIG_IMX_IIM_FUSE_BLOW=y
-CONFIG_THUMB2_BAREBOX=y
-CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BLSPEC=y
-CONFIG_CONSOLE_ACTIVATE_NONE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx53-qsb/env/"
-CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_PASSWD=y
-CONFIG_PASSWD_MODE_STAR=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SHA256SUM=y
-CONFIG_CMD_SHA224SUM=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_BOOTM_AIMAGE=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_WD=y
-CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
-CONFIG_OFDEVICE=y
-CONFIG_SMSC_PHY=y
-CONFIG_DRIVER_NET_FEC_IMX=y
-CONFIG_NET_USB=y
-CONFIG_NET_USB_ASIX=y
-CONFIG_NET_USB_SMSC95XX=y
-# CONFIG_SPI is not set
-CONFIG_I2C=y
-CONFIG_I2C_IMX=y
-CONFIG_DISK_AHCI=y
-CONFIG_DISK_AHCI_IMX=y
-CONFIG_USB=y
-CONFIG_USB_IMX_CHIPIDEA=y
-CONFIG_USB_EHCI=y
-CONFIG_USB_ULPI=y
-CONFIG_USB_STORAGE=y
-CONFIG_MCI=y
-CONFIG_MCI_IMX_ESDHC=y
-CONFIG_MFD_MC13XXX=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_GPIO_OF=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_WATCHDOG=y
-CONFIG_WATCHDOG_IMX=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
