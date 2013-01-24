Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TyTte-0007Dq-LF
 for barebox@lists.infradead.org; Thu, 24 Jan 2013 20:59:44 +0000
Received: from mail617.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 859BEFF8D0B
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2013 22:13:34 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 24 Jan 2013 21:58:21 +0100
Message-Id: <1359061101-2421-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359061101-2421-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130124205155.GY26329@game.jcrosoft.org>
 <1359061101-2421-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] at91: add Somfy Animeo IP support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                    |    1 +
 arch/arm/boards/animeo_ip/Makefile   |    1 +
 arch/arm/boards/animeo_ip/config.h   |    6 +
 arch/arm/boards/animeo_ip/env/config |   39 ++++++
 arch/arm/boards/animeo_ip/init.c     |  255 ++++++++++++++++++++++++++++++++++
 arch/arm/configs/animeo_ip_defconfig |   79 +++++++++++
 arch/arm/mach-at91/Kconfig           |    5 +
 7 files changed, 386 insertions(+)
 create mode 100644 arch/arm/boards/animeo_ip/Makefile
 create mode 100644 arch/arm/boards/animeo_ip/config.h
 create mode 100644 arch/arm/boards/animeo_ip/env/config
 create mode 100644 arch/arm/boards/animeo_ip/init.c
 create mode 100644 arch/arm/configs/animeo_ip_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a36adfb..581e101 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -69,6 +69,7 @@ machine-$(CONFIG_ARCH_TEGRA)		:= tegra
 # by CONFIG_* macro name.
 board-$(CONFIG_MACH_A9M2410)			:= a9m2410
 board-$(CONFIG_MACH_A9M2440)			:= a9m2440
+board-$(CONFIG_MACH_ANIMEO_IP)			:= animeo_ip
 board-$(CONFIG_MACH_AT91RM9200EK)		:= at91rm9200ek
 board-$(CONFIG_MACH_AT91SAM9260EK)		:= at91sam9260ek
 board-$(CONFIG_MACH_AT91SAM9261EK)		:= at91sam9261ek
