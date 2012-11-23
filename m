Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tbvj6-0007Ji-34
 for barebox@lists.infradead.org; Fri, 23 Nov 2012 16:03:41 +0000
Received: from mail607.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 8B21AFF9B4E
 for <barebox@lists.infradead.org>; Fri, 23 Nov 2012 17:14:40 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 23 Nov 2012 17:01:35 +0100
Message-Id: <1353686495-31912-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1353686495-31912-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121123155945.GW8327@game.jcrosoft.org>
 <1353686495-31912-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] at91: add at91sam9n12ek board support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                                |    1 +
 arch/arm/boards/at91sam9n12ek/Makefile           |    1 +
 arch/arm/boards/at91sam9n12ek/config.h           |    6 +
 arch/arm/boards/at91sam9n12ek/env/bin/init_board |   50 ++++
 arch/arm/boards/at91sam9n12ek/env/config         |   41 ++++
 arch/arm/boards/at91sam9n12ek/init.c             |  270 ++++++++++++++++++++++
 arch/arm/configs/at91sam9n12ek_defconfig         |   87 +++++++
 arch/arm/mach-at91/Kconfig                       |   17 ++
 8 files changed, 473 insertions(+)
 create mode 100644 arch/arm/boards/at91sam9n12ek/Makefile
 create mode 100644 arch/arm/boards/at91sam9n12ek/config.h
 create mode 100644 arch/arm/boards/at91sam9n12ek/env/bin/init_board
 create mode 100644 arch/arm/boards/at91sam9n12ek/env/config
 create mode 100644 arch/arm/boards/at91sam9n12ek/init.c
 create mode 100644 arch/arm/configs/at91sam9n12ek_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 8cef771..d911ffe 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -75,6 +75,7 @@ board-$(CONFIG_MACH_AT91SAM9261EK)		:= at91sam9261ek
 board-$(CONFIG_MACH_AT91SAM9263EK)		:= at91sam9263ek
 board-$(CONFIG_MACH_AT91SAM9G10EK)		:= at91sam9261ek
 board-$(CONFIG_MACH_AT91SAM9G20EK)		:= at91sam9260ek
+board-$(CONFIG_MACH_AT91SAM9N12EK)		:= at91sam9n12ek
 board-$(CONFIG_MACH_AT91SAM9X5EK)		:= at91sam9x5ek
 board-$(CONFIG_MACH_AT91SAM9M10G45EK)		:= at91sam9m10g45ek
 board-$(CONFIG_MACH_CLEP7212)			:= clep7212
