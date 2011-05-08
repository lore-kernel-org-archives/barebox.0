Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1QJ223-0002W0-4B
	for barebox@lists.infradead.org; Sun, 08 May 2011 11:20:23 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  8 May 2011 13:09:36 +0200
Message-Id: <1304852976-8236-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] at91: Support for at91rm9200: core chip & board support
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
---
 arch/arm/Makefile                                 |    1 +
 arch/arm/boards/at91rm9200ek/Makefile             |    1 +
 arch/arm/boards/at91rm9200ek/config.h             |   68 +++++
 arch/arm/boards/at91rm9200ek/env/config           |   41 +++
 arch/arm/boards/at91rm9200ek/init.c               |   77 ++++++
 arch/arm/configs/at91rm9200ek_defconfig           |   47 ++++
 arch/arm/mach-at91/Kconfig                        |   27 ++
 arch/arm/mach-at91/Makefile                       |    5 +-
 arch/arm/mach-at91/at91rm9200.c                   |  245 ++++++++++++++++++
 arch/arm/mach-at91/at91rm9200_devices.c           |  276 ++++++++++++++++++++
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c     |  146 +++++++++++
 arch/arm/mach-at91/at91rm9200_time.c              |   97 +++++++
 arch/arm/mach-at91/at91sam926x_lowlevel_init.S    |  278 +++++++++++++++++++++
 arch/arm/mach-at91/include/mach/at91_st.h         |   49 ++++
 arch/arm/mach-at91/include/mach/at91_tc.h         |  146 +++++++++++
 arch/arm/mach-at91/include/mach/at91rm9200.h      |  127 ++++++++++
 arch/arm/mach-at91/include/mach/at91rm9200_emac.h |  138 ++++++++++
 arch/arm/mach-at91/include/mach/at91rm9200_mc.h   |  160 ++++++++++++
 arch/arm/mach-at91/lowlevel_init.S                |  278 ---------------------
 19 files changed, 1928 insertions(+), 279 deletions(-)
 create mode 100644 arch/arm/boards/at91rm9200ek/Makefile
 create mode 100644 arch/arm/boards/at91rm9200ek/config.h
 create mode 100644 arch/arm/boards/at91rm9200ek/env/config
 create mode 100644 arch/arm/boards/at91rm9200ek/init.c
 create mode 100644 arch/arm/configs/at91rm9200ek_defconfig
 create mode 100644 arch/arm/mach-at91/at91rm9200.c
 create mode 100644 arch/arm/mach-at91/at91rm9200_devices.c
 create mode 100644 arch/arm/mach-at91/at91rm9200_lowlevel_init.c
 create mode 100644 arch/arm/mach-at91/at91rm9200_time.c
 create mode 100644 arch/arm/mach-at91/at91sam926x_lowlevel_init.S
 create mode 100644 arch/arm/mach-at91/include/mach/at91_st.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91_tc.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91rm9200.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91rm9200_emac.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91rm9200_mc.h
 delete mode 100644 arch/arm/mach-at91/lowlevel_init.S

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 108bd5e..5981616 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -57,6 +57,7 @@ machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
 # by CONFIG_* macro name.
 board-$(CONFIG_MACH_A9M2410)			:= a9m2410
 board-$(CONFIG_MACH_A9M2440)			:= a9m2440
+board-$(CONFIG_MACH_AT91RM9200EK)		:= at91rm9200ek
 board-$(CONFIG_MACH_AT91SAM9260EK)		:= at91sam9260ek
 board-$(CONFIG_MACH_AT91SAM9261EK)		:= at91sam9261ek
 board-$(CONFIG_MACH_AT91SAM9263EK)		:= at91sam9263ek
diff --git a/arch/arm/boards/at91rm9200ek/Makefile b/arch/arm/boards/at91rm9200ek/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/at91rm9200ek/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/at91rm9200ek/config.h b/arch/arm/boards/at91rm9200ek/config.h
new file mode 100644
index 0000000..b630a67
--- /dev/null
+++ b/arch/arm/boards/at91rm9200ek/config.h
@@ -0,0 +1,68 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		18432000	/* 18.432 MHz crystal */
+
+#define MASTER_PLL_MUL		39
+#define MASTER_PLL_DIV		4
+
+/* clocks */
+#define CONFIG_SYS_MOR_VAL						\
+		(AT91_PMC_MOSCEN |					\
+		 (255 << 8))		/* Main Oscillator Start-up Time */
+#define CONFIG_SYS_PLLAR_VAL						\
+		(AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */ \
+		 (0x3e << 8) |		/* PLL Counter */		\
+		 (0 << 14) |		/* Divider A */			\
+		 ((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV))
+
+#define CONFIG_SYS_PLLBR_VAL	0x10483E0E /* 48.054857 MHz (divider by 2 for USB) */
+/* PCK/2 = MCK Master Clock from SLOW */
+#define	CONFIG_SYS_MCKR2_VAL1		\
+		(AT91_PMC_CSS_SLOW |	\
+		 AT91RM9200_PMC_MDIV_2) \
+
+/* PCK/3 = MCK Master Clock = 59.904000MHz from PLLA */
+#define	CONFIG_SYS_MCKR2_VAL2		\
+		(AT91_PMC_CSS_PLLA |	\
+		 AT91_PMC_PRES_1 |	\
+		 AT91RM9200_PMC_MDIV_3 |\
+		 AT91_PMC_PDIV_1)
+
+/* flash */
+#define CONFIG_SYS_EBI_CFGR_VAL	0x00000000
+#define CONFIG_SYS_SMC_CSR0_VAL							\
+		(AT91_SMC_NWS_(4) |	/* Number of Wait States */		\
+		 AT91_SMC_WSEN |	/* Wait State Enable */			\
+		 AT91_SMC_TDF_(2) |	/* Data Float Time */			\
+		 AT91_SMC_BAT |		/* Byte Access Type */			\
+		 AT91_SMC_DBW_16)	/* Data Bus Width */
+
+/* sdram */
+#define CONFIG_SYS_PIOC_ASR_VAL	0xFFFF0000 /* Configure PIOC as peripheral (D16/D31) */
+#define CONFIG_SYS_PIOC_BSR_VAL	0x00000000
+#define CONFIG_SYS_PIOC_PDR_VAL	0xFFFF0000
+#define CONFIG_SYS_EBI_CSA_VAL							\
+		(AT91_EBI_CS0A_SMC |						\
+		 AT91_EBI_CS1A_SDRAMC |						\
+		 AT91_EBI_CS3A_SMC |						\
+		 AT91_EBI_CS4A_SMC)						\
+
+/* SDRAM */
+/* SDRAMC_MR Mode register */
+/* SDRAMC_CR - Configuration register*/
+#define CONFIG_SYS_SDRC_CR_VAL							\
+		(AT91_SDRAMC_NC_9 |						\
+		 AT91_SDRAMC_NR_12 |						\
+		 AT91_SDRAMC_NB_4 |						\
+		 AT91_SDRAMC_CAS_2 |						\
+		 (1 <<  8) |		/* Write Recovery Delay */		\
+		 (12 << 12) |		/* Row Cycle Delay */			\
+		 (8 << 16) |		/* Row Precharge Delay */		\
+		 (8 << 20) |		/* Row to Column Delay */		\
+		 (1 << 24) |		/* Active to Precharge Delay */		\
+		 (2 << 28))		/* Exit Self Refresh to Active Delay */
+
+#define CONFIG_SYS_SDRC_TR_VAL	0x000002E0 /* Write refresh rate */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91rm9200ek/env/config b/arch/arm/boards/at91rm9200ek/env/config
new file mode 100644
index 0000000..1b56b25
--- /dev/null
+++ b/arch/arm/boards/at91rm9200ek/env/config
@@ -0,0 +1,41 @@
+#!/bin/sh
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'nfs', 'tftp' or 'nor'
+kernel_loc=tftp
+# can be either 'net', 'nor' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root.$rootfs_type
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+#kernelimage_type=zimage
+#kernelimage=zImage
+kernelimage_type=uimage
+kernelimage=uImage
+#kernelimage_type=raw
+#kernelimage=Image
+#kernelimage_type=raw_lzo
+#kernelimage=Image.lzo
+
+nor_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
+rootfs_mtdblock_nor=3
+
+autoboot_timeout=3
+
+bootargs="console=ttyS0,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;31m[barebox@\h]:\w\e[0m\n# "
+
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
new file mode 100644
index 0000000..a449326
--- /dev/null
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -0,0 +1,77 @@
+/*
+ * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
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
+#include <net.h>
+#include <init.h>
+#include <environment.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <asm/io.h>
+#include <asm/hardware.h>
+#include <mach/at91_pmc.h>
+#include <mach/board.h>
+#include <mach/gpio.h>
+#include <mach/io.h>
+
+static struct device_d cfi_dev = {
+	.id		= 0,
+	.name		= "cfi_flash",
+	.map_base	= AT91_CHIPSELECT_0,
+};
+
+static struct at91_ether_platform_data ether_pdata = {
+	.flags = AT91SAM_ETHER_RMII,
+	.phy_addr = 0,
+};
+
+static int at91rm9200ek_devices_init(void)
+{
+	/*
+	 * Correct IRDA resistor problem
+	 * Set PA23_TXD in Output
+	 */
+	at91_set_gpio_output(AT91_PIN_PA23, 1);
+
+	at91_add_device_sdram(64 * 1024 * 1024);
+	at91_add_device_eth(&ether_pdata);
+	register_device(&cfi_dev);
+
+#if defined(CONFIG_DRIVER_CFI) || defined(CONFIG_DRIVER_CFI_OLD)
+	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
+	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+#endif
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
+	armlinux_set_architecture(MACH_TYPE_AT91RM9200EK);
+
+	return 0;
+}
+device_initcall(at91rm9200ek_devices_init);
+
+static int at91rm9200ek_console_init(void)
+{
+	at91_register_uart(0, 0);
+	return 0;
+}
+console_initcall(at91rm9200ek_console_init);
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
new file mode 100644
index 0000000..0c10f88
--- /dev/null
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -0,0 +1,47 @@
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PROMPT="9200-EK:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91rm9200ek/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNLZO=y
+# CONFIG_SPI is not set
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_INTEL is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
+CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_MTD=y
+CONFIG_UBI=y
+CONFIG_FS_CRAMFS=y
+CONFIG_SHA1=y
+CONFIG_SHA256=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index bf6ad7e..82d593a 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -6,6 +6,7 @@ config ARCH_TEXT_BASE
 	default 0x23f00000
 
 config BOARDINFO
+	default "Atmel at91rm9200-ek" if MACH_AT91RM9200EK
 	default "Atmel 91SAM9260-EK" if MACH_AT91SAM9260EK
 	default "Atmel at91sam9261-ek" if MACH_AT91SAM9261EK
 	default "Atmel at91sam9263-ek" if MACH_AT91SAM9263EK
@@ -25,6 +26,14 @@ comment "Atmel AT91 System-on-Chip"
 choice
 	prompt "Atmel AT91 Processor"
 
+config ARCH_AT91RM9200
+	bool "AT91RM9200"
+	select CPU_ARM920T
+	select HAS_AT91_ETHER
+	select ARCH_HAS_LOWLEVEL_INIT
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
+
 config ARCH_AT91SAM9260
 	bool "AT91SAM9260"
 	select CPU_ARM926T
@@ -57,6 +66,24 @@ endchoice
 
 # ----------------------------------------------------------
 
+if ARCH_AT91RM9200
+
+choice
+
+	prompt "AT91RM9200 Board Type"
+
+config MACH_AT91RM9200EK
+	bool "Atmel AT91RM9200-EK Evaluation Kit"
+	help
+	  Select this if you are using Atmel's AT91RM9200-EK Evaluation Kit.
+	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3507>
+
+endchoice
+
+endif
+
+# ----------------------------------------------------------
+
 if ARCH_AT91SAM9260
 
 choice
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index d57c8f5..e72f409 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,8 +1,11 @@
 obj-y += clock.o gpio.o
 
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
+lowlevel_init-y = at91sam926x_lowlevel_init.o
+lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
+obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
 
 # CPU-specific support
+obj-$(CONFIG_ARCH_AT91RM9200)	+= at91rm9200.o at91rm9200_time.o at91rm9200_devices.o
 obj-$(CONFIG_ARCH_AT91SAM9260) += at91sam9260.o at91sam926x_time.o at91sam9260_devices.o sam9_smc.o
 obj-$(CONFIG_ARCH_AT91SAM9261) += at91sam9261.o at91sam926x_time.o at91sam9261_devices.o sam9_smc.o
 obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam926x_time.o at91sam9263_devices.o sam9_smc.o
