Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp17.mail.ru ([94.100.176.154])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TUDNp-0008Gj-97
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 09:17:46 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  2 Nov 2012 13:17:16 +0400
Message-Id: <1351847836-8221-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1351847836-8221-1-git-send-email-shc_work@mail.ru>
References: <1351847836-8221-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v4 3/3] ARM: clps711x: Add generic board support (CLEP7212)
To: barebox@lists.infradead.org

This patch adds generic board support (CLEP7212, Linux ARM ID=91)
for CLPS711X-target.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/Makefile                               |    1 +
 arch/arm/boards/clep7212/Makefile               |    2 +
 arch/arm/boards/clep7212/clep7212.c             |   64 +++++++++++++++++++++++
 arch/arm/boards/clep7212/config.h               |    4 ++
 arch/arm/boards/clep7212/env/bin/mtdparts-add   |   21 +++++++
 arch/arm/boards/clep7212/env/boot/nor           |    9 +++
 arch/arm/boards/clep7212/env/init/automount     |    6 ++
 arch/arm/boards/clep7212/env/init/bootargs-base |    8 +++
 arch/arm/boards/clep7212/env/init/general       |   12 ++++
 arch/arm/boards/clep7212/env/init/hostname      |    8 +++
 arch/arm/boards/clep7212/lowlevel.c             |   56 ++++++++++++++++++++
 arch/arm/configs/clps711x_defconfig             |   42 +++++++++++++++
 arch/arm/mach-clps711x/Kconfig                  |   18 ++++++
 13 files changed, 251 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/clep7212/Makefile
 create mode 100644 arch/arm/boards/clep7212/clep7212.c
 create mode 100644 arch/arm/boards/clep7212/config.h
 create mode 100644 arch/arm/boards/clep7212/env/bin/mtdparts-add
 create mode 100644 arch/arm/boards/clep7212/env/boot/nor
 create mode 100644 arch/arm/boards/clep7212/env/init/automount
 create mode 100644 arch/arm/boards/clep7212/env/init/bootargs-base
 create mode 100644 arch/arm/boards/clep7212/env/init/general
 create mode 100644 arch/arm/boards/clep7212/env/init/hostname
 create mode 100644 arch/arm/boards/clep7212/lowlevel.c
 create mode 100644 arch/arm/configs/clps711x_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index da80e00..05f9943 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -76,6 +76,7 @@ board-$(CONFIG_MACH_AT91SAM9G10EK)		:= at91sam9261ek
 board-$(CONFIG_MACH_AT91SAM9G20EK)		:= at91sam9260ek
 board-$(CONFIG_MACH_AT91SAM9X5EK)		:= at91sam9x5ek
 board-$(CONFIG_MACH_AT91SAM9M10G45EK)		:= at91sam9m10g45ek
+board-$(CONFIG_MACH_CLEP7212)			:= clep7212
 board-$(CONFIG_MACH_DSS11)			:= dss11
 board-$(CONFIG_MACH_EDB9301)			:= edb93xx
 board-$(CONFIG_MACH_EDB9302)			:= edb93xx
