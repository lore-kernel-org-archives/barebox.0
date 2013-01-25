Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f54.google.com ([209.85.214.54])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TyiSx-0004D8-6V
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 12:33:09 +0000
Received: by mail-bk0-f54.google.com with SMTP id w5so205056bku.27
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 04:33:04 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Fri, 25 Jan 2013 13:33:01 +0100
Message-Id: <1359117181-18599-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH v4] ARM: at91: Add Telit EVK-PRO3 board support
To: barebox@lists.infradead.org

http://www.telit.com

Based on at91sam9260ek board support.

Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
---
v4:
  - use a gpio for dfu
  - remove HAVE_NAND_ATMEL_BUSWIDTH_16
v3:
 - add dfu support
 - init.c: reduced bootstrap size
 - init.c: moved istructions from evk_add_device_nand function to the struct
 - init.c: remove blank line
 - renamed to telit-evk-pro3

v2:
 - init.c: remove 9260ek and g20ek references
 - init.c: rename ek_ -> evk_
 - init.c: cleanup headers
 - init.c: use clock framework
 - init.c: remove function ek_set_board_type
 - init.c: remove bus_width_16 initialization 

 arch/arm/Makefile                                  |   1 +
 arch/arm/boards/telit-evk-pro3/Makefile            |   1 +
 arch/arm/boards/telit-evk-pro3/config.h            |   6 +
 arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi   |  10 ++
 .../boards/telit-evk-pro3/env/init/config-board    |   8 +
 .../boards/telit-evk-pro3/env/init/mtdparts-nand   |  11 ++
 arch/arm/boards/telit-evk-pro3/env/init/usb        |  40 +++++
 arch/arm/boards/telit-evk-pro3/init.c              | 178 +++++++++++++++++++++
 arch/arm/configs/telit_evk_pro3_defconfig          |  73 +++++++++
 arch/arm/mach-at91/Kconfig                         |   8 +
 10 files changed, 336 insertions(+)
 create mode 100644 arch/arm/boards/telit-evk-pro3/Makefile
 create mode 100644 arch/arm/boards/telit-evk-pro3/config.h
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/init/config-board
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/init/usb
 create mode 100644 arch/arm/boards/telit-evk-pro3/init.c
 create mode 100644 arch/arm/configs/telit_evk_pro3_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a36adfb..60661eb 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -94,6 +94,7 @@ board-$(CONFIG_MACH_EUKREA_CPUIMX35)		:= eukrea_cpuimx35
 board-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		:= eukrea_cpuimx51
 board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	:= freescale-mx25-3-stack
 board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	:= freescale-mx35-3-stack
+board-$(CONFIG_MACH_GE863)			:= telit-evk-pro3
 board-$(CONFIG_MACH_IMX21ADS)			:= imx21ads
 board-$(CONFIG_MACH_IMX27ADS)			:= imx27ads
 board-$(CONFIG_MACH_IMX233_OLINUXINO)	:= imx233-olinuxino
