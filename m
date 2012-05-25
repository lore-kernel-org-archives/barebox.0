Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SXodD-00011t-Vd
 for barebox@lists.infradead.org; Fri, 25 May 2012 07:08:19 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id EB1CAFF8B98
 for <barebox@lists.infradead.org>; Fri, 25 May 2012 09:11:11 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 May 2012 09:08:14 +0200
Message-Id: <1337929696-12950-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] add Calao QIL A9260 support and MB-QIL A9260 Motherboard
 support
To: barebox@lists.infradead.org

with:
 - led
 - USB Device
 - uart
 - net
 - mmc
 - MMU

dfu support

detect it at boot time

if the user button is pressed 5s and the vbus is 1 start the dfu
otherwise the vbus is 1 start usb serial

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                            |    1 +
 arch/arm/boards/qil-a9260/Makefile           |    1 +
 arch/arm/boards/qil-a9260/config.h           |    6 +
 arch/arm/boards/qil-a9260/env/bin/init_board |   49 ++++++
 arch/arm/boards/qil-a9260/env/config         |   39 +++++
 arch/arm/boards/qil-a9260/init.c             |  208 ++++++++++++++++++++++++++
 arch/arm/configs/qil_a9260_128mib_defconfig  |   78 ++++++++++
 arch/arm/configs/qil_a9260_defconfig         |   77 ++++++++++
 arch/arm/mach-at91/Kconfig                   |   13 ++-
 9 files changed, 471 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/boards/qil-a9260/Makefile
 create mode 100644 arch/arm/boards/qil-a9260/config.h
 create mode 100644 arch/arm/boards/qil-a9260/env/bin/init_board
 create mode 100644 arch/arm/boards/qil-a9260/env/config
 create mode 100644 arch/arm/boards/qil-a9260/init.c
 create mode 100644 arch/arm/configs/qil_a9260_128mib_defconfig
 create mode 100644 arch/arm/configs/qil_a9260_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d0bfd71..2e6402b 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -122,6 +122,7 @@ board-$(CONFIG_MACH_FREESCALE_MX53_LOCO)	:= freescale-mx53-loco
 board-$(CONFIG_MACH_FREESCALE_MX53_SMD)		:= freescale-mx53-smd
 board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
 board-$(CONFIG_MACH_MINI2440)			:= mini2440
+board-$(CONFIG_MACH_QIL_A9260)			:= qil-a9260
 board-$(CONFIG_MACH_TNY_A9260)			:= tny-a926x
 board-$(CONFIG_MACH_TNY_A9263)			:= tny-a926x
 board-$(CONFIG_MACH_TNY_A9G20)			:= tny-a926x
