Delivery-date: Thu, 25 Apr 2024 13:56:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxib-00GfEU-0m
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 13:56:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxiR-0007MK-Jo
	for lore@pengutronix.de; Thu, 25 Apr 2024 13:56:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VoJVFXrEQOrAzomy2myogTcrZbO9s/ou8SiDsf7b60U=; b=Id7a6HlPSLI9vJ
	mV3yOB/oI29ixZAiNhYs1rg1wnYxaNwV7lRjdTyi+4ecZPwMm374Ly/8x+jsCFr+n0WYhC0dCnVaD
	7R/Ra313SWQE3DN2iQWL6AA5H6Q4kYev0rPyQOJCEo4TUKLMBUePw2cScpsoZaDSAF/LtR8vn3UCF
	O+JU4As97VgvHPI3YdwUBKJhOs/3IYiuiNi660RndRZR8940/bs6JrTqaT3zBNaHfoiIFts+bJsDE
	aRH81g+njFemrZJH6nfs7RlfBObBzAWWHhEfZJDMH4s9sRarUIt4P+b0YF6zIt1/9ZxiOzafDBQPf
	tvTZ4Ou/LHMTtWVrxibA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxhH-000000085Ya-0lHY;
	Thu, 25 Apr 2024 11:55:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxh6-000000085R7-2hGJ
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 11:55:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgZ-00062f-8j; Thu, 25 Apr 2024 13:54:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-00EFql-Bz; Thu, 25 Apr 2024 13:54:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-009aQk-0l;
	Thu, 25 Apr 2024 13:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:28 +0200
Message-Id: <20240425115439.2269239-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_045518_026086_D30E14EF 
X-CRM114-Status: GOOD (  17.68  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Jan Weitzel <j.weitzel@phytec.de>, Vicente Bergas <vicencb@gmail.com>, Bo Shen <voice.shen@atmel.com>, Matthias Kaehlcke <matthias@kaehlcke.net>, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/15] ARM: remove ep93xx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

None of the ep93xx boards supports PBL. PBL becomes mandatory, so remove
the boards and with it the now unused architecture.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                              |   7 -
 arch/arm/Makefile                             |   1 -
 arch/arm/boards/Makefile                      |   8 -
 arch/arm/boards/edb93xx/Makefile              |   4 -
 arch/arm/boards/edb93xx/early_udelay.h        |  15 -
 arch/arm/boards/edb93xx/edb93xx.c             | 121 ----
 arch/arm/boards/edb93xx/edb93xx.h             |  29 -
 arch/arm/boards/edb93xx/env/bin/boot          |  48 --
 .../boards/edb93xx/env/bin/flash_partition    |  22 -
 arch/arm/boards/edb93xx/env/bin/init          |  19 -
 arch/arm/boards/edb93xx/env/bin/set_nor_parts |   3 -
 arch/arm/boards/edb93xx/env/bin/update_kernel |  16 -
 arch/arm/boards/edb93xx/env/bin/update_rootfs |  16 -
 arch/arm/boards/edb93xx/env/config            |  16 -
 arch/arm/boards/edb93xx/flash_cfg.c           |  22 -
 arch/arm/boards/edb93xx/pll_cfg.c             |  41 --
 arch/arm/boards/edb93xx/pll_cfg.h             |  53 --
 arch/arm/boards/edb93xx/sdram_cfg.c           | 128 ----
 arch/arm/boards/edb93xx/sdram_cfg.h           | 125 ----
 arch/arm/configs/edb93xx_defconfig            |  32 -
 arch/arm/include/asm/barebox.lds.h            |   4 -
 arch/arm/include/asm/debug_ll.h               |   2 -
 arch/arm/include/asm/mach-types.h             |  96 ---
 arch/arm/mach-ep93xx/Kconfig                  | 411 ------------
 arch/arm/mach-ep93xx/Makefile                 |   5 -
 arch/arm/mach-ep93xx/clocksource.c            |  93 ---
 arch/arm/mach-ep93xx/gpio.c                   | 134 ----
 arch/arm/mach-ep93xx/header.c                 |  12 -
 arch/arm/mach-ep93xx/led.c                    |  57 --
 arch/arm/mach-ep93xx/led.h                    |  19 -
 arch/arm/mach-ep93xx/lowlevel_init.S          |  61 --
 include/mach/ep93xx/barebox.lds.h             |  10 -
 include/mach/ep93xx/ep93xx-regs.h             | 599 ------------------
 33 files changed, 2229 deletions(-)
 delete mode 100644 arch/arm/boards/edb93xx/Makefile
 delete mode 100644 arch/arm/boards/edb93xx/early_udelay.h
 delete mode 100644 arch/arm/boards/edb93xx/edb93xx.c
 delete mode 100644 arch/arm/boards/edb93xx/edb93xx.h
 delete mode 100644 arch/arm/boards/edb93xx/env/bin/boot
 delete mode 100644 arch/arm/boards/edb93xx/env/bin/flash_partition
 delete mode 100644 arch/arm/boards/edb93xx/env/bin/init
 delete mode 100644 arch/arm/boards/edb93xx/env/bin/set_nor_parts
 delete mode 100644 arch/arm/boards/edb93xx/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/edb93xx/env/bin/update_rootfs
 delete mode 100644 arch/arm/boards/edb93xx/env/config
 delete mode 100644 arch/arm/boards/edb93xx/flash_cfg.c
 delete mode 100644 arch/arm/boards/edb93xx/pll_cfg.c
 delete mode 100644 arch/arm/boards/edb93xx/pll_cfg.h
 delete mode 100644 arch/arm/boards/edb93xx/sdram_cfg.c
 delete mode 100644 arch/arm/boards/edb93xx/sdram_cfg.h
 delete mode 100644 arch/arm/configs/edb93xx_defconfig
 delete mode 100644 arch/arm/mach-ep93xx/Kconfig
 delete mode 100644 arch/arm/mach-ep93xx/Makefile
 delete mode 100644 arch/arm/mach-ep93xx/clocksource.c
 delete mode 100644 arch/arm/mach-ep93xx/gpio.c
 delete mode 100644 arch/arm/mach-ep93xx/header.c
 delete mode 100644 arch/arm/mach-ep93xx/led.c
 delete mode 100644 arch/arm/mach-ep93xx/led.h
 delete mode 100644 arch/arm/mach-ep93xx/lowlevel_init.S
 delete mode 100644 include/mach/ep93xx/barebox.lds.h
 delete mode 100644 include/mach/ep93xx/ep93xx-regs.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 0b4333db6a..837c7eb9f4 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -87,12 +87,6 @@ config ARCH_DIGIC
 	help
 	  Support for Canon's digital cameras that use the DIGIC4 chip.
 
-config ARCH_EP93XX
-	bool "Cirrus Logic EP93xx"
-	depends on 32BIT
-	select CPU_ARM920T
-	select GENERIC_GPIO
-
 config ARCH_MVEBU
 	bool "Marvell EBU platforms"
 	depends on 32BIT
@@ -292,7 +286,6 @@ source "arch/arm/mach-bcm283x/Kconfig"
 source "arch/arm/mach-clps711x/Kconfig"
 source "arch/arm/mach-davinci/Kconfig"
 source "arch/arm/mach-digic/Kconfig"
-source "arch/arm/mach-ep93xx/Kconfig"
 source "arch/arm/mach-imx/Kconfig"
 source "arch/arm/mach-layerscape/Kconfig"
 source "arch/arm/mach-mxs/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 1c8ec48988..a08be94687 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -87,7 +87,6 @@ machine-$(CONFIG_ARCH_BCM283X)		+= bcm283x
 machine-$(CONFIG_ARCH_CLPS711X)		+= clps711x
 machine-$(CONFIG_ARCH_DAVINCI)		+= davinci
 machine-$(CONFIG_ARCH_DIGIC)		+= digic
-machine-$(CONFIG_ARCH_EP93XX)		+= ep93xx
 machine-$(CONFIG_ARCH_IMX)		+= imx
 machine-$(CONFIG_ARCH_K3)		+= k3
 machine-$(CONFIG_ARCH_LAYERSCAPE)	+= layerscape
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index eb4e80d3e0..2e41865890 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -32,14 +32,6 @@ obj-$(CONFIG_MACH_DFI_FS700_M60)		+= dfi-fs700-m60/
 obj-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO)		+= digi-ccimx6ulsom/
 obj-$(CONFIG_MACH_DUCKBILL)			+= duckbill/
 obj-$(CONFIG_MACH_DSS11)			+= dss11/
-obj-$(CONFIG_MACH_EDB93012)			+= edb93xx/
-obj-$(CONFIG_MACH_EDB9301)			+= edb93xx/
-obj-$(CONFIG_MACH_EDB9302A)			+= edb93xx/
-obj-$(CONFIG_MACH_EDB9302)			+= edb93xx/
-obj-$(CONFIG_MACH_EDB9307A)			+= edb93xx/
-obj-$(CONFIG_MACH_EDB9307)			+= edb93xx/
-obj-$(CONFIG_MACH_EDB9315A)			+= edb93xx/
-obj-$(CONFIG_MACH_EDB9315)			+= edb93xx/
 obj-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		+= efika-mx-smartbook/
 obj-$(CONFIG_MACH_EMBEDSKY_E9)			+= embedsky-e9/
 obj-$(CONFIG_MACH_EMBEST_MARSBOARD)		+= embest-marsboard/
