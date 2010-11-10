Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PG9A6-0008Ni-5p
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 11:48:28 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 10 Nov 2010 12:44:57 +0100
Message-Id: <1289389500-7690-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/6] at91: Support for at91sam9g45 and at91sam9m10 series:
	core chip & board support
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

Here are the at91 specific files dedicated to the at91sam9g45 series. They
mimic the traditional at91 way of managing chips & boards.

The first board that embeds at91sam9g45 chip is the AT91SAM9M10G45-EK. In
the future, we will add the m10 and other boards revisions

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Signed-off-by: Nicolas Ferre <nicolas.ferre@atmel.com>
---
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/at91sam9m10g45ek/Makefile          |    1 +
 arch/arm/boards/at91sam9m10g45ek/config.h          |    6 +
 arch/arm/boards/at91sam9m10g45ek/env/config        |   41 +++
 arch/arm/boards/at91sam9m10g45ek/init.c            |  116 ++++++++
 arch/arm/configs/at91sam9m10g45ek_defconfig        |   55 ++++
 arch/arm/mach-at91/Kconfig                         |   22 ++
 arch/arm/mach-at91/Makefile                        |    1 +
 arch/arm/mach-at91/at91sam9g45.c                   |  277 ++++++++++++++++++++
 arch/arm/mach-at91/at91sam9g45_devices.c           |  242 +++++++++++++++++
 arch/arm/mach-at91/include/mach/at91sam9g45.h      |  160 +++++++++++
 .../mach-at91/include/mach/at91sam9g45_matrix.h    |  153 +++++++++++
 arch/arm/mach-at91/include/mach/cpu.h              |   10 +
 arch/arm/mach-at91/include/mach/hardware.h         |    2 +-
 14 files changed, 1086 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/Makefile
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/config.h
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/env/config
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/init.c
 create mode 100644 arch/arm/configs/at91sam9m10g45ek_defconfig
 create mode 100644 arch/arm/mach-at91/at91sam9g45.c
 create mode 100644 arch/arm/mach-at91/at91sam9g45_devices.c
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9g45.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9g45_matrix.h

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 80c5561..b1a30f2 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -55,6 +55,7 @@ board-$(CONFIG_MACH_AT91SAM9260EK)		:= at91sam9260ek
 board-$(CONFIG_MACH_AT91SAM9261EK)		:= at91sam9261ek
 board-$(CONFIG_MACH_AT91SAM9263EK)		:= at91sam9263ek
 board-$(CONFIG_MACH_AT91SAM9G20EK)		:= at91sam9260ek
+board-$(CONFIG_MACH_AT91SAM9M10G45EK)		:= at91sam9m10g45ek
 board-$(CONFIG_MACH_EDB9301)			:= edb93xx
 board-$(CONFIG_MACH_EDB9302)			:= edb93xx
 board-$(CONFIG_MACH_EDB9302A)			:= edb93xx
