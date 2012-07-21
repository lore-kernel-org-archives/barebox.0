Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SsWYE-0002hp-Nj
 for barebox@lists.infradead.org; Sat, 21 Jul 2012 10:05:16 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SsWY7-0003vf-HY
 for barebox@lists.infradead.org; Sat, 21 Jul 2012 12:04:35 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SsWY6-0001Vl-JB
 for barebox@lists.infradead.org; Sat, 21 Jul 2012 12:04:34 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 21 Jul 2012 12:04:33 +0200
Message-Id: <1342865073-5209-9-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342865073-5209-1-git-send-email-jbe@pengutronix.de>
References: <1342865073-5209-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 8/8] ARM/Samsung: add the Tiny6410 platform as the second user
 of the S3C6410 SoC
To: barebox@lists.infradead.org

The Tiny6410 and its base board is a pure development platform.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/friendlyarm-tiny6410/Kconfig       |   19 ++++
 arch/arm/boards/friendlyarm-tiny6410/Makefile      |    3 +
 arch/arm/boards/friendlyarm-tiny6410/config.h      |    8 ++
 .../friendlyarm-tiny6410/development-board.c       |  100 ++++++++++++++++++++
 arch/arm/boards/friendlyarm-tiny6410/env/config    |   56 +++++++++++
 arch/arm/boards/friendlyarm-tiny6410/tiny6410.c    |   80 ++++++++++++++++
 arch/arm/boards/friendlyarm-tiny6410/tiny6410.h    |   14 +++
 arch/arm/configs/friendlyarm_tiny6410_defconfig    |   41 ++++++++
 arch/arm/configs/tiny6410_defconfig                |   41 ++++++++
 arch/arm/mach-samsung/Kconfig                      |   11 +++
 11 files changed, 374 insertions(+)
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/Kconfig
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/Makefile
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/config.h
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/development-board.c
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/env/config
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
 create mode 100644 arch/arm/boards/friendlyarm-tiny6410/tiny6410.h
 create mode 100644 arch/arm/configs/friendlyarm_tiny6410_defconfig
 create mode 100644 arch/arm/configs/tiny6410_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index bd03fe6..ab3f730 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -124,6 +124,7 @@ board-$(CONFIG_MACH_FREESCALE_MX53_SMD)		:= freescale-mx53-smd
 board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
 board-$(CONFIG_MACH_MINI2440)			:= mini2440
 board-$(CONFIG_MACH_MINI6410)			:= friendlyarm-mini6410
+board-$(CONFIG_MACH_TINY6410)			:= friendlyarm-tiny6410
 board-$(CONFIG_MACH_QIL_A9260)			:= qil-a9260
 board-$(CONFIG_MACH_TNY_A9260)			:= tny-a926x
 board-$(CONFIG_MACH_TNY_A9263)			:= tny-a926x
