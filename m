Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDUmE-0000Up-M4
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 05:53:38 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E05D3FF8BF3
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 07:53:59 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 07:38:29 +0200
Message-Id: <1333085909-31119-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330045639.GZ444@game.jcrosoft.org>
References: <20120330045639.GZ444@game.jcrosoft.org>
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
Subject: [PATCH 9/9] AT91: at91sam9x5: add chip and board file
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

Fow now use Soft ECC for nand util we add the PMECC.

On-chip and board related peripherals definitions.
Basic implementation for VB board.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/at91sam9x5ek/Makefile              |    1 +
 arch/arm/boards/at91sam9x5ek/config.h              |    6 +
 arch/arm/boards/at91sam9x5ek/env/config            |   38 +++
 arch/arm/boards/at91sam9x5ek/init.c                |  167 +++++++++++
 arch/arm/configs/at91sam9x5ek_defconfig            |   69 +++++
 arch/arm/mach-at91/Kconfig                         |   25 ++
 arch/arm/mach-at91/Makefile                        |    1 +
 arch/arm/mach-at91/at91sam9x5.c                    |  314 ++++++++++++++++++++
 arch/arm/mach-at91/at91sam9x5_devices.c            |  270 +++++++++++++++++
 arch/arm/mach-at91/clock.c                         |   82 ++++-
 arch/arm/mach-at91/include/mach/at91_pmc.h         |   68 ++++-
 arch/arm/mach-at91/include/mach/at91sam9x5.h       |  179 +++++++++++
 .../arm/mach-at91/include/mach/at91sam9x5_matrix.h |  139 +++++++++
 arch/arm/mach-at91/include/mach/hardware.h         |    2 +
 15 files changed, 1329 insertions(+), 33 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9x5ek/Makefile
 create mode 100644 arch/arm/boards/at91sam9x5ek/config.h
 create mode 100644 arch/arm/boards/at91sam9x5ek/env/config
 create mode 100644 arch/arm/boards/at91sam9x5ek/init.c
 create mode 100644 arch/arm/configs/at91sam9x5ek_defconfig
 create mode 100644 arch/arm/mach-at91/at91sam9x5.c
 create mode 100644 arch/arm/mach-at91/at91sam9x5_devices.c
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9x5.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam9x5_matrix.h

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index bf46ca3..5299486 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -72,6 +72,7 @@ board-$(CONFIG_MACH_AT91SAM9261EK)		:= at91sam9261ek
 board-$(CONFIG_MACH_AT91SAM9263EK)		:= at91sam9263ek
 board-$(CONFIG_MACH_AT91SAM9G10EK)		:= at91sam9261ek
 board-$(CONFIG_MACH_AT91SAM9G20EK)		:= at91sam9260ek
+board-$(CONFIG_MACH_AT91SAM9X5EK)		:= at91sam9x5ek
 board-$(CONFIG_MACH_AT91SAM9M10G45EK)		:= at91sam9m10g45ek
 board-$(CONFIG_MACH_DSS11)			:= dss11
 board-$(CONFIG_MACH_EDB9301)			:= edb93xx
