Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo1.mail-out.ovh.net ([178.33.253.128]
	helo=mo1.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R5d6z-0000X4-Rq
	for barebox@lists.infradead.org; Mon, 19 Sep 2011 12:38:21 +0000
Received: from mail179.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id 0AAA410140A3
	for <barebox@lists.infradead.org>;
	Mon, 19 Sep 2011 14:39:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 19 Sep 2011 14:15:48 +0200
Message-Id: <1316434549-15243-11-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
References: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/12] at91: add Calao USB-A960 and USB-A9G20 C01 & C11 board
	support
To: barebox@lists.infradead.org

http://www.calao-systems.com

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                           |    2 +
 arch/arm/boards/usb-a926x/Makefile          |    1 +
 arch/arm/boards/usb-a926x/config.h          |    6 +
 arch/arm/boards/usb-a926x/env/config        |   41 ++++++
 arch/arm/boards/usb-a926x/init.c            |  195 +++++++++++++++++++++++++++
 arch/arm/configs/usb_a9260_defconfig        |   58 ++++++++
 arch/arm/configs/usb_a9g20_128mib_defconfig |   59 ++++++++
 arch/arm/configs/usb_a9g20_defconfig        |   58 ++++++++
 arch/arm/mach-at91/Kconfig                  |   20 +++
 9 files changed, 440 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/usb-a926x/Makefile
 create mode 100644 arch/arm/boards/usb-a926x/config.h
 create mode 100644 arch/arm/boards/usb-a926x/env/config
 create mode 100644 arch/arm/boards/usb-a926x/init.c
 create mode 100644 arch/arm/configs/usb_a9260_defconfig
 create mode 100644 arch/arm/configs/usb_a9g20_128mib_defconfig
 create mode 100644 arch/arm/configs/usb_a9g20_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index f1c045e..f226575 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -105,6 +105,8 @@ board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		:= freescale-mx51-pdk
 board-$(CONFIG_MACH_FREESCALE_MX53_LOCO)	:= freescale-mx53-loco
 board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
 board-$(CONFIG_MACH_MINI2440)			:= mini2440
+board-$(CONFIG_MACH_USB_A9260)			:= usb-a926x
+board-$(CONFIG_MACH_USB_A9G20)			:= usb-a926x
 board-$(CONFIG_MACH_VERSATILEPB)		:= versatile
 board-$(CONFIG_MACH_TX25)			:= karo-tx25
 
