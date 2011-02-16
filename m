Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pplsy-0007ns-6e
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 18:13:58 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Feb 2011 19:13:45 +0100
Message-Id: <1297880025-7184-21-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
References: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 20/20] mini2440: Use generic environment
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/boards/mini2440/env/bin/_update       |   34 ----
 arch/arm/boards/mini2440/env/bin/boot          |   40 ----
 arch/arm/boards/mini2440/env/bin/hush_hack     |    1 -
 arch/arm/boards/mini2440/env/bin/init          |   34 ----
 arch/arm/boards/mini2440/env/bin/update_kernel |   13 --
 arch/arm/boards/mini2440/env/bin/update_root   |   13 --
 arch/arm/configs/mini2440_defconfig            |  226 +-----------------------
 7 files changed, 7 insertions(+), 354 deletions(-)
 delete mode 100644 arch/arm/boards/mini2440/env/bin/_update
 delete mode 100644 arch/arm/boards/mini2440/env/bin/boot
 delete mode 100644 arch/arm/boards/mini2440/env/bin/hush_hack
 delete mode 100644 arch/arm/boards/mini2440/env/bin/init
 delete mode 100644 arch/arm/boards/mini2440/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/mini2440/env/bin/update_root

diff --git a/arch/arm/boards/mini2440/env/bin/_update b/arch/arm/boards/mini2440/env/bin/_update
deleted file mode 100644
index b10682e..0000000
--- a/arch/arm/boards/mini2440/env/bin/_update
+++ /dev/null
@@ -1,34 +0,0 @@
-#!/bin/sh
-
-if [ -z "$part" -o -z "$image" ]; then
-	echo "define \$part and \$image"
-	exit 1
-fi
-
-if [ ! -e "$part" ]; then
-	echo "Partition $part does not exist"
-	exit 1
-fi
-
-if [ $# = 1 ]; then
-	image=$1
-fi
-
-if [ x$ip = xdhcp ]; then
-	dhcp
-fi
-
-ping $eth0.serverip
-if [ $? -ne 0 ] ; then
-	echo "update aborted"
-	exit 1
-fi
-
-echo
-echo "erasing partition $part"
-erase $part
-
-echo
-echo "flashing $image to $part"
-echo
-tftp $image $part
diff --git a/arch/arm/boards/mini2440/env/bin/boot b/arch/arm/boards/mini2440/env/bin/boot
deleted file mode 100644
index 86e22cf..0000000
--- a/arch/arm/boards/mini2440/env/bin/boot
+++ /dev/null
@@ -1,40 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-if [ x$1 = xnand ]; then
-	root=nand
-	kernel=nand
-fi
-
-if [ x$1 = xnet ]; then
-	root=net
-	kernel=net
-fi
-
-if [ x$root = xnand ]; then
-	bootargs="$bootargs root=$rootpart_nand rootfstype=jffs2"
-fi
-if [ x$root = xnet ]; then
-	bootargs="$bootargs root=/dev/nfs nfsroot=$eth0.serverip:$nfsroot,v3,tcp"
-	if [ x$ip = xdhcp ]; then
-		bootargs="$bootargs ip=dhcp"
-	else
-		bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
-	fi
-fi
-
-bootargs="$bootargs mtdparts=\"NAND 32MiB 3,3V 8-bit:$nand_parts\""
-
-bootargs="$bootargs cs89x0_media=rj45 cs89x0_mac=$eth0.ethaddr"
-
-if [ x$kernel = xnet ]; then
-	if [ x$ip = xdhcp ]; then
-		dhcp
-	fi
-	tftp $uimage uImage || exit 1
-	bootm uImage
-else
-	bootm /dev/nand0.kernel.bb
-fi
-
diff --git a/arch/arm/boards/mini2440/env/bin/hush_hack b/arch/arm/boards/mini2440/env/bin/hush_hack
deleted file mode 100644
index 5fffa92..0000000
--- a/arch/arm/boards/mini2440/env/bin/hush_hack
+++ /dev/null
@@ -1 +0,0 @@
-nand -a /dev/nand0.*
diff --git a/arch/arm/boards/mini2440/env/bin/init b/arch/arm/boards/mini2440/env/bin/init
deleted file mode 100644
index e98ab84..0000000
--- a/arch/arm/boards/mini2440/env/bin/init
+++ /dev/null
@@ -1,34 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-
-if [ -e /dev/nand0 ]; then
-#addpart /dev/nand0 $nand_parts
-
-	# Uh, oh, hush first expands wildcards and then starts executing
-	# commands. What a bug!
-	source /env/bin/hush_hack
-fi
-
-if [ -z $eth0.ethaddr ]; then
-	while [ -z $eth0.ethaddr ]; do
-		readline "no MAC address set for eth0. please enter the one found on your board: " eth0.ethaddr
-	done
-	echo -a /env/config "eth0.ethaddr=$eth0.ethaddr"
-fi
-
-echo
-echo -n "Hit any key to stop autoboot: "
-timeout -a $autoboot_timeout
-if [ $? != 0 ]; then
-	echo
-	echo "type update_kernel [<imagename>] to update kernel into flash"
-	echo "type update_root [<imagename>] to update rootfs into flash"
-	echo
-	exit
-fi
-
-boot
diff --git a/arch/arm/boards/mini2440/env/bin/update_kernel b/arch/arm/boards/mini2440/env/bin/update_kernel
deleted file mode 100644
index c43a557..0000000
--- a/arch/arm/boards/mini2440/env/bin/update_kernel
+++ /dev/null
@@ -1,13 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-part=/dev/nand0.kernel.bb
-
-if [ x$1 = x ]; then
-	image=$uimage
-else
-	image=$1
-fi
-
-. /env/bin/_update $image
diff --git a/arch/arm/boards/mini2440/env/bin/update_root b/arch/arm/boards/mini2440/env/bin/update_root
deleted file mode 100644
index 46cbca5..0000000
--- a/arch/arm/boards/mini2440/env/bin/update_root
+++ /dev/null
@@ -1,13 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-part=/dev/nand0.root.bb
-
-if [ x$1 = x ]; then
-	image=$jffs2
-else
-	image=$1
-fi
-
-. /env/bin/_update $image
diff --git a/arch/arm/configs/mini2440_defconfig b/arch/arm/configs/mini2440_defconfig
index f289f0d..e770871 100644
--- a/arch/arm/configs/mini2440_defconfig
+++ b/arch/arm/configs/mini2440_defconfig
@@ -1,122 +1,19 @@
-#
-# Automatically generated make config: don't edit
-# Linux barebox version: 2010.10.0
-# Tue Oct 19 09:01:55 2010
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_EP93XX is not set
-# CONFIG_ARCH_IMX is not set
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_NOMADIK is not set
-# CONFIG_ARCH_OMAP is not set
 CONFIG_ARCH_S3C24xx=y
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM920T=y
-CONFIG_CPU_32v4T=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x31fc0000
-CONFIG_BOARDINFO="Mini 2440"
-CONFIG_CPU_S3C2440=y
-# CONFIG_MACH_A9M2410 is not set
-# CONFIG_MACH_A9M2440 is not set
 CONFIG_MACH_MINI2440=y
-
-#
-# Board specific settings
-#
-
-#
-# S3C24X0 Features
-#
-# CONFIG_S3C24XX_PLL_INIT is not set
-# CONFIG_S3C24XX_SDRAM_INIT is not set
 CONFIG_S3C24XX_NAND_BOOT=y
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
+CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0x31fc0000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
+CONFIG_TEXT_BASE=0x33e00000
 CONFIG_BROKEN=y
-CONFIG_EXPERIMENTAL=y
-# CONFIG_MODULES is not set
-# CONFIG_KALLSYMS is not set
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=38400
+CONFIG_PROMPT="mini2440:"
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
-# CONFIG_HUSH_FANCY_PROMPT is not set
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-# CONFIG_MENU is not set
-# CONFIG_PASSWORD is not set
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mini2440/env"
-
-#
-# Debugging
-#
 CONFIG_DEBUG_INFO=y
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-CONFIG_ENABLE_DEVICE_NOISE=y
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -124,128 +21,19 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-# CONFIG_CMD_LOGIN is not set
-# CONFIG_CMD_PASSWD is not set
-
-#
-# file commands
-#
-CONFIG_CMD_LS=y
-CONFIG_CMD_RM=y
-CONFIG_CMD_CAT=y
-CONFIG_CMD_MKDIR=y
-CONFIG_CMD_RMDIR=y
-CONFIG_CMD_CP=y
-CONFIG_CMD_PWD=y
-CONFIG_CMD_CD=y
-CONFIG_CMD_MOUNT=y
-CONFIG_CMD_UMOUNT=y
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-# CONFIG_CMD_ECHO_E is not set
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
-# CONFIG_CMD_LOADY is not set
-# CONFIG_CMD_LOADS is not set
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
-# CONFIG_CMD_MTEST_ALTERNATIVE is not set
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-# CONFIG_CMD_UBI is not set
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
-# CONFIG_CMD_BOOTM_LZO is not set
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
-# CONFIG_CMD_UNLZO is not set
+CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-# CONFIG_NET_TFTP_PUSH is not set
-# CONFIG_NET_NETCONSOLE is not set
-# CONFIG_NET_RESOLV is not set
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_DRIVER_SERIAL_S3C24X0=y
-# CONFIG_DRIVER_SERIAL_S3C24X0_AUTOSYNC is not set
-CONFIG_HAS_DM9000=y
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_DM9000=y
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-# CONFIG_DRIVER_CFI is not set
-CONFIG_MTD=y
-CONFIG_NAND=y
-CONFIG_NAND_S3C24X0=y
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_MTD_NAND_DISKONCHIP is not set
-# CONFIG_UBI is not set
-# CONFIG_ATA is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_DIGEST is not set
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-# CONFIG_PROCESS_ESCAPE_SEQUENCE is not set
+CONFIG_MCI=y
+CONFIG_MCI_S3C=y
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
