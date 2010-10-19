Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P86uJ-0004TH-NH
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 07:46:54 +0000
Received: by bwz7 with SMTP id 7so1615228bwz.36
	for <barebox@lists.infradead.org>; Tue, 19 Oct 2010 00:46:49 -0700 (PDT)
From: Marek Belisko <marek.belisko@gmail.com>
Date: Tue, 19 Oct 2010 09:48:52 +0200
Message-Id: <1287474532-31528-1-git-send-email-marek.belisko@gmail.com>
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
Subject: [PATCH] Add basic support for mini2440 dev board.
To: barebox@lists.infradead.org, marek.belisko@gmail.com

This work is mainly based on a9m2440 board implementation
from Juergen Beisert <jbe@pengutronix.de>. Functionality
was tested only running barebox from ram. Loading to flash
and booting will not work because missing lowlevel_init
functionality (lack of jtag debugger on my side ;)).

Signed-off-by: Marek Belisko <marek.belisko@gmail.com>
---
 arch/arm/Makefile                              |    1 +
 arch/arm/boards/mini2440/Makefile              |    2 +
 arch/arm/boards/mini2440/config.h              |   50 +++++
 arch/arm/boards/mini2440/env/bin/_update       |   34 ++++
 arch/arm/boards/mini2440/env/bin/boot          |   40 ++++
 arch/arm/boards/mini2440/env/bin/hush_hack     |    1 +
 arch/arm/boards/mini2440/env/bin/init          |   34 ++++
 arch/arm/boards/mini2440/env/bin/update_kernel |   13 ++
 arch/arm/boards/mini2440/env/bin/update_root   |   13 ++
 arch/arm/boards/mini2440/env/config            |   27 +++
 arch/arm/boards/mini2440/mini2440.c            |  139 +++++++++++++
 arch/arm/configs/mini2440_defconfig            |  251 ++++++++++++++++++++++++
 arch/arm/mach-s3c24xx/Kconfig                  |    9 +
 13 files changed, 614 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/mini2440/Makefile
 create mode 100644 arch/arm/boards/mini2440/config.h
 create mode 100644 arch/arm/boards/mini2440/env/bin/_update
 create mode 100644 arch/arm/boards/mini2440/env/bin/boot
 create mode 100644 arch/arm/boards/mini2440/env/bin/hush_hack
 create mode 100644 arch/arm/boards/mini2440/env/bin/init
 create mode 100644 arch/arm/boards/mini2440/env/bin/update_kernel
 create mode 100644 arch/arm/boards/mini2440/env/bin/update_root
 create mode 100644 arch/arm/boards/mini2440/env/config
 create mode 100644 arch/arm/boards/mini2440/mini2440.c
 create mode 100644 arch/arm/configs/mini2440_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 77b6cf4..c1d1fb6 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -80,6 +80,7 @@ board-$(CONFIG_MACH_PCM043)			:= pcm043
 board-$(CONFIG_MACH_PM9263)			:= pm9263
 board-$(CONFIG_MACH_SCB9328)			:= scb9328
 board-$(CONFIG_MACH_NESO)			:= guf-neso
