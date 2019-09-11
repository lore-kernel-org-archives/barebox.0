Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xfV-0007Uy-C3
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 08:08:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Sep 2019 10:07:28 +0200
Message-Id: <20190911080731.23102-5-s.hauer@pengutronix.de>
In-Reply-To: <20190911080731.23102-1-s.hauer@pengutronix.de>
References: <20190911080731.23102-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/8] ARM: NETX: remove architecture
To: Barebox List <barebox@lists.infradead.org>

NETX support has been removed from the Kernel, so there's no point in
supporting it in barebox any longer. Remove the architecture.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                            |   5 -
 arch/arm/Makefile                           |  13 -
 arch/arm/boards/netx/Makefile               |   2 -
 arch/arm/boards/netx/netx.c                 |  84 -----
 arch/arm/boards/netx/platform.S             |  28 --
 arch/arm/configs/netx_nxdb500_defconfig     |  30 --
 arch/arm/mach-netx/Kconfig                  |  34 --
 arch/arm/mach-netx/Makefile                 |   5 -
 arch/arm/mach-netx/clocksource.c            |  51 ---
 arch/arm/mach-netx/eth_firmware.h           | 370 --------------------
 arch/arm/mach-netx/generic.c                | 160 ---------
 arch/arm/mach-netx/include/mach/netx-cm.h   |  32 --
 arch/arm/mach-netx/include/mach/netx-eth.h  |   9 -
 arch/arm/mach-netx/include/mach/netx-regs.h | 324 -----------------
 arch/arm/mach-netx/include/mach/netx-xc.h   |   6 -
 arch/arm/mach-netx/interrupts.c             |  70 ----
 arch/arm/mach-netx/lowlevel_init.S          |   3 -
 arch/arm/mach-netx/netx-cm.c                | 317 -----------------
 18 files changed, 1543 deletions(-)
 delete mode 100644 arch/arm/boards/netx/Makefile
 delete mode 100644 arch/arm/boards/netx/netx.c
 delete mode 100644 arch/arm/boards/netx/platform.S
 delete mode 100644 arch/arm/configs/netx_nxdb500_defconfig
 delete mode 100644 arch/arm/mach-netx/Kconfig
 delete mode 100644 arch/arm/mach-netx/Makefile
 delete mode 100644 arch/arm/mach-netx/clocksource.c
 delete mode 100644 arch/arm/mach-netx/eth_firmware.h
 delete mode 100644 arch/arm/mach-netx/generic.c
 delete mode 100644 arch/arm/mach-netx/include/mach/netx-cm.h
 delete mode 100644 arch/arm/mach-netx/include/mach/netx-eth.h
 delete mode 100644 arch/arm/mach-netx/include/mach/netx-regs.h
 delete mode 100644 arch/arm/mach-netx/include/mach/netx-xc.h
 delete mode 100644 arch/arm/mach-netx/interrupts.c
 delete mode 100644 arch/arm/mach-netx/lowlevel_init.S
 delete mode 100644 arch/arm/mach-netx/netx-cm.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index de45bcf82a..d56a8d0078 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -145,10 +145,6 @@ config ARCH_MXS
 	select CLKDEV_LOOKUP
 	select HAS_DEBUG_LL
 
-config ARCH_NETX
-	bool "Hilscher NetX based"
-	select CPU_ARM926T
-
 config ARCH_NOMADIK
 	bool "STMicroelectronics Nomadik"
 	select CPU_ARM926T
@@ -298,7 +294,6 @@ source "arch/arm/mach-imx/Kconfig"
 source "arch/arm/mach-layerscape/Kconfig"
 source "arch/arm/mach-mxs/Kconfig"
 source "arch/arm/mach-mvebu/Kconfig"
-source "arch/arm/mach-netx/Kconfig"
 source "arch/arm/mach-nomadik/Kconfig"
 source "arch/arm/mach-omap/Kconfig"
 source "arch/arm/mach-pxa/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 5cb46f6613..cbf3d310db 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -92,7 +92,6 @@ machine-$(CONFIG_ARCH_LAYERSCAPE)	:= layerscape
 machine-$(CONFIG_ARCH_MXS)		:= mxs
 machine-$(CONFIG_ARCH_MVEBU)		:= mvebu
 machine-$(CONFIG_ARCH_NOMADIK)		:= nomadik
-machine-$(CONFIG_ARCH_NETX)		:= netx
 machine-$(CONFIG_ARCH_OMAP)		:= omap
 machine-$(CONFIG_ARCH_PXA)		:= pxa
 machine-$(CONFIG_ARCH_ROCKCHIP)		:= rockchip
@@ -154,18 +153,6 @@ else
 KBUILD_BINARY := barebox.bin
 endif
 
-barebox.netx: $(KBUILD_BINARY)
-	$(Q)scripts/gen_netx_image -i $< -o barebox.netx		\
-		--sdramctrl=$(CONFIG_NETX_SDRAM_CTRL)			\
-		--sdramtimctrl=$(CONFIG_NETX_SDRAM_TIMING_CTRL)		\
-		--memctrl=$(CONFIG_NETX_MEM_CTRL)			\
-		--entrypoint=$(CONFIG_TEXT_BASE)			\
-		--cookie=$(CONFIG_NETX_COOKIE);
-
-ifeq ($(machine-y),netx)
-KBUILD_IMAGE := barebox.netx
-endif
-
 barebox.s5p: $(KBUILD_BINARY)
 	$(Q)scripts/s5p_cksum $< barebox.s5p
 