diff --git a/arch/arm/boards/at91sam9m10g45ek/Makefile b/arch/arm/boards/at91sam9m10g45ek/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10g45ek/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/at91sam9m10g45ek/config.h b/arch/arm/boards/at91sam9m10g45ek/config.h
new file mode 100644
index 0000000..ac3114d
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10g45ek/config.h
@@ -0,0 +1,6 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		12000000	/* from 12 MHz crystal */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9m10g45ek/env/config b/arch/arm/boards/at91sam9m10g45ek/env/config
new file mode 100644
index 0000000..3b92233
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10g45ek/env/config
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
+nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
+rootfs_mtdblock_nand=3
+
+autoboot_timeout=3
+
+bootargs="console=ttyS0,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
new file mode 100644
index 0000000..bb8b7ba
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -0,0 +1,116 @@
+/*
+ * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
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
+
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+/*	.det_pin	= ... not connected */
+	.rdy_pin	= AT91_PIN_PC8,
+	.enable_pin	= AT91_PIN_PC14,
+#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
+	.bus_width_16	= 1,
+#else
+	.bus_width_16	= 0,
+#endif
+};
+
+static struct sam9_smc_config ek_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 2,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 2,
+
+	.ncs_read_pulse		= 4,
+	.nrd_pulse		= 4,
+	.ncs_write_pulse	= 4,
+	.nwe_pulse		= 4,
+
+	.read_cycle		= 7,
+	.write_cycle		= 7,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.tdf_cycles		= 3,
+};
+
+static void ek_add_device_nand(void)
+{
+	/* setup bus-width (8 or 16) */
+	if (nand_pdata.bus_width_16)
+		ek_nand_smc_config.mode |= AT91_SMC_DBW_16;
+	else
+		ek_nand_smc_config.mode |= AT91_SMC_DBW_8;
+
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(3, &ek_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+
+static struct at91_ether_platform_data macb_pdata = {
+	.flags = AT91SAM_ETHER_RMII,
+	.phy_addr = 0,
+};
+
+static int at91sam9m10g45ek_devices_init(void)
+{
+	at91_add_device_sdram(128 * 1024 * 1024);
+	ek_add_device_nand();
+	at91_add_device_eth(&macb_pdata);
+
+	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", 0x40000, 0x40000, PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_6 + 0x100));
+	armlinux_set_architecture(MACH_TYPE_AT91SAM9M10G45EK);
+
+	return 0;
+}
+device_initcall(at91sam9m10g45ek_devices_init);
+
+static int at91sam9m10g45ek_console_init(void)
+{
+	at91_register_uart(0, 0);
+	return 0;
+}
+console_initcall(at91sam9m10g45ek_console_init);
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
new file mode 100644
index 0000000..e1c6cef
--- /dev/null
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -0,0 +1,55 @@
+CONFIG_ARCH_AT91SAM9G45=y
+CONFIG_MACH_AT91SAM9M10G45EK=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PROMPT="9M10G45-EK:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PASSWD_SUM_SHA1=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9m10g45ek/env"
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
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_NET_MACB=y
+# CONFIG_SPI is not set
+CONFIG_DRIVER_CFI=y
+CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_UBI=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index f0a81f4..331a9f9 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -9,6 +9,7 @@ config BOARDINFO
 	default "Atmel at91sam9261-ek" if MACH_AT91SAM9261EK
 	default "Atmel at91sam9263-ek" if MACH_AT91SAM9263EK
 	default "Atmel at91sam9g20-ek" if MACH_AT91SAM9G20EK
+	default "Atmel at91sam9m10g45-ek" if MACH_AT91SAM9M10G45EK
 	default "Bucyrus MMC-CPU" if MACH_MMCCPU
 	default "Ronetix PM9261" if MACH_PM9261
 	default "Ronetix PM9263" if MACH_PM9263
@@ -40,6 +41,11 @@ config ARCH_AT91SAM9G20
 	select CPU_ARM926T
 	select HAS_MACB
 
+config ARCH_AT91SAM9G45
+	bool "AT91SAM9G45 or AT91SAM9M10"
+	select CPU_ARM926T
+	select HAS_MACB
+
 endchoice
 
 # ----------------------------------------------------------
@@ -134,6 +140,22 @@ endchoice
 
 endif
 
+if ARCH_AT91SAM9G45
+
+choice
+	prompt "AT91SAM9G45 or AT91SAM9M10 Board Type"
+
+config MACH_AT91SAM9M10G45EK
+	bool "Atmel AT91SAM9M10G45-EK Evaluation Kit"
+	select HAVE_NAND_ATMEL_BUSWIDTH_16
+	help
+	  Select this if you are using Atmel's AT91SAM9M10G45-EK Evaluation Kit.
+	  <http://atmel.com/dyn/products/tools_card_v2.asp?tool_id=4735>
+
+endchoice
+
+endif
+
 # ----------------------------------------------------------
 
 comment "AT91 Board Options"
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 3025201..0a5539f 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -7,3 +7,4 @@ obj-$(CONFIG_ARCH_AT91SAM9260) += at91sam9260.o at91sam926x_time.o at91sam9260_d
 obj-$(CONFIG_ARCH_AT91SAM9261) += at91sam9261.o at91sam926x_time.o at91sam9261_devices.o sam9_smc.o
 obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam926x_time.o at91sam9263_devices.o sam9_smc.o
 obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260.o at91sam926x_time.o at91sam9260_devices.o sam9_smc.o
+obj-$(CONFIG_ARCH_AT91SAM9G45) += at91sam9g45.o at91sam926x_time.o at91sam9g45_devices.o sam9_smc.o
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
new file mode 100644
index 0000000..2eaae58
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -0,0 +1,277 @@
+#include <common.h>
+#include <gpio.h>
+#include <init.h>
+#include <mach/io.h>
+#include <mach/hardware.h>
+#include <mach/at91_pmc.h>
+#include <mach/cpu.h>
+
+#include "generic.h"
+#include "clock.h"
+
+/* --------------------------------------------------------------------
+ *  Clocks
+ * -------------------------------------------------------------------- */
+
+/*
+ * The peripheral clocks.
+ */
+static struct clk pioA_clk = {
+	.name		= "pioA_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_PIOA,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioB_clk = {
+	.name		= "pioB_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_PIOB,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioC_clk = {
+	.name		= "pioC_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_PIOC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioDE_clk = {
+	.name		= "pioDE_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_PIODE,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart0_clk = {
+	.name		= "usart0_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_US0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart1_clk = {
+	.name		= "usart1_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_US1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart2_clk = {
+	.name		= "usart2_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_US2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart3_clk = {
+	.name		= "usart3_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_US3,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk mmc0_clk = {
+	.name		= "mci0_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_MCI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk twi0_clk = {
+	.name		= "twi0_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_TWI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk twi1_clk = {
+	.name		= "twi1_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_TWI1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi0_clk = {
+	.name		= "spi0_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_SPI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi1_clk = {
+	.name		= "spi1_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_SPI1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ssc0_clk = {
+	.name		= "ssc0_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_SSC0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ssc1_clk = {
+	.name		= "ssc1_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_SSC1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tcb0_clk = {
+	.name		= "tcb0_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_TCB,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pwm_clk = {
+	.name		= "pwm_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_PWMC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tsc_clk = {
+	.name		= "tsc_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_TSC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk dma_clk = {
+	.name		= "dma_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_DMA,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk uhphs_clk = {
+	.name		= "uhphs_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_UHPHS,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk lcdc_clk = {
+	.name		= "lcdc_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_LCDC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ac97_clk = {
+	.name		= "ac97_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_AC97C,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk macb_clk = {
+	.name		= "macb_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_EMAC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk isi_clk = {
+	.name		= "isi_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_ISI,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk udphs_clk = {
+	.name		= "udphs_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_UDPHS,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk mmc1_clk = {
+	.name		= "mci1_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_MCI1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+
+/* Video decoder clock - Only for sam9m10/sam9m11 */
+static struct clk vdec_clk = {
+	.name		= "vdec_clk",
+	.pmc_mask	= 1 << AT91SAM9G45_ID_VDEC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+
+/* One additional fake clock for ohci */
+static struct clk ohci_clk = {
+	.name		= "ohci_clk",
+	.pmc_mask	= 0,
+	.type		= CLK_TYPE_PERIPHERAL,
+	.parent		= &uhphs_clk,
+};
+
+/* One additional fake clock for second TC block */
+static struct clk tcb1_clk = {
+	.name		= "tcb1_clk",
+	.pmc_mask	= 0,
+	.type		= CLK_TYPE_PERIPHERAL,
+	.parent		= &tcb0_clk,
+};
+
+static struct clk *periph_clocks[] __initdata = {
+	&pioA_clk,
+	&pioB_clk,
+	&pioC_clk,
+	&pioDE_clk,
+	&usart0_clk,
+	&usart1_clk,
+	&usart2_clk,
+	&usart3_clk,
+	&mmc0_clk,
+	&twi0_clk,
+	&twi1_clk,
+	&spi0_clk,
+	&spi1_clk,
+	&ssc0_clk,
+	&ssc1_clk,
+	&tcb0_clk,
+	&pwm_clk,
+	&tsc_clk,
+	&dma_clk,
+	&uhphs_clk,
+	&lcdc_clk,
+	&ac97_clk,
+	&macb_clk,
+	&isi_clk,
+	&udphs_clk,
+	&mmc1_clk,
+	// irq0
+	&ohci_clk,
+	&tcb1_clk,
+};
+
+/*
+ * The two programmable clocks.
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
+
+static void __init at91sam9g45_register_clocks(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
+		clk_register(periph_clocks[i]);
+
+	if (cpu_is_at91sam9m10() || cpu_is_at91sam9m11())
+		clk_register(&vdec_clk);
+
+	clk_register(&pck0);
+	clk_register(&pck1);
+}
+
+/* --------------------------------------------------------------------
+ *  GPIO
+ * -------------------------------------------------------------------- */
+
+static struct at91_gpio_bank at91sam9g45_gpio[] = {
+	{
+		.id		= AT91SAM9G45_ID_PIOA,
+		.offset		= AT91_PIOA,
+		.clock		= &pioA_clk,
+	}, {
+		.id		= AT91SAM9G45_ID_PIOB,
+		.offset		= AT91_PIOB,
+		.clock		= &pioB_clk,
+	}, {
+		.id		= AT91SAM9G45_ID_PIOC,
+		.offset		= AT91_PIOC,
+		.clock		= &pioC_clk,
+	}, {
+		.id		= AT91SAM9G45_ID_PIODE,
+		.offset		= AT91_PIOD,
+		.clock		= &pioDE_clk,
+	}, {
+		.id		= AT91SAM9G45_ID_PIODE,
+		.offset		= AT91_PIOE,
+		.clock		= &pioDE_clk,
+	}
+};
+
+static int at91sam9g45_initialize(void)
+{
+	/* Init clock subsystem */
+	at91_clock_init(AT91_MAIN_CLOCK);
+
+	/* Register the processor-specific clocks */
+	at91sam9g45_register_clocks();
+
+	/* Register GPIO subsystem */
+	at91_gpio_init(at91sam9g45_gpio, 5);
+	return 0;
+}
+
+core_initcall(at91sam9g45_initialize);
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
new file mode 100644
index 0000000..ddb005a
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -0,0 +1,242 @@
+/*
+ * arch/arm/mach-at91/at91sam9263_devices.c
+ *
+ *  Copyright (C) 2006 Atmel
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+#include <common.h>
+#include <asm/armlinux.h>
+#include <asm/hardware.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91sam9g45_matrix.h>
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
+	.id		= -1,
+	.name		= "mem",
+	.map_base	= AT91_CHIPSELECT_6,
+	.platform_data	= &ram_pdata,
+};
+
+void at91_add_device_sdram(u32 size)
+{
+	sdram_dev.size = size;
+	register_device(&sdram_dev);
+	armlinux_add_dram(&sdram_dev);
+}
+
+#if defined(CONFIG_DRIVER_NET_MACB)
+static struct device_d macb_dev = {
+	.id		= 0,
+	.name		= "macb",
+	.map_base	= AT91SAM9G45_BASE_EMAC,
+	.size		= 0x1000,
+};
+
+void at91_add_device_eth(struct at91_ether_platform_data *data)
+{
+	if (!data)
+		return;
+
+	/* Pins used for MII and RMII */
+	at91_set_A_periph(AT91_PIN_PA17, 0);	/* ETXCK_EREFCK */
+	at91_set_A_periph(AT91_PIN_PA15, 0);	/* ERXDV */
+	at91_set_A_periph(AT91_PIN_PA12, 0);	/* ERX0 */
+	at91_set_A_periph(AT91_PIN_PA13, 0);	/* ERX1 */
+	at91_set_A_periph(AT91_PIN_PA16, 0);	/* ERXER */
+	at91_set_A_periph(AT91_PIN_PA14, 0);	/* ETXEN */
+	at91_set_A_periph(AT91_PIN_PA10, 0);	/* ETX0 */
+	at91_set_A_periph(AT91_PIN_PA11, 0);	/* ETX1 */
+	at91_set_A_periph(AT91_PIN_PA19, 0);	/* EMDIO */
+	at91_set_A_periph(AT91_PIN_PA18, 0);	/* EMDC */
+
+	if (!(data->flags & AT91SAM_ETHER_RMII)) {
+		at91_set_B_periph(AT91_PIN_PA29, 0);	/* ECRS */
+		at91_set_B_periph(AT91_PIN_PA30, 0);	/* ECOL */
+		at91_set_B_periph(AT91_PIN_PA8,  0);	/* ERX2 */
+		at91_set_B_periph(AT91_PIN_PA9,  0);	/* ERX3 */
+		at91_set_B_periph(AT91_PIN_PA28, 0);	/* ERXCK */
+		at91_set_B_periph(AT91_PIN_PA6,  0);	/* ETX2 */
+		at91_set_B_periph(AT91_PIN_PA7,  0);	/* ETX3 */
+		at91_set_B_periph(AT91_PIN_PA27, 0);	/* ETXER */
+	}
+
+	macb_dev.platform_data = data;
+	register_device(&macb_dev);
+}
+#else
+void at91_add_device_eth(struct at91_ether_platform_data *data) {}
+#endif
+
+#if defined(CONFIG_NAND_ATMEL)
+static struct device_d nand_dev = {
+	.id		= -1,
+	.name		= "atmel_nand",
+	.map_base	= AT91_CHIPSELECT_3,
+	.size		= 0x10,
+};
+
+void at91_add_device_nand(struct atmel_nand_data *data)
+{
+	unsigned long csa;
+
+	if (!data)
+		return;
+
+	data->ecc_base = (void __iomem *)(AT91_BASE_SYS + AT91_ECC);
+	data->ecc_mode = NAND_ECC_HW;
+
+	csa = at91_sys_read(AT91_MATRIX_EBICSA);
+	at91_sys_write(AT91_MATRIX_EBICSA, csa | AT91_MATRIX_EBI_CS3A_SMC_SMARTMEDIA);
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
+	nand_dev.platform_data = data;
+	register_device(&nand_dev);
+}
+#else
+void at91_add_device_nand(struct atmel_nand_data *data) {}
+#endif
+
+static struct device_d dbgu_serial_device = {
+	.id	  = -1,
+	.name     = "atmel_serial",
+	.map_base = (AT91_BASE_SYS + AT91_DBGU),
+	.size     = 4096,
+};
+
+static inline void configure_dbgu_pins(void)
+{
+	at91_set_A_periph(AT91_PIN_PB12, 0);		/* DRXD */
+	at91_set_A_periph(AT91_PIN_PB13, 1);		/* DTXD */
+}
+
+static struct device_d uart0_serial_device = {
+	.id	  = -1,
+	.name     = "atmel_serial",
+	.map_base = AT91SAM9G45_BASE_US0,
+	.size     = 4096,
+};
+
+static inline void configure_usart0_pins(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PB19, 1);		/* TXD0 */
+	at91_set_A_periph(AT91_PIN_PB18, 0);		/* RXD0 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_B_periph(AT91_PIN_PB17, 0);	/* RTS0 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_B_periph(AT91_PIN_PB15, 0);	/* CTS0 */
+}
+
+static struct device_d uart1_serial_device = {
+	.id	  = -1,
+	.name     = "atmel_serial",
+	.map_base = AT91SAM9G45_BASE_US1,
+	.size     = 4096,
+};
+
+static inline void configure_usart1_pins(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PB4, 1);		/* TXD1 */
+	at91_set_A_periph(AT91_PIN_PB5, 0);		/* RXD1 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_A_periph(AT91_PIN_PD16, 0);	/* RTS1 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_A_periph(AT91_PIN_PD17, 0);	/* CTS1 */
+}
+
+static struct device_d uart2_serial_device = {
+	.id	  = -1,
+	.name     = "atmel_serial",
+	.map_base = AT91SAM9G45_BASE_US2,
+	.size     = 4096,
+};
+
+static inline void configure_usart2_pins(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PB6, 1);		/* TXD2 */
+	at91_set_A_periph(AT91_PIN_PB7, 0);		/* RXD2 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_B_periph(AT91_PIN_PC9, 0);	/* RTS2 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_B_periph(AT91_PIN_PC11, 0);	/* CTS2 */
+}
+
+static struct device_d uart3_serial_device = {
+	.id	  = -1,
+	.name     = "atmel_serial",
+	.map_base = AT91SAM9G45_ID_US3,
+	.size     = 4096,
+};
+
+static inline void configure_usart3_pins(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PB8, 1);		/* TXD3 */
+	at91_set_A_periph(AT91_PIN_PB9, 0);		/* RXD3 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_B_periph(AT91_PIN_PA23, 0);	/* RTS3 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_B_periph(AT91_PIN_PA24, 0);	/* CTS3 */
+}
+
+void at91_register_uart(unsigned id, unsigned pins)
+{
+	switch (id) {
+		case 0:		/* DBGU */
+			configure_dbgu_pins();
+			at91_clock_associate("mck", &dbgu_serial_device, "usart");
+			register_device(&dbgu_serial_device);
+			break;
+		case AT91SAM9G45_ID_US0:
+			configure_usart0_pins(pins);
+			at91_clock_associate("usart0_clk", &uart0_serial_device, "usart");
+			register_device(&uart0_serial_device);
+			break;
+		case AT91SAM9G45_ID_US1:
+			configure_usart1_pins(pins);
+			at91_clock_associate("usart1_clk", &uart1_serial_device, "usart");
+			register_device(&uart1_serial_device);
+			break;
+		case AT91SAM9G45_ID_US2:
+			configure_usart2_pins(pins);
+			at91_clock_associate("usart2_clk", &uart2_serial_device, "usart");
+			register_device(&uart2_serial_device);
+			break;
+		case AT91SAM9G45_ID_US3:
+			configure_usart3_pins(pins);
+			at91_clock_associate("usart3_clk", &uart2_serial_device, "usart");
+			register_device(&uart3_serial_device);
+			break;
+		default:
+			return;
+	}
+
+}
diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/arch/arm/mach-at91/include/mach/at91sam9g45.h
new file mode 100644
index 0000000..c5c7f49
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91sam9g45.h
@@ -0,0 +1,160 @@
+/*
+ * Chip-specific header file for the AT91SAM9G45 family
+ *
+ *  Copyright (C) 2008-2009 Atmel Corporation.
+ *
+ * Common definitions.
+ * Based on AT91SAM9G45 preliminary datasheet.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91SAM9G45_H
+#define AT91SAM9G45_H
+
+/*
+ * Peripheral identifiers/interrupts.
+ */
+#define AT91_ID_FIQ		0	/* Advanced Interrupt Controller (FIQ) */
+#define AT91_ID_SYS		1	/* System Controller Interrupt */
+#define AT91SAM9G45_ID_PIOA	2	/* Parallel I/O Controller A */
+#define AT91SAM9G45_ID_PIOB	3	/* Parallel I/O Controller B */
+#define AT91SAM9G45_ID_PIOC	4	/* Parallel I/O Controller C */
+#define AT91SAM9G45_ID_PIODE	5	/* Parallel I/O Controller D and E */
+#define AT91SAM9G45_ID_TRNG	6	/* True Random Number Generator */
+#define AT91SAM9G45_ID_US0	7	/* USART 0 */
+#define AT91SAM9G45_ID_US1	8	/* USART 1 */
+#define AT91SAM9G45_ID_US2	9	/* USART 2 */
+#define AT91SAM9G45_ID_US3	10	/* USART 3 */
+#define AT91SAM9G45_ID_MCI0	11	/* High Speed Multimedia Card Interface 0 */
+#define AT91SAM9G45_ID_TWI0	12	/* Two-Wire Interface 0 */
+#define AT91SAM9G45_ID_TWI1	13	/* Two-Wire Interface 1 */
+#define AT91SAM9G45_ID_SPI0	14	/* Serial Peripheral Interface 0 */
+#define AT91SAM9G45_ID_SPI1	15	/* Serial Peripheral Interface 1 */
+#define AT91SAM9G45_ID_SSC0	16	/* Synchronous Serial Controller 0 */
+#define AT91SAM9G45_ID_SSC1	17	/* Synchronous Serial Controller 1 */
+#define AT91SAM9G45_ID_TCB	18	/* Timer Counter 0, 1, 2, 3, 4 and 5 */
+#define AT91SAM9G45_ID_PWMC	19	/* Pulse Width Modulation Controller */
+#define AT91SAM9G45_ID_TSC	20	/* Touch Screen ADC Controller */
+#define AT91SAM9G45_ID_DMA	21	/* DMA Controller */
+#define AT91SAM9G45_ID_UHPHS	22	/* USB Host High Speed */
+#define AT91SAM9G45_ID_LCDC	23	/* LCD Controller */
+#define AT91SAM9G45_ID_AC97C	24	/* AC97 Controller */
+#define AT91SAM9G45_ID_EMAC	25	/* Ethernet MAC */
+#define AT91SAM9G45_ID_ISI	26	/* Image Sensor Interface */
+#define AT91SAM9G45_ID_UDPHS	27	/* USB Device High Speed */
+#define AT91SAM9G45_ID_AESTDESSHA 28	/* AES + T-DES + SHA */
+#define AT91SAM9G45_ID_MCI1	29	/* High Speed Multimedia Card Interface 1 */
+#define AT91SAM9G45_ID_VDEC	30	/* Video Decoder */
+#define AT91SAM9G45_ID_IRQ0	31	/* Advanced Interrupt Controller */
+
+/*
+ * User Peripheral physical base addresses.
+ */
+#define AT91SAM9G45_BASE_UDPHS		0xfff78000
+#define AT91SAM9G45_BASE_TCB0		0xfff7c000
+#define AT91SAM9G45_BASE_TC0		0xfff7c000
+#define AT91SAM9G45_BASE_TC1		0xfff7c040
+#define AT91SAM9G45_BASE_TC2		0xfff7c080
+#define AT91SAM9G45_BASE_MCI0		0xfff80000
+#define AT91SAM9G45_BASE_TWI0		0xfff84000
+#define AT91SAM9G45_BASE_TWI1		0xfff88000
+#define AT91SAM9G45_BASE_US0		0xfff8c000
+#define AT91SAM9G45_BASE_US1		0xfff90000
+#define AT91SAM9G45_BASE_US2		0xfff94000
+#define AT91SAM9G45_BASE_US3		0xfff98000
+#define AT91SAM9G45_BASE_SSC0		0xfff9c000
+#define AT91SAM9G45_BASE_SSC1		0xfffa0000
+#define AT91SAM9G45_BASE_SPI0		0xfffa4000
+#define AT91SAM9G45_BASE_SPI1		0xfffa8000
+#define AT91SAM9G45_BASE_AC97C		0xfffac000
+#define AT91SAM9G45_BASE_TSC		0xfffb0000
+#define AT91SAM9G45_BASE_ISI		0xfffb4000
+#define AT91SAM9G45_BASE_PWMC		0xfffb8000
+#define AT91SAM9G45_BASE_EMAC		0xfffbc000
+#define AT91SAM9G45_BASE_AES		0xfffc0000
+#define AT91SAM9G45_BASE_TDES		0xfffc4000
+#define AT91SAM9G45_BASE_SHA		0xfffc8000
+#define AT91SAM9G45_BASE_TRNG		0xfffcc000
+#define AT91SAM9G45_BASE_MCI1		0xfffd0000
+#define AT91SAM9G45_BASE_TCB1		0xfffd4000
+#define AT91SAM9G45_BASE_TC3		0xfffd4000
+#define AT91SAM9G45_BASE_TC4		0xfffd4040
+#define AT91SAM9G45_BASE_TC5		0xfffd4080
+#define AT91_BASE_SYS			0xffffe200
+
+/*
+ * System Peripherals (offset from AT91_BASE_SYS)
+ */
+#define AT91_ECC	(0xffffe200 - AT91_BASE_SYS)
+#define AT91_DDRSDRC1	(0xffffe400 - AT91_BASE_SYS)
+#define AT91_DDRSDRC0	(0xffffe600 - AT91_BASE_SYS)
+#define AT91_SMC	(0xffffe800 - AT91_BASE_SYS)
+#define AT91_MATRIX	(0xffffea00 - AT91_BASE_SYS)
+#define AT91_DMA	(0xffffec00 - AT91_BASE_SYS)
+#define AT91_DBGU	(0xffffee00 - AT91_BASE_SYS)
+#define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
+#define AT91_PIOA	(0xfffff200 - AT91_BASE_SYS)
+#define AT91_PIOB	(0xfffff400 - AT91_BASE_SYS)
+#define AT91_PIOC	(0xfffff600 - AT91_BASE_SYS)
+#define AT91_PIOD	(0xfffff800 - AT91_BASE_SYS)
+#define AT91_PIOE	(0xfffffa00 - AT91_BASE_SYS)
+#define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
+#define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
+#define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
+#define AT91_RTT	(0xfffffd20 - AT91_BASE_SYS)
+#define AT91_PIT	(0xfffffd30 - AT91_BASE_SYS)
+#define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
+#define AT91_GPBR	(0xfffffd60 - AT91_BASE_SYS)
+#define AT91_RTC	(0xfffffdb0 - AT91_BASE_SYS)
+
+#define AT91_USART0	AT91SAM9G45_BASE_US0
+#define AT91_USART1	AT91SAM9G45_BASE_US1
+#define AT91_USART2	AT91SAM9G45_BASE_US2
+#define AT91_USART3	AT91SAM9G45_BASE_US3
+
+/*
+ * Internal Memory.
+ */
+#define AT91SAM9G45_SRAM_BASE	0x00300000	/* Internal SRAM base address */
+#define AT91SAM9G45_SRAM_SIZE	SZ_64K		/* Internal SRAM size (64Kb) */
+
+#define AT91SAM9G45_ROM_BASE	0x00400000	/* Internal ROM base address */
+#define AT91SAM9G45_ROM_SIZE	SZ_64K		/* Internal ROM size (64Kb) */
+
+#define AT91SAM9G45_LCDC_BASE	0x00500000	/* LCD Controller */
+#define AT91SAM9G45_UDPHS_FIFO	0x00600000	/* USB Device HS controller */
+#define AT91SAM9G45_OHCI_BASE	0x00700000	/* USB Host controller (OHCI) */
+#define AT91SAM9G45_EHCI_BASE	0x00800000	/* USB Host controller (EHCI) */
+#define AT91SAM9G45_VDEC_BASE	0x00900000	/* Video Decoder Controller */
+
+#define CONFIG_DRAM_BASE	AT91_CHIPSELECT_6
+
+#define CONSISTENT_DMA_SIZE	SZ_4M
+
+/*
+ * DMA peripheral identifiers
+ * for hardware handshaking interface
+ */
+#define AT_DMA_ID_MCI0		 0
+#define AT_DMA_ID_SPI0_TX	 1
+#define AT_DMA_ID_SPI0_RX	 2
+#define AT_DMA_ID_SPI1_TX	 3
+#define AT_DMA_ID_SPI1_RX	 4
+#define AT_DMA_ID_SSC0_TX	 5
+#define AT_DMA_ID_SSC0_RX	 6
+#define AT_DMA_ID_SSC1_TX	 7
+#define AT_DMA_ID_SSC1_RX	 8
+#define AT_DMA_ID_AC97_TX	 9
+#define AT_DMA_ID_AC97_RX	10
+#define AT_DMA_ID_MCI1		13
+
+/*
+ * Cpu Name
+ */
+#define AT91_CPU_NAME	"AT91SAM9G45"
+
+#endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45_matrix.h b/arch/arm/mach-at91/include/mach/at91sam9g45_matrix.h
new file mode 100644
index 0000000..c972d60
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91sam9g45_matrix.h
@@ -0,0 +1,153 @@
+/*
+ * Matrix-centric header file for the AT91SAM9G45 family
+ *
+ *  Copyright (C) 2008-2009 Atmel Corporation.
+ *
+ * Memory Controllers (MATRIX, EBI) - System peripherals registers.
+ * Based on AT91SAM9G45 preliminary datasheet.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91SAM9G45_MATRIX_H
+#define AT91SAM9G45_MATRIX_H
+
+#define AT91_MATRIX_MCFG0	(AT91_MATRIX + 0x00)	/* Master Configuration Register 0 */
+#define AT91_MATRIX_MCFG1	(AT91_MATRIX + 0x04)	/* Master Configuration Register 1 */
+#define AT91_MATRIX_MCFG2	(AT91_MATRIX + 0x08)	/* Master Configuration Register 2 */
+#define AT91_MATRIX_MCFG3	(AT91_MATRIX + 0x0C)	/* Master Configuration Register 3 */
+#define AT91_MATRIX_MCFG4	(AT91_MATRIX + 0x10)	/* Master Configuration Register 4 */
+#define AT91_MATRIX_MCFG5	(AT91_MATRIX + 0x14)	/* Master Configuration Register 5 */
+#define AT91_MATRIX_MCFG6	(AT91_MATRIX + 0x18)	/* Master Configuration Register 6 */
+#define AT91_MATRIX_MCFG7	(AT91_MATRIX + 0x1C)	/* Master Configuration Register 7 */
+#define AT91_MATRIX_MCFG8	(AT91_MATRIX + 0x20)	/* Master Configuration Register 8 */
+#define AT91_MATRIX_MCFG9	(AT91_MATRIX + 0x24)	/* Master Configuration Register 9 */
+#define AT91_MATRIX_MCFG10	(AT91_MATRIX + 0x28)	/* Master Configuration Register 10 */
+#define AT91_MATRIX_MCFG11	(AT91_MATRIX + 0x2C)	/* Master Configuration Register 11 */
+#define		AT91_MATRIX_ULBT	(7 << 0)	/* Undefined Length Burst Type */
+#define			AT91_MATRIX_ULBT_INFINITE	(0 << 0)
+#define			AT91_MATRIX_ULBT_SINGLE		(1 << 0)
+#define			AT91_MATRIX_ULBT_FOUR		(2 << 0)
+#define			AT91_MATRIX_ULBT_EIGHT		(3 << 0)
+#define			AT91_MATRIX_ULBT_SIXTEEN	(4 << 0)
+#define			AT91_MATRIX_ULBT_THIRTYTWO	(5 << 0)
+#define			AT91_MATRIX_ULBT_SIXTYFOUR	(6 << 0)
+#define			AT91_MATRIX_ULBT_128		(7 << 0)
+
+#define AT91_MATRIX_SCFG0	(AT91_MATRIX + 0x40)	/* Slave Configuration Register 0 */
+#define AT91_MATRIX_SCFG1	(AT91_MATRIX + 0x44)	/* Slave Configuration Register 1 */
+#define AT91_MATRIX_SCFG2	(AT91_MATRIX + 0x48)	/* Slave Configuration Register 2 */
+#define AT91_MATRIX_SCFG3	(AT91_MATRIX + 0x4C)	/* Slave Configuration Register 3 */
+#define AT91_MATRIX_SCFG4	(AT91_MATRIX + 0x50)	/* Slave Configuration Register 4 */
+#define AT91_MATRIX_SCFG5	(AT91_MATRIX + 0x54)	/* Slave Configuration Register 5 */
+#define AT91_MATRIX_SCFG6	(AT91_MATRIX + 0x58)	/* Slave Configuration Register 6 */
+#define AT91_MATRIX_SCFG7	(AT91_MATRIX + 0x5C)	/* Slave Configuration Register 7 */
+#define		AT91_MATRIX_SLOT_CYCLE		(0x1ff << 0)	/* Maximum Number of Allowed Cycles for a Burst */
+#define		AT91_MATRIX_DEFMSTR_TYPE	(3    << 16)	/* Default Master Type */
+#define			AT91_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
+#define			AT91_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
+#define			AT91_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
+#define		AT91_MATRIX_FIXED_DEFMSTR	(0xf  << 18)	/* Fixed Index of Default Master */
+
+#define AT91_MATRIX_PRAS0	(AT91_MATRIX + 0x80)	/* Priority Register A for Slave 0 */
+#define AT91_MATRIX_PRBS0	(AT91_MATRIX + 0x84)	/* Priority Register B for Slave 0 */
+#define AT91_MATRIX_PRAS1	(AT91_MATRIX + 0x88)	/* Priority Register A for Slave 1 */
+#define AT91_MATRIX_PRBS1	(AT91_MATRIX + 0x8C)	/* Priority Register B for Slave 1 */
+#define AT91_MATRIX_PRAS2	(AT91_MATRIX + 0x90)	/* Priority Register A for Slave 2 */
+#define AT91_MATRIX_PRBS2	(AT91_MATRIX + 0x94)	/* Priority Register B for Slave 2 */
+#define AT91_MATRIX_PRAS3	(AT91_MATRIX + 0x98)	/* Priority Register A for Slave 3 */
+#define AT91_MATRIX_PRBS3	(AT91_MATRIX + 0x9C)	/* Priority Register B for Slave 3 */
+#define AT91_MATRIX_PRAS4	(AT91_MATRIX + 0xA0)	/* Priority Register A for Slave 4 */
+#define AT91_MATRIX_PRBS4	(AT91_MATRIX + 0xA4)	/* Priority Register B for Slave 4 */
+#define AT91_MATRIX_PRAS5	(AT91_MATRIX + 0xA8)	/* Priority Register A for Slave 5 */
+#define AT91_MATRIX_PRBS5	(AT91_MATRIX + 0xAC)	/* Priority Register B for Slave 5 */
+#define AT91_MATRIX_PRAS6	(AT91_MATRIX + 0xB0)	/* Priority Register A for Slave 6 */
+#define AT91_MATRIX_PRBS6	(AT91_MATRIX + 0xB4)	/* Priority Register B for Slave 6 */
+#define AT91_MATRIX_PRAS7	(AT91_MATRIX + 0xB8)	/* Priority Register A for Slave 7 */
+#define AT91_MATRIX_PRBS7	(AT91_MATRIX + 0xBC)	/* Priority Register B for Slave 7 */
+#define		AT91_MATRIX_M0PR		(3 << 0)	/* Master 0 Priority */
+#define		AT91_MATRIX_M1PR		(3 << 4)	/* Master 1 Priority */
+#define		AT91_MATRIX_M2PR		(3 << 8)	/* Master 2 Priority */
+#define		AT91_MATRIX_M3PR		(3 << 12)	/* Master 3 Priority */
+#define		AT91_MATRIX_M4PR		(3 << 16)	/* Master 4 Priority */
+#define		AT91_MATRIX_M5PR		(3 << 20)	/* Master 5 Priority */
+#define		AT91_MATRIX_M6PR		(3 << 24)	/* Master 6 Priority */
+#define		AT91_MATRIX_M7PR		(3 << 28)	/* Master 7 Priority */
+#define		AT91_MATRIX_M8PR		(3 << 0)	/* Master 8 Priority (in Register B) */
+#define		AT91_MATRIX_M9PR		(3 << 4)	/* Master 9 Priority (in Register B) */
+#define		AT91_MATRIX_M10PR		(3 << 8)	/* Master 10 Priority (in Register B) */
+#define		AT91_MATRIX_M11PR		(3 << 12)	/* Master 11 Priority (in Register B) */
+
+#define AT91_MATRIX_MRCR	(AT91_MATRIX + 0x100)	/* Master Remap Control Register */
+#define		AT91_MATRIX_RCB0		(1 << 0)	/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
+#define		AT91_MATRIX_RCB1		(1 << 1)	/* Remap Command for AHB Master 1 (ARM926EJ-S Data Master) */
+#define		AT91_MATRIX_RCB2		(1 << 2)
+#define		AT91_MATRIX_RCB3		(1 << 3)
+#define		AT91_MATRIX_RCB4		(1 << 4)
+#define		AT91_MATRIX_RCB5		(1 << 5)
+#define		AT91_MATRIX_RCB6		(1 << 6)
+#define		AT91_MATRIX_RCB7		(1 << 7)
+#define		AT91_MATRIX_RCB8		(1 << 8)
+#define		AT91_MATRIX_RCB9		(1 << 9)
+#define		AT91_MATRIX_RCB10		(1 << 10)
+#define		AT91_MATRIX_RCB11		(1 << 11)
+
+#define AT91_MATRIX_TCMR	(AT91_MATRIX + 0x110)	/* TCM Configuration Register */
+#define		AT91_MATRIX_ITCM_SIZE		(0xf << 0)	/* Size of ITCM enabled memory block */
+#define			AT91_MATRIX_ITCM_0		(0 << 0)
+#define			AT91_MATRIX_ITCM_32		(6 << 0)
+#define		AT91_MATRIX_DTCM_SIZE		(0xf << 4)	/* Size of DTCM enabled memory block */
+#define			AT91_MATRIX_DTCM_0		(0 << 4)
+#define			AT91_MATRIX_DTCM_32		(6 << 4)
+#define			AT91_MATRIX_DTCM_64		(7 << 4)
+#define		AT91_MATRIX_TCM_NWS		(0x1 << 11)	/* Wait state TCM register */
+#define			AT91_MATRIX_TCM_NO_WS		(0x0 << 11)
+#define			AT91_MATRIX_TCM_ONE_WS		(0x1 << 11)
+
+#define AT91_MATRIX_VIDEO	(AT91_MATRIX + 0x118)	/* Video Mode Configuration Register */
+#define		AT91C_VDEC_SEL			(0x1 <<  0) /* Video Mode Selection */
+#define			AT91C_VDEC_SEL_OFF		(0 << 0)
+#define			AT91C_VDEC_SEL_ON		(1 << 0)
+
+#define AT91_MATRIX_EBICSA	(AT91_MATRIX + 0x128)	/* EBI Chip Select Assignment Register */
+#define		AT91_MATRIX_EBI_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
+#define			AT91_MATRIX_EBI_CS1A_SMC		(0 << 1)
+#define			AT91_MATRIX_EBI_CS1A_SDRAMC		(1 << 1)
+#define		AT91_MATRIX_EBI_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
+#define			AT91_MATRIX_EBI_CS3A_SMC		(0 << 3)
+#define			AT91_MATRIX_EBI_CS3A_SMC_SMARTMEDIA	(1 << 3)
+#define		AT91_MATRIX_EBI_CS4A		(1 << 4)	/* Chip Select 4 Assignment */
+#define			AT91_MATRIX_EBI_CS4A_SMC		(0 << 4)
+#define			AT91_MATRIX_EBI_CS4A_SMC_CF0		(1 << 4)
+#define		AT91_MATRIX_EBI_CS5A		(1 << 5)	/* Chip Select 5 Assignment */
+#define			AT91_MATRIX_EBI_CS5A_SMC		(0 << 5)
+#define			AT91_MATRIX_EBI_CS5A_SMC_CF1		(1 << 5)
+#define		AT91_MATRIX_EBI_DBPUC		(1 << 8)	/* Data Bus Pull-up Configuration */
+#define			AT91_MATRIX_EBI_DBPU_ON			(0 << 8)
+#define			AT91_MATRIX_EBI_DBPU_OFF		(1 << 8)
+#define		AT91_MATRIX_EBI_VDDIOMSEL	(1 << 16)	/* Memory voltage selection */
+#define			AT91_MATRIX_EBI_VDDIOMSEL_1_8V		(0 << 16)
+#define			AT91_MATRIX_EBI_VDDIOMSEL_3_3V		(1 << 16)
+#define		AT91_MATRIX_EBI_EBI_IOSR	(1 << 17)	/* EBI I/O slew rate selection */
+#define			AT91_MATRIX_EBI_EBI_IOSR_REDUCED	(0 << 17)
+#define			AT91_MATRIX_EBI_EBI_IOSR_NORMAL		(1 << 17)
+#define		AT91_MATRIX_EBI_DDR_IOSR	(1 << 18)	/* DDR2 dedicated port I/O slew rate selection */
+#define			AT91_MATRIX_EBI_DDR_IOSR_REDUCED	(0 << 18)
+#define			AT91_MATRIX_EBI_DDR_IOSR_NORMAL		(1 << 18)
+
+#define AT91_MATRIX_WPMR	(AT91_MATRIX + 0x1E4)	/* Write Protect Mode Register */
+#define		AT91_MATRIX_WPMR_WPEN		(1 << 0)	/* Write Protect ENable */
+#define			AT91_MATRIX_WPMR_WP_WPDIS		(0 << 0)
+#define			AT91_MATRIX_WPMR_WP_WPEN		(1 << 0)
+#define		AT91_MATRIX_WPMR_WPKEY		(0xFFFFFF << 8)	/* Write Protect KEY */
+
+#define AT91_MATRIX_WPSR	(AT91_MATRIX + 0x1E8)	/* Write Protect Status Register */
+#define		AT91_MATRIX_WPSR_WPVS		(1 << 0)	/* Write Protect Violation Status */
+#define			AT91_MATRIX_WPSR_NO_WPV		(0 << 0)
+#define			AT91_MATRIX_WPSR_WPV		(1 << 0)
+#define		AT91_MATRIX_WPSR_WPVSRC		(0xFFFF << 8)	/* Write Protect Violation Source */
+
+#endif
diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/arch/arm/mach-at91/include/mach/cpu.h
index 833659d..3bef931 100644
--- a/arch/arm/mach-at91/include/mach/cpu.h
+++ b/arch/arm/mach-at91/include/mach/cpu.h
@@ -52,6 +52,7 @@ static inline unsigned long at91_cpu_fully_identify(void)
 
 #define ARCH_EXID_AT91SAM9M11	0x00000001
 #define ARCH_EXID_AT91SAM9M10	0x00000002