diff --git a/arch/arm/boards/at91sam9x5ek/Makefile b/arch/arm/boards/at91sam9x5ek/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/at91sam9x5ek/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/at91sam9x5ek/config.h b/arch/arm/boards/at91sam9x5ek/config.h
new file mode 100644
index 0000000..d971810
--- /dev/null
+++ b/arch/arm/boards/at91sam9x5ek/config.h
@@ -0,0 +1,6 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		12000000	/* 12 MHz crystal */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9x5ek/env/config b/arch/arm/boards/at91sam9x5ek/env/config
new file mode 100644
index 0000000..cc72867
--- /dev/null
+++ b/arch/arm/boards/at91sam9x5ek/env/config
@@ -0,0 +1,38 @@
+#!/bin/sh
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp-barebox
+dhcp_vendor_id=barebox-at91sam9x5ek
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=nfs
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root.$rootfs_type
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+kernelimage=zImage
+#kernelimage=uImage
+#kernelimage=Image
+#kernelimage=Image.lzo
+
+nand_device=atmel_nand
+nand_parts="256k(at91bootstrap),384k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),1152k(free),6M(kernel),120M(rootfs),-(data)"
+rootfs_mtdblock_nand=5
+
+autoboot_timeout=3
+
+bootargs="console=ttyS0,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
new file mode 100644
index 0000000..1839dd6
--- /dev/null
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -0,0 +1,167 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+#include <fec.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <io.h>
+#include <asm/hardware.h>
+#include <nand.h>
+#include <sizes.h>
+#include <linux/mtd/nand.h>
+#include <mach/board.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/sam9_smc.h>
+#include <gpio.h>
+#include <mach/io.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_rstc.h>
+#include <gpio_keys.h>
+#include <readkey.h>
+
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+	.det_pin	= 0,
+	.rdy_pin	= AT91_PIN_PD5,
+	.enable_pin	= AT91_PIN_PD4,
+#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
+	.bus_width_16	= 1,
+#endif
+	.on_flash_bbt	= 1,
+};
+
+static struct sam9_smc_config cm_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 1,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 1,
+
+	.ncs_read_pulse		= 6,
+	.nrd_pulse		= 4,
+	.ncs_write_pulse	= 5,
+	.nwe_pulse		= 3,
+
+	.read_cycle		= 6,
+	.write_cycle		= 5,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.tdf_cycles		= 1,
+};
+
+static void ek_add_device_nand(void)
+{
+	/* setup bus-width (8 or 16) */
+	if (nand_pdata.bus_width_16)
+		cm_nand_smc_config.mode |= AT91_SMC_DBW_16;
+	else
+		cm_nand_smc_config.mode |= AT91_SMC_DBW_8;
+
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(3, &cm_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+
+static struct at91_ether_platform_data macb_pdata = {
+	.flags    = AT91SAM_ETHER_RMII,
+	.phy_addr = 0,
+};
+
+/*
+ * USB Host port
+ */
+static struct at91_usbh_data __initdata ek_usbh_data = {
+	.ports		= 2,
+	.vbus_pin	= {AT91_PIN_PD20, AT91_PIN_PD19},
+};
+
+struct gpio_led leds[] = {
+	{
+		.gpio	= AT91_PIN_PB18,
+		.active_low	= 1,
+		.led	= {
+			.name = "d1",
+		},
+	}, {
+		.gpio	= AT91_PIN_PD21,
+		.led	= {
+			.name = "d2",
+		},
+	},
+};
+
+static void __init ek_add_led(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(leds); i++) {
+		at91_set_gpio_output(leds[i].gpio, leds[i].active_low);
+		led_gpio_register(&leds[i]);
+	}
+	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[0].led);
+}
+
+static int at91sam9x5ek_mem_init(void)
+{
+	at91_add_device_sdram(128 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(at91sam9x5ek_mem_init);
+
+static int at91sam9x5ek_devices_init(void)
+{
+	ek_add_device_nand();
+	at91_add_device_eth(0, &macb_pdata);
+	at91_add_device_usbh_ohci(&ek_usbh_data);
+	ek_add_led();
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
+	armlinux_set_architecture(CONFIG_MACH_AT91SAM9X5EK);
+
+	devfs_add_partition("nand0", 0x00000, SZ_256K, PARTITION_FIXED, "at91bootstrap_raw");
+	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
+	devfs_add_partition("nand0", SZ_256K, SZ_256K + SZ_128K, PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", SZ_512K + SZ_128K, SZ_128K, PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+	devfs_add_partition("nand0", SZ_512K + SZ_256K, SZ_128K, PARTITION_FIXED, "env_raw1");
+	dev_add_bb_dev("env_raw1", "env1");
+
+	return 0;
+}
+device_initcall(at91sam9x5ek_devices_init);
+
+static int at91sam9x5ek_console_init(void)
+{
+	at91_register_uart(0, 0);
+	at91_register_uart(1, 0);
+	at91_register_uart(2, 0);
+	return 0;
+}
+console_initcall(at91sam9x5ek_console_init);
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
new file mode 100644
index 0000000..aee21fd
--- /dev/null
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -0,0 +1,69 @@
+CONFIG_ARCH_AT91SAM9X5=y
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="9G20-EK:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9x5ek/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_DRIVER_NET_MACB=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
+CONFIG_DISK=y
+CONFIG_DISK_WRITE=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_KEYBOARD_GPIO=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_ZLIB=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index d2bb7bc..989d3d8 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -13,6 +13,7 @@ config BOARDINFO
 	default "Atmel at91sam9g10-ek" if MACH_AT91SAM9G10EK
 	default "Atmel at91sam9g20-ek" if MACH_AT91SAM9G20EK
 	default "Atmel at91sam9m10g45-ek" if MACH_AT91SAM9M10G45EK
+	default "Atmel at91sam9x5-ek" if MACH_AT91SAM9X5EK
 	default "Bucyrus MMC-CPU" if MACH_MMCCPU
 	default "Calao USB-A9260" if MACH_USB_A9260
 	default "Calao USB-A9263" if MACH_USB_A9263
@@ -81,6 +82,12 @@ config ARCH_AT91SAM9G45
 	select HAS_MACB
 	select AT91SAM9G45_RESET
 
+config ARCH_AT91SAM9X5
+	bool "AT91SAM9X5"
+	select CPU_ARM926T
+	select HAS_MACB
+	select AT91SAM9G45_RESET
+
 endchoice
 
 config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
@@ -91,6 +98,7 @@ config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	default 0x4000 if ARCH_AT91SAM9G20
 	default 0x3000 if ARCH_AT91SAM9G10
 	default 0xF000 if ARCH_AT91SAM9G45
+	default 0x6000 if ARCH_AT91SAM9X5
 	default 0xffffffff
 
 config SUPPORT_CALAO_DAB_MMX
@@ -294,6 +302,23 @@ endif
 
 # ----------------------------------------------------------
 
+if ARCH_AT91SAM9X5
+
+choice
+	prompt "AT91SAM9x5 Series Board Type"
+
+config MACH_AT91SAM9X5EK
+	bool "Atmel AT91SAM9x5 Series Evaluation Kit"
+	help
+	  Select this if you re using Atmel's AT91SAM9x5-EK Evaluation Kit.
+	  Supported chips are sam9g15, sam9g25, sam9x25, sam9g35 and sam9x35.
+
+endchoice
+
+endif
+
+# ----------------------------------------------------------
+
 comment "AT91 Board Options"
 
 config MTD_NAND_ATMEL_BUSWIDTH_16
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 219f75c..491c454 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -15,3 +15,4 @@ obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam926x_time.o at91sam9263_d
 obj-$(CONFIG_ARCH_AT91SAM9G10) += at91sam9261.o at91sam926x_time.o at91sam9261_devices.o sam9_smc.o
 obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260.o at91sam926x_time.o at91sam9260_devices.o sam9_smc.o
 obj-$(CONFIG_ARCH_AT91SAM9G45) += at91sam9g45.o at91sam926x_time.o at91sam9g45_devices.o sam9_smc.o
+obj-$(CONFIG_ARCH_AT91SAM9X5)	+= at91sam9x5.o at91sam926x_time.o at91sam9x5_devices.o sam9_smc.o
diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
new file mode 100644
index 0000000..c256989
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -0,0 +1,314 @@
+#include <common.h>
+#include <gpio.h>
+#include <init.h>
+#include <asm/hardware.h>
+#include <mach/at91_pmc.h>
+#include <mach/io.h>
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
+static struct clk pioAB_clk = {
+	.name		= "pioAB_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_PIOAB,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pioCD_clk = {
+	.name		= "pioCD_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_PIOCD,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk smd_clk = {
+	.name		= "smd_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_SMD,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart0_clk = {
+	.name		= "usart0_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_USART0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart1_clk = {
+	.name		= "usart1_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_USART1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk usart2_clk = {
+	.name		= "usart2_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_USART2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+/* USART3 clock - Only for sam9g25/sam9x25 */
+static struct clk usart3_clk = {
+	.name		= "usart3_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_USART3,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk twi0_clk = {
+	.name		= "twi0_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_TWI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk twi1_clk = {
+	.name		= "twi1_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_TWI1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk twi2_clk = {
+	.name		= "twi2_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_TWI2,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk mmc0_clk = {
+	.name		= "mci0_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_MCI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi0_clk = {
+	.name		= "spi0_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_SPI0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk spi1_clk = {
+	.name		= "spi1_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_SPI1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk uart0_clk = {
+	.name		= "uart0_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_UART0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk uart1_clk = {
+	.name		= "uart1_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_UART1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk tcb0_clk = {
+	.name		= "tcb0_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_TCB,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk pwm_clk = {
+	.name		= "pwm_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_PWM,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk adc_clk = {
+	.name		= "adc_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_ADC,
+	.type	= CLK_TYPE_PERIPHERAL,
+};
+static struct clk dma0_clk = {
+	.name		= "dma0_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_DMA0,
+	.type	= CLK_TYPE_PERIPHERAL,
+};
+static struct clk dma1_clk = {
+	.name		= "dma1_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_DMA1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk uhphs_clk = {
+	.name		= "uhphs",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_UHPHS,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk udphs_clk = {
+	.name		= "udphs_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_UDPHS,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+/* emac0 clock - Only for sam9g25/sam9x25/sam9g35/sam9x35 */
+static struct clk macb0_clk = {
+	.name		= "macb0_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_EMAC0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+/* lcd clock - Only for sam9g15/sam9g35/sam9x35 */
+static struct clk lcdc_clk = {
+	.name		= "lcdc_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_LCDC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+/* isi clock - Only for sam9g25 */
+static struct clk isi_clk = {
+	.name		= "isi_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_ISI,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk mmc1_clk = {
+	.name		= "mci1_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_MCI1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+/* emac1 clock - Only for sam9x25 */
+static struct clk macb1_clk = {
+	.name		= "macb1_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_EMAC1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+static struct clk ssc_clk = {
+	.name		= "ssc_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_SSC,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+/* can0 clock - Only for sam9x35 */
+static struct clk can0_clk = {
+	.name		= "can0_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_CAN0,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+/* can1 clock - Only for sam9x35 */
+static struct clk can1_clk = {
+	.name		= "can1_clk",
+	.pmc_mask	= 1 << AT91SAM9X5_ID_CAN1,
+	.type		= CLK_TYPE_PERIPHERAL,
+};
+
+static struct clk *periph_clocks[] __initdata = {
+	&pioAB_clk,
+	&pioCD_clk,
+	&smd_clk,
+	&usart0_clk,
+	&usart1_clk,
+	&usart2_clk,
+	&twi0_clk,
+	&twi1_clk,
+	&twi2_clk,
+	&mmc0_clk,
+	&spi0_clk,
+	&spi1_clk,
+	&uart0_clk,
+	&uart1_clk,
+	&tcb0_clk,
+	&pwm_clk,
+	&adc_clk,
+	&dma0_clk,
+	&dma1_clk,
+	&uhphs_clk,
+	&udphs_clk,
+	&mmc1_clk,
+	&ssc_clk,
+	// irq0
+};
+
+static struct clk_lookup periph_clocks_lookups[] = {
+	CLKDEV_CON_DEV_ID("macb_clk", "macb0", &macb0_clk),
+	CLKDEV_CON_DEV_ID("macb_clk", "macb1", &macb1_clk),
+	CLKDEV_CON_ID("ohci_clk", &uhphs_clk),
+};
+
+static struct clk_lookup usart_clocks_lookups[] = {
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart2", &usart1_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart3", &usart2_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart4", &usart3_clk),
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
+static void __init at91sam9x5_register_clocks(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
+		clk_register(periph_clocks[i]);
+
+	clkdev_add_table(periph_clocks_lookups,
+			 ARRAY_SIZE(periph_clocks_lookups));
+	clkdev_add_table(usart_clocks_lookups,
+			 ARRAY_SIZE(usart_clocks_lookups));
+
+	if (cpu_is_at91sam9g25()
+	|| cpu_is_at91sam9x25())
+		clk_register(&usart3_clk);
+
+	if (cpu_is_at91sam9g25()
+	|| cpu_is_at91sam9x25()
+	|| cpu_is_at91sam9g35()
+	|| cpu_is_at91sam9x35())
+		clk_register(&macb0_clk);
+
+	if (cpu_is_at91sam9g15()
+	|| cpu_is_at91sam9g35()
+	|| cpu_is_at91sam9x35())
+		clk_register(&lcdc_clk);
+
+	if (cpu_is_at91sam9g25())
+		clk_register(&isi_clk);
+
+	if (cpu_is_at91sam9x25())
+		clk_register(&macb1_clk);
+
+	if (cpu_is_at91sam9x25()
+	|| cpu_is_at91sam9x35()) {
+		clk_register(&can0_clk);
+		clk_register(&can1_clk);
+	}
+
+	clk_register(&pck0);
+	clk_register(&pck1);
+}
+
+/* --------------------------------------------------------------------
+ *  GPIO
+ * -------------------------------------------------------------------- */
+
+static struct at91_gpio_bank at91sam9x5_gpio[] = {
+	{
+		.regbase	= IOMEM(AT91_BASE_PIOA),
+		.clock		= &pioAB_clk,
+	}, {
+		.regbase	= IOMEM(AT91_BASE_PIOB),
+		.clock		= &pioAB_clk,
+	}, {
+		.regbase	= IOMEM(AT91_BASE_PIOC),
+		.clock		= &pioCD_clk,
+	}, {
+		.regbase	= IOMEM(AT91_BASE_PIOD),
+		.clock		= &pioCD_clk,
+	}
+};
+
+/* --------------------------------------------------------------------
+ *  AT91SAM9x5 processor initialization
+ * -------------------------------------------------------------------- */
+
+static int at91sam9x5_initialize(void)
+{
+	/* Init clock subsystem */
+	at91_clock_init(AT91_MAIN_CLOCK);
+
+	/* Register the processor-specific clocks */
+	at91sam9x5_register_clocks();
+
+	/* Register GPIO subsystem */
+	at91_gpio_init(at91sam9x5_gpio, 4);
+	return 0;
+}
+core_initcall(at91sam9x5_initialize);
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
new file mode 100644
index 0000000..76f67b0
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -0,0 +1,270 @@
+/*
+ *  On-Chip devices setup code for the AT91SAM9x5 family
+ *
+ *  Copyright (C) 2010 Atmel Corporation.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ */
+#include <common.h>
+#include <sizes.h>
+#include <asm/armlinux.h>
+#include <asm/hardware.h>
+#include <mach/board.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91sam9x5_matrix.h>
+#include <mach/gpio.h>
+#include <mach/io.h>
+#include <mach/cpu.h>
+
+#include "generic.h"
+
+void at91_add_device_sdram(u32 size)
+{
+	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
+	add_mem_device("sram0", AT91SAM9X5_SRAM_BASE,
+			AT91SAM9X5_SRAM_SIZE, IORESOURCE_MEM_WRITEABLE);
+}
+
+/* --------------------------------------------------------------------
+ *  USB Host (OHCI)
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_USB_OHCI)
+void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
+{
+	int i;
+
+	if (!data)
+		return;
+
+	/* Enable VBus control for UHP ports */
+	for (i = 0; i < data->ports; i++) {
+		if (data->vbus_pin[i])
+			at91_set_gpio_output(data->vbus_pin[i], 0);
+	}
+
+	add_generic_device("at91_ohci", -1, NULL, AT91SAM9X5_OHCI_BASE, SZ_1M,
+			   IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
+#endif
+
+#if defined(CONFIG_DRIVER_NET_MACB)
+void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
+{
+	resource_size_t start;
+
+	if (!data)
+		return;
+
+	if (cpu_is_at91sam9g15())
+		return;
+
+	if (id && !cpu_is_at91sam9x25())
+		return;
+
+	switch (id) {
+	case 0:
+		start = AT91SAM9X5_BASE_EMAC0;
+		/* Pins used for MII and RMII */
+		at91_set_A_periph(AT91_PIN_PB4,  0);	/* ETXCK_EREFCK */
+		at91_set_A_periph(AT91_PIN_PB3,  0);	/* ERXDV */
+		at91_set_A_periph(AT91_PIN_PB0,  0);	/* ERX0 */
+		at91_set_A_periph(AT91_PIN_PB1,  0);	/* ERX1 */
+		at91_set_A_periph(AT91_PIN_PB2,  0);	/* ERXER */
+		at91_set_A_periph(AT91_PIN_PB7,  0);	/* ETXEN */
+		at91_set_A_periph(AT91_PIN_PB9,  0);	/* ETX0 */
+		at91_set_A_periph(AT91_PIN_PB10, 0);	/* ETX1 */
+		at91_set_A_periph(AT91_PIN_PB5,  0);	/* EMDIO */
+		at91_set_A_periph(AT91_PIN_PB6,  0);	/* EMDC */
+
+		if (!(data->flags & AT91SAM_ETHER_RMII)) {
+			at91_set_A_periph(AT91_PIN_PB16, 0);	/* ECRS */
+			at91_set_A_periph(AT91_PIN_PB17, 0);	/* ECOL */
+			at91_set_A_periph(AT91_PIN_PB13, 0);	/* ERX2 */
+			at91_set_A_periph(AT91_PIN_PB14, 0);	/* ERX3 */
+			at91_set_A_periph(AT91_PIN_PB15, 0);	/* ERXCK */
+			at91_set_A_periph(AT91_PIN_PB11, 0);	/* ETX2 */
+			at91_set_A_periph(AT91_PIN_PB12, 0);	/* ETX3 */
+			at91_set_A_periph(AT91_PIN_PB8,  0);	/* ETXER */
+		}
+		break;
+	case 1:
+		start = AT91SAM9X5_BASE_EMAC1;
+		if (!(data->flags & AT91SAM_ETHER_RMII))
+			pr_warn("AT91: Only RMII available on interface macb%d.\n", id);
+
+		/* Pins used for RMII */
+		at91_set_B_periph(AT91_PIN_PC29,  0);	/* ETXCK_EREFCK */
+		at91_set_B_periph(AT91_PIN_PC28,  0);	/* ECRSDV */
+		at91_set_B_periph(AT91_PIN_PC20,  0);	/* ERX0 */
+		at91_set_B_periph(AT91_PIN_PC21,  0);	/* ERX1 */
+		at91_set_B_periph(AT91_PIN_PC16,  0);	/* ERXER */
+		at91_set_B_periph(AT91_PIN_PC27,  0);	/* ETXEN */
+		at91_set_B_periph(AT91_PIN_PC18,  0);	/* ETX0 */
+		at91_set_B_periph(AT91_PIN_PC19,  0);	/* ETX1 */
+		at91_set_B_periph(AT91_PIN_PC31,  0);	/* EMDIO */
+		at91_set_B_periph(AT91_PIN_PC30,  0);	/* EMDC */
+		break;
+	default:
+		return;
+	}
+
+	add_generic_device("macb", id, NULL, start, SZ_16K,
+			   IORESOURCE_MEM, data);
+}
+#else
+void at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
+#endif
+
+/* --------------------------------------------------------------------
+ *  NAND / SmartMedia
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_NAND_ATMEL)
+static struct resource nand_resources[] = {
+	[0] = {
+		.start	= AT91_CHIPSELECT_3,
+		.size	= SZ_256M,
+		.flags	= IORESOURCE_MEM,
+	},
+	[1] = {
+		.start	= AT91_BASE_SYS + AT91_PMECC,
+		.size	= 512,
+		.flags	= IORESOURCE_MEM,
+	}
+};
+
+void __init at91_add_device_nand(struct atmel_nand_data *data)
+{
+	unsigned long csa;
+
+	if (!data)
+		return;
+
+	csa = at91_sys_read(AT91_MATRIX_EBICSA);
+	at91_sys_write(AT91_MATRIX_EBICSA, csa | AT91_MATRIX_EBI_CS3A_SMC_NANDFLASH);
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
+	add_generic_device_res("atmel_nand", 0, nand_resources,
+			       ARRAY_SIZE(nand_resources), data);
+}
+#else
+void __init at91_add_device_nand(struct atmel_nand_data *data) {}
+#endif
+
+/* --------------------------------------------------------------------
+ *  UART
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_DRIVER_SERIAL_ATMEL)
+static inline void configure_dbgu_pins(void)
+{
+	at91_set_A_periph(AT91_PIN_PA9, 0);		/* DRXD */
+	at91_set_A_periph(AT91_PIN_PA10, 1);		/* DTXD */
+}
+
+static inline void configure_usart0_pins(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PA0, 1);		/* TXD0 */
+	at91_set_A_periph(AT91_PIN_PA1, 0);		/* RXD0 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_A_periph(AT91_PIN_PA2, 0);	/* RTS0 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_A_periph(AT91_PIN_PA3, 0);	/* CTS0 */
+}
+
+static inline void configure_usart1_pins(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PA5, 1);		/* TXD1 */
+	at91_set_A_periph(AT91_PIN_PA6, 0);		/* RXD1 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_C_periph(AT91_PIN_PC27, 0);	/* RTS1 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_C_periph(AT91_PIN_PC28, 0);	/* CTS1 */
+}
+
+static inline void configure_usart2_pins(unsigned pins)
+{
+	at91_set_A_periph(AT91_PIN_PA7, 1);		/* TXD2 */
+	at91_set_A_periph(AT91_PIN_PA8, 0);		/* RXD2 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_B_periph(AT91_PIN_PB0, 0);	/* RTS2 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_B_periph(AT91_PIN_PB1, 0);	/* CTS2 */
+}
+
+static inline void configure_usart3_pins(unsigned pins)
+{
+	at91_set_B_periph(AT91_PIN_PC22, 1);		/* TXD3 */
+	at91_set_B_periph(AT91_PIN_PC23, 0);		/* RXD3 */
+
+	if (pins & ATMEL_UART_RTS)
+		at91_set_B_periph(AT91_PIN_PC24, 0);	/* RTS3 */
+	if (pins & ATMEL_UART_CTS)
+		at91_set_B_periph(AT91_PIN_PC25, 0);	/* CTS3 */
+}
+
+struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
+{
+	resource_size_t start;
+	resource_size_t size = SZ_16K;
+
+	switch (id) {
+		case 0:		/* DBGU */
+			configure_dbgu_pins();
+			size = 512;
+			start = AT91_BASE_SYS + AT91_DBGU;
+			break;
+		case AT91SAM9X5_ID_USART0:
+			configure_usart0_pins(pins);
+			start = AT91SAM9X5_BASE_USART0;
+			id = 1;
+			break;
+		case AT91SAM9X5_ID_USART1:
+			configure_usart1_pins(pins);
+			start = AT91SAM9X5_BASE_USART1;
+			id = 2;
+			break;
+		case AT91SAM9X5_ID_USART2:
+			configure_usart2_pins(pins);
+			start = AT91SAM9X5_BASE_USART2;
+			id = 3;
+			break;
+		case AT91SAM9X5_ID_USART3:
+			configure_usart3_pins(pins);
+			start = AT91SAM9X5_BASE_USART3;
+			id = 4;
+			break;
+		default:
+			return NULL;
+	}
+
+	return add_generic_device("atmel_usart", id, NULL, start, size,
+			   IORESOURCE_MEM, NULL);
+}
+#else
+struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
+{
+	return NULL;
+}
+#endif
diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 0406382..bda02fd 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -40,26 +40,38 @@
 /*
  * Chips have some kind of clocks : group them by functionality
  */
-#define cpu_has_utmi()		(  cpu_is_at91cap9() \
-				|| cpu_is_at91sam9rl() \
-				|| cpu_is_at91sam9g45())
+#define cpu_has_utmi()		(  cpu_is_at91sam9rl() \
+				|| cpu_is_at91sam9g45() \
+				|| cpu_is_at91sam9x5())
 
 #define cpu_has_800M_plla()	(  cpu_is_at91sam9g20() \
-				|| cpu_is_at91sam9g45())
+				|| cpu_is_at91sam9g45() \
+				|| cpu_is_at91sam9x5())
 
 #define cpu_has_300M_plla()	(cpu_is_at91sam9g10())
 
 #define cpu_has_pllb()		(!(cpu_is_at91sam9rl() \
-				|| cpu_is_at91sam9g45()))
+				|| cpu_is_at91sam9g45() \
+				|| cpu_is_at91sam9x5()))
 
-#define cpu_has_upll()		(cpu_is_at91sam9g45())
+#define cpu_has_upll()		(cpu_is_at91sam9g45() \
+				|| cpu_is_at91sam9x5())
 
 /* USB host HS & FS */
 #define cpu_has_uhp()		(!cpu_is_at91sam9rl())
 
 /* USB device FS only */
 #define cpu_has_udpfs()		(!(cpu_is_at91sam9rl() \
-				|| cpu_is_at91sam9g45()))
+				|| cpu_is_at91sam9g45() \
+				|| cpu_is_at91sam9x5()))
+
+#define cpu_has_plladiv2()	(cpu_is_at91sam9g45() \
+				|| cpu_is_at91sam9x5())
+
+#define cpu_has_mdiv3()		(cpu_is_at91sam9g45() \
+				|| cpu_is_at91sam9x5())
+
+#define cpu_has_alt_prescaler()	(cpu_is_at91sam9x5())
 
 static LIST_HEAD(clocks);
 