diff --git a/arch/arm/boards/animeo_ip/Makefile b/arch/arm/boards/animeo_ip/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/animeo_ip/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/animeo_ip/config.h b/arch/arm/boards/animeo_ip/config.h
new file mode 100644
index 0000000..006820c
--- /dev/null
+++ b/arch/arm/boards/animeo_ip/config.h
@@ -0,0 +1,6 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		18432000	/* 18.432 MHz crystal */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/animeo_ip/env/config b/arch/arm/boards/animeo_ip/env/config
new file mode 100644
index 0000000..bbea2ed
--- /dev/null
+++ b/arch/arm/boards/animeo_ip/env/config
@@ -0,0 +1,39 @@
+#!/bin/sh
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp-barebox
+global.dhcp.vendor_id=barebox-animeo-ip
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
+# can be either 'nfs', 'tftp', 'nor', 'nand' or empty
+oftree_loc=nfs
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root.$rootfs_type
+
+kernelimage=zImage
+#kernelimage=uImage
+#kernelimage=Image
+#kernelimage=Image.lzo
+
+nand_device=atmel_nand
+nand_parts="32k(at91bootstrap),256k(barebox)ro,32k(bareboxenv),704k(user_block),1728k(kernel),-(root)"
+rootfs_mtdblock_nand=5
+
+autoboot_timeout=3
+
+bootargs="console=ttyS3,38400n8 earlyprintk"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
new file mode 100644
index 0000000..2ae627a
--- /dev/null
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -0,0 +1,255 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
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
+
+static bool animeo_ip_is_buco;
+static bool animeo_ip_is_io;
+
+static void animeo_ip_detect_version(void)
+{
+	struct device_d *dev = NULL;
+	char *model, *version;
+
+	at91_set_gpio_input(AT91_PIN_PC20, 0);
+	at91_set_gpio_input(AT91_PIN_PC21, 0);
+
+	animeo_ip_is_buco = !!gpio_get_value(AT91_PIN_PC20);
+	animeo_ip_is_io = !!gpio_get_value(AT91_PIN_PC21);
+
+	dev = add_generic_device_res("animeo_ip", DEVICE_ID_SINGLE, NULL, 0, NULL);
+
+	if (animeo_ip_is_buco)
+		model = "BuCo";
+	else
+		model = "SubCo";
+
+	if (animeo_ip_is_io)
+		version = "IO";
+	else
+		version = "SDN";
+
+	dev_add_param_fixed(dev, "model", model);
+	dev_add_param_fixed(dev, "version", version);
+}
+
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+	.det_pin	= -EINVAL,
+	.rdy_pin	= AT91_PIN_PC13,
+	.enable_pin	= AT91_PIN_PC14,
+	.bus_width_16	= 0,
+	.on_flash_bbt	= 1,
+};
+
+static struct sam9_smc_config animeo_ip_nand_smc_config = {
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
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
+	.tdf_cycles		= 2,
+};
+
+static void animeo_ip_add_device_nand(void)
+{
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(3, &animeo_ip_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+
+static struct at91_ether_platform_data macb_pdata = {
+	.phy_addr = 0,
+};
+
+static void animeo_ip_phy_reset(void)
+{
+	unsigned long rstc;
+	at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9260_ID_EMAC);
+
+	at91_set_gpio_input(AT91_PIN_PA14, 0);
+	at91_set_gpio_input(AT91_PIN_PA15, 0);
+	at91_set_gpio_input(AT91_PIN_PA17, 0);
+	at91_set_gpio_input(AT91_PIN_PA25, 0);
+	at91_set_gpio_input(AT91_PIN_PA26, 0);
+	at91_set_gpio_input(AT91_PIN_PA28, 0);
+
+	rstc = at91_sys_read(AT91_RSTC_MR) & AT91_RSTC_ERSTL;
+
+	/* Need to reset PHY -> 500ms reset */
+	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
+				     (AT91_RSTC_ERSTL & (0x0d << 8)) |
+				     AT91_RSTC_URSTEN);
+
+	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY | AT91_RSTC_EXTRST);
+
+	/* Wait for end hardware reset */
+	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL));
+
+	/* Restore NRST value */
+	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
+				     (rstc) |
+				     AT91_RSTC_URSTEN);
+}
+
+/*
+ * MCI (SD/MMC)
+ */
+#if defined(CONFIG_MCI_ATMEL)
+static struct atmel_mci_platform_data __initdata animeo_ip_mci_data = {
+	.bus_width	= 4,
+	.slot_b		= 1,
+	.detect_pin	= -EINVAL,
+	.wp_pin		= -EINVAL,
+};
+
+static void animeo_ip_add_device_mci(void)
+{
+	at91_add_device_mci(0, &animeo_ip_mci_data);
+}
+#else
+static void animeo_ip_add_device_mci(void) {}
+#endif
+
+struct gpio_bicolor_led leds[] = {
+	{
+		.gpio_c0 = AT91_PIN_PC17,
+		.gpio_c1 = AT91_PIN_PA2,
+		.led	= {
+			.name = "power_red_green",
+		},
+	}, {
+		.gpio_c0 = AT91_PIN_PC19,
+		.gpio_c1 = AT91_PIN_PC18,
+		.led	= {
+			.name = "tx_greem_rx_yellow",
+		},
+	},
+};
+
+static void __init animeo_ip_add_device_led(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(leds); i++) {
+		at91_set_gpio_output(leds[i].gpio_c0, leds[i].active_low);
+		at91_set_gpio_output(leds[i].gpio_c1, leds[i].active_low);
+		led_gpio_bicolor_register(&leds[i]);
+	}
+	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[0].led);
+}
+
+static int animeo_ip_mem_init(void)
+{
+	at91_add_device_sdram(0);
+
+	return 0;
+}
+mem_initcall(animeo_ip_mem_init);
+
+static void animeo_export_gpio_in(int gpio, const char *name)
+{
+	at91_set_gpio_input(gpio, 0);
+	at91_set_deglitch(gpio, 1);
+	export_env_ull(name, gpio);
+}
+
+static void animeo_ip_add_device_buttons(void)
+{
+	animeo_export_gpio_in(AT91_PIN_PB1,  "keyswitch_in");
+	animeo_export_gpio_in(AT91_PIN_PB2,  "error_in");
+	animeo_export_gpio_in(AT91_PIN_PC22, "jumper");
+	animeo_export_gpio_in(AT91_PIN_PC23, "btn");
+}
+
+static void animeo_export_gpio_out(int gpio, const char *name)
+{
+	at91_set_gpio_output(gpio, 0);
+	export_env_ull(name, gpio);
+}
+
+static void animeo_ip_power_control(void)
+{
+	animeo_export_gpio_out(AT91_PIN_PB0, "power_radio");
+	animeo_export_gpio_out(AT91_PIN_PB3, "error_out_relay");
+	animeo_export_gpio_out(AT91_PIN_PC4, "power_save");
+}
+
+static int animeo_ip_devices_init(void)
+{
+	animeo_ip_detect_version();
+	animeo_ip_power_control();
+	animeo_ip_add_device_nand();
+	animeo_ip_phy_reset();
+	at91_add_device_eth(0, &macb_pdata);
+	animeo_ip_add_device_mci();
+	animeo_ip_add_device_buttons();
+	animeo_ip_add_device_led();
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
+	/*
+	 * in production the machine id used is the cpu module machine id
+	 * PICOCOM1
+	 */
+	armlinux_set_architecture(MACH_TYPE_PICOCOM1);
+
+	devfs_add_partition("nand0", 0x00000, SZ_32K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
+	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
+	devfs_add_partition("nand0", SZ_32K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", SZ_256K + SZ_32K, SZ_32K, DEVFS_PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+
+	return 0;
+}
+
+device_initcall(animeo_ip_devices_init);
+
+static int animeo_ip_console_init(void)
+{
+	/*
+	 * disable the dbgu enable by the bootstrap
+	 * so linux can detect that we only enable the uart2
+	 * and use it for decompress
+	 */
+#define ATMEL_US_BRGR	0x0020
+	at91_sys_write(AT91_DBGU + ATMEL_US_BRGR, 0);
+	at91_register_uart(3, 0);
+	return 0;
+}
+console_initcall(animeo_ip_console_init);
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
new file mode 100644
index 0000000..23e7278
--- /dev/null
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -0,0 +1,79 @@
+CONFIG_ARCH_AT91SAM9260=y
+CONFIG_MACH_ANIMEO_IP=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="Animeo-IP:"
+CONFIG_BAUDRATE=38400
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/animeo_ip/env"
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
+CONFIG_CMD_BOOTM_VERBOSE=y
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
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_WD=y
+CONFIG_CMD_WD_DEFAULT_TIMOUT=16
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_MICREL_PHY=y
+CONFIG_DRIVER_NET_MACB=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_ATMEL=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_BICOLOR=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_AT91SAM9X=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 4323d7c..612bf7c 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -22,6 +22,7 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x73f00000 if ARCH_AT91SAM9G45
 	default 0x26f00000 if ARCH_AT91SAM9X5
+	default 0x21f00000 if MACH_ANIMEO_IP
 	default 0x23f00000
 
 config BOARDINFO
@@ -46,6 +47,7 @@ config BOARDINFO
 	default "Calao TNY-A9263" if MACH_TNY_A9263
 	default "Calao TNY-A9G20" if MACH_TNY_A9G20
 	default "Calao QIL-A9260" if MACH_QIL_A9260
+	default "Somfy Animeo IP" if MACH_ANIMEO_IP
 
 config HAVE_NAND_ATMEL_BUSWIDTH_16
 	bool
@@ -209,6 +211,9 @@ if ARCH_AT91SAM9260
 choice
 	prompt "AT91SAM9260 Board Type"
 
+config MACH_ANIMEO_IP
+	bool "Somfy Animeo IP"
+
 config MACH_AT91SAM9260EK
 	bool "Atmel AT91SAM9260-EK"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