diff --git a/arch/arm/boards/qil-a9260/Makefile b/arch/arm/boards/qil-a9260/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/qil-a9260/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/qil-a9260/config.h b/arch/arm/boards/qil-a9260/config.h
new file mode 100644
index 0000000..d971810
--- /dev/null
+++ b/arch/arm/boards/qil-a9260/config.h
@@ -0,0 +1,6 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		12000000	/* 12 MHz crystal */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/qil-a9260/env/bin/init_board b/arch/arm/boards/qil-a9260/env/bin/init_board
new file mode 100644
index 0000000..0a6baf7
--- /dev/null
+++ b/arch/arm/boards/qil-a9260/env/bin/init_board
@@ -0,0 +1,49 @@
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
+dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
diff --git a/arch/arm/boards/qil-a9260/env/config b/arch/arm/boards/qil-a9260/env/config
new file mode 100644
index 0000000..c0b5546
--- /dev/null
+++ b/arch/arm/boards/qil-a9260/env/config
@@ -0,0 +1,39 @@
+#!/bin/sh
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp-barebox
+dhcp_vendor_id=barebox-qil-a9260
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
+oftree_loc=none
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
+nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
+rootfs_mtdblock_nand=6
+
+autoboot_timeout=3
+
+bootargs="console=ttyS1,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
diff --git a/arch/arm/boards/qil-a9260/init.c b/arch/arm/boards/qil-a9260/init.c
new file mode 100644
index 0000000..5f8dacb
--- /dev/null
+++ b/arch/arm/boards/qil-a9260/init.c
@@ -0,0 +1,208 @@
+/*
+ * Copyright (C) 2011-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPLv2
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
+#include <io.h>
+#include <asm/hardware.h>
+#include <nand.h>
+#include <sizes.h>
+#include <linux/mtd/nand.h>
+#include <linux/clk.h>
+#include <mach/board.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/sam9_smc.h>
+#include <gpio.h>
+#include <led.h>
+#include <mach/io.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_rstc.h>
+
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+	.det_pin	= 0,
+	.rdy_pin	= AT91_PIN_PC13,
+	.enable_pin	= AT91_PIN_PC14,
+	.on_flash_bbt	= 1,
+};
+
+static struct sam9_smc_config nand_smc_config = {
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
+static void qil_a9260_add_device_nand(void)
+{
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(3, &nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+
+#if defined(CONFIG_MCI_ATMEL)
+static struct atmel_mci_platform_data __initdata qil_a9260_mci_data = {
+	.bus_width	= 4,
+};
+
+static void qil_a9260_add_device_mci(void)
+{
+	at91_add_device_mci(0, &qil_a9260_mci_data);
+}
+#else
+static void qil_a9260_add_device_mci(void) {}
+#endif
+
+#ifdef CONFIG_CALAO_MB_QIL_A9260
+static struct at91_ether_platform_data macb_pdata = {
+	.flags		= AT91SAM_ETHER_RMII,
+	.phy_addr	= 0,
+};
+
+static void qil_a9260_phy_reset(void)
+{
+	unsigned long rstc;
+	struct clk *clk = clk_get(NULL, "macb_clk");
+
+	clk_enable(clk);
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
+ * USB Device port
+ */
+static struct at91_udc_data __initdata ek_udc_data = {
+	.vbus_pin	= AT91_PIN_PC5,
+	.pullup_pin	= 0,		/* pull-up driven by UDC */
+};
+
+static void __init qil_a9260_add_device_mb(void)
+{
+	qil_a9260_phy_reset();
+	at91_add_device_eth(0, &macb_pdata);
+	at91_add_device_udc(&ek_udc_data);
+}
+#else
+static void __init qil_a9260_add_device_mb(void)
+{
+}
+#endif
+
+struct gpio_led led = {
+	.gpio = AT91_PIN_PB21,
+	.led = {
+		.name = "user_led",
+	},
+};
+
+static void __init ek_add_led(void)
+{
+	at91_set_gpio_output(led.gpio, led.active_low);
+	led_gpio_register(&led);
+}
+
+static int qil_a9260_mem_init(void)
+{
+#ifdef CONFIG_AT91_HAVE_SRAM_128M
+	at91_add_device_sdram(128 * 1024 * 1024);
+#else
+	at91_add_device_sdram(64 * 1024 * 1024);
+#endif
+
+	return 0;
+}
+mem_initcall(qil_a9260_mem_init);
+
+static void __init ek_add_device_button(void)
+{
+	at91_set_GPIO_periph(AT91_PIN_PB10, 1);	/* user push button, pull up enabled */
+	at91_set_deglitch(AT91_PIN_PB10, 1);
+
+	export_env_ull("dfu_button", AT91_PIN_PB10);
+}
+
+static int qil_a9260_devices_init(void)
+{
+	qil_a9260_add_device_nand();
+	qil_a9260_add_device_mci();
+	ek_add_led();
+	ek_add_device_button();
+	qil_a9260_add_device_mb();
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
+	armlinux_set_architecture(MACH_TYPE_QIL_A9260);
+
+	devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "at91bootstrap_raw");
+	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
+	devfs_add_partition("nand0", SZ_128K, SZ_256K, PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+	devfs_add_partition("nand0", SZ_512K, SZ_128K, PARTITION_FIXED, "env_raw1");
+	dev_add_bb_dev("env_raw1", "env1");
+
+	return 0;
+}
+device_initcall(qil_a9260_devices_init);
+
+#ifdef CONFIG_CALAO_MB_QIL_A9260
+static int qil_a9260_console_init(void)
+{
+	at91_register_uart(0, 0);
+	at91_register_uart(1, ATMEL_UART_CTS | ATMEL_UART_RTS
+			   | ATMEL_UART_DTR | ATMEL_UART_DSR | ATMEL_UART_DCD
+			   | ATMEL_UART_RI);
+	at91_register_uart(2, ATMEL_UART_CTS | ATMEL_UART_RTS);
+	at91_register_uart(3, ATMEL_UART_CTS | ATMEL_UART_RTS);
+
+	return 0;
+}
+console_initcall(qil_a9260_console_init);
+#endif
diff --git a/arch/arm/configs/qil_a9260_128mib_defconfig b/arch/arm/configs/qil_a9260_128mib_defconfig
new file mode 100644
index 0000000..555d94f
--- /dev/null
+++ b/arch/arm/configs/qil_a9260_128mib_defconfig
@@ -0,0 +1,78 @@
+CONFIG_ARCH_AT91SAM9260=y
+CONFIG_MACH_QIL_A9260=y
+CONFIG_AT91_HAVE_SRAM_128M=y
+CONFIG_CALAO_MB_QIL_A9260=y
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_EXPERIMENTAL=y
+CONFIG_PROMPT="USB-9G20:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/qil-a9260/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
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
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
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
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_MCI=y
+CONFIG_MCI_ATMEL=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
new file mode 100644
index 0000000..9e54a14
--- /dev/null
+++ b/arch/arm/configs/qil_a9260_defconfig
@@ -0,0 +1,77 @@
+CONFIG_ARCH_AT91SAM9260=y
+CONFIG_MACH_QIL_A9260=y
+CONFIG_CALAO_MB_QIL_A9260=y
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_EXPERIMENTAL=y
+CONFIG_PROMPT="USB-9G20:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/qil-a9260/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
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
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
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
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_MCI=y
+CONFIG_MCI_ATMEL=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 1bec3e5..7514ea9 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -25,6 +25,7 @@ config BOARDINFO
 	default "Calao TNY-A9260" if MACH_TNY_A9260
 	default "Calao TNY-A9263" if MACH_TNY_A9263
 	default "Calao TNY-A9G20" if MACH_TNY_A9G20