+board-$(CONFIG_MACH_MINI2440)			:= mini2440
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/mini2440/Makefile b/arch/arm/boards/mini2440/Makefile
new file mode 100644
index 0000000..09f7e7d
--- /dev/null
+++ b/arch/arm/boards/mini2440/Makefile
@@ -0,0 +1,2 @@
+
+obj-y += mini2440.o
diff --git a/arch/arm/boards/mini2440/config.h b/arch/arm/boards/mini2440/config.h
new file mode 100644
index 0000000..a664017
--- /dev/null
+++ b/arch/arm/boards/mini2440/config.h
@@ -0,0 +1,50 @@
+/**
+ * @file
+ * @brief Global defintions for the ARM S3C2440 based mini2440 CPU card
+ */
+/* This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
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
+/**
+ * The external clock reference is a 12.00 MHz crystal
+ */
+#define S3C24XX_CLOCK_REFERENCE 12000000
+
+/*
+ * Flash access timings
+ * Tacls  = 0ns (but 20ns data setup time)
+ * Twrph0 = 25ns (write) 35ns (read)
+ * Twrph1 = 10ns (10ns data hold time)
+ * Read cycle time = 50ns
+ *
+ * Assumed HCLK is 100MHz
+ * Tacls = 1 (-> 20ns)
+ * Twrph0 = 3 (-> 40ns)
+ * Twrph1 = 1 (-> 20ns)
+ * Cycle time = 80ns
+ */
+#define A9M2440_TACLS 1
+#define A9M2440_TWRPH0 3
+#define A9M2440_TWRPH1 1
+
+/* needed in the generic NAND boot code only */
+#ifdef CONFIG_S3C24XX_NAND_BOOT
+# define BOARD_DEFAULT_NAND_TIMING CALC_NFCONF_TIMING(A9M2440_TACLS, A9M2440_TWRPH0, A9M2440_TWRPH1)
+#endif
+#endif /* __CONFIG_H */
diff --git a/arch/arm/boards/mini2440/env/bin/_update b/arch/arm/boards/mini2440/env/bin/_update
new file mode 100644
index 0000000..b10682e
--- /dev/null
+++ b/arch/arm/boards/mini2440/env/bin/_update
@@ -0,0 +1,34 @@
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
+echo
+echo "erasing partition $part"
+erase $part
+
+echo
+echo "flashing $image to $part"
+echo
+tftp $image $part
diff --git a/arch/arm/boards/mini2440/env/bin/boot b/arch/arm/boards/mini2440/env/bin/boot
new file mode 100644
index 0000000..86e22cf
--- /dev/null
+++ b/arch/arm/boards/mini2440/env/bin/boot
@@ -0,0 +1,40 @@
+#!/bin/sh
+
+. /env/config
+
+if [ x$1 = xnand ]; then
+	root=nand
+	kernel=nand
+fi
+
+if [ x$1 = xnet ]; then
+	root=net
+	kernel=net
+fi
+
+if [ x$root = xnand ]; then
+	bootargs="$bootargs root=$rootpart_nand rootfstype=jffs2"
+fi
+if [ x$root = xnet ]; then
+	bootargs="$bootargs root=/dev/nfs nfsroot=$eth0.serverip:$nfsroot,v3,tcp"
+	if [ x$ip = xdhcp ]; then
+		bootargs="$bootargs ip=dhcp"
+	else
+		bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
+	fi
+fi
+
+bootargs="$bootargs mtdparts=\"NAND 32MiB 3,3V 8-bit:$nand_parts\""
+
+bootargs="$bootargs cs89x0_media=rj45 cs89x0_mac=$eth0.ethaddr"
+
+if [ x$kernel = xnet ]; then
+	if [ x$ip = xdhcp ]; then
+		dhcp
+	fi
+	tftp $uimage uImage || exit 1
+	bootm uImage
+else
+	bootm /dev/nand0.kernel.bb
+fi
+
diff --git a/arch/arm/boards/mini2440/env/bin/hush_hack b/arch/arm/boards/mini2440/env/bin/hush_hack
new file mode 100644
index 0000000..5fffa92
--- /dev/null
+++ b/arch/arm/boards/mini2440/env/bin/hush_hack
@@ -0,0 +1 @@
+nand -a /dev/nand0.*
diff --git a/arch/arm/boards/mini2440/env/bin/init b/arch/arm/boards/mini2440/env/bin/init
new file mode 100644
index 0000000..e98ab84
--- /dev/null
+++ b/arch/arm/boards/mini2440/env/bin/init
@@ -0,0 +1,34 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+
+if [ -e /dev/nand0 ]; then
+#addpart /dev/nand0 $nand_parts
+
+	# Uh, oh, hush first expands wildcards and then starts executing
+	# commands. What a bug!
+	source /env/bin/hush_hack
+fi
+
+if [ -z $eth0.ethaddr ]; then
+	while [ -z $eth0.ethaddr ]; do
+		readline "no MAC address set for eth0. please enter the one found on your board: " eth0.ethaddr
+	done
+	echo -a /env/config "eth0.ethaddr=$eth0.ethaddr"
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
diff --git a/arch/arm/boards/mini2440/env/bin/update_kernel b/arch/arm/boards/mini2440/env/bin/update_kernel
new file mode 100644
index 0000000..c43a557
--- /dev/null
+++ b/arch/arm/boards/mini2440/env/bin/update_kernel
@@ -0,0 +1,13 @@
+#!/bin/sh
+
+. /env/config
+
+part=/dev/nand0.kernel.bb
+
+if [ x$1 = x ]; then
+	image=$uimage
+else
+	image=$1
+fi
+
+. /env/bin/_update $image
diff --git a/arch/arm/boards/mini2440/env/bin/update_root b/arch/arm/boards/mini2440/env/bin/update_root
new file mode 100644
index 0000000..46cbca5
--- /dev/null
+++ b/arch/arm/boards/mini2440/env/bin/update_root
@@ -0,0 +1,13 @@
+#!/bin/sh
+
+. /env/config
+
+part=/dev/nand0.root.bb
+
+if [ x$1 = x ]; then
+	image=$jffs2
+else
+	image=$1
+fi
+
+. /env/bin/_update $image
diff --git a/arch/arm/boards/mini2440/env/config b/arch/arm/boards/mini2440/env/config
new file mode 100644
index 0000000..05a2d01
--- /dev/null
+++ b/arch/arm/boards/mini2440/env/config
@@ -0,0 +1,27 @@
+#!/bin/sh
+
+# can be either 'net' or 'nand''
+kernel=net
+root=net
+
+#uimage=uImage-a9m2440
+uimage=uImage
+jffs2=root-a9m2440.jffs2
+
+autoboot_timeout=3
+
+nfsroot="/home/open-nandra/rootfs"
+bootargs="console=ttySAC0,115200"
+
+nand_parts="256k(barebox),128k(bareboxenv),1536k(kernel),-(root)"
+rootpart_nand="/dev/mtdblock3"
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+#ip=dhcp
+
+# or set your networking parameters here
+eth0.ipaddr=192.168.42.32
+eth0.netmask=255.255.0.0
+eth0.gateway=192.168.23.1
+eth0.serverip=192.168.23.2
+eth0.ethaddr=00:04:f3:00:06:35
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
new file mode 100644
index 0000000..e36c576
--- /dev/null
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -0,0 +1,139 @@
+/*
+ * Copyright (C) 2010 Marek Belisko <marek.belisko@open-nandra.com>
+ * 
+ * Based on a9m2440.c board init by Juergen Beisert, Pengutronix
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
+/**
+ * @file
+ * @brief mini2440 Specific Board Initialization routines
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <asm/armlinux.h>
+#include <asm/mach-types.h>
+#include <partition.h>
+#include <nand.h>
+#include <asm/io.h>
+#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c24x0-nand.h>
+#include <mach/s3c24xx-generic.h>
+#include <dm9000.h>
+
+static struct memory_platform_data ram_pdata = {
+	.name		= "ram0",
+	.flags		= DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev = {
+	.name		= "mem",
+	.map_base	= CS6_BASE,
+	.platform_data	= &ram_pdata,
+};
+
+static struct s3c24x0_nand_platform_data nand_info = {
+	.nand_timing = CALC_NFCONF_TIMING(A9M2440_TACLS, A9M2440_TWRPH0, A9M2440_TWRPH1)
+};
+
+static struct device_d nand_dev = {
+	.name     = "s3c24x0_nand",
+	.map_base = S3C24X0_NAND_BASE,
+	.platform_data	= &nand_info,
+};
+
+/*
+ * dm9000 network controller onboard
+ */
+static struct dm9000_platform_data dm9000_data = {
+	.iobase   = CS4_BASE + 0x300,
+	.iodata   = CS4_BASE + 0x304,
+	.buswidth = DM9000_WIDTH_16,
+	.srom     = 1,
+};
+
+static struct device_d dm9000_dev = {
+	.name     = "dm9000",
+	.map_base = CS4_BASE + 0x300,
+	.size     = 8,
+	.platform_data = &dm9000_data,
+};
+
+static int mini2440_devices_init(void)
+{
+	uint32_t reg;
+
+	reg = readl(BWSCON);
+
+	/* CS#4 to access the network controller */
+	reg &= ~0x000f0000;
+	reg |=  0x000d0000;	/* 16 bit */
+	writel(0x1f4c, BANKCON4);
+
+	writel(reg, BWSCON);
+
+	/* release the reset signal to external devices */
+	reg = readl(MISCCR);
+	reg |= 0x10000;
+	writel(reg, MISCCR);
+
+	register_device(&nand_dev);
+	register_device(&sdram_dev);
+	register_device(&dm9000_dev);
+#ifdef CONFIG_NAND
+	/* ----------- add some vital partitions -------- */
+	devfs_del_partition("self_raw");
+	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", NULL);
+
+	devfs_del_partition("env_raw");
+	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", NULL);
+#endif
+	armlinux_add_dram(&sdram_dev);
+	armlinux_set_bootparams((void *)sdram_dev.map_base + 0x100);
+	armlinux_set_architecture(MACH_TYPE_MINI2440);
+
+	return 0;
+}
+
+device_initcall(mini2440_devices_init);
+
+#ifdef CONFIG_S3C24XX_NAND_BOOT
+void __bare_init nand_boot(void)
+{
+	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0, 512);
+}
+#endif
+
+static struct device_d mini2440_serial_device = {
+	.name     = "s3c24x0_serial",
+	.map_base = UART1_BASE,
+	.size     = UART1_SIZE,
+};
+
+static int mini2440_console_init(void)
+{
+	register_device(&mini2440_serial_device);
+	return 0;
+}
+
+console_initcall(mini2440_console_init);
diff --git a/arch/arm/configs/mini2440_defconfig b/arch/arm/configs/mini2440_defconfig
new file mode 100644
index 0000000..11a0120
--- /dev/null
+++ b/arch/arm/configs/mini2440_defconfig
@@ -0,0 +1,251 @@
+#
+# Automatically generated make config: don't edit
+# Linux barebox version: 2010.10.0
+# Tue Oct 19 09:01:55 2010
+#
+# CONFIG_BOARD_LINKER_SCRIPT is not set
+CONFIG_GENERIC_LINKER_SCRIPT=y
+CONFIG_ARM=y
+
+#
+# System Type
+#
+# CONFIG_ARCH_AT91 is not set
+# CONFIG_ARCH_EP93XX is not set
+# CONFIG_ARCH_IMX is not set
+# CONFIG_ARCH_NETX is not set
+# CONFIG_ARCH_NOMADIK is not set
+# CONFIG_ARCH_OMAP is not set
+CONFIG_ARCH_S3C24xx=y
+
+#
+# Processor Type
+#
+CONFIG_CPU_32=y
+CONFIG_CPU_ARM920T=y
+CONFIG_CPU_32v4T=y
+
+#
+# processor features
+#
+CONFIG_ARCH_TEXT_BASE=0x31fc0000
+CONFIG_BOARDINFO="Mini 2440"
+CONFIG_CPU_S3C2440=y
+# CONFIG_MACH_A9M2410 is not set
+# CONFIG_MACH_A9M2440 is not set
+CONFIG_MACH_MINI2440=y
+
+#
+# Board specific settings       
+#
+
+#
+# S3C24X0 Features              
+#
+# CONFIG_S3C24XX_PLL_INIT is not set
+# CONFIG_S3C24XX_SDRAM_INIT is not set
+CONFIG_S3C24XX_NAND_BOOT=y
+# CONFIG_AEABI is not set
+
+#
+# Arm specific settings         
+#
+CONFIG_CMD_ARM_CPUINFO=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
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
+CONFIG_TEXT_BASE=0x31fc0000
+CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
+CONFIG_MEMORY_LAYOUT_DEFAULT=y
+# CONFIG_MEMORY_LAYOUT_FIXED is not set
+CONFIG_STACK_SIZE=0x8000
+CONFIG_MALLOC_SIZE=0x400000
+CONFIG_BROKEN=y
+CONFIG_EXPERIMENTAL=y
+# CONFIG_MODULES is not set
+# CONFIG_KALLSYMS is not set
+CONFIG_PROMPT="barebox:"
+CONFIG_BAUDRATE=38400
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
+# CONFIG_MENU is not set
+# CONFIG_PASSWORD is not set
+CONFIG_DYNAMIC_CRC_TABLE=y
+CONFIG_ERRNO_MESSAGES=y
+CONFIG_TIMESTAMP=y
+CONFIG_CONSOLE_FULL=y
+CONFIG_CONSOLE_ACTIVATE_FIRST=y
+# CONFIG_OF_FLAT_TREE is not set
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mini2440/env"
+
+#
+# Debugging                     
+#
+CONFIG_DEBUG_INFO=y
+# CONFIG_ENABLE_FLASH_NOISE is not set
+# CONFIG_ENABLE_PARTITION_NOISE is not set
+CONFIG_ENABLE_DEVICE_NOISE=y
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
+# CONFIG_CMD_LOGIN is not set
+# CONFIG_CMD_PASSWD is not set
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
+# CONFIG_CMD_LOADY is not set
+# CONFIG_CMD_LOADS is not set
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
+# CONFIG_CMD_BOOTM_ZLIB is not set
+# CONFIG_CMD_BOOTM_BZLIB is not set
+# CONFIG_CMD_BOOTM_LZO is not set
+# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_BOOTU=y
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
+# CONFIG_NET_NFS is not set
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
+# CONFIG_DRIVER_SERIAL_NS16550 is not set
+CONFIG_DRIVER_SERIAL_S3C24X0=y
+# CONFIG_DRIVER_SERIAL_S3C24X0_AUTOSYNC is not set
+CONFIG_HAS_DM9000=y
+CONFIG_MIIDEV=y
+
+#
+# Network drivers               
+#
+# CONFIG_DRIVER_NET_SMC911X is not set
+# CONFIG_DRIVER_NET_SMC91111 is not set
+CONFIG_DRIVER_NET_DM9000=y
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
+CONFIG_NAND_S3C24X0=y
+# CONFIG_MTD_NAND_VERIFY_WRITE is not set
+# CONFIG_MTD_NAND_ECC_SMC is not set
+CONFIG_MTD_NAND_IDS=y
+# CONFIG_MTD_NAND_DISKONCHIP is not set
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
+CONFIG_CRC32=y
+# CONFIG_DIGEST is not set
+# CONFIG_GENERIC_FIND_NEXT_BIT is not set
+# CONFIG_PROCESS_ESCAPE_SEQUENCE is not set
diff --git a/arch/arm/mach-s3c24xx/Kconfig b/arch/arm/mach-s3c24xx/Kconfig
index 2f47907..0f4d6e7 100644
--- a/arch/arm/mach-s3c24xx/Kconfig
+++ b/arch/arm/mach-s3c24xx/Kconfig
@@ -5,6 +5,7 @@ config ARCH_TEXT_BASE
 	default 0x31fc0000
 
 config BOARDINFO
+	default "Mini 2440"    if MACH_MINI2440
 	default "Digi A9M2440" if MACH_A9M2440
 	default "Digi A9M2410" if MACH_A9M2410
 
@@ -37,6 +38,14 @@ config MACH_A9M2440
 	  Say Y here if you are using Digi's Connect Core 9M equipped
 	  with a Samsung S3C2440 Processor
 
+config MACH_MINI2440
+	bool "Mini 2440"
+	select CPU_S3C2440
+	select HAS_DM9000
+	help
+	  Say Y here if you are using Mini 2440 dev board equipped 
+	  with a Samsung S3C2440 Processor
+
 endchoice
 
 menu "Board specific settings       "
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
