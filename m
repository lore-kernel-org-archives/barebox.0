Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SmPJd-0008Rh-Cb
 for barebox@lists.infradead.org; Wed, 04 Jul 2012 13:08:23 +0000
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Wed,  4 Jul 2012 15:07:53 +0200
Message-Id: <1341407274-11848-3-git-send-email-maxime.ripard@free-electrons.com>
In-Reply-To: <1341407274-11848-1-git-send-email-maxime.ripard@free-electrons.com>
References: <1341407274-11848-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCH 2/2] Add support for the Crystalfontz CFA-10036 board
To: barebox@lists.infradead.org
Cc: brian@crystalfontz.com

Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: Brian Lilly <brian@crystalfontz.com>
---
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/crystalfontz-cfa10036/Makefile     |    1 +
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |  106 ++++++++++++++++++++
 arch/arm/boards/crystalfontz-cfa10036/config.h     |   16 +++
 .../boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |   10 ++
 .../crystalfontz-cfa10036/env/init/automount       |    9 ++
 .../crystalfontz-cfa10036/env/init/bootargs-base   |    8 ++
 .../boards/crystalfontz-cfa10036/env/init/general  |   12 +++
 .../boards/crystalfontz-cfa10036/env/init/hostname |    8 ++
 arch/arm/configs/cfa10036_defconfig                |   42 ++++++++
 arch/arm/mach-mxs/Kconfig                          |    8 ++
 11 files changed, 221 insertions(+)
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/Makefile
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/config.h
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/automount
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/bootargs-base
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/general
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/hostname
 create mode 100644 arch/arm/configs/cfa10036_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index bd684dc..b8280fe 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -118,6 +118,7 @@ board-$(CONFIG_MACH_MX23EVK)			:= freescale-mx23-evk
 board-$(CONFIG_MACH_CHUMBY)			:= chumby_falconwing
 board-$(CONFIG_MACH_TX28)			:= karo-tx28
 board-$(CONFIG_MACH_MX28EVK)			:= freescale-mx28-evk
+board-$(CONFIG_MACH_CFA10036)			:= crystalfontz-cfa10036
 board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		:= freescale-mx51-pdk
 board-$(CONFIG_MACH_FREESCALE_MX53_LOCO)	:= freescale-mx53-loco
 board-$(CONFIG_MACH_FREESCALE_MX53_SMD)		:= freescale-mx53-smd
