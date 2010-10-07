Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P3rx7-0003lQ-4s
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 15:00:16 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu,  7 Oct 2010 16:59:56 +0200
Message-Id: <1286463597-16948-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286463597-16948-1-git-send-email-jbe@pengutronix.de>
References: <1286463597-16948-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/4] Add the i.MX23-EVK platform (WIP)
To: barebox@lists.infradead.org

Note: This is work in progress. Use with care.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/Makefile                             |    2 +
 arch/arm/boards/freescale-mx23-evk/Makefile   |    2 +
 arch/arm/boards/freescale-mx23-evk/config.h   |   16 ++
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c |   80 +++++++++
 arch/arm/configs/imx23evk_defconfig           |  224 +++++++++++++++++++++++++
 arch/arm/mach-stm/Kconfig                     |    7 +
 6 files changed, 331 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx23-evk/Makefile
 create mode 100644 arch/arm/boards/freescale-mx23-evk/config.h
 create mode 100644 arch/arm/boards/freescale-mx23-evk/mx23-evk.c
 create mode 100644 arch/arm/configs/imx23evk_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 77b6cf4..75fa6d3 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -41,6 +41,7 @@ CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
 machine-$(CONFIG_ARCH_AT91)		:= at91
 machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
 machine-$(CONFIG_ARCH_IMX)		:= imx
+machine-$(CONFIG_ARCH_STM)		:= stm
 machine-$(CONFIG_ARCH_NOMADIK)		:= nomadik
 machine-$(CONFIG_ARCH_NETX)		:= netx
 machine-$(CONFIG_ARCH_OMAP)		:= omap
@@ -80,6 +81,7 @@ board-$(CONFIG_MACH_PCM043)			:= pcm043
 board-$(CONFIG_MACH_PM9263)			:= pm9263
 board-$(CONFIG_MACH_SCB9328)			:= scb9328
 board-$(CONFIG_MACH_NESO)			:= guf-neso
