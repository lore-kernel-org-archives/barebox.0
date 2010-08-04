Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgT61-0006IR-9Y
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 01:48:46 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  4 Aug 2010 03:43:59 +0200
Message-Id: <1280886239-19133-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1280886239-19133-5-git-send-email-plagnioj@jcrosoft.com>
References: <20100804014227.GA16337@game.jcrosoft.org>
	<1280886239-19133-1-git-send-email-plagnioj@jcrosoft.com>
	<1280886239-19133-2-git-send-email-plagnioj@jcrosoft.com>
	<1280886239-19133-3-git-send-email-plagnioj@jcrosoft.com>
	<1280886239-19133-4-git-send-email-plagnioj@jcrosoft.com>
	<1280886239-19133-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/6] arm: add nhk8815 board support
To: barebox@lists.infradead.org
Cc: Andrea GALLO <andrea.gallo@stericsson.com>

with the following support

uart 0 & 1
network
nand

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Andrea GALLO <andrea.gallo@stericsson.com>
Cc: Gael SALLES <gael.salles@stericsson.com>
---
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/nhk8815/Makefile                   |    1 +
 arch/arm/boards/nhk8815/env/bin/_update            |   36 +++
 arch/arm/boards/nhk8815/env/bin/boot               |   38 ++++
 arch/arm/boards/nhk8815/env/bin/init               |   28 +++
 .../boards/nhk8815/env/bin/update_barebox_xmodem   |   19 ++
 arch/arm/boards/nhk8815/env/bin/update_kernel      |    8 +
 arch/arm/boards/nhk8815/env/bin/update_root        |    8 +
 arch/arm/boards/nhk8815/env/config                 |   32 +++
 arch/arm/boards/nhk8815/setup.c                    |  106 +++++++++
 arch/arm/configs/nhk8815_defconfig                 |  232 ++++++++++++++++++++
 arch/arm/mach-nomadik/Kconfig                      |   13 +
 12 files changed, 522 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/nhk8815/Makefile
 create mode 100644 arch/arm/boards/nhk8815/config.h
 create mode 100644 arch/arm/boards/nhk8815/env/bin/_update
 create mode 100644 arch/arm/boards/nhk8815/env/bin/boot
 create mode 100644 arch/arm/boards/nhk8815/env/bin/init
 create mode 100644 arch/arm/boards/nhk8815/env/bin/update_barebox_xmodem
 create mode 100644 arch/arm/boards/nhk8815/env/bin/update_kernel
 create mode 100644 arch/arm/boards/nhk8815/env/bin/update_root
 create mode 100644 arch/arm/boards/nhk8815/env/config
 create mode 100644 arch/arm/boards/nhk8815/setup.c
 create mode 100644 arch/arm/configs/nhk8815_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 4d6a76d..4827fe9 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -70,6 +70,7 @@ board-$(CONFIG_MACH_IMX21ADS)			:= imx21ads
 board-$(CONFIG_MACH_IMX27ADS)			:= imx27ads
 board-$(CONFIG_MACH_MMCCPU)			:= mmccpu
 board-$(CONFIG_MACH_MX1ADS)			:= mx1ads
+board-$(CONFIG_MACH_NOMADIK_8815NHK)		:= nhk8815
 board-$(CONFIG_MACH_NXDB500)			:= netx
 board-$(CONFIG_ARCH_OMAP)			:= omap
 board-$(CONFIG_MACH_PCA100)			:= phycard-i.MX27
