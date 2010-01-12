Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUdrz-0007Gp-6p
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 10:21:06 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrr-0006W5-7b
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:55 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrr-00070h-4B
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:55 +0100
Message-Id: <20100112102055.014154409@pengutronix.de>
References: <20100112101534.868276907@pengutronix.de>
Date: Tue, 12 Jan 2010 11:15:42 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Content-Disposition: inline; filename=add_generic_platform.diff
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
Subject: [PATCHv2 08/14] Add a generic PC platform
To: barebox@lists.infradead.org

This code adds a generic x86 platform, enabling barebox to act as a
bootloader like 'GRUB'. Very minimalistic, yet. Supports only a serial console
and is tested with QEMU only.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 Documentation/boards.dox           |    2 
 arch/x86/configs/generic_defconfig |  186 +++++++++++++++++++++++++++++++++++++
 board/x86_generic/Makefile         |    1 
 board/x86_generic/config.h         |   21 ++++
 board/x86_generic/env/bin/boot     |   37 +++++++
 board/x86_generic/env/bin/init     |   15 ++
 board/x86_generic/env/config       |   31 ++++++
 board/x86_generic/generic_pc.c     |  140 +++++++++++++++++++++++++++
 8 files changed, 432 insertions(+), 1 deletion(-)

Index: barebox-2009.12.0/board/x86_generic/Makefile
===================================================================
--- /dev/null
+++ barebox-2009.12.0/board/x86_generic/Makefile
@@ -0,0 +1 @@
+obj-y += generic_pc.o
Index: barebox-2009.12.0/board/x86_generic/generic_pc.c
===================================================================
--- /dev/null
+++ barebox-2009.12.0/board/x86_generic/generic_pc.c
@@ -0,0 +1,140 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
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
+ * @brief Generic PC support to let barebox acting as a boot loader
+ */
+
+#include <common.h>
+#include <types.h>
+#include <driver.h>
+#include <init.h>
+#include <asm/syslib.h>
+#include <ns16550.h>
+
+static struct memory_platform_data ram_pdata = {
+	.name		= "ram0",
+	.flags		= DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev = {
+	.name		= "mem",
+	.size		= 16 * 1024 * 1024,
+	.map_base	= 0,
+	.platform_data	= &ram_pdata,
+};
+
+static struct device_d bios_disk_dev = {
+	.name		= "biosdrive",
+	.size		= 1,
+};
+
+/*
+ * These datas are from the MBR, created by the linker and filled by the
+ * setup tool while installing barebox on the disk drive
+ */
+extern uint64_t pers_env_storage;
+extern uint16_t pers_env_size;
+extern uint8_t pers_env_drive;
+
+/**
+ * Persistant environment "not used" marker.
+ * Note: Must be in accordance to the value the tool "setup_mbr" writes.
+ */
+#define PATCH_AREA_PERS_SIZE_UNUSED 0x000
+
+static int devices_init(void)
+{
+	int rc;
+
+	sdram_dev.size = bios_get_memsize();	/* extended memory only */
+	sdram_dev.size <<= 10;
+
+	register_device(&sdram_dev);
+	register_device(&bios_disk_dev);
+
+	if (pers_env_size != PATCH_AREA_PERS_SIZE_UNUSED) {
+		rc = devfs_add_partition("disk0",	/* FIXME */
+				pers_env_storage * 512,
+				(unsigned)pers_env_size * 512,
+				DEVFS_PARTITION_FIXED, "env0");
+		printf("Partition: %d\n", rc);
+	} else
+		printf("No persistant storage defined\n");
+
+        return 0;
+}
+device_initcall(devices_init);
+
+#ifdef CONFIG_DRIVER_SERIAL_NS16550
+
+static struct NS16550_plat serial_plat = {
+       .clock = 1843200,
+       .f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
+       .reg_read = x86_uart_read,
+       .reg_write = x86_uart_write,
+};
+
+/* we are expecting always one serial interface */
+static struct device_d generic_pc_serial_device = {
+       .name = "serial_ns16550",
+       .map_base = 0x3f8,
+       .size = 8,
+       .platform_data = (void *)&serial_plat,
+};
+
+static int pc_console_init(void)
+{
+       /* Register the serial port */
+       return register_device(&generic_pc_serial_device);
+}
+console_initcall(pc_console_init);
+
+#endif
+
+/** @page generic_pc Generic PC based bootloader
+
+This platform acts as a generic PC based bootloader. It depends on at least
+one boot media that is connected locally (no network boot) and can be
+handled by the regular BIOS (any kind of hard disks for example).
+
+The created @a barebox image can be used to boot a standard x86 bzImage
+Linux kernel.
+
+Refer section @ref x86_bootloader_preparations how to do so.
+
+How to get the binary image:
+
+Using the default configuration:
+
+@code
+make ARCH=x86 generic_defconfig
+@endcode
+
+Build the binary image:
+
+@code
+make ARCH=x86 CROSS_COMPILE=x86compiler
+@endcode
+
+@note replace the 'x86compiler' with your x86 (cross) compiler.
+
+*/
Index: barebox-2009.12.0/board/x86_generic/env/config
===================================================================
--- /dev/null
+++ barebox-2009.12.0/board/x86_generic/env/config
@@ -0,0 +1,31 @@
+#
+# basic config
+#
+# boot source: 'disk' or 'net'
+kernel=disk
+root=disk
+
+# data for the NFS case
+nfsroot="/path/to/nfs_root"
+
+# data for the disk case
+kernel_device=/dev/biosdisk0.1
+rootpart_disk=/dev/sda1
+rootpart_fs=ext2
+
+baudrate=115200
+serial=ttyS0
+
+# use UART for console
+bootargs="console=$serial,$baudrate"
+
+autoboot_timeout=3
+
+# use 'dhcp' to do dhcp in uboot and in kernel
+#  ip=dhcp
+# or set your networking parameters here
+#  eth0.ipaddr=192.168.3.11
+#  eth0.netmask=255.255.255.0
+#  eth0.gateway=a.b.c.d
+#  eth0.serverip=192.168.3.10
+#  eth0.ethaddr=aa.bb.cc.dd.ee.ff
Index: barebox-2009.12.0/board/x86_generic/config.h
===================================================================
--- /dev/null
+++ barebox-2009.12.0/board/x86_generic/config.h
@@ -0,0 +1,21 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
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
+/* nothing special yet */
Index: barebox-2009.12.0/board/x86_generic/env/bin/init
===================================================================
--- /dev/null
+++ barebox-2009.12.0/board/x86_generic/env/bin/init
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+
+echo
+echo -n "Hit any key to stop autoboot: "
+timeout -a $autoboot_timeout
+if [ $? != 0 ]; then
+        exit
+fi
+
+boot
Index: barebox-2009.12.0/arch/x86/configs/generic_defconfig
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/configs/generic_defconfig
@@ -0,0 +1,186 @@
+#
+# Automatically generated make config: don't edit
+# barebox version: 2009.12.0-x86-trunk
+#
+CONFIG_ARCH_TEXT_BASE=0x00007c00
+CONFIG_BOARDINFO="Generic x86 bootloader"
+# CONFIG_BOARD_LINKER_SCRIPT is not set
+CONFIG_GENERIC_LINKER_SCRIPT=y
+CONFIG_X86=y
+CONFIG_MACH_X86_GENERIC=y
+CONFIG_X86_BIOS_BRINGUP=y
+# CONFIG_X86_NATIVE_BRINGUP is not set
+
+#
+# BIOS boot source              
+#
+CONFIG_X86_HDBOOT=y
+
+#
+# Board specific settings       
+#
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
+CONFIG_TEXT_BASE=0x00007c00
+CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
+CONFIG_MEMORY_LAYOUT_DEFAULT=y
+# CONFIG_MEMORY_LAYOUT_FIXED is not set
+CONFIG_STACK_SIZE=0x7000
+CONFIG_MALLOC_SIZE=0x400000
+CONFIG_BROKEN=y
+CONFIG_EXPERIMENTAL=y
+# CONFIG_MODULES is not set
+# CONFIG_KALLSYMS is not set
+CONFIG_PROMPT="uboot:"
+CONFIG_BAUDRATE=115200
+CONFIG_LONGHELP=y
+CONFIG_CBSIZE=1024
+CONFIG_MAXARGS=16
+CONFIG_SHELL_HUSH=y
+# CONFIG_SHELL_SIMPLE is not set
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="> "
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
+CONFIG_DEFAULT_ENVIRONMENT_PATH="board/x86_generic/env"
+
+#
+# Debugging                     
+#
+CONFIG_DEBUG_INFO=y
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
+# CONFIG_CMD_TRUE is not set
+# CONFIG_CMD_FALSE is not set
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
+# CONFIG_CMD_LOADY is not set
+# CONFIG_CMD_LOADS is not set
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_CRC is not set
+# CONFIG_CMD_MTEST is not set
+
+#
+# flash                         
+#
+# CONFIG_CMD_FLASH is not set
+
+#
+# booting                       
+#
+# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_LINUX16=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+# CONFIG_CMD_PARTITION is not set
+CONFIG_CMD_TEST=y
+CONFIG_CMD_VERSION=y
+CONFIG_CMD_HELP=y
+CONFIG_CMD_DEVINFO=y
+# CONFIG_NET is not set
+
+#
+# Drivers                       
+#
+
+#
+# serial drivers                
+#
+CONFIG_DRIVER_SERIAL_NS16550=y
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
+# CONFIG_DRIVER_CFI_OLD is not set
+# CONFIG_NAND is not set
+CONFIG_ATA=y
+
+#
+# drive types
+#
+CONFIG_ATA_DISK=y
+
+#
+# interface types
+#
+CONFIG_ATA_BIOS=y
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
+# CONFIG_GENERIC_FIND_NEXT_BIT is not set
Index: barebox-2009.12.0/board/x86_generic/env/bin/boot
===================================================================
--- /dev/null
+++ barebox-2009.12.0/board/x86_generic/env/bin/boot
@@ -0,0 +1,37 @@
+#!/bin/sh
+
+. /env/config
+
+if [ x$1 = xdisk ]; then
+	root=disk
+	kernel=disk
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
+if [ x$root = xdisk ]; then
+	bootargs="$bootargs root=$rootpart_disk rootfstype=$rootpart_fs rw"
+else
+	bootargs="$bootargs root=/dev/nfs nfsroot=$eth0.serverip:$nfsroot,v3,tcp rw"
+fi
+
+if [ $kernel = net ]; then
+	if [ x$ip = xdhcp ]; then
+		dhcp
+	fi
+	tftp $uimage uImage || exit 1
+	bootm uImage
+else
+	bootargs="BOOT_IMAGE=$kernel_device auto $bootargs"
+	linux16 $kernel_device
+fi
+
Index: barebox-2009.12.0/Documentation/boards.dox
===================================================================
--- barebox-2009.12.0.orig/Documentation/boards.dox
+++ barebox-2009.12.0/Documentation/boards.dox
@@ -27,7 +27,7 @@ Blackfin type:
 
 x86 type:
 
-@li nothing yet
+@li @subpage generic_pc
 
 coldfire/m68k type:
 

-- 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