diff --git a/arch/arm/boards/edb93xx/Makefile b/arch/arm/boards/edb93xx/Makefile
deleted file mode 100644
index be969bde20..0000000000
--- a/arch/arm/boards/edb93xx/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += edb93xx.o
-lwl-y += flash_cfg.o pll_cfg.o sdram_cfg.o
diff --git a/arch/arm/boards/edb93xx/early_udelay.h b/arch/arm/boards/edb93xx/early_udelay.h
deleted file mode 100644
index b902c3bfb7..0000000000
--- a/arch/arm/boards/edb93xx/early_udelay.h
+++ /dev/null
@@ -1,15 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
-
-#include <common.h>
-
-/* delay execution before timers are initialized */
-static inline void early_udelay(uint32_t usecs)
-{
-	/* loop takes 4 cycles at 5.0ns (fastest case, running at 200MHz) */
-	register uint32_t loops = usecs * (1000 / 20);
-
-	__asm__ volatile ("1:\n"
-			"subs %0, %1, #1\n"
-			"bne 1b":"=r" (loops):"0" (loops));
-}
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
deleted file mode 100644
index a3fb14822a..0000000000
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ /dev/null
@@ -1,121 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
-
-#include <common.h>
-#include <driver.h>
-#include <environment.h>
-#include <fs.h>
-#include <init.h>
-#include <asm/armlinux.h>
-#include <io.h>
-#include <malloc.h>
-#include <asm/mach-types.h>
-#include <mach/ep93xx/ep93xx-regs.h>
-#include <platform_data/eth-ep93xx.h>
-#include "edb93xx.h"
-
-#define DEVCFG_U1EN (1 << 18)
-
-static struct ep93xx_eth_platform_data ep93xx_eth_info = {
-        .xcv_type = PHY_INTERFACE_MODE_MII,
-        .phy_addr = 1,
-};
-
-static int ep93xx_mem_init(void)
-{
-	arm_add_mem_device("ram0", CONFIG_EP93XX_SDRAM_BANK0_BASE,
-				   CONFIG_EP93XX_SDRAM_BANK0_SIZE);
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
-	arm_add_mem_device("ram1", CONFIG_EP93XX_SDRAM_BANK1_BASE,
-				   CONFIG_EP93XX_SDRAM_BANK1_SIZE);
-#endif
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
-	arm_add_mem_device("ram2", CONFIG_EP93XX_SDRAM_BANK2_BASE,
-				   CONFIG_EP93XX_SDRAM_BANK2_SIZE);
-#endif
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
-	arm_add_mem_device("ram3", CONFIG_EP93XX_SDRAM_BANK3_BASE,
-				   CONFIG_EP93XX_SDRAM_BANK3_SIZE);
-#endif
-
-	return 0;
-}
-mem_initcall(ep93xx_mem_init);
-
-static int ep93xx_devices_init(void)
-{
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0x60000000, EDB93XX_CFI_FLASH_SIZE, 0);
-
-	/*
-	 * Create partitions that should be
-	 * not touched by any regular user
-	 */
-	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
-
-	protect_file("/dev/env0", 1);
-
-	/*
-	 * Up to 32MiB NOR type flash, connected to
-	 * CS line 6, data width is 16 bit
-	 */
-	add_generic_device("ep93xx_eth", DEVICE_ID_DYNAMIC, NULL, 0, 0, IORESOURCE_MEM,
-			&ep93xx_eth_info);
-
-	armlinux_set_architecture(MACH_TYPE);
-
-	return 0;
-}
-
-device_initcall(ep93xx_devices_init);
-
-static int edb93xx_console_init(void)
-{
-	struct syscon_regs *syscon = (struct syscon_regs *)SYSCON_BASE;
-	char *shortname, *board;
-
-	/*
-	 * set UARTBAUD bit to drive UARTs with 14.7456MHz instead of
-	 * 14.7456/2 MHz
-	 */
-	uint32_t value = readl(&syscon->pwrcnt);
-	value |= SYSCON_PWRCNT_UART_BAUD;
-	writel(value, &syscon->pwrcnt);
-
-	/* Enable UART1 */
-	value = readl(&syscon->devicecfg);
-	value |= DEVCFG_U1EN;
-	writel(0xAA, &syscon->sysswlock);
-	writel(value, &syscon->devicecfg);
-
-	if (IS_ENABLED(CONFIG_MACH_EDB9301))
-		shortname = "EDB9301";
-	else if (IS_ENABLED(CONFIG_MACH_EDB9302))
-		shortname = "EDB9302";
-	else if (IS_ENABLED(CONFIG_MACH_EDB9302))
-		shortname = "EDB9302A";
-	else if (IS_ENABLED(CONFIG_MACH_EDB9307))
-		shortname = "EDB9307";
-	else if (IS_ENABLED(CONFIG_MACH_EDB9307A))
-		shortname = "EDB9307A";
-	else if (IS_ENABLED(CONFIG_MACH_EDB9312))
-		shortname = "EDB9312";
-	else if (IS_ENABLED(CONFIG_MACH_EDB9315))
-		shortname = "EDB9315";
-	else if (IS_ENABLED(CONFIG_MACH_EDB9315A))
-		shortname = "EDB9315A";
-	else
-		shortname = "unknown";
-
-	board = basprintf("Cirrus Logic %s", shortname);
-	barebox_set_model(board);
-	free(board);
-	barebox_set_hostname(shortname);
-
-	add_generic_device("pl010_serial", DEVICE_ID_DYNAMIC, NULL, UART1_BASE, 4096,
-			   IORESOURCE_MEM, NULL);
-
-	return 0;
-}
-
-console_initcall(edb93xx_console_init);
diff --git a/arch/arm/boards/edb93xx/edb93xx.h b/arch/arm/boards/edb93xx/edb93xx.h
deleted file mode 100644
index efbe87684e..0000000000
--- a/arch/arm/boards/edb93xx/edb93xx.h
+++ /dev/null
@@ -1,29 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
-
-#if defined(CONFIG_MACH_EDB9301)
-#define MACH_TYPE MACH_TYPE_EDB9301
-#elif defined(CONFIG_MACH_EDB9302)
-#define MACH_TYPE MACH_TYPE_EDB9302
-#elif defined(CONFIG_MACH_EDB9302A)
-#define MACH_TYPE MACH_TYPE_EDB9302A
-#elif defined(CONFIG_MACH_EDB9307)
-#define MACH_TYPE MACH_TYPE_EDB9307
-#elif defined(CONFIG_MACH_EDB9307A)
-#define MACH_TYPE MACH_TYPE_EDB9307A
-#elif defined(CONFIG_MACH_EDB9312)
-#define MACH_TYPE MACH_TYPE_EDB9312
-#elif defined(CONFIG_MACH_EDB9315)
-#define MACH_TYPE MACH_TYPE_EDB9315
-#elif defined(CONFIG_MACH_EDB9315A)
-#define MACH_TYPE MACH_TYPE_EDB9315A
-#endif
-
-#if defined(CONFIG_MACH_EDB9301) || defined(CONFIG_MACH_EDB9302) || \
-	defined(CONFIG_MACH_EDB9302A)
-#define EDB93XX_CFI_FLASH_SIZE (16 * 1024 * 1024)
-#elif defined(CONFIG_MACH_EDB9307) || defined(CONFIG_MACH_EDB9307A) || \
-	defined(CONFIG_MACH_EDB9312) || defined(CONFIG_MACH_EDB9315) ||	\
-	defined(CONFIG_MACH_EDB9315A)
-#define EDB93XX_CFI_FLASH_SIZE (32 * 1024 * 1024)
-#endif
diff --git a/arch/arm/boards/edb93xx/env/bin/boot b/arch/arm/boards/edb93xx/env/bin/boot
deleted file mode 100644
index 143f3d018d..0000000000
--- a/arch/arm/boards/edb93xx/env/bin/boot
+++ /dev/null
@@ -1,48 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-if [ x${rootfs_boot_media} = xflash ];
-then
-		rootfs_img=/dev/nor0.rootfs_${active_cfg}
-
-		if [ x${active_cfg} = x1 ];
-		then
-				rootfs_blkdev=/dev/mtdblock4
-				cfg_1_ro="ro"
-				cfg_2_ro=""
-		else
-				rootfs_blkdev=/dev/mtdblock6
-				cfg_1_ro=""
-				cfg_2_ro="ro"
-		fi
-
-		bootargs_rootfs="root=${rootfs_blkdev} rootfstype=squashfs ro"
-elif [ x${rootfs_boot_media} = xnet ];
-then
-		bootargs_rootfs="root=/dev/nfs nfsroot=${eth0.serverip}:/srv/nfs/${board},v3,nolock,tcp ip=${eth0.ipaddr}"
-else
-		echo "ERROR: \$rootfs_boot_media invalid: ${rootfs_boot_media}"
-		exit 1
-fi
-
-if [ x${kernel_boot_media} = xflash ];
-then
-		kernel_img=/dev/nor0.kernel_${active_cfg}
-elif [ x${kernel_boot_media} = xnet ];
-then
-		cd /
-		tftp ${board}/kernel.img || exit 1
-		kernel_img=/kernel.img
-else
-		echo "ERROR: \$kernel_boot_media invalid: ${kernel_boot_media}"
-		exit 1
-fi
-
-source /env/bin/set_nor_parts
-
-bootargs_mtd="mtdparts=physmap-flash.0:${nor_parts}"
-
-bootargs="${bootargs_common} ${bootargs_mtd} ${bootargs_rootfs}"
-
-bootm ${kernel_img}
\ No newline at end of file
diff --git a/arch/arm/boards/edb93xx/env/bin/flash_partition b/arch/arm/boards/edb93xx/env/bin/flash_partition
deleted file mode 100644
index ded40aa8a3..0000000000
--- a/arch/arm/boards/edb93xx/env/bin/flash_partition
+++ /dev/null
@@ -1,22 +0,0 @@
-#!/bin/sh
-
-if [ $# != 2 ];
-then
-				echo "Usage: $0 <image> <partition>"
-				exit 1
-fi
-
-image=$1
-partition=$2
-
-echo "Unlocking ${partition}"
-unprotect ${partition}
-
-echo "Erasing ${partition}"
-erase ${partition}
-
-echo "Flashing ${image} to ${partition}"
-cp ${image} ${partition}
-
-echo "Locking ${partition}"
-protect ${partition}
diff --git a/arch/arm/boards/edb93xx/env/bin/init b/arch/arm/boards/edb93xx/env/bin/init
deleted file mode 100644
index c6b5aed271..0000000000
--- a/arch/arm/boards/edb93xx/env/bin/init
+++ /dev/null
@@ -1,19 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-
-# add partitions to barebox
-. /env/bin/set_nor_parts
-addpart /dev/nor0 ${nor_parts}
-
-echo
-echo -n "Hit any key to stop autoboot: "
-timeout -a $autoboot_timeout
-if [ $? != 0 ]; then
-	exit
-fi
-
-boot
\ No newline at end of file
diff --git a/arch/arm/boards/edb93xx/env/bin/set_nor_parts b/arch/arm/boards/edb93xx/env/bin/set_nor_parts
deleted file mode 100644
index 38321fa8cc..0000000000
--- a/arch/arm/boards/edb93xx/env/bin/set_nor_parts
+++ /dev/null
@@ -1,3 +0,0 @@
-#!/bin/sh
-
-nor_parts="256k(barebox)ro,128k(env_boot),128k(env_boot.bak),1664k(kernel_1)${cfg_1_ro},6144k(rootfs_1)${cfg_1_ro},1664k(kernel_2)${cfg_2_ro},6144k(rootfs_2)${cfg_2_ro},128k(cfg_app),128k(cfg_app.bak)"
\ No newline at end of file
diff --git a/arch/arm/boards/edb93xx/env/bin/update_kernel b/arch/arm/boards/edb93xx/env/bin/update_kernel
deleted file mode 100644
index 3e4b9b0b8e..0000000000
--- a/arch/arm/boards/edb93xx/env/bin/update_kernel
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-if [ $# != 1 ];
-then
-				echo "Usage: $0 <1/2>"
-				exit 1
-fi
-
-partition=/dev/nor0.kernel_$1
-
-cd /
-tftp ${board}/kernel.img || exit 1
-
-flash_partition kernel.img ${partition}
diff --git a/arch/arm/boards/edb93xx/env/bin/update_rootfs b/arch/arm/boards/edb93xx/env/bin/update_rootfs
deleted file mode 100644
index 52a3699fd0..0000000000
--- a/arch/arm/boards/edb93xx/env/bin/update_rootfs
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-if [ $# != 1 ];
-then
-				echo "Usage: $0 <1/2>"
-				exit 1
-fi
-
-partition=/dev/nor0.rootfs_$1
-
-cd /
-tftp ${board}/rootfs.img || exit 1
-
-flash_partition rootfs.img ${partition}
diff --git a/arch/arm/boards/edb93xx/env/config b/arch/arm/boards/edb93xx/env/config
deleted file mode 100644
index 3266272742..0000000000
--- a/arch/arm/boards/edb93xx/env/config
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-
-eth0.ipaddr=192.168.0.50
-eth0.netmask=255.255.0.0
-eth0.serverip=192.168.0.8
-#eth0.ethaddr=
-
-board=edb9301
-autoboot_timeout=3
-active_cfg=1
-bootargs_common="console=ttyAM0,115200"
-
-# valid media: flash/net
-kernel_boot_media=flash
-rootfs_boot_media=flash
-
diff --git a/arch/arm/boards/edb93xx/flash_cfg.c b/arch/arm/boards/edb93xx/flash_cfg.c
deleted file mode 100644
index 2c471c7721..0000000000
--- a/arch/arm/boards/edb93xx/flash_cfg.c
+++ /dev/null
@@ -1,22 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
-
-/* Flash setup for Cirrus edb93xx boards */
-
-#include <common.h>
-#include <mach/ep93xx/ep93xx-regs.h>
-#include <io.h>
-
-#define SMC_BCR6_VALUE	(2 << SMC_BCR_IDCY_SHIFT | 5 << SMC_BCR_WST1_SHIFT | \
-				SMC_BCR_BLE | 2 << SMC_BCR_WST2_SHIFT | \
-				1 << SMC_BCR_MW_SHIFT)
-
-/* Called from assembly */
-void flash_cfg(void);
-
-void flash_cfg(void)
-{
-	struct smc_regs *smc = (struct smc_regs *)SMC_BASE;
-
-	writel(SMC_BCR6_VALUE, &smc->bcr6);
-}
diff --git a/arch/arm/boards/edb93xx/pll_cfg.c b/arch/arm/boards/edb93xx/pll_cfg.c
deleted file mode 100644
index 1a1c01aba2..0000000000
--- a/arch/arm/boards/edb93xx/pll_cfg.c
+++ /dev/null
@@ -1,41 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
-// SPDX-FileCopyrightText: 2006 Dominic Rath <Dominic.Rath@gmx.de>
-
-/* PLL setup for Cirrus edb93xx boards */
-
-#include <common.h>
-#include <io.h>
-#include "pll_cfg.h"
-#include "early_udelay.h"
-
-/* Called from assembly */
-void pll_cfg(void);
-
-void pll_cfg(void)
-{
-	struct syscon_regs *syscon = (struct syscon_regs *)SYSCON_BASE;
-
-	/* setup PLL1 */
-	writel(CLKSET1_VAL, &syscon->clkset1);
-
-	/*
-	 * flush the pipeline
-	 * writing to CLKSET1 causes the EP93xx to enter standby for between
-	 * 8 ms to 16 ms, until PLL1 stabilizes
-	 */
-	asm("nop");
-	asm("nop");
-	asm("nop");
-	asm("nop");
-	asm("nop");
-
-	/* setup PLL2 */
-	writel(CLKSET2_VAL, &syscon->clkset2);
-
-	/*
-	 * the user's guide recommends to wait at least 1 ms for PLL2 to
-	 * stabilize
-	 */
-	early_udelay(1000);
-}
diff --git a/arch/arm/boards/edb93xx/pll_cfg.h b/arch/arm/boards/edb93xx/pll_cfg.h
deleted file mode 100644
index 662c92337a..0000000000
--- a/arch/arm/boards/edb93xx/pll_cfg.h
+++ /dev/null
@@ -1,53 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
-
-/* PLL register values for Cirrus edb93xx boards */
-
-#include <config.h>
-#include <mach/ep93xx/ep93xx-regs.h>
-
-#if defined(CONFIG_MACH_EDB9301)
-/*
- * fclk_div: 2, nbyp1: 1, hclk_div: 5, pclk_div: 2
- * pll1_x1: 294912000.000000, pll1_x2ip: 36864000.000000,
- * pll1_x2: 331776000.000000, pll1_out: 331776000.000000
- */
-#define CLKSET1_VAL	(7 << SYSCON_CLKSET_PLL_X2IPD_SHIFT |      \
-			8 << SYSCON_CLKSET_PLL_X2FBD2_SHIFT |	   \
-			19 << SYSCON_CLKSET_PLL_X1FBD1_SHIFT |	   \
-			1 << SYSCON_CLKSET1_PCLK_DIV_SHIFT |	   \
-			3 << SYSCON_CLKSET1_HCLK_DIV_SHIFT |	   \
-			SYSCON_CLKSET1_NBYP1 |			   \
-			1 << SYSCON_CLKSET1_FCLK_DIV_SHIFT)
-#elif defined(CONFIG_MACH_EDB9302) || defined(CONFIG_MACH_EDB9302A) ||	\
-	defined(CONFIG_MACH_EDB9307) || defined(CONFIG_MACH_EDB9307A) || \
-	defined CONFIG_MACH_EDB9312 || defined(CONFIG_MACH_EDB9315) ||\
-	defined(CONFIG_MACH_EDB9315A)
-/*
- * fclk_div: 2, nbyp1: 1, hclk_div: 4, pclk_div: 2
- * pll1_x1: 3096576000.000000, pll1_x2ip: 129024000.000000,
- * pll1_x2: 3999744000.000000, pll1_out: 1999872000.000000
- */
-#define CLKSET1_VAL	(23 << SYSCON_CLKSET_PLL_X2IPD_SHIFT | \
-			30 << SYSCON_CLKSET_PLL_X2FBD2_SHIFT | \
-			20 << SYSCON_CLKSET_PLL_X1FBD1_SHIFT | \
-			1 << SYSCON_CLKSET1_PCLK_DIV_SHIFT |   \
-			2 << SYSCON_CLKSET1_HCLK_DIV_SHIFT |   \
-			SYSCON_CLKSET1_NBYP1 |		       \
-			1 << SYSCON_CLKSET1_FCLK_DIV_SHIFT)
-#else
-#error "Undefined board"
-#endif
-
-/*
- * usb_div: 4, nbyp2: 1, pll2_en: 1
- * pll2_x1: 368640000.000000, pll2_x2ip: 15360000.000000,
- * pll2_x2: 384000000.000000, pll2_out: 192000000.000000
- */
-#define CLKSET2_VAL	(23 << SYSCON_CLKSET_PLL_X2IPD_SHIFT | \
-			24 << SYSCON_CLKSET_PLL_X2FBD2_SHIFT | \
-			24 << SYSCON_CLKSET_PLL_X1FBD1_SHIFT | \
-			1 << SYSCON_CLKSET_PLL_PS_SHIFT |      \
-			SYSCON_CLKSET2_PLL2_EN |	       \
-			SYSCON_CLKSET2_NBYP2 |		       \
-			3 << SYSCON_CLKSET2_USB_DIV_SHIFT)
diff --git a/arch/arm/boards/edb93xx/sdram_cfg.c b/arch/arm/boards/edb93xx/sdram_cfg.c
deleted file mode 100644
index 3cee834910..0000000000
--- a/arch/arm/boards/edb93xx/sdram_cfg.c
+++ /dev/null
@@ -1,128 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
-// SPDX-FileCopyrightText: 2006 Dominic Rath <Dominic.Rath@gmx.de>
-
-#include <common.h>
-#include <io.h>
-#include "sdram_cfg.h"
-#include "early_udelay.h"
-
-#define PROGRAM_MODE_REG(bank)		(*(volatile uint32_t *)		\
-		(SDRAM_BASE_ADDR | SDRAM_BANK_SEL_##bank | SDRAM_MODE_REG_VAL))
-
-#define PRECHARGE_BANK(bank)		(*(volatile uint32_t *)	\
-		(SDRAM_BASE_ADDR | SDRAM_BANK_SEL_##bank)) = 0
-
-static void precharge_all_banks(void);
-static void setup_refresh_timer(void);
-static void program_mode_registers(void);
-
-/* Called from assembly */
-void sdram_cfg(void);
-
-void sdram_cfg(void)
-{
-	struct sdram_regs *sdram = (struct sdram_regs *)SDRAM_BASE;
-	unsigned long pc = get_pc();
-
-	if (pc < CONFIG_EP93XX_SDRAM_BANK3_BASE + CONFIG_EP93XX_SDRAM_BANK3_SIZE)
-		return;
-
-	writel(SDRAM_DEVCFG_VAL, &sdram->SDRAM_DEVCFG_REG);
-
-	/* Issue continous NOP commands */
-	writel(GLCONFIG_INIT | GLCONFIG_MRS | GLCONFIG_CKE, &sdram->glconfig);
-
-	early_udelay(200);
-
-	precharge_all_banks();
-
-	setup_refresh_timer();
-
-	program_mode_registers();
-
-	/* Select normal operation mode */
-	writel(GLCONFIG_CKE, &sdram->glconfig);
-}
-
-static void precharge_all_banks(void)
-{
-	struct sdram_regs *sdram = (struct sdram_regs *)SDRAM_BASE;
-
-	/* Issue PRECHARGE ALL commands */
-	writel(GLCONFIG_INIT | GLCONFIG_CKE, &sdram->glconfig);
-
-	/*
-	 * Errata of most EP93xx revisions say that PRECHARGE ALL isn't always
-	 * issued.
-	 *
-	 *  Cirrus proposes a workaround which consists in performing a read from
-	 * each bank to force the precharge. This causes some boards to hang.
-	 * Writing to the SDRAM banks instead of reading has the same
-	 * side-effect (the SDRAM controller issues the necessary precharges),
-	 * but is known to work on all supported boards
-	 */
-
-	PRECHARGE_BANK(0);
-
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
-	PRECHARGE_BANK(1);
-#endif
-
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
-	PRECHARGE_BANK(2);
-#endif
-
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
-	PRECHARGE_BANK(3);
-#endif
-}
-
-static void setup_refresh_timer(void)
-{
-	struct sdram_regs *sdram = (struct sdram_regs *)SDRAM_BASE;
-
-	/* Load refresh timer with 10 to issue refresh every 10 cycles */
-	writel(0x0a, &sdram->refrshtimr);
-
-	/*
-	 * Wait at least 80 clock cycles to provide 8 refresh cycles
-	 * to all SDRAMs
-	 */
-	early_udelay(1);
-
-	/*
-	 * Program refresh timer with normal value
-	 * We need 8192 refresh cycles every 64ms
-	 * at 15ns (HCLK >= 66MHz) per cycle:
-	 * 64ms / 8192 = 7.8125us
-	 * 7.8125us / 15ns = 520 (0x208)
-	 */
-	/*
-	 * TODO: redboot uses 0x1e0 for the slowest possible device
-	 * but i don't understand how this value is calculated
-	 */
-	writel(0x208, &sdram->refrshtimr);
-}
-
-static void program_mode_registers(void)
-{
-	struct sdram_regs *sdram = (struct sdram_regs *)SDRAM_BASE;
-
-	/* Select mode register update mode */
-	writel(GLCONFIG_MRS | GLCONFIG_CKE, &sdram->glconfig);
-
-	PROGRAM_MODE_REG(0);
-
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
-	PROGRAM_MODE_REG(1);
-#endif
-
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
-	PROGRAM_MODE_REG(2);
-#endif
-
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
-	PROGRAM_MODE_REG(3);
-#endif
-}
diff --git a/arch/arm/boards/edb93xx/sdram_cfg.h b/arch/arm/boards/edb93xx/sdram_cfg.h
deleted file mode 100644
index ddb9e442ed..0000000000
--- a/arch/arm/boards/edb93xx/sdram_cfg.h
+++ /dev/null
@@ -1,125 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
-// SPDX-FileCopyrightText: 2006 Dominic Rath <Dominic.Rath@gmx.de>
-
-#include <config.h>
-#include <mach/ep93xx/ep93xx-regs.h>
-
-#define SDRAM_BASE_ADDR		CONFIG_EP93XX_SDRAM_BANK0_BASE
-
-#ifdef CONFIG_EP93XX_SDCE0_PHYS_OFFSET
-#define SDRAM_DEVCFG_REG	devcfg0
-#elif defined(CONFIG_EP93XX_SDCE3_SYNC_PHYS_OFFSET)
-#define SDRAM_DEVCFG_REG	devcfg3
-#else
-#error "SDRAM bank configuration"
-#endif
-
-#if defined(CONFIG_MACH_EDB9301) || defined(CONFIG_MACH_EDB9302) ||\
-	defined(CONFIG_MACH_EDB9302A)
-/*
- * 1x Samsung K4S561632C-TC/L75 4M x 16bit x 4 banks SDRAM
- *
- * CLK cycle time min:
- *	@ CAS latency = 3: 7.5ns
- *	@ CAS latency = 2: 10ns
- * We're running at 66MHz (EDB9301) / 100Mhz (EDB9302(a)) external
- * bus speed (HCLK), with a cycle time of 15ns / 10ns, so it's safe
- * to use CAS latency = 2
- *
- * RAS-to-CAS delay min:
- *	20ns
- * At 15ns/10ns cycle time, we use RAS-to-CAS delay = 2
- *
- * SROMLL = 1: Swap BA[1:0] with A[13:12], making the SDRAM appear
- * as four blocks of 8MB size, instead of eight blocks of 4MB size:
- *
- * EDB9301/EDB9302:
- *
- * 0x00000000 - 0x007fffff
- * 0x01000000 - 0x017fffff
- * 0x04000000 - 0x047fffff
- * 0x05000000 - 0x057fffff
- *
- *
- * EDB9302a:
- *
- * 0xc0000000 - 0xc07fffff
- * 0xc1000000 - 0xc17fffff
- * 0xc4000000 - 0xc47fffff
- * 0xc5000000 - 0xc57fffff
- *
- * BANKCOUNT = 1: This is a device with four banks
- */
-
-#define SDRAM_DEVCFG_VAL (SDRAM_DEVCFG_BANKCOUNT |			\
-				SDRAM_DEVCFG_SROMLL |			\
-				SDRAM_DEVCFG_CASLAT_2 |			\
-				SDRAM_DEVCFG_RASTOCAS_2 |		\
-				SDRAM_DEVCFG_EXTBUSWIDTH)
-
-/*
- * 16 bit ext. bus
- *
- * A[22:09] is output as SYA[13:0]
- * CAS latency: 2
- * Burst type: sequential
- * Burst length: 8 (required for 16 bit ext. bus)
- * SYA[13:0] = 0x0023
- */
-#define SDRAM_MODE_REG_VAL	0x4600
-
-#define SDRAM_BANK_SEL_0	0x00000000 /* A[22:21] = b00 */
-#define SDRAM_BANK_SEL_1	0x00200000 /* A[22:21] = b01 */
-#define SDRAM_BANK_SEL_2	0x00400000 /* A[22:21] = b10 */
-#define SDRAM_BANK_SEL_3	0x00600000 /* A[22:21] = b11 */
-
-#elif defined(CONFIG_MACH_EDB9307) || defined(CONFIG_MACH_EDB9307A) ||\
-	defined CONFIG_MACH_EDB9312 || defined(CONFIG_MACH_EDB9315) ||\
-	defined(CONFIG_MACH_EDB9315A)
-/*
- * 2x Samsung K4S561632C-TC/L75 4M x 16bit x 4 banks SDRAM
- *
- * CLK cycle time min:
- *	@ CAS latency = 3: 7.5ns
- *	@ CAS latency = 2: 10ns
- * We're running at 100MHz (10ns cycle time) external bus speed (HCLK),
- * so it's safe to use CAS latency = 2
- *
- * RAS-to-CAS delay min:
- *	20ns
- * At 10ns cycle time, we use RAS-to-CAS delay = 2
- *
- * EDB9307, EDB9312, EDB9315:
- *
- * 0x00000000 - 0x01ffffff
- * 0x04000000 - 0x05ffffff
- *
- *
- * EDB9307a, EDB9315a:
- *
- * 0xc0000000 - 0xc1ffffff
- * 0xc4000000 - 0xc5ffffff
- */
-
-#define SDRAM_DEVCFG_VAL	(SDRAM_DEVCFG_BANKCOUNT |		\
-				SDRAM_DEVCFG_SROMLL |			\
-				SDRAM_DEVCFG_CASLAT_2 |			\
-				SDRAM_DEVCFG_RASTOCAS_2)
-
-/*
- * 32 bit ext. bus
- *
- * A[23:10] is output as SYA[13:0]
- * CAS latency: 2
- * Burst type: sequential
- * Burst length: 4
- * SYA[13:0] = 0x0022
- */
-#define SDRAM_MODE_REG_VAL	0x8800
-
-#define SDRAM_BANK_SEL_0	0x00000000 /* A[23:22] = b00 */
-#define SDRAM_BANK_SEL_1	0x00400000 /* A[23:22] = b01 */
-#define SDRAM_BANK_SEL_2	0x00800000 /* A[23:22] = b10 */
-#define SDRAM_BANK_SEL_3	0x00c00000 /* A[23:22] = b11 */
-#endif
diff --git a/arch/arm/configs/edb93xx_defconfig b/arch/arm/configs/edb93xx_defconfig
deleted file mode 100644
index 0632be1945..0000000000
--- a/arch/arm/configs/edb93xx_defconfig
+++ /dev/null
@@ -1,32 +0,0 @@
-CONFIG_ARCH_EP93XX=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/edb93xx/env"
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
-CONFIG_CMD_GPIO=y
-CONFIG_NET=y
-CONFIG_DRIVER_NET_EP93XX=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-CONFIG_FS_TFTP=y
diff --git a/arch/arm/include/asm/barebox.lds.h b/arch/arm/include/asm/barebox.lds.h
index a5c74381d8..72aabe155b 100644
--- a/arch/arm/include/asm/barebox.lds.h
+++ b/arch/arm/include/asm/barebox.lds.h
@@ -1,9 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#if defined CONFIG_ARCH_EP93XX
-#include <mach/ep93xx/barebox.lds.h>
-#endif
-
 #ifdef CONFIG_CPU_32
 #define BAREBOX_OUTPUT_FORMAT	"elf32-littlearm", "elf32-littlearm", "elf32-littlearm"
 #define BAREBOX_OUTPUT_ARCH	"arm"
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index ced81c1a8b..5fe1b0be91 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -54,8 +54,6 @@
 #include <mach/nomadik/debug_ll.h>
 #elif defined CONFIG_ARCH_MXS
 #include <mach/mxs/debug_ll.h>