diff --git a/arch/arm/mach-at91/at91rm9200.c b/arch/arm/mach-at91/at91rm9200.c
new file mode 100644
index 0000000..6baf1a7
--- /dev/null
+++ b/arch/arm/mach-at91/at91rm9200.c
@@ -0,0 +1,245 @@
+#include <common.h>
+#include <gpio.h>
+#include <init.h>
+#include <asm/hardware.h>
+#include <mach/at91_pmc.h>
+
+#include "clock.h"
+#include "generic.h"
+
+/* --------------------------------------------------------------------
+ *  Clocks
+ * -------------------------------------------------------------------- */
+
+/*
+ * The peripheral clocks.
+ */
+static struct clk udc_clk = {
+	.name		= "udc_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_UDP,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ohci_clk = {
+	.name		= "ohci_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_UHP,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ether_clk = {
+	.name		= "ether_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_EMAC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk mmc_clk = {
+	.name		= "mci_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_MCI,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk twi_clk = {
+	.name		= "twi_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_TWI,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart0_clk = {
+	.name		= "usart0_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_US0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart1_clk = {
+	.name		= "usart1_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_US1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart2_clk = {
+	.name		= "usart2_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_US2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart3_clk = {
+	.name		= "usart3_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_US3,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi_clk = {
+	.name		= "spi_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_SPI,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioA_clk = {
+	.name		= "pioA_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_PIOA,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioB_clk = {
+	.name		= "pioB_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_PIOB,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioC_clk = {
+	.name		= "pioC_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_PIOC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioD_clk = {
+	.name		= "pioD_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_PIOD,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ssc0_clk = {
+	.name		= "ssc0_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_SSC0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ssc1_clk = {
+	.name		= "ssc1_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_SSC1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ssc2_clk = {
+	.name		= "ssc2_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_SSC2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tc0_clk = {
+	.name		= "tc0_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_TC0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tc1_clk = {
+	.name		= "tc1_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_TC1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tc2_clk = {
+	.name		= "tc2_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_TC2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tc3_clk = {
+	.name		= "tc3_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_TC3,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tc4_clk = {
+	.name		= "tc4_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_TC4,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tc5_clk = {
+	.name		= "tc5_clk",
+	.pmc_mask	= 1 << AT91RM9200_ID_TC5,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+
+static struct clk *periph_clocks[] __initdata = {
+	&pioA_clk,
+	&pioB_clk,
+	&pioC_clk,
+	&pioD_clk,
+	&usart0_clk,
+	&usart1_clk,
+	&usart2_clk,
+	&usart3_clk,
+	&mmc_clk,
+	&udc_clk,
+	&twi_clk,
+	&spi_clk,
+	&ssc0_clk,
+	&ssc1_clk,
+	&ssc2_clk,
+	&tc0_clk,
+	&tc1_clk,
+	&tc2_clk,
+	&tc3_clk,
+	&tc4_clk,
+	&tc5_clk,
+	&ohci_clk,
+	&ether_clk,
+	// irq0 .. irq6
+};
+
+/*
+ * The four programmable clocks.
+ * You must configure pin multiplexing to bring these signals out.
+ */
+static struct clk pck0 = {
+	.name		= "pck0",
+	.pmc_mask	= AT91_PMC_PCK0,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 0,
+};
+static struct clk pck1 = {
+	.name		= "pck1",
+	.pmc_mask	= AT91_PMC_PCK1,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 1,
+};
+static struct clk pck2 = {
+	.name		= "pck2",
+	.pmc_mask	= AT91_PMC_PCK2,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 2,
+};
+static struct clk pck3 = {
+	.name		= "pck3",
+	.pmc_mask	= AT91_PMC_PCK3,
+	.type		= CLK_TYPE_PROGRAMMABLE,
+	.id		= 3,
+};
+
+static void __init at91rm9200_register_clocks(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
+		clk_register(periph_clocks[i]);
+
+	clk_register(&pck0);
+	clk_register(&pck1);
+	clk_register(&pck2);
+	clk_register(&pck3);
+}
+
+/* --------------------------------------------------------------------
+ *  GPIO
+ * -------------------------------------------------------------------- */
+
+static struct at91_gpio_bank at91rm9200_gpio[] = {
+	{
+		.id		= AT91RM9200_ID_PIOA,
+		.offset		= AT91_PIOA,
+		.clock		= &pioA_clk,
+	}, {
+		.id		= AT91RM9200_ID_PIOB,
+		.offset		= AT91_PIOB,
+		.clock		= &pioB_clk,
+	}, {
+		.id		= AT91RM9200_ID_PIOC,
+		.offset		= AT91_PIOC,
+		.clock		= &pioC_clk,
+	}, {
+		.id		= AT91RM9200_ID_PIOD,
+		.offset		= AT91_PIOD,
+		.clock		= &pioD_clk,
+	}
+};
+
+
+/* --------------------------------------------------------------------
+ *  AT91RM9200 processor initialization
+ * -------------------------------------------------------------------- */
+static int __init at91rm9200_initialize(void)
+{
+
+	/* Init clock subsystem */
+	at91_clock_init(AT91_MAIN_CLOCK);
+
+	/* Register the processor-specific clocks */
+	at91rm9200_register_clocks();
+
+	/* Initialize GPIO subsystem */
+	at91_gpio_init(at91rm9200_gpio, ARRAY_SIZE(at91rm9200_gpio));
+
+	return 0;
+}
+
+core_initcall(at91rm9200_initialize);
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
new file mode 100644
index 0000000..f45008a
--- /dev/null
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -0,0 +1,276 @@
+/*
+ * arch/arm/mach-at91/at91rm9200_devices.c
+ *
+ *  Copyright (C) 2005 Thibaut VARENE <varenet@parisc-linux.org>
+ *  Copyright (C) 2005 David Brownell
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+#include <common.h>
+#include <asm/armlinux.h>
+#include <mach/hardware.h>
+#include <mach/at91rm9200.h>
+#include <mach/board.h>
+#include <mach/gpio.h>
+#include <mach/io.h>
+
+#include "generic.h"
+
+static struct memory_platform_data ram_pdata = {
+	.name = "ram0",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev = {
+	.id = -1,
+	.name = "mem",
+	.map_base = AT91_CHIPSELECT_1,
+	.platform_data = &ram_pdata,
+};
+
+void at91_add_device_sdram(u32 size)
+{
+	sdram_dev.size = size;
+	register_device(&sdram_dev);
+	armlinux_add_dram(&sdram_dev);
+}
+
+/* --------------------------------------------------------------------
+ *  Ethernet
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_DRIVER_NET_AT91_ETHER)
+static struct device_d at91rm9200_eth_device = {
+	.id		= 0,
+	.name		= "at91_ether",
+	.map_base	= AT91_VA_BASE_EMAC,
+	.size		= 0x1000,
+};
+
+void __init at91_add_device_eth(struct at91_ether_platform_data *data)
+{
+	if (!data)
+		return;
+
+	/* Pins used for MII and RMII */
+	at91_set_A_periph(AT91_PIN_PA16, 0);	/* EMDIO */
+	at91_set_A_periph(AT91_PIN_PA15, 0);	/* EMDC */
+	at91_set_A_periph(AT91_PIN_PA14, 0);	/* ERXER */
+	at91_set_A_periph(AT91_PIN_PA13, 0);	/* ERX1 */
+	at91_set_A_periph(AT91_PIN_PA12, 0);	/* ERX0 */
+	at91_set_A_periph(AT91_PIN_PA11, 0);	/* ECRS_ECRSDV */
+	at91_set_A_periph(AT91_PIN_PA10, 0);	/* ETX1 */
+	at91_set_A_periph(AT91_PIN_PA9, 0);	/* ETX0 */
+	at91_set_A_periph(AT91_PIN_PA8, 0);	/* ETXEN */
+	at91_set_A_periph(AT91_PIN_PA7, 0);	/* ETXCK_EREFCK */
+
+	if (!(data->flags & AT91SAM_ETHER_RMII)) {
+		at91_set_B_periph(AT91_PIN_PB19, 0);	/* ERXCK */
+		at91_set_B_periph(AT91_PIN_PB18, 0);	/* ECOL */
+		at91_set_B_periph(AT91_PIN_PB17, 0);	/* ERXDV */
+		at91_set_B_periph(AT91_PIN_PB16, 0);	/* ERX3 */
+		at91_set_B_periph(AT91_PIN_PB15, 0);	/* ERX2 */
+		at91_set_B_periph(AT91_PIN_PB14, 0);	/* ETXER */
+		at91_set_B_periph(AT91_PIN_PB13, 0);	/* ETX3 */
+		at91_set_B_periph(AT91_PIN_PB12, 0);	/* ETX2 */
+	}
+
+	at91rm9200_eth_device.platform_data = data;
+	register_device(&at91rm9200_eth_device);
+}
+#else
+void __init at91_add_device_eth(struct at91_ether_platform_data *data) {}
+#endif
+
+/* --------------------------------------------------------------------
+ *  NAND / SmartMedia
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_NAND_ATMEL)
+static struct device_d at91rm9200_nand_device = {
+	.id		= -1,
+	.name		= "atmel_nand",
+	.map_base	= AT91_CHIPSELECT_3,
+	.size		= 0x10,
+};
+
+void __init at91_add_device_nand(struct atmel_nand_data *data)
+{
+	unsigned int csa;
+
+	if (!data)
+		return;
+
+	/* enable the address range of CS3 */
+	csa = at91_sys_read(AT91_EBI_CSA);
+	at91_sys_write(AT91_EBI_CSA, csa | AT91_EBI_CS3A_SMC_SMARTMEDIA);
+
+	/* set the bus interface characteristics */
+	at91_sys_write(AT91_SMC_CSR(3), AT91_SMC_ACSS_STD | AT91_SMC_DBW_8 | AT91_SMC_WSEN
+		| AT91_SMC_NWS_(5)
+		| AT91_SMC_TDF_(1)
+		| AT91_SMC_RWSETUP_(0)	/* tDS Data Set up Time 30 - ns */
+		| AT91_SMC_RWHOLD_(1)	/* tDH Data Hold Time 20 - ns */
+	);
+
+	/* enable pin */
+	if (data->enable_pin)
+		at91_set_gpio_output(data->enable_pin, 1);
+
+	/* ready/busy pin */
+	if (data->rdy_pin)
+		at91_set_gpio_input(data->rdy_pin, 1);
+
+	/* card detect pin */
+	if (data->det_pin)
+		at91_set_gpio_input(data->det_pin, 1);
+
+	at91_set_A_periph(AT91_PIN_PC1, 0);		/* SMOE */
+	at91_set_A_periph(AT91_PIN_PC3, 0);		/* SMWE */
+
+	at91rm9200_nand_device.platform_data = data;
+	platform_device_register(&at91rm9200_nand_device);
+}
+#else
+void __init at91_add_device_nand(struct atmel_nand_data *data) {}
+#endif
+
+/* --------------------------------------------------------------------
+ *  UART
+ * -------------------------------------------------------------------- */
+
+static struct device_d dbgu_serial_device = {
+	.id		= 0,
+	.name		= "atmel_serial",
+	.map_base	= (AT91_BASE_SYS + AT91_DBGU),
+	.size		= 4096,
+};
+
+static inline void configure_dbgu_pins(void)
+{
+	at91_set_A_periph(AT91_PIN_PA30, 0);		/* DRXD */
+	at91_set_A_periph(AT91_PIN_PA31, 1);		/* DTXD */
+}
+
+static struct device_d uart0_serial_device = {
+	.id		= 1,
+	.name		= "atmel_serial",
+	.map_base	= AT91RM9200_BASE_US0,
+	.size		= 4096,
+};
+
+static inline void configure_usart0_pins(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PA17, 1);		/* TXD0 */
+	at91_set_A_periph(AT91_PIN_PA18, 0);		/* RXD0 */
+
+	if (pins & ATMEL_UART_CTS)
+		at91_set_A_periph(AT91_PIN_PA20, 0);	/* CTS0 */
+
+	if (pins & ATMEL_UART_RTS) {
+		/*
+		 * AT91RM9200 Errata #39 - RTS0 is not internally connected to PA21.
+		 *  We need to drive the pin manually.  Default is off (RTS is active low).
+		 */
+		at91_set_gpio_output(AT91_PIN_PA21, 1);
+	}
+}
+
+static struct device_d uart1_serial_device = {
+	.id		= 2,
+	.name		= "atmel_serial",
+	.map_base	= AT91RM9200_BASE_US1,
+	.size		= 4096,
+};
+
+static inline void configure_usart1_pins(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PB20, 1);		/* TXD1 */
+	at91_set_A_periph(AT91_PIN_PB21, 0);		/* RXD1 */
+
+	if (pins & ATMEL_UART_RI)
+		at91_set_A_periph(AT91_PIN_PB18, 0);	/* RI1 */
+	if (pins & ATMEL_UART_DTR)
+		at91_set_A_periph(AT91_PIN_PB19, 0);	/* DTR1 */
+	if (pins & ATMEL_UART_DCD)
+		at91_set_A_periph(AT91_PIN_PB23, 0);	/* DCD1 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_A_periph(AT91_PIN_PB24, 0);	/* CTS1 */
+	if (pins & ATMEL_UART_DSR)
+		at91_set_A_periph(AT91_PIN_PB25, 0);	/* DSR1 */
+	if (pins & ATMEL_UART_RTS)
+		at91_set_A_periph(AT91_PIN_PB26, 0);	/* RTS1 */
+}
+
+static struct device_d uart2_serial_device = {
+	.id		= 3,
+	.name		= "atmel_serial",
+	.map_base	= AT91RM9200_BASE_US2,
+	.size		= 4096,
+};
+
+static inline void configure_usart2_pins(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PA22, 0);		/* RXD2 */
+	at91_set_A_periph(AT91_PIN_PA23, 1);		/* TXD2 */
+
+	if (pins & ATMEL_UART_CTS)
+		at91_set_B_periph(AT91_PIN_PA30, 0);	/* CTS2 */
+	if (pins & ATMEL_UART_RTS)
+		at91_set_B_periph(AT91_PIN_PA31, 0);	/* RTS2 */
+}
+
+static struct device_d uart3_serial_device = {
+	.id		= 4,
+	.name		= "atmel_serial",
+	.map_base	= AT91RM9200_BASE_US3,
+	.size		= 4096,
+};
+
+static inline void configure_usart3_pins(unsigned pins)
+{
+	at91_set_B_periph(AT91_PIN_PA5, 1);		/* TXD3 */
+	at91_set_B_periph(AT91_PIN_PA6, 0);		/* RXD3 */
+
+	if (pins & ATMEL_UART_CTS)
+		at91_set_B_periph(AT91_PIN_PB1, 0);	/* CTS3 */
+	if (pins & ATMEL_UART_RTS)
+		at91_set_B_periph(AT91_PIN_PB0, 0);	/* RTS3 */
+}
+
+void __init at91_register_uart(unsigned id, unsigned pins)
+{
+	switch (id) {
+		case 0:		/* DBGU */
+			configure_dbgu_pins();
+			at91_clock_associate("mck", &dbgu_serial_device, "usart");
+			register_device(&dbgu_serial_device);
+			break;
+		case AT91RM9200_ID_US0:
+			configure_usart0_pins(pins);
+			at91_clock_associate("usart0_clk", &uart0_serial_device, "usart");
+			break;
+		case AT91RM9200_ID_US1:
+			configure_usart1_pins(pins);
+			at91_clock_associate("usart1_clk", &uart1_serial_device, "usart");
+			register_device(&uart1_serial_device);
+			break;
+		case AT91RM9200_ID_US2:
+			configure_usart2_pins(pins);
+			at91_clock_associate("usart2_clk", &uart2_serial_device, "usart");
+			register_device(&uart2_serial_device);
+			break;
+		case AT91RM9200_ID_US3:
+			configure_usart3_pins(pins);
+			at91_clock_associate("usart3_clk", &uart3_serial_device, "usart");
+			register_device(&uart3_serial_device);
+			break;
+		default:
+			return;
+	}
+
+}
diff --git a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
new file mode 100644
index 0000000..8d9ae08
--- /dev/null
+++ b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
@@ -0,0 +1,146 @@
+/*
+ * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <asm/system.h>
+#include <asm/barebox-arm.h>
+#include <mach/hardware.h>
+#include <mach/at91rm9200.h>
+#include <mach/at91rm9200_mc.h>
+#include <mach/at91_pio.h>
+#include <mach/at91_pmc.h>
+#include <mach/io.h>
+#include <init.h>
+
+void static inline access_sdram(void)
+{
+	writel(0x00000000, AT91_SDRAM_BASE);
+}
+
+void __naked __bare_init arch_init_lowlevel(void)
+{
+	/*
+	 * relocate exception table
+	 */
+	__asm__ __volatile__ (
+"	ldr	r0, =exception_vectors\n"
+"	ldr	r1, =0x0\n"
+"	mov	r2, #16\n"
+"loopev:\n"
+"	subs	r2, r2, #1\n"
+"	ldr	r3, [r0], #4\n"
+"	str	r3, [r1], #4\n"
+"	bne	loopev\n"
+"	mov	pc, lr\n"
+);
+}
+
+void __naked __bare_init board_init_lowlevel(void)
+{
+	u32 r;
+	int i;
+
+	/*
+	 * PMC Check if the PLL is already initialized
+	 */
+	r = at91_sys_read(AT91_PMC_MCKR);
+	if (r & AT91_PMC_CSS)
+		goto end;
+
+	/*
+	 * Enable the Main Oscillator
+	 */
+	at91_sys_write(AT91_CKGR_MOR, CONFIG_SYS_MOR_VAL);
+
+	do {
+		r = at91_sys_read(AT91_PMC_SR);
+	} while (!(r & AT91_PMC_MOSCS));
+
+	/*
+	 * EBI_CFGR
+	 */
+	at91_sys_write(AT91_EBI_CFGR, CONFIG_SYS_EBI_CFGR_VAL);
+
+	/*
+	 * SMC2_CSR[0]: 16bit, 2 TDF, 4 WS
+	 */
+	at91_sys_write(AT91_SMC_CSR(0), CONFIG_SYS_SMC_CSR0_VAL);
+
+	/*
+	 * Init Clocks
+	 */
+
+	/*
+	 * PLLAR: x MHz for PCK
+	 */
+	at91_sys_write(AT91_CKGR_PLLAR, CONFIG_SYS_PLLAR_VAL);
+
+	do {
+		r = at91_sys_read(AT91_PMC_SR);
+	} while (!(r & AT91_PMC_LOCKA));
+
+	/*
+	 * PCK/x = MCK Master Clock from SLOW
+	 */
+	at91_sys_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR2_VAL1);
+
+	/*
+	 * PCK/x = MCK Master Clock from PLLA
+	 */
+	at91_sys_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR2_VAL2);
+
+	do {
+		r = at91_sys_read(AT91_PMC_SR);
+	} while (!(r & AT91_PMC_MCKRDY));
+
+	/*
+	 * Init SDRAM
+	 */
+
+	/* PIOC_ASR: Configure PIOC as peripheral (D16/D31) */
+	at91_sys_write(AT91_PIOC + PIO_ASR, CONFIG_SYS_PIOC_ASR_VAL);
+	/* PIOC_BSR */
+	at91_sys_write(AT91_PIOC + PIO_BSR, CONFIG_SYS_PIOC_BSR_VAL);
+	/* PIOC_PDR */
+	at91_sys_write(AT91_PIOC + PIO_PDR, CONFIG_SYS_PIOC_PDR_VAL);
+
+	/* EBI_CSA : CS1=SDRAM */
+	at91_sys_write(AT91_EBI_CSA, CONFIG_SYS_EBI_CSA_VAL);
+
+	/* SDRC_CR */
+	at91_sys_write(AT91_SDRAMC_CR, CONFIG_SYS_SDRC_CR_VAL);
+	/* SDRC_MR : Precharge All */
+	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_PRECHARGE);
+	/* access SDRAM */
+	access_sdram();
+	/* SDRC_MR : refresh */
+	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_REFRESH);
+
+	/* access SDRAM 8 times */
+	for (i = 0; i < 8; i++)
+		access_sdram();
+
+	/* SDRC_MR : Load Mode Register */
+	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_LMR);
+	/* access SDRAM */
+	access_sdram();
+	/* SDRC_TR : Write refresh rate */
+	at91_sys_write(AT91_SDRAMC_TR, CONFIG_SYS_SDRC_TR_VAL);
+	/* access SDRAM */
+	access_sdram();
+	/* SDRC_MR : Normal Mode */
+	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
+	/* access SDRAM */
+	access_sdram();
+
+	/* switch from FastBus to Asynchronous clock mode */
+	r = get_cr();
+	r |= 0xC0000000;	/* set bit 31 (iA) and 30 (nF) */
+	set_cr(r);
+
+end:
+	board_init_lowlevel_return();
+}
diff --git a/arch/arm/mach-at91/at91rm9200_time.c b/arch/arm/mach-at91/at91rm9200_time.c
new file mode 100644
index 0000000..92b9e66
--- /dev/null
+++ b/arch/arm/mach-at91/at91rm9200_time.c
@@ -0,0 +1,97 @@
+/*
+ * (C) Copyright 2002
+ * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
+ * Marius Groeger <mgroeger@sysgo.de>
+ *
+ * (C) Copyright 2002
+ * Sysgo Real-Time Solutions, GmbH <www.elinos.com>
+ * Alex Zuepke <azu@sysgo.de>
+ *
+ * (C) Copyright 2002
+ * Gary Jennejohn, DENX Software Engineering, <gj@denx.de>
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
+#include <init.h>
+#include <clock.h>
+#include <mach/hardware.h>
+#include <mach/at91_tc.h>
+#include <mach/at91_st.h>
+#include <mach/at91_pmc.h>
+#include <mach/io.h>
+#include <asm/io.h>
+
+/*
+ * The ST_CRTR is updated asynchronously to the master clock ... but
+ * the updates as seen by the CPU don't seem to be strictly monotonic.
+ * Waiting until we read the same value twice avoids glitching.
+ */
+uint64_t at91rm9200_clocksource_read(void)
+{
+	unsigned long x1, x2;
+
+	x1 = at91_sys_read(AT91_ST_CRTR);
+	do {
+		x2 = at91_sys_read(AT91_ST_CRTR);
+		if (x1 == x2)
+			break;
+		x1 = x2;
+	} while (1);
+	return x1;
+}
+
+static struct clocksource cs = {
+	.mask	= CLOCKSOURCE_MASK(20),
+	.read	= at91rm9200_clocksource_read,
+	.shift	= 10,
+};
+
+static int clocksource_init (void)
+{
+	/* The 32KiHz "Slow Clock" (tick every 30517.58 nanoseconds) is used
+	 * directly for the clocksource and all clockevents, after adjusting
+	 * its prescaler from the 1 Hz default.
+	 */
+	at91_sys_write(AT91_ST_RTMR, 1);
+
+	cs.mult = clocksource_hz2mult(AT91_SLOW_CLOCK, cs.shift);
+
+	init_clock(&cs);
+
+	return 0;
+}
+core_initcall(clocksource_init);
+
+/*
+ * Reset the cpu through the reset controller
+ */
+void __noreturn reset_cpu (unsigned long ignored)
+{
+	/*
+	 * Perform a hardware reset with the use of the Watchdog timer.
+	 */
+	at91_sys_write(AT91_ST_WDMR, AT91_ST_RSTEN | AT91_ST_EXTEN | 1);
+	at91_sys_write(AT91_ST_CR, AT91_ST_WDRST);
+
+	/* Not reached */
+	while (1);
+}
+EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.S b/arch/arm/mach-at91/at91sam926x_lowlevel_init.S
new file mode 100644
index 0000000..805b201
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.S
@@ -0,0 +1,278 @@
+/*
+ * Memory Setup stuff - taken from blob memsetup.S
+ *
+ * Copyright (C) 1999 2000 2001 Erik Mouw (J.A.K.Mouw@its.tudelft.nl) and
+ *		       Jan-Derk Bakker (J.D.Bakker@its.tudelft.nl)
+ *
+ * Copyright (C) 2008 Ronetix Ilko Iliev (www.ronetix.at)
+ * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+#include <mach/hardware.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_pio.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91_wdt.h>
+#include <mach/at91sam9_matrix.h>
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9_smc.h>
+
+_TEXT_BASE:
+	.word	TEXT_BASE
+
+.globl board_init_lowlevel
+.type board_init_lowlevel,function
+board_init_lowlevel:
+
+	mov	r5, pc		/* r5 = POS1 + 4 current */
+POS1:
+	ldr	r0, =POS1	/* r0 = POS1 compile */
+	ldr	r2, _TEXT_BASE
+	sub	r0, r0, r2	/* r0 = POS1-_TEXT_BASE (POS1 relative) */
+	sub	r5, r5, r0	/* r0 = TEXT_BASE-1 */
+	sub	r5, r5, #4	/* r1 = text base - current */
+
+	/* memory control configuration 1 */
+	ldr	r0, =SMRDATA
+	ldr	r2, =SMRDATA1
+	ldr	r1, _TEXT_BASE
+	sub	r0, r0, r1
+	sub	r2, r2, r1
+	add	r0, r0, r5
+	add	r2, r2, r5
+0:
+	/* the address */
+	ldr	r1, [r0], #4
+	/* the value */
+	ldr	r3, [r0], #4
+	str	r3, [r1]
+	cmp	r2, r0
+	bne	0b
+
+/* ----------------------------------------------------------------------------
+ * PMC Init Step 1.
+ * ----------------------------------------------------------------------------
+ * - Check if the PLL is already initialized
+ * ----------------------------------------------------------------------------
+ */
+	ldr	r1, =(AT91_BASE_SYS + AT91_PMC_MCKR)
+	ldr	r0, [r1]
+	and	r0, r0, #3
+	cmp	r0, #0
+	bne	PLL_setup_end
+
+/* ---------------------------------------------------------------------------
+ * - Enable the Main Oscillator
+ * ---------------------------------------------------------------------------
+ */
+	ldr	r1, =(AT91_BASE_SYS + AT91_CKGR_MOR)
+	ldr	r2, =(AT91_BASE_SYS + AT91_PMC_SR)
+	/* Main oscillator Enable register PMC_MOR: */
+	ldr	r0, =CONFIG_SYS_MOR_VAL
+	str	r0, [r1]
+
+	/* Reading the PMC Status to detect when the Main Oscillator is enabled */
+	mov	r4, #AT91_PMC_MOSCS
+MOSCS_Loop:
+	ldr	r3, [r2]
+	and	r3, r4, r3
+	cmp	r3, #AT91_PMC_MOSCS
+	bne	MOSCS_Loop
+
+/* ----------------------------------------------------------------------------
+ * PMC Init Step 2.
+ * ----------------------------------------------------------------------------
+ * Setup PLLA
+ * ----------------------------------------------------------------------------
+ */
+	ldr	r1, =(AT91_BASE_SYS + AT91_CKGR_PLLAR)
+	ldr	r0, =CONFIG_SYS_PLLAR_VAL
+	str	r0, [r1]
+
+	/* Reading the PMC Status register to detect when the PLLA is locked */
+	mov	r4, #AT91_PMC_LOCKA
+MOSCS_Loop1:
+	ldr	r3, [r2]
+	and	r3, r4, r3
+	cmp	r3, #AT91_PMC_LOCKA
+	bne	MOSCS_Loop1
+
+/* ----------------------------------------------------------------------------
+ * PMC Init Step 3.
+ * ----------------------------------------------------------------------------
+ * - Switch on the Main Oscillator
+ * ----------------------------------------------------------------------------
+ */
+	ldr	r1, =(AT91_BASE_SYS + AT91_PMC_MCKR)
+
+	/* -Master Clock Controller register PMC_MCKR */
+	ldr	r0, =CONFIG_SYS_MCKR1_VAL
+	str	r0, [r1]
+
+	/* Reading the PMC Status to detect when the Master clock is ready */
+	mov	r4, #AT91_PMC_MCKRDY
+MCKRDY_Loop:
+	ldr	r3, [r2]
+	and	r3, r4, r3
+	cmp	r3, #AT91_PMC_MCKRDY
+	bne	MCKRDY_Loop
+
+	ldr	r0, =CONFIG_SYS_MCKR2_VAL
+	str	r0, [r1]
+
+	/* Reading the PMC Status to detect when the Master clock is ready */
+	mov	r4, #AT91_PMC_MCKRDY
+MCKRDY_Loop1:
+	ldr	r3, [r2]
+	and	r3, r4, r3
+	cmp	r3, #AT91_PMC_MCKRDY
+	bne	MCKRDY_Loop1
+
+PLL_setup_end:
+
+/* ----------------------------------------------------------------------------
+ * - memory control configuration 2
+ * ----------------------------------------------------------------------------
+ */
+	ldr	r0, =(AT91_BASE_SYS + AT91_SDRAMC_TR)
+	ldr	r1, [r0]
+	cmp	r1, #0
+	bne	SDRAM_setup_end
+
+	ldr	r0, =SMRDATA1
+	ldr	r2, =SMRDATA2
+	ldr	r1, _TEXT_BASE
+	sub	r0, r0, r1
+	sub	r2, r2, r1
+	add	r0, r0, r5
+	add	r2, r2, r5
+
+2:
+	/* the address */
+	ldr	r1, [r0], #4
+	/* the value */
+	ldr	r3, [r0], #4
+	str	r3, [r1]
+	cmp	r2, r0
+	bne	2b
+
+SDRAM_setup_end:
+	/* everything is fine now */
+	mov	pc, lr
+
+	.ltorg
+
+SMRDATA:
+	.word (AT91_BASE_SYS + AT91_WDT_MR)
+	.word CONFIG_SYS_WDTC_WDMR_VAL
+
+	/* configure PIOx as EBI0 D[16-31] */
+#if defined(CONFIG_ARCH_AT91SAM9263)
+	.word (AT91_BASE_SYS + AT91_PIOD + PIO_PDR)
+	.word CONFIG_SYS_PIOD_PDR_VAL1
+	.word (AT91_BASE_SYS + AT91_PIOD + PIO_PUDR)
+	.word CONFIG_SYS_PIOD_PPUDR_VAL
+	.word (AT91_BASE_SYS + AT91_PIOD + PIO_ASR)
+	.word CONFIG_SYS_PIOD_PPUDR_VAL
+#elif defined(CONFIG_ARCH_AT91SAM9260) || defined(CONFIG_ARCH_AT91SAM9261) \
+	|| defined(CONFIG_ARCH_AT91SAM9G20) || defined(CONFIG_ARCH_AT91SAM9G10)
+	.word (AT91_BASE_SYS + AT91_PIOC + PIO_PDR)
+	.word CONFIG_SYS_PIOC_PDR_VAL1
+	.word (AT91_BASE_SYS + AT91_PIOC + PIO_PUDR)
+	.word CONFIG_SYS_PIOC_PPUDR_VAL
+#endif
+
+#if defined(AT91_MATRIX_EBI0CSA)
+	.word (AT91_BASE_SYS + AT91_MATRIX_EBI0CSA)
+	.word CONFIG_SYS_MATRIX_EBI0CSA_VAL
+#else /* AT91_MATRIX_EBICSA */
+	.word (AT91_BASE_SYS + AT91_MATRIX_EBICSA)
+	.word CONFIG_SYS_MATRIX_EBICSA_VAL
+#endif
+
+	/* flash */
+	.word (AT91_BASE_SYS + AT91_SMC_MODE(0))
+	.word CONFIG_SYS_SMC0_MODE0_VAL
+
+	.word (AT91_BASE_SYS + AT91_SMC_CYCLE(0))
+	.word CONFIG_SYS_SMC0_CYCLE0_VAL
+
+	.word (AT91_BASE_SYS + AT91_SMC_PULSE(0))
+	.word CONFIG_SYS_SMC0_PULSE0_VAL
+
+	.word (AT91_BASE_SYS + AT91_SMC_SETUP(0))
+	.word CONFIG_SYS_SMC0_SETUP0_VAL
+
+SMRDATA1:
+	.word (AT91_BASE_SYS + AT91_SDRAMC_MR)
+	.word CONFIG_SYS_SDRC_MR_VAL1
+	.word (AT91_BASE_SYS + AT91_SDRAMC_TR)
+	.word CONFIG_SYS_SDRC_TR_VAL1
+	.word (AT91_BASE_SYS + AT91_SDRAMC_CR)
+	.word CONFIG_SYS_SDRC_CR_VAL
+	.word (AT91_BASE_SYS + AT91_SDRAMC_MDR)
+	.word CONFIG_SYS_SDRC_MDR_VAL
+	.word (AT91_BASE_SYS + AT91_SDRAMC_MR)
+	.word CONFIG_SYS_SDRC_MR_VAL2
+	.word AT91_SDRAM_BASE
+	.word CONFIG_SYS_SDRAM_VAL1
+	.word (AT91_BASE_SYS + AT91_SDRAMC_MR)
+	.word CONFIG_SYS_SDRC_MR_VAL3
+	.word AT91_SDRAM_BASE
+	.word CONFIG_SYS_SDRAM_VAL2
+	.word AT91_SDRAM_BASE
+	.word CONFIG_SYS_SDRAM_VAL3
+	.word AT91_SDRAM_BASE
+	.word CONFIG_SYS_SDRAM_VAL4
+	.word AT91_SDRAM_BASE
+	.word CONFIG_SYS_SDRAM_VAL5
+	.word AT91_SDRAM_BASE
+	.word CONFIG_SYS_SDRAM_VAL6
+	.word AT91_SDRAM_BASE
+	.word CONFIG_SYS_SDRAM_VAL7
+	.word AT91_SDRAM_BASE
+	.word CONFIG_SYS_SDRAM_VAL8
+	.word AT91_SDRAM_BASE
+	.word CONFIG_SYS_SDRAM_VAL9
+	.word (AT91_BASE_SYS + AT91_SDRAMC_MR)
+	.word CONFIG_SYS_SDRC_MR_VAL4
+	.word AT91_SDRAM_BASE
+	.word CONFIG_SYS_SDRAM_VAL10
+	.word (AT91_BASE_SYS + AT91_SDRAMC_MR)
+	.word CONFIG_SYS_SDRC_MR_VAL5
+	.word AT91_SDRAM_BASE
+	.word CONFIG_SYS_SDRAM_VAL11
+	.word (AT91_BASE_SYS + AT91_SDRAMC_TR)
+	.word CONFIG_SYS_SDRC_TR_VAL2
+	.word AT91_SDRAM_BASE
+	.word CONFIG_SYS_SDRAM_VAL12
+	/* User reset enable*/
+	.word (AT91_BASE_SYS + AT91_RSTC_MR)
+	.word CONFIG_SYS_RSTC_RMR_VAL
+#ifdef CONFIG_SYS_MATRIX_MCFG_REMAP
+	/* MATRIX_MCFG - REMAP all masters */
+	.word (AT91_BASE_SYS + AT91_MATRIX_MCFG0)
+	.word 0x1FF
+#endif
+
+SMRDATA2:
+	.word 0
diff --git a/arch/arm/mach-at91/include/mach/at91_st.h b/arch/arm/mach-at91/include/mach/at91_st.h
new file mode 100644
index 0000000..8847173
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91_st.h
@@ -0,0 +1,49 @@
+/*
+ * arch/arm/mach-at91/include/mach/at91_st.h
+ *
+ * Copyright (C) 2005 Ivan Kokshaysky
+ * Copyright (C) SAN People
+ *
+ * System Timer (ST) - System peripherals registers.
+ * Based on AT91RM9200 datasheet revision E.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91_ST_H
+#define AT91_ST_H
+
+#define	AT91_ST_CR		(AT91_ST + 0x00)	/* Control Register */
+#define 	AT91_ST_WDRST		(1 << 0)		/* Watchdog Timer Restart */
+
+#define	AT91_ST_PIMR		(AT91_ST + 0x04)	/* Period Interval Mode Register */
+#define		AT91_ST_PIV		(0xffff <<  0)		/* Period Interval Value */
+
+#define	AT91_ST_WDMR		(AT91_ST + 0x08)	/* Watchdog Mode Register */
+#define		AT91_ST_WDV		(0xffff <<  0)		/* Watchdog Counter Value */
+#define		AT91_ST_RSTEN		(1	<< 16)		/* Reset Enable */
+#define		AT91_ST_EXTEN		(1	<< 17)		/* External Signal Assertion Enable */
+
+#define	AT91_ST_RTMR		(AT91_ST + 0x0c)	/* Real-time Mode Register */
+#define		AT91_ST_RTPRES		(0xffff <<  0)		/* Real-time Prescalar Value */
+
+#define	AT91_ST_SR		(AT91_ST + 0x10)	/* Status Register */
+#define		AT91_ST_PITS		(1 << 0)		/* Period Interval Timer Status */
+#define		AT91_ST_WDOVF		(1 << 1) 		/* Watchdog Overflow */
+#define		AT91_ST_RTTINC		(1 << 2) 		/* Real-time Timer Increment */
+#define		AT91_ST_ALMS		(1 << 3) 		/* Alarm Status */
+
+#define	AT91_ST_IER		(AT91_ST + 0x14)	/* Interrupt Enable Register */
+#define	AT91_ST_IDR		(AT91_ST + 0x18)	/* Interrupt Disable Register */
+#define	AT91_ST_IMR		(AT91_ST + 0x1c)	/* Interrupt Mask Register */
+
+#define	AT91_ST_RTAR		(AT91_ST + 0x20)	/* Real-time Alarm Register */
+#define		AT91_ST_ALMV		(0xfffff << 0)		/* Alarm Value */
+
+#define	AT91_ST_CRTR		(AT91_ST + 0x24)	/* Current Real-time Register */
+#define		AT91_ST_CRTV		(0xfffff << 0)		/* Current Real-Time Value */
+
+#endif
diff --git a/arch/arm/mach-at91/include/mach/at91_tc.h b/arch/arm/mach-at91/include/mach/at91_tc.h
new file mode 100644
index 0000000..5a064b4
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91_tc.h
@@ -0,0 +1,146 @@
+/*
+ * [origin: Linux kernel arch/arm/mach-at91/include/mach/at91_tc.h]
+ *
+ * Copyright (C) SAN People
+ *
+ * Timer/Counter Unit (TC) registers.
+ * Based on AT91RM9200 datasheet revision E.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91_TC_H
+#define AT91_TC_H
+
+#define AT91_TC_BCR		0xc0		/* TC Block Control Register */
+#define		AT91_TC_SYNC		(1 << 0)	/* Synchro Command */
+
+#define AT91_TC_BMR		0xc4		/* TC Block Mode Register */
+#define		AT91_TC_TC0XC0S		(3 << 0)	/* External Clock Signal 0 Selection */
+#define			AT91_TC_TC0XC0S_TCLK0		(0 << 0)
+#define			AT91_TC_TC0XC0S_NONE		(1 << 0)
+#define			AT91_TC_TC0XC0S_TIOA1		(2 << 0)
+#define			AT91_TC_TC0XC0S_TIOA2		(3 << 0)
+#define		AT91_TC_TC1XC1S		(3 << 2)	/* External Clock Signal 1 Selection */
+#define			AT91_TC_TC1XC1S_TCLK1		(0 << 2)
+#define			AT91_TC_TC1XC1S_NONE		(1 << 2)
+#define			AT91_TC_TC1XC1S_TIOA0		(2 << 2)
+#define			AT91_TC_TC1XC1S_TIOA2		(3 << 2)
+#define		AT91_TC_TC2XC2S		(3 << 4)	/* External Clock Signal 2 Selection */
+#define			AT91_TC_TC2XC2S_TCLK2		(0 << 4)
+#define			AT91_TC_TC2XC2S_NONE		(1 << 4)
+#define			AT91_TC_TC2XC2S_TIOA0		(2 << 4)
+#define			AT91_TC_TC2XC2S_TIOA1		(3 << 4)
+
+
+#define AT91_TC_CCR		0x00		/* Channel Control Register */
+#define		AT91_TC_CLKEN		(1 << 0)	/* Counter Clock Enable Command */
+#define		AT91_TC_CLKDIS		(1 << 1)	/* Counter CLock Disable Command */
+#define		AT91_TC_SWTRG		(1 << 2)	/* Software Trigger Command */
+
+#define AT91_TC_CMR		0x04		/* Channel Mode Register */
+#define		AT91_TC_TCCLKS		(7 << 0)	/* Capture/Waveform Mode: Clock Selection */
+#define			AT91_TC_TIMER_CLOCK1		(0 << 0)
+#define			AT91_TC_TIMER_CLOCK2		(1 << 0)
+#define			AT91_TC_TIMER_CLOCK3		(2 << 0)
+#define			AT91_TC_TIMER_CLOCK4		(3 << 0)
+#define			AT91_TC_TIMER_CLOCK5		(4 << 0)
+#define			AT91_TC_XC0			(5 << 0)
+#define			AT91_TC_XC1			(6 << 0)
+#define			AT91_TC_XC2			(7 << 0)
+#define		AT91_TC_CLKI		(1 << 3)	/* Capture/Waveform Mode: Clock Invert */
+#define		AT91_TC_BURST		(3 << 4)	/* Capture/Waveform Mode: Burst Signal Selection */
+#define		AT91_TC_LDBSTOP		(1 << 6)	/* Capture Mode: Counter Clock Stopped with TB Loading */
+#define		AT91_TC_LDBDIS		(1 << 7)	/* Capture Mode: Counter Clock Disable with RB Loading */
+#define		AT91_TC_ETRGEDG		(3 << 8)	/* Capture Mode: External Trigger Edge Selection */
+#define		AT91_TC_ABETRG		(1 << 10)	/* Capture Mode: TIOA or TIOB External Trigger Selection */
+#define		AT91_TC_CPCTRG		(1 << 14)	/* Capture Mode: RC Compare Trigger Enable */
+#define		AT91_TC_WAVE		(1 << 15)	/* Capture/Waveform mode */
+#define		AT91_TC_LDRA		(3 << 16)	/* Capture Mode: RA Loading Selection */
+#define		AT91_TC_LDRB		(3 << 18)	/* Capture Mode: RB Loading Selection */
+
+#define		AT91_TC_CPCSTOP		(1 <<  6)	/* Waveform Mode: Counter Clock Stopped with RC Compare */
+#define		AT91_TC_CPCDIS		(1 <<  7)	/* Waveform Mode: Counter Clock Disable with RC Compare */
+#define		AT91_TC_EEVTEDG		(3 <<  8)	/* Waveform Mode: External Event Edge Selection */
+#define			AT91_TC_EEVTEDG_NONE		(0 << 8)
+#define			AT91_TC_EEVTEDG_RISING		(1 << 8)
+#define			AT91_TC_EEVTEDG_FALLING		(2 << 8)
+#define			AT91_TC_EEVTEDG_BOTH		(3 << 8)
+#define		AT91_TC_EEVT		(3 << 10)	/* Waveform Mode: External Event Selection */
+#define			AT91_TC_EEVT_TIOB		(0 << 10)
+#define			AT91_TC_EEVT_XC0		(1 << 10)
+#define			AT91_TC_EEVT_XC1		(2 << 10)
+#define			AT91_TC_EEVT_XC2		(3 << 10)
+#define		AT91_TC_ENETRG		(1 << 12)	/* Waveform Mode: External Event Trigger Enable */
+#define		AT91_TC_WAVESEL		(3 << 13)	/* Waveform Mode: Waveform Selection */
+#define			AT91_TC_WAVESEL_UP		(0 << 13)
+#define			AT91_TC_WAVESEL_UP_AUTO		(2 << 13)
+#define			AT91_TC_WAVESEL_UPDOWN		(1 << 13)
+#define			AT91_TC_WAVESEL_UPDOWN_AUTO	(3 << 13)
+#define		AT91_TC_ACPA		(3 << 16)	/* Waveform Mode: RA Compare Effect on TIOA */
+#define			AT91_TC_ACPA_NONE		(0 << 16)
+#define			AT91_TC_ACPA_SET		(1 << 16)
+#define			AT91_TC_ACPA_CLEAR		(2 << 16)
+#define			AT91_TC_ACPA_TOGGLE		(3 << 16)
+#define		AT91_TC_ACPC		(3 << 18)	/* Waveform Mode: RC Compre Effect on TIOA */
+#define			AT91_TC_ACPC_NONE		(0 << 18)
+#define			AT91_TC_ACPC_SET		(1 << 18)
+#define			AT91_TC_ACPC_CLEAR		(2 << 18)
+#define			AT91_TC_ACPC_TOGGLE		(3 << 18)
+#define		AT91_TC_AEEVT		(3 << 20)	/* Waveform Mode: External Event Effect on TIOA */
+#define			AT91_TC_AEEVT_NONE		(0 << 20)
+#define			AT91_TC_AEEVT_SET		(1 << 20)
+#define			AT91_TC_AEEVT_CLEAR		(2 << 20)
+#define			AT91_TC_AEEVT_TOGGLE		(3 << 20)
+#define		AT91_TC_ASWTRG		(3 << 22)	/* Waveform Mode: Software Trigger Effect on TIOA */
+#define			AT91_TC_ASWTRG_NONE		(0 << 22)
+#define			AT91_TC_ASWTRG_SET		(1 << 22)
+#define			AT91_TC_ASWTRG_CLEAR		(2 << 22)
+#define			AT91_TC_ASWTRG_TOGGLE		(3 << 22)
+#define		AT91_TC_BCPB		(3 << 24)	/* Waveform Mode: RB Compare Effect on TIOB */
+#define			AT91_TC_BCPB_NONE		(0 << 24)
+#define			AT91_TC_BCPB_SET		(1 << 24)
+#define			AT91_TC_BCPB_CLEAR		(2 << 24)
+#define			AT91_TC_BCPB_TOGGLE		(3 << 24)
+#define		AT91_TC_BCPC		(3 << 26)	/* Waveform Mode: RC Compare Effect on TIOB */
+#define			AT91_TC_BCPC_NONE		(0 << 26)
+#define			AT91_TC_BCPC_SET		(1 << 26)
+#define			AT91_TC_BCPC_CLEAR		(2 << 26)
+#define			AT91_TC_BCPC_TOGGLE		(3 << 26)
+#define		AT91_TC_BEEVT		(3 << 28)	/* Waveform Mode: External Event Effect on TIOB */
+#define			AT91_TC_BEEVT_NONE		(0 << 28)
+#define			AT91_TC_BEEVT_SET		(1 << 28)
+#define			AT91_TC_BEEVT_CLEAR		(2 << 28)
+#define			AT91_TC_BEEVT_TOGGLE		(3 << 28)
+#define		AT91_TC_BSWTRG		(3 << 30)	/* Waveform Mode: Software Trigger Effect on TIOB */
+#define			AT91_TC_BSWTRG_NONE		(0 << 30)
+#define			AT91_TC_BSWTRG_SET		(1 << 30)
+#define			AT91_TC_BSWTRG_CLEAR		(2 << 30)
+#define			AT91_TC_BSWTRG_TOGGLE		(3 << 30)
+
+#define AT91_TC_CV		0x10		/* Counter Value */
+#define AT91_TC_RA		0x14		/* Register A */
+#define AT91_TC_RB		0x18		/* Register B */
+#define AT91_TC_RC		0x1c		/* Register C */
+
+#define AT91_TC_SR		0x20		/* Status Register */
+#define		AT91_TC_COVFS		(1 <<  0)	/* Counter Overflow Status */
+#define		AT91_TC_LOVRS		(1 <<  1)	/* Load Overrun Status */
+#define		AT91_TC_CPAS		(1 <<  2)	/* RA Compare Status */
+#define		AT91_TC_CPBS		(1 <<  3)	/* RB Compare Status */
+#define		AT91_TC_CPCS		(1 <<  4)	/* RC Compare Status */
+#define		AT91_TC_LDRAS		(1 <<  5)	/* RA Loading Status */
+#define		AT91_TC_LDRBS		(1 <<  6)	/* RB Loading Status */
+#define		AT91_TC_ETRGS		(1 <<  7)	/* External Trigger Status */
+#define		AT91_TC_CLKSTA		(1 << 16)	/* Clock Enabling Status */
+#define		AT91_TC_MTIOA		(1 << 17)	/* TIOA Mirror */
+#define		AT91_TC_MTIOB		(1 << 18)	/* TIOB Mirror */
+
+#define AT91_TC_IER		0x24		/* Interrupt Enable Register */
+#define AT91_TC_IDR		0x28		/* Interrupt Disable Register */
+#define AT91_TC_IMR		0x2c		/* Interrupt Mask Register */
+
+#endif
diff --git a/arch/arm/mach-at91/include/mach/at91rm9200.h b/arch/arm/mach-at91/include/mach/at91rm9200.h
new file mode 100644
index 0000000..985977f
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91rm9200.h
@@ -0,0 +1,127 @@
+/*
+ * [origin: Linux kernel arch/arm/mach-at91/include/mach/at91rm9200.h]
+ *
+ * Copyright (C) 2005 Ivan Kokshaysky
+ * Copyright (C) SAN People
+ *
+ * Common definitions.
+ * Based on AT91RM9200 datasheet revision E.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91RM9200_H
+#define AT91RM9200_H
+
+/*
+ * Peripheral identifiers/interrupts.
+ */
+#define AT91_ID_FIQ		0	/* Advanced Interrupt Controller (FIQ) */
+#define AT91_ID_SYS		1	/* System Peripheral */
+#define AT91RM9200_ID_PIOA	2	/* Parallel IO Controller A */
+#define AT91RM9200_ID_PIOB	3	/* Parallel IO Controller B */
+#define AT91RM9200_ID_PIOC	4	/* Parallel IO Controller C */
+#define AT91RM9200_ID_PIOD	5	/* Parallel IO Controller D */
+#define AT91RM9200_ID_US0	6	/* USART 0 */
+#define AT91RM9200_ID_US1	7	/* USART 1 */
+#define AT91RM9200_ID_US2	8	/* USART 2 */
+#define AT91RM9200_ID_US3	9	/* USART 3 */
+#define AT91RM9200_ID_MCI	10	/* Multimedia Card Interface */
+#define AT91RM9200_ID_UDP	11	/* USB Device Port */
+#define AT91RM9200_ID_TWI	12	/* Two-Wire Interface */
+#define AT91RM9200_ID_SPI	13	/* Serial Peripheral Interface */
+#define AT91RM9200_ID_SSC0	14	/* Serial Synchronous Controller 0 */
+#define AT91RM9200_ID_SSC1	15	/* Serial Synchronous Controller 1 */
+#define AT91RM9200_ID_SSC2	16	/* Serial Synchronous Controller 2 */
+#define AT91RM9200_ID_TC0	17	/* Timer Counter 0 */
+#define AT91RM9200_ID_TC1	18	/* Timer Counter 1 */
+#define AT91RM9200_ID_TC2	19	/* Timer Counter 2 */
+#define AT91RM9200_ID_TC3	20	/* Timer Counter 3 */
+#define AT91RM9200_ID_TC4	21	/* Timer Counter 4 */
+#define AT91RM9200_ID_TC5	22	/* Timer Counter 5 */
+#define AT91RM9200_ID_UHP	23	/* USB Host port */
+#define AT91RM9200_ID_EMAC	24	/* Ethernet MAC */
+#define AT91RM9200_ID_IRQ0	25	/* Advanced Interrupt Controller (IRQ0) */
+#define AT91RM9200_ID_IRQ1	26	/* Advanced Interrupt Controller (IRQ1) */
+#define AT91RM9200_ID_IRQ2	27	/* Advanced Interrupt Controller (IRQ2) */
+#define AT91RM9200_ID_IRQ3	28	/* Advanced Interrupt Controller (IRQ3) */
+#define AT91RM9200_ID_IRQ4	29	/* Advanced Interrupt Controller (IRQ4) */
+#define AT91RM9200_ID_IRQ5	30	/* Advanced Interrupt Controller (IRQ5) */
+#define AT91RM9200_ID_IRQ6	31	/* Advanced Interrupt Controller (IRQ6) */
+
+
+/*
+ * Peripheral physical base addresses.
+ */
+#define AT91RM9200_BASE_TCB0	0xfffa0000
+#define AT91RM9200_BASE_TC0	0xfffa0000
+#define AT91RM9200_BASE_TC1	0xfffa0040
+#define AT91RM9200_BASE_TC2	0xfffa0080
+#define AT91RM9200_BASE_TCB1	0xfffa4000
+#define AT91RM9200_BASE_TC3	0xfffa4000
+#define AT91RM9200_BASE_TC4	0xfffa4040
+#define AT91RM9200_BASE_TC5	0xfffa4080
+#define AT91RM9200_BASE_UDP	0xfffb0000
+#define AT91RM9200_BASE_MCI	0xfffb4000
+#define AT91RM9200_BASE_TWI	0xfffb8000
+#define AT91RM9200_BASE_EMAC	0xfffbc000
+#define AT91RM9200_BASE_US0	0xfffc0000
+#define AT91RM9200_BASE_US1	0xfffc4000
+#define AT91RM9200_BASE_US2	0xfffc8000
+#define AT91RM9200_BASE_US3	0xfffcc000
+#define AT91RM9200_BASE_SSC0	0xfffd0000
+#define AT91RM9200_BASE_SSC1	0xfffd4000
+#define AT91RM9200_BASE_SSC2	0xfffd8000
+#define AT91RM9200_BASE_SPI	0xfffe0000
+#define AT91_BASE_SYS		0xfffff000
+
+
+/*
+ * System Peripherals (offset from AT91_BASE_SYS)
+ */
+#define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)	/* Advanced Interrupt Controller */
+#define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)	/* Debug Unit */
+#define AT91_PIOA	(0xfffff400 - AT91_BASE_SYS)	/* PIO Controller A */
+#define AT91_PIOB	(0xfffff600 - AT91_BASE_SYS)	/* PIO Controller B */
+#define AT91_PIOC	(0xfffff800 - AT91_BASE_SYS)	/* PIO Controller C */
+#define AT91_PIOD	(0xfffffa00 - AT91_BASE_SYS)	/* PIO Controller D */
+#define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)	/* Power Management Controller */
+#define AT91_ST		(0xfffffd00 - AT91_BASE_SYS)	/* System Timer */
+#define AT91_RTC	(0xfffffe00 - AT91_BASE_SYS)	/* Real-Time Clock */
+#define AT91_MC		(0xffffff00 - AT91_BASE_SYS)	/* Memory Controllers */
+
+#define AT91_USART0	AT91RM9200_BASE_US0
+#define AT91_USART1	AT91RM9200_BASE_US1
+#define AT91_USART2	AT91RM9200_BASE_US2
+#define AT91_USART3	AT91RM9200_BASE_US3
+
+#define AT91_BASE_SPI	AT91RM9200_BASE_SPI
+#define AT91_BASE_TWI	AT91RM9200_BASE_TWI
+#define AT91_ID_UHP	AT91RM9200_ID_UHP
+#define AT91_PMC_UHP	AT91RM9200_PMC_UHP
+#define AT91_TC		(AT91RM9200_BASE_TC0 - AT91_BASE_SYS)
+
+#define AT91_MATRIX	0	/* not supported */
+
+/*
+ * Internal Memory.
+ */
+#define AT91RM9200_ROM_BASE	0x00100000	/* Internal ROM base address */
+#define AT91RM9200_ROM_SIZE	SZ_128K		/* Internal ROM size (128Kb) */
+
+#define AT91RM9200_SRAM_BASE	0x00200000	/* Internal SRAM base address */
+#define AT91RM9200_SRAM_SIZE	SZ_16K		/* Internal SRAM size (16Kb) */
+
+#define AT91RM9200_UHP_BASE	0x00300000	/* USB Host controller */
+
+#define AT91_VA_BASE_EMAC	AT91RM9200_BASE_EMAC
+
+/*
+ * Cpu Name
+ */
+#define AT91_CPU_NAME	"AT91RM9200"
+
+#endif
diff --git a/arch/arm/mach-at91/include/mach/at91rm9200_emac.h b/arch/arm/mach-at91/include/mach/at91rm9200_emac.h
new file mode 100644
index 0000000..7424452
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91rm9200_emac.h
@@ -0,0 +1,138 @@
+/*
+ * [origin: arch/arm/mach-at91/include/mach/at91rm9200_emac.h]
+ *
+ * Copyright (C) 2005 Ivan Kokshaysky
+ * Copyright (C) SAN People
+ *
+ * Ethernet MAC registers.
+ * Based on AT91RM9200 datasheet revision E.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91RM9200_EMAC_H
+#define AT91RM9200_EMAC_H
+
+#define	AT91_EMAC_CTL		0x00	/* Control Register */
+#define		AT91_EMAC_LB		(1 <<  0)	/* Loopback */
+#define		AT91_EMAC_LBL		(1 <<  1)	/* Loopback Local */
+#define		AT91_EMAC_RE		(1 <<  2)	/* Receive Enable */
+#define		AT91_EMAC_TE		(1 <<  3)	/* Transmit Enable */
+#define		AT91_EMAC_MPE		(1 <<  4)	/* Management Port Enable */
+#define		AT91_EMAC_CSR		(1 <<  5)	/* Clear Statistics Registers */
+#define		AT91_EMAC_INCSTAT	(1 <<  6)	/* Increment Statistics Registers */
+#define		AT91_EMAC_WES		(1 <<  7)	/* Write Enable for Statistics Registers */
+#define		AT91_EMAC_BP		(1 <<  8)	/* Back Pressure */
+
+#define	AT91_EMAC_CFG		0x04	/* Configuration Register */
+#define		AT91_EMAC_SPD		(1 <<  0)	/* Speed */
+#define		AT91_EMAC_FD		(1 <<  1)	/* Full Duplex */
+#define		AT91_EMAC_BR		(1 <<  2)	/* Bit Rate */
+#define		AT91_EMAC_CAF		(1 <<  4)	/* Copy All Frames */
+#define		AT91_EMAC_NBC		(1 <<  5)	/* No Broadcast */
+#define		AT91_EMAC_MTI		(1 <<  6)	/* Multicast Hash Enable */
+#define		AT91_EMAC_UNI		(1 <<  7)	/* Unicast Hash Enable */
+#define		AT91_EMAC_BIG		(1 <<  8)	/* Receive 1522 Bytes */
+#define		AT91_EMAC_EAE		(1 <<  9)	/* External Address Match Enable */
+#define		AT91_EMAC_CLK		(3 << 10)	/* MDC Clock Divisor */
+#define		AT91_EMAC_CLK_DIV8		(0 << 10)
+#define		AT91_EMAC_CLK_DIV16		(1 << 10)
+#define		AT91_EMAC_CLK_DIV32		(2 << 10)
+#define		AT91_EMAC_CLK_DIV64		(3 << 10)
+#define		AT91_EMAC_RTY		(1 << 12)	/* Retry Test */
+#define		AT91_EMAC_RMII		(1 << 13)	/* Reduce MII (RMII) */
+
+#define	AT91_EMAC_SR		0x08	/* Status Register */
+#define		AT91_EMAC_SR_LINK	(1 <<  0)	/* Link */
+#define		AT91_EMAC_SR_MDIO	(1 <<  1)	/* MDIO pin */
+#define		AT91_EMAC_SR_IDLE	(1 <<  2)	/* PHY idle */
+
+#define	AT91_EMAC_TAR		0x0c	/* Transmit Address Register */
+
+#define	AT91_EMAC_TCR		0x10	/* Transmit Control Register */
+#define		AT91_EMAC_LEN		(0x7ff << 0)	/* Transmit Frame Length */
+#define		AT91_EMAC_NCRC		(1     << 15)	/* No CRC */
+
+#define	AT91_EMAC_TSR		0x14	/* Transmit Status Register */
+#define		AT91_EMAC_TSR_OVR	(1 <<  0)	/* Transmit Buffer Overrun */
+#define		AT91_EMAC_TSR_COL	(1 <<  1)	/* Collision Occurred */
+#define		AT91_EMAC_TSR_RLE	(1 <<  2)	/* Retry Limit Exceeded */
+#define		AT91_EMAC_TSR_IDLE	(1 <<  3)	/* Transmitter Idle */
+#define		AT91_EMAC_TSR_BNQ	(1 <<  4)	/* Transmit Buffer not Queued */
+#define		AT91_EMAC_TSR_COMP	(1 <<  5)	/* Transmit Complete */
+#define		AT91_EMAC_TSR_UND	(1 <<  6)	/* Transmit Underrun */
+
+#define	AT91_EMAC_RBQP		0x18	/* Receive Buffer Queue Pointer */
+
+#define	AT91_EMAC_RSR		0x20	/* Receive Status Register */
+#define		AT91_EMAC_RSR_BNA	(1 <<  0)	/* Buffer Not Available */
+#define		AT91_EMAC_RSR_REC	(1 <<  1)	/* Frame Received */
+#define		AT91_EMAC_RSR_OVR	(1 <<  2)	/* RX Overrun */
+
+#define	AT91_EMAC_ISR		0x24	/* Interrupt Status Register */
+#define		AT91_EMAC_DONE		(1 <<  0)	/* Management Done */
+#define		AT91_EMAC_RCOM		(1 <<  1)	/* Receive Complete */
+#define		AT91_EMAC_RBNA		(1 <<  2)	/* Receive Buffer Not Available */
+#define		AT91_EMAC_TOVR		(1 <<  3)	/* Transmit Buffer Overrun */
+#define		AT91_EMAC_TUND		(1 <<  4)	/* Transmit Buffer Underrun */
+#define		AT91_EMAC_RTRY		(1 <<  5)	/* Retry Limit */
+#define		AT91_EMAC_TBRE		(1 <<  6)	/* Transmit Buffer Register Empty */
+#define		AT91_EMAC_TCOM		(1 <<  7)	/* Transmit Complete */
+#define		AT91_EMAC_TIDLE		(1 <<  8)	/* Transmit Idle */
+#define		AT91_EMAC_LINK		(1 <<  9)	/* Link */
+#define		AT91_EMAC_ROVR		(1 << 10)	/* RX Overrun */
+#define		AT91_EMAC_ABT		(1 << 11)	/* Abort */
+
+#define	AT91_EMAC_IER		0x28	/* Interrupt Enable Register */
+#define	AT91_EMAC_IDR		0x2c	/* Interrupt Disable Register */
+#define	AT91_EMAC_IMR		0x30	/* Interrupt Mask Register */
+
+#define	AT91_EMAC_MAN		0x34	/* PHY Maintenance Register */
+#define		AT91_EMAC_DATA		(0xffff << 0)	/* MDIO Data */
+#define		AT91_EMAC_REGA		(0x1f	<< 18)	/* MDIO Register */
+#define		AT91_EMAC_PHYA		(0x1f	<< 23)	/* MDIO PHY Address */
+#define		AT91_EMAC_RW		(3	<< 28)	/* Read/Write operation */
+#define			AT91_EMAC_RW_W		(1 << 28)
+#define			AT91_EMAC_RW_R		(2 << 28)
+#define		AT91_EMAC_MAN_802_3	0x40020000	/* IEEE 802.3 value */
+
+/*
+ * Statistics Registers.
+ */
+#define AT91_EMAC_FRA		0x40	/* Frames Transmitted OK */
+#define AT91_EMAC_SCOL		0x44	/* Single Collision Frame */
+#define AT91_EMAC_MCOL		0x48	/* Multiple Collision Frame */
+#define AT91_EMAC_OK		0x4c	/* Frames Received OK */
+#define AT91_EMAC_SEQE		0x50	/* Frame Check Sequence Error */
+#define AT91_EMAC_ALE		0x54	/* Alignmemt Error */
+#define AT91_EMAC_DTE		0x58	/* Deffered Transmission Frame */
+#define AT91_EMAC_LCOL		0x5c	/* Late Collision */
+#define AT91_EMAC_ECOL		0x60	/* Excessive Collision */
+#define AT91_EMAC_TUE		0x64	/* Transmit Underrun Error */
+#define AT91_EMAC_CSE		0x68	/* Carrier Sense Error */
+#define AT91_EMAC_DRFC		0x6c	/* Discard RX Frame */
+#define AT91_EMAC_ROV		0x70	/* Receive Overrun */
+#define AT91_EMAC_CDE		0x74	/* Code Error */
+#define AT91_EMAC_ELR		0x78	/* Excessive Length Error */
+#define AT91_EMAC_RJB		0x7c	/* Receive Jabber */
+#define AT91_EMAC_USF		0x80	/* Undersize Frame */
+#define AT91_EMAC_SQEE		0x84	/* SQE Test Error */
+
+/*
+ * Address Registers.
+ */
+#define AT91_EMAC_HSL		0x90	/* Hash Address Low [31:0] */
+#define AT91_EMAC_HSH		0x94	/* Hash Address High [63:32] */
+#define AT91_EMAC_SA1L		0x98	/* Specific Address 1 Low, bytes 0-3 */
+#define AT91_EMAC_SA1H		0x9c	/* Specific Address 1 High, bytes 4-5 */
+#define AT91_EMAC_SA2L		0xa0	/* Specific Address 2 Low, bytes 0-3 */
+#define AT91_EMAC_SA2H		0xa4	/* Specific Address 2 High, bytes 4-5 */
+#define AT91_EMAC_SA3L		0xa8	/* Specific Address 3 Low, bytes 0-3 */
+#define AT91_EMAC_SA3H		0xac	/* Specific Address 3 High, bytes 4-5 */
+#define AT91_EMAC_SA4L		0xb0	/* Specific Address 4 Low, bytes 0-3 */
+#define AT91_EMAC_SA4H		0xb4	/* Specific Address 4 High, bytes 4-5 */
+
+#endif
diff --git a/arch/arm/mach-at91/include/mach/at91rm9200_mc.h b/arch/arm/mach-at91/include/mach/at91rm9200_mc.h
new file mode 100644
index 0000000..d34e4ed
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91rm9200_mc.h
@@ -0,0 +1,160 @@
+/*
+ * arch/arm/mach-at91/include/mach/at91rm9200_mc.h
+ *
+ * Copyright (C) 2005 Ivan Kokshaysky
+ * Copyright (C) SAN People
+ *
+ * Memory Controllers (MC, EBI, SMC, SDRAMC, BFC) - System peripherals registers.
+ * Based on AT91RM9200 datasheet revision E.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91RM9200_MC_H
+#define AT91RM9200_MC_H
+
+/* Memory Controller */
+#define AT91_MC_RCR		(AT91_MC + 0x00)	/* MC Remap Control Register */
+#define		AT91_MC_RCB		(1 <<  0)		/* Remap Command Bit */
+
+#define AT91_MC_ASR		(AT91_MC + 0x04)	/* MC Abort Status Register */
+#define		AT91_MC_UNADD		(1 <<  0)		/* Undefined Address Abort Status */
+#define		AT91_MC_MISADD		(1 <<  1)		/* Misaligned Address Abort Status */
+#define		AT91_MC_ABTSZ		(3 <<  8)		/* Abort Size Status */
+#define			AT91_MC_ABTSZ_BYTE		(0 << 8)
+#define			AT91_MC_ABTSZ_HALFWORD		(1 << 8)
+#define			AT91_MC_ABTSZ_WORD		(2 << 8)
+#define		AT91_MC_ABTTYP		(3 << 10)		/* Abort Type Status */
+#define			AT91_MC_ABTTYP_DATAREAD		(0 << 10)
+#define			AT91_MC_ABTTYP_DATAWRITE	(1 << 10)
+#define			AT91_MC_ABTTYP_FETCH		(2 << 10)
+#define		AT91_MC_MST0		(1 << 16)		/* ARM920T Abort Source */
+#define		AT91_MC_MST1		(1 << 17)		/* PDC Abort Source */
+#define		AT91_MC_MST2		(1 << 18)		/* UHP Abort Source */
+#define		AT91_MC_MST3		(1 << 19)		/* EMAC Abort Source */
+#define		AT91_MC_SVMST0		(1 << 24)		/* Saved ARM920T Abort Source */
+#define		AT91_MC_SVMST1		(1 << 25)		/* Saved PDC Abort Source */
+#define		AT91_MC_SVMST2		(1 << 26)		/* Saved UHP Abort Source */
+#define		AT91_MC_SVMST3		(1 << 27)		/* Saved EMAC Abort Source */
+
+#define AT91_MC_AASR		(AT91_MC + 0x08)	/* MC Abort Address Status Register */
+
+#define AT91_MC_MPR		(AT91_MC + 0x0c)	/* MC Master Priority Register */
+#define		AT91_MPR_MSTP0		(7 <<  0)		/* ARM920T Priority */
+#define		AT91_MPR_MSTP1		(7 <<  4)		/* PDC Priority */
+#define		AT91_MPR_MSTP2		(7 <<  8)		/* UHP Priority */
+#define		AT91_MPR_MSTP3		(7 << 12)		/* EMAC Priority */
+
+/* External Bus Interface (EBI) registers */
+#define AT91_EBI_CSA		(AT91_MC + 0x60)	/* Chip Select Assignment Register */
+#define		AT91_EBI_CS0A		(1 << 0)		/* Chip Select 0 Assignment */
+#define			AT91_EBI_CS0A_SMC		(0 << 0)
+#define			AT91_EBI_CS0A_BFC		(1 << 0)
+#define		AT91_EBI_CS1A		(1 << 1)		/* Chip Select 1 Assignment */
+#define			AT91_EBI_CS1A_SMC		(0 << 1)
+#define			AT91_EBI_CS1A_SDRAMC		(1 << 1)
+#define		AT91_EBI_CS3A		(1 << 3)		/* Chip Select 2 Assignment */
+#define			AT91_EBI_CS3A_SMC		(0 << 3)
+#define			AT91_EBI_CS3A_SMC_SMARTMEDIA	(1 << 3)
+#define		AT91_EBI_CS4A		(1 << 4)		/* Chip Select 3 Assignment */
+#define			AT91_EBI_CS4A_SMC		(0 << 4)
+#define			AT91_EBI_CS4A_SMC_COMPACTFLASH	(1 << 4)
+#define AT91_EBI_CFGR		(AT91_MC + 0x64)	/* Configuration Register */
+#define		AT91_EBI_DBPUC		(1 << 0)		/* Data Bus Pull-Up Configuration */
+
+/* Static Memory Controller (SMC) registers */
+#define	AT91_SMC_CSR(n)		(AT91_MC + 0x70 + ((n) * 4))/* SMC Chip Select Register */
+#define		AT91_SMC_NWS		(0x7f <<  0)		/* Number of Wait States */
+#define			AT91_SMC_NWS_(x)	((x) << 0)
+#define		AT91_SMC_WSEN		(1    <<  7)		/* Wait State Enable */
+#define		AT91_SMC_TDF		(0xf  <<  8)		/* Data Float Time */
+#define			AT91_SMC_TDF_(x)	((x) << 8)
+#define		AT91_SMC_BAT		(1    << 12)		/* Byte Access Type */
+#define		AT91_SMC_DBW		(3    << 13)		/* Data Bus Width */
+#define			AT91_SMC_DBW_16		(1 << 13)
+#define			AT91_SMC_DBW_8		(2 << 13)
+#define		AT91_SMC_DPR		(1 << 15)		/* Data Read Protocol */
+#define		AT91_SMC_ACSS		(3 << 16)		/* Address to Chip Select Setup */
+#define			AT91_SMC_ACSS_STD	(0 << 16)
+#define			AT91_SMC_ACSS_1		(1 << 16)
+#define			AT91_SMC_ACSS_2		(2 << 16)
+#define			AT91_SMC_ACSS_3		(3 << 16)
+#define		AT91_SMC_RWSETUP	(7 << 24)		/* Read & Write Signal Time Setup */
+#define			AT91_SMC_RWSETUP_(x)	((x) << 24)
+#define		AT91_SMC_RWHOLD		(7 << 28)		/* Read & Write Signal Hold Time */
+#define			AT91_SMC_RWHOLD_(x)	((x) << 28)
+
+/* SDRAM Controller registers */
+#define AT91_SDRAMC_MR		(AT91_MC + 0x90)	/* Mode Register */
+#define		AT91_SDRAMC_MODE	(0xf << 0)		/* Command Mode */
+#define			AT91_SDRAMC_MODE_NORMAL		(0 << 0)
+#define			AT91_SDRAMC_MODE_NOP		(1 << 0)
+#define			AT91_SDRAMC_MODE_PRECHARGE	(2 << 0)
+#define			AT91_SDRAMC_MODE_LMR		(3 << 0)
+#define			AT91_SDRAMC_MODE_REFRESH	(4 << 0)
+#define		AT91_SDRAMC_DBW		(1   << 4)		/* Data Bus Width */
+#define			AT91_SDRAMC_DBW_32	(0 << 4)
+#define			AT91_SDRAMC_DBW_16	(1 << 4)
+
+#define AT91_SDRAMC_TR		(AT91_MC + 0x94)	/* Refresh Timer Register */
+#define		AT91_SDRAMC_COUNT	(0xfff << 0)		/* Refresh Timer Count */
+
+#define AT91_SDRAMC_CR		(AT91_MC + 0x98)	/* Configuration Register */
+#define		AT91_SDRAMC_NC		(3   <<  0)		/* Number of Column Bits */
+#define			AT91_SDRAMC_NC_8	(0 << 0)
+#define			AT91_SDRAMC_NC_9	(1 << 0)
+#define			AT91_SDRAMC_NC_10	(2 << 0)
+#define			AT91_SDRAMC_NC_11	(3 << 0)
+#define		AT91_SDRAMC_NR		(3   <<  2)		/* Number of Row Bits */
+#define			AT91_SDRAMC_NR_11	(0 << 2)
+#define			AT91_SDRAMC_NR_12	(1 << 2)
+#define			AT91_SDRAMC_NR_13	(2 << 2)
+#define		AT91_SDRAMC_NB		(1   <<  4)		/* Number of Banks */
+#define			AT91_SDRAMC_NB_2	(0 << 4)
+#define			AT91_SDRAMC_NB_4	(1 << 4)
+#define		AT91_SDRAMC_CAS		(3   <<  5)		/* CAS Latency */
+#define			AT91_SDRAMC_CAS_2	(2 << 5)
+#define		AT91_SDRAMC_TWR		(0xf <<  7)		/* Write Recovery Delay */
+#define		AT91_SDRAMC_TRC		(0xf << 11)		/* Row Cycle Delay */
+#define		AT91_SDRAMC_TRP		(0xf << 15)		/* Row Precharge Delay */
+#define		AT91_SDRAMC_TRCD	(0xf << 19)		/* Row to Column Delay */
+#define		AT91_SDRAMC_TRAS	(0xf << 23)		/* Active to Precharge Delay */
+#define		AT91_SDRAMC_TXSR	(0xf << 27)		/* Exit Self Refresh to Active Delay */
+
+#define AT91_SDRAMC_SRR		(AT91_MC + 0x9c)	/* Self Refresh Register */
+#define AT91_SDRAMC_LPR		(AT91_MC + 0xa0)	/* Low Power Register */
+#define AT91_SDRAMC_IER		(AT91_MC + 0xa4)	/* Interrupt Enable Register */
+#define AT91_SDRAMC_IDR		(AT91_MC + 0xa8)	/* Interrupt Disable Register */
+#define AT91_SDRAMC_IMR		(AT91_MC + 0xac)	/* Interrupt Mask Register */
+#define AT91_SDRAMC_ISR		(AT91_MC + 0xb0)	/* Interrupt Status Register */
+
+/* Burst Flash Controller register */
+#define AT91_BFC_MR		(AT91_MC + 0xc0)	/* Mode Register */
+#define		AT91_BFC_BFCOM		(3   <<  0)		/* Burst Flash Controller Operating Mode */
+#define			AT91_BFC_BFCOM_DISABLED	(0 << 0)
+#define			AT91_BFC_BFCOM_ASYNC	(1 << 0)
+#define			AT91_BFC_BFCOM_BURST	(2 << 0)
+#define		AT91_BFC_BFCC		(3   <<  2)		/* Burst Flash Controller Clock */
+#define			AT91_BFC_BFCC_MCK	(1 << 2)
+#define			AT91_BFC_BFCC_DIV2	(2 << 2)
+#define			AT91_BFC_BFCC_DIV4	(3 << 2)
+#define		AT91_BFC_AVL		(0xf <<  4)		/* Address Valid Latency */
+#define		AT91_BFC_PAGES		(7   <<  8)		/* Page Size */
+#define			AT91_BFC_PAGES_NO_PAGE	(0 << 8)
+#define			AT91_BFC_PAGES_16	(1 << 8)
+#define			AT91_BFC_PAGES_32	(2 << 8)
+#define			AT91_BFC_PAGES_64	(3 << 8)
+#define			AT91_BFC_PAGES_128	(4 << 8)
+#define			AT91_BFC_PAGES_256	(5 << 8)
+#define			AT91_BFC_PAGES_512	(6 << 8)
+#define			AT91_BFC_PAGES_1024	(7 << 8)
+#define		AT91_BFC_OEL		(3   << 12)		/* Output Enable Latency */
+#define		AT91_BFC_BAAEN		(1   << 16)		/* Burst Address Advance Enable */
+#define		AT91_BFC_BFOEH		(1   << 17)		/* Burst Flash Output Enable Handling */
+#define		AT91_BFC_MUXEN		(1   << 18)		/* Multiplexed Bus Enable */
+#define		AT91_BFC_RDYEN		(1   << 19)		/* Ready Enable Mode */
+
+#endif
diff --git a/arch/arm/mach-at91/lowlevel_init.S b/arch/arm/mach-at91/lowlevel_init.S
deleted file mode 100644
index 805b201..0000000
--- a/arch/arm/mach-at91/lowlevel_init.S
+++ /dev/null
@@ -1,278 +0,0 @@
-/*
- * Memory Setup stuff - taken from blob memsetup.S
- *
- * Copyright (C) 1999 2000 2001 Erik Mouw (J.A.K.Mouw@its.tudelft.nl) and
- *		       Jan-Derk Bakker (J.D.Bakker@its.tudelft.nl)
- *
- * Copyright (C) 2008 Ronetix Ilko Iliev (www.ronetix.at)
- * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <config.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_pio.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91_wdt.h>
-#include <mach/at91sam9_matrix.h>
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9_smc.h>
-
-_TEXT_BASE:
-	.word	TEXT_BASE
-
-.globl board_init_lowlevel
-.type board_init_lowlevel,function
-board_init_lowlevel:
-
-	mov	r5, pc		/* r5 = POS1 + 4 current */
-POS1:
-	ldr	r0, =POS1	/* r0 = POS1 compile */
-	ldr	r2, _TEXT_BASE
-	sub	r0, r0, r2	/* r0 = POS1-_TEXT_BASE (POS1 relative) */
-	sub	r5, r5, r0	/* r0 = TEXT_BASE-1 */
-	sub	r5, r5, #4	/* r1 = text base - current */
-
-	/* memory control configuration 1 */
-	ldr	r0, =SMRDATA
-	ldr	r2, =SMRDATA1
-	ldr	r1, _TEXT_BASE
-	sub	r0, r0, r1
-	sub	r2, r2, r1
-	add	r0, r0, r5
-	add	r2, r2, r5
-0:
-	/* the address */
-	ldr	r1, [r0], #4
-	/* the value */
-	ldr	r3, [r0], #4
-	str	r3, [r1]
-	cmp	r2, r0
-	bne	0b
-
-/* ----------------------------------------------------------------------------
- * PMC Init Step 1.
- * ----------------------------------------------------------------------------
- * - Check if the PLL is already initialized
- * ----------------------------------------------------------------------------
- */
-	ldr	r1, =(AT91_BASE_SYS + AT91_PMC_MCKR)
-	ldr	r0, [r1]
-	and	r0, r0, #3
-	cmp	r0, #0
-	bne	PLL_setup_end
-
-/* ---------------------------------------------------------------------------
- * - Enable the Main Oscillator
- * ---------------------------------------------------------------------------
- */
-	ldr	r1, =(AT91_BASE_SYS + AT91_CKGR_MOR)
-	ldr	r2, =(AT91_BASE_SYS + AT91_PMC_SR)
-	/* Main oscillator Enable register PMC_MOR: */
-	ldr	r0, =CONFIG_SYS_MOR_VAL
-	str	r0, [r1]
-
-	/* Reading the PMC Status to detect when the Main Oscillator is enabled */
-	mov	r4, #AT91_PMC_MOSCS
-MOSCS_Loop:
-	ldr	r3, [r2]
-	and	r3, r4, r3
-	cmp	r3, #AT91_PMC_MOSCS
-	bne	MOSCS_Loop
-
-/* ----------------------------------------------------------------------------
- * PMC Init Step 2.
- * ----------------------------------------------------------------------------
- * Setup PLLA
- * ----------------------------------------------------------------------------
- */
-	ldr	r1, =(AT91_BASE_SYS + AT91_CKGR_PLLAR)
-	ldr	r0, =CONFIG_SYS_PLLAR_VAL
-	str	r0, [r1]
-
-	/* Reading the PMC Status register to detect when the PLLA is locked */
-	mov	r4, #AT91_PMC_LOCKA
-MOSCS_Loop1:
-	ldr	r3, [r2]
-	and	r3, r4, r3
-	cmp	r3, #AT91_PMC_LOCKA
-	bne	MOSCS_Loop1
-
-/* ----------------------------------------------------------------------------
- * PMC Init Step 3.
- * ----------------------------------------------------------------------------
- * - Switch on the Main Oscillator
- * ----------------------------------------------------------------------------
- */
-	ldr	r1, =(AT91_BASE_SYS + AT91_PMC_MCKR)
-
-	/* -Master Clock Controller register PMC_MCKR */
-	ldr	r0, =CONFIG_SYS_MCKR1_VAL
-	str	r0, [r1]
-
-	/* Reading the PMC Status to detect when the Master clock is ready */
-	mov	r4, #AT91_PMC_MCKRDY
-MCKRDY_Loop:
-	ldr	r3, [r2]
-	and	r3, r4, r3
-	cmp	r3, #AT91_PMC_MCKRDY
-	bne	MCKRDY_Loop
-
-	ldr	r0, =CONFIG_SYS_MCKR2_VAL
-	str	r0, [r1]
-
-	/* Reading the PMC Status to detect when the Master clock is ready */
-	mov	r4, #AT91_PMC_MCKRDY
-MCKRDY_Loop1:
-	ldr	r3, [r2]
-	and	r3, r4, r3
-	cmp	r3, #AT91_PMC_MCKRDY
-	bne	MCKRDY_Loop1
-
-PLL_setup_end:
-
-/* ----------------------------------------------------------------------------
- * - memory control configuration 2
- * ----------------------------------------------------------------------------
- */
-	ldr	r0, =(AT91_BASE_SYS + AT91_SDRAMC_TR)
-	ldr	r1, [r0]
-	cmp	r1, #0
-	bne	SDRAM_setup_end
-
-	ldr	r0, =SMRDATA1
-	ldr	r2, =SMRDATA2
-	ldr	r1, _TEXT_BASE
-	sub	r0, r0, r1
-	sub	r2, r2, r1
-	add	r0, r0, r5
-	add	r2, r2, r5
-
-2:
-	/* the address */
-	ldr	r1, [r0], #4
-	/* the value */
-	ldr	r3, [r0], #4
-	str	r3, [r1]
-	cmp	r2, r0
-	bne	2b
-
-SDRAM_setup_end:
-	/* everything is fine now */
-	mov	pc, lr
-
-	.ltorg
-
-SMRDATA:
-	.word (AT91_BASE_SYS + AT91_WDT_MR)
-	.word CONFIG_SYS_WDTC_WDMR_VAL
-
-	/* configure PIOx as EBI0 D[16-31] */
-#if defined(CONFIG_ARCH_AT91SAM9263)
-	.word (AT91_BASE_SYS + AT91_PIOD + PIO_PDR)
-	.word CONFIG_SYS_PIOD_PDR_VAL1
-	.word (AT91_BASE_SYS + AT91_PIOD + PIO_PUDR)
-	.word CONFIG_SYS_PIOD_PPUDR_VAL
-	.word (AT91_BASE_SYS + AT91_PIOD + PIO_ASR)
-	.word CONFIG_SYS_PIOD_PPUDR_VAL
-#elif defined(CONFIG_ARCH_AT91SAM9260) || defined(CONFIG_ARCH_AT91SAM9261) \
-	|| defined(CONFIG_ARCH_AT91SAM9G20) || defined(CONFIG_ARCH_AT91SAM9G10)
-	.word (AT91_BASE_SYS + AT91_PIOC + PIO_PDR)
-	.word CONFIG_SYS_PIOC_PDR_VAL1
-	.word (AT91_BASE_SYS + AT91_PIOC + PIO_PUDR)
-	.word CONFIG_SYS_PIOC_PPUDR_VAL
-#endif
-
-#if defined(AT91_MATRIX_EBI0CSA)
-	.word (AT91_BASE_SYS + AT91_MATRIX_EBI0CSA)
-	.word CONFIG_SYS_MATRIX_EBI0CSA_VAL
-#else /* AT91_MATRIX_EBICSA */
-	.word (AT91_BASE_SYS + AT91_MATRIX_EBICSA)
-	.word CONFIG_SYS_MATRIX_EBICSA_VAL
-#endif
-
-	/* flash */
-	.word (AT91_BASE_SYS + AT91_SMC_MODE(0))
-	.word CONFIG_SYS_SMC0_MODE0_VAL
-
-	.word (AT91_BASE_SYS + AT91_SMC_CYCLE(0))
-	.word CONFIG_SYS_SMC0_CYCLE0_VAL
-
-	.word (AT91_BASE_SYS + AT91_SMC_PULSE(0))
-	.word CONFIG_SYS_SMC0_PULSE0_VAL
-
-	.word (AT91_BASE_SYS + AT91_SMC_SETUP(0))
-	.word CONFIG_SYS_SMC0_SETUP0_VAL
-
-SMRDATA1:
-	.word (AT91_BASE_SYS + AT91_SDRAMC_MR)
-	.word CONFIG_SYS_SDRC_MR_VAL1
-	.word (AT91_BASE_SYS + AT91_SDRAMC_TR)
-	.word CONFIG_SYS_SDRC_TR_VAL1
-	.word (AT91_BASE_SYS + AT91_SDRAMC_CR)
-	.word CONFIG_SYS_SDRC_CR_VAL
-	.word (AT91_BASE_SYS + AT91_SDRAMC_MDR)
-	.word CONFIG_SYS_SDRC_MDR_VAL
-	.word (AT91_BASE_SYS + AT91_SDRAMC_MR)
-	.word CONFIG_SYS_SDRC_MR_VAL2
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL1
-	.word (AT91_BASE_SYS + AT91_SDRAMC_MR)
-	.word CONFIG_SYS_SDRC_MR_VAL3
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL2
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL3
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL4
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL5
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL6
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL7
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL8
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL9
-	.word (AT91_BASE_SYS + AT91_SDRAMC_MR)
-	.word CONFIG_SYS_SDRC_MR_VAL4
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL10
-	.word (AT91_BASE_SYS + AT91_SDRAMC_MR)
-	.word CONFIG_SYS_SDRC_MR_VAL5
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL11
-	.word (AT91_BASE_SYS + AT91_SDRAMC_TR)
-	.word CONFIG_SYS_SDRC_TR_VAL2
-	.word AT91_SDRAM_BASE
-	.word CONFIG_SYS_SDRAM_VAL12
-	/* User reset enable*/
-	.word (AT91_BASE_SYS + AT91_RSTC_MR)
-	.word CONFIG_SYS_RSTC_RMR_VAL
-#ifdef CONFIG_SYS_MATRIX_MCFG_REMAP
-	/* MATRIX_MCFG - REMAP all masters */
-	.word (AT91_BASE_SYS + AT91_MATRIX_MCFG0)
-	.word 0x1FF
-#endif
-
-SMRDATA2:
-	.word 0
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