diff --git a/arch/arm/boards/at91sam9n12ek/Makefile b/arch/arm/boards/at91sam9n12ek/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/at91sam9n12ek/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/at91sam9n12ek/config.h b/arch/arm/boards/at91sam9n12ek/config.h
new file mode 100644
index 0000000..5779a47
--- /dev/null
+++ b/arch/arm/boards/at91sam9n12ek/config.h
@@ -0,0 +1,6 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		16000000	/* 16 MHz crystal */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9n12ek/env/bin/init_board b/arch/arm/boards/at91sam9n12ek/env/bin/init_board
new file mode 100644
index 0000000..977430d
--- /dev/null
+++ b/arch/arm/boards/at91sam9n12ek/env/bin/init_board
@@ -0,0 +1,50 @@
+#!/bin/sh
+
+button_name="dfu_bp"
+button_wait=5
+
+product_id=0x1234
+vendor_id=0x4321
+
+dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
+
+if [ $at91_udc0.vbus != 1 ]
+then
+	echo "No USB Device cable plugged, normal boot"
+	exit
+fi
+
+gpio_get_value ${dfu_button}
+if [ $? != 0 ]
+then
+	autoboot_timeout=16
+	echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
+	usbserial
+	exit
+fi
+
+echo "${button_name} pressed detected wait ${button_wait}s"
+timeout -s -a ${button_wait}
+
+if [ $at91_udc0.vbus != 1 ]
+then
+	echo "No USB Device cable plugged, normal boot"
+	exit
+fi
+
+gpio_get_value ${dfu_button}
+if [ $? != 0 ]
+then
+	echo "${button_name} released, normal boot"
+	autoboot_timeout=16
+	echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
+	usbserial
+	exit
+fi
+
+echo ""
+echo "Start DFU Mode"
+echo ""
+
+led ds5 1
+dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
diff --git a/arch/arm/boards/at91sam9n12ek/env/config b/arch/arm/boards/at91sam9n12ek/env/config
new file mode 100644
index 0000000..f5cd1cc
--- /dev/null
+++ b/arch/arm/boards/at91sam9n12ek/env/config
@@ -0,0 +1,41 @@
+#!/bin/sh
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp-barebox
+global.dhcp.vendor_id=barebox-at91sam9n12ek
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
+# can be either 'nfs', 'tftp', 'nand' or empty
+oftree_loc=nfs
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root.$rootfs_type
+ubiroot=rootfs
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+kernelimage=zImage
+#kernelimage=uImage
+#kernelimage=Image
+#kernelimage=Image.lzo
+
+nand_device=atmel_nand
+nand_parts="256k(at91bootstrap),384k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),1M(free),6M(kernel),120M(rootfs),-(data)"
+rootfs_mtdblock_nand=7
+
+autoboot_timeout=3
+
+bootargs="console=ttyS0,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
new file mode 100644
index 0000000..3d4ab5b
--- /dev/null
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -0,0 +1,270 @@
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
+#include <mach/at91sam9x5_matrix.h>
+#include <input/qt1070.h>
+#include <readkey.h>
+#include <spi/spi.h>
+
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+	.det_pin	= 0,
+	.rdy_pin	= AT91_PIN_PD5,
+	.enable_pin	= AT91_PIN_PD4,
+	.ecc_mode	= NAND_ECC_HW,
+	.pmecc_sector_size = 512,
+	.pmecc_corr_cap = 2,
+	.bus_on_d0	= 1,
+	.on_flash_bbt	= 1,
+};
+
+static struct sam9_smc_config ek_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 2,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 1,
+
+	.ncs_read_pulse		= 6,
+	.nrd_pulse		= 4,
+	.ncs_write_pulse	= 5,
+	.nwe_pulse		= 3,
+
+	.read_cycle		= 7,
+	.write_cycle		= 5,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
+	.tdf_cycles		= 1,
+};
+
+static void ek_add_device_nand(void)
+{
+	ek_nand_smc_config.mode |= AT91_SMC_DBW_8;
+
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(3, &ek_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+
+/*
+ * KS8851 ethernet device
+ */
+#if defined(CONFIG_DRIVER_NET_KS8851_MLL)
+/*
+ * SMC timings for the KS8851.
+ * Note: These timings were calculated
+ * for MASTER_CLOCK = 100000000 according to the KS8851 timings.
+ */
+static struct sam9_smc_config __initdata ks8851_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 1,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 2,
+
+	.ncs_read_pulse		= 7,
+	.nrd_pulse		= 7,
+	.ncs_write_pulse	= 7,
+	.nwe_pulse		= 7,
+
+	.read_cycle		= 9,
+	.write_cycle		= 9,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_BAT_SELECT | AT91_SMC_DBW_16,
+	.tdf_cycles		= 1,
+};
+
+static void __init ek_add_device_ks8851(void)
+{
+	/* Configure chip-select 2 (KS8851) */
+	sam9_smc_configure(2, &ks8851_smc_config);
+	/* Configure NCS signal */
+	at91_set_B_periph(AT91_PIN_PD19, 0);
+	/* Configure Interrupt pin as input, no pull-up */
+	at91_set_gpio_input(AT91_PIN_PD21, 0);
+
+	add_ks8851_device(DEVICE_ID_SINGLE, AT91_CHIPSELECT_2, AT91_CHIPSELECT_2 + 2,
+				IORESOURCE_MEM_16BIT, NULL);
+}
+#else
+static void __init ek_add_device_ks8851(void) {}
+#endif /* CONFIG_DRIVER_NET_KS8851_MLL */
+
+/*
+ * MCI (SD/MMC)
+ */
+/* mci0 detect_pin is revision dependent */
+static struct atmel_mci_platform_data mci0_data = {
+	.bus_width	= 4,
+	.detect_pin	= AT91_PIN_PA7,
+	.wp_pin		= 0,
+};
+
+static void ek_add_device_mci(void)
+{
+	/* MMC0 */
+	at91_add_device_mci(0, &mci0_data);
+}
+
+struct qt1070_platform_data qt1070_pdata = {
+	.irq_pin	= AT91_PIN_PA2,
+};
+
+static struct i2c_board_info i2c_devices[] = {
+	{
+		.platform_data = &qt1070_pdata,
+		I2C_BOARD_INFO("qt1070", 0x1b),
+	},
+};
+
+static void ek_add_device_i2c(void)
+{
+	at91_set_gpio_input(qt1070_pdata.irq_pin, 0);
+	at91_set_deglitch(qt1070_pdata.irq_pin, 1);
+	at91_add_device_i2c(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+}
+
+static const struct spi_board_info ek_spi_devices[] = {
+	{
+		.name		= "m25p80",
+		.chip_select	= 0,
+		.max_speed_hz	= 1 * 1000 * 1000,
+		.bus_num	= 0,
+	},
+};
+
+static unsigned spi0_standard_cs[] = { AT91_PIN_PA14 };
+static struct at91_spi_platform_data spi_pdata = {
+	.chipselect = spi0_standard_cs,
+	.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+};
+
+static void ek_add_device_spi(void)
+{
+	spi_register_board_info(ek_spi_devices,
+				ARRAY_SIZE(ek_spi_devices));
+	at91_add_device_spi(0, &spi_pdata);
+}
+
+/*
+ * USB Device port
+ */
+static struct at91_udc_data __initdata ek_udc_data = {
+	.vbus_pin	= AT91_PIN_PB16,
+	.pullup_pin	= 0,		/* pull-up driven by UDC */
+};
+
+struct gpio_led leds[] = {
+	{
+		.gpio	= AT91_PIN_PB4,
+		.led	= {
+			.name = "d8",
+		},
+	}, {
+		.gpio	= AT91_PIN_PB5,
+		.active_low	= 1,
+		.led	= {
+			.name = "d9",
+		},
+	}, {
+		.gpio	= AT91_PIN_PB6,
+		.led	= {
+			.name = "10",
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
+static void __init ek_add_device_buttons(void)
+{
+	at91_set_gpio_input(AT91_PIN_PB3, 1);
+	at91_set_deglitch(AT91_PIN_PB3, 1);
+	export_env_ull("dfu_button", AT91_PIN_PB3);
+}
+
+static int at91sam9n12ek_mem_init(void)
+{
+	at91_add_device_sdram(128 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(at91sam9n12ek_mem_init);
+
+static int at91sam9n12ek_devices_init(void)
+{
+	ek_add_device_spi();
+	ek_add_device_nand();
+	ek_add_device_mci();
+	ek_add_led();
+	at91_add_device_udc(&ek_udc_data);
+	ek_add_device_i2c();
+	ek_add_device_ks8851();
+	ek_add_device_buttons();
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
+	armlinux_set_architecture(CONFIG_MACH_AT91SAM9N12EK);
+
+	devfs_add_partition("nand0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
+	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
+	devfs_add_partition("nand0", SZ_256K, SZ_256K + SZ_128K, DEVFS_PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", SZ_512K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+	devfs_add_partition("nand0", SZ_512K + SZ_256K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
+	dev_add_bb_dev("env_raw1", "env1");
+
+	return 0;
+}
+device_initcall(at91sam9n12ek_devices_init);
+
+static int at91sam9n12ek_console_init(void)
+{
+	at91_register_uart(0, 0);
+	return 0;
+}
+console_initcall(at91sam9n12ek_console_init);
diff --git a/arch/arm/configs/at91sam9n12ek_defconfig b/arch/arm/configs/at91sam9n12ek_defconfig
new file mode 100644
index 0000000..d46a9bd
--- /dev/null
+++ b/arch/arm/configs/at91sam9n12ek_defconfig
@@ -0,0 +1,87 @@
+CONFIG_ARCH_AT91SAM9N12=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x26f00000
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
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9n12ek/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
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
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_DRIVER_NET_KS8851_MLL=y
+CONFIG_DRIVER_SPI_ATMEL=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_M25P80=y
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_SOFT is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+CONFIG_NAND_ATMEL_PMECC=y
+CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_ATMEL=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_EEPROM_AT24=y
+CONFIG_KEYBOARD_GPIO=y
+CONFIG_KEYBOARD_QT1070=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_ZLIB=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index e7e1c84..1af5cc2 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -14,6 +14,7 @@ config BOARDINFO
 	default "Atmel at91sam9g10-ek" if MACH_AT91SAM9G10EK
 	default "Atmel at91sam9g20-ek" if MACH_AT91SAM9G20EK
 	default "Atmel at91sam9m10g45-ek" if MACH_AT91SAM9M10G45EK
+	default "Atmel at91sam9n12-ek" if MACH_AT91SAM9N12EK
 	default "Atmel at91sam9x5-ek" if MACH_AT91SAM9X5EK
 	default "Bucyrus MMC-CPU" if MACH_MMCCPU
 	default "Calao USB-A9260" if MACH_USB_A9260
@@ -342,6 +343,22 @@ endif
 
 # ----------------------------------------------------------
 
+if ARCH_AT91SAM9N12
+
+choice
+	prompt "AT91SAM9N12 Board Type"
+
+config MACH_AT91SAM9N12EK
+	bool "Atmel AT91SAM9N12 Evaluation Kit"
+	help
+	  Select this if you are using Atmel's AT91SAM9N12-EK Evaluation Kit.
+
+endchoice
+
+endif
+
+# ----------------------------------------------------------
+
 comment "AT91 Board Options"
 
 config MTD_AT91_DATAFLASH_CARD
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