-#elif defined CONFIG_ARCH_EP93XX
-#include <mach/ep93xx/debug_ll.h>
 #elif defined CONFIG_ARCH_DIGIC
 #include <mach/digic/debug_ll.h>
 #elif defined CONFIG_ARCH_CLPS711X
diff --git a/arch/arm/include/asm/mach-types.h b/arch/arm/include/asm/mach-types.h
index f16aeb88db..3b902aa021 100644
--- a/arch/arm/include/asm/mach-types.h
+++ b/arch/arm/include/asm/mach-types.h
@@ -137,42 +137,6 @@ extern unsigned int __machine_arch_type;
 # define machine_is_nomadik()	(0)
 #endif
 
-#ifdef CONFIG_MACH_EDB9312
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_EDB9312
-# endif
-# define machine_is_edb9312()	(machine_arch_type == MACH_TYPE_EDB9312)
-#else
-# define machine_is_edb9312()	(0)
-#endif
-
-#ifdef CONFIG_MACH_EDB9301
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_EDB9301
-# endif
-# define machine_is_edb9301()	(machine_arch_type == MACH_TYPE_EDB9301)
-#else
-# define machine_is_edb9301()	(0)
-#endif
-
-#ifdef CONFIG_MACH_EDB9315
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_EDB9315
-# endif
-# define machine_is_edb9315()	(machine_arch_type == MACH_TYPE_EDB9315)
-#else
-# define machine_is_edb9315()	(0)
-#endif
-
 #ifdef CONFIG_MACH_SCB9328
 # ifdef machine_arch_type
 #  undef machine_arch_type