diff --git a/arch/arm/boards/friendlyarm-tiny6410/Kconfig b/arch/arm/boards/friendlyarm-tiny6410/Kconfig
new file mode 100644
index 0000000..374820f
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-tiny6410/Kconfig
@@ -0,0 +1,19 @@
+if MACH_TINY6410
+
+choice
+	prompt "FriendlyARM Tiny6410 baseboard"
+	help
+	  Since the Tiny6410 is a CPU card only, it requires a basebord to make
+	  it work. Select here the baseboard Barebox should expect and
+	  configure.
+
+config MACH_TINY6410_FA
+	bool
+	select HAS_DM9000
+	prompt "FA development platform"
+	help
+	  FriendlyARM's Tiny6410 evaluation board.
+
+endchoice
+
+endif
diff --git a/arch/arm/boards/friendlyarm-tiny6410/Makefile b/arch/arm/boards/friendlyarm-tiny6410/Makefile
new file mode 100644
index 0000000..b3ab12e
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-tiny6410/Makefile
@@ -0,0 +1,3 @@
+obj-y += tiny6410.o
+
+obj-$(CONFIG_MACH_TINY6410_FA) += development-board.o
diff --git a/arch/arm/boards/friendlyarm-tiny6410/config.h b/arch/arm/boards/friendlyarm-tiny6410/config.h
new file mode 100644
index 0000000..04f6857
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-tiny6410/config.h
@@ -0,0 +1,8 @@
+/* FriendlyARM Tiny6410 specific global settings */
+
+#ifndef _TINY6410_CONFIG_H_
+# define _TINY6410_CONFIG_H_
+
+#define S3C64XX_CLOCK_REFERENCE 12000000
+
+#endif /* _TINY6410_CONFIG_H_ */
diff --git a/arch/arm/boards/friendlyarm-tiny6410/development-board.c b/arch/arm/boards/friendlyarm-tiny6410/development-board.c
new file mode 100644
index 0000000..5595900
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-tiny6410/development-board.c
@@ -0,0 +1,100 @@
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
+ *
+ * The FriendlyARM's Tiny6410 evaluation board comes with all connectors and
+ * devices to make the Tiny6410 CPU card work. This includes:
+ *
+ * - the DM9000 network controller
+ * - USB/MCI connectors
+ * - display connector
+ *
+ */
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <gpio.h>
+#include <dm9000.h>
+#include <mach/devices-s3c64xx.h>
+#include <mach/s3c-generic.h>
+
+#include "tiny6410.h"
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
+static const struct s3c6410_chipselect dm900_cs = {
+	.adr_setup_t = 0,
+	.access_setup_t = 0,
+	.access_t = 20,
+	.cs_hold_t = 3,
+	.adr_hold_t = 20, /* CS must be de-asserted for at least 20 ns */
+	.width = 16,
+};
+
+static void tiny6410evk_setup_dm9000_cs(void)
+{
+	s3c6410_setup_chipselect(1, &dm900_cs);
+}
+
+static const unsigned tiny6410evk_pin_usage[] = {
+	/* UART1 (V24) */
+	GPA4_RXD1 | ENABLE_PU,
+	GPA5_TXD1,
+	GPA6_NCTS1 | ENABLE_PU,
+	GPA7_NRTS1,
+	/* UART2 (V24) */
+	GPB0_RXD2 | ENABLE_PU,
+	GPB1_TXD2,
+	/* UART3 (spare, 3,3 V TTL level only) */
+	GPB2_RXD3 | ENABLE_PU,
+	GPB3_TXD3,
+};
+
+static int tiny6410evk_devices_init(void)
+{
+	int i;
+
+	/* init CPU card specific devices first */
+	tiny6410_init("FA EVK");
+
+	/* ----------- configure the access to the outer space ---------- */
+	for (i = 0; i < ARRAY_SIZE(tiny6410evk_pin_usage); i++)
+		s3c_gpio_mode(tiny6410evk_pin_usage[i]);
+
+	tiny6410evk_setup_dm9000_cs();
+	add_dm9000_device(0, S3C_CS1_BASE + 0x300, S3C_CS1_BASE + 0x304,
+				IORESOURCE_MEM_16BIT, &dm9000_data);
+	return 0;
+}
+device_initcall(tiny6410evk_devices_init);
+
+static int tiny6410evk_console_init(void)
+{
+	/* note: UART0 has no RTS/CTS connected */
+	s3c_gpio_mode(GPA0_RXD0 | ENABLE_PU);
+	s3c_gpio_mode(GPA1_TXD0);
+
+	s3c64xx_add_uart1();
+
+	return 0;
+}
+console_initcall(tiny6410evk_console_init);
+
diff --git a/arch/arm/boards/friendlyarm-tiny6410/env/config b/arch/arm/boards/friendlyarm-tiny6410/env/config
new file mode 100644
index 0000000..35d0fac
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-tiny6410/env/config
@@ -0,0 +1,56 @@
+#!/bin/sh
+
+machine=tiny6410
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
+# "tiny6410" kernel parameter
+# 0 .. 9 = screen type
+# i = touchscreen with propritary FriendlyARM protocol
+# Note: can be "tiny6410= " if nothing of these components are connected
+#
+bootargs="console=ttySAC0,115200 tiny6410=0"
+
+nand_device="nand"
+nand_parts="256k(barebox),128k(bareboxenv),1536k(kernel),-(root)"
+rootfs_mtdblock_nand=3
diff --git a/arch/arm/boards/friendlyarm-tiny6410/tiny6410.c b/arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
new file mode 100644
index 0000000..db13c06
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
@@ -0,0 +1,80 @@
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
+#include <gpio.h>
+#include <generated/mach-types.h>
+#include <asm/armlinux.h>
+#include <mach/s3c-iomap.h>
+#include <mach/s3c-generic.h>
+
+static const unsigned tiny6410_pin_usage[] = {
+	/* UART0 */
+	GPA2_GPIO | GPIO_IN | ENABLE_PU, /* CTS not connected */
+	GPA3_GPIO | GPIO_IN | ENABLE_PU, /* RTS not connected */
+
+	/* local bus' D0 ... D15 are always active */
+	/* local bus' A0...A5 are always active */
+
+	/* internal NAND memory */
+	GPO0_NCS2,	/* NAND's first chip select line */
+	/* NAND's second chip select line, not used */
+	GPO1_GPIO | GPIO_OUT | GPIO_VAL(1),
+	GPP3_FALE,
+	GPP4_FCLE,
+	GPP5_FWE,
+	GPP6_FRE,
+	GPP7_RNB, /* external pull-up */
+
+	GPF13_GPIO  | GPIO_OUT | GPIO_VAL(0), /* OTG power supply, 0 = off */
+
+	/* nowhere connected */
+	GPO2_GPIO | GPIO_IN | ENABLE_PU,
+	GPO3_GPIO | GPIO_IN | ENABLE_PU,
+	GPO4_GPIO | GPIO_IN | ENABLE_PU,
+	GPO5_GPIO | GPIO_IN | ENABLE_PU,
+
+	/* local bus address lines 6...15 are nowhere connected */
+	GPO6_GPIO | GPIO_IN | ENABLE_PU,
+	GPO7_GPIO | GPIO_IN | ENABLE_PU,
+	GPO8_GPIO | GPIO_IN | ENABLE_PU,
+	GPO9_GPIO | GPIO_IN | ENABLE_PU,
+	GPO10_GPIO | GPIO_IN | ENABLE_PU,
+	GPO11_GPIO | GPIO_IN | ENABLE_PU,
+	GPO12_GPIO | GPIO_IN | ENABLE_PU,
+	GPO13_GPIO | GPIO_IN | ENABLE_PU,
+	GPO14_GPIO | GPIO_IN | ENABLE_PU,
+	GPO15_GPIO | GPIO_IN | ENABLE_PU,
+};
+
+static int tiny6410_mem_init(void)
+{
+	arm_add_mem_device("ram0", S3C_SDRAM_BASE, s3c6410_get_memory_size());
+
+	return 0;
+}
+mem_initcall(tiny6410_mem_init);
+
+void tiny6410_init(const char *bb_name)
+{
+	int i;
+
+	/* ----------- configure the access to the outer space ---------- */
+	for (i = 0; i < ARRAY_SIZE(tiny6410_pin_usage); i++)
+		s3c_gpio_mode(tiny6410_pin_usage[i]);
+
+	armlinux_set_bootparams((void *)S3C_SDRAM_BASE + 0x100);
+	armlinux_set_architecture(MACH_TYPE_TINY6410);
+}
diff --git a/arch/arm/boards/friendlyarm-tiny6410/tiny6410.h b/arch/arm/boards/friendlyarm-tiny6410/tiny6410.h
new file mode 100644
index 0000000..98db422
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-tiny6410/tiny6410.h
@@ -0,0 +1,14 @@
+/*
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
+/* to be called by the base board */
+void tiny6410_init(const char*);
diff --git a/arch/arm/configs/friendlyarm_tiny6410_defconfig b/arch/arm/configs/friendlyarm_tiny6410_defconfig
new file mode 100644
index 0000000..3af5e04
--- /dev/null
+++ b/arch/arm/configs/friendlyarm_tiny6410_defconfig
@@ -0,0 +1,41 @@
+CONFIG_ARCH_S3C64xx=y
+CONFIG_MACH_TINY6410=y
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
diff --git a/arch/arm/configs/tiny6410_defconfig b/arch/arm/configs/tiny6410_defconfig
new file mode 100644
index 0000000..5246196
--- /dev/null
+++ b/arch/arm/configs/tiny6410_defconfig
@@ -0,0 +1,41 @@
+CONFIG_ARCH_S3C64xx=y
+CONFIG_MACH_TINY6410=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_BROKEN=y
+CONFIG_PROMPT="tiny6410:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION=y
+CONFIG_PARTITION_DISK=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/friendlyarm-tiny6410/env"
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
index e621259..51253db 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -7,12 +7,14 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x31fc0000 if MACH_MINI2440
 	default 0x57fc0000 if MACH_MINI6410
+	default 0x57fc0000 if MACH_TINY6410
 	default 0x31fc0000 if MACH_A9M2440
 	default 0x31fc0000 if MACH_A9M2410
 
 config BOARDINFO
 	default "Mini 2440"    if MACH_MINI2440
 	default "Mini 6410"    if MACH_MINI6410
+	default "Tiny 6410"    if MACH_TINY6410
 	default "Digi A9M2440" if MACH_A9M2440
 	default "Digi A9M2410" if MACH_A9M2410
 
@@ -109,10 +111,19 @@ config MACH_MINI6410
 	  Say Y here if you are using FriendlyARM Mini6410 board equipped
 	  with a Samsung S3C6410 Processor
 
+config MACH_TINY6410
+	bool "Tiny 6410"
+	select CPU_S3C6410
+	help
+	  Say Y here if you are using FriendlyARM Tiny6410 CPU card equipped
+	  with a Samsung S3C6410 Processor
+
 endchoice
 
 menu "Board specific settings       "
 
+source arch/arm/boards/friendlyarm-tiny6410/Kconfig
+
 endmenu
 
 endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
