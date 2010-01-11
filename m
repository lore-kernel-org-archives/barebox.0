Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-v.mail.gandi.net ([217.70.178.76])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NURvO-0001FX-6n
	for barebox@lists.infradead.org; Mon, 11 Jan 2010 21:35:52 +0000
Date: Mon, 11 Jan 2010 22:31:12 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100111213112.GJ14051@darwin>
References: <20100109232838.GB14051@darwin>
	<20100111094902.GR6923@pengutronix.de>
	<20100111103700.GH14051@darwin>
	<20100111112557.GU6923@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100111112557.GU6923@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Add support for EDB93xx boards [rev2]
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Added support for the following Cirrus Logic EDB93xx boards:

EDB9301
EDB9302
EDB9302A
EDB9307
EDB9307A
EDB93012
EDB9315
EDB9315A

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---

Changes with respect to rev1:
  * Use global linker script with EP93xx ifdef instead of a	board
		specific one

 Documentation/boards.dox              |    8 +
 arch/arm/configs/edb93xx_defconfig    |  236 +++++++++++++++++++++++++++++++++
 arch/arm/lib/barebox.lds.S            |    5 +
 arch/arm/mach-ep93xx/Kconfig          |    8 -
 board/edb93xx/Makefile                |    2 +
 board/edb93xx/config.h                |    4 +
 board/edb93xx/early_udelay.h          |   34 +++++
 board/edb93xx/edb93xx.c               |  172 ++++++++++++++++++++++++
 board/edb93xx/edb93xx.dox             |  108 +++++++++++++++
 board/edb93xx/edb93xx.h               |   48 +++++++
 board/edb93xx/env/bin/boot            |   48 +++++++
 board/edb93xx/env/bin/flash_partition |   22 +++
 board/edb93xx/env/bin/init            |   19 +++
 board/edb93xx/env/bin/set_nor_parts   |    3 +
 board/edb93xx/env/bin/update_kernel   |   16 +++
 board/edb93xx/env/bin/update_rootfs   |   16 +++
 board/edb93xx/env/config              |   16 +++
 board/edb93xx/flash_cfg.c             |   38 ++++++
 board/edb93xx/pll_cfg.c               |   58 ++++++++
 board/edb93xx/pll_cfg.h               |   72 ++++++++++
 board/edb93xx/sdram_cfg.c             |  127 ++++++++++++++++++
 board/edb93xx/sdram_cfg.h             |  144 ++++++++++++++++++++
 22 files changed, 1196 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/configs/edb93xx_defconfig
 create mode 100644 board/edb93xx/Makefile
 create mode 100644 board/edb93xx/config.h
 create mode 100644 board/edb93xx/early_udelay.h
 create mode 100644 board/edb93xx/edb93xx.c
 create mode 100644 board/edb93xx/edb93xx.dox
 create mode 100644 board/edb93xx/edb93xx.h
 create mode 100644 board/edb93xx/env/bin/boot
 create mode 100644 board/edb93xx/env/bin/flash_partition
 create mode 100644 board/edb93xx/env/bin/init
 create mode 100644 board/edb93xx/env/bin/set_nor_parts
 create mode 100644 board/edb93xx/env/bin/update_kernel
 create mode 100644 board/edb93xx/env/bin/update_rootfs
 create mode 100644 board/edb93xx/env/config
 create mode 100644 board/edb93xx/flash_cfg.c
 create mode 100644 board/edb93xx/pll_cfg.c
 create mode 100644 board/edb93xx/pll_cfg.h
 create mode 100644 board/edb93xx/sdram_cfg.c
 create mode 100644 board/edb93xx/sdram_cfg.h

diff --git a/Documentation/boards.dox b/Documentation/boards.dox
index dba547f..7c7f4d1 100644
--- a/Documentation/boards.dox
+++ b/Documentation/boards.dox
@@ -20,6 +20,14 @@ ARM type:
 @li @subpage a9m2440
 @li @subpage a9m2410
 @li @subpage eukrea_cpuimx27
+@li @subpage edb9301
+@li @subpage edb9302
+@li @subpage edb9302a
+@li @subpage edb9307
+@li @subpage edb9307a
+@li @subpage edb9312
+@li @subpage edb9315
+@li @subpage edb9315a
 
 Blackfin type:
 