diff --git a/arch/arm/boards/telit-evk-pro3/Makefile b/arch/arm/boards/telit-evk-pro3/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/telit-evk-pro3/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/telit-evk-pro3/config.h b/arch/arm/boards/telit-evk-pro3/config.h
new file mode 100644
index 0000000..7aeff30
--- /dev/null
+++ b/arch/arm/boards/telit-evk-pro3/config.h
@@ -0,0 +1,6 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		6000000		/*  6.000 MHz crystal */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi b/arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi
new file mode 100644
index 0000000..1987492
--- /dev/null
+++ b/arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "nand (UBI)"
+	exit
+fi
+
+global.bootm.image="/dev/nand0.kernel.bb"
+#global.bootm.oftree="/env/oftree"
+global.linux.bootargs.dyn.root="root=ubi0:rootfs ubi.mtd=nand0.rootfs rootfstype=ubifs"
diff --git a/arch/arm/boards/telit-evk-pro3/env/init/config-board b/arch/arm/boards/telit-evk-pro3/env/init/config-board
new file mode 100644
index 0000000..741b902
--- /dev/null
+++ b/arch/arm/boards/telit-evk-pro3/env/init/config-board
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=evk-pro3
+global.linux.bootargs.base="console=ttyS0,115200"
+global.boot.default=nand-ubi
diff --git a/arch/arm/boards/telit-evk-pro3/env/init/mtdparts-nand b/arch/arm/boards/telit-evk-pro3/env/init/mtdparts-nand
new file mode 100644
index 0000000..58e859b
--- /dev/null
+++ b/arch/arm/boards/telit-evk-pro3/env/init/mtdparts-nand
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "NAND partitions"
+	exit
+fi
+
+mtdparts="0xC0000(nand0.bootstrap),256k(nand0.barebox)ro,128k(nand0.bareboxenv),3M(nand0.kernel),-(nand0.rootfs)"
+kernelname="atmel_nand"
+
+mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/telit-evk-pro3/env/init/usb b/arch/arm/boards/telit-evk-pro3/env/init/usb
new file mode 100644
index 0000000..47429f5
--- /dev/null
+++ b/arch/arm/boards/telit-evk-pro3/env/init/usb
@@ -0,0 +1,40 @@
+#!/bin/sh
+
+# Connect PC31 to GND to enable DFU
+gpio_dfu=95
+gpio_name="PC31"
+gpio_wait=5
+
+product_id=0x1234
+vendor_id=0x4321
+
+dfu_config="/dev/nand0.bootstrap.bb(bootstrap)sr,/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
+
+echo
+
+if [ $at91_udc0.vbus != 1 ]; then
+	echo "No USB Device cable plugged, normal boot"
+	exit
+fi
+
+gpio_get_value ${gpio_dfu}
+if [ $? = 0 ]; then
+	echo "${gpio_name} low value detected wait ${gpio_wait}s"
+	timeout -s -a ${gpio_wait}
+
+	if [ $at91_udc0.vbus != 1 ]; then
+		echo "No USB Device cable plugged, normal boot"
+		exit
+	fi
+
+	gpio_get_value ${gpio_dfu}
+	if [ $? = 0 ]; then
+		echo "Start DFU Mode"
+		dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
+		exit
+	fi
+fi
+
+global.autoboot_timeout=16
+echo "enable tty over USB Device, increase the boot delay to ${global.autoboot_timeout}s"
+usbserial
diff --git a/arch/arm/boards/telit-evk-pro3/init.c b/arch/arm/boards/telit-evk-pro3/init.c
new file mode 100644
index 0000000..06e6508
--- /dev/null
+++ b/arch/arm/boards/telit-evk-pro3/init.c
@@ -0,0 +1,178 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
+ * Copyright (C) 2013 Fabio Porcedda <fabio.porcedda@gmail.com>, Telit
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
+ */
+
+#include <asm/armlinux.h>
+#include <common.h>
+#include <gpio.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/board.h>
+#include <mach/io.h>
+#include <nand.h>
+
+#define BOOTSTRAP_SIZE 0xC0000
+
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+	.det_pin	= -EINVAL,
+	.rdy_pin	= AT91_PIN_PC13,
+	.enable_pin	= AT91_PIN_PC14,
+	.on_flash_bbt	= 1,
+};
+
+static struct sam9_smc_config evk_nand_smc_config = {
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
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
+				  AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
+	.tdf_cycles		= 2,
+};
+
+static void evk_add_device_nand(void)
+{
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(0, 3, &evk_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+
+static struct at91_ether_platform_data macb_pdata = {
+	.is_rmii = 1,
+	.phy_addr = 0,
+};
+
+static void evk_phy_reset(void)
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
+	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL))
+		;
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
+static struct atmel_mci_platform_data __initdata evk_mci_data = {
+	.bus_width	= 4,
+	.slot_b		= 1,
+};
+
+static void evk_usb_add_device_mci(void)
+{
+	at91_add_device_mci(0, &evk_mci_data);
+}
+#else
+static void evk_usb_add_device_mci(void) {}
+#endif
+
+/*
+ * USB Host port
+ */
+static struct at91_usbh_data __initdata evk_usbh_data = {
+	.ports		= 2,
+	.vbus_pin	= { -EINVAL, -EINVAL },
+};
+
+/*
+ * USB Device port
+ */
+static struct at91_udc_data __initdata evk_udc_data = {
+	.vbus_pin	= AT91_PIN_PC4,
+	.pullup_pin	= -EINVAL,		/* pull-up driven by UDC */
+};
+
+static int evk_mem_init(void)
+{
+	at91_add_device_sdram(0);
+
+	return 0;
+}
+mem_initcall(evk_mem_init);
+
+static int evk_devices_init(void)
+{
+	evk_add_device_nand();
+	evk_phy_reset();
+	at91_add_device_eth(0, &macb_pdata);
+	at91_add_device_usbh_ohci(&evk_usbh_data);
+	at91_add_device_udc(&evk_udc_data);
+	evk_usb_add_device_mci();
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
+
+	devfs_add_partition("nand0", 0x00000, BOOTSTRAP_SIZE,
+			    DEVFS_PARTITION_FIXED, "bootstrap_raw");
+	dev_add_bb_dev("bootstrap_raw", "bootstrap");
+	devfs_add_partition("nand0", BOOTSTRAP_SIZE, SZ_256K,
+			    DEVFS_PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", BOOTSTRAP_SIZE + SZ_256K, SZ_128K,
+			    DEVFS_PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+	devfs_add_partition("nand0", BOOTSTRAP_SIZE + SZ_256K + SZ_128K,
+			    SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
+	dev_add_bb_dev("env_raw1", "env1");
+
+	return 0;
+}
+
+device_initcall(evk_devices_init);
+
+static int evk_console_init(void)
+{
+	at91_register_uart(0, 0);
+	return 0;
+}
+console_initcall(evk_console_init);
diff --git a/arch/arm/configs/telit_evk_pro3_defconfig b/arch/arm/configs/telit_evk_pro3_defconfig
new file mode 100644
index 0000000..050d176
--- /dev/null
+++ b/arch/arm/configs/telit_evk_pro3_defconfig
@@ -0,0 +1,73 @@
+CONFIG_ARCH_AT91SAM9260=y
+CONFIG_MACH_GE863=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_EXPERIMENTAL=y
+CONFIG_PROMPT="EVK-PRO3:"
+CONFIG_LONGHELP=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/telit-evk-pro3/env"
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
+CONFIG_CMD_UBIFORMAT=y
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
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_NETCONSOLE=y
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
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_ATMEL=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index fcba7fb..97eec3e 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -46,6 +46,7 @@ config BOARDINFO
 	default "Calao TNY-A9263" if MACH_TNY_A9263
 	default "Calao TNY-A9G20" if MACH_TNY_A9G20
 	default "Calao QIL-A9260" if MACH_QIL_A9260
+	default "Telit EVK-PRO3" if MACH_GE863
 
 config HAVE_NAND_ATMEL_BUSWIDTH_16
 	bool
@@ -235,6 +236,13 @@ config MACH_USB_A9260
 	  Select this if you are using a Calao Systems USB-A9260.
 	  <http://www.calao-systems.com>
 
+config MACH_GE863
+	bool "Telit EVK-PRO3"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	help
+	  Say y here if you are using Telit EVK-PRO3 with GE863-PRO3
+	  <http://www.telit.com>
+
 endchoice
 
 endif
-- 
1.8.0.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
