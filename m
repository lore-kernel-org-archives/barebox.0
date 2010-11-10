Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PG9A6-0008Nh-QO
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 11:48:25 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 10 Nov 2010 12:44:56 +0100
Message-Id: <1289389500-7690-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1289389500-7690-1-git-send-email-plagnioj@jcrosoft.com>
References: <1289389500-7690-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/6] at91: add Ronetix pm9261 board support
To: barebox@lists.infradead.org
Cc: Ilko Iliev <iliev@ronetix.at>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Ilko Iliev <iliev@ronetix.at>
---
 arch/arm/Makefile                 |    1 +
 arch/arm/boards/pm9261/Makefile   |    1 +
 arch/arm/boards/pm9261/config.h   |  110 ++++++++++++++++++++++++
 arch/arm/boards/pm9261/env/config |   41 +++++++++
 arch/arm/boards/pm9261/init.c     |  168 +++++++++++++++++++++++++++++++++++++
 arch/arm/configs/pm9261_defconfig |   52 +++++++++++
 arch/arm/mach-at91/Kconfig        |    8 ++
 7 files changed, 381 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/pm9261/Makefile
 create mode 100644 arch/arm/boards/pm9261/config.h
 create mode 100644 arch/arm/boards/pm9261/env/config
 create mode 100644 arch/arm/boards/pm9261/init.c
 create mode 100644 arch/arm/configs/pm9261_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a2ef430..80c5561 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -79,6 +79,7 @@ board-$(CONFIG_MACH_PCA100)			:= phycard-i.MX27
 board-$(CONFIG_MACH_PCM037)			:= pcm037
 board-$(CONFIG_MACH_PCM038)			:= pcm038
 board-$(CONFIG_MACH_PCM043)			:= pcm043
+board-$(CONFIG_MACH_PM9261)			:= pm9261
 board-$(CONFIG_MACH_PM9263)			:= pm9263
 board-$(CONFIG_MACH_SCB9328)			:= scb9328
 board-$(CONFIG_MACH_NESO)			:= guf-neso