diff --git a/arch/arm/boards/netx/Makefile b/arch/arm/boards/netx/Makefile
deleted file mode 100644
index 90979ace8f..0000000000
--- a/arch/arm/boards/netx/Makefile
+++ /dev/null
@@ -1,2 +0,0 @@
-obj-y += netx.o
-lwl-y += platform.o
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
deleted file mode 100644
index a9cb6a578c..0000000000
--- a/arch/arm/boards/netx/netx.c
+++ /dev/null
@@ -1,84 +0,0 @@
-/*
- * Copyright (C) 2004 Sascha Hauer, Synertronixx GmbH
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- */
-
-#include <common.h>
-#include <net.h>
-#include <init.h>
-#include <environment.h>
-#include <mach/netx-regs.h>
-#include <partition.h>
-#include <asm/armlinux.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <generated/mach-types.h>
-#include <mach/netx-eth.h>
-
-struct netx_eth_platform_data eth0_data = {
-	.xcno = 0,
-};
-
-struct netx_eth_platform_data eth1_data = {
-	.xcno = 1,
-};
-
-static int netx_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0x80000000, 64 * 1024 * 1024);
-
-	return 0;
-}
-mem_initcall(netx_mem_init);
-
-static int netx_devices_init(void) {
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0xC0000000, 32 * 1024 * 1024, 0);
-
-	add_generic_device("netx-eth", DEVICE_ID_DYNAMIC, NULL, 0, 0, IORESOURCE_MEM,
-			&eth0_data);
-	add_generic_device("netx-eth", DEVICE_ID_DYNAMIC, NULL, 0, 0, IORESOURCE_MEM,
-			&eth1_data);
-
-	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
-
-	/* Do not overwrite primary env for now */
-	devfs_add_partition("nor0", 0xc0000, 0x80000, DEVFS_PARTITION_FIXED, "env0");
-
-	protect_file("/dev/env0", 1);
-
-	armlinux_set_architecture(MACH_TYPE_NXDB500);
-
-	return 0;
-}
-
-device_initcall(netx_devices_init);
-
-static int netx_console_init(void)
-{
-	/* configure gpio for serial */
-	*(volatile unsigned long *)(0x00100800) = 2;
-	*(volatile unsigned long *)(0x00100804) = 2;
-	*(volatile unsigned long *)(0x00100808) = 2;
-	*(volatile unsigned long *)(0x0010080c) = 2;
-
-	barebox_set_model("Hilscher Netx nxdb500");
-	barebox_set_hostname("nxdb500");
-
-	add_generic_device("netx_serial", DEVICE_ID_DYNAMIC, NULL, NETX_PA_UART0, 0x40,
-			   IORESOURCE_MEM, NULL);
-	return 0;
-}
-
-console_initcall(netx_console_init);
-
diff --git a/arch/arm/boards/netx/platform.S b/arch/arm/boards/netx/platform.S
deleted file mode 100644
index 95ae46cc6d..0000000000
--- a/arch/arm/boards/netx/platform.S
+++ /dev/null
@@ -1,28 +0,0 @@
-/*
- * Board specific setup info
- *
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
-
-.globl barebox_arm_reset_vector
-barebox_arm_reset_vector:
-	bl	arm_cpu_lowlevel_init
-	mov	r0, #0x80000000
-	mov	r1, #SZ_64M
-	mov	r2, #0
-	b	barebox_arm_entry
diff --git a/arch/arm/configs/netx_nxdb500_defconfig b/arch/arm/configs/netx_nxdb500_defconfig
deleted file mode 100644
index a8b5ffb7ac..0000000000
--- a/arch/arm/configs/netx_nxdb500_defconfig
+++ /dev/null
@@ -1,30 +0,0 @@
-CONFIG_TEXT_BASE=0x08f80000
-CONFIG_ARCH_NETX=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_FLASH=y
-CONFIG_NET=y
-CONFIG_DRIVER_NET_NETX=y
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_FS_TFTP=y
diff --git a/arch/arm/mach-netx/Kconfig b/arch/arm/mach-netx/Kconfig
deleted file mode 100644
index 63cfe3be43..0000000000
--- a/arch/arm/mach-netx/Kconfig
+++ /dev/null
@@ -1,34 +0,0 @@
-if ARCH_NETX
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x81f00000 if MACH_NXDB500
-
-config NETX_SDRAM_CTRL
-	hex
-	default 0x010D0121 if MACH_NXDB500
-
-config NETX_SDRAM_TIMING_CTRL
-	hex
-	default 0x03C13261 if MACH_NXDB500
-
-config NETX_MEM_CTRL
-	hex
-	default 0x0203030F if MACH_NXDB500
-
-config NETX_COOKIE
-	hex
-	default 32 if MACH_NXDB500
-
-choice
-	prompt "Netx Board Type"
-
-config MACH_NXDB500
-	bool "Hilscher Netx nxdb500"
-	select HAS_NETX_ETHER
-	help
-	  Say Y here if you are using the Hilscher Netx nxdb500 board
-
-endchoice
-
-endif
diff --git a/arch/arm/mach-netx/Makefile b/arch/arm/mach-netx/Makefile
deleted file mode 100644
index 0b6791e787..0000000000
--- a/arch/arm/mach-netx/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-
-obj-y += clocksource.o
-obj-y += lowlevel_init.o
-obj-y += generic.o
-
diff --git a/arch/arm/mach-netx/clocksource.c b/arch/arm/mach-netx/clocksource.c
deleted file mode 100644
index 1eb977d3c9..0000000000
--- a/arch/arm/mach-netx/clocksource.c
+++ /dev/null
@@ -1,51 +0,0 @@
-/*
- *
- * (C) Copyright 2007
- * Sascha Hauer, Pengutronix
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-#include <clock.h>
-#include <mach/netx-regs.h>
-
-static uint64_t netx_clocksource_read(void)
-{
-	return GPIO_REG(GPIO_COUNTER_CURRENT(0));
-}
-
-static struct clocksource cs = {
-	.read	= netx_clocksource_read,
-	.mask	= CLOCKSOURCE_MASK(32),
-	.shift	= 10,
-};
-
-static int clocksource_init (void)
-{
-	/* disable timer initially */
-	GPIO_REG(GPIO_COUNTER_CTRL(0)) = 0;
-	/* Reset the timer value to zero */
-	GPIO_REG(GPIO_COUNTER_CURRENT(0)) = 0;
-	GPIO_REG(GPIO_COUNTER_MAX(0)) = 0xffffffff;
-	GPIO_REG(GPIO_COUNTER_CTRL(0)) = COUNTER_CTRL_RUN;
-
-	cs.mult = clocksource_hz2mult(100 * 1000 * 1000, cs.shift);
-
-	return init_clock(&cs);
-}
-
-core_initcall(clocksource_init);
diff --git a/arch/arm/mach-netx/eth_firmware.h b/arch/arm/mach-netx/eth_firmware.h
deleted file mode 100644
index a90d0a5eb4..0000000000
--- a/arch/arm/mach-netx/eth_firmware.h
+++ /dev/null
@@ -1,370 +0,0 @@
-
-unsigned int rpu_eth0[] = {
-    0x00f40401, 0x915fdb81, 0x01e7fffd, 0x915fdb82, 0x01e3fffd, 0x915fdb83, 0x012bff01, 0x915fdb84, 0x01240001,
-    0x915fdb85, 0x00ac17bd, 0x915fdb86, 0x00dc0000, 0x001be686, 0x20dc0000, 0x001c1c87, 0x0137f811, 0x91561ca4,
-    0x20c000c9, 0x8d9e1ca4, 0x0137fe41, 0x91481b8d, 0x00dc0000, 0x001be689, 0x00001800, 0x01dfdbac, 0x20700021,
-    0x82b61ca4, 0x007000c9, 0x859fdb8f, 0x20dc0000, 0x001e1ca4, 0x1c700020, 0xf2bfdb91, 0x20dc0000, 0x001e1ca4,
-    0x20dc0000, 0x001e1ca4, 0x1c700020, 0xf2be1911, 0x00ac17cd, 0x91485b95, 0x20dc0000, 0x001c1c9b, 0x00dc0000,
-    0x00185cab, 0x00000c00, 0x01c91aac, 0x20dc0000, 0x001c1ca8, 0x18dc0000, 0x00185cab, 0x04700020, 0xf2ba1c95,
-    0x00dc0000, 0x001be524, 0x00000c00, 0x01c91aac, 0x00000400, 0x01ce1b9f, 0x00001c00, 0x01c8c81f, 0x0137feb1,
-    0x915fdba0, 0x00020000, 0x01d08820, 0x00dc0000, 0x001fdba2, 0x00000001, 0x9153c022, 0x00dc0000, 0x001fdb81,
-    0x00c8005a, 0x52305cab, 0x00001400, 0x01c89b2c, 0x00001000, 0x01ca1bac, 0x00001400, 0x01dfdb9f, 0x00dc0000,
-    0x001be524, 0x00000800, 0x01ce1b9f, 0x00dc0000, 0x001fdb9e, 0x00000400, 0x01dfdbac, 0x00dc0000, 0x00181cac,
-    0x00dc0000, 0x001fdb9f,
-};
-
-unsigned int rpu_eth0_patch[] = {
-    0x00160844, 0x00000000, 0x0016089c, 0x0000dd7b, 0x001608a0, 0x0000c704, 0x001608f0, 0x00000280, 0x00160934,
-    0x00000000, 0x0016093c, 0x0000ff00, 0x00160940, 0x0000d500, 0x00160944, 0x0000ffff, 0x00160948, 0x00000081,
-    0x001609d8, 0x00001db7, 0x001609dc, 0x000004c1, 0x001609e8, 0x000003f8,
-};
-
-unsigned int tpu_eth0[] = {
-    0x010c0041, 0x915fdb81, 0x01fbfffd, 0x915fdb82, 0x01f7fffd, 0x915fdb83, 0x012ffdfd, 0x915fdb84, 0x00dc0000,
-    0x001bc82d, 0x01380001, 0x91489c86, 0x01390001, 0x914ba707, 0x00dc0000, 0x001bc82d, 0x00b00020, 0xea97c085,
-    0x00b000b0, 0xeddfdb8a, 0x01300001, 0x627fdb8b, 0x00dc0000, 0x001b8093, 0x01380001, 0x91489c8d, 0x00c80102,
-    0x727fdb8e, 0x00dc0000, 0x00199b10, 0x00dc0000, 0x001fdb8c, 0x00c80182, 0x727fdb91, 0x00dc0000, 0x00199b16,
-    0x00dc0000, 0x001fdb90, 0x00a40020, 0xea918813, 0x00a400a4, 0xedd18814, 0x00ec0005, 0x9157d995, 0x20855555,
-    0x915fdb97, 0x00ec0005, 0x915fdb98, 0x013bff11, 0x915fdb99, 0x28dc0000, 0x0018dcd3, 0x00840035, 0x91565919,
-    0x280800c5, 0x955fdb9c, 0x00048000, 0x09d8dcd7, 0x048400c8, 0xed9fdb9e, 0x28dc0000, 0x0018dcdd, 0x3cc800c9,
-    0x0d58dcdd, 0x00dc0000, 0x001d881d, 0x008401f5, 0x94bfdba2, 0x28dc0000, 0x0018dcdd, 0x00041000, 0x09cfd924,
-    0x28dc0000, 0x0018dcdd, 0x28dc0000, 0x0018dcdd, 0x288401f9, 0x94b0dcdd, 0x28dc0000, 0x0018dcdd, 0x28dc0000,
-    0x0018dcdd, 0x28dc0000, 0x0018dcdd, 0x0084000d, 0x08cfd92b, 0x28ec0001, 0x9150dcdd, 0x0087fffd, 0x915bd96d,
-    0x01390001, 0x914ba72e, 0x00dc0000, 0x001fc805, 0x00b00020, 0xea97c0ad, 0x00b000b0, 0xeddfdbb1, 0x01300001,
-    0x627fdbb2, 0x00dc0000, 0x001b80b6, 0x00c80182, 0x727fdbb4, 0x00dc0000, 0x00199b39, 0x00dc0000, 0x001fdbb3,
-    0x00a40020, 0xea918836, 0x00a400a4, 0xedd18837, 0x00ec0005, 0x9157d9b8, 0x20855555, 0x915fdbba, 0x00ec0005,
-    0x915fdbbb, 0x013bff11, 0x915fdbbc, 0x20dc0000, 0x001fdbbd, 0x00840035, 0x9156593c, 0x200800c5, 0x955fdbbf,
-    0x00048000, 0x09dfdbc0, 0x048400c8, 0xed9fdbc1, 0x20dc0000, 0x001fdbc2, 0x34c800c9, 0x0d5fdbc3, 0x00dc0000,
-    0x001d8840, 0x008401f5, 0x94bfdbc5, 0x20dc0000, 0x001fdbc6, 0x00041000, 0x09cfd947, 0x20dc0000, 0x001fdbc8,
-    0x20dc0000, 0x001fdbc9, 0x20dc0000, 0x001fdbca, 0x008401f9, 0x94bfdbcb, 0x20dc0000, 0x001fdbcc, 0x20dc0000,
-    0x001fdbcd, 0x20dc0000, 0x001fdbce, 0x0084000d, 0x08cfd94f, 0x20ec0001, 0x915fdbd0, 0x0087fffd, 0x915bd96d,
-    0x01380001, 0x915fdbd2, 0x0005fffc, 0x091fdb81, 0x00840035, 0x914a5956, 0x20dc0000, 0x001fdbd5, 0x00840035,
-    0x91565953, 0x20040400, 0x09dfdbd8, 0x00040400, 0x09dfdbd8, 0x013bff81, 0x915fdbd9, 0x0086aaab, 0xe8dfdbda,
-    0x20dc0000, 0x001fdbdb, 0x00ec0001, 0x9156595a, 0x0087fffd, 0x915fdbd1, 0x013bff81, 0x915fdbde, 0x0086aaab,
-    0xe8dfdbdf, 0x20040400, 0x09cbe5e0, 0x00ec0001, 0x9156595e, 0x0087fffd, 0x915fdbe2, 0x00040800, 0x09cfe5e3,
-    0x00dc0000, 0x001fdbd1, 0x20ec000d, 0x915fdbe5, 0x00dc0000, 0x001fdbe6, 0x013bffd1, 0x915fdbe9, 0x013bffc1,
-    0x915fdbe8, 0x00855557, 0xe8dfdbe9, 0x213bffc1, 0x91565969, 0x00855557, 0xf0dfdbeb, 0x20dc0000, 0x001e596b,
-    0x00ec0001, 0x915fdbd1, 0x00040c00, 0x09cf086e, 0x00dc0000, 0x001fdbd1,
-};
-
-unsigned int tpu_eth0_patch[] = {
-    0x00160884, 0x0000ffff, 0x00160888, 0x00000000, 0x001608a8, 0x0000ffff, 0x00160938, 0x00000000, 0x001609ec,
-    0x00001db7, 0x001609f0, 0x000004c1, 0x001609fc, 0x000002f9,
-};
-
-unsigned int xpec_eth0_mac[] = {
-    0x0a00c2df, 0x0a28e2e0, 0x0580c2e1, 0x3400c000, 0x0400c813, 0x1080c813, 0x2800c000, 0x3480c000, 0x3500c000,
-    0x0480c813, 0x1100c813, 0x2880c000, 0x1c70e2e2, 0x0000c2e3, 0x00b9b838, 0x40810000, 0x09f042e4, 0xa6000014,
-    0x1c70e2e5, 0xbe000015, 0x1c7022e5, 0x09f042e6, 0xa6000019, 0x1c70e2e7, 0xbe00001a, 0x1c7022e7, 0x0e80c2e8,
-    0x0f00c2e9, 0x0e00c2ea, 0x0f80c2eb, 0x0a80c2ec, 0x0b00c2ed, 0x2700c3e8, 0xc0fff000, 0x0d00c826, 0x0d80c824,
-    0x30c28001, 0x30c26001, 0x0011a83c, 0x0001083c, 0x00b682ee, 0x013682ef, 0x09810801, 0x9600002e, 0x0180c2f0,
-    0x01071802, 0x0080c2f1, 0x0100e802, 0x410100c1, 0x0080c2f2, 0x09b70530, 0x92000035, 0x0d3502f3, 0x4d0100c1,
-    0x0e80c2f4, 0x2800c000, 0xaf1e0038, 0x29cb0000, 0x8e00003e, 0x30c2e004, 0x042702e7, 0xbe000049, 0xaf00003e,
-    0x044ae2e7, 0x001082f5, 0x002db800, 0x008172f6, 0x001082f7, 0x0021b800, 0x21817618, 0x0100c2f8, 0x00870801,
-    0x408100c2, 0x29c24001, 0xa6000059, 0x29c24004, 0xa6000053, 0x0100c2f9, 0x2080c003, 0x0183052e, 0x418100c2,
-    0x0180c2fa, 0x418102c2, 0x0d00c2fb, 0x0d80c2fc, 0x0080c2fd, 0x0300c2fe, 0x2680c008, 0x430180c1, 0x29c24004,
-    0xa6000061, 0x0100c2ff, 0x2080c003, 0x0183052e, 0x418100c2, 0x0180c300, 0x418102c2, 0x0d00c301, 0x0d80c302,
-    0x0080c2fd, 0x0380c303, 0x2680c008, 0x438180c1, 0x21a11006, 0x8e00006b, 0x0687a803, 0xc0fff000, 0x0081852f,
-    0x0000c304, 0x61010141, 0x41010140, 0x61010141, 0x41010140, 0x61010141, 0x41010140, 0x49810040, 0x29c24004,
-    0xa600007d, 0x0100c305, 0x2080c001, 0x20830600, 0x0183052e, 0x418100c2, 0x0180c306, 0x418102c2, 0x0e80c307,
-    0x2680c008, 0xc0fff000, 0x0000c304, 0x0180c308, 0x0080c813, 0x00826d00, 0x00826d00, 0x00826d00, 0x00826d00,
-    0x00826d00, 0x00826d00, 0x408100c3, 0x0100c309, 0x0007b801, 0x400100c2, 0x0100c30a, 0x20028007, 0x20012001,
-    0x400100c2, 0x0e80c30b, 0x2680c008, 0xc0fff000, 0x2180c001, 0x01868558, 0xa6000099, 0x30c2e010, 0xbe0000b5,
-    0x00270528, 0x29808001, 0xa60000ad, 0x00270528, 0x098102f3, 0x860000a5, 0x00270529, 0x098102ee, 0x860000a5,
-    0x30c2e400, 0x30c2e010, 0xbe0000b5, 0x30c2e200, 0x0080c30c, 0x00830533, 0x00270534, 0x09808c01, 0xa60000b5,
-    0x30c2e010, 0xbe0000b5, 0x30c2e100, 0x00270528, 0x09810559, 0x860000b5, 0x00270529, 0x0981055a, 0x860000b5,
-    0x30c2e010, 0x0e80c30d, 0x2680c008, 0xc0fff000, 0x21a1100c, 0x8e0000bc, 0x0687a803, 0xc0fff000, 0x008d852f,
-    0x0000c30e, 0x61010141, 0x41010140, 0x61010141, 0x41010140, 0x61010141, 0x41010140, 0x49810040, 0x0e80c30f,
-    0x2680c008, 0xc0fff000, 0x0000c30e, 0x0180c310, 0x00a66d00, 0x00826d00, 0x00826d00, 0x00826d00, 0x00826d00,
-    0x00826d00, 0x408100c3, 0x0100c311, 0x0007b801, 0x400100c2, 0x0100c312, 0x20028007, 0x20012001, 0x400100c2,
-    0x0027052a, 0x29808001, 0xa60000e5, 0x0027052a, 0x098102f3, 0x860000e3, 0x0027052b, 0x098102ee, 0x860000e3,
-    0x10c2e2e7, 0xbe0000e6, 0x10c2e313, 0xbe0000e6, 0x10c2e2e5, 0x0e80c314, 0x2680c008, 0xc0fff000, 0x21a11012,
-    0x8e0000ed, 0x0687a803, 0xc0fff000, 0x0099852f, 0x0e80c2ee, 0x610101c1, 0x018482ee, 0x29870081, 0x820000f7,
-    0x0000c315, 0x041022f6, 0x30c22002, 0x41018040, 0x0000c316, 0x0410e2f6, 0x410100c0, 0x01048317, 0x012bb802,
-    0x0000c318, 0x00008558, 0x0021b800, 0x09810802, 0x96000103, 0x30c22002, 0xbe000104, 0x30c2e002, 0x0000c315,
-    0x61010041, 0x410180c0, 0x5e018106, 0x098d0303, 0x82000115, 0x09f08319, 0xa600010e, 0x2600c008, 0xbe000110,
-    0x2680c050, 0xbe000110, 0x09a7080d, 0x86000110, 0x09f0831a, 0xa6000115, 0x5e010106, 0x230d0020, 0x0080c2f8,
-    0x20270020, 0x0001052e, 0x400100c1, 0x30c26001, 0x0380c303, 0x0d00c301, 0x0d80c302, 0x29c24004, 0xa6000021,
-    0x0100c2ff, 0x2080c003, 0x0183052e, 0x418100c2, 0x0180c300, 0x418182c2, 0x5e018107, 0x098f031b, 0x82000134,
-    0x09f08319, 0xa600012d, 0x2680c008, 0xbe00012f, 0x2680c050, 0xbe00012f, 0x09a7080d, 0x8600012f, 0x09f0831a,
-    0xa6000134, 0x5e010107, 0x238f0020, 0x0080c2f8, 0x20270020, 0x0001052e, 0x400100c1, 0x30c26001, 0x0300c2fe,
-    0x0d00c2fb, 0x0d80c2fc, 0x29c24004, 0xa6000021, 0x0100c2f9, 0x2080c003, 0x0183052e, 0x418100c2, 0x0180c2fa,
-    0x418182c2, 0x01d082df, 0x145022f6, 0x3c70e400, 0x0e80c2e8, 0x0d00c2ee, 0x0d80c2ee, 0x3c702400, 0x00899810,
-    0x0410e801, 0x0100c31c, 0x0011b803, 0x00b9a800, 0x0402e808, 0x0300c2f3, 0x690400d0, 0x0380c2f3, 0x0080c31d,
-    0x00038561, 0x400100c1, 0xbe000159, 0x29c28004, 0xa600015f, 0x0080c31e, 0x00038568, 0x400100c1, 0xc0fff000,
-    0x29c28010, 0xa600019f, 0x29c28002, 0xa600016d, 0x29c28010, 0xa6000021, 0x81808000, 0x1280c808, 0xae000167,
-    0x00270558, 0x0980831f, 0xa6000021, 0x31c6e002, 0xc0fff000, 0x29c28010, 0xa6000021, 0x81810000, 0x1280c808,
-    0xae000171, 0x00270558, 0x09808320, 0xa6000021, 0x31c6e008, 0xc0fff000, 0x0080c321, 0x00038562, 0x400100c1,
-    0x0410e2e0, 0xbe00019a, 0x0080c322, 0x00038563, 0x400100c1, 0x0410e323, 0xbe00019a, 0x0080c324, 0x00038564,
-    0x400100c1, 0x0410e325, 0xbe00019a, 0x0080c326, 0x00038565, 0x400100c1, 0x0410e327, 0xbe00019a, 0x0080c328,
-    0x00038566, 0x400100c1, 0x0410e329, 0xbe00019a, 0x0080c32a, 0x00038567, 0x400100c1, 0x0410e32b, 0xbe00019a,
-    0x0080c32c, 0x00038569, 0x400100c1, 0x0410e32d, 0xbe00019a, 0x29c24004, 0xa6000021, 0x00270558, 0x29804002,
-    0xa600015f, 0x81800000, 0x1290832e, 0xae0001a1, 0xc0fff000, 0xaf0181a3, 0x0480c825, 0x3144e008, 0xbe0001ab,
-    0xaf0201a7, 0x0480c825, 0x31442008, 0xbe0001ab, 0x0e00c2ee, 0x0f80c2ee, 0x0000c32f, 0x0100c330, 0x009282f5,
-    0x00adb801, 0x008372f6, 0x019282f7, 0x01a1b803, 0x21877618, 0x00870801, 0x408100c0, 0x408100c2, 0x0100c331,
-    0x201287ff, 0x400100c2, 0x0180c332, 0x00c19800, 0x408100c3, 0x2981003c, 0x8a0001e1, 0x099282f6, 0xa60001c4,
-    0x298105ee, 0x920001e1, 0x298105ea, 0x920001e1, 0x0f80c333, 0x31446002, 0x2880c000, 0x1e11b800, 0x3e0080ff,
-    0x29c44002, 0xa60001d7, 0x0280c334, 0x0500c335, 0x0e00c336, 0x31442001, 0x0100c337, 0x2080c000, 0x01830500,
-    0x418100c2, 0x0180c338, 0x418182c2, 0x0280c339, 0x0500c33a, 0x0e00c33b, 0x3144e001, 0x0100c33c, 0x2080c000,
-    0x01830500, 0x418100c2, 0x0180c33d, 0x418182c2, 0x0039b327, 0xbe0002b2, 0x14a702f6, 0x0b80c2ee, 0x0c00c33e,
-    0x0c80c33f, 0xbe00020f, 0x14a702f6, 0x0b80c2ee, 0x0c00c33e, 0x0c80c33f, 0xbe00022a, 0x0b80c826, 0x0c80c824,
-    0x005482ee, 0x00b282ee, 0x013282ef, 0x09810801, 0x960001f6, 0x0180c2f0, 0x01071802, 0x0080c340, 0x0100e802,
-    0x410100c1, 0x0080c341, 0x09b30506, 0x920001fd, 0x0baf02f3, 0x4b8100c1, 0x0c80c342, 0x0b80c343, 0x0100c344,
-    0x2080c001, 0x20830600, 0x01830500, 0x418100c2, 0x0180c345, 0x418182c2, 0x29c48001, 0xa600020b, 0x2600c020,
-    0xc0fff000, 0x29c48004, 0xa600020f, 0x0e00c2ee, 0xc0fff000, 0x2180c020, 0x0100c330, 0x00870501, 0x408100c2,
-    0x0000c332, 0x09870503, 0x8a000218, 0x498100c0, 0xbe00021a, 0x00871503, 0x408100c0, 0x0e00c346, 0x3144e002,
-    0x0100c33c, 0x2080c000, 0x01830501, 0x418100c2, 0x0180c33d, 0x418182c2, 0x29c44001, 0xa6000226, 0x2600c020,
-    0xc0fff000, 0x29c48004, 0xa600022a, 0x0e00c2ee, 0xc0fff000, 0x2180c020, 0x0100c330, 0x00870501, 0x408100c2,
-    0x0000c332, 0x09870503, 0x8a000233, 0x498100c0, 0xbe000235, 0x00871503, 0x408100c0, 0x0e00c347, 0x31442002,
-    0x0100c337, 0x2080c000, 0x01830501, 0x418100c2, 0x0180c338, 0x418182c2, 0x7e018105, 0x0021b80a, 0x00008348,
-    0x098b0800, 0x82000021, 0x0c80c349, 0x09a60813, 0xc0fff000, 0x7e010105, 0x0c80c342, 0xc0fff000, 0x29c44004,
-    0xa6000268, 0x0000c331, 0x2100c020, 0x00851502, 0x408100c0, 0x09850502, 0x8a00025e, 0x3144e004, 0x01270502,
-    0x29c44001, 0xa6000259, 0x0280c339, 0x010b0802, 0x0521a802, 0x3144e001, 0xc0fff000, 0x0280c334, 0x010b0802,
-    0x0521a802, 0x31442001, 0xc0fff000, 0x29c44001, 0xa6000264, 0x0280c339, 0x0500c33a, 0x3144e001, 0xc0fff000,
-    0x0280c334, 0x0500c335, 0x31442001, 0xc0fff000, 0x31442004, 0x0c00c2ee, 0x0c80c2ee, 0x0b80c2ee, 0xc0fff000,
-    0x0c00c2ee, 0x0c80c2ee, 0x0b80c2ee, 0x0100c34a, 0x005282df, 0x0091b800, 0x1c70e34b, 0x690400d1, 0x1c70234b,
-    0x0080c34c, 0x0003855b, 0x400100c1, 0x09818504, 0x8600027d, 0x2492e000, 0xbe0002b2, 0x0492e2e4, 0xbe0002b2,
-    0x09818504, 0x86000285, 0x0080c34d, 0x0003855c, 0x400100c1, 0xbe00028c, 0x0080c34e, 0x0003855d, 0x400100c1,
-    0x099f8504, 0x9200028c, 0x0492e325, 0xbe0002b2, 0x0000c34f, 0x00838504, 0x408100c0, 0x09958504, 0x8a000293,
-    0x00a70504, 0xbe000294, 0x20a7000a, 0x0180c350, 0x00486351, 0x008302f3, 0x20832002, 0x008302f3, 0x00028800,
-    0x20017200, 0x09f04319, 0xa600029e, 0x2001700a, 0x400100c3, 0x0f80c352, 0x0e00c2ee, 0x06158505, 0xc0fff000,
-    0x0080c353, 0x0003855e, 0x400100c1, 0x0492e2e0, 0xbe0002b2, 0x0080c354, 0x0003855f, 0x400100c1, 0x0492e323,
-    0xbe0002b2, 0x0080c355, 0x00038560, 0x400100c1, 0x0492e32b, 0xbe0002b2, 0x29c48008, 0xa60002bc, 0x81828000,
-    0x1280c809, 0xae0002b6, 0x00270558, 0x09808356, 0xa60002c3, 0x31c6e001, 0xbe0002c3, 0x81830000, 0x1280c809,
-    0xae0002be, 0x00270558, 0x09808357, 0xa60002c3, 0x31c6e004, 0x0000c34f, 0x0f80c2ea, 0x0e00c2eb, 0x498180c0,
-    0x0000c2e3, 0x00b9b838, 0x40810000, 0x09f042e4, 0xa60002ce, 0x1c70e2e5, 0xbe0002cf, 0x1c7022e5, 0x00270558,
-    0x09808358, 0xa6000021, 0x31c6e010, 0xc0fff000, 0x0000c2e3, 0x00b9b838, 0x40810000, 0x09f042e6, 0xa60002db,
-    0x1c70e2e7, 0xbe0002dc, 0x1c7022e7, 0x2700c3e8, 0xc0fff000, 0xc0000fff, 0x00000f00, 0x80000000, 0x15601540,
-    0x0000a000, 0x000015b4, 0x10000000, 0x00001000, 0x20000000, 0x00004000, 0x8022ffb6, 0x8145ff47, 0x89a3ffc1,
-    0x89a7ffc2, 0xdac70c0c, 0x92d4ff42, 0x0000ffff, 0xffff0000, 0x00010000, 0x000014c0, 0x000014c4, 0xffffffff,
-    0x9067ff41, 0x03c00000, 0x00008000, 0x003f0000, 0x000014b8, 0x00001ffc, 0x0854877e, 0x0107b4b6, 0x9908ffb4,
-    0x000014bc, 0x00001520, 0x00001ff4, 0x085507fd, 0x0126b5b6, 0x9927ffb5, 0x00001540, 0x000014a0, 0x00001fdc,
-    0x0253047a, 0x9080ff41, 0x000014c8, 0x000014cc, 0x000014d0, 0x9094ff41, 0x000015e0, 0x90b8ff41, 0x000014a8,
-    0x90c8ff41, 0x000014d4, 0x000014d8, 0x000014dc, 0x00002000, 0x90e9ff41, 0x000014b0, 0x000014b4, 0x00e00000,
-    0x000f0000, 0x40000000, 0x00040000, 0x00001560, 0x000014e0, 0x00001584, 0x000015a0, 0x00100000, 0x00200000,
-    0x00001588, 0x0000158c, 0x90000000, 0x00001590, 0xa0000000, 0x00001594, 0xb0000000, 0x00001598, 0xc0000000,
-    0x0000159c, 0xd0000000, 0x000015a4, 0xe0000000, 0x03ff0000, 0x00001400, 0x00001404, 0x00001408, 0x0000140c,
-    0x9a6dff4b, 0x00001460, 0x14800000, 0x91e3ff86, 0x00001fec, 0x08518c7c, 0x00001480, 0x14a00000, 0x91e8ff87,
-    0x00001fe4, 0x08520c7b, 0x023db3ba, 0x91edff49, 0x00001418, 0x0000141c, 0x023eabba, 0x2a48abb3, 0x00001fd4,
-    0x0250647f, 0xd2224087, 0xd2074086, 0x00001fff, 0x8245ff04, 0x00001420, 0x00000800, 0x0000156c, 0x00001570,
-    0x00001574, 0x00001410, 0x00001414, 0x55555555, 0x91abff40, 0x00001578, 0x0000157c, 0x00001580, 0x00400000,
-    0x00800000, 0x01000000,
-};
-
-unsigned int xpec_eth0_mac_patch[] = {
-    0x00170054, 0x0000ffff, 0x00170058, 0x0000ffff, 0x0017005c, 0x0000ffff, 0x00170060, 0x0000ffff, 0x00170064,
-    0x0000ffff, 0x00170068, 0x0000ffff, 0x0017006c, 0x0000ffff, 0x00170070, 0x0000ffff, 0x00170074, 0x0000ffff,
-    0x00170078, 0x0000ffff, 0x0017007c, 0x0000ffff, 0x00170080, 0x0000ffff, 0x00173400, 0x00000000, 0x00173404,
-    0x00000000, 0x00173408, 0x00000000, 0x0017340c, 0x00000000, 0x00173410, 0x00000000, 0x00173414, 0x00000000,
-    0x00173418, 0x00000000, 0x0017341c, 0x00000000, 0x00173420, 0x00000276, 0x00173424, 0x0000027f, 0x00173428,
-    0x000002a3, 0x0017342c, 0x000002a8, 0x00173430, 0x000002ad, 0x00173434, 0x000002de, 0x00173438, 0x000002de,
-    0x0017343c, 0x000002de, 0x00173440, 0x000002de, 0x00173444, 0x000002de, 0x00173448, 0x000002de, 0x0017344c,
-    0x000002de, 0x00173450, 0x000002de, 0x00173454, 0x000002de, 0x00173458, 0x000002de, 0x0017345c, 0x000002de,
-    0x00173460, 0x00000000, 0x00173464, 0x00000000, 0x00173468, 0x00000000, 0x0017346c, 0x00000000, 0x00173470,
-    0x00000000, 0x00173474, 0x00000000, 0x00173478, 0x00000000, 0x0017347c, 0x00000000, 0x00173480, 0x00000000,
-    0x00173484, 0x00000000, 0x00173488, 0x00000000, 0x0017348c, 0x00000000, 0x00173490, 0x00000000, 0x00173494,
-    0x00000000, 0x00173498, 0x00000000, 0x0017349c, 0x00000000, 0x001734a0, 0x00000000, 0x001734a4, 0x00000000,
-    0x001734a8, 0x00000000, 0x001734ac, 0x00000000, 0x001734b0, 0x00000000, 0x001734b4, 0x00000000, 0x001734b8,
-    0x00000000, 0x001734bc, 0x00000000, 0x001734c0, 0x00000000, 0x001734c4, 0x00000000, 0x001734c8, 0x00000000,
-    0x001734cc, 0x00000000, 0x001734d0, 0x00000000, 0x001734d4, 0x00000000, 0x001734d8, 0x00000000, 0x001734dc,
-    0x00000000, 0x001734e0, 0x00000155, 0x001734e4, 0x00000177, 0x001734e8, 0x0000017c, 0x001734ec, 0x00000181,
-    0x001734f0, 0x00000186, 0x001734f4, 0x0000018b, 0x001734f8, 0x00000190, 0x001734fc, 0x00000195, 0x00173500,
-    0x000002de, 0x00173504, 0x000002de, 0x00173508, 0x000002de, 0x0017350c, 0x000002de, 0x00173510, 0x000002de,
-    0x00173514, 0x000002de, 0x00173518, 0x000002de, 0x0017351c, 0x000002de, 0x00173520, 0x00000000, 0x00173524,
-    0x00000000, 0x00173528, 0x00000000, 0x0017352c, 0x00000000, 0x00173530, 0x00000000, 0x00173534, 0x00000000,
-    0x00173538, 0x00000000, 0x0017353c, 0x00000000, 0x00173540, 0x00000000, 0x00173544, 0x00000000, 0x00173548,
-    0x00000000, 0x0017354c, 0x00000000, 0x00173550, 0x00000000, 0x00173554, 0x00000000, 0x00173558, 0x00000000,
-    0x0017355c, 0x00000000, 0x00173560, 0x00080000, 0x00173564, 0x03020100, 0x00173568, 0x00000504, 0x0017356c,
-    0x00000000, 0x00173570, 0x00000000, 0x00173574, 0x00000000, 0x00173578, 0x00000000, 0x0017357c, 0x00000000,
-    0x00173580, 0x00000000, 0x00173584, 0x00000000, 0x00173588, 0x00000000, 0x0017358c, 0x00000000, 0x00173590,
-    0x00000000, 0x00173594, 0x00000000, 0x00173598, 0x00000000, 0x0017359c, 0x00000000, 0x001735a0, 0x00000000,
-    0x001735a4, 0x00000000, 0x001735a8, 0x00000000, 0x001735ac, 0x00000000, 0x001735b0, 0x00000000, 0x001735e0,
-    0x00000000, 0x001735e4, 0x00000000, 0x001735e8, 0x00000000, 0x001735ec, 0x00000000, 0x001735f0, 0x00000000,
-    0x001735f4, 0x00000000, 0x001735f8, 0x00000000, 0x001735fc, 0x00000000, 0x00173fd0, 0x0250607f, 0x00173fd8,
-    0x0253007a, 0x00173fe0, 0x0852087b, 0x00173fe8, 0x0851887c, 0x00173ff0, 0x085503fd, 0x00173ff8, 0x0854837e,
-};
-
-static unsigned int rpu_eth1[] = {
-    0x00f40401, 0x915fdb81, 0x01e7fffd, 0x915fdb82, 0x01e3fffd, 0x915fdb83, 0x012bff01, 0x915fdb84, 0x01240001,
-    0x915fdb85, 0x00ac17bd, 0x915fdb86, 0x00dc0000, 0x001be686, 0x20dc0000, 0x001c1c87, 0x0137f811, 0x91561ca4,
-    0x20c000c9, 0x8d9e1ca4, 0x0137fe41, 0x91481b8d, 0x00dc0000, 0x001be689, 0x00101800, 0x21dfdbac, 0x20700021,
-    0x82b61ca4, 0x007000c9, 0x859fdb8f, 0x20dc0000, 0x001e1ca4, 0x1c700020, 0xf2bfdb91, 0x20dc0000, 0x001e1ca4,
-    0x20dc0000, 0x001e1ca4, 0x1c700020, 0xf2be1911, 0x00ac17cd, 0x91485b95, 0x20dc0000, 0x001c1c9b, 0x00dc0000,
-    0x00185cab, 0x00100c00, 0x21c91aac, 0x20dc0000, 0x001c1ca8, 0x18dc0000, 0x00185cab, 0x04700020, 0xf2ba1c95,
-    0x00dc0000, 0x001be524, 0x00100c00, 0x21c91aac, 0x00100400, 0x21ce1b9f, 0x00101c00, 0x21c8c91f, 0x0137feb1,
-    0x915fdba0, 0x00120000, 0x21d08920, 0x00dc0000, 0x001fdba2, 0x00100001, 0x9153c222, 0x00dc0000, 0x001fdb81,
-    0x00c8005a, 0x52305cab, 0x00101400, 0x21c89b2c, 0x00101000, 0x21ca1bac, 0x00101400, 0x21dfdb9f, 0x00dc0000,
-    0x001be524, 0x00100800, 0x21ce1b9f, 0x00dc0000, 0x001fdb9e, 0x00100400, 0x21dfdbac, 0x00dc0000, 0x00181cac,
-    0x00dc0000, 0x001fdb9f,
-};
-
-static unsigned int rpu_eth1_patch[] = {
-    0x0016184c, 0x00000000, 0x0016189c, 0x0000dd7b, 0x001618a0, 0x0000c704, 0x001618f0, 0x00000200, 0x00161934,
-    0x00000000, 0x0016193c, 0x0000ff00, 0x00161940, 0x0000d500, 0x00161944, 0x0000ffff, 0x00161948, 0x00000081,
-    0x001619d8, 0x00001db7, 0x001619dc, 0x000004c1, 0x001619e8, 0x000003f8,
-};
-
-static unsigned int tpu_eth1[] = {
-    0x010c0041, 0x915fdb81, 0x01fbfffd, 0x915fdb82, 0x01f7fffd, 0x915fdb83, 0x012ffdfd, 0x915fdb84,
-    0x00dc0000, 0x001bc92d, 0x01380001, 0x91489c86, 0x01390001, 0x914ba707, 0x00dc0000, 0x001bc92d, 0x00b00020,
-    0xea97c285, 0x00b000b0, 0xeddfdb8a, 0x01300001, 0x627fdb8b, 0x00dc0000, 0x001b8293, 0x01380001, 0x91489c8d,
-    0x00c80102, 0x727fdb8e, 0x00dc0000, 0x00199b10, 0x00dc0000, 0x001fdb8c, 0x00c80182, 0x727fdb91, 0x00dc0000,
-    0x00199b16, 0x00dc0000, 0x001fdb90, 0x00a40020, 0xea918913, 0x00a400a4, 0xedd18914, 0x00ec0005, 0x9157d995,
-    0x20855555, 0x915fdb97, 0x00ec0005, 0x915fdb98, 0x013bff11, 0x915fdb99, 0x28dc0000, 0x0018dcd3, 0x00840035,
-    0x91565919, 0x281800c5, 0x955fdb9c, 0x00148000, 0x29d8dcd7, 0x048400c8, 0xed9fdb9e, 0x28dc0000, 0x0018dcdd,
-    0x3cc800c9, 0x0d58dcdd, 0x00dc0000, 0x001d891d, 0x008401f5, 0x94bfdba2, 0x28dc0000, 0x0018dcdd, 0x00141000,
-    0x29cfd924, 0x28dc0000, 0x0018dcdd, 0x28dc0000, 0x0018dcdd, 0x288401f9, 0x94b0dcdd, 0x28dc0000, 0x0018dcdd,
-    0x28dc0000, 0x0018dcdd, 0x28dc0000, 0x0018dcdd, 0x0084000d, 0x08cfd92b, 0x28ec0001, 0x9150dcdd, 0x0087fffd,
-    0x915bd96d, 0x01390001, 0x914ba72e, 0x00dc0000, 0x001fc905, 0x00b00020, 0xea97c2ad, 0x00b000b0, 0xeddfdbb1,
-    0x01300001, 0x627fdbb2, 0x00dc0000, 0x001b82b6, 0x00c80182, 0x727fdbb4, 0x00dc0000, 0x00199b39, 0x00dc0000,
-    0x001fdbb3, 0x00a40020, 0xea918936, 0x00a400a4, 0xedd18937, 0x00ec0005, 0x9157d9b8, 0x20855555, 0x915fdbba,
-    0x00ec0005, 0x915fdbbb, 0x013bff11, 0x915fdbbc, 0x20dc0000, 0x001fdbbd, 0x00840035, 0x9156593c, 0x201800c5,
-    0x955fdbbf, 0x00148000, 0x29dfdbc0, 0x048400c8, 0xed9fdbc1, 0x20dc0000, 0x001fdbc2, 0x34c800c9, 0x0d5fdbc3,
-    0x00dc0000, 0x001d8940, 0x008401f5, 0x94bfdbc5, 0x20dc0000, 0x001fdbc6, 0x00141000, 0x29cfd947, 0x20dc0000,
-    0x001fdbc8, 0x20dc0000, 0x001fdbc9, 0x20dc0000, 0x001fdbca, 0x008401f9, 0x94bfdbcb, 0x20dc0000, 0x001fdbcc,
-    0x20dc0000, 0x001fdbcd, 0x20dc0000, 0x001fdbce, 0x0084000d, 0x08cfd94f, 0x20ec0001, 0x915fdbd0, 0x0087fffd,
-    0x915bd96d, 0x01380001, 0x915fdbd2, 0x0015fffc, 0x291fdb81, 0x00840035, 0x914a5956, 0x20dc0000, 0x001fdbd5,
-    0x00840035, 0x91565953, 0x20140400, 0x29dfdbd8, 0x00140400, 0x29dfdbd8, 0x013bff81, 0x915fdbd9, 0x0086aaab,
-    0xe8dfdbda, 0x20dc0000, 0x001fdbdb, 0x00ec0001, 0x9156595a, 0x0087fffd, 0x915fdbd1, 0x013bff81, 0x915fdbde,
-    0x0086aaab, 0xe8dfdbdf, 0x20140400, 0x29cbe5e0, 0x00ec0001, 0x9156595e, 0x0087fffd, 0x915fdbe2, 0x00140800,
-    0x29cfe5e3, 0x00dc0000, 0x001fdbd1, 0x20ec000d, 0x915fdbe5, 0x00dc0000, 0x001fdbe6, 0x013bffd1, 0x915fdbe9,
-    0x013bffc1, 0x915fdbe8, 0x00855557, 0xe8dfdbe9, 0x213bffc1, 0x91565969, 0x00855557, 0xf0dfdbeb, 0x20dc0000,
-    0x001e596b, 0x00ec0001, 0x915fdbd1, 0x00140c00, 0x29cf096e, 0x00dc0000, 0x001fdbd1,
-};
-
-static unsigned int tpu_eth1_patch[] = {
-    0x00161884, 0x0000ffff, 0x00161888, 0x00000000, 0x001618a8, 0x0000ffff, 0x00161938, 0x00000000, 0x001619ec,
-    0x00001db7, 0x001619f0, 0x000004c1, 0x001619fc, 0x000002f9,
-};
-
-static unsigned int xpec_eth1_mac[] = {
-    0x0a00c2df, 0x0a28e2e0, 0x0580c2e1, 0x3600c000, 0x0400c813, 0x1080c813, 0x2800c000, 0x3680c000, 0x3700c000,
-    0x0480c813, 0x1100c813, 0x2880c000, 0x1cf2e2e2, 0x0000c2e3, 0x00b9b839, 0x40810000, 0x09f242e4, 0xa6000014,
-    0x1cf2e2e5, 0xbe000015, 0x1cf222e5, 0x09f242e6, 0xa6000019, 0x1cf2e2e7, 0xbe00001a, 0x1cf222e7, 0x0e80c2e8,
-    0x0f00c2e9, 0x0e00c2ea, 0x0f80c2eb, 0x0a80c2ec, 0x0b00c2ed, 0x2700c3e8, 0xc0fff000, 0x0d00c826, 0x0d80c824,
-    0x30c28001, 0x30c26001, 0x0011a83d, 0x0001083d, 0x00b682ee, 0x013682ef, 0x09810801, 0x9600002e, 0x0180c2f0,
-    0x01071802, 0x0080c2f1, 0x0100e802, 0x410100c1, 0x0080c2f2, 0x09b70530, 0x92000035, 0x0d3502f3, 0x4d0100c1,
-    0x0e80c2f4, 0x2800c000, 0xaf220038, 0x29cb0000, 0x8e00003e, 0x30c2e004, 0x042702e7, 0xbe000049, 0xaf04003e,
-    0x044ae2e7, 0x001082f5, 0x002db800, 0x008172f6, 0x001082f7, 0x0021b800, 0x21817618, 0x0100c2f8, 0x00870801,
-    0x408100c2, 0x29c24001, 0xa6000059, 0x29c24004, 0xa6000053, 0x0100c2f9, 0x2080c003, 0x0183052e, 0x418100c2,
-    0x0180c2fa, 0x418102c2, 0x0d00c2fb, 0x0d80c2fc, 0x0080c2fd, 0x0300c2fe, 0x2680c008, 0x430180c1, 0x29c24004,
-    0xa6000061, 0x0100c2ff, 0x2080c003, 0x0183052e, 0x418100c2, 0x0180c300, 0x418102c2, 0x0d00c301, 0x0d80c302,
-    0x0080c2fd, 0x0380c303, 0x2680c008, 0x438180c1, 0x21a11006, 0x8e00006b, 0x0687a803, 0xc0fff000, 0x0081852f,
-    0x0000c304, 0x61010141, 0x41010140, 0x61010141, 0x41010140, 0x61010141, 0x41010140, 0x49810040, 0x29c24004,
-    0xa600007d, 0x0100c305, 0x2080c001, 0x20830600, 0x0183052e, 0x418100c2, 0x0180c306, 0x418102c2, 0x0e80c307,
-    0x2680c008, 0xc0fff000, 0x0000c304, 0x0180c308, 0x0080c813, 0x00826d00, 0x00826d00, 0x00826d00, 0x00826d00,
-    0x00826d00, 0x00826d00, 0x408100c3, 0x0100c309, 0x0007b801, 0x400100c2, 0x0100c30a, 0x20028007, 0x20012001,
-    0x400100c2, 0x0e80c30b, 0x2680c008, 0xc0fff000, 0x2180c001, 0x01868558, 0xa6000099, 0x30c2e010, 0xbe0000b5,
-    0x00270528, 0x29808001, 0xa60000ad, 0x00270528, 0x098102f3, 0x860000a5, 0x00270529, 0x098102ee, 0x860000a5,
-    0x30c2e400, 0x30c2e010, 0xbe0000b5, 0x30c2e200, 0x0080c30c, 0x00830533, 0x00270534, 0x09808c01, 0xa60000b5,
-    0x30c2e010, 0xbe0000b5, 0x30c2e100, 0x00270528, 0x09810559, 0x860000b5, 0x00270529, 0x0981055a, 0x860000b5,
-    0x30c2e010, 0x0e80c30d, 0x2680c008, 0xc0fff000, 0x21a1100c, 0x8e0000bc, 0x0687a803, 0xc0fff000, 0x008d852f,
-    0x0000c30e, 0x61010141, 0x41010140, 0x61010141, 0x41010140, 0x61010141, 0x41010140, 0x49810040, 0x0e80c30f,
-    0x2680c008, 0xc0fff000, 0x0000c30e, 0x0180c310, 0x00a66d00, 0x00826d00, 0x00826d00, 0x00826d00, 0x00826d00,
-    0x00826d00, 0x408100c3, 0x0100c311, 0x0007b801, 0x400100c2, 0x0100c312, 0x20028007, 0x20012001, 0x400100c2,
-    0x0027052a, 0x29808001, 0xa60000e5, 0x0027052a, 0x098102f3, 0x860000e3, 0x0027052b, 0x098102ee, 0x860000e3,
-    0x10c2e2e7, 0xbe0000e6, 0x10c2e313, 0xbe0000e6, 0x10c2e2e5, 0x0e80c314, 0x2680c008, 0xc0fff000, 0x21a11012,
-    0x8e0000ed, 0x0687a803, 0xc0fff000, 0x0099852f, 0x0e80c2ee, 0x610101c1, 0x018482ee, 0x29870081, 0x820000f7,
-    0x0000c315, 0x041022f6, 0x30c22002, 0x41018040, 0x0000c316, 0x0410e2f6, 0x410100c0, 0x01048317, 0x012bb802,
-    0x0000c318, 0x00008558, 0x0021b800, 0x09810802, 0x96000103, 0x30c22002, 0xbe000104, 0x30c2e002, 0x0000c315,
-    0x61010041, 0x410180c0, 0x5e818106, 0x098d0303, 0x82000115, 0x09f28319, 0xa600010e, 0x2600c008, 0xbe000110,
-    0x2680c050, 0xbe000110, 0x09a7080d, 0x86000110, 0x09f2831a, 0xa6000115, 0x5e810106, 0x230d0020, 0x0080c2f8,
-    0x20270020, 0x0001052e, 0x400100c1, 0x30c26001, 0x0380c303, 0x0d00c301, 0x0d80c302, 0x29c24004, 0xa6000021,
-    0x0100c2ff, 0x2080c003, 0x0183052e, 0x418100c2, 0x0180c300, 0x418182c2, 0x5e818107, 0x098f031b, 0x82000134,
-    0x09f28319, 0xa600012d, 0x2680c008, 0xbe00012f, 0x2680c050, 0xbe00012f, 0x09a7080d, 0x8600012f, 0x09f2831a,
-    0xa6000134, 0x5e810107, 0x238f0020, 0x0080c2f8, 0x20270020, 0x0001052e, 0x400100c1, 0x30c26001, 0x0300c2fe,
-    0x0d00c2fb, 0x0d80c2fc, 0x29c24004, 0xa6000021, 0x0100c2f9, 0x2080c003, 0x0183052e, 0x418100c2, 0x0180c2fa,
-    0x418182c2, 0x01d882df, 0x165822f6, 0x3cf2e400, 0x0e80c2e8, 0x0d00c2ee, 0x0d80c2ee, 0x3cf22400, 0x00899810,
-    0x0410e801, 0x0100c31c, 0x0011b803, 0x00b9a800, 0x0402e808, 0x0300c2f3, 0x690400d0, 0x0380c2f3, 0x0080c31d,
-    0x00038561, 0x400100c1, 0xbe000159, 0x29c28004, 0xa600015f, 0x0080c31e, 0x00038568, 0x400100c1, 0xc0fff000,
-    0x29c28010, 0xa600019f, 0x29c28002, 0xa600016d, 0x29c28010, 0xa6000021, 0x81848000, 0x1280c808, 0xae000167,
-    0x00270558, 0x0980831f, 0xa6000021, 0x31c6e002, 0xc0fff000, 0x29c28010, 0xa6000021, 0x81850000, 0x1280c808,
-    0xae000171, 0x00270558, 0x09808320, 0xa6000021, 0x31c6e008, 0xc0fff000, 0x0080c321, 0x00038562, 0x400100c1,
-    0x0410e2e0, 0xbe00019a, 0x0080c322, 0x00038563, 0x400100c1, 0x0410e323, 0xbe00019a, 0x0080c324, 0x00038564,
-    0x400100c1, 0x0410e325, 0xbe00019a, 0x0080c326, 0x00038565, 0x400100c1, 0x0410e327, 0xbe00019a, 0x0080c328,
-    0x00038566, 0x400100c1, 0x0410e329, 0xbe00019a, 0x0080c32a, 0x00038567, 0x400100c1, 0x0410e32b, 0xbe00019a,
-    0x0080c32c, 0x00038569, 0x400100c1, 0x0410e32d, 0xbe00019a, 0x29c24004, 0xa6000021, 0x00270558, 0x29804002,
-    0xa600015f, 0x81840000, 0x1290832e, 0xae0001a1, 0xc0fff000, 0xaf0581a3, 0x0480c825, 0x3144e008, 0xbe0001ab,
-    0xaf0601a7, 0x0480c825, 0x31442008, 0xbe0001ab, 0x0e00c2ee, 0x0f80c2ee, 0x0000c32f, 0x0100c330, 0x009282f5,
-    0x00adb801, 0x008372f6, 0x019282f7, 0x01a1b803, 0x21877618, 0x00870801, 0x408100c0, 0x408100c2, 0x0100c331,
-    0x201287ff, 0x400100c2, 0x0180c332, 0x00c19800, 0x408100c3, 0x2981003c, 0x8a0001e1, 0x099282f6, 0xa60001c4,
-    0x298105ee, 0x920001e1, 0x298105ea, 0x920001e1, 0x0f80c333, 0x31446002, 0x2880c000, 0x1e91b800, 0x3e8080ff,
-    0x29c44002, 0xa60001d7, 0x0280c334, 0x0500c335, 0x0e00c336, 0x31442001, 0x0100c337, 0x2080c000, 0x01830500,
-    0x418100c2, 0x0180c338, 0x418182c2, 0x0280c339, 0x0500c33a, 0x0e00c33b, 0x3144e001, 0x0100c33c, 0x2080c000,
-    0x01830500, 0x418100c2, 0x0180c33d, 0x418182c2, 0x0039b327, 0xbe0002b2, 0x16a702f6, 0x0b80c2ee, 0x0c00c33e,
-    0x0c80c33f, 0xbe00020f, 0x16a702f6, 0x0b80c2ee, 0x0c00c33e, 0x0c80c33f, 0xbe00022a, 0x0b80c826, 0x0c80c824,
-    0x005c82ee, 0x00b282ee, 0x013282ef, 0x09810801, 0x960001f6, 0x0180c2f0, 0x01071802, 0x0080c340, 0x0100e802,
-    0x410100c1, 0x0080c341, 0x09b30506, 0x920001fd, 0x0baf02f3, 0x4b8100c1, 0x0c80c342, 0x0b80c343, 0x0100c344,
-    0x2080c001, 0x20830600, 0x01830500, 0x418100c2, 0x0180c345, 0x418182c2, 0x29c48001, 0xa600020b, 0x2600c020,
-    0xc0fff000, 0x29c48004, 0xa600020f, 0x0e00c2ee, 0xc0fff000, 0x2180c020, 0x0100c330, 0x00870501, 0x408100c2,
-    0x0000c332, 0x09870503, 0x8a000218, 0x498100c0, 0xbe00021a, 0x00871503, 0x408100c0, 0x0e00c346, 0x3144e002,
-    0x0100c33c, 0x2080c000, 0x01830501, 0x418100c2, 0x0180c33d, 0x418182c2, 0x29c44001, 0xa6000226, 0x2600c020,
-    0xc0fff000, 0x29c48004, 0xa600022a, 0x0e00c2ee, 0xc0fff000, 0x2180c020, 0x0100c330, 0x00870501, 0x408100c2,
-    0x0000c332, 0x09870503, 0x8a000233, 0x498100c0, 0xbe000235, 0x00871503, 0x408100c0, 0x0e00c347, 0x31442002,
-    0x0100c337, 0x2080c000, 0x01830501, 0x418100c2, 0x0180c338, 0x418182c2, 0x7e818105, 0x0021b80a, 0x00008348,
-    0x098b0800, 0x82000021, 0x0c80c349, 0x09a60813, 0xc0fff000, 0x7e810105, 0x0c80c342, 0xc0fff000, 0x29c44004,
-    0xa6000268, 0x0000c331, 0x2100c020, 0x00851502, 0x408100c0, 0x09850502, 0x8a00025e, 0x3144e004, 0x01270502,
-    0x29c44001, 0xa6000259, 0x0280c339, 0x010b0802, 0x0521a802, 0x3144e001, 0xc0fff000, 0x0280c334, 0x010b0802,
-    0x0521a802, 0x31442001, 0xc0fff000, 0x29c44001, 0xa6000264, 0x0280c339, 0x0500c33a, 0x3144e001, 0xc0fff000,
-    0x0280c334, 0x0500c335, 0x31442001, 0xc0fff000, 0x31442004, 0x0c00c2ee, 0x0c80c2ee, 0x0b80c2ee, 0xc0fff000,
-    0x0c00c2ee, 0x0c80c2ee, 0x0b80c2ee, 0x0100c34a, 0x005a82df, 0x0091b800, 0x1cf2e34b, 0x690400d1, 0x1cf2234b,
-    0x0080c34c, 0x0003855b, 0x400100c1, 0x09818504, 0x8600027d, 0x2492e000, 0xbe0002b2, 0x0492e2e4, 0xbe0002b2,
-    0x09818504, 0x86000285, 0x0080c34d, 0x0003855c, 0x400100c1, 0xbe00028c, 0x0080c34e, 0x0003855d, 0x400100c1,
-    0x099f8504, 0x9200028c, 0x0492e325, 0xbe0002b2, 0x0000c34f, 0x00838504, 0x408100c0, 0x09958504, 0x8a000293,
-    0x00a70504, 0xbe000294, 0x20a7000a, 0x0180c350, 0x00486351, 0x008302f3, 0x20832002, 0x008302f3, 0x00028800,
-    0x20017200, 0x09f24319, 0xa600029e, 0x2001700a, 0x400100c3, 0x0f80c352, 0x0e00c2ee, 0x06158505, 0xc0fff000,
-    0x0080c353, 0x0003855e, 0x400100c1, 0x0492e2e0, 0xbe0002b2, 0x0080c354, 0x0003855f, 0x400100c1, 0x0492e323,
-    0xbe0002b2, 0x0080c355, 0x00038560, 0x400100c1, 0x0492e32b, 0xbe0002b2, 0x29c48008, 0xa60002bc, 0x81868000,
-    0x1280c809, 0xae0002b6, 0x00270558, 0x09808356, 0xa60002c3, 0x31c6e001, 0xbe0002c3, 0x81870000, 0x1280c809,
-    0xae0002be, 0x00270558, 0x09808357, 0xa60002c3, 0x31c6e004, 0x0000c34f, 0x0f80c2ea, 0x0e00c2eb, 0x498180c0,
-    0x0000c2e3, 0x00b9b839, 0x40810000, 0x09f242e4, 0xa60002ce, 0x1cf2e2e5, 0xbe0002cf, 0x1cf222e5, 0x00270558,
-    0x09808358, 0xa6000021, 0x31c6e010, 0xc0fff000, 0x0000c2e3, 0x00b9b839, 0x40810000, 0x09f242e6, 0xa60002db,
-    0x1cf2e2e7, 0xbe0002dc, 0x1cf222e7, 0x2700c3e8, 0xc0fff000, 0xc0000fff, 0x00000f00, 0x80000000, 0x15601540,
-    0x0000a000, 0x000015b4, 0x10000000, 0x00001000, 0x20000000, 0x00004000, 0x8022ffb7, 0x8145ff57, 0x89a3ffc9,
-    0x89a7ffca, 0xdac71c1c, 0x92d4ff42, 0x0000ffff, 0xffff0000, 0x00010000, 0x000014c0, 0x000014c4, 0xffffffff,
-    0x9067ff41, 0x03c00000, 0x00008000, 0x003f0000, 0x000014b8, 0x00001ffc, 0x0854877e, 0x0107b4b7, 0x9908ffb4,
-    0x000014bc, 0x00001520, 0x00001ff4, 0x085507fd, 0x0126b5b7, 0x9927ffb5, 0x00001540, 0x000014a0, 0x00001fdc,
-    0x0253047a, 0x9080ff41, 0x000014c8, 0x000014cc, 0x000014d0, 0x9094ff41, 0x000015e0, 0x90b8ff41, 0x000014a8,
-    0x90c8ff41, 0x000014d4, 0x000014d8, 0x000014dc, 0x00002000, 0x90e9ff41, 0x000014b0, 0x000014b4, 0x00e00000,
-    0x000f0000, 0x40000000, 0x00040000, 0x00001560, 0x000014e0, 0x00001584, 0x000015a0, 0x00100000, 0x00200000,
-    0x00001588, 0x0000158c, 0x90000000, 0x00001590, 0xa0000000, 0x00001594, 0xb0000000, 0x00001598, 0xc0000000,
-    0x0000159c, 0xd0000000, 0x000015a4, 0xe0000000, 0x03ff0000, 0x00001400, 0x00001404, 0x00001408, 0x0000140c,
-    0x9a6dff5b, 0x00001460, 0x14800000, 0x91e3ff8e, 0x00001fec, 0x08518c7c, 0x00001480, 0x14a00000, 0x91e8ff8f,
-    0x00001fe4, 0x08520c7b, 0x023db3bb, 0x91edff59, 0x00001418, 0x0000141c, 0x023eabbb, 0x2a48abb3, 0x00001fd4,
-    0x0250647f, 0xd222408f, 0xd207408e, 0x00001fff, 0x8245ff14, 0x00001420, 0x00000800, 0x0000156c, 0x00001570,
-    0x00001574, 0x00001410, 0x00001414, 0x55555555, 0x91abff40, 0x00001578, 0x0000157c, 0x00001580, 0x00400000,
-    0x00800000, 0x01000000,
-};
-
-static unsigned int xpec_eth1_mac_patch[] = {
-    0x00174054, 0x0000ffff, 0x00174058, 0x0000ffff, 0x0017405c, 0x0000ffff, 0x00174060, 0x0000ffff, 0x00174064,
-    0x0000ffff, 0x00174068, 0x0000ffff, 0x0017406c, 0x0000ffff, 0x00174070, 0x0000ffff, 0x00174074, 0x0000ffff,
-    0x00174078, 0x0000ffff, 0x0017407c, 0x0000ffff, 0x00174080, 0x0000ffff, 0x00177400, 0x00000000, 0x00177404,
-    0x00000000, 0x00177408, 0x00000000, 0x0017740c, 0x00000000, 0x00177410, 0x00000000, 0x00177414, 0x00000000,
-    0x00177418, 0x00000000, 0x0017741c, 0x00000000, 0x00177420, 0x00000276, 0x00177424, 0x0000027f, 0x00177428,
-    0x000002a3, 0x0017742c, 0x000002a8, 0x00177430, 0x000002ad, 0x00177434, 0x000002de, 0x00177438, 0x000002de,
-    0x0017743c, 0x000002de, 0x00177440, 0x000002de, 0x00177444, 0x000002de, 0x00177448, 0x000002de, 0x0017744c,
-    0x000002de, 0x00177450, 0x000002de, 0x00177454, 0x000002de, 0x00177458, 0x000002de, 0x0017745c, 0x000002de,
-    0x00177460, 0x00000000, 0x00177464, 0x00000000, 0x00177468, 0x00000000, 0x0017746c, 0x00000000, 0x00177470,
-    0x00000000, 0x00177474, 0x00000000, 0x00177478, 0x00000000, 0x0017747c, 0x00000000, 0x00177480, 0x00000000,
-    0x00177484, 0x00000000, 0x00177488, 0x00000000, 0x0017748c, 0x00000000, 0x00177490, 0x00000000, 0x00177494,
-    0x00000000, 0x00177498, 0x00000000, 0x0017749c, 0x00000000, 0x001774a0, 0x00000000, 0x001774a4, 0x00000000,
-    0x001774a8, 0x00000000, 0x001774ac, 0x00000000, 0x001774b0, 0x00000000, 0x001774b4, 0x00000000, 0x001774b8,
-    0x00000000, 0x001774bc, 0x00000000, 0x001774c0, 0x00000000, 0x001774c4, 0x00000000, 0x001774c8, 0x00000000,
-    0x001774cc, 0x00000000, 0x001774d0, 0x00000000, 0x001774d4, 0x00000000, 0x001774d8, 0x00000000, 0x001774dc,
-    0x00000000, 0x001774e0, 0x00000155, 0x001774e4, 0x00000177, 0x001774e8, 0x0000017c, 0x001774ec, 0x00000181,
-    0x001774f0, 0x00000186, 0x001774f4, 0x0000018b, 0x001774f8, 0x00000190, 0x001774fc, 0x00000195, 0x00177500,
-    0x000002de, 0x00177504, 0x000002de, 0x00177508, 0x000002de, 0x0017750c, 0x000002de, 0x00177510, 0x000002de,
-    0x00177514, 0x000002de, 0x00177518, 0x000002de, 0x0017751c, 0x000002de, 0x00177520, 0x00000000, 0x00177524,
-    0x00000000, 0x00177528, 0x00000000, 0x0017752c, 0x00000000, 0x00177530, 0x00000000, 0x00177534, 0x00000000,
-    0x00177538, 0x00000000, 0x0017753c, 0x00000000, 0x00177540, 0x00000000, 0x00177544, 0x00000000, 0x00177548,
-    0x00000000, 0x0017754c, 0x00000000, 0x00177550, 0x00000000, 0x00177554, 0x00000000, 0x00177558, 0x00000000,
-    0x0017755c, 0x00000000, 0x00177560, 0x00080000, 0x00177564, 0x03020100, 0x00177568, 0x00000504, 0x0017756c,
-    0x00000000, 0x00177570, 0x00000000, 0x00177574, 0x00000000, 0x00177578, 0x00000000, 0x0017757c, 0x00000000,
-    0x00177580, 0x00000000, 0x00177584, 0x00000000, 0x00177588, 0x00000000, 0x0017758c, 0x00000000, 0x00177590,
-    0x00000000, 0x00177594, 0x00000000, 0x00177598, 0x00000000, 0x0017759c, 0x00000000, 0x001775a0, 0x00000000,
-    0x001775a4, 0x00000000, 0x001775a8, 0x00000000, 0x001775ac, 0x00000000, 0x001775b0, 0x00000000, 0x001775e0,
-    0x00000000, 0x001775e4, 0x00000000, 0x001775e8, 0x00000000, 0x001775ec, 0x00000000, 0x001775f0, 0x00000000,
-    0x001775f4, 0x00000000, 0x001775f8, 0x00000000, 0x001775fc, 0x00000000, 0x00177fd0, 0x0250607f, 0x00177fd8,
-    0x0253007a, 0x00177fe0, 0x0852087b, 0x00177fe8, 0x0851887c, 0x00177ff0, 0x085503fd, 0x00177ff8, 0x0854837e,
-};
diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
deleted file mode 100644
index 450226d2cc..0000000000
--- a/arch/arm/mach-netx/generic.c
+++ /dev/null
@@ -1,160 +0,0 @@
-/*
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-#include <command.h>
-#include <io.h>
-#include <restart.h>
-#include <mach/netx-regs.h>
-#include <mach/netx-xc.h>
-#include "eth_firmware.h"
-
-struct fw_header {
-	unsigned int magic;
-	unsigned int type;
-	unsigned int version;
-	unsigned int table_size;
-	unsigned int reserved[4];
-} __attribute__((packed));
-
-static int xc_check_ptr(int xcno, unsigned long adr, unsigned int size)
-{
-	if (adr >= NETX_PA_XMAC(xcno) &&
-	    adr + size < NETX_PA_XMAC(xcno) + XMAC_MEM_SIZE)
-		return 0;
-
-	if (adr >= NETX_PA_XPEC(xcno) &&
-	    adr + size < NETX_PA_XPEC(xcno) + XPEC_MEM_SIZE)
-		return 0;
-
-	printf("%s: illegal pointer 0x%08lx\n", __func__ ,adr);
-	return -1;
-}
-
-static int xc_patch(int xcno, const u32 *patch, int count)
-{
-	unsigned int adr, val;
-
-	int i;
-	for (i = 0; i < count; i++) {
-		adr = *patch++;
-		val = *patch++;
-		if (xc_check_ptr(xcno, adr, 1) < 0)
-			return -1;
-		writel(val, adr);
-	}
-	return 0;
-}
-
-static void memset32(void *s, int c, int n)
-{
-	int i;
-	u32 *t = s;
-
-	for (i = 0; i < (n >> 2); i++)
-		*t++ = 0;
-}
-
-static void memcpy32(void *trg, const void *src, int size)
-{
-	int i;
-	u32 *t = trg;
-	const u32 *s = src;
-	for (i = 0; i < (size >> 2); i++)
-		*t++ = *s++;
-}
-
-int loadxc(int xcno)
-{
-	/* stop xmac / xpec */
-	XMAC_REG(xcno, XMAC_RPU_HOLD_PC) = RPU_HOLD_PC;
-	XMAC_REG(xcno, XMAC_TPU_HOLD_PC) = TPU_HOLD_PC;
-	XPEC_REG(xcno, XPEC_XPU_HOLD_PC) = XPU_HOLD_PC;
-
-	XPEC_REG(xcno, XPEC_PC) = 0;
-
-	/* load firmware */
-	memset32((void*)NETX_PA_XPEC(xcno) + XPEC_RAM_START, 0, 0x2000);
-	memset32((void*)NETX_PA_XMAC(xcno), 0, 0x800);
-
-	/* can't use barebox memcpy here, we need 32bit accesses */
-	if (xcno == 0) {
-		memcpy32((void*)(NETX_PA_XMAC(xcno) + XMAC_RPU_PROGRAM_START), rpu_eth0, sizeof(rpu_eth0));
-		memcpy32((void*)(NETX_PA_XMAC(xcno) + XMAC_TPU_PROGRAM_START), tpu_eth0, sizeof(tpu_eth0));
-		memcpy32((void*)NETX_PA_XPEC(xcno) + XPEC_RAM_START, xpec_eth0_mac, sizeof(xpec_eth0_mac));
-		xc_patch(xcno, rpu_eth0_patch, ARRAY_SIZE(rpu_eth0_patch) >> 1);
-		xc_patch(xcno, tpu_eth0_patch, ARRAY_SIZE(tpu_eth0_patch) >> 1);
-		xc_patch(xcno, xpec_eth0_mac_patch, ARRAY_SIZE(xpec_eth0_mac_patch) >> 1);
-	} else {
-		memcpy32((void*)(NETX_PA_XMAC(xcno) + XMAC_RPU_PROGRAM_START), rpu_eth1, sizeof(rpu_eth1));
-		memcpy32((void*)(NETX_PA_XMAC(xcno) + XMAC_TPU_PROGRAM_START), tpu_eth1, sizeof(tpu_eth1));
-		memcpy32((void*)NETX_PA_XPEC(xcno) + XPEC_RAM_START, xpec_eth1_mac, sizeof(xpec_eth1_mac));
-		xc_patch(xcno, rpu_eth1_patch, ARRAY_SIZE(rpu_eth1_patch) >> 1);
-		xc_patch(xcno, tpu_eth1_patch, ARRAY_SIZE(tpu_eth1_patch) >> 1);
-		xc_patch(xcno, xpec_eth1_mac_patch, ARRAY_SIZE(xpec_eth1_mac_patch) >> 1);
-	}
-
-	/* start xmac / xpec */
-	XPEC_REG(xcno, XPEC_XPU_HOLD_PC) = 0;
-	XMAC_REG(xcno, XMAC_TPU_HOLD_PC) = 0;
-	XMAC_REG(xcno, XMAC_RPU_HOLD_PC) = 0;
-
-	return 0;
-}
-
-static int do_loadxc(int argc, char *argv[])
-{
-	int xcno;
-
-	if (argc < 2)
-		goto failure;
-
-	xcno = simple_strtoul(argv[1], NULL, 16);
-
-	printf("loading xc%d\n",xcno);
-
-	/* There is a bug in the netx internal firmware. For now we have to call this twice */
-	loadxc(xcno);
-	loadxc(xcno);
-
-	return 0;
-
-failure:
-	return COMMAND_ERROR_USAGE;
-}
-
-BAREBOX_CMD_START(loadxc)
-	.cmd		= do_loadxc,
-	BAREBOX_CMD_DESC("load XMAC/XPEC engine with ethernet firmware")
-	BAREBOX_CMD_GROUP(CMD_GRP_NET)
-BAREBOX_CMD_END
-
-static void __noreturn netx_restart_soc(struct restart_handler *rst)
-{
-	SYSTEM_REG(SYSTEM_RES_CR) = 0x01000008;
-
-	/* Not reached */
-	hang();
-}
-
-static int restart_register_feature(void)
-{
-	restart_handler_register_fn(netx_restart_soc);
-
-	return 0;
-}
-coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-netx/include/mach/netx-cm.h b/arch/arm/mach-netx/include/mach/netx-cm.h
deleted file mode 100644
index 37cf76d1f9..0000000000
--- a/arch/arm/mach-netx/include/mach/netx-cm.h
+++ /dev/null
@@ -1,32 +0,0 @@
-
-#ifndef __AT_CM_USERAREAS_H__
-#define __AT_CM_USERAREAS_H__
-
-int netx_cm_init(void);
-
-struct netx_cm_userarea_1 {
-        unsigned short signature;             /* configuration block signature */
-        unsigned short version;               /* version information */
-        unsigned short crc16;                 /* crc16 checksum over all 3 areas, including the reserved blocks */
-        unsigned char mac[4][6];              /* mac addresses */
-        unsigned char reserved[2];            /* reserved, must be 0 */
-};
-
-struct netx_cm_userarea_2 {
-        unsigned long sdram_size;              /* sdram size in bytes */
-        unsigned long sdram_control;           /* sdram control register value (sdram_general_ctrl) */
-        unsigned long sdram_timing;            /* sdram timing register value (sdram_timing_ctrl) */
-        unsigned char reserved0[20];           /* reserved, must be 0 */
-};
-
-struct netx_cm_userarea_3 {
-        unsigned char reserved[32];          /* reserved, must be 0 */
-};
-
-struct netx_cm_userarea {
-	struct netx_cm_userarea_1 area_1;
-	struct netx_cm_userarea_2 area_2;
-	struct netx_cm_userarea_3 area_3;
-};
-
-#endif  /* __AT_CM_USERAREAS_H__ */
diff --git a/arch/arm/mach-netx/include/mach/netx-eth.h b/arch/arm/mach-netx/include/mach/netx-eth.h
deleted file mode 100644
index 654cfe73d3..0000000000
--- a/arch/arm/mach-netx/include/mach/netx-eth.h
+++ /dev/null
@@ -1,9 +0,0 @@
-#ifndef _ASM_ARCH_NETX_ETH_H
-#define _ASM_ARCH_NETX_ETH_H
-
-struct netx_eth_platform_data {
-	int xcno;
-};
-
-#endif /* _ASM_ARCH_NETX_ETH_H */
-
diff --git a/arch/arm/mach-netx/include/mach/netx-regs.h b/arch/arm/mach-netx/include/mach/netx-regs.h
deleted file mode 100644
index c984eec274..0000000000
--- a/arch/arm/mach-netx/include/mach/netx-regs.h
+++ /dev/null
@@ -1,324 +0,0 @@
-/*
- * include/asm-arm/arch-netx/netx-regs.h
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __ASM_ARCH_NETX_REGS_H
-#define __ASM_ARCH_NETX_REGS_H
-
-#define NETX_SDRAM_BASE 0x80000000
-#define NETX_CS0_BASE 0xc0000000
-#define NETX_CS1_BASE 0xc8000000
-#define NETX_CS2_BASE 0xd0000000
-
-#define NETX_IO_PHYS 0x00100000
-#define io_p2v(x) (x)
-#define __REG(base,ofs)       (*((volatile unsigned long *)(io_p2v(base) + ofs)))
-
-#define XPEC_MEM_SIZE 0x4000
-#define XMAC_MEM_SIZE 0x1000
-#define SRAM_MEM_SIZE 0x8000
-
-/* offsets relative to the beginning of the io space */
-#define NETX_OFS_SYSTEM  0x00000
-#define NETX_OFS_MEMCR   0x00100
-#define NETX_OFS_DPRAM   0x03000
-#define NETX_OFS_GPIO    0x00800
-#define NETX_OFS_PIO     0x00900
-#define NETX_OFS_UART0   0x00a00
-#define NETX_OFS_UART1   0x00a40
-#define NETX_OFS_UART2   0x00a80
-#define NETX_OF_MIIMU    0x00b00
-#define NETX_OFS_SPI     0x00c00
-#define NETX_OFS_I2C     0x00d00
-#define NETX_OFS_SYSTIME 0x01100
-#define NETX_OFS_RTC     0x01200
-#define NETX_OFS_LCD     0x04000
-#define NETX_OFS_USB     0x20000
-#define NETX_OFS_XMAC0   0x60000
-#define NETX_OFS_XMAC1   0x61000
-#define NETX_OFS_XMAC2   0x62000
-#define NETX_OFS_XMAC3   0x63000
-#define NETX_OFS_XMAC(no) (0x60000 + (no) * 0x1000)
-#define NETX_OFS_PFIFO   0x64000
-#define NETX_OFS_XPEC0   0x70000
-#define NETX_OFS_XPEC1   0x74000
-#define NETX_OFS_XPEC2   0x78000
-#define NETX_OFS_XPEC3   0x7c000
-#define NETX_OFS_XPEC(no) (0x70000 + (no) * 0x4000)
-#define NETX_OFS_VIC     0xff000
-
-#define NETX_PA_SYSTEM  (NETX_IO_PHYS + NETX_OFS_SYSTEM)
-#define NETX_PA_MEMCR   (NETX_IO_PHYS + NETX_OFS_MEMCR)
-#define NETX_PA_DPMAS   (NETX_IO_PHYS + NETX_OFS_DPRAM)
-#define NETX_PA_GPIO    (NETX_IO_PHYS + NETX_OFS_GPIO)
-#define NETX_PA_PIO     (NETX_IO_PHYS + NETX_OFS_PIO)
-#define NETX_PA_UART0   (NETX_IO_PHYS + NETX_OFS_UART0)
-#define NETX_PA_UART1   (NETX_IO_PHYS + NETX_OFS_UART1)
-#define NETX_PA_UART2   (NETX_IO_PHYS + NETX_OFS_UART2)
-#define NETX_PA_MIIMU   (NETX_IO_PHYS + NETX_OF_MIIMU)
-#define NETX_PA_SPI     (NETX_IO_PHYS + NETX_OFS_SPI)
-#define NETX_PA_I2C     (NETX_IO_PHYS + NETX_OFS_I2C)
-#define NETX_PA_SYSTIME (NETX_IO_PHYS + NETX_OFS_SYSTIME)
-#define NETX_PA_RTC     (NETX_IO_PHYS + NETX_OFS_RTC)
-#define NETX_PA_LCD     (NETX_IO_PHYS + NETX_OFS_LCD)
-#define NETX_PA_USB     (NETX_IO_PHYS + NETX_OFS_USB)
-#define NETX_PA_XMAC0   (NETX_IO_PHYS + NETX_OFS_XMAC0)
-#define NETX_PA_XMAC1   (NETX_IO_PHYS + NETX_OFS_XMAC1)
-#define NETX_PA_XMAC2   (NETX_IO_PHYS + NETX_OFS_XMAC2)
-#define NETX_PA_XMAC3   (NETX_IO_PHYS + NETX_OFS_XMAC3)
-#define NETX_PA_XMAC(no) (NETX_IO_PHYS + NETX_OFS_XMAC(no))
-#define NETX_PA_PFIFO   (NETX_IO_PHYS + NETX_OFS_PFIFO)
-#define NETX_PA_XPEC0   (NETX_IO_PHYS + NETX_OFS_XPEC0)
-#define NETX_PA_XPEC1   (NETX_IO_PHYS + NETX_OFS_XPEC1)
-#define NETX_PA_XPEC2   (NETX_IO_PHYS + NETX_OFS_XPEC2)
-#define NETX_PA_XPEC3   (NETX_IO_PHYS + NETX_OFS_XPEC3)
-#define NETX_PA_XPEC(no) (NETX_IO_PHYS + NETX_OFS_XPEC(no))
-#define NETX_PA_VIC     (NETX_IO_PHYS + NETX_OFS_VIC)
-
-/*********************************
- * System functions              *
- *********************************/
-
-#define SYSTEM_REG(x)          __REG(NETX_PA_SYSTEM, (x))
-#define SYSTEM_BOO_SR          0x00
-#define SYSTEM_IOC_CR          0x04
-#define SYSTEM_IOC_MR          0x08
-#define SYSTEM_RES_CR          0x0c
-#define SYSTEM_PHY_CONTROL     0x10
-#define SYSTEM_REV             0x34
-#define SYSTEM_IOC_ACCESS_KEY  0x70
-#define SYSTEM_WDG_TR          0x200
-#define SYSTEM_WDG_CTR         0x204
-#define SYSTEM_WDG_IRQ_TIMEOUT 0x208
-#define SYSTEM_WDG_RES_TIMEOUT 0x20c
-
-#define PHY_CONTROL_RESET            (1<<31)
-#define PHY_CONTROL_SIM_BYP          (1<<30)
-#define PHY_CONTROL_CLK_XLATIN       (1<<29)
-#define PHY_CONTROL_PHY1_EN          (1<<21)
-#define PHY_CONTROL_PHY1_NP_MSG_CODE
-#define PHY_CONTROL_PHY1_AUTOMDIX    (1<<17)
-#define PHY_CONTROL_PHY1_FIXMODE     (1<<16)
-#define PHY_CONTROL_PHY1_MODE(mode)  (((mode) & 0x7) << 13)
-#define PHY_CONTROL_PHY0_EN          (1<<12)
-#define PHY_CONTROL_PHY0_NP_MSG_CODE
-#define PHY_CONTROL_PHY0_AUTOMDIX    (1<<8)
-#define PHY_CONTROL_PHY0_FIXMODE     (1<<7)
-#define PHY_CONTROL_PHY0_MODE(mode)  (((mode) & 0x7) << 4)
-#define PHY_CONTROL_PHY_ADDRESS(adr) ((adr) & 0xf)
-
-#define PHY_MODE_10BASE_T_HALF      0
-#define PHY_MODE_10BASE_T_FULL      1
-#define PHY_MODE_100BASE_TX_FX_FULL 2
-#define PHY_MODE_100BASE_TX_FX_HALF 3
-#define PHY_MODE_100BASE_TX_HALF    4
-#define PHY_MODE_REPEATER           5
-#define PHY_MODE_POWER_DOWN         6
-#define PHY_MODE_ALL                7
-
-/*********************************
- * Vector interrupt controller   *
- *********************************/
-
-/* Registers */
-#define VIC_REG(x)			__REG(NETX_PA_VIC, (x))
-#define VIC_IRQ_STATUS                  0x00
-#define VIC_FIQ_STATUS                  0x04
-#define VIC_IRQ_RAW_STATUS              0x08
-#define VIC_INT_SELECT                  0x0C    /* 1 = FIQ, 0 = IRQ */
-#define VIC_IRQ_ENABLE                  0x10    /* 1 = enable, 0 = disable */
-#define VIC_IRQ_ENABLE_CLEAR            0x14
-#define VIC_IRQ_SOFT                    0x18
-#define VIC_IRQ_SOFT_CLEAR              0x1C
-#define VIC_PROTECT                     0x20
-#define VIC_VECT_ADDR                   0x30
-#define VIC_DEF_VECT_ADDR               0x34
-#define VIC_VECT_ADDR0                  0x100   /* 0 to 15 */
-#define VIC_VECT_CNTL0                  0x200   /* 0 to 15 */
-#define VIC_ITCR                        0x300   /* VIC test control register */
-
-/* Bits */
-#define VECT_CNTL_ENABLE               (1 << 5)
-
-/*******************************
- * GPIO and timer module       *
- *******************************/
-
-/* Registers */
-#define GPIO_REG(x)                        __REG(NETX_PA_GPIO, (x))
-#define GPIO_CFG(gpio)                     (0x0  + ((gpio)<<2))
-#define GPIO_THRESHOLD_CAPTURE(gpio)       (0x40 + ((gpio)<<2))
-#define GPIO_COUNTER_CTRL(counter)         (0x80 + ((counter)<<2))
-#define GPIO_COUNTER_MAX(counter)          (0x94 + ((counter)<<2))
-#define GPIO_COUNTER_CURRENT(counter)      (0xa8 + ((counter)<<2))
-#define GPIO_IRQ_ENABLE                    (0xbc)
-#define GPIO_IRQ_DISABLE                   (0xc0)
-#define GPIO_SYSTIME_NS_CMP                (0xc4)
-#define GPIO_LINE                          (0xc8)
-#define GPIO_IRQ                           (0xd0)
-
-/* Bits */
-#define CFG_IOCFG_GP_INPUT (0x0)
-#define CFG_IOCFG_GP_OUTPUT (0x1)
-#define CFG_IOCFG_GP_UART   (0x2)
-#define CFG_INV (1<<2)
-#define CFG_MODE_INPUT_READ (0<<3)
-#define CFG_MODE_INPUT_CAPTURE_CONT_RISING (1<<3)
-#define CFG_MODE_INPUT_CAPTURE_ONCE_RISING (2<<3)
-#define CFG_MODE_INPUT_CAPTURE_HIGH_LEVEL  (3<<3)
-#define CFG_COUNT_REF_COUNTER0             (0<<5)
-#define CFG_COUNT_REF_COUNTER1             (1<<5)
-#define CFG_COUNT_REF_COUNTER2             (2<<5)
-#define CFG_COUNT_REF_COUNTER3             (3<<5)
-#define CFG_COUNT_REF_COUNTER4             (4<<5)
-#define CFG_COUNT_REF_SYSTIME              (7<<5)
-
-#define COUNTER_CTRL_RUN (1<<0)
-#define COUNTER_CTRL_SYM (1<<1)
-#define COUNTER_CTRL_ONCE (1<<2)
-#define COUNTER_CTRL_IRQ_EN (1<<3)
-#define COUNTER_CTRL_CNT_EVENT (1<<4)
-#define COUNTER_CTRL_RST_EN (1<<5)
-#define COUNTER_CTRL_SEL_EVENT (1<<6)
-#define COUNTER_CTRL_GPIO_REF /* FIXME */
-
-#define GPIO_BIT(gpio)                     (1<<(gpio))
-#define COUNTER_BIT(counter)               ((1<<16)<<(counter))
-
-/*******************************
- * PIO                         *
- *******************************/
-
-/* Registers */
-#define NETX_PIO_REG(ofs)        __REG(NETX_PA_PIO, ofs)
-#define NETX_PIO_INPIO       NETX_PIO_REG(0x0)
-#define NETX_PIO_OUTPIO      NETX_PIO_REG(0x4)
-#define NETX_PIO_OEPIO       NETX_PIO_REG(0x8)
-
-/*******************************
- * MII Unit                    *
- *******************************/
-#define MIIMU_REG                       __REG(NETX_PA_MIIMU, 0)
-/* Bits */
-#define MIIMU_SNRDY        (1<<0)
-#define MIIMU_PREAMBLE     (1<<1)
-#define MIIMU_OPMODE_WRITE (1<<2)
-#define MIIMU_MDC_PERIOD   (1<<3)
-#define MIIMU_PHY_NRES     (1<<4)
-#define MIIMU_RTA          (1<<5)
-#define MIIMU_REGADDR(adr) (((adr) & 0x1f) << 6)
-#define MIIMU_PHYADDR(adr) (((adr) & 0x1f) << 11)
-#define MIIMU_DATA(data)   (((data) & 0xffff) << 16)
-
-/*******************************
- * xmac / xpec                 *
- *******************************/
-#define XPEC_REG(no, reg)      __REG(NETX_PA_XPEC(no), (reg))
-#define XPEC_R0           0x00
-#define XPEC_R1           0x04
-#define XPEC_R2           0x08
-#define XPEC_R3           0x0c
-#define XPEC_R4           0x10
-#define XPEC_R5           0x14
-#define XPEC_R6           0x18
-#define XPEC_R7           0x1c
-#define XPEC_RANGE01      0x20
-#define XPEC_RANGE23      0x24
-#define XPEC_RANGE45      0x28
-#define XPEC_RANGE67      0x2c
-#define XPEC_PC           0x48
-#define XPEC_TIMER(timer) (0x30 + ((timer)<<2))
-#define XPEC_IRQ          0x8c
-#define XPEC_SYSTIME_NS   0x90
-#define XPEC_FIFO_DATA    0x94
-#define XPEC_SYSTIME_S    0x98
-#define XPEC_ADC          0x9c
-#define XPEC_URX_COUNT    0x40
-#define XPEC_UTX_COUNT    0x44
-#define XPEC_PC           0x48
-#define XPEC_ZERO         0x4c
-#define XPEC_STATCFG      0x50
-#define XPEC_EC_MASKA     0x54
-#define XPEC_EC_MASKB     0x58
-#define XPEC_EC_MASK0     0x5c
-#define XPEC_EC_MASK8     0x7c
-#define XPEC_EC_MASK9     0x80
-#define XPEC_XPU_HOLD_PC  0x100
-#define XPEC_RAM_START    0x2000
-
-#define XPU_HOLD_PC (1<<0)
-
-#define XMAC_REG(no, reg)      __REG(NETX_PA_XMAC(no), (reg))
-#define XMAC_RPU_PROGRAM_START 0x000
-#define XMAC_RPU_PROGRAM_END   0x3ff
-#define XMAC_TPU_PROGRAM_START 0x400
-#define XMAC_TPU_PROGRAM_END   0x7ff
-#define XMAC_RPU_HOLD_PC       0xa00
-#define XMAC_TPU_HOLD_PC       0xa04
-
-#define RPU_HOLD_PC            (1<<15)
-#define TPU_HOLD_PC            (1<<15)
-/*******************************
- * Pointer FIFO                *
- *******************************/
-#define PFIFO_REG(x)             __REG(NETX_PA_PFIFO, (x))
-#define PFIFO_BASE(pfifo)        (0x00 + ((pfifo)<<2) )
-#define PFIFO_BORDER_BASE(pfifo) (0x80 + ((pfifo)<<2) )
-#define PFIFO_RESET              0x100
-#define PFIFO_FULL               0x104
-#define PFIFO_EMPTY              0x108
-#define PFIFO_OVEFLOW            0x10c
-#define PFIFO_UNDERRUN           0x110
-#define PFIFO_FILL_LEVEL(pfifo)  (0x180 + ((pfifo)<<2))
-
-/*******************************
- * Dual Port Memory            *
- *******************************/
-
-/* Registers */
-#define NETX_DPMAS_REG(ofs)           __REG(NETX_PA_DPMAS, (ofs))
-#define NETX_DPMAS_IF_CONF0_REG           NETX_DPMAS_REG(0x608)
-#define NETX_DPMAS_IF_CONF1_REG           NETX_DPMAS_REG(0x60c)
-#define NETX_DPMAS_EXT_CONFIG0_REG        NETX_DPMAS_REG(0x610)
-#define NETX_DPMAS_EXT_CONFIG1_REG        NETX_DPMAS_REG(0x614)
-#define NETX_DPMAS_EXT_CONFIG2_REG        NETX_DPMAS_REG(0x618)
-#define NETX_DPMAS_EXT_CONFIG3_REG        NETX_DPMAS_REG(0x61c)
-#define NETX_DPMAS_IO_MODE0_REG           NETX_DPMAS_REG(0x620) /* I/O 32..63 */
-#define NETX_DPMAS_DRV_EN0_REG            NETX_DPMAS_REG(0x624)
-#define NETX_DPMAS_DATA0_REG              NETX_DPMAS_REG(0x628)
-#define NETX_DPMAS_IO_MODE1_REG           NETX_DPMAS_REG(0x630) /* I/O 64..84 */
-#define NETX_DPMAS_DRV_EN1_REG            NETX_DPMAS_REG(0x634)
-#define NETX_DPMAS_DATA1_REG              NETX_DPMAS_REG(0x638)
-
-/* Bits */
-#define IF_CONF0_HIF_DISABLED (0<<28)
-#define IF_CONF0_HIF_EXT_BUS  (1<<28)
-#define IF_CONF0_HIF_UP_8BIT  (2<<28)
-#define IF_CONF0_HIF_UP_16BIT (3<<28)
-#define IF_CONF0_HIF_IO       (4<<28)
-
-#define IO_MODE1_SAMPLE_NPOR   (0<<30)
-#define IO_MODE1_SAMPLE_100MHZ (1<<30)
-#define IO_MODE1_SAMPLE_NPIO36 (2<<30)
-#define IO_MODE1_SAMPLE_PIO36  (3<<30)
-
-/*******************************
- * I2C                         *
- *******************************/
-#define NETX_I2C_REG(ofs)	__REG(NETX_PA_I2C, (ofs))
-#define NETX_I2C_CTRL_REG	NETX_I2C_REG(0x0)
-#define NETX_I2C_DATA_REG	NETX_I2C_REG(0x4)
-
-#endif /* __ASM_ARCH_NETX_REGS_H */
diff --git a/arch/arm/mach-netx/include/mach/netx-xc.h b/arch/arm/mach-netx/include/mach/netx-xc.h
deleted file mode 100644
index 060a9b3b02..0000000000
--- a/arch/arm/mach-netx/include/mach/netx-xc.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef __ASM_ARCH_NETX_XC_H
-#define __ASM_ARCH_NETX_XC_H
-
-int loadxc(int);
-
-#endif
diff --git a/arch/arm/mach-netx/interrupts.c b/arch/arm/mach-netx/interrupts.c
deleted file mode 100644
index af78e19bfd..0000000000
--- a/arch/arm/mach-netx/interrupts.c
+++ /dev/null
@@ -1,70 +0,0 @@
-#include <common.h>
-
-#include <mach/netx-regs.h>
-
-int timer_init (void)
-{
-	/* disable timer initially */
-	GPIO_REG(GPIO_COUNTER_CTRL(0)) = 0;
-	/* Reset the timer value to zero */
-	GPIO_REG(GPIO_COUNTER_CURRENT(0)) = 0;
-	GPIO_REG(GPIO_COUNTER_MAX(0)) = 0xffffffff;
-	GPIO_REG(GPIO_COUNTER_CTRL(0)) = COUNTER_CTRL_RUN;
-
-	return 0;
-}
-
-/* current timestamp in ms */
-static unsigned long timestamp = 0;
-
-static unsigned long last_timer = 0;
-
-/* We can't detect overruns here since we don't know how often
- * we get called. The only thing we can do is to make sure that
- * time moves forward.
- */
-ulong get_timer (ulong start)
-{
-	unsigned long cur_timer = GPIO_REG(GPIO_COUNTER_CURRENT(0));
-	unsigned long time_inc;
-
-
-	if(cur_timer > last_timer)
-		time_inc = (cur_timer - last_timer) / 100000;
-	else
-		time_inc = ((0xffffffff - last_timer) + cur_timer) / 100000;
-
-	if(time_inc)
-		last_timer = cur_timer;
-
-	timestamp += time_inc;
-
-	return timestamp - start;
-}
-
-void mdelay(unsigned long msec)
-{
-	unsigned long now = get_timer(0);
-
-	while( get_timer(0) < now + msec );
-}
-
-void udelay(unsigned long usec)
-{
-	unsigned long start, end, msec = usec / 1000;
-
-	if(msec)
-		mdelay(msec);
-
-	usec -= msec * 1000;
-
-	start = GPIO_REG(GPIO_COUNTER_CURRENT(0));
-	end = start + usec * 100;
-
-	if(end < start) {
-		/* wait for overrun */
-		while( GPIO_REG(GPIO_COUNTER_CURRENT(0)) > start);
-	}
-
-	while( GPIO_REG(GPIO_COUNTER_CURRENT(0)) < end);
-}
diff --git a/arch/arm/mach-netx/lowlevel_init.S b/arch/arm/mach-netx/lowlevel_init.S
deleted file mode 100644
index 7990545665..0000000000
--- a/arch/arm/mach-netx/lowlevel_init.S
+++ /dev/null
@@ -1,3 +0,0 @@
-.globl lowlevel_init
-lowlevel_init:
-	mov	pc, lr
diff --git a/arch/arm/mach-netx/netx-cm.c b/arch/arm/mach-netx/netx-cm.c
deleted file mode 100644
index ebf9901d19..0000000000
--- a/arch/arm/mach-netx/netx-cm.c
+++ /dev/null
@@ -1,317 +0,0 @@
-#include <common.h>
-#include <mach/netx-regs.h>
-#include <mach/netx-cm.h>
-
-#define I2C_CTRL_ENABLE		(1<<0)
-#define I2C_CTRL_SPEED_25	(0<<1)
-#define I2C_CTRL_SPEED_50	(1<<1)
-#define I2C_CTRL_SPEED_100	(2<<1)
-#define I2C_CTRL_SPEED_200	(3<<1)
-#define I2C_CTRL_SPEED_400	(4<<1)
-#define I2C_CTRL_SPEED_600	(5<<1)
-#define I2C_CTRL_SPEED_800	(6<<1)
-#define I2C_CTRL_SPEED_1000	(7<<1)
-#define I2C_CTRL_SLAVEID(id)	(((id) & 0x7f) << 4)
-
-#define I2C_DATA_SEND_STOP	(1<<8)
-#define I2C_DATA_READ		(1<<9)
-#define I2C_DATA_SEND_START	(1<<10)
-#define I2C_DATA_BUSY		(1<<11)
-#define I2C_DATA_EXECUTE	(1<<11)
-#define I2C_DATA_RDF		(1<<12)
-
-/* INS */
-#define AT88_WRITE_USER_ZONE	0xb0
-#define AT88_READ_USER_ZONE	0xb2
-#define AT88_SYSTEM_WRITE	0xb4
-#define AT88_SYSTEM_READ	0xb6
-
-/* P1 */
-#define AT88_READ_CONFIG_ZONE	0x00
-#define AT88_SET_USER_ZONE	0x03
-#define SEND_START (1<<0)
-#define SEND_STOP  (1<<1)
-#define IGNORE_RDF (1<<2)
-
-#define MAX_USER_ZONE_SIZE 128
-
-/*
- *  netx i2c functions
- */
-static inline void i2c_set_slaveid(uchar id)
-{
-	unsigned int val;
-	val = NETX_I2C_CTRL_REG;
-	val &= 0xf;
-	val |= I2C_CTRL_SLAVEID(id);
-	NETX_I2C_CTRL_REG = val;
-}
-
-static inline uchar i2c_read_byte(int flags)
-{
-	unsigned int val = I2C_DATA_EXECUTE | I2C_DATA_READ;
-
-	if(flags & SEND_START)
-		val |= I2C_DATA_SEND_START;
-	if(flags & SEND_STOP)
-		val |= I2C_DATA_SEND_STOP;
-
-	NETX_I2C_DATA_REG = val;
-
-	while(NETX_I2C_DATA_REG & I2C_DATA_BUSY);
-
-	return NETX_I2C_DATA_REG & 0xff;
-}
-
-static inline void i2c_write_byte(uchar byte, int flags)
-{
-	unsigned int val = byte;
-
-	if(flags & SEND_START)
-		val |= I2C_DATA_SEND_START;
-	if(flags & SEND_STOP)
-		val |= I2C_DATA_SEND_STOP;
-	val |= I2C_DATA_EXECUTE;
-
-	NETX_I2C_DATA_REG = val;
-
-	while(NETX_I2C_DATA_REG & I2C_DATA_BUSY);
-}
-
-void i2c_init (int speed)
-{
-	unsigned int val;
-
-	switch(speed) {
-		case 25000:
-			val = I2C_CTRL_SPEED_25;
-			break;
-		case 50000:
-			val = I2C_CTRL_SPEED_50;
-			break;
-		case 100000:
-			val = I2C_CTRL_SPEED_100;
-			break;
-		case 200000:
-			val = I2C_CTRL_SPEED_200;
-			break;
-		case 400000:
-			val = I2C_CTRL_SPEED_400;
-			break;
-		case 600000:
-			val = I2C_CTRL_SPEED_600;
-			break;
-		case 800000:
-			val = I2C_CTRL_SPEED_800;
-			break;
-		case 1000000:
-			val = I2C_CTRL_SPEED_1000;
-			break;
-		default:
-			printf("unsupported speed %d. defaulting to 100kHz\n",speed);
-			val = I2C_CTRL_SPEED_100;
-			break;
-	}
-
-	NETX_I2C_CTRL_REG = val | I2C_CTRL_ENABLE;
-
-	i2c_write_byte(0xff, 0);
-
-	udelay(2000);
-}
-
-/*
- *  at88SCxxxx CryptoMemory functions
- */
-struct at88_parm {
-	char *name;
-	int zones;
-	int zone_size;
-	uchar atr[8];
-};
-
-struct at88_parm at88_parm_table[] = {
-	{ .name = "at88sc0104c", .zones =  4, .zone_size = 32,  .atr = { 0x3b, 0xb2, 0x11, 0x00, 0x10, 0x80, 0x00, 0x01 } },
-	{ .name = "at88sc0204c", .zones =  4, .zone_size = 64,  .atr = { 0x3b, 0xb2, 0x11, 0x00, 0x10, 0x80, 0x00, 0x02 } },
-	{ .name = "at88sc0404c", .zones =  4, .zone_size = 128, .atr = { 0x3b, 0xb2, 0x11, 0x00, 0x10, 0x80, 0x00, 0x04 } },
-	{ .name = "at88sc0808c", .zones =  8, .zone_size = 128, .atr = { 0x3b, 0xb2, 0x11, 0x00, 0x10, 0x80, 0x00, 0x08 } },
-	{ .name = "at88sc1616c", .zones = 16, .zone_size = 128, .atr = { 0x3b, 0xb2, 0x11, 0x00, 0x10, 0x80, 0x00, 0x16 } },
-};
-#define parm_size (sizeof(at88_parm_table) / sizeof(struct at88_parm))
-
-struct at88_parm *at88_parm = NULL;
-
-int set_user_zone(uchar zone)
-{
-	if(zone >= at88_parm->zones)
-		return -1;
-
-	i2c_set_slaveid(AT88_SYSTEM_WRITE >> 1);
-	i2c_write_byte(AT88_SET_USER_ZONE, SEND_START);
-	i2c_write_byte(zone, 0);
-	i2c_write_byte(8, SEND_STOP);
-
-	return 0;
-}
-
-/*
- *  We chose the easy way here and read/write whole zones at once
- */
-int read_user_zone(char *buf)
-{
-	int i;
-
-	i2c_set_slaveid(AT88_READ_USER_ZONE >> 1);
-	i2c_write_byte(0, SEND_START);
-	i2c_write_byte(0, 0);
-	i2c_write_byte(at88_parm->zone_size, 0);
-
-	for(i=0; i < at88_parm->zone_size; i++)
-		buf[i] = i2c_read_byte( i==at88_parm->zone_size - 1 ? SEND_STOP : 0);
-
-	return 0;
-}
-
-#define BLK_SIZE 16
-int write_user_zone(char *buf)
-{
-	int i,block;
-
-	for(block=0; block < at88_parm->zone_size/16; block++) {
-		i2c_set_slaveid(AT88_WRITE_USER_ZONE >> 1);
-		i2c_write_byte(0, SEND_START);
-		i2c_write_byte(block * BLK_SIZE, 0);
-		i2c_write_byte(BLK_SIZE, 0);
-
-		for(i=0; i<BLK_SIZE; i++)
-			i2c_write_byte( buf[block * BLK_SIZE + i], i == BLK_SIZE - 1 ? SEND_STOP : 0);
-
-		udelay(16000);
-	}
-
-	return 0;
-}
-
-struct netx_cm_userarea netx_cm_userarea;
-
-struct netx_cm_userarea* netx_cm_get_userarea(void)
-{
-	set_user_zone(1);
-	if( read_user_zone((char *)&netx_cm_userarea.area_1) )
-		return NULL;
-
-	set_user_zone(2);
-	if( read_user_zone((char *)&netx_cm_userarea.area_2) )
-		return NULL;
-
-	set_user_zone(3);
-	if( read_user_zone((char *)&netx_cm_userarea.area_2) )
-		return NULL;
-
-	return &netx_cm_userarea;
-}
-
-int netx_cm_write_userarea(struct netx_cm_userarea *area)
-{
-	set_user_zone(1);
-	if( write_user_zone( (char *)&area->area_1 ) )
-		return -1;
-
-	set_user_zone(2);
-	if( write_user_zone( (char *)&area->area_2 ) )
-		return -1;
-
-	set_user_zone(3);
-	if( write_user_zone( (char *)&area->area_2 ) )
-		return -1;
-	return 0;
-}
-
-
-unsigned short crc16(unsigned short crc, unsigned int data)
-{
-	crc  = (crc >> 8) | ((crc & 0xff) << 8);
-	crc ^= data;
-	crc ^= (crc & 0xff) >> 4;
-	crc ^= (crc & 0x0f) << 12;
-	crc ^= ((crc & 0xff) << 4) << 1;
-
-	return crc;
-}
-
-
-#define ETH_MAC_4321         0x1564
-#define ETH_MAC_65           0x1568
-
-int netx_cm_init(void)
-{
-	int i;
-	char buf[MAX_USER_ZONE_SIZE];
-	struct netx_cm_userarea *area;
-
-	i2c_init(100000);
-
-	i2c_set_slaveid(AT88_SYSTEM_READ >> 1);
-	i2c_write_byte(AT88_READ_CONFIG_ZONE, SEND_START);
-	i2c_write_byte(0, 0); /* adr */
-	i2c_write_byte(8, 0); /* len */
-
-	for(i=0;i<8;i++)
-		buf[i] = i2c_read_byte( i==7 ? SEND_STOP : 0 );
-
-	for(i=0; i<parm_size; i++) {
-		if(!memcmp(buf,at88_parm_table[i].atr,8)) {
-			at88_parm = &at88_parm_table[i];
-			break;
-		}
-	}
-
-	if(!at88_parm) {
-		printf("no crypto flash found\n");
-		debug("unrecognized atr: ");
-		for(i=0; i<8; i++)
-			debug("0x%02x ",buf[i]);
-		printf("\n");
-		return -1;
-	}
-
-	printf("%s crypto flash found\n",at88_parm->name);
-
-	area = netx_cm_get_userarea();
-
-	for(i=0;i<4;i++) {
-		printf("xc%d mac: %02x:%02x:%02x:%02x:%02x:%02x\n", i,
-			area->area_1.mac[i][0],
-			area->area_1.mac[i][1],
-			area->area_1.mac[i][2],
-			area->area_1.mac[i][3],
-			area->area_1.mac[i][4],
-			area->area_1.mac[i][5]);
-
-		XPEC_REG(i, XPEC_RAM_START + ETH_MAC_4321) =
-			area->area_1.mac[i][0] |
-			area->area_1.mac[i][1]<<8 |
-			area->area_1.mac[i][2]<<16 |
-			area->area_1.mac[i][3]<<24;
-
-		XPEC_REG(i, XPEC_RAM_START + ETH_MAC_65) =
-			area->area_1.mac[i][4] |
-			area->area_1.mac[i][5]<<8;
-	}
-
-	for(i=0; i<6; i++)
-		gd->bd->bi_enetaddr[i] = area->area_1.mac[CONFIG_DRIVER_NET_NETX_XCNO][i];
-
-
-	sprintf(buf, "%02x:%02x:%02x:%02x:%02x:%02x",
-			area->area_1.mac[CONFIG_DRIVER_NET_NETX_XCNO][0],
-			area->area_1.mac[CONFIG_DRIVER_NET_NETX_XCNO][1],
-			area->area_1.mac[CONFIG_DRIVER_NET_NETX_XCNO][2],
-			area->area_1.mac[CONFIG_DRIVER_NET_NETX_XCNO][3],
-			area->area_1.mac[CONFIG_DRIVER_NET_NETX_XCNO][4],
-			area->area_1.mac[CONFIG_DRIVER_NET_NETX_XCNO][5]);
-
-	setenv("ethaddr", buf);
-
-	return 0;
-}
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