diff --git a/arch/arm/configs/edb93xx_defconfig b/arch/arm/configs/edb93xx_defconfig
new file mode 100644
index 0000000..d6b4b19
--- /dev/null
+++ b/arch/arm/configs/edb93xx_defconfig
@@ -0,0 +1,236 @@
+#
+# Automatically generated make config: don't edit
+# barebox version: 2009.12.0
+# Fri Jan  8 17:27:15 2010
+#
+CONFIG_ARM=y
+
+#
+# System Type
+#
+# CONFIG_ARCH_AT91 is not set
+# CONFIG_ARCH_AT91RM9200 is not set
+CONFIG_ARCH_EP93XX=y
+# CONFIG_ARCH_IMX is not set
+# CONFIG_ARCH_NETX is not set
+# CONFIG_ARCH_OMAP is not set
+# CONFIG_ARCH_S3C24xx is not set
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
+CONFIG_ARCH_TEXT_BASE=0x05700000
+CONFIG_BOARDINFO="Cirrus Logic EDB9301"
+CONFIG_EP93XX_SDCE3_SYNC_PHYS_OFFSET=y
+
+#
+# Cirrus EP93xx System-on-Chip
+#
+CONFIG_ARCH_EP9301=y
+# CONFIG_ARCH_EP9302 is not set
+# CONFIG_ARCH_EP9307 is not set
+# CONFIG_ARCH_EP9312 is not set
+# CONFIG_ARCH_EP9315 is not set
+CONFIG_MACH_EDB9301=y
+CONFIG_EP93XX_SDRAM_NUM_BANKS=4
+CONFIG_EP93XX_SDRAM_BANK0_BASE=0x00000000
+CONFIG_EP93XX_SDRAM_BANK0_SIZE=0x00800000
+CONFIG_EP93XX_SDRAM_BANK1_BASE=0x01000000
+CONFIG_EP93XX_SDRAM_BANK1_SIZE=0x00800000
+CONFIG_EP93XX_SDRAM_BANK2_BASE=0x04000000
+CONFIG_EP93XX_SDRAM_BANK2_SIZE=0x00800000
+CONFIG_EP93XX_SDRAM_BANK3_BASE=0x05000000
+CONFIG_EP93XX_SDRAM_BANK3_SIZE=0x00800000
+CONFIG_AEABI=y
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
+CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
+CONFIG_TEXT_BASE=0x05700000
+CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
+CONFIG_MEMORY_LAYOUT_DEFAULT=y
+# CONFIG_MEMORY_LAYOUT_FIXED is not set
+CONFIG_STACK_SIZE=0x8000
+CONFIG_MALLOC_SIZE=0x400000
+# CONFIG_BROKEN is not set
+# CONFIG_EXPERIMENTAL is not set
+CONFIG_MACH_HAS_LOWLEVEL_INIT=y
+CONFIG_MACH_DO_LOWLEVEL_INIT=y
+CONFIG_PROMPT="barebox:"
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
+CONFIG_DEFAULT_ENVIRONMENT_PATH="board/edb93xx/env"
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
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_TEST=y
+CONFIG_CMD_VERSION=y
+CONFIG_CMD_HELP=y
+CONFIG_CMD_DEVINFO=y
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
+# CONFIG_DRIVER_SERIAL_NS16550 is not set
+CONFIG_DRIVER_SERIAL_PL010=y
+CONFIG_MIIPHY=y
+
+#
+# Network drivers               
+#
+# CONFIG_DRIVER_NET_SMC911X is not set
+# CONFIG_DRIVER_NET_SMC91111 is not set
+CONFIG_DRIVER_NET_EP93XX=y
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
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_NEW is not set
+CONFIG_DRIVER_CFI_OLD=y
+# CONFIG_CFI_BUFFER_WRITE is not set
+# CONFIG_NAND is not set
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
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index c8d1bb9..a5eaefa 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -39,6 +39,11 @@ SECTIONS
 		_stext = .;
 		_text = .;
 		*(.text_entry*)
+#ifdef CONFIG_ARCH_EP93XX
+		/* the EP93xx expects to find the pattern 'CRUS' at 0x1000 */
+	  . = 0x1000;
+	  LONG(0x53555243) /* 'CRUS' */
+#endif
 		*(.text_bare_init*)
 		*(.text*)
 	}
diff --git a/arch/arm/mach-ep93xx/Kconfig b/arch/arm/mach-ep93xx/Kconfig
index 139b08d..ed6e986 100644
--- a/arch/arm/mach-ep93xx/Kconfig
+++ b/arch/arm/mach-ep93xx/Kconfig
@@ -39,7 +39,6 @@ config MACH_EDB9301
 	bool "Cirrus Logic EDB9301"
 	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
 	select MACH_HAS_LOWLEVEL_INIT
-	select BOARD_LINKER_SCRIPT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9301 Evaluation board
 
@@ -105,7 +104,6 @@ config MACH_EDB9302
 	bool "Cirrus Logic EDB9302"
 	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
 	select MACH_HAS_LOWLEVEL_INIT
-	select BOARD_LINKER_SCRIPT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9302 Evaluation board
 
@@ -113,7 +111,6 @@ config MACH_EDB9302A
 	bool "Cirrus Logic EDB9302A"
 	select EP93XX_SDCE0_PHYS_OFFSET
 	select MACH_HAS_LOWLEVEL_INIT
-	select BOARD_LINKER_SCRIPT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9302A Evaluation board
 
@@ -226,7 +223,6 @@ config MACH_EDB9307
 	bool "Cirrus Logic EDB9307"
 	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
 	select MACH_HAS_LOWLEVEL_INIT
-	select BOARD_LINKER_SCRIPT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9307 Evaluation board
 
@@ -234,7 +230,6 @@ config MACH_EDB9307A
 	bool "Cirrus Logic EDB9307A"
 	select EP93XX_SDCE0_PHYS_OFFSET
 	select MACH_HAS_LOWLEVEL_INIT
-	select BOARD_LINKER_SCRIPT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9307A Evaluation board
 
@@ -315,7 +310,6 @@ config MACH_EDB9312
 	bool "Cirrus Logic EDB9312"
 	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
 	select MACH_HAS_LOWLEVEL_INIT
-	select BOARD_LINKER_SCRIPT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9312 Evaluation board
 
@@ -365,7 +359,6 @@ config MACH_EDB9315
 	bool "Cirrus Logic EDB9315"
 	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
 	select MACH_HAS_LOWLEVEL_INIT
-	select BOARD_LINKER_SCRIPT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9315 Evaluation board
 
@@ -373,7 +366,6 @@ config MACH_EDB9315A
 	bool "Cirrus Logic EDB9315A"
 	select EP93XX_SDCE0_PHYS_OFFSET
 	select MACH_HAS_LOWLEVEL_INIT
