Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5ELl-0002P2-JW
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 09:07:23 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 11 Oct 2010 11:07:00 +0200
Message-Id: <1286788020-14077-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286788020-14077-1-git-send-email-jbe@pengutronix.de>
References: <1286788020-14077-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/4] Add the i.MX23 based Chumby platform (WIP)
To: barebox@lists.infradead.org

The so called "chumby one" aka falconwing is an i.MX23 based platform.

Note: This is work in progress. Use with care.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 Documentation/boards.dox                       |    1 +
 arch/arm/Makefile                              |    1 +
 arch/arm/boards/chumby_falconwing/Makefile     |    1 +
 arch/arm/boards/chumby_falconwing/config.h     |   21 ++
 arch/arm/boards/chumby_falconwing/falconwing.c |  271 ++++++++++++++++++++++++
 arch/arm/configs/chumbyone_defconfig           |  224 +++++++++++++++++++
 arch/arm/mach-stm/Kconfig                      |    9 +
 7 files changed, 528 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/chumby_falconwing/Makefile
 create mode 100644 arch/arm/boards/chumby_falconwing/config.h
 create mode 100644 arch/arm/boards/chumby_falconwing/falconwing.c
 create mode 100644 arch/arm/configs/chumbyone_defconfig

diff --git a/Documentation/boards.dox b/Documentation/boards.dox
index 7b1450e..0b7a198 100644
--- a/Documentation/boards.dox
+++ b/Documentation/boards.dox
@@ -15,6 +15,7 @@ ARM type:
 @li @subpage imx27ads
 @li @subpage the3stack
 @li @subpage mx23_evk
+@li @subpage chumbyone
 @li @subpage scb9328
 @li @subpage netx
 @li @subpage dev_omap_arch
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 75fa6d3..b25f366 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -82,6 +82,7 @@ board-$(CONFIG_MACH_PM9263)			:= pm9263
 board-$(CONFIG_MACH_SCB9328)			:= scb9328
 board-$(CONFIG_MACH_NESO)			:= guf-neso
 board-$(CONFIG_MACH_MX23EVK)			:= freescale-mx23-evk