@@ -202,11 +214,24 @@ static struct clk *at91_css_to_clk(unsigned long css)
 				return &utmi_clk;
 			else if (cpu_has_pllb())
 				return &pllb;
+			break;
+		/* alternate PMC: can use master clock */
+		case AT91_PMC_CSS_MASTER:
+			return &mck;
 	}
 
 	return NULL;
 }
 
+static int pmc_prescaler_divider(u32 reg)
+{
+	if (cpu_has_alt_prescaler()) {
+		return 1 << ((reg & AT91_PMC_ALT_PRES) >> PMC_ALT_PRES_OFFSET);
+	} else {
+		return 1 << ((reg & AT91_PMC_PRES) >> PMC_PRES_OFFSET);
+	}
+}
+
 static void __clk_enable(struct clk *clk)
 {
 	if (clk->parent)
@@ -295,6 +320,7 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 {
 	unsigned long	flags;
 	unsigned	prescale;
+	unsigned long	prescale_offset, css_mask;
 	unsigned long	actual;
 
 	if (!clk_is_programmable(clk))
@@ -302,14 +328,22 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 	if (clk->users)
 		return -EBUSY;
 
+	if (cpu_has_alt_prescaler()) {
+		prescale_offset = PMC_ALT_PRES_OFFSET;
+		css_mask = AT91_PMC_ALT_PCKR_CSS;
+	} else {
+		prescale_offset = PMC_PRES_OFFSET;
+		css_mask = AT91_PMC_CSS;
+	}
+
 	actual = clk->parent->rate_hz;
 	for (prescale = 0; prescale < 7; prescale++) {
 		if (actual && actual <= rate) {
 			u32	pckr;
 
 			pckr = at91_sys_read(AT91_PMC_PCKR(clk->id));
-			pckr &= AT91_PMC_CSS;	/* clock selection */
-			pckr |= prescale << 2;
+			pckr &= css_mask;	/* keep clock selection */
+			pckr |= prescale << prescale_offset;
 			at91_sys_write(AT91_PMC_PCKR(clk->id), pckr);
 			clk->rate_hz = actual;
 			break;
@@ -352,11 +386,17 @@ static void init_programmable_clock(struct clk *clk)
 {
 	struct clk	*parent;
 	u32		pckr;
+	unsigned int	css_mask;
+
+	if (cpu_has_alt_prescaler())
+		css_mask = AT91_PMC_ALT_PCKR_CSS;
+	else
+		css_mask = AT91_PMC_CSS;
 
 	pckr = at91_sys_read(AT91_PMC_PCKR(clk->id));
-	parent = at91_css_to_clk(pckr & AT91_PMC_CSS);
+	parent = at91_css_to_clk(pckr & css_mask);
 	clk->parent = parent;
-	clk->rate_hz = parent->rate_hz / (1 << ((pckr & AT91_PMC_PRES) >> 2));
+	clk->rate_hz = parent->rate_hz / pmc_prescaler_divider(pckr);
 }
 
 #endif	/* CONFIG_AT91_PROGRAMMABLE_CLOCKS */
@@ -502,11 +542,9 @@ static void at91_pllb_usbfs_clock_init(unsigned long main_clock)
 		at91_sys_write(AT91_PMC_SCER, AT91RM9200_PMC_MCKUDP);
 	} else if (cpu_is_at91sam9260() || cpu_is_at91sam9261() ||
 		   cpu_is_at91sam9263() || cpu_is_at91sam9g20() ||
-		   cpu_is_at91sam9g10() || cpu_is_at572d940hf()) {
+		   cpu_is_at91sam9g10()) {
 		uhpck.pmc_mask = AT91SAM926x_PMC_UHP;
 		udpck.pmc_mask = AT91SAM926x_PMC_UDP;
-	} else if (cpu_is_at91cap9()) {
-		uhpck.pmc_mask = AT91CAP9_PMC_UHP;
 	}
 	at91_sys_write(AT91_CKGR_PLLBR, 0);
 
@@ -569,7 +607,7 @@ int at91_clock_init(unsigned long main_clock)
 			pll_overclock = 1;
 	}
 
-	if (cpu_is_at91sam9g45()) {
+	if (cpu_has_plladiv2()) {
 		mckr = at91_sys_read(AT91_PMC_MCKR);
 		plla.rate_hz /= (1 << ((mckr & AT91_PMC_PLLADIV2) >> 12));	/* plla divisor by 2 */
 	}
@@ -590,6 +628,10 @@ int at91_clock_init(unsigned long main_clock)
 		 * (obtain the USB High Speed 480 MHz when input is 12 MHz)
 		 */
 		utmi_clk.rate_hz = 40 * utmi_clk.parent->rate_hz;
+
+		/* UTMI bias and PLL are managed at the same time */
+		if (cpu_has_upll())
+			utmi_clk.pmc_mask |= AT91_PMC_BIASEN;
 	}
 
 	/*
@@ -608,7 +650,7 @@ int at91_clock_init(unsigned long main_clock)
 	mckr = at91_sys_read(AT91_PMC_MCKR);
 	mck.parent = at91_css_to_clk(mckr & AT91_PMC_CSS);
 	freq = mck.parent->rate_hz;
-	freq /= (1 << ((mckr & AT91_PMC_PRES) >> 2));				/* prescale */
+	freq /= pmc_prescaler_divider(mckr);					/* prescale */
 	if (cpu_is_at91rm9200()) {
 		mck.rate_hz = freq / (1 + ((mckr & AT91_PMC_MDIV) >> 8));	/* mdiv */
 	} else if (cpu_is_at91sam9g20()) {
@@ -616,13 +658,19 @@ int at91_clock_init(unsigned long main_clock)
 			freq / ((mckr & AT91_PMC_MDIV) >> 7) : freq;	/* mdiv ; (x >> 7) = ((x >> 8) * 2) */
 		if (mckr & AT91_PMC_PDIV)
 			freq /= 2;		/* processor clock division */
-	} else if (cpu_is_at91sam9g45()) {
+	} else if (cpu_has_mdiv3()) {
 		mck.rate_hz = (mckr & AT91_PMC_MDIV) == AT91SAM9_PMC_MDIV_3 ?
 			freq / 3 : freq / (1 << ((mckr & AT91_PMC_MDIV) >> 8));	/* mdiv */
 	} else {
 		mck.rate_hz = freq / (1 << ((mckr & AT91_PMC_MDIV) >> 8));      /* mdiv */
 	}
 
+	if (cpu_has_alt_prescaler()) {
+		/* Programmable clocks can use MCK */
+		mck.type |= CLK_TYPE_PRIMARY;
+		mck.id = 4;
+	}
+
 	cpu_freq = freq;
 
 	/* Register the PMC's standard clocks */
diff --git a/arch/arm/mach-at91/include/mach/at91_pmc.h b/arch/arm/mach-at91/include/mach/at91_pmc.h
index ed40b8b..59037cf 100644
--- a/arch/arm/mach-at91/include/mach/at91_pmc.h
+++ b/arch/arm/mach-at91/include/mach/at91_pmc.h
@@ -26,12 +26,12 @@
 #define		AT91CAP9_PMC_DDR	(1 <<  2)		/* DDR Clock [CAP9 revC & some SAM9 only] */
 #define		AT91RM9200_PMC_UHP	(1 <<  4)		/* USB Host Port Clock [AT91RM9200 only] */
 #define		AT91SAM926x_PMC_UHP	(1 <<  6)		/* USB Host Port Clock [AT91SAM926x only] */
-#define		AT91CAP9_PMC_UHP	(1 <<  6)		/* USB Host Port Clock [AT91CAP9 only] */
 #define		AT91SAM926x_PMC_UDP	(1 <<  7)		/* USB Devcice Port Clock [AT91SAM926x only] */
 #define		AT91_PMC_PCK0		(1 <<  8)		/* Programmable Clock 0 */
 #define		AT91_PMC_PCK1		(1 <<  9)		/* Programmable Clock 1 */
 #define		AT91_PMC_PCK2		(1 << 10)		/* Programmable Clock 2 */
 #define		AT91_PMC_PCK3		(1 << 11)		/* Programmable Clock 3 */
+#define		AT91_PMC_PCK4		(1 << 12)		/* Programmable Clock 4 [AT572D940HF only] */
 #define		AT91_PMC_HCK0		(1 << 16)		/* AHB Clock (USB host) [AT91SAM9261 only] */
 #define		AT91_PMC_HCK1		(1 << 17)		/* AHB Clock (LCD) [AT91SAM9261 only] */
 
@@ -46,9 +46,13 @@
 #define		AT91_PMC_BIASCOUNT	(0xf << 28)		/* UTMI BIAS Start-up Time */
 
 #define	AT91_CKGR_MOR		(AT91_PMC + 0x20)	/* Main Oscillator Register [not on SAM9RL] */
-#define		AT91_PMC_MOSCEN		(1    << 0)		/* Main Oscillator Enable */
-#define		AT91_PMC_OSCBYPASS	(1    << 1)		/* Oscillator Bypass [SAM9x, CAP9] */
-#define		AT91_PMC_OSCOUNT	(0xff << 8)		/* Main Oscillator Start-up Time */
+#define		AT91_PMC_MOSCEN		(1    <<  0)		/* Main Oscillator Enable */
+#define		AT91_PMC_OSCBYPASS	(1    <<  1)		/* Oscillator Bypass */
+#define		AT91_PMC_MOSCRCEN	(1    <<  3)		/* Main On-Chip RC Oscillator Enable [some SAM9] */
+#define		AT91_PMC_OSCOUNT	(0xff <<  8)		/* Main Oscillator Start-up Time */
+#define		AT91_PMC_KEY		(0x37 << 16)		/* MOR Writing Key */
+#define		AT91_PMC_MOSCSEL	(1    << 24)		/* Main Oscillator Selection [some SAM9] */
+#define		AT91_PMC_CFDEN		(1    << 25)		/* Clock Failure Detector Enable [some SAM9] */
 
 #define	AT91_CKGR_MCFR		(AT91_PMC + 0x24)	/* Main Clock Frequency Register */
 #define		AT91_PMC_MAINF		(0xffff <<  0)		/* Main Clock Frequency */
@@ -74,20 +78,30 @@
 #define			AT91_PMC_CSS_PLLA		(2 << 0)
 #define			AT91_PMC_CSS_PLLB		(3 << 0)
 #define			AT91_PMC_CSS_UPLL		(3 << 0)	/* [some SAM9 only] */
-#define		AT91_PMC_PRES		(7 <<  2)		/* Master Clock Prescaler */
-#define			AT91_PMC_PRES_1			(0 << 2)
-#define			AT91_PMC_PRES_2			(1 << 2)
-#define			AT91_PMC_PRES_4			(2 << 2)
-#define			AT91_PMC_PRES_8			(3 << 2)
-#define			AT91_PMC_PRES_16		(4 << 2)
-#define			AT91_PMC_PRES_32		(5 << 2)
-#define			AT91_PMC_PRES_64		(6 << 2)
+#define		PMC_PRES_OFFSET		2
+#define		AT91_PMC_PRES		(7 <<  PMC_PRES_OFFSET)		/* Master Clock Prescaler */
+#define			AT91_PMC_PRES_1			(0 << PMC_PRES_OFFSET)
+#define			AT91_PMC_PRES_2			(1 << PMC_PRES_OFFSET)
+#define			AT91_PMC_PRES_4			(2 << PMC_PRES_OFFSET)
+#define			AT91_PMC_PRES_8			(3 << PMC_PRES_OFFSET)
+#define			AT91_PMC_PRES_16		(4 << PMC_PRES_OFFSET)
+#define			AT91_PMC_PRES_32		(5 << PMC_PRES_OFFSET)
+#define			AT91_PMC_PRES_64		(6 << PMC_PRES_OFFSET)
+#define		PMC_ALT_PRES_OFFSET	4
+#define		AT91_PMC_ALT_PRES	(7 <<  PMC_ALT_PRES_OFFSET)		/* Master Clock Prescaler [alternate location] */
+#define			AT91_PMC_ALT_PRES_1		(0 << PMC_ALT_PRES_OFFSET)
+#define			AT91_PMC_ALT_PRES_2		(1 << PMC_ALT_PRES_OFFSET)
+#define			AT91_PMC_ALT_PRES_4		(2 << PMC_ALT_PRES_OFFSET)
+#define			AT91_PMC_ALT_PRES_8		(3 << PMC_ALT_PRES_OFFSET)
+#define			AT91_PMC_ALT_PRES_16		(4 << PMC_ALT_PRES_OFFSET)
+#define			AT91_PMC_ALT_PRES_32		(5 << PMC_ALT_PRES_OFFSET)
+#define			AT91_PMC_ALT_PRES_64		(6 << PMC_ALT_PRES_OFFSET)
 #define		AT91_PMC_MDIV		(3 <<  8)		/* Master Clock Division */
 #define			AT91RM9200_PMC_MDIV_1		(0 << 8)	/* [AT91RM9200 only] */
 #define			AT91RM9200_PMC_MDIV_2		(1 << 8)
 #define			AT91RM9200_PMC_MDIV_3		(2 << 8)
 #define			AT91RM9200_PMC_MDIV_4		(3 << 8)
-#define			AT91SAM9_PMC_MDIV_1		(0 << 8)	/* [SAM9,CAP9 only] */
+#define			AT91SAM9_PMC_MDIV_1		(0 << 8)	/* [SAM9 only] */
 #define			AT91SAM9_PMC_MDIV_2		(1 << 8)
 #define			AT91SAM9_PMC_MDIV_4		(2 << 8)
 #define			AT91SAM9_PMC_MDIV_6		(3 << 8)	/* [some SAM9 only] */
@@ -105,7 +119,14 @@
 #define			AT91_PMC_USBS_UPLL		(1 << 0)
 #define		AT91_PMC_OHCIUSBDIV	(0xF <<  8)		/* Divider for USB OHCI Clock */
 
+#define	AT91_PMC_SMD		(AT91_PMC + 0x3c)	/* Soft Modem Clock Register [some SAM9 only] */
+#define		AT91_PMC_SMDS		(0x1  <<  0)		/* SMD input clock selection */
+#define		AT91_PMC_SMD_DIV	(0x1f <<  8)		/* SMD input clock divider */
+#define		AT91_PMC_SMDDIV(n)	(((n) <<  8) & AT91_PMC_SMD_DIV)
+
 #define	AT91_PMC_PCKR(n)	(AT91_PMC + 0x40 + ((n) * 4))	/* Programmable Clock 0-N Registers */
+#define		AT91_PMC_ALT_PCKR_CSS	(0x7 <<  0)		/* Programmable Clock Source Selection [alternate length] */
+#define			AT91_PMC_CSS_MASTER		(4 << 0)	/* [some SAM9 only] */
 #define		AT91_PMC_CSSMCK		(0x1 <<  8)		/* CSS or Master Clock Selection */
 #define			AT91_PMC_CSSMCK_CSS		(0 << 8)
 #define			AT91_PMC_CSSMCK_MCK		(1 << 8)
@@ -117,17 +138,32 @@
 #define		AT91_PMC_LOCKA		(1 <<  1)		/* PLLA Lock */
 #define		AT91_PMC_LOCKB		(1 <<  2)		/* PLLB Lock */
 #define		AT91_PMC_MCKRDY		(1 <<  3)		/* Master Clock */
-#define		AT91_PMC_LOCKU		(1 <<  6)		/* UPLL Lock [some SAM9, AT91CAP9 only] */
-#define		AT91_PMC_OSCSEL		(1 <<  7)		/* Slow Clock Oscillator [AT91CAP9 revC only] */
+#define		AT91_PMC_LOCKU		(1 <<  6)		/* UPLL Lock [some SAM9] */
 #define		AT91_PMC_PCK0RDY	(1 <<  8)		/* Programmable Clock 0 */
 #define		AT91_PMC_PCK1RDY	(1 <<  9)		/* Programmable Clock 1 */
 #define		AT91_PMC_PCK2RDY	(1 << 10)		/* Programmable Clock 2 */
 #define		AT91_PMC_PCK3RDY	(1 << 11)		/* Programmable Clock 3 */
+#define		AT91_PMC_MOSCSELS	(1 << 16)		/* Main Oscillator Selection [some SAM9] */
+#define		AT91_PMC_MOSCRCS	(1 << 17)		/* Main On-Chip RC [some SAM9] */
+#define		AT91_PMC_CFDEV		(1 << 18)		/* Clock Failure Detector Event [some SAM9] */
 #define	AT91_PMC_IMR		(AT91_PMC + 0x6c)	/* Interrupt Mask Register */
 
 #define AT91_PMC_PROT		(AT91_PMC + 0xe4)	/* Protect Register [AT91CAP9 revC only] */
-#define		AT91_PMC_PROTKEY	0x504d4301	/* Activation Code */
+#define		AT91_PMC_WPEN		(0x1  <<  0)		/* Write Protect Enable */
+#define		AT91_PMC_WPKEY		(0xffffff << 8)		/* Write Protect Key */
+#define		AT91_PMC_PROTKEY	(0x504d43 << 8)		/* Activation Code */
+
+#define AT91_PMC_WPSR		(AT91_PMC + 0xe8)	/* Write Protect Status Register [some SAM9] */
+#define		AT91_PMC_WPVS		(0x1  <<  0)		/* Write Protect Violation Status */
+#define		AT91_PMC_WPVSRC		(0xffff  <<  8)		/* Write Protect Violation Source */
 
 #define AT91_PMC_VER		(AT91_PMC + 0xfc)	/* PMC Module Version [AT91CAP9 only] */
 
+#define AT91_PMC_PCR		(AT91_PMC + 0x10c)	/* Peripheral Control Register [some SAM9] */
+#define		AT91_PMC_PCR_PID	(0x3f  <<  0)		/* Peripheral ID */
+#define		AT91_PMC_PCR_CMD	(0x1  <<  12)		/* Command */
+#define		AT91_PMC_PCR_DIV	(0x3  <<  16)		/* Divisor Value */
+#define		AT91_PMC_PCRDIV(n)	(((n) <<  16) & AT91_PMC_PCR_DIV)
+#define		AT91_PMC_PCR_EN		(0x1  <<  28)		/* Enable */
+
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/arch/arm/mach-at91/include/mach/at91sam9x5.h
new file mode 100644
index 0000000..7d40f7c
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91sam9x5.h
@@ -0,0 +1,179 @@
+/*
+ * Chip-specific header file for the AT91SAM9x5 family
+ *
+ *  Copyright (C) 2009-2010 Atmel Corporation.
+ *
+ * Common definitions.
+ * Based on AT91SAM9x5 preliminary datasheet.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91SAM9X5_H
+#define AT91SAM9X5_H
+
+/*
+ * Peripheral identifiers/interrupts.
+ */
+#define AT91_ID_FIQ		0	/* Advanced Interrupt Controller (FIQ) */
+#define AT91_ID_SYS		1	/* System Controller Interrupt */
+#define AT91SAM9X5_ID_PIOAB	2	/* Parallel I/O Controller A and B */
+#define AT91SAM9X5_ID_PIOCD	3	/* Parallel I/O Controller C and D */
+#define AT91SAM9X5_ID_SMD	4	/* SMD Soft Modem (SMD) */
+#define AT91SAM9X5_ID_USART0	5	/* USART 0 */
+#define AT91SAM9X5_ID_USART1	6	/* USART 1 */
+#define AT91SAM9X5_ID_USART2	7	/* USART 2 */
+#define AT91SAM9X5_ID_USART3	8	/* USART 3 */
+#define AT91SAM9X5_ID_TWI0	9	/* Two-Wire Interface 0 */
+#define AT91SAM9X5_ID_TWI1	10	/* Two-Wire Interface 1 */
+#define AT91SAM9X5_ID_TWI2	11	/* Two-Wire Interface 2 */
+#define AT91SAM9X5_ID_MCI0	12	/* High Speed Multimedia Card Interface 0 */
+#define AT91SAM9X5_ID_SPI0	13	/* Serial Peripheral Interface 0 */
+#define AT91SAM9X5_ID_SPI1	14	/* Serial Peripheral Interface 1 */
+#define AT91SAM9X5_ID_UART0	15	/* UART 0 */
+#define AT91SAM9X5_ID_UART1	16	/* UART 1 */
+#define AT91SAM9X5_ID_TCB	17	/* Timer Counter 0, 1, 2, 3, 4 and 5 */
+#define AT91SAM9X5_ID_PWM	18	/* Pulse Width Modulation Controller */
+#define AT91SAM9X5_ID_ADC	19	/* ADC Controller */
+#define AT91SAM9X5_ID_DMA0	20	/* DMA Controller 0 */
+#define AT91SAM9X5_ID_DMA1	21	/* DMA Controller 1 */
+#define AT91SAM9X5_ID_UHPHS	22	/* USB Host High Speed */
+#define AT91SAM9X5_ID_UDPHS	23	/* USB Device High Speed */
+#define AT91SAM9X5_ID_EMAC0	24	/* Ethernet MAC0 */
+#define AT91SAM9X5_ID_LCDC	25	/* LCD Controller */
+#define AT91SAM9X5_ID_ISI	25	/* Image Sensor Interface */
+#define AT91SAM9X5_ID_MCI1	26	/* High Speed Multimedia Card Interface 1 */
+#define AT91SAM9X5_ID_EMAC1	27	/* Ethernet MAC1 */
+#define AT91SAM9X5_ID_SSC	28	/* Synchronous Serial Controller */
+#define AT91SAM9X5_ID_CAN0	29	/* CAN Controller 0 */
+#define AT91SAM9X5_ID_CAN1	30	/* CAN Controller 1 */
+#define AT91SAM9X5_ID_IRQ0	31	/* Advanced Interrupt Controller */
+
+/*
+ * User Peripheral physical base addresses.
+ */
+#define AT91SAM9X5_BASE_SPI0		0xf0000000
+#define AT91SAM9X5_BASE_SPI1		0xf0004000
+#define AT91SAM9X5_BASE_MCI0		0xf0008000
+#define AT91SAM9X5_BASE_MCI1		0xf000c000
+#define AT91SAM9X5_BASE_SSC		0xf0010000
+#define AT91SAM9X5_BASE_CAN0		0xf8000000
+#define AT91SAM9X5_BASE_CAN1		0xf8004000
+#define AT91SAM9X5_BASE_TCB0		0xf8008000
+#define AT91SAM9X5_BASE_TC0		0xf8008000
+#define AT91SAM9X5_BASE_TC1		0xf8008040
+#define AT91SAM9X5_BASE_TC2		0xf8008080
+#define AT91SAM9X5_BASE_TCB1		0xf800c000
+#define AT91SAM9X5_BASE_TC3		0xf800c000
+#define AT91SAM9X5_BASE_TC4		0xf800c040
+#define AT91SAM9X5_BASE_TC5		0xf800c080
+#define AT91SAM9X5_BASE_TWI0		0xf8010000
+#define AT91SAM9X5_BASE_TWI1		0xf8014000
+#define AT91SAM9X5_BASE_TWI2		0xf8018000
+#define AT91SAM9X5_BASE_USART0		0xf801c000
+#define AT91SAM9X5_BASE_USART1		0xf8020000
+#define AT91SAM9X5_BASE_USART2		0xf8024000
+#define AT91SAM9X5_BASE_USART3		0xf8028000
+#define AT91SAM9X5_BASE_EMAC0		0xf802c000
+#define AT91SAM9X5_BASE_EMAC1		0xf8030000
+#define AT91SAM9X5_BASE_PWMC		0xf8034000
+#define AT91SAM9X5_BASE_LCDC		0xf8038000
+#define AT91SAM9X5_BASE_UDPHS		0xf803c000
+#define AT91SAM9X5_BASE_UART0		0xf8040000
+#define AT91SAM9X5_BASE_UART1		0xf8044000
+#define AT91SAM9X5_BASE_ISI		0xf8048000
+#define AT91SAM9X5_BASE_ADC		0xf804c000
+#define AT91_BASE_SYS			0xffffc000
+
+/*
+ * System Peripherals (offset from AT91_BASE_SYS)
+ */
+#define AT91_MATRIX	(0xffffde00 - AT91_BASE_SYS)
+#define AT91_PMECC	(0xffffe000 - AT91_BASE_SYS)
+#define AT91_PMERRLOC	(0xffffe600 - AT91_BASE_SYS)
+#define AT91_DDRSDRC0	(0xffffe800 - AT91_BASE_SYS)
+#define AT91_SMC	(0xffffea00 - AT91_BASE_SYS)
+#define AT91_DMA0	(0xffffec00 - AT91_BASE_SYS)
+#define AT91_DMA1	(0xffffee00 - AT91_BASE_SYS)
+#define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
+#define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
+#define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
+#define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
+#define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
+#define AT91_PIT	(0xfffffe30 - AT91_BASE_SYS)
+#define AT91_WDT	(0xfffffe40 - AT91_BASE_SYS)
+#define AT91_GPBR	(0xfffffe60 - AT91_BASE_SYS)
+#define AT91_RTC	(0xfffffeb0 - AT91_BASE_SYS)
+
+#define AT91_BASE_PIOA	0xfffff400
+#define AT91_BASE_PIOB	0xfffff600
+#define AT91_BASE_PIOC	0xfffff800
+#define AT91_BASE_PIOD	0xfffffa00
+
+#define AT91_USART0	AT91SAM9X5_BASE_US0
+#define AT91_USART1	AT91SAM9X5_BASE_US1
+#define AT91_USART2	AT91SAM9X5_BASE_US2
+#define AT91_USART3	AT91SAM9X5_BASE_US3
+
+
+/*
+ * Internal Memory.
+ */
+#define AT91SAM9X5_SRAM_BASE	0x00300000	/* Internal SRAM base address */
+#define AT91SAM9X5_SRAM_SIZE	SZ_32K		/* Internal SRAM size (32Kb) */
+
+#define AT91SAM9X5_ROM_BASE	0x00400000	/* Internal ROM base address */
+#define AT91SAM9X5_ROM_SIZE	SZ_64K		/* Internal ROM size (64Kb) */
+
+#define AT91SAM9X5_SMD_BASE	0x00400000	/* SMD Controller */
+#define AT91SAM9X5_UDPHS_FIFO	0x00500000	/* USB Device HS controller */
+#define AT91SAM9X5_OHCI_BASE	0x00600000	/* USB Host controller (OHCI) */
+#define AT91SAM9X5_EHCI_BASE	0x00700000	/* USB Host controller (EHCI) */
+
+#define CONSISTENT_DMA_SIZE	SZ_4M
+
+/*
+ * DMA0 peripheral identifiers
+ * for hardware handshaking interface
+ */
+#define AT_DMA_ID_MCI0		 0
+#define AT_DMA_ID_SPI0_TX	 1
+#define AT_DMA_ID_SPI0_RX	 2
+#define AT_DMA_ID_USART0_TX	 3
+#define AT_DMA_ID_USART0_RX	 4
+#define AT_DMA_ID_USART1_TX	 5
+#define AT_DMA_ID_USART1_RX	 6
+#define AT_DMA_ID_TWI0_TX	 7
+#define AT_DMA_ID_TWI0_RX	 8
+#define AT_DMA_ID_TWI2_TX	 9
+#define AT_DMA_ID_TWI2_RX	10
+#define AT_DMA_ID_UART0_TX	11
+#define AT_DMA_ID_UART0_RX	12
+#define AT_DMA_ID_SSC_TX	13
+#define AT_DMA_ID_SSC_RX	14
+
+/*
+ * DMA1 peripheral identifiers
+ * for hardware handshaking interface
+ */
+#define AT_DMA_ID_MCI1		 0
+#define AT_DMA_ID_SPI1_TX	 1
+#define AT_DMA_ID_SPI1_RX	 2
+#define AT_DMA_ID_SMD_TX	 3
+#define AT_DMA_ID_SMD_RX	 4
+#define AT_DMA_ID_TWI1_TX	 5
+#define AT_DMA_ID_TWI1_RX	 6
+#define AT_DMA_ID_ADC_RX	 7
+#define AT_DMA_ID_DBGU_TX	 8
+#define AT_DMA_ID_DBGU_RX	 9
+#define AT_DMA_ID_UART1_TX	10
+#define AT_DMA_ID_UART1_RX	11
+#define AT_DMA_ID_USART2_TX	12
+#define AT_DMA_ID_USART2_RX	13
+#define AT_DMA_ID_USART3_TX	14
+#define AT_DMA_ID_USART3_RX	15
+
+#endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5_matrix.h b/arch/arm/mach-at91/include/mach/at91sam9x5_matrix.h
new file mode 100644
index 0000000..b070a40
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91sam9x5_matrix.h
@@ -0,0 +1,139 @@
+/*
+ * Matrix-centric header file for the AT91SAM9x5 family
+ *
+ *  Copyright (C) 2009-2010 Atmel Corporation.
+ *
+ * Memory Controllers (MATRIX, EBI) - System peripherals registers.
+ * Based on AT91SAM9x5 preliminary datasheet.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91SAM9X5_MATRIX_H
+#define AT91SAM9X5_MATRIX_H
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
+#define AT91_MATRIX_SCFG8	(AT91_MATRIX + 0x60)	/* Slave Configuration Register 8 */
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
+#define AT91_MATRIX_PRAS8	(AT91_MATRIX + 0xC0)	/* Priority Register A for Slave 8 */
+#define AT91_MATRIX_PRBS8	(AT91_MATRIX + 0xC4)	/* Priority Register B for Slave 8 */
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
+#define AT91_MATRIX_EBICSA	(AT91_MATRIX + 0x120)	/* EBI Chip Select Assignment Register */
+#define		AT91_MATRIX_EBI_CS1A		(1 << 1)	/* Chip Select 1 Assignment */
+#define			AT91_MATRIX_EBI_CS1A_SMC		(0 << 1)
+#define			AT91_MATRIX_EBI_CS1A_SDRAMC		(1 << 1)
+#define		AT91_MATRIX_EBI_CS3A		(1 << 3)	/* Chip Select 3 Assignment */
+#define			AT91_MATRIX_EBI_CS3A_SMC		(0 << 3)
+#define			AT91_MATRIX_EBI_CS3A_SMC_NANDFLASH	(1 << 3)
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
+#define		AT91_MATRIX_NFD0_SELECT		(1 << 24)	/* NAND Flash Data Bus Selection */
+#define			AT91_MATRIX_NFD0_ON_D0			(0 << 24)
+#define			AT91_MATRIX_NFD0_ON_D16			(1 << 24)
+#define		AT91_MATRIX_DDR_MP_EN		(1 << 25)	/* DDR Multi-port Enable */
+#define			AT91_MATRIX_MP_OFF			(0 << 25)
+#define			AT91_MATRIX_MP_ON			(1 << 25)
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
diff --git a/arch/arm/mach-at91/include/mach/hardware.h b/arch/arm/mach-at91/include/mach/hardware.h
index fcb1bd4..7af8803 100644
--- a/arch/arm/mach-at91/include/mach/hardware.h
+++ b/arch/arm/mach-at91/include/mach/hardware.h
@@ -26,6 +26,8 @@
 #include <mach/at91sam9rl.h>
 #elif defined(CONFIG_ARCH_AT91SAM9G45)
 #include <mach/at91sam9g45.h>
+#elif defined(CONFIG_ARCH_AT91SAM9X5)
+#include <mach/at91sam9x5.h>
 #elif defined(CONFIG_ARCH_AT91CAP9)
 #include <mach/at91cap9.h>
 #elif defined(CONFIG_ARCH_AT91X40)
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
