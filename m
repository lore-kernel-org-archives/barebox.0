Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sv8fc-0003Fr-S0
 for barebox@lists.infradead.org; Sat, 28 Jul 2012 15:11:11 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Sv8fL-000358-68
 for barebox@lists.infradead.org; Sat, 28 Jul 2012 17:10:51 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Sv8fL-0003YU-35
 for barebox@lists.infradead.org; Sat, 28 Jul 2012 17:10:51 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 28 Jul 2012 17:10:49 +0200
Message-Id: <1343488250-12570-8-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1343488250-12570-1-git-send-email-jbe@pengutronix.de>
References: <1343488250-12570-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 7/8] ARM/Samsung: add the Mini6410 platform as a user of the
 S3C6410 SoC
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/Makefile                               |    1 +
 arch/arm/boards/friendlyarm-mini6410/Makefile   |    1 +
 arch/arm/boards/friendlyarm-mini6410/config.h   |    8 +
 arch/arm/boards/friendlyarm-mini6410/env/config |   56 +++++
 arch/arm/boards/friendlyarm-mini6410/mini6410.c |  305 +++++++++++++++++++++++
 arch/arm/configs/friendlyarm_mini6410_defconfig |   40 +++
 arch/arm/mach-samsung/Kconfig                   |   16 ++
 7 files changed, 427 insertions(+)
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/Makefile
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/config.h
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/env/config
 create mode 100644 arch/arm/boards/friendlyarm-mini6410/mini6410.c
 create mode 100644 arch/arm/configs/friendlyarm_mini6410_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 1225df7..bd03fe6 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -123,6 +123,7 @@ board-$(CONFIG_MACH_FREESCALE_MX53_LOCO)	:= freescale-mx53-loco
 board-$(CONFIG_MACH_FREESCALE_MX53_SMD)		:= freescale-mx53-smd
 board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
 board-$(CONFIG_MACH_MINI2440)			:= mini2440
+board-$(CONFIG_MACH_MINI6410)			:= friendlyarm-mini6410
 board-$(CONFIG_MACH_QIL_A9260)			:= qil-a9260
 board-$(CONFIG_MACH_TNY_A9260)			:= tny-a926x
 board-$(CONFIG_MACH_TNY_A9263)			:= tny-a926x