diff --git a/arch/arm/boards/pm9261/Makefile b/arch/arm/boards/pm9261/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/pm9261/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/pm9261/config.h b/arch/arm/boards/pm9261/config.h
new file mode 100644
index 0000000..1c57448
--- /dev/null
+++ b/arch/arm/boards/pm9261/config.h
@@ -0,0 +1,110 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		18432000	/* 16.367 MHz crystal */
+
+#define MASTER_PLL_DIV		15
+#define MASTER_PLL_MUL		162
+#define MAIN_PLL_DIV		2
+
+/* clocks */
+#define CONFIG_SYS_MOR_VAL						\
+		(AT91_PMC_MOSCEN |					\
+		 (255 << 8))		/* Main Oscillator Start-up Time */
+#define CONFIG_SYS_PLLAR_VAL						\
+		(AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */ \
+		 AT91_PMC_OUT |						\
+		 ((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV))
+
+/* PCK/2 = MCK Master Clock from PLLA */
+#define	CONFIG_SYS_MCKR1_VAL		\
+		(AT91_PMC_CSS_SLOW |	\
+		 AT91_PMC_PRES_1 |	\
+		 AT91SAM9_PMC_MDIV_2 |	\
+		 AT91_PMC_PDIV_1)
+
+/* PCK/2 = MCK Master Clock from PLLA */
+#define	CONFIG_SYS_MCKR2_VAL		\
+		(AT91_PMC_CSS_PLLA |	\
+		 AT91_PMC_PRES_1 |	\
+		 AT91SAM9_PMC_MDIV_2 |	\
+		 AT91_PMC_PDIV_1)
+
+/* define PDC[31:16] as DATA[31:16] */
+#define CONFIG_SYS_PIOC_PDR_VAL1	0xFFFF0000
+/* no pull-up for D[31:16] */
+#define CONFIG_SYS_PIOC_PPUDR_VAL	0xFFFF0000
+
+/* EBI_CSA, no pull-ups for D[15:0], CS1 SDRAM, CS3 NAND Flash */
+#define CONFIG_SYS_MATRIX_EBICSA_VAL		\
+       (AT91_MATRIX_DBPUC | AT91_MATRIX_CS1A_SDRAMC)
+
+/* SDRAM */
+/* SDRAMC_MR Mode register */
+#define CONFIG_SYS_SDRC_MR_VAL1		AT91_SDRAMC_MODE_NORMAL
+/* SDRAMC_TR - Refresh Timer register */
+#define CONFIG_SYS_SDRC_TR_VAL1		0x13C
+/* SDRAMC_CR - Configuration register*/
+#define CONFIG_SYS_SDRC_CR_VAL							\
+		(AT91_SDRAMC_NC_9 |						\
+		 AT91_SDRAMC_NR_13 |						\
+		 AT91_SDRAMC_NB_4 |						\
+		 AT91_SDRAMC_CAS_3 |						\
+		 AT91_SDRAMC_DBW_32 |						\
+		 (1 <<  8) |		/* Write Recovery Delay */		\
+		 (7 << 12) |		/* Row Cycle Delay */			\
+		 (3 << 16) |		/* Row Precharge Delay */		\
+		 (2 << 20) |		/* Row to Column Delay */		\
+		 (5 << 24) |		/* Active to Precharge Delay */		\
+		 (1 << 28))		/* Exit Self Refresh to Active Delay */
+
+/* Memory Device Register -> SDRAM */
+#define CONFIG_SYS_SDRC_MDR_VAL		AT91_SDRAMC_MD_SDRAM
+#define CONFIG_SYS_SDRC_MR_VAL2		AT91_SDRAMC_MODE_PRECHARGE
+#define CONFIG_SYS_SDRAM_VAL1		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRC_MR_VAL3		AT91_SDRAMC_MODE_REFRESH
+#define CONFIG_SYS_SDRAM_VAL2		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRAM_VAL3		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRAM_VAL4		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRAM_VAL5		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRAM_VAL6		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRAM_VAL7		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRAM_VAL8		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRAM_VAL9		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRC_MR_VAL4		AT91_SDRAMC_MODE_LMR
+#define CONFIG_SYS_SDRAM_VAL10		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRC_MR_VAL5		AT91_SDRAMC_MODE_NORMAL
+#define CONFIG_SYS_SDRAM_VAL11		0		/* SDRAM_BASE */
+#define CONFIG_SYS_SDRC_TR_VAL2		1200		/* SDRAM_TR */
+#define CONFIG_SYS_SDRAM_VAL12		0		/* SDRAM_BASE */
+
+/* setup SMC0, CS0 (NOR Flash) - 16-bit, 15 WS */
+#define CONFIG_SYS_SMC0_SETUP0_VAL					\
+		(AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |	\
+		 AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10))
+#define CONFIG_SYS_SMC0_PULSE0_VAL					\
+		(AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |	\
+		 AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11))
+#define CONFIG_SYS_SMC0_CYCLE0_VAL	\
+		(AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22))
+#define CONFIG_SYS_SMC0_MODE0_VAL				\
+		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
+		 AT91_SMC_DBW_16 |				\
+		 AT91_SMC_TDFMODE |				\
+		 AT91_SMC_TDF_(6))
+
+/* user reset enable */
+#define CONFIG_SYS_RSTC_RMR_VAL			\
+		(AT91_RSTC_KEY |		\
+		AT91_RSTC_PROCRST |		\
+		AT91_RSTC_RSTTYP_WAKEUP |	\
+		AT91_RSTC_RSTTYP_WATCHDOG)
+
+/* Disable Watchdog */
+#define CONFIG_SYS_WDTC_WDMR_VAL				\
+		(AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |	\
+		 AT91_WDT_WDV |					\
+		 AT91_WDT_WDDIS |				\
+		 AT91_WDT_WDD)
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/pm9261/env/config b/arch/arm/boards/pm9261/env/config
new file mode 100644
index 0000000..f7e133e
--- /dev/null
+++ b/arch/arm/boards/pm9261/env/config
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
+# can be either 'net' or 'nand'
+kernel_loc=net
+# can be either 'net', 'nand' or 'initrd'
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
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
new file mode 100644
index 0000000..6fb14f7
--- /dev/null
+++ b/arch/arm/boards/pm9261/init.c
@@ -0,0 +1,168 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
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
+#include <nand.h>
+#include <linux/mtd/nand.h>
+#include <mach/at91_pmc.h>
+#include <mach/board.h>
+#include <mach/gpio.h>
+#include <mach/io.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/sam9_smc.h>
+#include <dm9000.h>
+
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 22,
+	.cle		= 21,
+/*	.det_pin	= ... not connected */
+	.rdy_pin	= AT91_PIN_PA16,
+	.enable_pin	= AT91_PIN_PC14,
+#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
+	.bus_width_16	= 1,
+#else
+	.bus_width_16	= 0,
+#endif
+};
+
+static struct sam9_smc_config pm_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 1,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 1,
+
+	.ncs_read_pulse		= 3,
+	.nrd_pulse		= 3,
+	.ncs_write_pulse	= 3,
+	.nwe_pulse		= 3,
+
+	.read_cycle		= 5,
+	.write_cycle		= 5,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.tdf_cycles		= 2,
+};
+
+static void pm_add_device_nand(void)
+{
+	/* setup bus-width (8 or 16) */
+	if (nand_pdata.bus_width_16)
+		pm_nand_smc_config.mode |= AT91_SMC_DBW_16;
+	else
+		pm_nand_smc_config.mode |= AT91_SMC_DBW_8;
+
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(3, &pm_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+
+/*
+ * DM9000 ethernet device
+ */
+#if defined(CONFIG_DRIVER_NET_DM9000)
+static struct dm9000_platform_data dm9000_data = {
+	.iobase		= AT91_CHIPSELECT_2,
+	.iodata		= AT91_CHIPSELECT_2 + 4,
+	.buswidth	= DM9000_WIDTH_16,
+	.srom		= 1,
+};
+
+static struct device_d dm9000_dev = {
+	.id		= 0,
+	.name		= "dm9000",
+	.map_base	= AT91_CHIPSELECT_2,
+	.size		= 8,
+	.platform_data	= &dm9000_data,
+};
+
+/*
+ * SMC timings for the DM9000.
+ * Note: These timings were calculated for MASTER_CLOCK = 100000000 according to the DM9000 timings.
+ */
+static struct sam9_smc_config __initdata dm9000_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 2,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 2,
+
+	.ncs_read_pulse		= 8,
+	.nrd_pulse		= 4,
+	.ncs_write_pulse	= 8,
+	.nwe_pulse		= 4,
+
+	.read_cycle		= 16,
+	.write_cycle		= 16,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_BAT_WRITE | AT91_SMC_DBW_16,
+	.tdf_cycles		= 1,
+};
+
+static void __init pm_add_device_dm9000(void)
+{
+	/* Configure chip-select 2 (DM9000) */
+	sam9_smc_configure(2, &dm9000_smc_config);
+
+	register_device(&dm9000_dev);
+}
+#else
+static void __init ek_add_device_dm9000(void) {}
+#endif /* CONFIG_DRIVER_NET_DM9000 */
+
+static struct device_d cfi_dev = {
+	.id		= 0,
+	.name		= "cfi_flash",
+	.map_base	= AT91_CHIPSELECT_0,
+	.size		= 4 * 1024 * 1024,
+};
+
+static int pm9261_devices_init(void)
+{
+	at91_add_device_sdram(64 * 1024 * 1024);
+	pm_add_device_nand();
+	register_device(&cfi_dev);
+	pm_add_device_dm9000();
+
+	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
+	devfs_add_partition("nor0", 0x40000, 0x10000, PARTITION_FIXED, "env0");
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
+	armlinux_set_architecture(MACH_TYPE_PM9261);
+
+	return 0;
+}
+device_initcall(pm9261_devices_init);
+
+static int pm9261_console_init(void)
+{
+	at91_register_uart(0, 0);
+	return 0;
+}
+console_initcall(pm9261_console_init);
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
new file mode 100644
index 0000000..0bd9483
--- /dev/null
+++ b/arch/arm/configs/pm9261_defconfig
@@ -0,0 +1,52 @@
+CONFIG_ARCH_AT91SAM9261=y
+CONFIG_MACH_PM9261=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PROMPT="PM9261:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pm9261/env/"
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
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_NET_DM9000=y
+# CONFIG_SPI is not set
+CONFIG_DRIVER_CFI=y
+CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index b3932f3..f0a81f4 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -10,6 +10,7 @@ config BOARDINFO
 	default "Atmel at91sam9263-ek" if MACH_AT91SAM9263EK
 	default "Atmel at91sam9g20-ek" if MACH_AT91SAM9G20EK
 	default "Bucyrus MMC-CPU" if MACH_MMCCPU
+	default "Ronetix PM9261" if MACH_PM9261
 	default "Ronetix PM9263" if MACH_PM9263
 
 config HAVE_NAND_ATMEL_BUSWIDTH_16
@@ -74,6 +75,13 @@ config MACH_AT91SAM9261EK
 	  Select this if you are using Atmel's AT91SAM9261-EK Evaluation Kit.
 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3820>
 
+config MACH_PM9261
+	bool "Ronetix PM9261"
+	select HAS_DM9000
+	select MACH_HAS_LOWLEVEL_INIT
+	help
+	  Say y here if you are using the Ronetix PM9261 Board
+
 endchoice
 
 endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