+board-$(CONFIG_MACH_MX23EVK)			:= freescale-mx23-evk
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/freescale-mx23-evk/Makefile b/arch/arm/boards/freescale-mx23-evk/Makefile
new file mode 100644
index 0000000..cffb561
--- /dev/null
+++ b/arch/arm/boards/freescale-mx23-evk/Makefile
@@ -0,0 +1,2 @@
+#
+obj-y := mx23-evk.o
diff --git a/arch/arm/boards/freescale-mx23-evk/config.h b/arch/arm/boards/freescale-mx23-evk/config.h
new file mode 100644
index 0000000..4b3da8f
--- /dev/null
+++ b/arch/arm/boards/freescale-mx23-evk/config.h
@@ -0,0 +1,16 @@
+/*
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
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
new file mode 100644
index 0000000..d361320
--- /dev/null
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -0,0 +1,80 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix
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
+#include <common.h>
+#include <init.h>
+#include <gpio.h>
+#include <environment.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <mach/imx-regs.h>
+
+static struct memory_platform_data ram_pdata = {
+	.name = "ram0",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev = {
+	.name     = "mem",
+	.map_base = IMX_MEMORY_BASE,
+	.size     = 32 * 1024 * 1024,
+	.platform_data = &ram_pdata,
+};
+
+static int mx23_evk_devices_init(void)
+{
+	register_device(&sdram_dev);
+
+	armlinux_add_dram(&sdram_dev);
+	armlinux_set_bootparams((void*)(IMX_MEMORY_BASE + 0x100));
+	armlinux_set_architecture(MACH_TYPE_MX23EVK);
+
+	return 0;
+}
+
+device_initcall(mx23_evk_devices_init);
+
+static struct device_d mx23_evk_serial_device = {
+	.name     = "stm_serial",
+	.map_base = IMX_DBGUART_BASE,
+	.size     = 8192,
+};
+
+static int mx23_evk_console_init(void)
+{
+	return register_device(&mx23_evk_serial_device);
+}
+
+console_initcall(mx23_evk_console_init);
+
+/** @page mx23_evk Freescale's i.MX23 evaluation kit
+
+This CPU card is based on an i.MX23 CPU. The card is shipped with:
+
+- 32 MiB synchronous dynamic RAM (mobile DDR type)
+- ENC28j60 based network (over SPI)
+
+Memory layout when @b barebox is running:
+
+- 0x40000000 start of SDRAM
+- 0x40000100 start of kernel's boot parameters
+  - below malloc area: stack area
+  - below barebox: malloc area
+- 0x41000000 start of @b barebox
+*/
diff --git a/arch/arm/configs/imx23evk_defconfig b/arch/arm/configs/imx23evk_defconfig
new file mode 100644
index 0000000..a3d3e25
--- /dev/null
+++ b/arch/arm/configs/imx23evk_defconfig
@@ -0,0 +1,224 @@
+#
+# Automatically generated make config: don't edit
+# Linux barebox version: 2010.09.0
+# Thu Oct  7 16:36:33 2010
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
+CONFIG_ARCH_STM=y
+# CONFIG_ARCH_NETX is not set
+# CONFIG_ARCH_NOMADIK is not set
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
+CONFIG_ARCH_TEXT_BASE=0x42000000
+CONFIG_BOARDINFO="Chumby Falconwing"
+
+#
+# SigmaTel/Freescale i.MX System-on-Chip
+#
+CONFIG_ARCH_IMX23=y
+# CONFIG_MACH_MX23EVK is not set
+CONFIG_MACH_CHUMBY=y
+
+#
+# Board specific settings       
+#
+CONFIG_AEABI=y
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
+# CONFIG_MMU is not set
+CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
+CONFIG_TEXT_BASE=0x42000000
+CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
+CONFIG_MEMORY_LAYOUT_DEFAULT=y
+# CONFIG_MEMORY_LAYOUT_FIXED is not set
+CONFIG_STACK_SIZE=0x8000
+CONFIG_MALLOC_SIZE=0x400000
+CONFIG_BROKEN=y
+# CONFIG_EXPERIMENTAL is not set
+# CONFIG_KALLSYMS is not set
+CONFIG_PROMPT="chumby:"
+CONFIG_BAUDRATE=115200
+CONFIG_LONGHELP=y
+CONFIG_CBSIZE=1024
+CONFIG_MAXARGS=16
+CONFIG_SHELL_HUSH=y
+# CONFIG_SHELL_SIMPLE is not set
+# CONFIG_GLOB is not set
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
+# CONFIG_DEFAULT_ENVIRONMENT is not set
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
+CONFIG_CMD_ECHO_E=y
+
+#
+# memory                        
+#
+# CONFIG_CMD_LOADB is not set
+# CONFIG_CMD_LOADS is not set
+# CONFIG_CMD_MEMINFO is not set
+# CONFIG_CMD_CRC is not set
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+
+#
+# flash                         
+#
+# CONFIG_CMD_FLASH is not set
+# CONFIG_CMD_UBI is not set
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
+CONFIG_CMD_RESET=y
+# CONFIG_CMD_GO is not set
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_TEST=y
+CONFIG_CMD_VERSION=y
+CONFIG_CMD_HELP=y
+CONFIG_CMD_DEVINFO=y
+# CONFIG_CMD_GPIO is not set
+# CONFIG_CMD_UNLZO is not set
+# CONFIG_NET is not set
+
+#
+# Drivers                       
+#
+
+#
+# serial drivers                
+#
+# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
+CONFIG_DRIVER_SERIAL_STM378X=y
+# CONFIG_DRIVER_SERIAL_NS16550 is not set
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
+# CONFIG_MTD is not set
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
+CONFIG_PROCESS_ESCAPE_SEQUENCE=y
diff --git a/arch/arm/mach-stm/Kconfig b/arch/arm/mach-stm/Kconfig
index 9858d3a..bbdea51 100644
--- a/arch/arm/mach-stm/Kconfig
+++ b/arch/arm/mach-stm/Kconfig
@@ -2,8 +2,10 @@ if ARCH_STM
 
 config ARCH_TEXT_BASE
 	hex
+	default 0x41000000 if MACH_MX23EVK
 
 config BOARDINFO
+	default "Freescale i.MX23-EVK" if MACH_MX23EVK
 
 comment "SigmaTel/Freescale i.MX System-on-Chip"
 
@@ -21,6 +23,11 @@ if ARCH_IMX23
 choice
 	prompt "i.MX23 Board Type"
 
+config MACH_MX23EVK
+	bool "mx23-evk"
+	help
+	  Say Y here if you are using the Freescale i.MX23-EVK board
+
 endchoice
 
 endif
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
