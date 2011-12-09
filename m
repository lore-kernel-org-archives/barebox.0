Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYydW-0000uY-DO
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 11:29:08 +0000
Received: from mediacenter.hi.pengutronix.de ([2001:6f8:1178:2::65])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RYydQ-0002BK-8V
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 12:29:00 +0100
Received: from mgr by mediacenter.hi.pengutronix.de with local (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RYydQ-0002Bz-75
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 12:29:00 +0100
Date: Fri, 9 Dec 2011 12:29:00 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Message-ID: <20111209112900.GH8203@pengutronix.de>
References: <1323187817-28668-1-git-send-email-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323187817-28668-1-git-send-email-m.grzeschik@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 6/7] platform: add support for aizo dSS11
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/Makefile                |    1 +
 arch/arm/boards/dss11/Makefile   |    1 +
 arch/arm/boards/dss11/config.h   |    6 ++
 arch/arm/boards/dss11/env/config |   42 ++++++++++
 arch/arm/boards/dss11/init.c     |  156 ++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/Kconfig       |    8 ++
 6 files changed, 214 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/dss11/Makefile
 create mode 100644 arch/arm/boards/dss11/config.h
 create mode 100644 arch/arm/boards/dss11/env/config
 create mode 100644 arch/arm/boards/dss11/init.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 6f5f343..e5e951c 100644
 - removed GPL address
 - increased barebox and env partition size
 - changed boot partition on nand
 - removed lowlevel.S
 - fixed nand bus_width to 16
 - moved ethernet pin handling to another patch
 - touch mach-types from another patch
 - removed kernel and rootfs partitions
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -66,6 +66,7 @@ board-$(CONFIG_MACH_AT91SAM9263EK)		:= at91sam9263ek
 board-$(CONFIG_MACH_AT91SAM9G10EK)		:= at91sam9261ek
 board-$(CONFIG_MACH_AT91SAM9G20EK)		:= at91sam9260ek
 board-$(CONFIG_MACH_AT91SAM9M10G45EK)		:= at91sam9m10g45ek
+board-$(CONFIG_MACH_DSS11)			:= dss11
 board-$(CONFIG_MACH_EDB9301)			:= edb93xx
 board-$(CONFIG_MACH_EDB9302)			:= edb93xx
 board-$(CONFIG_MACH_EDB9302A)			:= edb93xx
diff --git a/arch/arm/boards/dss11/Makefile b/arch/arm/boards/dss11/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/dss11/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/dss11/config.h b/arch/arm/boards/dss11/config.h
new file mode 100644
index 0000000..006820c
--- /dev/null
+++ b/arch/arm/boards/dss11/config.h
@@ -0,0 +1,6 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		18432000	/* 18.432 MHz crystal */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/dss11/env/config b/arch/arm/boards/dss11/env/config
new file mode 100644
index 0000000..5c9be7d
--- /dev/null
+++ b/arch/arm/boards/dss11/env/config
@@ -0,0 +1,42 @@
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
+# can be either 'nfs', 'tftp' or 'nand'
+kernel_loc=tftp
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
+nand_device=atmel_nand
+nand_parts="128k(bootstrap),512k(barebox)ro,512k(barebox-env),2M(kernel-rescue),2M(kernel-prod),32M(rootfs-rescue),200M(rootfs-prod),-(config)"
+rootfs_mtdblock_nand=4
+
+autoboot_timeout=3
+
+bootargs="console=ttyS0,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
new file mode 100644
index 0000000..96c4eef
--- /dev/null
+++ b/arch/arm/boards/dss11/init.c
@@ -0,0 +1,156 @@
+/*
+ * Copyright (C) 2011 Michael Grzeschik <mgr@pengutronix.de>
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
+#include <common.h>
+#include <net.h>
+#include <mci.h>
+#include <init.h>
+#include <environment.h>
+#include <fec.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <asm/io.h>
+#include <asm/hardware.h>
+#include <nand.h>
+#include <linux/mtd/nand.h>
+#include <mach/board.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/sam9_smc.h>
+#include <gpio.h>
+#include <mach/io.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_rstc.h>
+
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+/*	.det_pin	= ... not connected */
+	.ecc_mode	= NAND_ECC_HW,
+	.rdy_pin	= AT91_PIN_PC13,
+	.enable_pin	= AT91_PIN_PC14,
+	.bus_width_16	= 1,
+};
+
+static struct sam9_smc_config dss11_nand_smc_config = {
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
+static void dss11_add_device_nand(void)
+{
+	/* setup bus-width (16) */
+	dss11_nand_smc_config.mode |= AT91_SMC_DBW_16;
+
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(3, &dss11_nand_smc_config);
+
+	at91_add_device_nand(&nand_pdata);
+}
+
+static struct at91_ether_platform_data macb_pdata = {
+	.phy_addr = 0,
+	.flags = AT91SAM_ETX2_ETX3_ALTERNATIVE,
+};
+
+static void dss11_phy_reset(void)
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
+static struct atmel_mci_platform_data dss11_mci_data = {
+	.bus_width	= 4,
+	.host_caps	= MMC_MODE_HS,
+};
+
+static struct at91_usbh_data dss11_usbh_data = {
+	.ports		= 2,
+};
+
+static int dss11_mem_init(void)
+{
+	at91_add_device_sdram(64 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(dss11_mem_init);
+
+static int dss11_devices_init(void)
+{
+	dss11_add_device_nand();
+	dss11_phy_reset();
+	at91_add_device_eth(&macb_pdata);
+	at91_add_device_mci(1, &dss11_mci_data);
+	at91_add_device_usbh_ohci(&dss11_usbh_data);
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
+	armlinux_set_architecture(MACH_TYPE_DSS11);
+
+	devfs_add_partition("nand0", 0x00000, 0x20000, PARTITION_FIXED, "bootstrap");
+	dev_add_bb_dev("bootstrap", "bootstrap.bb");
+	devfs_add_partition("nand0", 0x20000, 0x40000, PARTITION_FIXED, "barebox");
+	dev_add_bb_dev("barebox", "barebox.bb");
+	devfs_add_partition("nand0", 0x60000, 0x40000, PARTITION_FIXED, "barebox-env");
+	dev_add_bb_dev("barebox-env", "env0");
+
+	return 0;
+}
+device_initcall(dss11_devices_init);
+
+static int dss11_console_init(void)
+{
+	at91_register_uart(0, 0);
+	return 0;
+}
+console_initcall(dss11_console_init);
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 2ac23b5..e0e17bb 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -20,6 +20,7 @@ config BOARDINFO
 	default "Ronetix PM9261" if MACH_PM9261
 	default "Ronetix PM9263" if MACH_PM9263
 	default "Ronetix PM9G45" if MACH_PM9G45
+	default "Aizo dSS11" if MACH_DSS11
 
 config HAVE_NAND_ATMEL_BUSWIDTH_16
 	bool
@@ -175,6 +176,13 @@ config MACH_USB_A9G20
 	  Select this if you are using a Calao Systems USB-A9G20.
 	  <http://www.calao-systems.com>
 
+config MACH_DSS11
+	bool "aizo dSS11"
+	select HAVE_NAND_ATMEL_BUSWIDTH_16
+	help
+	  Select this if you are using aizo dSS11
+	  that embeds only one SD/MMC slot.
+
 endchoice
 
 endif
-- 
1.7.7.3



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