@@ -185,30 +149,6 @@ extern unsigned int __machine_arch_type;
 # define machine_is_scb9328()	(0)
 #endif
 
-#ifdef CONFIG_MACH_EDB9302
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_EDB9302
-# endif
-# define machine_is_edb9302()	(machine_arch_type == MACH_TYPE_EDB9302)
-#else
-# define machine_is_edb9302()	(0)
-#endif
-
-#ifdef CONFIG_MACH_EDB9307
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_EDB9307
-# endif
-# define machine_is_edb9307()	(machine_arch_type == MACH_TYPE_EDB9307)
-#else
-# define machine_is_edb9307()	(0)
-#endif
-
 #ifdef CONFIG_MACH_AT91RM9200EK
 # ifdef machine_arch_type
 #  undef machine_arch_type
@@ -233,18 +173,6 @@ extern unsigned int __machine_arch_type;
 # define machine_is_pcm027()	(0)
 #endif
 
-#ifdef CONFIG_MACH_EDB9315A
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_EDB9315A
-# endif
-# define machine_is_edb9315a()	(machine_arch_type == MACH_TYPE_EDB9315A)
-#else
-# define machine_is_edb9315a()	(0)
-#endif
-
 #ifdef CONFIG_MACH_AT91SAM9261EK
 # ifdef machine_arch_type
 #  undef machine_arch_type
@@ -269,30 +197,6 @@ extern unsigned int __machine_arch_type;
 # define machine_is_at91sam9260ek()	(0)
 #endif
 
-#ifdef CONFIG_MACH_EDB9302A
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_EDB9302A
-# endif
-# define machine_is_edb9302a()	(machine_arch_type == MACH_TYPE_EDB9302A)
-#else
-# define machine_is_edb9302a()	(0)
-#endif
-
-#ifdef CONFIG_MACH_EDB9307A
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_EDB9307A
-# endif
-# define machine_is_edb9307a()	(machine_arch_type == MACH_TYPE_EDB9307A)
-#else
-# define machine_is_edb9307a()	(0)
-#endif
-
 #ifdef CONFIG_MACH_PM9261
 # ifdef machine_arch_type
 #  undef machine_arch_type