diff --git a/arch/arm/boards/clep7212/Makefile b/arch/arm/boards/clep7212/Makefile
new file mode 100644
index 0000000..a63aeae
--- /dev/null
+++ b/arch/arm/boards/clep7212/Makefile
@@ -0,0 +1,2 @@
+obj-y += lowlevel.o clep7212.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/clep7212/clep7212.c b/arch/arm/boards/clep7212/clep7212.c
new file mode 100644
index 0000000..a32337f
--- /dev/null
+++ b/arch/arm/boards/clep7212/clep7212.c
@@ -0,0 +1,64 @@
+/*
+ * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <partition.h>
+#include <io.h>
+#include <sizes.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+
+#include <mach/clps711x.h>
+#include <mach/devices.h>
+
+static int clps711x_mem_init(void)
+{
+	ulong memsize = get_ram_size((ulong *)SDRAM0_BASE, SZ_32M);
+
+	arm_add_mem_device("ram0", SDRAM0_BASE, memsize);
+
+	return 0;
+}
+mem_initcall(clps711x_mem_init);
+
+static int clps711x_devices_init(void)
+{
+	u32 serial_h = 0, serial_l = readl(UNIQID);
+
+	/* Setup Chipselects */
+	clps711x_setup_memcfg(0, MEMCFG_WAITSTATE_6_1 | MEMCFG_BUS_WIDTH_16);
+	clps711x_setup_memcfg(1, MEMCFG_WAITSTATE_6_1 | MEMCFG_BUS_WIDTH_8);
+	clps711x_setup_memcfg(2, MEMCFG_WAITSTATE_8_3 | MEMCFG_BUS_WIDTH_16 |
+			      MEMCFG_CLKENB);
+	clps711x_setup_memcfg(3, MEMCFG_WAITSTATE_6_1 | MEMCFG_BUS_WIDTH_32);
+
+	add_cfi_flash_device(0, CS0_BASE, SZ_32M, 0);
+
+	devfs_add_partition("nor0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED,
+			    "self0");
+	devfs_add_partition("nor0", SZ_256K, SZ_256K, DEVFS_PARTITION_FIXED,
+			    "env0");
+
+	armlinux_set_bootparams((void *)SDRAM0_BASE + 0x100);
+	armlinux_set_architecture(MACH_TYPE_CLEP7212);
+	armlinux_set_serial(((u64)serial_h << 32) | serial_l);
+
+	return 0;
+}
+device_initcall(clps711x_devices_init);
+
+static int clps711x_console_init(void)
+{
+	clps711x_add_uart(0);
+
+	return 0;
+}
+console_initcall(clps711x_console_init);
diff --git a/arch/arm/boards/clep7212/config.h b/arch/arm/boards/clep7212/config.h
new file mode 100644
index 0000000..6ae9a40
--- /dev/null
+++ b/arch/arm/boards/clep7212/config.h
@@ -0,0 +1,4 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif  /* __CONFIG_H */
diff --git a/arch/arm/boards/clep7212/env/bin/mtdparts-add b/arch/arm/boards/clep7212/env/bin/mtdparts-add
new file mode 100644
index 0000000..ef1bc02
--- /dev/null
+++ b/arch/arm/boards/clep7212/env/bin/mtdparts-add
@@ -0,0 +1,21 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Partitions"
+	exit
+fi
+
+norparts="256k(barebox),256k(bareboxenv),3584k(kernel),-(root)"
+ramparts="-(ramdisk)"
+
+if [ -e /dev/nor0 ]; then
+	addpart -n /dev/nor0 "${norparts}"
+
+	global linux.mtdparts.nor
+	global.linux.mtdparts.nor="physmap-flash.0:${norparts}"
+else
+	echo "NOR Flash not found."
+fi
+
+global linux.mtdparts.ram
+global.linux.mtdparts.ram="mtd-ram.0:${ramparts}"
diff --git a/arch/arm/boards/clep7212/env/boot/nor b/arch/arm/boards/clep7212/env/boot/nor
new file mode 100644
index 0000000..5cf1e15
--- /dev/null
+++ b/arch/arm/boards/clep7212/env/boot/nor
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "NOR Flash"
+	exit
+fi
+
+global.bootm.image="/dev/kernel"
+global.linux.bootargs.dyn.root="root=/dev/mtdblock4 ro"
diff --git a/arch/arm/boards/clep7212/env/init/automount b/arch/arm/boards/clep7212/env/init/automount
new file mode 100644
index 0000000..978b964
--- /dev/null
+++ b/arch/arm/boards/clep7212/env/init/automount
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Automountpoints"
+	exit
+fi
diff --git a/arch/arm/boards/clep7212/env/init/bootargs-base b/arch/arm/boards/clep7212/env/init/bootargs-base
new file mode 100644
index 0000000..ec08e39
--- /dev/null
+++ b/arch/arm/boards/clep7212/env/init/bootargs-base
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Base bootargs"
+	exit
+fi
+
+global.linux.bootargs.base="earlyprintk console=ttyCL0,57600n8"
diff --git a/arch/arm/boards/clep7212/env/init/general b/arch/arm/boards/clep7212/env/init/general
new file mode 100644
index 0000000..77e6a59
--- /dev/null
+++ b/arch/arm/boards/clep7212/env/init/general
@@ -0,0 +1,12 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "general config settings"
+	exit
+fi
+
+global.user=barebox
+global.autoboot_timeout=2
+global.boot.default=nor
+
+/env/bin/mtdparts-add
diff --git a/arch/arm/boards/clep7212/env/init/hostname b/arch/arm/boards/clep7212/env/init/hostname
new file mode 100644
index 0000000..684ee63
--- /dev/null
+++ b/arch/arm/boards/clep7212/env/init/hostname
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "hostname"
+	exit
+fi
+
+global.hostname=clep7212
diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
new file mode 100644
index 0000000..9b7e241
--- /dev/null
+++ b/arch/arm/boards/clep7212/lowlevel.c
@@ -0,0 +1,56 @@
+/*
+ * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
+#include <common.h>
+#include <init.h>
+
+#include <asm/io.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+
+#include <mach/clps711x.h>
+
+#define MAIN_CLOCK		3686400
+#define CPU_SPEED		92160000
+#define BUS_SPEED		(CPU_SPEED / 2)
+
+#define PLL_VALUE		(((CPU_SPEED * 2) / MAIN_CLOCK) << 24)
+#define SDRAM_REFRESH_RATE	(64 * (BUS_SPEED / (8192 * 1000)))
+
+void __naked __bare_init reset(void)
+{
+	u32 tmp;
+
+	common_reset();
+
+	/* Setup base clock */
+	writel(SYSCON3_CLKCTL0 | SYSCON3_CLKCTL1, SYSCON3);
+	asm("nop");
+
+	/* Setup PLL */
+	writel(PLL_VALUE, PLLW);
+	asm("nop");
+
+	/* CLKEN select, SDRAM width=32 */
+	writel(SYSCON2_CLKENSL, SYSCON2);
+
+	/* Enable SDQM pins */
+	tmp = readl(SYSCON3);
+	tmp &= ~SYSCON3_ENPD67;
+	writel(tmp, SYSCON3);
+
+	/* Setup Refresh Rate (64ms 8K Blocks) */
+	writel(SDRAM_REFRESH_RATE, SDRFPR);
+
+	/* Setup SDRAM (32MB, 16Bit*2, CAS=3) */
+	writel(SDCONF_CASLAT_3 | SDCONF_SIZE_256 | SDCONF_WIDTH_16 |
+	       SDCONF_CLKCTL | SDCONF_ACTIVE, SDCONF);
+
+	board_init_lowlevel_return();
+}
diff --git a/arch/arm/configs/clps711x_defconfig b/arch/arm/configs/clps711x_defconfig
new file mode 100644
index 0000000..cf2b3b6
--- /dev/null
+++ b/arch/arm/configs/clps711x_defconfig
@@ -0,0 +1,42 @@
+CONFIG_ARCH_CLPS711X=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+# CONFIG_MEMINFO is not set
+CONFIG_TEXT_BASE=0xc0780000
+CONFIG_EXPERIMENTAL=y
+CONFIG_BAUDRATE=57600
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_LZO=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/clep7212/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTZ=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+# CONFIG_SPI is not set
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
+CONFIG_MTD=y
+CONFIG_DISK=y
+CONFIG_DISK_WRITE=y
+CONFIG_DISK_INTF_PLATFORM_IDE=y
+CONFIG_FS_CRAMFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
index 56ca2ca..469ca72 100644
--- a/arch/arm/mach-clps711x/Kconfig
+++ b/arch/arm/mach-clps711x/Kconfig
@@ -3,6 +3,24 @@ if ARCH_CLPS711X
 choice
 	prompt "Cirrus Logic EP711x/EP721x/EP731x Board Type"
 
+config MACH_CLEP7212
+	bool "Cirrus Logic CLEP7212"
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
+	help
+	  Boards based on the Cirrus Logic 7212/7312 CPU.
+
 endchoice
 
+config BOARDINFO
+	default "Cirrus Logic CLEP7212" if MACH_CLEP7212
+
+config ARCH_TEXT_BASE
+	hex
+	default 0xc0780000 if MACH_CLEP7212
+
+config BAREBOX_MAX_IMAGE_SIZE
+	hex
+	default 0x00080000 if MACH_CLEP7212
+
 endif
-- 
1.7.8.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