+#define ARCH_EXID_AT91SAM9G46	0x00000003
 #define ARCH_EXID_AT91SAM9G45	0x00000004
 
 static inline unsigned long at91_exid_identify(void)
@@ -128,9 +129,18 @@ static inline unsigned long at91cap9_rev_identify(void)
 #ifdef CONFIG_ARCH_AT91SAM9G45
 #define cpu_is_at91sam9g45()	(at91_cpu_identify() == ARCH_ID_AT91SAM9G45)
 #define cpu_is_at91sam9g45es()	(at91_cpu_fully_identify() == ARCH_ID_AT91SAM9G45ES)
+#define cpu_is_at91sam9m10()    (cpu_is_at91sam9g45() && \
+                                (at91_exid_identify() == ARCH_EXID_AT91SAM9M10))
+#define cpu_is_at91sam9m46()    (cpu_is_at91sam9g45() && \
+                                (at91_exid_identify() == ARCH_EXID_AT91SAM9G46))
+#define cpu_is_at91sam9m11()    (cpu_is_at91sam9g45() && \
+                                (at91_exid_identify() == ARCH_EXID_AT91SAM9M11))
 #else
 #define cpu_is_at91sam9g45()	(0)
 #define cpu_is_at91sam9g45es()	(0)
+#define cpu_is_at91sam9m10()	(0)
+#define cpu_is_at91sam9g46()	(0)
+#define cpu_is_at91sam9m11()	(0)
 #endif
 
 #ifdef CONFIG_ARCH_AT91CAP9
diff --git a/arch/arm/mach-at91/include/mach/hardware.h b/arch/arm/mach-at91/include/mach/hardware.h
index 82b574e..fcb1bd4 100644
--- a/arch/arm/mach-at91/include/mach/hardware.h
+++ b/arch/arm/mach-at91/include/mach/hardware.h
@@ -24,7 +24,7 @@
 #include <mach/at91sam9263.h>
 #elif defined(CONFIG_ARCH_AT91SAM9RL)
 #include <mach/at91sam9rl.h>
-#elif defined(CONFIG_ARCH_AT91SAM9G45) || defined(CONFIG_ARCH_AT91SAM9M10G45)
+#elif defined(CONFIG_ARCH_AT91SAM9G45)
 #include <mach/at91sam9g45.h>
 #elif defined(CONFIG_ARCH_AT91CAP9)
 #include <mach/at91cap9.h>
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