+	default "Calao QIL-A9260" if MACH_QIL_A9260
 
 config HAVE_NAND_ATMEL_BUSWIDTH_16
 	bool
@@ -139,6 +140,12 @@ config MACH_AT91SAM9260EK
 	help
 	  Say y here if you are using Atmel's AT91SAM9260-EK Evaluation board
 
+config MACH_QIL_A9260
+	bool "CALAO QIL-A9260 board"
+	help
+	  Select this if you are using a Calao Systems QIL-A9260 Board.
+	  <http://www.calao-systems.com>
+
 config MACH_TNY_A9260
 	bool "CALAO TNY-A9260"
 	select SUPPORT_CALAO_MOB_TNY_MD2
@@ -344,7 +351,7 @@ config AT91_HAVE_2MMC
 
 config AT91_HAVE_SRAM_128M
 	bool "Have 128 of ram"
-	depends on MACH_USB_A9G20 || MACH_USB_A9263
+	depends on MACH_USB_A9G20 || MACH_USB_A9263 || MACH_QIL_A9260
 	help
 	  Select this if you board have 128 MiB of Ram (as USB_A9G20 C11)
 
@@ -372,4 +379,8 @@ config CALAO_MOB_TNY_MD2
 	bool "MOB TNY MD2 Motherboard Daughter Board support"
 	depends on SUPPORT_CALAO_MOB_TNY_MD2
 
+config CALAO_MB_QIL_A9260
+	bool "MB-QIL A9260  Motherboard Board support"
+	depends on MACH_QIL_A9260
+
 endif
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
