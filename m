Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([212.27.42.3])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OCXeq-0006z5-Dk
	for barebox@lists.infradead.org; Thu, 13 May 2010 12:36:59 +0000
Received: from smtp3-g21.free.fr (localhost [127.0.0.1])
	by smtp3-g21.free.fr (Postfix) with ESMTP id 3485C81818A
	for <barebox@lists.infradead.org>;
	Thu, 13 May 2010 14:36:51 +0200 (CEST)
Received: from localhost.localdomain (tal33-3-82-233-81-124.fbx.proxad.net
	[82.233.81.124]) by smtp3-g21.free.fr (Postfix) with ESMTP
	for <barebox@lists.infradead.org>;
	Thu, 13 May 2010 14:36:50 +0200 (CEST)
From: Eric Benard <eric@eukrea.com>
Date: Thu, 13 May 2010 14:36:46 +0200
Message-Id: <1273754207-7763-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1273754207-7763-1-git-send-email-eric@eukrea.com>
References: <1273754207-7763-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0862439047=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] Add support for Eukrea's CPUIMX25
To: barebox@lists.infradead.org

--===============0862439047==
Content-Type: text/plain

This boards integrates 64mB of DDR, a 256MB NAND flash, a RMII Ethernet PHY
and a i.MX257 CPU.

Signed-off-by: Eric Benard <eric@eukrea.com>
---
 arch/arm/Makefile                           |    1 +
 arch/arm/configs/eukrea_cpuimx25_defconfig  |  247 +++++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                   |   10 +
 board/eukrea_cpuimx25/Makefile              |   24 +++
 board/eukrea_cpuimx25/config.h              |   27 +++
 board/eukrea_cpuimx25/env/bin/_update       |   36 ++++
 board/eukrea_cpuimx25/env/bin/boot          |   53 +++++
 board/eukrea_cpuimx25/env/bin/hush_hack     |    1 +
 board/eukrea_cpuimx25/env/bin/init          |   38 ++++
 board/eukrea_cpuimx25/env/bin/update_kernel |    8 +
 board/eukrea_cpuimx25/env/bin/update_root   |    8 +
 board/eukrea_cpuimx25/env/config            |   26 +++
 board/eukrea_cpuimx25/eukrea_cpuimx25.c     |  285 +++++++++++++++++++++++++++
 board/eukrea_cpuimx25/lowlevel_init.S       |  135 +++++++++++++
 14 files changed, 899 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/configs/eukrea_cpuimx25_defconfig
 create mode 100644 board/eukrea_cpuimx25/Makefile
 create mode 100644 board/eukrea_cpuimx25/config.h
 create mode 100644 board/eukrea_cpuimx25/env/bin/_update
 create mode 100644 board/eukrea_cpuimx25/env/bin/boot
 create mode 100644 board/eukrea_cpuimx25/env/bin/hush_hack
 create mode 100644 board/eukrea_cpuimx25/env/bin/init
 create mode 100644 board/eukrea_cpuimx25/env/bin/update_kernel
 create mode 100644 board/eukrea_cpuimx25/env/bin/update_root
 create mode 100644 board/eukrea_cpuimx25/env/config
 create mode 100644 board/eukrea_cpuimx25/eukrea_cpuimx25.c
 create mode 100644 board/eukrea_cpuimx25/lowlevel_init.S

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index b1991c3..0bdce21 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -61,6 +61,7 @@ board-$(CONFIG_MACH_EDB9307A)			:= edb93xx
 board-$(CONFIG_MACH_EDB93012)			:= edb93xx
 board-$(CONFIG_MACH_EDB9315)			:= edb93xx
 board-$(CONFIG_MACH_EDB9315A)			:= edb93xx
+board-$(CONFIG_MACH_EUKREA_CPUIMX25)		:= eukrea_cpuimx25
 board-$(CONFIG_MACH_EUKREA_CPUIMX27)		:= eukrea_cpuimx27
 board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	:= freescale-mx25-3-stack
 board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	:= freescale-mx35-3-stack
diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
new file mode 100644
index 0000000..81f9c80
--- /dev/null
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -0,0 +1,247 @@
+#
+# Automatically generated make config: don't edit
+# barebox version: 2010.03.0
+# Fri Mar 19 11:12:11 2010
+#
+# CONFIG_BOARD_LINKER_SCRIPT is not set
+CONFIG_GENERIC_LINKER_SCRIPT=y
+CONFIG_ARM=y
+
+#
+# System Type
+#
+# CONFIG_ARCH_AT91 is not set
+# CONFIG_ARCH_AT91RM9200 is not set
+# CONFIG_ARCH_EP93XX is not set
+CONFIG_ARCH_IMX=y
+# CONFIG_ARCH_NETX is not set
+# CONFIG_ARCH_OMAP is not set
+# CONFIG_ARCH_S3C24xx is not set
+
+#
+# Processor Type
+#
+CONFIG_CPU_32=y
+CONFIG_CPU_ARM926T=y
+CONFIG_CPU_32v5=y
+
+#
+# processor features
+#
+CONFIG_ARCH_TEXT_BASE=0x83f00000
+CONFIG_BOARDINFO="Eukrea CPUIMX25"
+CONFIG_ARCH_HAS_FEC_IMX=y
+CONFIG_ARCH_IMX_INTERNAL_BOOT=y
+
+#
+# Freescale i.MX System-on-Chip
+#
+# CONFIG_ARCH_IMX1 is not set
+# CONFIG_ARCH_IMX21 is not set
+CONFIG_ARCH_IMX25=y
+# CONFIG_ARCH_IMX27 is not set
+# CONFIG_ARCH_IMX31 is not set
+# CONFIG_ARCH_IMX35 is not set
+CONFIG_MACH_EUKREA_CPUIMX25=y
+# CONFIG_MACH_FREESCALE_MX25_3STACK is not set
+
+#
+# Board specific settings       
+#
+
+#
+# i.MX specific settings        
+#
+# CONFIG_IMX_CLKO is not set
+# CONFIG_AEABI is not set
+
+#
+# Arm specific settings         
+#
+CONFIG_CMD_ARM_CPUINFO=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_GREGORIAN_CALENDER=y
+CONFIG_HAS_KALLSYMS=y
+CONFIG_HAS_MODULES=y
+CONFIG_CMD_MEMORY=y
+CONFIG_ENV_HANDLING=y
+CONFIG_GENERIC_GPIO=y
+
+#
+# General Settings              
+#
+CONFIG_LOCALVERSION_AUTO=y
+
+#
+# memory layout                 
+#
+CONFIG_HAVE_MMU=y
+CONFIG_MMU=y
+CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
+CONFIG_TEXT_BASE=0x83f00000
+CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
+CONFIG_MEMORY_LAYOUT_DEFAULT=y
+# CONFIG_MEMORY_LAYOUT_FIXED is not set
+CONFIG_STACK_SIZE=0x8000
+CONFIG_MALLOC_SIZE=0x1000000
+# CONFIG_BROKEN is not set
+# CONFIG_EXPERIMENTAL is not set
+CONFIG_MACH_HAS_LOWLEVEL_INIT=y
+CONFIG_MACH_DO_LOWLEVEL_INIT=y
+CONFIG_PROMPT="barebox:"
+CONFIG_BAUDRATE=115200
+# CONFIG_LONGHELP is not set
+CONFIG_CBSIZE=1024
+CONFIG_MAXARGS=16
+CONFIG_SHELL_HUSH=y
+# CONFIG_SHELL_SIMPLE is not set
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="cpuimx25>"
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_DYNAMIC_CRC_TABLE=y
+# CONFIG_ERRNO_MESSAGES is not set
+CONFIG_TIMESTAMP=y
+CONFIG_CONSOLE_FULL=y
+CONFIG_CONSOLE_ACTIVATE_FIRST=y
+# CONFIG_OF_FLAT_TREE is not set
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="board/eukrea_cpuimx25/env"
+
+#
+# Debugging                     
+#
+# CONFIG_DEBUG_INFO is not set
+# CONFIG_ENABLE_FLASH_NOISE is not set
+# CONFIG_ENABLE_PARTITION_NOISE is not set
+# CONFIG_ENABLE_DEVICE_NOISE is not set
+
+#
+# Commands                      
+#
+
+#
+# scripting                     
+#
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TRUE=y
+CONFIG_CMD_FALSE=y
+
+#
+# file commands                 
+#
+CONFIG_CMD_LS=y
+CONFIG_CMD_RM=y
+CONFIG_CMD_CAT=y
+CONFIG_CMD_MKDIR=y
+CONFIG_CMD_RMDIR=y
+CONFIG_CMD_CP=y
+CONFIG_CMD_PWD=y
+CONFIG_CMD_CD=y
+CONFIG_CMD_MOUNT=y
+CONFIG_CMD_UMOUNT=y
+
+#
+# console                       
+#
+CONFIG_CMD_CLEAR=y
+CONFIG_CMD_ECHO=y
+
+#
+# memory                        
+#
+# CONFIG_CMD_LOADB is not set
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_MTEST=y
+# CONFIG_CMD_MTEST_ALTERNATIVE is not set
+
+#
+# flash                         
+#
+CONFIG_CMD_FLASH=y
+
+#
+# booting                       
+#
+CONFIG_CMD_BOOTM=y
+# CONFIG_CMD_BOOTM_ZLIB is not set
+# CONFIG_CMD_BOOTM_BZLIB is not set
+# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_BOOTU=y
+# CONFIG_CMD_LINUX16 is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_TEST=y
+CONFIG_CMD_VERSION=y
+CONFIG_CMD_HELP=y
+CONFIG_CMD_DEVINFO=y
+CONFIG_CMD_BMP=y
+CONFIG_CMD_GPIO=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+# CONFIG_NET_RARP is not set
+# CONFIG_NET_NFS is not set
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+
+#
+# Drivers                       
+#
+
+#
+# serial drivers                
+#
+# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
+CONFIG_DRIVER_SERIAL_IMX=y
+# CONFIG_DRIVER_SERIAL_NS16550 is not set
+CONFIG_MIIPHY=y
+
+#
+# Network drivers               
+#
+# CONFIG_DRIVER_NET_SMC911X is not set
+# CONFIG_DRIVER_NET_SMC91111 is not set
+CONFIG_DRIVER_NET_FEC_IMX=y
+
+#
+# SPI drivers                   
+#
+# CONFIG_SPI is not set
+# CONFIG_I2C is not set
+
+#
+# flash drivers                 
+#
+# CONFIG_DRIVER_CFI is not set
+CONFIG_NAND=y
+CONFIG_NAND_IMX=y
+CONFIG_NAND_IMX_BOOT=y
+# CONFIG_MTD_NAND_VERIFY_WRITE is not set
+# CONFIG_MTD_NAND_ECC_SMC is not set
+CONFIG_MTD_NAND_IDS=y
+# CONFIG_ATA is not set
+# CONFIG_USB is not set
+# CONFIG_USB_GADGET is not set
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_IMX=y
+# CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY is not set
+
+#
+# Filesystem support            
+#
+# CONFIG_FS_CRAMFS is not set
+CONFIG_FS_RAMFS=y
+CONFIG_FS_DEVFS=y
+CONFIG_CRC32=y
+# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 02d5db9..419daab 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -2,6 +2,7 @@ if ARCH_IMX
 
 config ARCH_TEXT_BASE
 	hex