diff --git a/arch/arm/mach-ep93xx/Kconfig b/arch/arm/mach-ep93xx/Kconfig
deleted file mode 100644
index e39f1d8a9b..0000000000
--- a/arch/arm/mach-ep93xx/Kconfig
+++ /dev/null
@@ -1,411 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-if ARCH_EP93XX
-
-config EP93XX_SDCE0_PHYS_OFFSET
-	bool
-
-config EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	bool
-
-comment "Cirrus EP93xx System-on-Chip"
-
-choice
-	prompt "Cirrus Logic EP93XX Processor"
-
-config ARCH_EP9301
-	bool "EP9301"
-
-config ARCH_EP9302
-	bool "EP9302"
-
-config ARCH_EP9307
-	depends on BROKEN
-	bool "EP9307"
-
-config ARCH_EP9312
-	depends on BROKEN
-	bool "EP9312"
-
-config ARCH_EP9315
-	depends on BROKEN
-	bool "EP9315"
-
-endchoice
-
-# ----------------------------------------------------------
-
-if ARCH_EP9301
-
-choice
-	prompt "EP9301 Board Type"
-
-config MACH_EDB9301
-	bool "Cirrus Logic EDB9301"
-	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	help
-	  Say y here if you are using Cirrus Logic's EDB9301 Evaluation board
-
-endchoice
-
-if MACH_EDB9301
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x05700000
-
-config EP93XX_SDRAM_NUM_BANKS
-	int
-	default 4
-
-config EP93XX_SDRAM_BANK0_BASE
-	hex
-	default 0x00000000
-
-config EP93XX_SDRAM_BANK0_SIZE
-	hex
-	default 0x00800000
-
-config EP93XX_SDRAM_BANK1_BASE
-	hex
-	default 0x01000000
-
-config EP93XX_SDRAM_BANK1_SIZE
-	hex
-	default 0x00800000
-
-config EP93XX_SDRAM_BANK2_BASE
-	hex
-	default 0x04000000
-
-config EP93XX_SDRAM_BANK2_SIZE
-	hex
-	default 0x00800000
-
-config EP93XX_SDRAM_BANK3_BASE
-	hex
-	default 0x05000000
-
-config EP93XX_SDRAM_BANK3_SIZE
-	hex
-	default 0x00800000
-
-endif
-
-endif
-
-# ----------------------------------------------------------
-
-if ARCH_EP9302
-
-choice
-	prompt "EP9302 Board Type"
-
-config MACH_EDB9302
-	bool "Cirrus Logic EDB9302"
-	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	help
-	  Say y here if you are using Cirrus Logic's EDB9302 Evaluation board
-
-config MACH_EDB9302A
-	bool "Cirrus Logic EDB9302A"
-	select EP93XX_SDCE0_PHYS_OFFSET
-	help
-	  Say y here if you are using Cirrus Logic's EDB9302A Evaluation board
-
-endchoice
-
-if MACH_EDB9302
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x05700000
-
-config EP93XX_SDRAM_NUM_BANKS
-	int
-	default 4
-
-config EP93XX_SDRAM_BANK0_BASE
-	hex
-	default 0x00000000
-
-config EP93XX_SDRAM_BANK0_SIZE
-	hex
-	default 0x00800000
-
-config EP93XX_SDRAM_BANK1_BASE
-	hex
-	default 0x01000000
-
-config EP93XX_SDRAM_BANK1_SIZE
-	hex
-	default 0x00800000
-
-config EP93XX_SDRAM_BANK2_BASE
-	hex
-	default 0x04000000
-
-config EP93XX_SDRAM_BANK2_SIZE
-	hex
-	default 0x00800000
-
-config EP93XX_SDRAM_BANK3_BASE
-	hex
-	default 0x05000000
-
-config EP93XX_SDRAM_BANK3_SIZE
-	hex
-	default 0x00800000
-
-endif
-
-if MACH_EDB9302A
-
-config ARCH_TEXT_BASE
-	hex
-	default 0xc5700000
-
-config EP93XX_SDRAM_NUM_BANKS
-	int
-	default 4
-
-config EP93XX_SDRAM_BANK0_BASE
-	hex
-	default 0xc0000000
-
-config EP93XX_SDRAM_BANK0_SIZE
-	hex
-	default 0x00800000
-
-config EP93XX_SDRAM_BANK1_BASE
-	hex
-	default 0xc1000000
-
-config EP93XX_SDRAM_BANK1_SIZE
-	hex
-	default 0x00800000
-
-config EP93XX_SDRAM_BANK2_BASE
-	hex
-	default 0xc4000000
-
-config EP93XX_SDRAM_BANK2_SIZE
-	hex
-	default 0x00800000
-
-config EP93XX_SDRAM_BANK3_BASE
-	hex
-	default 0xc5000000
-
-config EP93XX_SDRAM_BANK3_SIZE
-	hex
-	default 0x00800000
-
-endif
-
-endif
-
-# ----------------------------------------------------------
-
-if ARCH_EP9307
-
-choice
-	prompt "EP9307 Board Type"
-
-config MACH_EDB9307
-	bool "Cirrus Logic EDB9307"
-	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	help
-	  Say y here if you are using Cirrus Logic's EDB9307 Evaluation board
-
-config MACH_EDB9307A
-	bool "Cirrus Logic EDB9307A"
-	select EP93XX_SDCE0_PHYS_OFFSET
-	help
-	  Say y here if you are using Cirrus Logic's EDB9307A Evaluation board
-
-endchoice
-
-if MACH_EDB9307
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x01f00000
-
-config EP93XX_SDRAM_NUM_BANKS
-	int
-	default 2
-
-config EP93XX_SDRAM_BANK0_BASE
-	hex
-	default 0x00000000
-
-config EP93XX_SDRAM_BANK0_SIZE
-	hex
-	default 0x02000000
-
-config EP93XX_SDRAM_BANK1_BASE
-	hex
-	default 0x04000000
-
-config EP93XX_SDRAM_BANK1_SIZE
-	hex
-	default 0x02000000
-
-endif
-
-if MACH_EDB9307A
-
-config ARCH_TEXT_BASE
-	hex
-	default 0xc1f00000
-
-config EP93XX_SDRAM_NUM_BANKS
-	int
-	default 2
-
-config EP93XX_SDRAM_BANK0_BASE
-	hex
-	default 0xc0000000
-
-config EP93XX_SDRAM_BANK0_SIZE
-	hex
-	default 0x02000000
-
-config EP93XX_SDRAM_BANK1_BASE
-	hex
-	default 0xc4000000
-
-config EP93XX_SDRAM_BANK1_SIZE
-	hex
-	default 0x02000000
-
-endif
-
-endif
-
-# ----------------------------------------------------------
-
-if ARCH_EP9312
-
-choice
-	prompt "EP9312 Board Type"
-
-config MACH_EDB9312
-	bool "Cirrus Logic EDB9312"
-	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	help
-	  Say y here if you are using Cirrus Logic's EDB9312 Evaluation board
-
-endchoice
-
-if MACH_EDB9312
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x01f00000
-
-config EP93XX_SDRAM_NUM_BANKS
-	int
-	default 2
-
-config EP93XX_SDRAM_BANK0_BASE
-	hex
-	default 0x00000000
-
-config EP93XX_SDRAM_BANK0_SIZE
-	hex
-	default 0x02000000
-
-config EP93XX_SDRAM_BANK1_BASE
-	hex
-	default 0x04000000
-
-config EP93XX_SDRAM_BANK1_SIZE
-	hex
-	default 0x02000000
-
-endif
-
-endif
-
-# ----------------------------------------------------------
-
-if ARCH_EP9315
-
-choice
-	prompt "EP9315 Board Type"
-
-config MACH_EDB9315
-	bool "Cirrus Logic EDB9315"
-	select EP93XX_SDCE3_SYNC_PHYS_OFFSET
-	help
-	  Say y here if you are using Cirrus Logic's EDB9315 Evaluation board
-
-config MACH_EDB9315A
-	bool "Cirrus Logic EDB9315A"
-	select EP93XX_SDCE0_PHYS_OFFSET
-	help
-	  Say y here if you are using Cirrus Logic's EDB9315A Evaluation board
-
-endchoice
-
-if MACH_EDB9315
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x01f00000
-
-config EP93XX_SDRAM_NUM_BANKS
-	int
-	default 2
-
-config EP93XX_SDRAM_BANK0_BASE
-	hex
-	default 0x00000000
-
-config EP93XX_SDRAM_BANK0_SIZE
-	hex
-	default 0x02000000
-
-config EP93XX_SDRAM_BANK1_BASE
-	hex
-	default 0x04000000
-
-config EP93XX_SDRAM_BANK1_SIZE
-	hex
-	default 0x02000000
-
-endif
-
-if MACH_EDB9315A
-
-config ARCH_TEXT_BASE
-	hex
-	default 0xc1f00000
-
-config EP93XX_SDRAM_NUM_BANKS
-	int
-	default 2
-
-config EP93XX_SDRAM_BANK0_BASE
-	hex
-	default 0xc0000000
-
-config EP93XX_SDRAM_BANK0_SIZE
-	hex
-	default 0x02000000
-
-config EP93XX_SDRAM_BANK1_BASE
-	hex
-	default 0xc4000000
-
-config EP93XX_SDRAM_BANK1_SIZE
-	hex
-	default 0x02000000
-
-endif
-
-endif
-
-endif
diff --git a/arch/arm/mach-ep93xx/Makefile b/arch/arm/mach-ep93xx/Makefile
deleted file mode 100644
index 80dbe7c42b..0000000000
--- a/arch/arm/mach-ep93xx/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += clocksource.o gpio.o header.o
-
-lwl-y += lowlevel_init.o led.o
diff --git a/arch/arm/mach-ep93xx/clocksource.c b/arch/arm/mach-ep93xx/clocksource.c
deleted file mode 100644
index 53aae437b3..0000000000
--- a/arch/arm/mach-ep93xx/clocksource.c
+++ /dev/null
@@ -1,93 +0,0 @@
-/*
- * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
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
-#include <io.h>
-#include <restart.h>
-#include <mach/ep93xx/ep93xx-regs.h>
-
-#define TIMER_CLKSEL		(1 << 3)
-#define TIMER_MODE		(1 << 6)
-#define TIMER_ENABLE		(1 << 7)
-
-#define TIMER_FREQ		508469
-
-static uint64_t ep93xx_clocksource_read(void)
-{
-	struct timer_regs *timer = (struct timer_regs *)TIMER_BASE;
-
-	return 0xffffffff - readl(&timer->timer3.value);
-}
-
-static struct clocksource cs = {
-	.read	= ep93xx_clocksource_read,
-	.mask	= CLOCKSOURCE_MASK(32),
-	.shift	= 10,
-	.priority = 80,
-};
-
-static int clocksource_init(void)
-{
-	struct timer_regs *timer = (struct timer_regs *)TIMER_BASE;
-
-	/* use timer 3 with 508KHz and free running */
-	writel(TIMER_CLKSEL,
-	       &timer->timer3.control);
-
-	/* load timer 3 with max value */
-	writel(0xffffffff, &timer->timer3.load);
-
-	/* enable timer 3 with 508KHz and periodic mode */
-	writel(TIMER_ENABLE | TIMER_MODE | TIMER_CLKSEL,
-	       &timer->timer3.control);
-
-	cs.mult = clocksource_hz2mult(TIMER_FREQ, cs.shift);
-
-	return init_clock(&cs);
-}
-
-core_initcall(clocksource_init);
-
-/* Reset the SoC */
-static void __noreturn ep92xx_restart_soc(struct restart_handler *rst)
-{
-	struct syscon_regs *syscon = (struct syscon_regs *)SYSCON_BASE;
-	uint32_t value;
-
-	/* Unlock DeviceCfg and set SWRST */
-	writel(0xAA, &syscon->sysswlock);
-	value = readl(&syscon->devicecfg);
-	value |= SYSCON_DEVICECFG_SWRST;
-	writel(value, &syscon->devicecfg);
-
-	/* Unlock DeviceCfg and clear SWRST */
-	writel(0xAA, &syscon->sysswlock);
-	value = readl(&syscon->devicecfg);
-	value &= ~SYSCON_DEVICECFG_SWRST;
-	writel(value, &syscon->devicecfg);
-
-	/* Dying... */
-	hang();
-}
-
-static int restart_register_feature(void)
-{
-	restart_handler_register_fn("soc", ep92xx_restart_soc);
-
-	return 0;
-}
-coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-ep93xx/gpio.c b/arch/arm/mach-ep93xx/gpio.c
deleted file mode 100644
index f30798fd4b..0000000000
--- a/arch/arm/mach-ep93xx/gpio.c
+++ /dev/null
@@ -1,134 +0,0 @@
-/*
- * Copyright (C) 2010 Matthias Kaehlcke <matthias@kaehlcke.net>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
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
-#include <errno.h>
-#include <init.h>
-#include <io.h>
-#include <gpio.h>
-#include <mach/ep93xx/ep93xx-regs.h>
-
-#define EP93XX_GPIO_NUM_PORTS	8
-#define EP93XX_GPIO_NUM_GPIOS	(EP93XX_GPIO_NUM_PORTS * 8)
-
-struct gpio_port {
-	uint32_t *dr;
-	uint32_t *ddr;
-};
-
-struct gpio_port gpio_ports[EP93XX_GPIO_NUM_PORTS];
-
-static int ep93xx_gpio_init(void)
-{
-	struct gpio_regs *gpio_regs = (struct gpio_regs *)GPIO_BASE;
-
-	gpio_ports[0].dr = &gpio_regs->padr;
-	gpio_ports[0].ddr = &gpio_regs->paddr;
-	gpio_ports[1].dr = &gpio_regs->pbdr;
-	gpio_ports[1].ddr = &gpio_regs->pbddr;
-	gpio_ports[2].dr = &gpio_regs->pcdr;
-	gpio_ports[2].ddr = &gpio_regs->pcddr;
-	gpio_ports[3].dr = &gpio_regs->pddr;
-	gpio_ports[3].ddr = &gpio_regs->pdddr;
-	gpio_ports[4].dr = &gpio_regs->pedr;
-	gpio_ports[4].ddr = &gpio_regs->peddr;
-	gpio_ports[5].dr = &gpio_regs->pfdr;
-	gpio_ports[5].ddr = &gpio_regs->pfddr;
-	gpio_ports[6].dr = &gpio_regs->pgdr;
-	gpio_ports[6].ddr = &gpio_regs->pgddr;
-	gpio_ports[7].dr = &gpio_regs->phdr;
-	gpio_ports[7].ddr = &gpio_regs->phddr;
-
-	return 0;
-}
-
-postcore_initcall(ep93xx_gpio_init);
-
-static struct gpio_port *gpio_get_port(unsigned gpio)
-{
-	if (gpio >= EP93XX_GPIO_NUM_GPIOS)
-		return 0;
-
-	return &gpio_ports[gpio / 8];
-}
-
-void gpio_set_value(unsigned gpio, int value)
-{
-	struct gpio_port *port = gpio_get_port(gpio);
-	const int shift = gpio % 8;
-	u32 val;
-
-	if (!port)
-		return;
-
-	val = readl(port->dr);
-
-	if (value)
-		val |= 1 << shift;
-	else
-		val &= ~(1 << shift);
-
-	writel(val, port->dr);
-}
-
-int gpio_direction_input(unsigned gpio)
-{
-	struct gpio_port *port = gpio_get_port(gpio);
-	const int shift = gpio % 8;
-	u32 val;
-
-	if (!port)
-		return -EINVAL;
-
-	val = readl(port->ddr);
-	val &= ~(1 << shift);
-	writel(val, port->ddr);
-
-	return 0;
-}
-
-int gpio_direction_output(unsigned gpio, int value)
-{
-	struct gpio_port *port = gpio_get_port(gpio);
-	const int shift = gpio % 8;
-	u32 val;
-
-	if (!port)
-		return -EINVAL;
-
-	gpio_set_value(gpio, value);
-
-	val = readl(port->ddr);
-	val |= 1 << shift;
-	writel(val, port->ddr);
-
-	return 0;
-}
-
-int gpio_get_value(unsigned gpio)
-{
-	struct gpio_port *port = gpio_get_port(gpio);
-	const int shift = gpio % 8;
-	u32 val;
-
-	if (!port)
-		return -EINVAL;
-
-	val = readl(port->dr);
-
-	return val & (1 << shift) ? 1 : 0;
-}
-
diff --git a/arch/arm/mach-ep93xx/header.c b/arch/arm/mach-ep93xx/header.c
deleted file mode 100644
index 0d7e68c34b..0000000000
--- a/arch/arm/mach-ep93xx/header.c
+++ /dev/null
@@ -1,12 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <linux/compiler.h>
-#include <asm/barebox-arm-head.h>
-
-void go(void);
-
-void __naked __section(.flash_header_start) go(void)
-{
-        barebox_arm_head();
-}
diff --git a/arch/arm/mach-ep93xx/led.c b/arch/arm/mach-ep93xx/led.c
deleted file mode 100644
index b2909fc070..0000000000
--- a/arch/arm/mach-ep93xx/led.c
+++ /dev/null
@@ -1,57 +0,0 @@
-/*
- * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
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
-#include <io.h>
-#include <mach/ep93xx/ep93xx-regs.h>
-
-#include "led.h"
-
-#define GREEN_LED_POS		0x01
-#define RED_LED_POS		0x02
-
-inline void switch_LED_on(uint32_t bit_pos)
-{
-	register struct gpio_regs *gpio = (struct gpio_regs *)GPIO_BASE;
-
-	writel(readl(&gpio->pedr) | bit_pos, &gpio->pedr);
-}
-
-inline void switch_LED_off(uint32_t bit_pos)
-{
-	register struct gpio_regs *gpio = (struct gpio_regs *)GPIO_BASE;
-
-	writel(readl(&gpio->pedr) & ~bit_pos, &gpio->pedr);
-}
-
-void red_LED_on(void)
-{
-	switch_LED_on(RED_LED_POS);
-}
-
-void red_LED_off(void)
-{
-	switch_LED_off(RED_LED_POS);
-}
-
-void green_LED_on(void)
-{
-	switch_LED_on(GREEN_LED_POS);
-}
-
-void green_LED_off(void)
-{
-	switch_LED_off(GREEN_LED_POS);
-}
diff --git a/arch/arm/mach-ep93xx/led.h b/arch/arm/mach-ep93xx/led.h
deleted file mode 100644
index 7ac907effa..0000000000
--- a/arch/arm/mach-ep93xx/led.h
+++ /dev/null
@@ -1,19 +0,0 @@
-/*
- * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
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
-extern void red_LED_on(void);
-extern void red_LED_off(void);
-extern void green_LED_on(void);
-extern void green_LED_off(void);
diff --git a/arch/arm/mach-ep93xx/lowlevel_init.S b/arch/arm/mach-ep93xx/lowlevel_init.S
deleted file mode 100644
index 5cc24a1cc0..0000000000
--- a/arch/arm/mach-ep93xx/lowlevel_init.S
+++ /dev/null
@@ -1,61 +0,0 @@
-/*
- * Low-level initialization for EP93xx
- *
- * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
- *
- * Copyright (C) 2006 Dominic Rath <Dominic.Rath@gmx.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
- *
- */
-
-#include <linux/sizes.h>
-#include <mach/ep93xx/ep93xx-regs.h>
-#include <asm/barebox-arm-head.h>
-
-.globl barebox_arm_reset_vector
-barebox_arm_reset_vector:
-	bl arm_cpu_lowlevel_init
-
-	/* Turn on both LEDs */
-	bl red_LED_on
-	bl green_LED_on
-
-	/* Configure flash wait states before we switch to the PLL */
-	bl flash_cfg
-
-	/* Set up PLL */
-	bl pll_cfg
-
-	/* Turn off the Green LED and leave the Red LED on */
-	bl green_LED_off
-
-	/* Setup SDRAM */
-	bl sdram_cfg
-
-	/* Turn on Green LED, Turn off the Red LED */
-	bl green_LED_on
-	bl red_LED_off
-
-	/* switch to async mode */
-	mrc p15, 0, r0, c1, c0, 0
-	orr r0, r0, #0xc0000000
-	mcr p15, 0, r0, c1, c0, 0
-
-	/*
-	 * FIXME: This is suitable for the edb9301, the
-	 * only ep93xx board we have in our defconfigs.
-	 * Other boards need different values here.
-	 */
-	mov	r0, #0x05000000
-	mov	r1, #SZ_8M
-	mov	r2, #0
-	b	barebox_arm_entry
diff --git a/include/mach/ep93xx/barebox.lds.h b/include/mach/ep93xx/barebox.lds.h
deleted file mode 100644
index 4e497f5e2d..0000000000
--- a/include/mach/ep93xx/barebox.lds.h
+++ /dev/null
@@ -1,10 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-/* the EP93xx expects to find the pattern 'CRUS' at 0x1000 */
-
-#define PRE_IMAGE				\
-	.pre_image : {				\
-		KEEP(*(.flash_header_start*))	\
-		. = 0x1000;			\
-		LONG(0x53555243) /* 'CRUS' */	\
-	}
diff --git a/include/mach/ep93xx/ep93xx-regs.h b/include/mach/ep93xx/ep93xx-regs.h
deleted file mode 100644
index f1d3076045..0000000000
--- a/include/mach/ep93xx/ep93xx-regs.h
+++ /dev/null
@@ -1,599 +0,0 @@
-/* -----------------------------------------------------------------------------
- * Cirrus Logic EP93xx register definitions.
- *
- * Copyright (C) 2009
- * Matthias Kaehlcke <matthias@kaehlcke.net>
- *
- * Copyright (C) 2006
- * Dominic Rath <Dominic.Rath@gmx.de>
- *
- * Copyright (C) 2004, 2005
- * Cory T. Tusar, Videon Central, Inc., <ctusar@videon-central.com>
- *
- * Based in large part on linux/include/asm-arm/arch-ep93xx/regmap.h, which is
- *
- * Copyright (C) 2004 Ray Lehtiniemi
- * Copyright (C) 2003 Cirrus Logic, Inc
- * Copyright (C) 1999 ARM Limited.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
- * or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU General Public License
- * for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 675 Mass Ave, Cambridge, MA 02139, USA.
- */
-
-#ifndef __ASSEMBLY__
-#include <linux/types.h>
-#endif
-
-#define EP93XX_AHB_BASE			0x80000000
-#define EP93XX_APB_BASE			0x80800000
-
-/* -----------------------------------------------------------------------------
- * 0x80000000 - 0x8000FFFF: DMA
- */
-#define DMA_OFFSET			0x000000
-#define DMA_BASE			(EP93XX_AHB_BASE | DMA_OFFSET)
-
-#ifndef __ASSEMBLY__
-struct dma_channel {
-	uint32_t control;
-	uint32_t interrupt;
-	uint32_t ppalloc;
-	uint32_t status;
-	uint32_t reserved0;
-	uint32_t remain;
-	uint32_t reserved1[2];
-	uint32_t maxcnt0;
-	uint32_t base0;
-	uint32_t current0;
-	uint32_t reserved2;
-	uint32_t maxcnt1;
-	uint32_t base1;
-	uint32_t current1;
-	uint32_t reserved3;
-};
-
-struct dma_regs {
-	struct dma_channel m2p_channel_0;
-	struct dma_channel m2p_channel_1;
-	struct dma_channel m2p_channel_2;
-	struct dma_channel m2p_channel_3;
-	struct dma_channel m2m_channel_0;
-	struct dma_channel m2m_channel_1;
-	struct dma_channel reserved0[2];
-	struct dma_channel m2p_channel_5;
-	struct dma_channel m2p_channel_4;
-	struct dma_channel m2p_channel_7;
-	struct dma_channel m2p_channel_6;
-	struct dma_channel m2p_channel_9;
-	struct dma_channel m2p_channel_8;
-	uint32_t channel_arbitration;
-	uint32_t reserved[15];
-	uint32_t global_interrupt;
-};
-#endif
-
-/* -----------------------------------------------------------------------------
- * 0x80010000 - 0x8001FFFF: Ethernet MAC
- */
-#define MAC_OFFSET			0x010000
-#define MAC_BASE			(EP93XX_AHB_BASE | MAC_OFFSET)
-
-#ifndef __ASSEMBLY__
-struct mac_queue {
-	uint32_t badd;
-	union { /* deal with half-word aligned registers */
-		uint32_t blen;
-		union {
-			uint16_t filler;
-			uint16_t curlen;
-		};
-	};
-	uint32_t curadd;
-};
-
-struct mac_regs {
-	uint32_t rxctl;
-	uint32_t txctl;
-	uint32_t testctl;
-	uint32_t reserved0;
-	uint32_t miicmd;
-	uint32_t miidata;
-	uint32_t miists;
-	uint32_t reserved1;
-	uint32_t selfctl;
-	uint32_t inten;
-	uint32_t intstsp;
-	uint32_t intstsc;
-	uint32_t reserved2[2];
-	uint32_t diagad;
-	uint32_t diagdata;
-	uint32_t gt;
-	uint32_t fct;
-	uint32_t fcf;
-	uint32_t afp;
-	union {
-		struct {
-			uint32_t indad;
-			uint32_t indad_upper;
-		};
-		uint32_t hashtbl;
-	};
-	uint32_t reserved3[2];
-	uint32_t giintsts;
-	uint32_t giintmsk;
-	uint32_t giintrosts;
-	uint32_t giintfrc;
-	uint32_t txcollcnt;
-	uint32_t rxmissnct;
-	uint32_t rxruntcnt;
-	uint32_t reserved4;
-	uint32_t bmctl;
-	uint32_t bmsts;
-	uint32_t rxbca;
-	uint32_t reserved5;
-	struct mac_queue rxdq;
-	uint32_t rxdqenq;
-	struct mac_queue rxstsq;
-	uint32_t rxstsqenq;
-	struct mac_queue txdq;
-	uint32_t txdqenq;
-	struct mac_queue txstsq;
-	uint32_t reserved6;
-	uint32_t rxbufthrshld;
-	uint32_t txbufthrshld;
-	uint32_t rxststhrshld;
-	uint32_t txststhrshld;
-	uint32_t rxdthrshld;
-	uint32_t txdthrshld;
-	uint32_t maxfrmlen;
-	uint32_t maxhdrlen;
-};
-#endif
-
-#define SELFCTL_RWP		(1 << 7)
-#define SELFCTL_GPO0		(1 << 5)
-#define SELFCTL_PUWE		(1 << 4)
-#define SELFCTL_PDWE		(1 << 3)
-#define SELFCTL_MIIL		(1 << 2)
-#define SELFCTL_RESET		(1 << 0)
-
-#define INTSTS_RWI		(1 << 30)
-#define INTSTS_RXMI		(1 << 29)
-#define INTSTS_RXBI		(1 << 28)
-#define INTSTS_RXSQI		(1 << 27)
-#define INTSTS_TXLEI		(1 << 26)
-#define INTSTS_ECIE		(1 << 25)
-#define INTSTS_TXUHI		(1 << 24)
-#define INTSTS_MOI		(1 << 18)
-#define INTSTS_TXCOI		(1 << 17)
-#define INTSTS_RXROI		(1 << 16)
-#define INTSTS_MIII		(1 << 12)
-#define INTSTS_PHYI		(1 << 11)
-#define INTSTS_TI		(1 << 10)
-#define INTSTS_AHBE		(1 << 8)
-#define INTSTS_OTHER		(1 << 4)
-#define INTSTS_TXSQ		(1 << 3)
-#define INTSTS_RXSQ		(1 << 2)
-
-#define BMCTL_MT		(1 << 13)
-#define BMCTL_TT		(1 << 12)
-#define BMCTL_UNH		(1 << 11)
-#define BMCTL_TXCHR		(1 << 10)
-#define BMCTL_TXDIS		(1 << 9)
-#define BMCTL_TXEN		(1 << 8)
-#define BMCTL_EH2		(1 << 6)
-#define BMCTL_EH1		(1 << 5)
-#define BMCTL_EEOB		(1 << 4)
-#define BMCTL_RXCHR		(1 << 2)
-#define BMCTL_RXDIS		(1 << 1)
-#define BMCTL_RXEN		(1 << 0)
-
-#define BMSTS_TXACT		(1 << 7)
-#define BMSTS_TP		(1 << 4)
-#define BMSTS_RXACT		(1 << 3)
-#define BMSTS_QID_MASK		0x07
-#define BMSTS_QID_RXDATA	0x00
-#define BMSTS_QID_TXDATA	0x01
-#define BMSTS_QID_RXSTS		0x02
-#define BMSTS_QID_TXSTS		0x03
-#define BMSTS_QID_RXDESC	0x04
-#define BMSTS_QID_TXDESC	0x05
-
-#define AFP_MASK		0x07
-#define AFP_IAPRIMARY		0x00
-#define AFP_IASECONDARY1	0x01
-#define AFP_IASECONDARY2	0x02
-#define AFP_IASECONDARY3	0x03
-#define AFP_TX			0x06
-#define AFP_HASH		0x07
-
-#define RXCTL_PAUSEA		(1 << 20)
-#define RXCTL_RXFCE1		(1 << 19)
-#define RXCTL_RXFCE0		(1 << 18)
-#define RXCTL_BCRC		(1 << 17)
-#define RXCTL_SRXON		(1 << 16)
-#define RXCTL_RCRCA		(1 << 13)
-#define RXCTL_RA		(1 << 12)
-#define RXCTL_PA		(1 << 11)
-#define RXCTL_BA		(1 << 10)
-#define RXCTL_MA		(1 << 9)
-#define RXCTL_IAHA		(1 << 8)
-#define RXCTL_IA3		(1 << 3)
-#define RXCTL_IA2		(1 << 2)
-#define RXCTL_IA1		(1 << 1)
-#define RXCTL_IA0		(1 << 0)
-
-#define TXCTL_DEFDIS		(1 << 7)
-#define TXCTL_MBE		(1 << 6)
-#define TXCTL_ICRC		(1 << 5)
-#define TXCTL_TPD		(1 << 4)
-#define TXCTL_OCOLL		(1 << 3)
-#define TXCTL_SP		(1 << 2)
-#define TXCTL_PB		(1 << 1)
-#define TXCTL_STXON		(1 << 0)
-
-#define MIICMD_REGAD_MASK	(0x001F)
-#define MIICMD_PHYAD_MASK	(0x03E0)
-#define MIICMD_OPCODE_MASK	(0xC000)
-#define MIICMD_PHYAD_8950	(0x0000)
-#define MIICMD_OPCODE_READ	(0x8000)
-#define MIICMD_OPCODE_WRITE	(0x4000)
-
-#define MIISTS_BUSY		(1 << 0)
-
-/* -----------------------------------------------------------------------------
- * 0x80020000 - 0x8002FFFF: USB OHCI
- */
-#define USB_OFFSET			0x020000
-#define USB_BASE			(EP93XX_AHB_BASE | USB_OFFSET)
-
-/* -----------------------------------------------------------------------------
- * 0x80030000 - 0x8003FFFF: Raster engine
- */
-#if (defined(CONFIG_EP9307) || defined(CONFIG_EP9312) || defined(CONFIG_EP9315))
-#define RASTER_OFFSET			0x030000
-#define RASTER_BASE			(EP93XX_AHB_BASE | RASTER_OFFSET)
-#endif
-
-/* -----------------------------------------------------------------------------
- * 0x80040000 - 0x8004FFFF: Graphics accelerator
- */
-#if defined(CONFIG_EP9315)
-#define GFX_OFFSET			0x040000
-#define GFX_BASE			(EP93XX_AHB_BASE | GFX_OFFSET)
-#endif
-
-/* -----------------------------------------------------------------------------
- * 0x80050000 - 0x8005FFFF: Reserved
- */
-
-/* -----------------------------------------------------------------------------
- * 0x80060000 - 0x8006FFFF: SDRAM controller
- */
-#define SDRAM_OFFSET			0x060000
-#define SDRAM_BASE			(EP93XX_AHB_BASE | SDRAM_OFFSET)
-
-#ifndef __ASSEMBLY__
-struct sdram_regs {
-	uint32_t reserved;
-	uint32_t glconfig;
-	uint32_t refrshtimr;
-	uint32_t bootsts;
-	uint32_t devcfg0;
-	uint32_t devcfg1;
-	uint32_t devcfg2;
-	uint32_t devcfg3;
-};
-#endif
-
-#define SDRAM_DEVCFG_EXTBUSWIDTH	(1 << 2)
-#define SDRAM_DEVCFG_BANKCOUNT		(1 << 3)
-#define SDRAM_DEVCFG_SROMLL		(1 << 5)
-#define SDRAM_DEVCFG_CASLAT_2		0x00010000
-#define SDRAM_DEVCFG_RASTOCAS_2		0x00200000
-
-#define GLCONFIG_INIT			(1 << 0)
-#define GLCONFIG_MRS			(1 << 1)
-#define GLCONFIG_SMEMBUSY		(1 << 5)
-#define GLCONFIG_LCR			(1 << 6)
-#define GLCONFIG_REARBEN		(1 << 7)
-#define GLCONFIG_CLKSHUTDOWN		(1 << 30)
-#define GLCONFIG_CKE			(1 << 31)
-
-/* -----------------------------------------------------------------------------
- * 0x80070000 - 0x8007FFFF: Reserved
- */
-
-/* -----------------------------------------------------------------------------
- * 0x80080000 - 0x8008FFFF: SRAM controller & PCMCIA
- */
-#define SMC_OFFSET			0x080000
-#define SMC_BASE			(EP93XX_AHB_BASE | SMC_OFFSET)
-
-#ifndef __ASSEMBLY__
-struct smc_regs {
-	uint32_t bcr0;
-	uint32_t bcr1;
-	uint32_t bcr2;
-	uint32_t bcr3;
-	uint32_t reserved0[2];
-	uint32_t bcr6;
-	uint32_t bcr7;
-#if defined(CONFIG_EP9315)
-	uint32_t pcattribute;
-	uint32_t pccommon;
-	uint32_t pcio;
-	uint32_t reserved1[5];
-	uint32_t pcmciactrl;
-#endif
-};
-#endif
-
-#define SMC_BCR_IDCY_SHIFT	0
-#define SMC_BCR_WST1_SHIFT	5
-#define SMC_BCR_BLE		(1 << 10)
-#define SMC_BCR_WST2_SHIFT	11
-#define SMC_BCR_MW_SHIFT	28
-
-/* -----------------------------------------------------------------------------
- * 0x80090000 - 0x8009FFFF: Boot ROM
- */
-
-/* -----------------------------------------------------------------------------
- * 0x800A0000 - 0x800AFFFF: IDE interface
- */
-
-/* -----------------------------------------------------------------------------
- * 0x800B0000 - 0x800BFFFF: VIC1
- */
-
-/* -----------------------------------------------------------------------------
- * 0x800C0000 - 0x800CFFFF: VIC2
- */
-
-/* -----------------------------------------------------------------------------
- * 0x800D0000 - 0x800FFFFF: Reserved
- */
-
-/* -----------------------------------------------------------------------------
- * 0x80800000 - 0x8080FFFF: Reserved
- */
-
-/* -----------------------------------------------------------------------------
- * 0x80810000 - 0x8081FFFF: Timers
- */
-#define TIMER_OFFSET		0x010000
-#define TIMER_BASE		(EP93XX_APB_BASE | TIMER_OFFSET)
-
-#ifndef __ASSEMBLY__
-struct timer {
-	uint32_t load;
-	uint32_t value;
-	uint32_t control;
-	uint32_t clear;
-};
-
-struct timer4 {
-	uint32_t value_low;
-	uint32_t value_high;
-};
-
-struct timer_regs {
-	struct timer timer1;
-	uint32_t reserved0[4];
-	struct timer timer2;
-	uint32_t reserved1[12];
-	struct timer4 timer4;
-	uint32_t reserved2[6];
-	struct timer timer3;
-};
-#endif
-
-/* -----------------------------------------------------------------------------
- * 0x80820000 - 0x8082FFFF: I2S
- */
-#define I2S_OFFSET		0x020000
-#define I2S_BASE		(EP93XX_APB_BASE | I2S_OFFSET)
-
-/* -----------------------------------------------------------------------------
- * 0x80830000 - 0x8083FFFF: Security
- */
-#define SECURITY_OFFSET		0x030000
-#define SECURITY_BASE		(EP93XX_APB_BASE | SECURITY_OFFSET)
-
-#define EXTENSIONID		(SECURITY_BASE + 0x2714)
-
-/* -----------------------------------------------------------------------------
- * 0x80840000 - 0x8084FFFF: GPIO
- */
-#define GPIO_OFFSET		0x040000
-#define GPIO_BASE		(EP93XX_APB_BASE | GPIO_OFFSET)
-
-#ifndef __ASSEMBLY__
-struct gpio_int {
-	uint32_t inttype1;
-	uint32_t inttype2;
-	uint32_t eoi;
-	uint32_t inten;
-	uint32_t intsts;
-	uint32_t rawintsts;
-	uint32_t db;
-};
-
-struct gpio_regs {
-	uint32_t padr;
-	uint32_t pbdr;
-	uint32_t pcdr;
-	uint32_t pddr;
-	uint32_t paddr;
-	uint32_t pbddr;
-	uint32_t pcddr;
-	uint32_t pdddr;
-	uint32_t pedr;
-	uint32_t peddr;
-	uint32_t reserved0[2];
-	uint32_t pfdr;
-	uint32_t pfddr;
-	uint32_t pgdr;
-	uint32_t pgddr;
-	uint32_t phdr;
-	uint32_t phddr;
-	uint32_t reserved1;
-	uint32_t finttype1;
-	uint32_t finttype2;
-	uint32_t reserved2;
-	struct gpio_int pfint;
-	uint32_t reserved3[10];
-	struct gpio_int paint;
-	struct gpio_int pbint;
-	uint32_t eedrive;
-};
-#endif
-
-/* -----------------------------------------------------------------------------
- * 0x80850000 - 0x8087FFFF: Reserved
- */
-
-/* -----------------------------------------------------------------------------
- * 0x80880000 - 0x8088FFFF: AAC
- */
-#define AAC_OFFSET		0x080000
-#define AAC_BASE		(EP93XX_APB_BASE | AAC_OFFSET)
-
-/* -----------------------------------------------------------------------------
- * 0x80890000 - 0x8089FFFF: Reserved
- */
-
-/* -----------------------------------------------------------------------------
- * 0x808A0000 - 0x808AFFFF: SPI
- */
-#define SPI_OFFSET		0x0A0000
-#define SPI_BASE		(EP93XX_APB_BASE | SPI_OFFSET)
-
-/* -----------------------------------------------------------------------------
- * 0x808B0000 - 0x808BFFFF: IrDA
- */
-#define IRDA_OFFSET		0x0B0000
-#define IRDA_BASE		(EP93XX_APB_BASE | IRDA_OFFSET)
-
-/* -----------------------------------------------------------------------------
- * 0x808C0000 - 0x808CFFFF: UART1
- */
-#define UART1_OFFSET		0x0C0000
-#define UART1_BASE		(EP93XX_APB_BASE | UART1_OFFSET)
-
-/* -----------------------------------------------------------------------------
- * 0x808D0000 - 0x808DFFFF: UART2
- */
-#define UART2_OFFSET		0x0D0000
-#define UART2_BASE		(EP93XX_APB_BASE | UART2_OFFSET)
-
-/* -----------------------------------------------------------------------------
- * 0x808E0000 - 0x808EFFFF: UART3
- */
-#define UART3_OFFSET		0x0E0000
-#define UART3_BASE		(EP93XX_APB_BASE | UART3_OFFSET)
-
-/* -----------------------------------------------------------------------------
- * 0x808F0000 - 0x808FFFFF: Key Matrix
- */
-#define KEY_OFFSET		0x0F0000
-#define KEY_BASE		(EP93XX_APB_BASE | KEY_OFFSET)
-
-/* -----------------------------------------------------------------------------
- * 0x80900000 - 0x8090FFFF: Touchscreen
- */
-#define TOUCH_OFFSET		0x900000
-#define TOUCH_BASE		(EP93XX_APB_BASE | TOUCH_OFFSET)
-
-/* -----------------------------------------------------------------------------
- * 0x80910000 - 0x8091FFFF: Pulse Width Modulation
- */
-#define PWM_OFFSET		0x910000
-#define PWM_BASE		(EP93XX_APB_BASE | PWM_OFFSET)
-
-/* -----------------------------------------------------------------------------
- * 0x80920000 - 0x8092FFFF: Real time clock
- */
-#define RTC_OFFSET		0x920000
-#define RTC_BASE		(EP93XX_APB_BASE | RTC_OFFSET)
-
-/* -----------------------------------------------------------------------------
- * 0x80930000 - 0x8093FFFF: Syscon
- */
-#define SYSCON_OFFSET		0x930000
-#define SYSCON_BASE		(EP93XX_APB_BASE | SYSCON_OFFSET)
-
-#ifndef __ASSEMBLY__
-struct syscon_regs {
-	uint32_t pwrsts;
-	uint32_t pwrcnt;
-	uint32_t halt;
-	uint32_t stby;
-	uint32_t reserved0[2];
-	uint32_t teoi;
-	uint32_t stfclr;
-	uint32_t clkset1;
-	uint32_t clkset2;
-	uint32_t reserved1[6];
-	uint32_t scratch0;
-	uint32_t scratch1;
-	uint32_t reserved2[2];
-	uint32_t apbwait;
-	uint32_t bustmstrarb;
-	uint32_t bootmodeclr;
-	uint32_t reserved3[9];
-	uint32_t devicecfg;
-	uint32_t vidclkdiv;
-	uint32_t mirclkdiv;
-	uint32_t i2sclkdiv;
-	uint32_t keytchclkdiv;
-	uint32_t chipid;
-	uint32_t reserved4;
-	uint32_t syscfg;
-	uint32_t reserved5[8];
-	uint32_t sysswlock;
-};
-#else
-#define SYSCON_SCRATCH0		(SYSCON_BASE + 0x0040)
-#endif
-
-#define SYSCON_PWRCNT_UART_BAUD			(1 << 29)
-
-#define SYSCON_CLKSET_PLL_X2IPD_SHIFT		0
-#define SYSCON_CLKSET_PLL_X2FBD2_SHIFT		5
-#define SYSCON_CLKSET_PLL_X1FBD1_SHIFT		11
-#define SYSCON_CLKSET_PLL_PS_SHIFT		16
-#define SYSCON_CLKSET1_PCLK_DIV_SHIFT		18
-#define SYSCON_CLKSET1_HCLK_DIV_SHIFT		20
-#define SYSCON_CLKSET1_NBYP1			(1 << 23)
-#define SYSCON_CLKSET1_FCLK_DIV_SHIFT		25
-
-#define SYSCON_CLKSET2_PLL2_EN			(1 << 18)
-#define SYSCON_CLKSET2_NBYP2			(1 << 19)
-#define SYSCON_CLKSET2_USB_DIV_SHIFT		28
-
-#define SYSCON_CHIPID_REV_MASK			0xF0000000
-#define SYSCON_DEVICECFG_SWRST			(1 << 31)
-
-/* -----------------------------------------------------------------------------
- * 0x80930000 - 0x8093FFFF: Watchdog Timer
- */
-#define WATCHDOG_OFFSET		0x940000
-#define WATCHDOG_BASE		(EP93XX_APB_BASE | WATCHDOG_OFFSET)
-
-/* -----------------------------------------------------------------------------
- * 0x80950000 - 0x9000FFFF: Reserved
- */
-
-- 
2.39.2