diff --git a/arch/arm/boards/nhk8815/Makefile b/arch/arm/boards/nhk8815/Makefile
new file mode 100644
index 0000000..2b9dba4
--- /dev/null
+++ b/arch/arm/boards/nhk8815/Makefile
@@ -0,0 +1 @@
+obj-y += setup.o
diff --git a/arch/arm/boards/nhk8815/config.h b/arch/arm/boards/nhk8815/config.h
new file mode 100644
index 0000000..e69de29
diff --git a/arch/arm/boards/nhk8815/env/bin/_update b/arch/arm/boards/nhk8815/env/bin/_update
new file mode 100644
index 0000000..fb7cbe8
--- /dev/null
+++ b/arch/arm/boards/nhk8815/env/bin/_update
@@ -0,0 +1,36 @@
+#!/bin/sh
+
+if [ -z "$part" -o -z "$image" ]; then
+	echo "define \$part and \$image"
+	exit 1
+fi
+
+if [ \! -e "$part" ]; then
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
diff --git a/arch/arm/boards/nhk8815/env/bin/boot b/arch/arm/boards/nhk8815/env/bin/boot
new file mode 100644
index 0000000..fd8d957
--- /dev/null
+++ b/arch/arm/boards/nhk8815/env/bin/boot
@@ -0,0 +1,38 @@
+#!/bin/sh
+
+. /env/config
+
+if [ x$1 = xflash ]; then
+	root=flash
+	kernel=flash
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
+	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
+fi
+
+if [ x$root = xflash ]; then
+	bootargs="$bootargs root=$rootpart rootfstype=jffs2"
+else
+	bootargs="$bootargs root=/dev/nfs nfsroot=192.168.23.111:$nfsroot"
+fi
+
+bootargs="$bootargs"
+
+if [ $kernel = net ]; then
+	if [ x$ip = xdhcp ]; then
+		dhcp
+	fi
+	tftp $uimage uImage
+	bootm uImage
+else
+	bootm /dev/nor0.kernel
+fi
+
diff --git a/arch/arm/boards/nhk8815/env/bin/init b/arch/arm/boards/nhk8815/env/bin/init
new file mode 100644
index 0000000..5b45a70
--- /dev/null
+++ b/arch/arm/boards/nhk8815/env/bin/init
@@ -0,0 +1,28 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+
+if [ -e /dev/nand0 ]; then
+	addpart /dev/nand0 $nand_parts
+
+	# Uh, oh, hush first expands wildcards and then starts executing
+	# commands. What a bug!
+	source /env/bin/hush_hack
+fi
+
+echo
+echo -n "Hit any key to stop autoboot: "
+timeout -a $autoboot_timeout
+if [ $? != 0 ]; then
+	echo
+	echo "type update_kernel [<imagename>] to update kernel into flash"
+	echo "type udate_root [<imagename>] to update rootfs into flash"
+	echo "type update_barebox_xmodem nor to update barebox into flash"
+	echo
+	exit
+fi
+
+boot
diff --git a/arch/arm/boards/nhk8815/env/bin/update_barebox_xmodem b/arch/arm/boards/nhk8815/env/bin/update_barebox_xmodem
new file mode 100644
index 0000000..40f4ad3
--- /dev/null
+++ b/arch/arm/boards/nhk8815/env/bin/update_barebox_xmodem
@@ -0,0 +1,19 @@
+#!/bin/sh
+
+. /env/config
+
+part=/dev/nand0.barebox
+
+loadb -f barebox.bin -c
+
+unprotect $part
+echo
+echo "erasing partition $part"
+erase $part
+
+echo
+echo "flashing barebox.bin to $part"
+echo
+cp barebox.bin $part
+crc32 -f barebox.bin
+crc32 -f $part
diff --git a/arch/arm/boards/nhk8815/env/bin/update_kernel b/arch/arm/boards/nhk8815/env/bin/update_kernel
new file mode 100644
index 0000000..db0f4c2
--- /dev/null
+++ b/arch/arm/boards/nhk8815/env/bin/update_kernel
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+. /env/config
+
+image=$uimage
+part=/dev/nand0.kernel
+
+. /env/bin/_update $1
diff --git a/arch/arm/boards/nhk8815/env/bin/update_root b/arch/arm/boards/nhk8815/env/bin/update_root
new file mode 100644
index 0000000..9530e84
--- /dev/null
+++ b/arch/arm/boards/nhk8815/env/bin/update_root
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+. /env/config
+
+image=$jffs2
+part=/dev/nand0.rootfs
+
+. /env/bin/_update $1
diff --git a/arch/arm/boards/nhk8815/env/config b/arch/arm/boards/nhk8815/env/config
new file mode 100644
index 0000000..2b50b25
--- /dev/null
+++ b/arch/arm/boards/nhk8815/env/config
@@ -0,0 +1,32 @@
+#!/bin/sh
+
+# can be either 'net' or 'flash'
+kernel=net
+root=net
+
+# use 'dhcp' todo dhcp in uboot and in kernel
+ip=dhcp
+
+#
+# setup default ethernet address
+#
+#eth0.serverip=192.168.23.108
+
+# Partition			Size	Start
+# XloaderTOC + X-Loader		256KB	0x00000000
+# Memory init function		256KB	0x00040000
+# Barebox + env			2MB	0x00080000
+# Kernel Image			3MB	0x00280000
+# JFFS2 Root filesystem		22MB	0x00580000
+# JFFS2 User Data		100MB	0x01b80000
+
+nand_parts="256k(xloader)ro,256k(meminit),2M(uboot),3M(kernel),22M(rootfs),100M(userfs),384k(free),128k(ubootenv)"
+
+uimage=uImage-nhk15
+
+# use 'dhcp' to do dhcp in uboot and in kernel
+ip=dhcp
+
+autoboot_timeout=3
+
+bootargs="root=/dev/ram0 console=ttyAMA1,115200n8 init=linuxrc"
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
new file mode 100644
index 0000000..e9295f6
--- /dev/null
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -0,0 +1,106 @@
+/*
+ * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
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
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
+#include <partition.h>
+#include <nand.h>
+#include <asm/armlinux.h>
+#include <asm/mach-types.h>
+#include <asm/io.h>
+
+#include <mach/hardware.h>
+#include <mach/board.h>
+#include <mach/nand.h>
+#include <mach/fsmc.h>
+
+static struct device_d nhk8815_network_dev = {
+	.name = "smc91c111",
+	.map_base = 0x34000300,
+	.size = 16,
+};
+
+static int nhk8815_nand_init(void)
+{
+	/* FSMC setup for nand chip select (8-bit nand in 8815NHK) */
+	writel(0x0000000E, FSMC_PCR(0));
+	writel(0x000D0A00, FSMC_PMEM(0));
+	writel(0x00100A00, FSMC_PATT(0));
+
+	/* enable access to the chip select area */
+	writel(readl(FSMC_PCR(0)) | 0x04, FSMC_PCR(0));
+
+	return 0;
+}
+
+static struct nomadik_nand_platform_data nhk8815_nand_data = {
+	.addr_va	= NAND_IO_ADDR,
+	.cmd_va		= NAND_IO_CMD,
+	.data_va	= NAND_IO_DATA,
+	.options	= NAND_COPYBACK | NAND_CACHEPRG | NAND_NO_PADDING \
+			| NAND_NO_READRDY | NAND_NO_AUTOINCR,
+	.init		= nhk8815_nand_init,
+};
+
+static struct device_d nhk8815_nand_device = {
+	.name		= "nomadik_nand",
+	.platform_data	= &nhk8815_nand_data,
+};
+
+static int nhk8815_devices_init(void)
+{
+	st8815_add_device_sdram(64 * 1024 *1024);
+
+	writel(0xC37800F0, NOMADIK_GPIO1_BASE + 0x20);
+	writel(0x00000000, NOMADIK_GPIO1_BASE + 0x24);
+	writel(0x00000000, NOMADIK_GPIO1_BASE + 0x28);
+	writel(readl(NOMADIK_SRC_BASE) | 0x8000, NOMADIK_SRC_BASE);
+
+	/* Set up SMCS1 for Ethernet: sram-like, enabled, timing values */
+	writel(0x0000305b, FSMC_BCR(1));
+	writel(0x00033f33, FSMC_BTR(1));
+
+	register_device(&nhk8815_network_dev);
+
+	register_device(&nhk8815_nand_device);
+
+	armlinux_set_architecture(MACH_TYPE_NOMADIK);
+	armlinux_set_bootparams((void *)(0x00000100));
+
+	devfs_add_partition("nand0", 0x0000000, 0x040000, PARTITION_FIXED, "xloader_raw");
+	devfs_add_partition("nand0", 0x0040000, 0x080000, PARTITION_FIXED, "meminit_raw");
+	devfs_add_partition("nand0", 0x0080000, 0x200000, PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", 0x7FE0000, 0x020000, PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+
+	return 0;
+}
+device_initcall(nhk8815_devices_init);
+
+static int nhk8815_console_init(void)
+{
+	st8815_register_uart(1);
+	return 0;
+}
+
+console_initcall(nhk8815_console_init);
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
new file mode 100644
index 0000000..3c9126f
--- /dev/null
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -0,0 +1,232 @@
+#
+# Automatically generated make config: don't edit
+# U-Boot version: 2.0.0-rc10
+# Mon Oct 12 18:36:24 2009
+#
+# CONFIG_BOARD_LINKER_SCRIPT is not set
+CONFIG_GENERIC_LINKER_SCRIPT=y
+CONFIG_ARM=y
+CONFIG_ARM_AMBA=y
+
+#
+# System Type
+#
+# CONFIG_ARCH_AT91 is not set
+# CONFIG_ARCH_AT91RM9200 is not set
+# CONFIG_ARCH_EP93XX is not set
+# CONFIG_ARCH_IMX is not set
+# CONFIG_ARCH_NETX is not set
+CONFIG_ARCH_NOMADIK=y
+# CONFIG_ARCH_OMAP is not set
+# CONFIG_ARCH_S3C24xx is not set
+CONFIG_COMMON_CLKDEV=y
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
+CONFIG_ARCH_TEXT_BASE=0x03c00000
+CONFIG_BOARDINFO="NHK8815"
+CONFIG_MACH_NOMADIK_8815NHK=y
+CONFIG_NOMADIK_8815=y
+# CONFIG_AEABI is not set
+
+#
+# Arm specific settings         
+#
+CONFIG_CMD_ARM_CPUINFO=y
+CONFIG_CMDLINE_TAG=y
+CONFIG_SETUP_MEMORY_TAGS=y
+# CONFIG_INITRD_TAG is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_GREGORIAN_CALENDER=y
+CONFIG_HAS_KALLSYMS=y
+CONFIG_HAS_MODULES=y
+CONFIG_CMD_MEMORY=y
+CONFIG_ENV_HANDLING=y
+
+#
+# General Settings              
+#
+CONFIG_LOCALVERSION_AUTO=y
+
+#
+# memory layout                 
+#
+CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
+CONFIG_TEXT_BASE=0x03F80000
+CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
+CONFIG_MEMORY_LAYOUT_DEFAULT=y
+# CONFIG_MEMORY_LAYOUT_FIXED is not set
+CONFIG_STACK_SIZE=0x8000
+CONFIG_MALLOC_SIZE=0x400000
+# CONFIG_BROKEN is not set
+# CONFIG_EXPERIMENTAL is not set
+CONFIG_PROMPT="Nomadik:"
+CONFIG_BAUDRATE=115200
+CONFIG_LONGHELP=y
+CONFIG_CBSIZE=1024
+CONFIG_MAXARGS=16
+CONFIG_SHELL_HUSH=y
+# CONFIG_SHELL_SIMPLE is not set
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="> "
+# CONFIG_HUSH_FANCY_PROMPT is not set
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_DYNAMIC_CRC_TABLE=y
+CONFIG_ERRNO_MESSAGES=y
+CONFIG_TIMESTAMP=y
+CONFIG_CONSOLE_FULL=y
+CONFIG_CONSOLE_ACTIVATE_FIRST=y
+# CONFIG_OF_FLAT_TREE is not set
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="board/nhk8815/env"
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
+# CONFIG_CMD_ECHO_E is not set
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
+# CONFIG_CMD_UBI is not set
+
+#
+# booting                       
+#
+CONFIG_CMD_BOOTM=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
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
+# CONFIG_CMD_UNLZO is not set
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+# CONFIG_NET_TFTP_PUSH is not set
+# CONFIG_NET_NETCONSOLE is not set
+# CONFIG_NET_RESOLV is not set
+
+#
+# Drivers                       
+#
+
+#
+# serial drivers                
+#
+# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
+CONFIG_SERIAL_AMBA_PL011=y
+# CONFIG_DRIVER_SERIAL_NS16550 is not set
+CONFIG_MIIPHY=y
+
+#
+# Network drivers               
+#
+# CONFIG_DRIVER_NET_SMC911X is not set
+CONFIG_DRIVER_NET_SMC91111=y
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
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_MTD_NAND_VERIFY_WRITE=y
+CONFIG_MTD_NAND_ECC_SMC=y
+CONFIG_MTD_NAND_IDS=y
+CONFIG_MTD_NAND_NOMADIK=y
+# CONFIG_UBI is not set
+# CONFIG_ATA is not set
+# CONFIG_USB is not set
+# CONFIG_USB_GADGET is not set
+# CONFIG_VIDEO is not set
+
+#
+# Filesystem support            
+#
+# CONFIG_FS_CRAMFS is not set
+CONFIG_FS_RAMFS=y
+CONFIG_FS_DEVFS=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
+CONFIG_CRC32=y
+# CONFIG_GENERIC_FIND_NEXT_BIT is not set
+# CONFIG_PROCESS_ESCAPE_SEQUENCE is not set
diff --git a/arch/arm/mach-nomadik/Kconfig b/arch/arm/mach-nomadik/Kconfig
index 4cf3f7b..64894c8 100644
--- a/arch/arm/mach-nomadik/Kconfig
+++ b/arch/arm/mach-nomadik/Kconfig
@@ -1,11 +1,24 @@
 if ARCH_NOMADIK
 
+config ARCH_TEXT_BASE
+	hex
+	default 0x03c00000 if MACH_NOMADIK_8815NHK
+
+config BOARDINFO
+	default "NHK8815" if MACH_NOMADIK_8815NHK
+
 choice
 	prompt "Nomadik boards"
 
+config MACH_NOMADIK_8815NHK
+	bool "ST 8815 Nomadik Hardware Kit (evaluation board)"
+	select NOMADIK_8815
+	select COMMON_CLKDEV
+
 endchoice
 
 config NOMADIK_8815
 	bool
+	select ARM_AMBA
 
 endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
