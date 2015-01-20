Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YDZUj-0002JH-Uj
 for barebox@lists.infradead.org; Tue, 20 Jan 2015 14:09:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Jan 2015 15:09:02 +0100
Message-Id: <1421762942-9789-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1421762942-9789-1-git-send-email-s.hauer@pengutronix.de>
References: <1421762942-9789-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: MXS: imx28evk: Update environment and config
To: Barebox List <barebox@lists.infradead.org>

This switches the imx28evk to new environment and updates the
defconfig file for tons of new features.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx28-evk/env/config | 50 -------------------
 arch/arm/configs/freescale-mx28-evk_defconfig | 71 ++++++++++++++++++++-------
 arch/arm/mach-mxs/Kconfig                     |  1 +
 3 files changed, 54 insertions(+), 68 deletions(-)
 delete mode 100644 arch/arm/boards/freescale-mx28-evk/env/config

diff --git a/arch/arm/boards/freescale-mx28-evk/env/config b/arch/arm/boards/freescale-mx28-evk/env/config
deleted file mode 100644
index adbe7f4..0000000
--- a/arch/arm/boards/freescale-mx28-evk/env/config
+++ /dev/null
@@ -1,50 +0,0 @@
-#!/bin/sh
-
-#user=
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.serverip=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.ethaddr=de:ad:be:ef:00:00
-
-# can be either 'tftp', 'nfs', 'nand', 'nor' or 'disk'
-kernel_loc=tftp
-# can be either 'net', 'nand', 'nor', 'disk' or 'initrd'
-rootfs_loc=net
-
-# for flash based rootfs: 'jffs2' or 'ubifs'
-# in case of disk any regular filesystem like 'ext2', 'ext3', 'reiserfs'
-rootfs_type=ext2
-# where is the rootfs in case of 'rootfs_loc=disk' (linux name)
-rootfs_part_linux_dev=mmcblk0p4
-rootfsimage=rootfs-${global.hostname}.$rootfs_type
-
-# where is the kernel image in case of 'kernel_loc=disk'
-kernel_part=disk0.2
-
-kernelimage=zImage-${global.hostname}
-bareboximage=barebox-${global.hostname}.bin
-bareboxenvimage=barebox-${global.hostname}.bin
-
-if [ -n $user ]; then
-	bareboximage="$user"-"$bareboximage"
-	bareboxenvimage="$user"-"$bareboxenvimage"
-	kernelimage="$user"-"$kernelimage"
-	rootfsimage="$user"-"$rootfsimage"
-	nfsroot="/home/$user/nfsroot/${global.hostname}"
-else
-	nfsroot="/path/to/nfs/root"
-fi
-
-autoboot_timeout=3
-
-bootargs="console=ttyAMA0,115200"
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/configs/freescale-mx28-evk_defconfig b/arch/arm/configs/freescale-mx28-evk_defconfig
index b6a6320..22ed7bc 100644
--- a/arch/arm/configs/freescale-mx28-evk_defconfig
+++ b/arch/arm/configs/freescale-mx28-evk_defconfig
@@ -3,37 +3,71 @@ CONFIG_ARCH_IMX28=y
 CONFIG_MACH_MX28EVK=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x43000000
-CONFIG_MALLOC_SIZE=0x800000
-CONFIG_BROKEN=y
-CONFIG_LONGHELP=y
-CONFIG_GLOB=y
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx28-evk/env"
+CONFIG_MENU=y
+CONFIG_BLSPEC=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_CMP=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_HOST=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENUTREE=y
 CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_NANDTEST=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_AUART=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_DRIVER_SPI_MXS=y
@@ -48,4 +82,5 @@ CONFIG_MCI_MXS=y
 CONFIG_MXS_APBH_DMA=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index ef5d223..5b50e82 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -68,6 +68,7 @@ config MACH_TX28
 
 config MACH_MX28EVK
 	bool "mx28-evk"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select MXS_OCOTP
 	select HAVE_PBL_MULTI_IMAGES
 	help
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