+board-$(CONFIG_MACH_CHUMBY)			:= chumby_falconwing
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/chumby_falconwing/Makefile b/arch/arm/boards/chumby_falconwing/Makefile
new file mode 100644
index 0000000..0bc79d9
--- /dev/null
+++ b/arch/arm/boards/chumby_falconwing/Makefile
@@ -0,0 +1 @@
+obj-y = falconwing.o
diff --git a/arch/arm/boards/chumby_falconwing/config.h b/arch/arm/boards/chumby_falconwing/config.h
new file mode 100644
index 0000000..87d9e2f
--- /dev/null
+++ b/arch/arm/boards/chumby_falconwing/config.h
@@ -0,0 +1,21 @@
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
+
+#ifndef _CONFIG_H_
+# define _CONFIG_H_
+
+#endif /* _CONFIG_H_ */
diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
new file mode 100644
index 0000000..d209dd5
--- /dev/null
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -0,0 +1,271 @@
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
+#include <common.h>
+#include <init.h>
+#include <gpio.h>
+#include <environment.h>
+#include <asm/armlinux.h>
+#include <asm/io.h>
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
+	.size     = 64 * 1024 * 1024,
+	.platform_data = &ram_pdata,
+};
+
+static const uint32_t pad_setup[] = {
+	/* may be not required as already done by the bootlet code */
+#if 0
+	/* SDRAM data signals */
+	EMI_D15 | STRENGTH(0) | VE_2_5V,
+	EMI_D14 | STRENGTH(0) | VE_2_5V,
+	EMI_D13 | STRENGTH(0) | VE_2_5V,
+	EMI_D12 | STRENGTH(0) | VE_2_5V,
+	EMI_D11 | STRENGTH(0) | VE_2_5V,
+	EMI_D10 | STRENGTH(0) | VE_2_5V,
+	EMI_D9 | STRENGTH(0) | VE_2_5V,
+	EMI_D8 | STRENGTH(0) | VE_2_5V,
+	EMI_D7 | STRENGTH(0) | VE_2_5V,
+	EMI_D6 | STRENGTH(0) | VE_2_5V,
+	EMI_D5 | STRENGTH(0) | VE_2_5V,
+	EMI_D4 | STRENGTH(0) | VE_2_5V,
+	EMI_D3 | STRENGTH(0) | VE_2_5V,
+	EMI_D2 | STRENGTH(0) | VE_2_5V,
+	EMI_D1 | STRENGTH(0) | VE_2_5V,
+	EMI_D0 | STRENGTH(0) | VE_2_5V,
+
+	/* SDRAM data control signals */
+	EMI_DQM0 | STRENGTH(0) | VE_2_5V,	/* LDM */
+	EMI_DQM1 | STRENGTH(0) | VE_2_5V,	/* UDM */
+
+	/* SDRAM address signals */
+	EMI_A0 | STRENGTH(0) | VE_2_5V,
+	EMI_A1 | STRENGTH(0) | VE_2_5V,
+	EMI_A2 | STRENGTH(0) | VE_2_5V,
+	EMI_A3 | STRENGTH(0) | VE_2_5V,
+	EMI_A4 | STRENGTH(0) | VE_2_5V,
+	EMI_A5 | STRENGTH(0) | VE_2_5V,
+	EMI_A6 | STRENGTH(0) | VE_2_5V,
+	EMI_A7 | STRENGTH(0) | VE_2_5V,
+	EMI_A8 | STRENGTH(0) | VE_2_5V,
+	EMI_A9 | STRENGTH(0) | VE_2_5V,
+	EMI_A10 | STRENGTH(0) | VE_2_5V,
+	EMI_A11 | STRENGTH(0) | VE_2_5V,
+	EMI_A12 | STRENGTH(0) | VE_2_5V,
+
+	/* SDRAM address control signals */
+	EMI_RASN | STRENGTH(0) | VE_2_5V,
+	EMI_CASN | STRENGTH(0) | VE_2_5V,
+
+	/* SDRAM control signals */
+	EMI_CE0N | STRENGTH(0) | VE_2_5V,
+	EMI_CLK | STRENGTH(0) | VE_2_5V,
+	EMI_CLKN | STRENGTH(0) | VE_2_5V,
+	EMI_CKE | STRENGTH(0) | VE_2_5V,
+	EMI_WEN | STRENGTH(0) | VE_2_5V,
+	EMI_BA0 | STRENGTH(0) | VE_2_5V,
+	EMI_BA1 | STRENGTH(0) | VE_2_5V,
+	EMI_DQS0 | STRENGTH(0) | VE_2_5V,
+	EMI_DQS1 | STRENGTH(0) | VE_2_5V,
+#endif
+	/* debug port */
+	PWM1_DUART_TX | STRENGTH(S4MA),	/*  strength is TBD */
+	PWM0_DUART_RX | STRENGTH(S4MA),	/*  strength is TBD */
+
+	/* lcd */
+	LCD_VSYNC,	/* kernel tries with 12 mA for all LCD related pins */
+	LCD_HSYNC,
+	LCD_ENABE,
+	LCD_DOTCLOCK,
+	LCD_D17,
+	LCD_D16,
+	LCD_D15,
+	LCD_D14,
+	LCD_D13,
+	LCD_D12,
+	LCD_D11,
+	LCD_D10,
+	LCD_D9,
+	LCD_D8,
+	LCD_D7,
+	LCD_D6,
+	LCD_D5,
+	LCD_D4,
+	LCD_D3,
+	LCD_D2,
+	LCD_D1,
+	LCD_D0,
+
+	/* LCD usage currently unknown */
+	LCD_CS,	/* used as SPI SS */
+	LCD_RS,	/* used as SPI CLK */
+	LCD_RESET,
+	LCD_WR,	/* used as SPI MOSI */
+
+	/* I2C to the MMA7455L, KXTE9, AT24C08 (DCID), AT24C128B (ID EEPROM) and QN8005B */
+	I2C_SDA,
+	I2C_CLK,
+
+	/* Rotary decoder (external pull ups) */
+	ROTARYA,
+	ROTARYB,
+
+	/* the chumby bend (external pull up) */
+	PWM4_GPIO | GPIO_IN,
+
+	/* backlight control, to be controled by PWM, here we only want to disable it */
+	PWM2_GPIO | GPIO_OUT | GPIO_VALUE(0),	/* 1 enables, 0 disables the backlight */
+
+	/* send a reset signal to the USB hub */
+	AUART1_TX_GPIO | GPIO_OUT | GPIO_VALUE(0),
+
+	/* USB power disable (FIXME what level to be switched off) */
+	AUART1_CTS_GPIO | GPIO_OUT | GPIO_VALUE(0),
+
+	/* Detecting if a display is connected (0 = display attached) (external pull up) */
+	AUART1_RTS_GPIO | GPIO_IN,
+
+	/* disable the audio amplifier */
+	GPMI_D08_GPIO | GPIO_OUT | GPIO_VALUE(0),
+
+	/* Head Phone detection (FIXME what level when plugged in) (external pull up) */
+	GPMI_D11_GPIO | GPIO_IN,
+
+#if 0
+	/* Enable the local 5V (FIXME what to do when the bootloader runs) */
+	GPMI_D12_GPIO | GPIO_OUT | GPIO_VALUE(1),
+#endif
+
+	/* not used pins */
+	GPMI_D09_GPIO | GPIO_IN | PULLUP(1),
+	GPMI_D10_GPIO | GPIO_IN | PULLUP(1),
+	GPMI_D13_GPIO | GPIO_IN | PULLUP(1),
+
+	/* unknown. Not connected to anything than test pin J113 */
+	GPMI_D14_GPIO | GPIO_IN | PULLUP(1),
+
+	/* unknown. Not connected to anything than test pin J114 */
+	GPMI_D15_GPIO | GPIO_IN | PULLUP(1),
+
+	/* NAND controller (Note: There is no NAND device on the board) */
+	GPMI_D00 | PULLUP(1),
+	GPMI_D01 | PULLUP(1),
+	GPMI_D02 | PULLUP(1),
+	GPMI_D03 | PULLUP(1),
+	GPMI_D04 | PULLUP(1),
+	GPMI_D05 | PULLUP(1),
+	GPMI_D06 | PULLUP(1),
+	GPMI_D07 | PULLUP(1),
+	GPMI_CE0N,
+	GPMI_RDY0 | PULLUP(1),
+	GPMI_WRN,	/* kernel tries here with 12 mA */
+	GPMI_RDN,	/* kernel tries here with 12 mA */
+	GPMI_WPM,	/* kernel tries here with 12 mA */
+	GPMI_CLE,
+	GPMI_ALE,
+
+	/* SD card interface */
+	SSP1_DATA0 | PULLUP(1),	/* available at J201 */
+	SSP1_DATA1 | PULLUP(1),	/* available at J200 */
+	SSP1_DATA2 | PULLUP(1),	/* available at J205 */
+	SSP1_DATA3 | PULLUP(1),	/* available at J204 */
+	SSP1_SCK,		/* available at J202 */
+	SSP1_CMD | PULLUP(1),	/* available at J203 */
+	SSP1_DETECT | PULLUP(1),	/* only connected to test pin J115 */
+
+	/* other not used pins */
+	GPMI_CE1N_GPIO | GPIO_IN | PULLUP(1),
+	GPMI_CE2N_GPIO | GPIO_IN | PULLUP(1),
+	GPMI_RDY1_GPIO | GPIO_IN | PULLUP(1),
+	GPMI_RDY2_GPIO | GPIO_IN | PULLUP(1),
+	GPMI_RDY3_GPIO | GPIO_IN | PULLUP(1),
+};
+
+static int falconwing_devices_init(void)
+{
+	int i;
+
+	/* initizalize gpios */
+	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
+		imx_gpio_mode(pad_setup[i]);
+
+	register_device(&sdram_dev);
+
+	armlinux_add_dram(&sdram_dev);
+	armlinux_set_bootparams((void*)(sdram_dev.map_base + 0x100));
+	armlinux_set_architecture(MACH_TYPE_CHUMBY);
+
+	return 0;
+}
+
+device_initcall(falconwing_devices_init);
+
+static struct device_d falconwing_serial_device = {
+	.name     = "stm_serial",
+	.map_base = IMX_DBGUART_BASE,
+	.size     = 8192,
+};
+
+static int falconwing_console_init(void)
+{
+	return register_device(&falconwing_serial_device);
+}
+
+console_initcall(falconwing_console_init);
+
+/** @page chumbyone Chumby Industrie's Falconwing
+
+This device is also known as "chumby one" (http://www.chumby.com/)
+
+This CPU card is based on a Freescale i.MX23 CPU. The card is shipped with:
+
+- 64 MiB synchronous dynamic RAM (DDR type)
+
+Memory layout when @b barebox is running:
+
+- 0x40000000 start of SDRAM
+- 0x40000100 start of kernel's boot parameters
+  - below malloc area: stack area
+  - below barebox: malloc area
+- 0x42000000 start of @b barebox
+
+@section get_falconwing_binary How to get the bootloader binary image:
+
+Using the default configuration:
+
+@verbatim
+make ARCH=arm chumbyone_defconfig
+@endverbatim
+
+Build the bootloader binary image:
+
+@verbatim
+make ARCH=arm CROSS_COMPILE=armv5compiler
+@endverbatim
+
+@note replace the armv5compiler with your ARM v5 cross compiler.
+*/
diff --git a/arch/arm/configs/chumbyone_defconfig b/arch/arm/configs/chumbyone_defconfig
new file mode 100644
index 0000000..1e158dc
--- /dev/null
+++ b/arch/arm/configs/chumbyone_defconfig
@@ -0,0 +1,224 @@
+#
+# Automatically generated make config: don't edit
+# Linux barebox version: 2010.09.0
+# Mon Oct 11 10:23:23 2010
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
+CONFIG_PROMPT="barebox:"
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
index bbdea51..021919a 100644
--- a/arch/arm/mach-stm/Kconfig
+++ b/arch/arm/mach-stm/Kconfig
@@ -3,9 +3,11 @@ if ARCH_STM
 config ARCH_TEXT_BASE
 	hex
 	default 0x41000000 if MACH_MX23EVK
+	default 0x42000000 if MACH_CHUMBY
 
 config BOARDINFO
 	default "Freescale i.MX23-EVK" if MACH_MX23EVK
+	default "Chumby Falconwing" if MACH_CHUMBY
 
 comment "SigmaTel/Freescale i.MX System-on-Chip"
 
@@ -28,6 +30,13 @@ config MACH_MX23EVK
 	help
 	  Say Y here if you are using the Freescale i.MX23-EVK board
 
+config MACH_CHUMBY
+	bool "Chumby Falconwing"
+	select HAVE_MMU
+	help
+	  Say Y here if you are using the "chumby one" aka falconwing from
+	  Chumby Industries
+
 endchoice
 
 endif
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