diff --git a/arch/arm/boards/crystalfontz-cfa10036/Makefile b/arch/arm/boards/crystalfontz-cfa10036/Makefile
new file mode 100644
index 0000000..75f0020
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/Makefile
@@ -0,0 +1 @@
+obj-y += cfa10036.o
diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
new file mode 100644
index 0000000..e454afd
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -0,0 +1,106 @@
+/*
+ * Copyright (C) 2010 Juergen Beisert, Pengutronix <kernel@pengutronix.de>
+ * Copyright (C) 2011 Marc Kleine-Budde, Pengutronix <mkl@pengutronix.de>
+ * Copyright (C) 2011 Wolfram Sang, Pengutronix <w.sang@pengutronix.de>
+ * Copyright (C) 2012 Maxime Ripard, Free Electrons <maxime.ripard@free-electrons.com>
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
+#include <environment.h>
+#include <errno.h>
+#include <fec.h>
+#include <gpio.h>
+#include <init.h>
+#include <mci.h>
+#include <io.h>
+
+#include <mach/clock.h>
+#include <mach/imx-regs.h>
+#include <mach/iomux-imx28.h>
+#include <mach/mci.h>
+
+#include <asm/armlinux.h>
+#include <asm/mmu.h>
+
+#include <mach/fb.h>
+
+#include <generated/mach-types.h>
+
+/* setup the CPU card internal signals */
+static const uint32_t cfa10036_pads[] = {
+	/* duart */
+	FUNC(2) | PORTF(3, 2) | VE_3_3V,
+	FUNC(2) | PORTF(3, 3) | VE_3_3V,
+
+	/* mmc0 */
+	SSP0_D0 | VE_3_3V | PULLUP(1),
+	SSP0_D1 | VE_3_3V | PULLUP(1),
+	SSP0_D2 | VE_3_3V | PULLUP(1),
+	SSP0_D3 | VE_3_3V | PULLUP(1),
+	SSP0_D4 | VE_3_3V | PULLUP(1),
+	SSP0_D5 | VE_3_3V | PULLUP(1),
+	SSP0_D6 | VE_3_3V | PULLUP(1),
+	SSP0_D7 | VE_3_3V | PULLUP(1),
+	SSP0_CMD | VE_3_3V | PULLUP(1),
+	SSP0_CD | VE_3_3V | PULLUP(1),
+	SSP0_SCK | VE_3_3V | BITKEEPER(0),
+	/* MCI slot power control 1 = off */
+	PWM3_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(0),
+};
+
+static struct mxs_mci_platform_data mci_pdata = {
+	.caps = MMC_MODE_8BIT,
+	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
+	.f_min = 400 * 1000,
+	.f_max = 25000000,
+};
+
+static int cfa10036_mem_init(void)
+{
+	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(cfa10036_mem_init);
+
+static int cfa10036_devices_init(void)
+{
+	int i;
+
+	/* initizalize muxing */
+	for (i = 0; i < ARRAY_SIZE(cfa10036_pads); i++)
+		imx_gpio_mode(cfa10036_pads[i]);
+
+	/* enable IOCLK0 to run at the PLL frequency */
+	imx_set_ioclk(0, 480000000);
+	/* run the SSP unit clock at 100 MHz */
+	imx_set_sspclk(0, 100000000, 1);
+
+	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
+	armlinux_set_architecture(MACH_TYPE_CFA10036);
+
+	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0,
+			   IORESOURCE_MEM, &mci_pdata);
+
+	return 0;
+}
+device_initcall(cfa10036_devices_init);
+
+static int cfa10036_console_init(void)
+{
+	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 8192,
+			   IORESOURCE_MEM, NULL);
+
+	return 0;
+}
+console_initcall(cfa10036_console_init);
diff --git a/arch/arm/boards/crystalfontz-cfa10036/config.h b/arch/arm/boards/crystalfontz-cfa10036/config.h
new file mode 100644
index 0000000..8f18fda
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/config.h
@@ -0,0 +1,16 @@
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
+#ifndef _CONFIG_H_
+# define _CONFIG_H_
+
+#endif /* _CONFIG_H_ */
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3 b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
new file mode 100644
index 0000000..7d7eb50
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "MMC (ext)"
+	exit
+fi
+
+global.bootm.image="/mnt/disk0.1/zImage-cfa10036"
+global.bootm.oftree="/mnt/disk0.1/oftree-cfa10036"
+bootargs-root-ext -r 3 -m mmcblk0p3
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/init/automount b/arch/arm/boards/crystalfontz-cfa10036/env/init/automount
new file mode 100644
index 0000000..fe67e55
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/init/automount
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Automountpoints"
+	exit
+fi
+
+mkdir -p /mnt/disk0.1
+automount -d /mnt/disk0.1 '[ -e /dev/disk0.1 ] && mount /dev/disk0.1 fat /mnt/disk0.1'
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/init/bootargs-base b/arch/arm/boards/crystalfontz-cfa10036/env/init/bootargs-base
new file mode 100644
index 0000000..4dda550
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/init/bootargs-base
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Base bootargs"
+	exit
+fi
+
+global.linux.bootargs.base="console=ttyAMA0,115200"
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/init/general b/arch/arm/boards/crystalfontz-cfa10036/env/init/general
new file mode 100644
index 0000000..5cb3a75
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/init/general
@@ -0,0 +1,12 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "general config settings"
+	exit
+fi
+
+# timeout in seconds before the default boot entry is started
+global.autoboot_timeout=3
+
+# default boot entry (one of /env/boot/*)
+global.boot.default=mmc-ext3
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/init/hostname b/arch/arm/boards/crystalfontz-cfa10036/env/init/hostname
new file mode 100644
index 0000000..1dbe346
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/init/hostname
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "hostname"
+	exit
+fi
+
+global.hostname=cfa10036
diff --git a/arch/arm/configs/cfa10036_defconfig b/arch/arm/configs/cfa10036_defconfig
new file mode 100644
index 0000000..67a0e8f
--- /dev/null
+++ b/arch/arm/configs/cfa10036_defconfig
@@ -0,0 +1,42 @@
+CONFIG_ARCH_MXS=y
+CONFIG_ARCH_IMX28=y
+CONFIG_MACH_CFA10036=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x43000000
+CONFIG_MALLOC_SIZE=0x800000
+CONFIG_BROKEN=y
+CONFIG_LONGHELP=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/crystalfontz-cfa10036/env"
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+# CONFIG_SPI is not set
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_MXS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index 3348a3c..aa5f241 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -6,12 +6,14 @@ config ARCH_TEXT_BASE
 	default 0x42000000 if MACH_CHUMBY
 	default 0x47000000 if MACH_TX28
 	default 0x47000000 if MACH_MX28EVK
+	default 0x47000000 if MACH_CFA10036
 
 config BOARDINFO
 	default "Freescale i.MX23-EVK" if MACH_MX23EVK
 	default "Chumby Falconwing" if MACH_CHUMBY
 	default "Karo TX28" if MACH_TX28
 	default "Freescale i.MX28-EVK" if MACH_MX28EVK
+	default "Crystalfontz CFA-10036" if MACH_CFA10036
 
 comment "Freescale i.MX System-on-Chip"
 
@@ -64,6 +66,12 @@ config MACH_MX28EVK
 	help
 	  Say Y here if you are using the Freescale i.MX28-EVK board
 
+config MACH_CFA10036
+	bool "cfa-10036"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	help
+	  Say Y here if you are using the Crystalfontz CFA-10036 module
+
 endchoice
 
 endif
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
