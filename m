Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XWJ75-0006eh-BR
 for barebox@lists.infradead.org; Tue, 23 Sep 2014 05:58:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Sep 2014 07:57:43 +0200
Message-Id: <1411451863-19245-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: defconfig: remove board specific mvebu defconfigs
To: barebox@lists.infradead.org

The boards are now covered by mvebu_defconfig

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/globalscale_guruplug_defconfig    |  6 --
 arch/arm/configs/globalscale_mirabox_defconfig     |  8 --
 arch/arm/configs/marvell_armada_xp_gp_defconfig    | 10 ---
 arch/arm/configs/plathome_openblocks_ax3_defconfig |  9 --
 arch/arm/configs/solidrun_cubox_defconfig          | 98 ----------------------
 5 files changed, 131 deletions(-)
 delete mode 100644 arch/arm/configs/globalscale_guruplug_defconfig
 delete mode 100644 arch/arm/configs/globalscale_mirabox_defconfig
 delete mode 100644 arch/arm/configs/marvell_armada_xp_gp_defconfig
 delete mode 100644 arch/arm/configs/plathome_openblocks_ax3_defconfig
 delete mode 100644 arch/arm/configs/solidrun_cubox_defconfig

diff --git a/arch/arm/configs/globalscale_guruplug_defconfig b/arch/arm/configs/globalscale_guruplug_defconfig
deleted file mode 100644
index d21de45..0000000
--- a/arch/arm/configs/globalscale_guruplug_defconfig
+++ /dev/null
@@ -1,6 +0,0 @@
-CONFIG_ARCH_MVEBU=y
-CONFIG_ARCH_KIRKWOOD=y
-CONFIG_TEXT_BASE=0x2000000
-CONFIG_DEBUG_LL=y
-CONFIG_CMD_RESET=y
-CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/globalscale_mirabox_defconfig b/arch/arm/configs/globalscale_mirabox_defconfig
deleted file mode 100644
index ed9d94d..0000000
--- a/arch/arm/configs/globalscale_mirabox_defconfig
+++ /dev/null
@@ -1,8 +0,0 @@
-CONFIG_ARCH_MVEBU=y
-CONFIG_AEABI=y
-CONFIG_DEBUG_LL=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_LOADS=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_CLK=y
-CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/marvell_armada_xp_gp_defconfig b/arch/arm/configs/marvell_armada_xp_gp_defconfig
deleted file mode 100644
index 5a7ef52..0000000
--- a/arch/arm/configs/marvell_armada_xp_gp_defconfig
+++ /dev/null
@@ -1,10 +0,0 @@
-CONFIG_ARCH_MVEBU=y
-CONFIG_ARCH_ARMADA_XP=y
-CONFIG_MACH_MARVELL_ARMADA_XP_GP=y
-CONFIG_AEABI=y
-CONFIG_DEBUG_LL=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_LOADS=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_CLK=y
-CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/plathome_openblocks_ax3_defconfig b/arch/arm/configs/plathome_openblocks_ax3_defconfig
deleted file mode 100644
index 95449c9..0000000
--- a/arch/arm/configs/plathome_openblocks_ax3_defconfig
+++ /dev/null
@@ -1,9 +0,0 @@
-CONFIG_ARCH_MVEBU=y
-CONFIG_ARCH_ARMADA_XP=y
-CONFIG_AEABI=y
-CONFIG_DEBUG_LL=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_LOADS=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_CLK=y
-CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/solidrun_cubox_defconfig b/arch/arm/configs/solidrun_cubox_defconfig
deleted file mode 100644
index 7ba42a9..0000000
--- a/arch/arm/configs/solidrun_cubox_defconfig
+++ /dev/null
@@ -1,98 +0,0 @@
-CONFIG_ARCH_MVEBU=y
-CONFIG_ARCH_DOVE=y
-CONFIG_THUMB2_BAREBOX=y
-CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x0
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_RELOCATABLE=y
-CONFIG_LONGHELP=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMD_GETOPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_CONSOLE_ACTIVATE_NONE=y
-CONFIG_PARTITION_DISK_EFI=y
-CONFIG_DEBUG_LL=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_GLOBAL=y
-CONFIG_CMD_AUTOMOUNT=y
-CONFIG_CMD_BASENAME=y
-CONFIG_CMD_DIRNAME=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_READLINK=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_LOADS=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
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
-CONFIG_CMD_UIMAGE=y
-CONFIG_FLEXIBLE_BOOTARGS=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_WD=y
-CONFIG_OFDEVICE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SPI_MVEBU=y
-CONFIG_I2C=y
-CONFIG_MTD=y
-CONFIG_MTD_M25P80=y
-CONFIG_DISK_AHCI=y
-CONFIG_USB_HOST=y
-CONFIG_USB_EHCI=y
-CONFIG_USB_STORAGE=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_MMC_BOOT_PARTITIONS=y
-CONFIG_LED=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_WATCHDOG=y
-CONFIG_FS_CRAMFS=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_BZLIB=y
-CONFIG_LZO_DECOMPRESS=y
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