+	default 0x83f00000 if MACH_EUKREA_CPUIMX25
 	default 0xa0000000 if MACH_EUKREA_CPUIMX27
 	default 0x08f00000 if MACH_MX1ADS
 	default 0xc0000000 if MACH_IMX21ADS
@@ -16,6 +17,7 @@ config ARCH_TEXT_BASE
 	default 0x08f80000 if MACH_SCB9328
 
 config BOARDINFO
+	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
 	default "Eukrea CPUIMX27" if MACH_EUKREA_CPUIMX27
 	default "Freescale i.MX21 ADS" if MACH_IMX21ADS
 	default "Freescale i.MX27 ADS" if MACH_IMX27ADS
@@ -124,6 +126,14 @@ choice
 
 	prompt "i.MX25 Board Type"
 
+config MACH_EUKREA_CPUIMX25
+	bool "Eukrea CPUIMX25"
+	select MACH_HAS_LOWLEVEL_INIT
+	select HAVE_MMU
+	help
+	  Say Y here if you are using the Eukrea Electromatique's CPUIMX25
+	  equipped with a Freescale i.MX25 Processor
+
 config MACH_FREESCALE_MX25_3STACK
 	bool "Freescale MX25 3stack"
 	select HAS_CFI
diff --git a/board/eukrea_cpuimx25/Makefile b/board/eukrea_cpuimx25/Makefile
new file mode 100644
index 0000000..562c2e8
--- /dev/null
+++ b/board/eukrea_cpuimx25/Makefile
@@ -0,0 +1,24 @@
+#
+# (C) 2010 Eukrea Electromatique, Eric B��nard <eric@eukrea.com>
+#
+# See file CREDITS for list of people who contributed to this
+# project.
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License as
+# published by the Free Software Foundation; either version 2 of
+# the License, or (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+# MA 02111-1307 USA
+#
+
+obj-y += lowlevel_init.o
+obj-y += eukrea_cpuimx25.o
diff --git a/board/eukrea_cpuimx25/config.h b/board/eukrea_cpuimx25/config.h
new file mode 100644
index 0000000..efff909
--- /dev/null
+++ b/board/eukrea_cpuimx25/config.h
@@ -0,0 +1,27 @@
+/*
+ * (c) 2010 Eukrea Electromatique, Eric B��nard <eric@eukrea.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define CONFIG_MX25_HCLK_FREQ	24000000
+
+#endif
+
+/* nothing to do here yet */
diff --git a/board/eukrea_cpuimx25/env/bin/_update b/board/eukrea_cpuimx25/env/bin/_update
new file mode 100644
index 0000000..014bce3
--- /dev/null
+++ b/board/eukrea_cpuimx25/env/bin/_update
@@ -0,0 +1,36 @@
+#!/bin/sh
+
+if [ -z "$part" -o -z "$image" ]; then
+	echo "define \$part and \$image"
+	exit 1
+fi
+
+if [ ! -e "$part" ]; then
+	echo "Partition $part does not exist"
+	exit 1
+fi
+
+if [ $# = 1 ]; then
+	image=$1
+fi
+
+if [ x$ip = xdhcp ]; then
+	dhcp
+fi
+
+ping $eth0.serverip
+if [ $? -ne 0 ] ; then
+	echo "update aborted"
+	exit 1
+fi
+
+unprotect $part
+
+echo
+echo "erasing partition $part"
+erase $part
+
+echo
+echo "flashing $image to $part"
+echo
+tftp $image $part
diff --git a/board/eukrea_cpuimx25/env/bin/boot b/board/eukrea_cpuimx25/env/bin/boot
new file mode 100644
index 0000000..3311114
--- /dev/null
+++ b/board/eukrea_cpuimx25/env/bin/boot
@@ -0,0 +1,53 @@
+#!/bin/sh
+
+. /env/config
+
+if [ x$1 = xjffS2 ]; then
+	root=jffs2
+	kernel=nand
+fi
+
+if [ x$1 = xubifs ]; then
+	root=ubifs
+	kernel=nand
+fi
+
+if [ x$1 = xnet ]; then
+	root=net
+	kernel=net
+fi
+
+if [ x$ip = xdhcp ]; then
+	bootargs="$bootargs ip=dhcp"
+else
+	if [ x$ip = xoff ]; then
+		bootargs="$bootargs ip=off"
+	else
+		bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
+	fi
+fi
+
+if [ x$root = xjffs2 ]; then
+	bootargs="$bootargs root=/dev/mtdblock$rootpartnum_nand rootfstype=jffs2"
+fi
+
+if [ x$root = xubifs ]; then
+	bootargs="$bootargs root=ubi0:root ubi.mtd=$rootpartnum_nand rootfstype=ubifs"
+fi
+
+if [ x$root = xnet ]; then
+	bootargs="$bootargs root=/dev/nfs nfsroot=$eth0.serverip:$nfsroot,v3,tcp"
+fi
+
+bootargs="$bootargs mtdparts=mxc_nand:$nand_parts"
+
+if [ $kernel = net ]; then
+	if [ x$ip = xdhcp ]; then
+		dhcp
+	fi
+	tftp $uimage uImage || exit 1
+	bootm uImage
+else
+	bootm /dev/nand0.kernel.bb
+fi
+
diff --git a/board/eukrea_cpuimx25/env/bin/hush_hack b/board/eukrea_cpuimx25/env/bin/hush_hack
new file mode 100644
index 0000000..5fffa92
--- /dev/null
+++ b/board/eukrea_cpuimx25/env/bin/hush_hack
@@ -0,0 +1 @@
+nand -a /dev/nand0.*
diff --git a/board/eukrea_cpuimx25/env/bin/init b/board/eukrea_cpuimx25/env/bin/init
new file mode 100644
index 0000000..2ec40cd
--- /dev/null
+++ b/board/eukrea_cpuimx25/env/bin/init
@@ -0,0 +1,38 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+if [ -e /dev/nand0 ]; then
+	addpart /dev/nand0 $nand_parts
+
+	# Uh, oh, hush first expands wildcards and then starts executing
+	# commands. What a bug!
+	source /env/bin/hush_hack 
+fi
+
+if [ -f /env/logo.bmp ]; then
+	bmp /env/logo.bmp
+fi
+
+if [ -z $eth0.ethaddr ]; then
+	while [ -z $eth0.ethaddr ]; do
+		readline "no MAC address set for eth0. please enter the one found on your board: " eth0.ethaddr
+	done
+	echo -a /env/config "eth0.ethaddr=$eth0.ethaddr"
+	saveenv
+fi
+
+echo
+echo -n "Hit any key to stop autoboot: "
+timeout -a $autoboot_timeout
+if [ $? != 0 ]; then
+	echo
+	echo "type update_kernel [<imagename>] to update kernel into flash"
+	echo "type update_root [<imagename>] to update rootfs into flash"
+	echo
+	exit
+fi
+
+boot
diff --git a/board/eukrea_cpuimx25/env/bin/update_kernel b/board/eukrea_cpuimx25/env/bin/update_kernel
new file mode 100644
index 0000000..c2d2cc3
--- /dev/null
+++ b/board/eukrea_cpuimx25/env/bin/update_kernel
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+. /env/config
+
+image=$uimage
+part=/dev/nand0.kernel.bb
+
+. /env/bin/_update $1
diff --git a/board/eukrea_cpuimx25/env/bin/update_root b/board/eukrea_cpuimx25/env/bin/update_root
new file mode 100644
index 0000000..dd89a5a
--- /dev/null
+++ b/board/eukrea_cpuimx25/env/bin/update_root
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+. /env/config
+
+image=$rootfs
+part=/dev/nand0.root.bb
+
+. /env/bin/_update $1
diff --git a/board/eukrea_cpuimx25/env/config b/board/eukrea_cpuimx25/env/config
new file mode 100644
index 0000000..eb5fced
--- /dev/null
+++ b/board/eukrea_cpuimx25/env/config
@@ -0,0 +1,26 @@
+#!/bin/sh
+
+# can be either 'net' or 'jffs2' or 'ubifs'
+kernel=nand
+root=jffs2
+
+basedir=cpuimx25
+uimage=$basedir/uImage
+rootfs=$basedir/rootfs
+
+autoboot_timeout=1
+
+nfsroot=""
+bootargs="console=ttymxc0,115200"
+
+nand_parts="256k(barebox)ro,128k(bareboxenv),2176k(kernel),-(root)"
+rootpartnum_nand=3
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+eth0.serverip=192.168.1.15
diff --git a/board/eukrea_cpuimx25/eukrea_cpuimx25.c b/board/eukrea_cpuimx25/eukrea_cpuimx25.c
new file mode 100644
index 0000000..eb10926
--- /dev/null
+++ b/board/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -0,0 +1,285 @@
+/*
+ * (C) 2009 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ * (c) 2010 Eukrea Electromatique, Eric B��nard <eric@eukrea.com>
+ * 
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <environment.h>
+#include <mach/imx-regs.h>
+#include <asm/armlinux.h>
+#include <mach/gpio.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+
+#include <partition.h>
+#include <asm/mach-types.h>
+#include <mach/imx-nand.h>
+#include <mach/imxfb.h>
+#include <fec.h>
+#include <nand.h>
+#include <mach/imx-flash-header.h>
+#include <mach/iomux-mx25.h>
+
+extern unsigned long _stext;
+
+void __naked __flash_header_start go(void)
+{
+	__asm__ __volatile__("b exception_vectors\n");
+}
+
+struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
+	{ .ptr_type = 4, .addr = 0xb8001010, .val = 0x00000004, },
+	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92100000, },
+	{ .ptr_type = 1, .addr = 0x80000400, .val = 0x12344321, },
+	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xa2100000, },
+	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x12344321, },
+	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x12344321, },
+	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xb2100000, },
+	{ .ptr_type = 1, .addr = 0x80000033, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x81000000, .val = 0xff, },
+	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x82216080, },
+	{ .ptr_type = 4, .addr = 0xb8001004, .val = 0x00295729, },
+	{ .ptr_type = 4, .addr = 0x53f80008, .val = 0x20034000, },
+};
+
+#define APP_DEST	0x80000000
+
+struct imx_flash_header __flash_header_0x400 eukrea_cpuimx25_header = {
+	.app_code_jump_vector	= TEXT_BASE + 0x2000,
+	.app_code_barker	= APP_CODE_BARKER,
+	.app_code_csf		= 0,
+	.dcd_ptr_ptr		= TEXT_BASE + 0x400 + offsetof(struct imx_flash_header, dcd),
+	.super_root_key		= 0,
+	.dcd			= TEXT_BASE + 0x400 + offsetof(struct imx_flash_header, dcd_barker),
+	.app_dest		= TEXT_BASE,
+	.dcd_barker		= DCD_BARKER,
+	.dcd_block_len		= sizeof (dcd_entry),
+};
+
+extern unsigned long __bss_start;
+
+unsigned long __image_len_0x400 barebox_len = 0x40000;
+
+static struct fec_platform_data fec_info = {
+	.xcv_type	= RMII,
+	.phy_addr	= 1,
+};
+
+static struct device_d fec_dev = {
+	.name     = "fec_imx",
+	.map_base = IMX_FEC_BASE,
+	.platform_data	= &fec_info,
+};
+
+static struct memory_platform_data sdram_pdata = {
+	.name	= "ram0",
+	.flags	= DEVFS_RDWR,
+};
+
+static struct device_d sdram0_dev = {
+	.name     = "mem",
+	.map_base = IMX_SDRAM_CS0,
+	.size     = 64 * 1024 * 1024,
+	.platform_data = &sdram_pdata,
+};
+
+struct imx_nand_platform_data nand_info = {
+	.width	= 1,
+	.hw_ecc	= 1,
+};
+
+static struct device_d nand_dev = {
+	.name     = "imx_nand",
+	.map_base = IMX_NFC_BASE,
+	.platform_data	= &nand_info,
+};
+
+static struct imx_fb_videomode imxfb_mode = {
+	.mode = {
+		.name		= "CMO-QVGA",
+		.refresh	= 60,
+		.xres		= 320,
+		.yres		= 240,
+		.pixclock	= KHZ2PICOS(6500),
+		.hsync_len	= 30,
+		.left_margin	= 38,
+		.right_margin	= 20,
+		.vsync_len	= 3,
+		.upper_margin	= 15,
+		.lower_margin	= 4,
+	},
+	.pcr		= 0xCAD08B80,
+	.bpp		= 16,
+};
+
+static struct imx_fb_platform_data eukrea_cpuimx25_fb_data = {
+	.mode		= &imxfb_mode,
+	.pwmr		= 0x00A903FF,
+	.lscr1		= 0x00120300,
+	.dmacr		= 0x80040060,
+};
+
+
+static struct device_d imxfb_dev = {
+	.name		= "imxfb",
+	.map_base	= 0x53fbc000,
+	.size		= 0x1000,
+	.platform_data	= &eukrea_cpuimx25_fb_data,
+};
+
+#ifdef CONFIG_MMU
+static void eukrea_cpuimx25_mmu_init(void)
+{
+	mmu_init();
+
+	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
+	arm_create_section(0x90000000, 0x80000000, 128, PMD_SECT_DEF_UNCACHED);
+
+	setup_dma_coherent(0x10000000);
+
+	mmu_enable();
+}
+#else
+static void eukrea_cpuimx25_mmu_init(void)
+{
+}
+#endif
+
+static struct pad_desc eukrea_cpuimx25_pads[] = {
+	MX25_PAD_FEC_MDC__MDC,
+	MX25_PAD_FEC_MDIO__MDIO,
+	MX25_PAD_FEC_RDATA0__RDATA0,
+	MX25_PAD_FEC_RDATA1__RDATA1,
+	MX25_PAD_FEC_RX_DV__RX_DV,
+	MX25_PAD_FEC_TDATA0__TDATA0,
+	MX25_PAD_FEC_TDATA1__TDATA1,
+	MX25_PAD_FEC_TX_CLK__TX_CLK,
+	MX25_PAD_FEC_TX_EN__TX_EN,
+	/* UART1 */
+	MX25_PAD_UART1_RXD__RXD_MUX,
+	MX25_PAD_UART1_TXD__TXD_MUX,
+	MX25_PAD_UART1_RTS__RTS,
+	MX25_PAD_UART1_CTS__CTS,
+	/* LCDC */
+	MX25_PAD_LD0__LCDC_LD0,
+	MX25_PAD_LD1__LCDC_LD1,
+	MX25_PAD_LD2__LCDC_LD2,
+	MX25_PAD_LD3__LCDC_LD3,
+	MX25_PAD_LD4__LCDC_LD4,
+	MX25_PAD_LD5__LCDC_LD5,
+	MX25_PAD_LD6__LCDC_LD6,
+	MX25_PAD_LD7__LCDC_LD7,
+	MX25_PAD_LD8__LCDC_LD8,
+	MX25_PAD_LD9__LCDC_LD9,
+	MX25_PAD_LD10__LCDC_LD10,
+	MX25_PAD_LD11__LCDC_LD11,
+	MX25_PAD_LD12__LCDC_LD12,
+	MX25_PAD_LD13__LCDC_LD13,
+	MX25_PAD_LD14__LCDC_LD14,
+	MX25_PAD_LD15__LCDC_LD15,
+	MX25_PAD_GPIO_E__LCDC_LD16,
+	MX25_PAD_GPIO_F__LCDC_LD17,
+	MX25_PAD_LSCLK__LCDC_LSCLK,
+	MX25_PAD_OE_ACD__LCDC_OE_ACD,
+	MX25_PAD_VSYNC__LCDC_VSYN,
+	MX25_PAD_HSYNC__LCDC_HSYN,
+};
+
+#define IOMUXC_BASE_ADDR        0x43FAC000
+#define GPIO1_BASE_ADDR         0x53FCC000
+#define GPIO_GDIR               0x04
+#define GPIO_DR                 0x00
+
+static int eukrea_cpuimx25_devices_init(void)
+{
+	ulong val;
+
+	eukrea_cpuimx25_mmu_init();
+
+	mxc_iomux_v3_setup_multiple_pads(eukrea_cpuimx25_pads,
+		ARRAY_SIZE(eukrea_cpuimx25_pads));
+	register_device(&fec_dev);
+
+	nand_info.width = 1;
+	register_device(&nand_dev);
+
+	devfs_add_partition("nand0", 0x00000, 0x40000, 
+		PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+
+	devfs_add_partition("nand0", 0x40000, 0x40000, 
+		PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+
+	register_device(&sdram0_dev);
+
+	/* PAD PWM, MUX = GPIO1_26 */
+	writel(0x5, IOMUXC_BASE_ADDR + 0x011C);
+	/* make the pins output */
+	val = (1 << 26) | readl(GPIO1_BASE_ADDR + GPIO_GDIR);
+	writel(val, GPIO1_BASE_ADDR + GPIO_GDIR);
+	/* enable LCD */
+	val = readl(GPIO1_BASE_ADDR + GPIO_DR) | (1 << 26);
+	writel(val, GPIO1_BASE_ADDR + GPIO_DR);
+
+	register_device(&imxfb_dev);
+
+	armlinux_add_dram(&sdram0_dev);
+	armlinux_set_bootparams((void *)0x80000100);
+	armlinux_set_architecture(MACH_TYPE_MX25_3DS);
+
+	return 0;
+}
+
+device_initcall(eukrea_cpuimx25_devices_init);
+
+static struct device_d eukrea_cpuimx25_serial_device = {
+	.name     = "imx_serial",
+	.map_base = IMX_UART1_BASE,
+	.size     = 16 * 1024,
+};
+
+static int eukrea_cpuimx25_console_init(void)
+{
+	writel(0x03010101, IMX_CCM_BASE + CCM_PCDR3);
+	register_device(&eukrea_cpuimx25_serial_device);
+	return 0;
+}
+
+console_initcall(eukrea_cpuimx25_console_init);
+
+#ifdef CONFIG_NAND_IMX_BOOT
+void __bare_init nand_boot(void)
+{
+	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
+}
+#endif
+
+static int eukrea_cpuimx25_core_setup(void)
+{
+	writel(0x01010103, IMX_CCM_BASE + CCM_PCDR2);
+	return 0;
+
+}
+core_initcall(eukrea_cpuimx25_core_setup);
diff --git a/board/eukrea_cpuimx25/lowlevel_init.S b/board/eukrea_cpuimx25/lowlevel_init.S
new file mode 100644
index 0000000..7d326f7
--- /dev/null
+++ b/board/eukrea_cpuimx25/lowlevel_init.S
@@ -0,0 +1,135 @@
+/*
+ *
+ * (c) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ * (c) 2010 Eukrea Electromatique, Eric B��nard <eric@eukrea.com>
+ * Init code taken from Freescale's u-boot sources.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <mach/imx-regs.h>
+#include <mach/imx-pll.h>
+#include <mach/esdctl.h>
+#include <asm/cache-l2x0.h>
+
+#define writel(val, reg) \
+	ldr		r0,	=reg;	\
+	ldr		r1,	=val;	\
+	str		r1,	[r0];
+
+#define writeb(val, reg) \
+	ldr		r0,	=reg;	\
+	ldr		r1,	=val;	\
+	strb		r1,	[r0];
+
+.section ".text_bare_init","ax"
+
+.globl board_init_lowlevel
+board_init_lowlevel:
+	mov     r10, lr
+
+#define MX25_CCM_MCR	0x64
+#define MX25_CCM_CGR0	0x0c
+#define MX25_CCM_CGR1	0x10
+#define MX25_CCM_CGR2	0x14
+
+	/* AIPS setup - Only setup MPROTx registers. The PACR default values are good.
+	 * Set all MPROTx to be non-bufferable, trusted for R/W,
+	 * not forced to user-mode.
+	 */
+	writel(0x77777777, 0x43f00000)
+	writel(0x77777777, 0x43f00004)
+	writel(0x77777777, 0x53f00000)
+	writel(0x77777777, 0x53f00004)
+
+	/* MAX (Multi-Layer AHB Crossbar Switch) setup
+	 * MPR - priority for MX25 is (SDHC2/SDMA)>USBOTG>RTIC>IAHB>DAHB
+	 */
+	writel(0x00002143, 0x43f04000)
+	writel(0x00002143, 0x43f04100)
+	writel(0x00002143, 0x43f04200)
+	writel(0x00002143, 0x43f04300)
+	writel(0x00002143, 0x43f04400)
+	/* SGPCR - always park on last master */
+	writel(0x10, 0x43f04010)
+	writel(0x10, 0x43f04110)
+	writel(0x10, 0x43f04210)
+	writel(0x10, 0x43f04310)
+	writel(0x10, 0x43f04410)
+	/* MGPCR - restore default values */
+	writel(0x0, 0x43f04800)
+	writel(0x0, 0x43f04900)
+	writel(0x0, 0x43f04a00)
+	writel(0x0, 0x43f04b00)
+	writel(0x0, 0x43f04c00)
+
+	/* Configure M3IF registers
+	 * M3IF Control Register (M3IFCTL) for MX25
+	 * MRRP[0] = LCDC           on priority list (1 << 0)  = 0x00000001
+	 * MRRP[1] = MAX1       not on priority list (0 << 1)  = 0x00000000
+	 * MRRP[2] = MAX0       not on priority list (0 << 2)  = 0x00000000
+	 * MRRP[3] = USB HOST   not on priority list (0 << 3)  = 0x00000000
+	 * MRRP[4] = SDMA       not on priority list (0 << 4)  = 0x00000000
+	 * MRRP[5] = SD/ATA/FEC not on priority list (0 << 5)  = 0x00000000
+	 * MRRP[6] = SCMFBC     not on priority list (0 << 6)  = 0x00000000
+	 * MRRP[7] = CSI        not on priority list (0 << 7)  = 0x00000000
+	 *                                                       ----------
+	 *                                                       0x00000001
+	 */
+	writel(0x1, 0xb8003000)
+
+	/* enable all the clocks */
+	writel(0x038A81A2, IMX_CCM_BASE + MX25_CCM_CGR0)
+	writel(0x24788F00, IMX_CCM_BASE + MX25_CCM_CGR1)
+	writel(0x00004438, IMX_CCM_BASE + MX25_CCM_CGR2)
+	writel(0x00, IMX_CCM_BASE + MX25_CCM_MCR)
+
+#ifdef CONFIG_NAND_IMX_BOOT
+	ldr	sp, =0xa0f00000		/* Setup a temporary stack in SDRAM */
+
+	ldr	r0, =IMX_NFC_BASE		/* start of NFC SRAM                */
+	ldr	r2, =IMX_NFC_BASE + 0x1000	/* end of NFC SRAM                  */
+
+	/* skip NAND boot if not running from NFC space */
+	cmp	pc, r0
+	bls	ret
+	cmp	pc, r2
+	bhi	ret
+
+	/* Move ourselves out of NFC SRAM */
+	ldr	r1, =TEXT_BASE
+
+copy_loop:
+	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
+	stmia	r1!, {r3-r9}		/* copy to   target address [r1]    */
+	cmp	r0, r2			/* until source end addreee [r2]    */
+	ble	copy_loop
+
+	ldr	pc, =1f			/* Jump to SDRAM                    */
+1:
+	bl	nand_boot		/* Load barebox from NAND Flash      */
+
+	ldr	r1, =IMX_NFC_BASE - TEXT_BASE
+	sub	r10, r10, r1		/* adjust return address from NFC SRAM */
+					/* to SDRAM                            */
+
+#endif /* CONFIG_NAND_IMX_BOOT */
+
+ret:
+	mov pc, r10
-- 
1.6.3.3



--===============0862439047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0862439047==--