-	select BOARD_LINKER_SCRIPT
 	help
 	  Say y here if you are using Cirrus Logic's EDB9315A Evaluation board
 
diff --git a/board/edb93xx/Makefile b/board/edb93xx/Makefile
new file mode 100644
index 0000000..e19cd7b
--- /dev/null
+++ b/board/edb93xx/Makefile
@@ -0,0 +1,2 @@
+
+obj-y += edb93xx.o flash_cfg.o pll_cfg.o sdram_cfg.o
diff --git a/board/edb93xx/config.h b/board/edb93xx/config.h
new file mode 100644
index 0000000..6ae9a40
--- /dev/null
+++ b/board/edb93xx/config.h
@@ -0,0 +1,4 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif  /* __CONFIG_H */
diff --git a/board/edb93xx/early_udelay.h b/board/edb93xx/early_udelay.h
new file mode 100644
index 0000000..3b26b3f
--- /dev/null
+++ b/board/edb93xx/early_udelay.h
@@ -0,0 +1,34 @@
+/*
+ * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
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
+#include <common.h>
+
+/* delay execution before timers are initialized */
+static inline void early_udelay(uint32_t usecs)
+{
+	/* loop takes 4 cycles at 5.0ns (fastest case, running at 200MHz) */
+	register uint32_t loops = (usecs * 1000) / 20;
+
+	__asm__ volatile ("1:\n"
+			"subs %0, %1, #1\n"
+			"bne 1b":"=r" (loops):"0" (loops));
+}
diff --git a/board/edb93xx/edb93xx.c b/board/edb93xx/edb93xx.c
new file mode 100644
index 0000000..add88e1
--- /dev/null
+++ b/board/edb93xx/edb93xx.c
@@ -0,0 +1,172 @@
+/*
+ * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
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
+#include <common.h>
+#include <driver.h>
+#include <environment.h>
+#include <fs.h>
+#include <init.h>
+#include <partition.h>
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <asm/mach-types.h>
+#include <mach/ep93xx-regs.h>
+#include "edb93xx.h"
+
+/*
+ * Up to 32MiB NOR type flash, connected to
+ * CS line 6, data width is 16 bit
+ */
+static struct device_d cfi_dev = {
+	.name     = "cfi_flash",
+	.map_base = 0x60000000,
+	.size     = EDB93XX_CFI_FLASH_SIZE,
+};
+
+static struct memory_platform_data ram_dev_pdata0 = {
+	.name = "ram0",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sdram0_dev = {
+	.name     = "mem",
+	.map_base = CONFIG_EP93XX_SDRAM_BANK0_BASE,
+	.size     = CONFIG_EP93XX_SDRAM_BANK0_SIZE,
+	.platform_data = &ram_dev_pdata0,
+};
+
+#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
+static struct memory_platform_data ram_dev_pdata1 = {
+	.name = "ram1",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sdram1_dev = {
+	.name     = "mem",
+	.map_base = CONFIG_EP93XX_SDRAM_BANK1_BASE,
+	.size     = CONFIG_EP93XX_SDRAM_BANK1_SIZE,
+	.platform_data = &ram_dev_pdata1,
+};
+#endif
+
+#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
+static struct memory_platform_data ram_dev_pdata2 = {
+	.name = "ram2",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sdram2_dev = {
+	.name     = "mem",
+	.map_base = CONFIG_EP93XX_SDRAM_BANK2_BASE,
+	.size     = CONFIG_EP93XX_SDRAM_BANK2_SIZE,
+	.platform_data = &ram_dev_pdata2,
+};
+#endif
+
+#if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
+static struct memory_platform_data ram_dev_pdata3 = {
+	.name = "ram3",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sdram3_dev = {
+	.name     = "mem",
+	.map_base = CONFIG_EP93XX_SDRAM_BANK3_BASE,
+	.size     = CONFIG_EP93XX_SDRAM_BANK3_SIZE,
+	.platform_data = &ram_dev_pdata3,
+};
+#endif
+
+static struct device_d eth_dev = {
+	.name     = "ep93xx_eth",
+};
+
+static int ep93xx_devices_init(void)
+{
+	register_device(&cfi_dev);
+
+	/*
+	 * Create partitions that should be
+	 * not touched by any regular user
+	 */
+	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+
+	protect_file("/dev/env0", 1);
+
+	register_device(&sdram0_dev);
+#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
+	register_device(&sdram1_dev);
+#endif
+#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
+	register_device(&sdram2_dev);
+#endif
+#if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
+	register_device(&sdram3_dev);
+#endif
+
+	armlinux_add_dram(&sdram0_dev);
+#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
+	armlinux_add_dram(&sdram1_dev);
+#endif
+#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
+	armlinux_add_dram(&sdram2_dev);
+#endif
+#if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
+	armlinux_add_dram(&sdram3_dev);
+#endif
+
+	register_device(&eth_dev);
+
+	armlinux_set_bootparams((void *)CONFIG_EP93XX_SDRAM_BANK0_BASE + 0x100);
+
+	armlinux_set_architecture(MACH_TYPE);
+
+	return 0;
+}
+
+device_initcall(ep93xx_devices_init);
+
+static struct device_d edb93xx_serial_device = {
+	.name     = "pl010_serial",
+	.map_base = UART1_BASE,
+	.size     = 4096,
+};
+
+static int edb93xx_console_init(void)
+{
+	struct syscon_regs *syscon = (struct syscon_regs *)SYSCON_BASE;
+
+	/*
+	 * set UARTBAUD bit to drive UARTs with 14.7456MHz instead of
+	 * 14.7456/2 MHz
+	 */
+	uint32_t value = readl(&syscon->pwrcnt);
+	value |= SYSCON_PWRCNT_UART_BAUD;
+	writel(value, &syscon->pwrcnt);
+
+	register_device(&edb93xx_serial_device);
+
+	return 0;
+}
+
+console_initcall(edb93xx_console_init);
diff --git a/board/edb93xx/edb93xx.dox b/board/edb93xx/edb93xx.dox
new file mode 100644
index 0000000..3964d55
--- /dev/null
+++ b/board/edb93xx/edb93xx.dox
@@ -0,0 +1,108 @@
+/** @page edb9301 Cirrus Logic EDB9301
+
+This boards is based on a Cirrus Logic EP9301 CPU. The board is shipped with:
+
+- 16MiB NOR type Flash Memory
+- 32MiB synchronous dynamic RAM on CS3
+- 128kiB serial EEPROM
+- MII 10/100 Ethernet PHY
+- Stereo audio codec
+
+*/
+
+/** @page edb9302 Cirrus Logic EDB9302
+
+This board is based on a Cirrus Logic EP9302 CPU. The board is shipped with:
+
+- 16MiB NOR type Flash Memory
+- 32MiB synchronous dynamic RAM on CS3
+- 128kiB serial EEPROM
+- MII 10/100 Ethernet PHY
+- Stereo audio codec
+
+*/
+
+/** @page edb9302a Cirrus Logic EDB9302A
+
+This board is based on a Cirrus Logic EP9302 CPU. The board is shipped with:
+
+- 16MiB NOR type Flash Memory
+- 32MiB synchronous dynamic RAM on CS0
+- 512kiB serial EEPROM
+- MII 10/100 Ethernet PHY
+- Stereo audio codec
+
+*/
+
+/** @page edb9307 Cirrus Logic EDB9307
+
+This board is based on a Cirrus Logic EP9307 CPU. The board is shipped with:
+
+- 32MiB NOR type Flash Memory
+- 64MiB synchronous dynamic RAM on CS3
+- 512kiB asynchronous SRAM
+- 128kiB serial EEPROM
+- MII 10/100 Ethernet PHY
+- Stereo audio codec
+- Real-Time Clock
+- IR receiver
+
+*/
+
+/** @page edb9307a Cirrus Logic EDB9307A
+
+This board is based on a Cirrus Logic EP9307 CPU. The board is shipped with:
+
+- 32MiB NOR type Flash Memory
+- 64MiB synchronous dynamic RAM on CS0
+- 512kiB serial EEPROM
+- MII 10/100 Ethernet PHY
+- Stereo audio codec
+- Real-Time Clock
+- IR receiver
+
+*/
+
+/** @page edb9312 Cirrus Logic EDB9312
+
+This board is based on a Cirrus Logic EP9312 CPU. The board is shipped with:
+
+- 32MiB NOR type Flash Memory
+- 64MiB synchronous dynamic RAM on CS3
+- 512kiB asynchronous SRAM
+- 128kiB serial EEPROM
+- MII 10/100 Ethernet PHY
+- Stereo audio codec
+- Real-Time Clock
+- IR receiver
+
+*/
+
+/** @page edb9315 Cirrus Logic EDB9315
+
+This board is based on a Cirrus Logic EP9315 CPU. The board is shipped with:
+
+- 32MiB NOR type Flash Memory
+- 64MiB synchronous dynamic RAM on CS3
+- 512kiB asynchronous SRAM
+- 128kiB serial EEPROM
+- MII 10/100 Ethernet PHY
+- Stereo audio codec
+- Real-Time Clock
+- IR receiver
+
+*/
+
+/** @page edb9315a Cirrus Logic EDB9315A
+
+This board is based on a Cirrus Logic EP9315 CPU. The board is shipped with:
+
+- 32MiB NOR type Flash Memory
+- 64MiB synchronous dynamic RAM on CS0
+- 128kiB serial EEPROM
+- MII 10/100 Ethernet PHY
+- Stereo audio codec
+- Real-Time Clock
+- IR receiver
+
+*/
\ No newline at end of file
diff --git a/board/edb93xx/edb93xx.h b/board/edb93xx/edb93xx.h
new file mode 100644
index 0000000..5e5c6f5
--- /dev/null
+++ b/board/edb93xx/edb93xx.h
@@ -0,0 +1,48 @@
+/*
+ * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
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
+#if defined(CONFIG_MACH_EDB9301)
+#define MACH_TYPE MACH_TYPE_EDB9301
+#elif defined(CONFIG_MACH_EDB9302)
+#define MACH_TYPE MACH_TYPE_EDB9302
+#elif defined(CONFIG_MACH_EDB9302A)
+#define MACH_TYPE MACH_TYPE_EDB9302A
+#elif defined(CONFIG_MACH_EDB9307)
+#define MACH_TYPE MACH_TYPE_EDB9307
+#elif defined(CONFIG_MACH_EDB9307A)
+#define MACH_TYPE MACH_TYPE_EDB9307A
+#elif defined(CONFIG_MACH_EDB9312)
+#define MACH_TYPE MACH_TYPE_EDB9312
+#elif defined(CONFIG_MACH_EDB9315)
+#define MACH_TYPE MACH_TYPE_EDB9315
+#elif defined(CONFIG_MACH_EDB9315A)
+#define MACH_TYPE MACH_TYPE_EDB9315A
+#endif
+
+#if defined(CONFIG_MACH_EDB9301) || defined(CONFIG_MACH_EDB9302) || \
+	defined(CONFIG_MACH_EDB9302A)
+#define EDB93XX_CFI_FLASH_SIZE (16 * 1024 * 1024)
+#elif defined(CONFIG_MACH_EDB9307) || defined(CONFIG_MACH_EDB9307A) || \
+	defined(CONFIG_MACH_EDB9312) || defined(CONFIG_MACH_EDB9315) ||	\
+	defined(CONFIG_MACH_EDB9315A)
+#define EDB93XX_CFI_FLASH_SIZE (32 * 1024 * 1024)
+#endif
diff --git a/board/edb93xx/env/bin/boot b/board/edb93xx/env/bin/boot
new file mode 100644
index 0000000..143f3d0
--- /dev/null
+++ b/board/edb93xx/env/bin/boot
@@ -0,0 +1,48 @@
+#!/bin/sh
+
+. /env/config
+
+if [ x${rootfs_boot_media} = xflash ];
+then
+		rootfs_img=/dev/nor0.rootfs_${active_cfg}
+
+		if [ x${active_cfg} = x1 ];
+		then
+				rootfs_blkdev=/dev/mtdblock4
+				cfg_1_ro="ro"
+				cfg_2_ro=""
+		else
+				rootfs_blkdev=/dev/mtdblock6
+				cfg_1_ro=""
+				cfg_2_ro="ro"
+		fi
+
+		bootargs_rootfs="root=${rootfs_blkdev} rootfstype=squashfs ro"
+elif [ x${rootfs_boot_media} = xnet ];
+then
+		bootargs_rootfs="root=/dev/nfs nfsroot=${eth0.serverip}:/srv/nfs/${board},v3,nolock,tcp ip=${eth0.ipaddr}"
+else
+		echo "ERROR: \$rootfs_boot_media invalid: ${rootfs_boot_media}"
+		exit 1
+fi
+
+if [ x${kernel_boot_media} = xflash ];
+then
+		kernel_img=/dev/nor0.kernel_${active_cfg}
+elif [ x${kernel_boot_media} = xnet ];
+then
+		cd /
+		tftp ${board}/kernel.img || exit 1
+		kernel_img=/kernel.img
+else
+		echo "ERROR: \$kernel_boot_media invalid: ${kernel_boot_media}"
+		exit 1
+fi
+
+source /env/bin/set_nor_parts
+
+bootargs_mtd="mtdparts=physmap-flash.0:${nor_parts}"
+
+bootargs="${bootargs_common} ${bootargs_mtd} ${bootargs_rootfs}"
+
+bootm ${kernel_img}
\ No newline at end of file
diff --git a/board/edb93xx/env/bin/flash_partition b/board/edb93xx/env/bin/flash_partition
new file mode 100644
index 0000000..ded40aa
--- /dev/null
+++ b/board/edb93xx/env/bin/flash_partition
@@ -0,0 +1,22 @@
+#!/bin/sh
+
+if [ $# != 2 ];
+then
+				echo "Usage: $0 <image> <partition>"
+				exit 1
+fi
+
+image=$1
+partition=$2
+
+echo "Unlocking ${partition}"
+unprotect ${partition}
+
+echo "Erasing ${partition}"
+erase ${partition}
+
+echo "Flashing ${image} to ${partition}"
+cp ${image} ${partition}
+
+echo "Locking ${partition}"
+protect ${partition}
diff --git a/board/edb93xx/env/bin/init b/board/edb93xx/env/bin/init
new file mode 100644
index 0000000..c6b5aed
--- /dev/null
+++ b/board/edb93xx/env/bin/init
@@ -0,0 +1,19 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+
+# add partitions to barebox
+. /env/bin/set_nor_parts
+addpart /dev/nor0 ${nor_parts}
+
+echo
+echo -n "Hit any key to stop autoboot: "
+timeout -a $autoboot_timeout
+if [ $? != 0 ]; then
+	exit
+fi
+
+boot
\ No newline at end of file
diff --git a/board/edb93xx/env/bin/set_nor_parts b/board/edb93xx/env/bin/set_nor_parts
new file mode 100644
index 0000000..38321fa
--- /dev/null
+++ b/board/edb93xx/env/bin/set_nor_parts
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+nor_parts="256k(barebox)ro,128k(env_boot),128k(env_boot.bak),1664k(kernel_1)${cfg_1_ro},6144k(rootfs_1)${cfg_1_ro},1664k(kernel_2)${cfg_2_ro},6144k(rootfs_2)${cfg_2_ro},128k(cfg_app),128k(cfg_app.bak)"
\ No newline at end of file
diff --git a/board/edb93xx/env/bin/update_kernel b/board/edb93xx/env/bin/update_kernel
new file mode 100644
index 0000000..3e4b9b0
--- /dev/null
+++ b/board/edb93xx/env/bin/update_kernel
@@ -0,0 +1,16 @@
+#!/bin/sh
+
+. /env/config
+
+if [ $# != 1 ];
+then
+				echo "Usage: $0 <1/2>"
+				exit 1
+fi
+
+partition=/dev/nor0.kernel_$1
+
+cd /
+tftp ${board}/kernel.img || exit 1
+
+flash_partition kernel.img ${partition}
diff --git a/board/edb93xx/env/bin/update_rootfs b/board/edb93xx/env/bin/update_rootfs
new file mode 100644
index 0000000..52a3699
--- /dev/null
+++ b/board/edb93xx/env/bin/update_rootfs
@@ -0,0 +1,16 @@
+#!/bin/sh
+
+. /env/config
+
+if [ $# != 1 ];
+then
+				echo "Usage: $0 <1/2>"
+				exit 1
+fi
+
+partition=/dev/nor0.rootfs_$1
+
+cd /
+tftp ${board}/rootfs.img || exit 1
+
+flash_partition rootfs.img ${partition}
diff --git a/board/edb93xx/env/config b/board/edb93xx/env/config
new file mode 100644
index 0000000..47ab209
--- /dev/null
+++ b/board/edb93xx/env/config
@@ -0,0 +1,16 @@
+#!/bin/sh
+
+eth0.ipaddr=192.168.0.50
+eth0.netmask=255.255.0.0
+eth0.serverip=192.168.0.8
+eth0.ethaddr=80:81:82:83:84:85
+
+board=edb9301
+autoboot_timeout=3
+active_cfg=1
+bootargs_common="console=ttyAM0,115200"
+
+# valid media: flash/net
+kernel_boot_media=flash
+rootfs_boot_media=flash
+
diff --git a/board/edb93xx/flash_cfg.c b/board/edb93xx/flash_cfg.c
new file mode 100644
index 0000000..91a6a4e
--- /dev/null
+++ b/board/edb93xx/flash_cfg.c
@@ -0,0 +1,38 @@
+/*
+ * Flash setup for Cirrus edb93xx boards
+ *
+ * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <mach/ep93xx-regs.h>
+#include <asm/io.h>
+
+#define SMC_BCR6_VALUE	(2 << SMC_BCR_IDCY_SHIFT | 5 << SMC_BCR_WST1_SHIFT | \
+				SMC_BCR_BLE | 2 << SMC_BCR_WST2_SHIFT | \
+				1 << SMC_BCR_MW_SHIFT)
+
+void flash_cfg(void)
+{
+	struct smc_regs *smc = (struct smc_regs *)SMC_BASE;
+
+	writel(SMC_BCR6_VALUE, &smc->bcr6);
+}
diff --git a/board/edb93xx/pll_cfg.c b/board/edb93xx/pll_cfg.c
new file mode 100644
index 0000000..a687af0
--- /dev/null
+++ b/board/edb93xx/pll_cfg.c
@@ -0,0 +1,58 @@
+/*
+ * PLL setup for Cirrus edb93xx boards
+ *
+ * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
+ *
+ * Copyright (C) 2006 Dominic Rath <Dominic.Rath@gmx.de>
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <asm/io.h>
+#include "pll_cfg.h"
+#include "early_udelay.h"
+
+void pll_cfg(void)
+{
+	struct syscon_regs *syscon = (struct syscon_regs *)SYSCON_BASE;
+
+	/* setup PLL1 */
+	writel(CLKSET1_VAL, &syscon->clkset1);
+
+	/*
+	 * flush the pipeline
+	 * writing to CLKSET1 causes the EP93xx to enter standby for between
+	 * 8 ms to 16 ms, until PLL1 stabilizes
+	 */
+	asm("nop");
+	asm("nop");
+	asm("nop");
+	asm("nop");
+	asm("nop");
+
+	/* setup PLL2 */
+	writel(CLKSET2_VAL, &syscon->clkset2);
+
+	/*
+	 * the user's guide recommends to wait at least 1 ms for PLL2 to
+	 * stabilize
+	 */
+	early_udelay(1000);
+}
diff --git a/board/edb93xx/pll_cfg.h b/board/edb93xx/pll_cfg.h
new file mode 100644
index 0000000..9691339
--- /dev/null
+++ b/board/edb93xx/pll_cfg.h
@@ -0,0 +1,72 @@
+/*
+ * PLL register values for Cirrus edb93xx boards
+ *
+ * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+#include <mach/ep93xx-regs.h>
+
+#if defined(CONFIG_MACH_EDB9301) || defined(CONFIG_MACH_EDB9302) || \
+	defined(CONFIG_MACH_EDB9302A)
+/*
+ * fclk_div: 2, nbyp1: 1, hclk_div: 5, pclk_div: 2
+ * pll1_x1: 294912000.000000, pll1_x2ip: 36864000.000000,
+ * pll1_x2: 331776000.000000, pll1_out: 331776000.000000
+ */
+#define CLKSET1_VAL	(7 << SYSCON_CLKSET_PLL_X2IPD_SHIFT |      \
+			8 << SYSCON_CLKSET_PLL_X2FBD2_SHIFT |	   \
+			19 << SYSCON_CLKSET_PLL_X1FBD1_SHIFT |	   \
+			1 << SYSCON_CLKSET1_PCLK_DIV_SHIFT |	   \
+			3 << SYSCON_CLKSET1_HCLK_DIV_SHIFT |	   \
+			SYSCON_CLKSET1_NBYP1 |			   \
+			1 << SYSCON_CLKSET1_FCLK_DIV_SHIFT)
+#elif defined(CONFIG_MACH_EDB9307) || defined(CONFIG_MACH_EDB9307A) ||\
+	defined CONFIG_MACH_EDB9312 || defined(CONFIG_MACH_EDB9315) ||\
+	defined(CONFIG_MACH_EDB9315A)
+/*
+ * fclk_div: 2, nbyp1: 1, hclk_div: 4, pclk_div: 2
+ * pll1_x1: 3096576000.000000, pll1_x2ip: 129024000.000000,
+ * pll1_x2: 3999744000.000000, pll1_out: 1999872000.000000
+ */
+#define CLKSET1_VAL	(23 << SYSCON_CLKSET_PLL_X2IPD_SHIFT | \
+			30 << SYSCON_CLKSET_PLL_X2FBD2_SHIFT | \
+			20 << SYSCON_CLKSET_PLL_X1FBD1_SHIFT | \
+			1 << SYSCON_CLKSET1_PCLK_DIV_SHIFT |   \
+			2 << SYSCON_CLKSET1_HCLK_DIV_SHIFT |   \
+			SYSCON_CLKSET1_NBYP1 |		       \
+			1 << SYSCON_CLKSET1_FCLK_DIV_SHIFT)
+#else
+#error "Undefined board"
+#endif
+
+/*
+ * usb_div: 4, nbyp2: 1, pll2_en: 1
+ * pll2_x1: 368640000.000000, pll2_x2ip: 15360000.000000,
+ * pll2_x2: 384000000.000000, pll2_out: 192000000.000000
+ */
+#define CLKSET2_VAL	(23 << SYSCON_CLKSET_PLL_X2IPD_SHIFT | \
+			24 << SYSCON_CLKSET_PLL_X2FBD2_SHIFT | \
+			24 << SYSCON_CLKSET_PLL_X1FBD1_SHIFT | \
+			1 << SYSCON_CLKSET_PLL_PS_SHIFT |      \
+			SYSCON_CLKSET2_PLL2_EN |	       \
+			SYSCON_CLKSET2_NBYP2 |		       \
+			3 << SYSCON_CLKSET2_USB_DIV_SHIFT)
diff --git a/board/edb93xx/sdram_cfg.c b/board/edb93xx/sdram_cfg.c
new file mode 100644
index 0000000..9f56f72
--- /dev/null
+++ b/board/edb93xx/sdram_cfg.c
@@ -0,0 +1,127 @@
+/*
+ * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
+ *
+ * Copyright (C) 2006 Dominic Rath <Dominic.Rath@gmx.de>
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
+#include <common.h>
+#include <asm/io.h>
+#include "sdram_cfg.h"
+#include "early_udelay.h"
+
+#define PROGRAM_MODE_REG(bank)		(*(volatile uint32_t *)		\
+		(SDRAM_BASE_ADDR | SDRAM_BANK_SEL_##bank | SDRAM_MODE_REG_VAL))
+
+#define PRECHARGE_BANK(bank)		(*(volatile uint32_t *)	\
+				(SDRAM_BASE_ADDR | SDRAM_BANK_SEL_##bank))
+
+static void force_precharge(void);
+static void setup_refresh_timer(void);
+static void program_mode_registers(void);
+
+void sdram_cfg(void)
+{
+	struct sdram_regs *sdram = (struct sdram_regs *)SDRAM_BASE;
+
+	writel(SDRAM_DEVCFG_VAL, &sdram->SDRAM_DEVCFG_REG);
+
+	/* Issue continous NOP commands */
+	writel(GLCONFIG_INIT | GLCONFIG_MRS | GLCONFIG_CKE, &sdram->glconfig);
+
+	early_udelay(200);
+
+	force_precharge();
+
+	setup_refresh_timer();
+
+	program_mode_registers();
+
+	/* Select normal operation mode */
+	writel(GLCONFIG_CKE, &sdram->glconfig);
+}
+
+static void force_precharge(void)
+{
+	/*
+	 * Errata most EP93xx revisions say that PRECHARGE ALL isn't always
+	 * issued.
+	 *
+	 * Do a read from each bank to make sure they're precharged
+	 */
+
+	PRECHARGE_BANK(0);
+
+#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
+	PRECHARGE_BANK(1);
+#endif
+
+#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
+	PRECHARGE_BANK(2);
+#endif
+
+#if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
+	PRECHARGE_BANK(3);
+#endif
+}
+
+static void setup_refresh_timer(void)
+{
+	struct sdram_regs *sdram = (struct sdram_regs *)SDRAM_BASE;
+
+	/* Load refresh timer with 10 to issue refresh every 10 cycles */
+	writel(0x0a, &sdram->refrshtimr);
+
+	/*
+	 * Wait at least 80 clock cycles to provide 8 refresh cycles
+	 * to all SDRAMs
+	 */
+	early_udelay(1);
+
+	/*
+	 * Program refresh timer with normal value
+	 * We need 8192 refresh cycles every 64ms
+	 * at 15ns (HCLK >= 66MHz) per cycle:
+	 * 64ms / 8192 = 7.8125us
+	 * 7.8125us / 15ns = 520 (0x208)
+	 */
+	/*
+	 * TODO: redboot uses 0x1e0 for the slowest possible device
+	 * but i don't understand how this value is calculated
+	 */
+	writel(0x208, &sdram->refrshtimr);
+}
+
+static void program_mode_registers(void)
+{
+	PROGRAM_MODE_REG(0);
+
+#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
+	PROGRAM_MODE_REG(1);
+#endif
+
+#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
+	PROGRAM_MODE_REG(2);
+#endif
+
+#if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
+	PROGRAM_MODE_REG(3);
+#endif
+}
diff --git a/board/edb93xx/sdram_cfg.h b/board/edb93xx/sdram_cfg.h
new file mode 100644
index 0000000..7babee8
--- /dev/null
+++ b/board/edb93xx/sdram_cfg.h
@@ -0,0 +1,144 @@
+/*
+ * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
+ *
+ * Copyright (C) 2006 Dominic Rath <Dominic.Rath@gmx.de>
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
+#include <config.h>
+#include <mach/ep93xx-regs.h>
+
+#define SDRAM_BASE_ADDR		CONFIG_EP93XX_SDRAM_BANK0_BASE
+
+#ifdef CONFIG_EP93XX_SDCE0_PHYS_OFFSET
+#define SDRAM_DEVCFG_REG	devcfg0
+#elif defined(CONFIG_EP93XX_SDCE3_SYNC_PHYS_OFFSET)
+#define SDRAM_DEVCFG_REG	devcfg3
+#else
+#error "SDRAM bank configuration"
+#endif
+
+#if defined(CONFIG_MACH_EDB9301) || defined(CONFIG_MACH_EDB9302) ||\
+	defined(CONFIG_MACH_EDB9302A)
+/*
+ * 1x Samsung K4S561632C-TC/L75 4M x 16bit x 4 banks SDRAM
+ *
+ * CLK cycle time min:
+ *	@ CAS latency = 3: 7.5ns
+ *	@ CAS latency = 2: 10ns
+ * We're running at 66MHz (15ns cycle time) external bus speed (HCLK),
+ * so it's safe to use CAS latency = 2
+ *
+ * RAS-to-CAS delay min:
+ *	20ns
+ * At 15ns cycle time, we use RAS-to-CAS delay = 2
+ *
+ * SROMLL = 1: Swap BA[1:0] with A[13:12], making the SDRAM appear
+ * as four blocks of 8MB size, instead of eight blocks of 4MB size:
+ *
+ * EDB9301/EDB9302:
+ *
+ * 0x00000000 - 0x007fffff
+ * 0x01000000 - 0x017fffff
+ * 0x04000000 - 0x047fffff
+ * 0x05000000 - 0x057fffff
+ *
+ *
+ * EDB9302a:
+ *
+ * 0xc0000000 - 0xc07fffff
+ * 0xc1000000 - 0xc17fffff
+ * 0xc4000000 - 0xc47fffff
+ * 0xc5000000 - 0xc57fffff
+ *
+ * BANKCOUNT = 1: This is a device with four banks
+ */
+
+#define SDRAM_DEVCFG_VAL (SDRAM_DEVCFG_BANKCOUNT |			\
+				SDRAM_DEVCFG_SROMLL |			\
+				SDRAM_DEVCFG_CASLAT_2 |			\
+				SDRAM_DEVCFG_RASTOCAS_2 |		\
+				SDRAM_DEVCFG_EXTBUSWIDTH)
+
+/*
+ * 16 bit ext. bus
+ *
+ * A[22:09] is output as SYA[13:0]
+ * CAS latency: 2
+ * Burst type: sequential
+ * Burst length: 8 (required for 16 bit ext. bus)
+ * SYA[13:0] = 0x0023
+ */
+#define SDRAM_MODE_REG_VAL	0x4600
+
+#define SDRAM_BANK_SEL_0	0x00000000 /* A[22:21] = b00 */
+#define SDRAM_BANK_SEL_1	0x00200000 /* A[22:21] = b01 */
+#define SDRAM_BANK_SEL_2	0x00400000 /* A[22:21] = b10 */
+#define SDRAM_BANK_SEL_3	0x00600000 /* A[22:21] = b11 */
+
+#elif defined(CONFIG_MACH_EDB9307) || defined(CONFIG_MACH_EDB9307A) ||\
+	defined CONFIG_MACH_EDB9312 || defined(CONFIG_MACH_EDB9315) ||\
+	defined(CONFIG_MACH_EDB9315A)
+/*
+ * 2x Samsung K4S561632C-TC/L75 4M x 16bit x 4 banks SDRAM
+ *
+ * CLK cycle time min:
+ *	@ CAS latency = 3: 7.5ns
+ *	@ CAS latency = 2: 10ns
+ * We're running at 100MHz (10ns cycle time) external bus speed (HCLK),
+ * so it's safe to use CAS latency = 2
+ *
+ * RAS-to-CAS delay min:
+ *	20ns
+ * At 10ns cycle time, we use RAS-to-CAS delay = 2
+ *
+ * EDB9307, EDB9312, EDB9315:
+ *
+ * 0x00000000 - 0x01ffffff
+ * 0x04000000 - 0x05ffffff
+ *
+ *
+ * EDB9307a, EDB9315a:
+ *
+ * 0xc0000000 - 0xc1ffffff
+ * 0xc4000000 - 0xc5ffffff
+ */
+
+#define SDRAM_DEVCFG_VAL	(SDRAM_DEVCFG_BANKCOUNT |		\
+				SDRAM_DEVCFG_SROMLL |			\
+				SDRAM_DEVCFG_CASLAT_2 |			\
+				SDRAM_DEVCFG_RASTOCAS_2)
+
+/*
+ * 32 bit ext. bus
+ *
+ * A[23:10] is output as SYA[13:0]
+ * CAS latency: 2
+ * Burst type: sequential
+ * Burst length: 4
+ * SYA[13:0] = 0x0022
+ */
+#define SDRAM_MODE_REG_VAL	0x8800
+
+#define SDRAM_BANK_SEL_0	0x00000000 /* A[23:22] = b00 */
+#define SDRAM_BANK_SEL_1	0x00400000 /* A[23:22] = b01 */
+#define SDRAM_BANK_SEL_2	0x00800000 /* A[23:22] = b10 */
+#define SDRAM_BANK_SEL_3	0x00c00000 /* A[23:22] = b11 */
+#endif
-- 
1.6.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