diff --git a/arch/arm/boards/friendlyarm-mini6410/Makefile b/arch/arm/boards/friendlyarm-mini6410/Makefile
new file mode 100644
index 0000000..cd7a427
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-mini6410/Makefile
@@ -0,0 +1 @@
+obj-y += mini6410.o
diff --git a/arch/arm/boards/friendlyarm-mini6410/config.h b/arch/arm/boards/friendlyarm-mini6410/config.h
new file mode 100644
index 0000000..ee38192
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-mini6410/config.h
@@ -0,0 +1,8 @@
+/* FriendlyARM Mini6410 specific global settings */
+
+#ifndef _MINI6410_CONFIG_H_
+# define _MINI6410_CONFIG_H_
+
+#define S3C64XX_CLOCK_REFERENCE 12000000
+
+#endif /* _MINI6410_CONFIG_H_ */
diff --git a/arch/arm/boards/friendlyarm-mini6410/env/config b/arch/arm/boards/friendlyarm-mini6410/env/config
new file mode 100644
index 0000000..a1c86e1
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-mini6410/env/config
@@ -0,0 +1,56 @@
+#!/bin/sh
+
+machine=mini6410
+eth0.serverip=a.b.c.d.e
+user=
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d.e
+#eth0.netmask=a.b.c.d.e
+#eth0.gateway=a.b.c.d.e
+eth0.ethaddr=08:90:90:90:90:90
+
+# can be either 'nfs', 'tftp' or 'nand'
+kernel_loc=tftp
+# can be either 'net', 'nand' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root-${machine}.${rootfs_type}
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+kernelimage_type=zimage
+kernelimage=zImage-${machine}
+#kernelimage_type=uimage
+#kernelimage=uImage-$machine
+#kernelimage_type=raw
+#kernelimage=Image-$machine
+#kernelimage_type=raw_lzo
+#kernelimage=Image-$machine.lzo
+
+if [ -n $user ]; then
+	kernelimage="${user}"-"${kernelimage}"
+	nfsroot="${eth0.serverip}:/home/${user}/nfsroot/${machine}"
+	rootfsimage="${user}"-"${rootfsimage}"
+else
+	nfsroot="${eth0.serverip}:/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+#
+# "mini6410" kernel parameter
+# 0 .. 9 = screen type
+# i = touchscreen with propritary FriendlyARM protocol
+# Note: can be "minit6410= " if nothing of these components are connected
+#
+bootargs="console=ttySAC0,115200 mini6410=0"
+
+nand_device="nand"
+nand_parts="256k(barebox),128k(bareboxenv),1536k(kernel),-(root)"
+rootfs_mtdblock_nand=3
diff --git a/arch/arm/boards/friendlyarm-mini6410/mini6410.c b/arch/arm/boards/friendlyarm-mini6410/mini6410.c
new file mode 100644
index 0000000..01437ac
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-mini6410/mini6410.c
@@ -0,0 +1,305 @@
+/*
+ * Copyright (C) 2012 Juergen Beisert
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
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <dm9000.h>
+#include <gpio.h>
+#include <generated/mach-types.h>
+#include <asm/armlinux.h>
+#include <mach/s3c-iomap.h>
+#include <mach/devices-s3c64xx.h>
+#include <mach/s3c-generic.h>
+
+/*
+ * dm9000 network controller onboard
+ * Connected to CS line 1 and interrupt line EINT7,
+ * data width is 16 bit
+ * Area 1: Offset 0x300...0x301
+ * Area 2: Offset 0x304...0x305
+ */
+static struct dm9000_platform_data dm9000_data = {
+	.srom = 0,	/* no serial ROM for the ethernet address */
+};
+
+static const unsigned pin_usage[] = {
+	/* UART2 (spare, 3,3 V TTL level only) */
+	GPA4_RXD1 | ENABLE_PU,
+	GPA5_TXD1,
+	GPA6_NCTS1 | ENABLE_PU,
+	GPA7_NRTS1,
+	/* UART3 (spare, 3,3 V TTL level only) */
+	GPB0_RXD2 | ENABLE_PU,
+	GPB1_TXD2,
+	/* UART4 (spare, 3,3 V TTL level only) */
+	GPB2_RXD3 | ENABLE_PU,
+	GPB3_TXD3,
+
+	GPB4_GPIO | GPIO_IN | ENABLE_PU,
+
+	/* I2C bus */
+	GPB5_IIC0_SCL,	/* external PU */
+	GPB6_IIC0_SDA,	/* external PU */
+
+	GPC0_SPI0_MISO | ENABLE_PU,
+	GPC1_SPI0_CLK,
+	GPC2_SPI0_MOSI,
+	GPC3_SPI0_NCS,
+
+	GPC4_SPI1_MISO | ENABLE_PU,
+	GPC5_SPI1_CLK,
+	GPC6_SPI1_MOSI,
+	GPC7_SPI1_NCS,
+
+	GPD0_AC97_BITCLK,
+	GPD1_AC97_NRST,
+	GPD2_AC97_SYNC,
+	GPD3_AC97_SDI | ENABLE_PU,
+	GPD4_AC97_SDO,
+
+	GPE0_GPIO | GPIO_OUT | GPIO_VAL(0), /* LCD backlight off */
+	GPE1_GPIO | GPIO_IN | ENABLE_PU,
+	GPE2_GPIO | GPIO_IN | ENABLE_PU,
+	GPE3_GPIO | GPIO_IN | ENABLE_PU,
+	GPE4_GPIO | GPIO_IN | ENABLE_PU,
+
+	/* keep all camera signals at reasonable values */
+	GPF0_GPIO | GPIO_IN | ENABLE_PU,
+	GPF1_GPIO | GPIO_IN | ENABLE_PU,
+	GPF2_GPIO | GPIO_IN | ENABLE_PU,
+	GPF3_GPIO | GPIO_IN | ENABLE_PU,
+	GPF4_GPIO | GPIO_IN | ENABLE_PU,
+	GPF5_GPIO | GPIO_IN | ENABLE_PU,
+	GPF6_GPIO | GPIO_IN | ENABLE_PU,
+	GPF7_GPIO | GPIO_IN | ENABLE_PU,
+	GPF8_GPIO | GPIO_IN | ENABLE_PU,
+	GPF9_GPIO | GPIO_IN | ENABLE_PU,
+	GPF10_GPIO | GPIO_IN | ENABLE_PU,
+	GPF11_GPIO | GPIO_IN | ENABLE_PU,
+	GPF12_GPIO | GPIO_IN | ENABLE_PU,
+	GPF13_GPIO | GPIO_OUT | GPIO_VAL(0), /* USB power off */
+#if 0
+	GPF14_CLKOUT, /* for testing purposes, but very noisy */
+#else
+	GPF14_GPIO | GPIO_OUT | GPIO_VAL(0), /* Buzzer off */
+#endif
+	GPF15_GPIO | GPIO_OUT | GPIO_VAL(0), /* Backlight PWM inactive */
+
+	/* SD card slot (all signals have external 10k PU) */
+	GPG0_MMC0_CLK,
+	GPG1_MMC0_CMD,
+	GPG2_MMC0_DAT0,
+	GPG3_MMC0_DAT1,
+	GPG4_MMC0_DAT2,
+	GPG5_MMC0_DAT3,
+	GPG6_MMC0_NCD,
+
+	/* SDIO slot (all used signals have external PU) */
+	GPH0_GPIO | GPIO_IN,	/* CLK */
+	GPH1_GPIO | GPIO_IN,	/* CMD */
+	GPH2_GPIO | GPIO_IN,	/* DAT0 */
+	GPH3_GPIO | GPIO_IN,	/* DAT1 */
+	GPH4_GPIO | GPIO_IN,	/* DAT2 */
+	GPH5_GPIO | GPIO_IN,	/* DAT3 */
+	GPH6_GPIO | GPIO_IN | ENABLE_PU, /* nowhere connected */
+	GPH7_GPIO | GPIO_IN | ENABLE_PU, /* nowhere connected */
+	GPH8_GPIO | GPIO_IN | ENABLE_PU, /* nowhere connected */
+	GPH9_GPIO | GPIO_IN | ENABLE_PU, /* nowhere connected */
+
+	/* as long as we are not using the LCD controller, disable the pins */
+	GPI0_GPIO | GPIO_IN | ENABLE_PD,
+	GPI1_GPIO | GPIO_IN | ENABLE_PD,
+	GPI2_GPIO | GPIO_IN | ENABLE_PD,
+	GPI3_GPIO | GPIO_IN | ENABLE_PD,
+	GPI4_GPIO | GPIO_IN | ENABLE_PD,
+	GPI5_GPIO | GPIO_IN | ENABLE_PD,
+	GPI6_GPIO | GPIO_IN | ENABLE_PD,
+	GPI7_GPIO | GPIO_IN | ENABLE_PD,
+	GPI8_GPIO | GPIO_IN | ENABLE_PD,
+	GPI9_GPIO | GPIO_IN | ENABLE_PD,
+	GPI10_GPIO | GPIO_IN | ENABLE_PD,
+	GPI11_GPIO | GPIO_IN | ENABLE_PD,
+	GPI12_GPIO | GPIO_IN | ENABLE_PD,
+	GPI13_GPIO | GPIO_IN | ENABLE_PD,
+	GPI14_GPIO | GPIO_IN | ENABLE_PD,
+	GPI15_GPIO | GPIO_IN | ENABLE_PD,
+	GPJ0_GPIO | GPIO_IN | ENABLE_PD,
+	GPJ1_GPIO | GPIO_IN | ENABLE_PD,
+	GPJ2_GPIO | GPIO_IN | ENABLE_PD,
+	GPJ3_GPIO | GPIO_IN | ENABLE_PD,
+	GPJ4_GPIO | GPIO_IN | ENABLE_PD,
+	GPJ5_GPIO | GPIO_IN | ENABLE_PD,
+	GPJ6_GPIO | GPIO_IN | ENABLE_PD,
+	GPJ7_GPIO | GPIO_IN | ENABLE_PD,
+	GPJ8_GPIO | GPIO_IN | ENABLE_PD,
+	GPJ9_GPIO | GPIO_IN | ENABLE_PD,
+	GPJ10_GPIO | GPIO_IN | ENABLE_PD,
+	GPJ11_GPIO | GPIO_IN | ENABLE_PD,
+
+	GPK0_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPK1_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPK2_GPIO | GPIO_IN,
+	GPK3_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPK4_GPIO | GPIO_OUT | GPIO_VAL(1),	/* LED #1 (high = LED off) */
+	GPK5_GPIO | GPIO_OUT | GPIO_VAL(1),	/* LED #2 (high = LED off) */
+	GPK6_GPIO | GPIO_OUT | GPIO_VAL(1),	/* LED #3 (high = LED off) */
+	GPK7_GPIO | GPIO_OUT | GPIO_VAL(1),	/* LED #4 (high = LED off) */
+	GPK8_GPIO | GPIO_IN, 			/* (external PU) */
+	GPK9_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPK10_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPK11_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPK12_GPIO | GPIO_IN,			/* OCT_DET */
+	GPK13_GPIO | GPIO_IN,			/* WIFI power (external PU) */
+	GPK14_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPK15_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+
+	GPL0_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPL1_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPL2_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPL3_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPL4_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPL5_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPL6_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPL7_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPL8_GPIO | GPIO_IN,			/* EINT16 (external PU) */
+	GPL9_GPIO | GPIO_IN | ENABLE_PU,	/* EINT17 */
+	GPL10_GPIO | GPIO_IN | ENABLE_PU,	/* EINT18 */
+	GPL11_GPIO | GPIO_IN,			/* EINT19 + K7 (external PU) */
+	GPL12_GPIO | GPIO_IN,			/* EINT20 + K6 (external PU) */
+	GPL13_GPIO | GPIO_IN,			/* SD0 WP (external PU) */
+	GPL14_GPIO | GPIO_IN,			/* SD1 WP (external PU) */
+
+	GPM0_GPIO | GPIO_IN,			/* (external PU) */
+	GPM1_GPIO | GPIO_IN,			/* (external PU) */
+	GPM2_GPIO | GPIO_IN,			/* (external PU) */
+	GPM3_GPIO | GPIO_IN,			/* (external PU) */
+	GPM4_GPIO | GPIO_IN,			/* (external PU) */
+	GPM5_GPIO | GPIO_IN,			/* (external PU) */
+
+	GPN0_GPIO | GPIO_IN,			/* EINT0 (external PU) */
+	GPN1_GPIO | GPIO_IN,			/* EINT1 (external PU) */
+	GPN2_GPIO | GPIO_IN,			/* EINT2 (external PU) */
+	GPN3_GPIO | GPIO_IN,			/* EINT3 (external PU) */
+	GPN4_GPIO | GPIO_IN,			/* EINT4 (external PU) */
+	GPN5_GPIO | GPIO_IN,			/* EINT5 (external PU) */
+	GPN6_GPIO | GPIO_IN,			/* EINT6 (external PU) */
+	GPN7_GPIO | GPIO_IN | ENABLE_PU,	/* EINT7 DM9000 interrupt */
+	GPN8_GPIO | GPIO_IN,			/* EINT8 USB detect (external PU) */
+	GPN9_GPIO | GPIO_IN,			/* EINT9 (external PU) */
+	GPN10_GPIO | GPIO_IN,			/* SD1 CD (external PU) */
+	GPN11_GPIO | GPIO_IN,			/* EINT11 (external PU) */
+	GPN12_GPIO | GPIO_IN,			/* EINT12 IR in (external PU) */
+	GPN13_GPIO | GPIO_IN,			/* BOOT0/EINT13 (externally fixed) */
+	GPN14_GPIO | GPIO_IN,			/* BOOT1/EINT14 (externally fixed) */
+	GPN15_GPIO | GPIO_IN,			/* BOOT2/EINT15 (externally fixed) */
+
+	GPO0_NCS2,				/* NAND */
+	GPO1_NCS3,				/* NAND */
+	GPO2_NCS4,				/* CON5 */
+	GPO3_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPO4_GPIO | GPIO_IN | ENABLE_PU,	/* CON5 pin 8 */
+	GPO5_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPO6_ADDR6,				/* CON5 */
+	GPO7_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPO8_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPO9_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPO10_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPO11_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPO12_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPO13_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPO14_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPO15_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+
+	GPP0_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPP1_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPP2_NWAIT | ENABLE_PU,			/* CON5 */
+	GPP3_FALE,				/* NAND */
+	GPP4_FCLE,				/* NAND */
+	GPP5_FWE,				/* NAND */
+	GPP6_FRE,				/* NAND */
+	GPP7_RNB,				/* NAND (external PU) */
+	GPP8_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPP9_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPP10_GPIO | GPIO_IN,			/* (external PU) */
+	GPP11_GPIO | GPIO_IN,			/* (external PU) */
+	GPP12_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPP13_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+	GPP14_GPIO | GPIO_IN | ENABLE_PU,	/* not used */
+
+	GPQ0_GPIO | GPIO_IN | ENABLE_PU,	/* not used as LADDR18 */
+	GPQ1_GPIO | GPIO_IN,			/* (external PU) */
+	GPQ2_GPIO | GPIO_IN,			/* (external PU) */
+	GPQ3_GPIO | GPIO_IN,			/* (external PU) */
+	GPQ4_GPIO | GPIO_IN,			/* (external PU) */
+	GPQ5_GPIO | GPIO_IN,			/* (external PU) */
+	GPQ6_GPIO | GPIO_IN,			/* (external PU) */
+	GPQ7_GPIO | GPIO_IN | ENABLE_PU,	/* not used as LADDR17 */
+	GPQ8_GPIO | GPIO_IN | ENABLE_PU,	/* not used as LADDR16 */
+};
+
+static int mini6410_mem_init(void)
+{
+	arm_add_mem_device("ram0", S3C_SDRAM_BASE, s3c6410_get_memory_size());
+
+	return 0;
+}
+mem_initcall(mini6410_mem_init);
+
+static const struct s3c6410_chipselect dm900_cs = {
+	.adr_setup_t = 0,
+	.access_setup_t = 0,
+	.access_t = 20,
+	.cs_hold_t = 3,
+	.adr_hold_t = 20, /* CS must be de-asserted for at least 20 ns */
+	.width = 16,
+};
+
+static void mini6410_setup_dm9000_cs(void)
+{
+	s3c6410_setup_chipselect(1, &dm900_cs);
+}
+
+static int mini6410_devices_init(void)
+{
+	int i;
+
+	/* ----------- configure the access to the outer space ---------- */
+	for (i = 0; i < ARRAY_SIZE(pin_usage); i++)
+		s3c_gpio_mode(pin_usage[i]);
+
+	mini6410_setup_dm9000_cs();
+	add_dm9000_device(0, S3C_CS1_BASE + 0x300, S3C_CS1_BASE + 0x304,
+				IORESOURCE_MEM_16BIT, &dm9000_data);
+
+	armlinux_set_bootparams((void *)S3C_SDRAM_BASE + 0x100);
+	armlinux_set_architecture(MACH_TYPE_MINI6410);
+
+	return 0;
+}
+
+device_initcall(mini6410_devices_init);
+
+static int mini6410_console_init(void)
+{
+	s3c_gpio_mode(GPA0_RXD0 | ENABLE_PU);
+	s3c_gpio_mode(GPA1_TXD0);
+	s3c_gpio_mode(GPA2_NCTS0 | ENABLE_PU);
+	s3c_gpio_mode(GPA3_NRTS0);
+
+	s3c64xx_add_uart1();
+
+	return 0;
+}
+
+console_initcall(mini6410_console_init);
diff --git a/arch/arm/configs/friendlyarm_mini6410_defconfig b/arch/arm/configs/friendlyarm_mini6410_defconfig
new file mode 100644
index 0000000..b80f8fb
--- /dev/null
+++ b/arch/arm/configs/friendlyarm_mini6410_defconfig
@@ -0,0 +1,40 @@
+CONFIG_ARCH_S3C64xx=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_BROKEN=y
+CONFIG_PROMPT="mini6410:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION=y
+CONFIG_PARTITION_DISK=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/friendlyarm-mini6410/env"
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_DRIVER_NET_DM9K=y
+# CONFIG_SPI is not set
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
+CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index 7e41880..3ee8c38 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -6,11 +6,13 @@ if ARCH_SAMSUNG
 config ARCH_TEXT_BASE
 	hex
 	default 0x31fc0000 if MACH_MINI2440
+	default 0x57fc0000 if MACH_MINI6410
 	default 0x31fc0000 if MACH_A9M2440
 	default 0x31fc0000 if MACH_A9M2410
 
 config BOARDINFO
 	default "Mini 2440"    if MACH_MINI2440
+	default "Mini 6410"    if MACH_MINI6410
 	default "Digi A9M2440" if MACH_A9M2440
 	default "Digi A9M2410" if MACH_A9M2410
 
@@ -91,6 +93,20 @@ if ARCH_S3C64xx
 config CPU_S3C6410
 	bool
 
+choice
+
+	prompt "S3C64xx Board Type"
+
+config MACH_MINI6410
+	bool "Mini 6410"
+	select CPU_S3C6410
+	select HAS_DM9000
+	help
+	  Say Y here if you are using FriendlyARM Mini6410 board equipped
+	  with a Samsung S3C6410 Processor
+
+endchoice
+
 endif
 
 if ARCH_S5PCxx
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