diff --git a/arch/arm/boards/usb-a926x/Makefile b/arch/arm/boards/usb-a926x/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/usb-a926x/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/usb-a926x/config.h b/arch/arm/boards/usb-a926x/config.h
new file mode 100644
index 0000000..d971810
--- /dev/null
+++ b/arch/arm/boards/usb-a926x/config.h
@@ -0,0 +1,6 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		12000000	/* 12 MHz crystal */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/usb-a926x/env/config b/arch/arm/boards/usb-a926x/env/config
new file mode 100644
index 0000000..d77f678
--- /dev/null
+++ b/arch/arm/boards/usb-a926x/env/config
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
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
+# can be either 'net', 'nor', 'nand' or 'initrd'
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
+nand_device=atmel_nand
+nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),4M(kernel),120M(rootfs),-(data)"
+rootfs_mtdblock_nand=5
+
+autoboot_timeout=3
+
+bootargs="console=ttyS0,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
new file mode 100644
index 0000000..d09c2da
--- /dev/null
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -0,0 +1,195 @@
+/*
+ * Copyright (C) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+#include <sizes.h>
+#include <linux/mtd/nand.h>
+#include <linux/clk.h>
+#include <mach/board.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/sam9_smc.h>
+#include <gpio.h>
+#include <mach/io.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_rstc.h>
+
+static void usb_a9260_set_board_type(void)
+{
+	if (machine_is_usb_a9g20())
+		armlinux_set_architecture(MACH_TYPE_USB_A9G20);
+	else
+		armlinux_set_architecture(MACH_TYPE_USB_A9260);
+}
+
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+/*	.det_pin	= ... not connected */
+	.rdy_pin	= AT91_PIN_PC13,
+	.enable_pin	= AT91_PIN_PC14,
+};
+
+static struct sam9_smc_config usb_a9260_nand_smc_config = {
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
+static struct sam9_smc_config usb_a9g20_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 2,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 2,
+
+	.ncs_read_pulse		= 4,
+	.nrd_pulse		= 4,
+	.ncs_write_pulse	= 4,
+	.nwe_pulse		= 2,
+
+	.read_cycle		= 7,
+	.write_cycle		= 7,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
+	.tdf_cycles		= 3,
+};
+
+static void usb_a9260_add_device_nand(void)
+{
+	/* configure chip-select 3 (NAND) */
+	if (machine_is_usb_a9g20())
+		sam9_smc_configure(3, &usb_a9g20_nand_smc_config);
+	else
+		sam9_smc_configure(3, &usb_a9260_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+
+static struct at91_ether_platform_data macb_pdata = {
+	.flags		= AT91SAM_ETHER_RMII,
+	.phy_addr	= 0,
+};
+
+static void usb_a9260_phy_reset(void)
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
+#if defined(CONFIG_MCI_ATMEL)
+static struct atmel_mci_platform_data __initdata usb_a9260_mci_data = {
+	.bus_width	= 4,
+};
+
+static void usb_a9260_add_device_mci(void)
+{
+	at91_add_device_mci(0, &usb_a9260_mci_data);
+}
+#else
+static void usb_a9260_add_device_mci(void) {}
+#endif
+
+static struct at91_usbh_data ek_usbh_data = {
+	.ports		= 2,
+};
+
+static int usb_a9260_devices_init(void)
+{
+	usb_a9260_add_device_nand();
+	usb_a9260_phy_reset();
+	at91_add_device_eth(&macb_pdata);
+	usb_a9260_add_device_mci();
+	at91_add_device_usbh_ohci(&ek_usbh_data);
+
+#ifdef CONFIG_AT91_HAVE_SRAM_128M
+	at91_add_device_sdram(128 * 1024 * 1024);
+#else
+	at91_add_device_sdram(64 * 1024 * 1024);
+#endif
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
+	usb_a9260_set_board_type();
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
+device_initcall(usb_a9260_devices_init);
+
+static int usb_a9260_console_init(void)
+{
+	at91_register_uart(0, 0);
+	return 0;
+}
+console_initcall(usb_a9260_console_init);
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
new file mode 100644
index 0000000..adcb603
--- /dev/null
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -0,0 +1,58 @@
+CONFIG_ARCH_AT91SAM9260=y
+CONFIG_MACH_USB_A9260=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MMU=y
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="USB-9G20:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
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
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
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
+CONFIG_NAND=y
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
new file mode 100644
index 0000000..3c0e6f7
--- /dev/null
+++ b/arch/arm/configs/usb_a9g20_128mib_defconfig
@@ -0,0 +1,59 @@
+CONFIG_ARCH_AT91SAM9G20=y
+CONFIG_MACH_USB_A9G20=y
+CONFIG_AEABI=y
+CONFIG_AT91_HAVE_SRAM_128M=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MMU=y
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="USB-9G20:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
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
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
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
+CONFIG_NAND=y
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
new file mode 100644
index 0000000..2bcb8eb
--- /dev/null
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -0,0 +1,58 @@
+CONFIG_ARCH_AT91SAM9G20=y
+CONFIG_MACH_USB_A9G20=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MMU=y
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="USB-9G20:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
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
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
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
+CONFIG_NAND=y
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index ee46002..b53b1c4 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -14,6 +14,8 @@ config BOARDINFO
 	default "Atmel at91sam9g20-ek" if MACH_AT91SAM9G20EK
 	default "Atmel at91sam9m10g45-ek" if MACH_AT91SAM9M10G45EK
 	default "Bucyrus MMC-CPU" if MACH_MMCCPU
+	default "Calao USB-A9260" if MACH_USB_A9260
+	default "Calao USB-A9G20" if MACH_USB_A9G20
 	default "Ronetix PM9261" if MACH_PM9261
 	default "Ronetix PM9263" if MACH_PM9263
 	default "Ronetix PM9G45" if MACH_PM9G45
@@ -96,6 +98,12 @@ config MACH_AT91SAM9260EK
 	help
 	  Say y here if you are using Atmel's AT91SAM9260-EK Evaluation board
 
+config MACH_USB_A9260
+	bool "CALAO USB-A9260"
+	help
+	  Select this if you are using a Calao Systems USB-A9260.
+	  <http://www.calao-systems.com>
+
 endchoice
 
 endif
@@ -160,6 +168,12 @@ config MACH_AT91SAM9G20EK
 	  Select this if you are using Atmel's AT91SAM9G20-EK Evaluation Kit
 	  that embeds only one SD/MMC slot.
 
+config MACH_USB_A9G20
+	bool "CALAO USB-A9G20"
+	help
+	  Select this if you are using a Calao Systems USB-A9G20.
+	  <http://www.calao-systems.com>
+
 endchoice
 
 endif
@@ -234,6 +248,12 @@ config AT91_HAVE_2MMC
 	  with 2 SD/MMC Slots. This is the case for AT91SAM9G20-EK rev. C and
 	  onwards.
 
+config AT91_HAVE_SRAM_128M
+	bool "Have 128 of ram"
+	depends on MACH_USB_A9G20
+	help
+	  Select this if you board have 128 MiB of Ram (as USB_A9G20 C11)
+
 choice
 	prompt "LCD type"
 	depends on MACH_AT91SAM9M10G45EK
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
