Delivery-date: Thu, 25 Apr 2024 13:56:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxiU-00GfDW-0h
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 13:56:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxiA-0007Cd-Oh
	for lore@pengutronix.de; Thu, 25 Apr 2024 13:56:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNIvHfKy2il7HU14JRRBMaksWyVHIHInP8Dwv8tSf0o=; b=10CdlkkGjGupTN
	IIx2skmgORKmU1QxSKBPowfnaGiustV+spUYDJsKcBVtWLjDvm/xmJaFGtt8B+duBcnt/q9NO6xt8
	iLL4HJPIui7nLeJb5evlqlI6OVpOchexJmxrBTlgu6TJ3yXsAT8CBq5T9xQ33maf4jqj7WZiGzYVk
	KHfzGmuV1x0p3VnsF8qOvWB33dhBGC64OpGXrVVkvr02D36cpf+wFFuTowUSfJNuaQStamtPZs7CY
	it6UYVJAjmBw62o77TxelXyT+pC1CrptsmMRAKJmHtAfAzet3h+XWr8ebdKvNUqCInaLkZvW3pVle
	NDKVZ0Enrc5q9x3xt9QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgr-000000085FM-2T7d;
	Thu, 25 Apr 2024 11:55:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgi-000000085CF-29vs
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 11:54:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgZ-00062i-8j; Thu, 25 Apr 2024 13:54:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-00EFqv-Ie; Thu, 25 Apr 2024 13:54:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-009aQk-1P;
	Thu, 25 Apr 2024 13:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:31 +0200
Message-Id: <20240425115439.2269239-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Subject: [PATCH 07/15] ARM: remove PXA boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

None of the PXA boards has PBL support. This becomes mandatory soon, so
remove the boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                      |   5 -
 arch/arm/boards/lubbock/Makefile              |   4 -
 arch/arm/boards/lubbock/board.c               | 118 -----
 arch/arm/boards/lubbock/env/boot/nor-ubi      |   5 -
 arch/arm/boards/lubbock/env/init/mtdparts-nor |   6 -
 .../lubbock/env/nv/linux.bootargs.console     |   1 -
 arch/arm/boards/lubbock/lowlevel.c            | 194 --------
 arch/arm/boards/mainstone/Makefile            |   4 -
 arch/arm/boards/mainstone/board.c             | 118 -----
 arch/arm/boards/mainstone/env/boot/nor-ubi    |   5 -
 .../boards/mainstone/env/init/mtdparts-nor    |   6 -
 .../mainstone/env/nv/linux.bootargs.console   |   1 -
 arch/arm/boards/mainstone/lowlevel.c          | 266 -----------
 arch/arm/boards/mioa701/Makefile              |   4 -
 arch/arm/boards/mioa701/board.c               | 274 -----------
 .../arm/boards/mioa701/env/bin/barebox_update |  11 -
 arch/arm/boards/mioa701/env/bin/console_mode  |   6 -
 arch/arm/boards/mioa701/env/bin/dps1_unlock   |  12 -
 arch/arm/boards/mioa701/env/bin/dps1_update   |  12 -
 arch/arm/boards/mioa701/env/bin/init          |  79 ---
 .../boards/mioa701/env/bin/mtd_env_override   |   4 -
 .../boards/mioa701/env/bin/sdcard_override    |  19 -
 arch/arm/boards/mioa701/env/config            |   6 -
 arch/arm/boards/mioa701/env/data/dps1.raw.gz  | Bin 1324 -> 0 bytes
 arch/arm/boards/mioa701/gpio0_poweroff.c      |  67 ---
 arch/arm/boards/mioa701/lowlevel.c            |  12 -
 arch/arm/boards/mioa701/mioa701.h             |  67 ---
 .../arm/boards/phytec-phycore-pxa270/Makefile |   4 -
 arch/arm/boards/phytec-phycore-pxa270/board.c | 171 -------
 .../arm/boards/phytec-phycore-pxa270/config.h | 314 ------------
 .../env/init/mtdparts-nor                     |   6 -
 .../env/nv/linux.bootargs.console             |   1 -
 .../phytec-phycore-pxa270/lowlevel_init.S     | 448 ------------------
 arch/arm/boards/zylonite/Makefile             |   4 -
 arch/arm/boards/zylonite/board.c              |  93 ----
 arch/arm/boards/zylonite/env/boot/nand-ubi    |   5 -
 .../boards/zylonite/env/init/mtdparts-nand    |   6 -
 arch/arm/boards/zylonite/env/nv/hostname      |   1 -
 .../zylonite/env/nv/linux.bootargs.base       |   1 -
 .../zylonite/env/nv/linux.bootargs.console    |   1 -
 arch/arm/boards/zylonite/lowlevel.c           |  12 -
 arch/arm/configs/lubbock_defconfig            | 100 ----
 arch/arm/configs/mainstone_defconfig          | 103 ----
 arch/arm/configs/mioa701_defconfig            | 104 ----
 .../configs/phytec-phycore-pxa270_defconfig   |  60 ---
 arch/arm/configs/zylonite310_defconfig        | 104 ----
 arch/arm/include/asm/mach-types.h             |  60 ---
 arch/arm/mach-pxa/Kconfig                     |  87 ----
 48 files changed, 2991 deletions(-)
 delete mode 100644 arch/arm/boards/lubbock/Makefile
 delete mode 100644 arch/arm/boards/lubbock/board.c
 delete mode 100644 arch/arm/boards/lubbock/env/boot/nor-ubi
 delete mode 100644 arch/arm/boards/lubbock/env/init/mtdparts-nor
 delete mode 100644 arch/arm/boards/lubbock/env/nv/linux.bootargs.console
 delete mode 100644 arch/arm/boards/lubbock/lowlevel.c
 delete mode 100644 arch/arm/boards/mainstone/Makefile
 delete mode 100644 arch/arm/boards/mainstone/board.c
 delete mode 100644 arch/arm/boards/mainstone/env/boot/nor-ubi
 delete mode 100644 arch/arm/boards/mainstone/env/init/mtdparts-nor
 delete mode 100644 arch/arm/boards/mainstone/env/nv/linux.bootargs.console
 delete mode 100644 arch/arm/boards/mainstone/lowlevel.c
 delete mode 100644 arch/arm/boards/mioa701/Makefile
 delete mode 100644 arch/arm/boards/mioa701/board.c
 delete mode 100644 arch/arm/boards/mioa701/env/bin/barebox_update
 delete mode 100644 arch/arm/boards/mioa701/env/bin/console_mode
 delete mode 100644 arch/arm/boards/mioa701/env/bin/dps1_unlock
 delete mode 100644 arch/arm/boards/mioa701/env/bin/dps1_update
 delete mode 100644 arch/arm/boards/mioa701/env/bin/init
 delete mode 100644 arch/arm/boards/mioa701/env/bin/mtd_env_override
 delete mode 100644 arch/arm/boards/mioa701/env/bin/sdcard_override
 delete mode 100644 arch/arm/boards/mioa701/env/config
 delete mode 100644 arch/arm/boards/mioa701/env/data/dps1.raw.gz
 delete mode 100644 arch/arm/boards/mioa701/gpio0_poweroff.c
 delete mode 100644 arch/arm/boards/mioa701/lowlevel.c
 delete mode 100644 arch/arm/boards/mioa701/mioa701.h
 delete mode 100644 arch/arm/boards/phytec-phycore-pxa270/Makefile
 delete mode 100644 arch/arm/boards/phytec-phycore-pxa270/board.c
 delete mode 100644 arch/arm/boards/phytec-phycore-pxa270/config.h
 delete mode 100644 arch/arm/boards/phytec-phycore-pxa270/env/init/mtdparts-nor
 delete mode 100644 arch/arm/boards/phytec-phycore-pxa270/env/nv/linux.bootargs.console
 delete mode 100644 arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S
 delete mode 100644 arch/arm/boards/zylonite/Makefile
 delete mode 100644 arch/arm/boards/zylonite/board.c
 delete mode 100644 arch/arm/boards/zylonite/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/zylonite/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/zylonite/env/nv/hostname
 delete mode 100644 arch/arm/boards/zylonite/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/zylonite/env/nv/linux.bootargs.console
 delete mode 100644 arch/arm/boards/zylonite/lowlevel.c
 delete mode 100644 arch/arm/configs/lubbock_defconfig
 delete mode 100644 arch/arm/configs/mainstone_defconfig
 delete mode 100644 arch/arm/configs/mioa701_defconfig
 delete mode 100644 arch/arm/configs/phytec-phycore-pxa270_defconfig
 delete mode 100644 arch/arm/configs/zylonite310_defconfig

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 022ba9903a..fc7a829900 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -56,11 +56,8 @@ obj-$(CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR)	+= kamstrup-mx7-concentrator/
 obj-$(CONFIG_MACH_KARO_QSXP_ML81)		+= karo-qsxp-ml81/
 obj-$(CONFIG_MACH_KONTRON_SAMX6I)		+= kontron-samx6i/
 obj-$(CONFIG_MACH_LENOVO_IX4_300D)		+= lenovo-ix4-300d/
-obj-$(CONFIG_MACH_LUBBOCK)			+= lubbock/
-obj-$(CONFIG_MACH_MAINSTONE)			+= mainstone/
 obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP)		+= marvell-armada-xp-gp/
 obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB)		+= marvell-armada-xp-db/
-obj-$(CONFIG_MACH_MIOA701)			+= mioa701/
 obj-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk/
 obj-$(CONFIG_MACH_MX28EVK)			+= freescale-mx28-evk/
 obj-$(CONFIG_MACH_MYIRTECH_X335X)		+= myirtech-x335x/
@@ -82,7 +79,6 @@ obj-$(CONFIG_MACH_PANDA)			+= panda/
 obj-$(CONFIG_MACH_PCA100)			+= phytec-phycard-imx27/
 obj-$(CONFIG_MACH_PCAAL1)			+= phytec-phycard-omap3/
 obj-$(CONFIG_MACH_PCAAXL2)			+= phytec-phycard-omap4/
-obj-$(CONFIG_MACH_PCM027)			+= phytec-phycore-pxa270/
 obj-$(CONFIG_MACH_PCM038)			+= phytec-phycore-imx27/
 obj-$(CONFIG_MACH_PCM049)			+= phytec-phycore-omap4460/
 obj-$(CONFIG_MACH_PHYTEC_SOM_AM335X)		+= phytec-som-am335x/
@@ -162,7 +158,6 @@ obj-$(CONFIG_MACH_USI_TOPKICK)			+= usi-topkick/
 obj-$(CONFIG_MACH_VERSATILEPB)			+= versatile/
 obj-$(CONFIG_MACH_VEXPRESS)			+= vexpress/
 obj-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard/
-obj-$(CONFIG_MACH_ZYLONITE)			+= zylonite/
 obj-$(CONFIG_MACH_VARISCITE_MX6)		+= variscite-mx6/
 obj-$(CONFIG_MACH_VARISCITE_SOM_MX7)		+= variscite-som-mx7/
 obj-$(CONFIG_MACH_VSCOM_BALTOS)			+= vscom-baltos/
diff --git a/arch/arm/boards/lubbock/Makefile b/arch/arm/boards/lubbock/Makefile
deleted file mode 100644
index da63d2625f..0000000000
--- a/arch/arm/boards/lubbock/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += board.o
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/lubbock/board.c b/arch/arm/boards/lubbock/board.c
deleted file mode 100644
index af046e110a..0000000000
--- a/arch/arm/boards/lubbock/board.c
+++ /dev/null
@@ -1,118 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2011 Robert Jarzmik <robert.jarzmik@free.fr>
-
-#include <common.h>
-#include <driver.h>
-#include <environment.h>
-#include <fs.h>
-#include <init.h>
-#include <led.h>
-#include <gpio.h>
-#include <pwm.h>
-#include <linux/sizes.h>
-
-#include <mach/pxa/devices.h>
-#include <mach/pxa/mfp-pxa27x.h>
-#include <mach/pxa/pxa-regs.h>
-#include <mach/pxa/udc_pxa2xx.h>
-#include <mach/pxa/mci_pxa2xx.h>
-
-#include <platform_data/eth-smc91111.h>
-#include <asm/armlinux.h>
-#include <asm/io.h>
-#include <asm/mmu.h>
-
-#include <asm/mach-types.h>
-
-#define ECOR            0x8000
-#define ECOR_RESET      0x80
-#define ECOR_LEVEL_IRQ  0x40
-#define ECOR_WR_ATTRIB  0x04
-#define ECOR_ENABLE     0x01
-
-#define ECSR            0x8002
-#define ECSR_IOIS8      0x20
-#define ECSR_PWRDWN     0x04
-#define ECSR_INT        0x02
-
-static struct smc91c111_pdata smsc91x_pdata = {
-	.control_setup = 0x0800,
-	.config_setup = 0x10b2,
-	.bus_width = 16,
-	.addr_shift = 2,
-};
-
-static unsigned long lubbock_pin_config[] = {
-	GPIO15_nCS_1,	/* CS1 - Flash */
-	GPIO78_nCS_2,	/* CS2 - Baseboard FGPA + SRAM */
-	GPIO79_nCS_3,	/* CS3 - SMC ethernet */
-	GPIO80_nCS_4,	/* CS4 - SA1111 */
-
-	/* LCD - 16bpp DSTN */
-	GPIOxx_LCD_DSTN_16BPP,
-
-	/* FFUART */
-	GPIO34_FFUART_RXD,
-	GPIO35_FFUART_CTS,
-	GPIO36_FFUART_DCD,
-	GPIO37_FFUART_DSR,
-	GPIO38_FFUART_RI,
-	GPIO39_FFUART_TXD,
-	GPIO40_FFUART_DTR,
-	GPIO41_FFUART_RTS,
-};
-
-static int lubbock_devices_init(void)
-{
-	void *nor0_iospace;
-
-	armlinux_set_architecture(MACH_TYPE_LUBBOCK);
-
-	pxa_add_uart((void *)0x40100000, 0);
-	pxa_add_pwm((void *)0x40b00000, 0);
-
-	nor0_iospace = map_io_sections(0x0, (void *)0xe0000000, SZ_64M);
-	add_cfi_flash_device(0, (ulong)nor0_iospace, SZ_64M, 0);
-	add_cfi_flash_device(1, 0x04000000, SZ_64M, 0);
-	devfs_add_partition("nor0", SZ_2M, SZ_256K, DEVFS_PARTITION_FIXED,
-			    "env0");
-	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL,
-			   0x0c000300, 0xff4000, IORESOURCE_MEM,
-			   &smsc91x_pdata);
-	return 0;
-}
-
-device_initcall(lubbock_devices_init);
-
-static void smc_init(void)
-{
-	/* SMC91c96 */
-	void __iomem *attaddr = (void __iomem *)0x0e000000;
-
-	writel(ECOR_RESET, attaddr + (ECOR << 2));
-	mdelay(100);
-	writel(0, attaddr + (ECOR << 2));
-	writel(ECOR_ENABLE, attaddr + (ECOR << 2));
-
-	/* force 16-bit mode */
-	writel(0, attaddr + (ECSR << 2));
-	mdelay(100);
-}
-
-static int lubbock_coredevice_init(void)
-{
-	barebox_set_model("Lubbock PXA25x");
-	barebox_set_hostname("lubbock");
-	pxa2xx_mfp_config(ARRAY_AND_SIZE(lubbock_pin_config));
-	smc_init();
-	return 0;
-}
-coredevice_initcall(lubbock_coredevice_init);
-
-static int lubbock_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0xa0000000, SZ_64M);
-	add_mem_device("sram0", 0x0a000000, SZ_1M, IORESOURCE_MEM_WRITEABLE);
-	return 0;
-}
-mem_initcall(lubbock_mem_init);
diff --git a/arch/arm/boards/lubbock/env/boot/nor-ubi b/arch/arm/boards/lubbock/env/boot/nor-ubi
deleted file mode 100644
index 533605e86a..0000000000
--- a/arch/arm/boards/lubbock/env/boot/nor-ubi
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/dev/nor0.kernel"
-#global.bootm.oftree="/env/oftree"
-global.linux.bootargs.dyn.root="root=ubi0:linux_root ubi.mtd=nor0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/lubbock/env/init/mtdparts-nor b/arch/arm/boards/lubbock/env/init/mtdparts-nor
deleted file mode 100644
index b5c4e32411..0000000000
--- a/arch/arm/boards/lubbock/env/init/mtdparts-nor
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-mtdparts="2048k@0(nor0.barebox)ro,256k(nor0.barebox-env),256k(nor0.barebox-logo),256k(nor0.barebox-logo2),5120k(nor0.kernel),-(nor0.root)"
-kernelname="application-flash"
-
-mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/lubbock/env/nv/linux.bootargs.console b/arch/arm/boards/lubbock/env/nv/linux.bootargs.console
deleted file mode 100644
index 476b1fbe49..0000000000
--- a/arch/arm/boards/lubbock/env/nv/linux.bootargs.console
+++ /dev/null
@@ -1 +0,0 @@
-console=ttyS0,115200
diff --git a/arch/arm/boards/lubbock/lowlevel.c b/arch/arm/boards/lubbock/lowlevel.c
deleted file mode 100644
index ef6b544a26..0000000000
--- a/arch/arm/boards/lubbock/lowlevel.c
+++ /dev/null
@@ -1,194 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-#include <linux/sizes.h>
-#include <mach/pxa/pxa-regs.h>
-#include <mach/pxa/regs-ost.h>
-
-/*
- * Memory settings
- */
-#define DEFAULT_MSC0_VAL	0x23d223d2
-#define DEFAULT_MSC1_VAL	0x3ff1a441
-#define DEFAULT_MSC2_VAL	0x7ff17ff1
-#define DEFAULT_MDCNFG_VAL	0x00001ac9
-#define DEFAULT_MDREFR_VAL	0x00018018
-#define DEFAULT_MDMRS_VAL	0x00000000
-
-#define DEFAULT_FLYCNFG_VAL	0x00000000
-#define DEFAULT_SXCNFG_VAL	0x00000000
-
-/*
- * PCMCIA and CF Interfaces
- */
-#define DEFAULT_MECR_VAL	0x00000000
-#define DEFAULT_MCMEM0_VAL	0x00010504
-#define DEFAULT_MCMEM1_VAL	0x00010504
-#define DEFAULT_MCATT0_VAL	0x00010504
-#define DEFAULT_MCATT1_VAL	0x00010504
-#define DEFAULT_MCIO0_VAL	0x00004715
-#define DEFAULT_MCIO1_VAL	0x00004715
-
-static inline void writelrb(uint32_t val, volatile u32 __iomem *addr)
-{
-	writel(val, addr);
-	barrier();
-	readl(addr);
-	barrier();
-}
-
-static inline void pxa_wait_ticks(int ticks)
-{
-	writel(0, &OSCR);
-	while (readl(&OSCR) < ticks)
-		barrier();
-}
-
-static inline void pxa2xx_dram_init(void)
-{
-	uint32_t tmp;
-	int i;
-	/*
-	 * 1) Initialize Asynchronous static memory controller
-	 */
-
-	writelrb(DEFAULT_MSC0_VAL, &MSC0);
-	writelrb(DEFAULT_MSC1_VAL, &MSC1);
-	writelrb(DEFAULT_MSC2_VAL, &MSC2);
-	/*
-	 * 2) Initialize Card Interface
-	 */
-
-	/* MECR: Memory Expansion Card Register */
-	writelrb(DEFAULT_MECR_VAL, &MECR);
-	/* MCMEM0: Card Interface slot 0 timing */
-	writelrb(DEFAULT_MCMEM0_VAL, &MCMEM0);
-	/* MCMEM1: Card Interface slot 1 timing */
-	writelrb(DEFAULT_MCMEM1_VAL, &MCMEM1);
-	/* MCATT0: Card Interface Attribute Space Timing, slot 0 */
-	writelrb(DEFAULT_MCATT0_VAL, &MCATT0);
-	/* MCATT1: Card Interface Attribute Space Timing, slot 1 */
-	writelrb(DEFAULT_MCATT1_VAL, &MCATT1);
-	/* MCIO0: Card Interface I/O Space Timing, slot 0 */
-	writelrb(DEFAULT_MCIO0_VAL, &MCIO0);
-	/* MCIO1: Card Interface I/O Space Timing, slot 1 */
-	writelrb(DEFAULT_MCIO1_VAL, &MCIO1);
-
-	/*
-	 * 3) Configure Fly-By DMA register
-	 */
-
-	writelrb(DEFAULT_FLYCNFG_VAL, &FLYCNFG);
-
-	/*
-	 * 4) Initialize Timing for Sync Memory (SDCLK0)
-	 */
-
-	/*
-	 * Before accessing MDREFR we need a valid DRI field, so we set
-	 * this to power on defaults + DRI field.
-	 */
-
-	/* Read current MDREFR config and zero out DRI */
-	tmp = readl(&MDREFR) & ~0xfff;
-	/* Add user-specified DRI */
-	tmp |= DEFAULT_MDREFR_VAL & 0xfff;
-	/* Configure important bits */
-	tmp |= MDREFR_K0RUN | MDREFR_SLFRSH;
-	tmp &= ~(MDREFR_APD | MDREFR_E1PIN);
-
-	/* Write MDREFR back */
-	writelrb(tmp, &MDREFR);
-
-	/*
-	 * 5) Initialize Synchronous Static Memory (Flash/Peripherals)
-	 */
-
-	/* Initialize SXCNFG register. Assert the enable bits.
-	 *
-	 * Write SXMRS to cause an MRS command to all enabled banks of
-	 * synchronous static memory. Note that SXLCR need not be written
-	 * at this time.
-	 */
-	writelrb(DEFAULT_SXCNFG_VAL, &SXCNFG);
-
-	/*
-	 * 6) Initialize SDRAM
-	 */
-
-	writelrb(DEFAULT_MDREFR_VAL & ~MDREFR_SLFRSH, &MDREFR);
-	writelrb(DEFAULT_MDREFR_VAL | MDREFR_E1PIN, &MDREFR);
-
-	/*
-	 * 7) Write MDCNFG with MDCNFG:DEx deasserted (set to 0), to configure
-	 *    but not enable each SDRAM partition pair.
-	 */
-
-	writelrb(DEFAULT_MDCNFG_VAL &
-		 ~(MDCNFG_DE0 | MDCNFG_DE1 | MDCNFG_DE2 | MDCNFG_DE3), &MDCNFG);
-	/* Wait for the clock to the SDRAMs to stabilize, 100..200 usec. */
-	pxa_wait_ticks(0x300);
-
-	/*
-	 * 8) Trigger a number (usually 8) refresh cycles by attempting
-	 *    non-burst read or write accesses to disabled SDRAM, as commonly
-	 *    specified in the power up sequence documented in SDRAM data
-	 *    sheets. The address(es) used for this purpose must not be
-	 *    cacheable.
-	 */
-	for (i = 9; i >= 0; i--) {
-		writel(i, 0xa0000000);
-		barrier();
-	}
-	/*
-	 * 9) Write MDCNFG with enable bits asserted (MDCNFG:DEx set to 1).
-	 */
-
-	tmp = DEFAULT_MDCNFG_VAL &
-		(MDCNFG_DE0 | MDCNFG_DE1 | MDCNFG_DE2 | MDCNFG_DE3);
-	tmp |= readl(&MDCNFG);
-	writelrb(tmp, &MDCNFG);
-
-	/*
-	 * 10) Write MDMRS.
-	 */
-
-	writelrb(DEFAULT_MDMRS_VAL, &MDMRS);
-
-	/*
-	 * 11) Enable APD
-	 */
-
-	if (DEFAULT_MDREFR_VAL & MDREFR_APD) {
-		tmp = readl(&MDREFR);
-		tmp |= MDREFR_APD;
-		writelrb(tmp, &MDREFR);
-	}
-}
-
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	unsigned long pssr = PSPR;
-	unsigned long pc = get_pc();
-
-	arm_cpu_lowlevel_init();
-	CKEN |= CKEN_OSTIMER | CKEN_MEMC | CKEN_FFUART;
-
-	/*
-	 * When not running from SDRAM, get it out of self refresh, and/or
-	 * initialize it.
-	 */
-	if (!(pc >= 0xa0000000 && pc < 0xb0000000))
-		pxa2xx_dram_init();
-
-	if ((pssr >= 0xa0000000 && pssr < 0xb0000000) ||
-	    (pssr >= 0x04000000 && pssr < 0x10000000))
-		asm("mov pc, %0" : : "r"(pssr) : );
-
-	barebox_arm_entry(0xa0000000, SZ_64M, 0);
-}
diff --git a/arch/arm/boards/mainstone/Makefile b/arch/arm/boards/mainstone/Makefile
deleted file mode 100644
index da63d2625f..0000000000
--- a/arch/arm/boards/mainstone/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += board.o
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/mainstone/board.c b/arch/arm/boards/mainstone/board.c
deleted file mode 100644
index 979a4f3609..0000000000
--- a/arch/arm/boards/mainstone/board.c
+++ /dev/null
@@ -1,118 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2015 Robert Jarzmik <robert.jarzmik@free.fr>
-
-#include <common.h>
-#include <driver.h>
-#include <environment.h>
-#include <fs.h>
-#include <init.h>
-#include <led.h>
-#include <gpio.h>
-#include <pwm.h>
-#include <linux/sizes.h>
-
-#include <mach/pxa/devices.h>
-#include <mach/pxa/mfp-pxa27x.h>
-#include <mach/pxa/pxa-regs.h>
-#include <mach/pxa/udc_pxa2xx.h>
-#include <mach/pxa/mci_pxa2xx.h>
-
-#include <platform_data/eth-smc91111.h>
-#include <asm/armlinux.h>
-#include <asm/io.h>
-#include <asm/mmu.h>
-
-#include <asm/mach-types.h>
-
-static struct smc91c111_pdata smsc91x_pdata = {
-	.word_aligned_short_writes = true,
-};
-
-static unsigned long mainstone_pin_config[] = {
-	GPIO15_nCS_1,	/* CS1 - Flash */
-	GPIO78_nCS_2,	/* CS2 - Baseboard FGPA + SRAM */
-	GPIO80_nCS_4,	/* CS4 - SMC ethernet */
-
-	/* Ethernet: static memory VLIO */
-	GPIO18_RDY,
-
-	/* PC Card */
-	GPIO48_nPOE,
-	GPIO49_nPWE,
-	GPIO50_nPIOR,
-	GPIO51_nPIOW,
-	GPIO85_nPCE_1,
-	GPIO54_nPCE_2,
-	GPIO79_PSKTSEL,
-	GPIO55_nPREG,
-	GPIO56_nPWAIT,
-	GPIO57_nIOIS16,
-
-	/* MMC */
-	GPIO32_MMC_CLK,
-	GPIO112_MMC_CMD,
-	GPIO92_MMC_DAT_0,
-	GPIO109_MMC_DAT_1,
-	GPIO110_MMC_DAT_2,
-	GPIO111_MMC_DAT_3,
-
-	/* LCD - 16bpp DSTN */
-	GPIOxx_LCD_TFT_16BPP,
-
-	/* Backlight */
-	GPIO16_PWM0_OUT,
-
-	/* FFUART */
-	GPIO34_FFUART_RXD,
-	GPIO35_FFUART_CTS,
-	GPIO36_FFUART_DCD,
-	GPIO37_FFUART_DSR,
-	GPIO38_FFUART_RI,
-	GPIO39_FFUART_TXD,
-	GPIO40_FFUART_DTR,
-	GPIO41_FFUART_RTS,
-};
-
-static int mainstone_devices_init(void)
-{
-	void *nor0_iospace;
-
-	armlinux_set_architecture(MACH_TYPE_MAINSTONE);
-
-	pxa_add_uart((void *)0x40100000, 0);
-	pxa_add_pwm((void *)0x40b00000, 0);
-
-	nor0_iospace = map_io_sections(0x0, (void *)0xe0000000, SZ_64M);
-	add_cfi_flash_device(0, (ulong)nor0_iospace, SZ_64M, 0);
-	add_cfi_flash_device(1, 0x04000000, SZ_64M, 0);
-	devfs_add_partition("nor0", SZ_2M, SZ_256K, DEVFS_PARTITION_FIXED,
-			    "env0");
-	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL,
-			   0x10000300, 0xff4000, IORESOURCE_MEM,
-			   &smsc91x_pdata);
-	return 0;
-}
-
-device_initcall(mainstone_devices_init);
-
-static int mainstone_coredevice_init(void)
-{
-	/*
-	 * Put the board in superspeed (520 MHz) to speed-up logo/OS loading.
-	 */
-	CCCR = CCCR_A | 0x20290;
-
-	barebox_set_model("Mainstone PXA27x");
-	barebox_set_hostname("mainstone");
-	pxa2xx_mfp_config(ARRAY_AND_SIZE(mainstone_pin_config));
-	return 0;
-}
-coredevice_initcall(mainstone_coredevice_init);
-
-static int mainstone_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0xa0000000, SZ_64M);
-	add_mem_device("sram0", 0x0a000000, SZ_1M, IORESOURCE_MEM_WRITEABLE);
-	return 0;
-}
-mem_initcall(mainstone_mem_init);
diff --git a/arch/arm/boards/mainstone/env/boot/nor-ubi b/arch/arm/boards/mainstone/env/boot/nor-ubi
deleted file mode 100644
index 533605e86a..0000000000
--- a/arch/arm/boards/mainstone/env/boot/nor-ubi
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/dev/nor0.kernel"
-#global.bootm.oftree="/env/oftree"
-global.linux.bootargs.dyn.root="root=ubi0:linux_root ubi.mtd=nor0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/mainstone/env/init/mtdparts-nor b/arch/arm/boards/mainstone/env/init/mtdparts-nor
deleted file mode 100644
index b5c4e32411..0000000000
--- a/arch/arm/boards/mainstone/env/init/mtdparts-nor
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-mtdparts="2048k@0(nor0.barebox)ro,256k(nor0.barebox-env),256k(nor0.barebox-logo),256k(nor0.barebox-logo2),5120k(nor0.kernel),-(nor0.root)"
-kernelname="application-flash"
-
-mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/mainstone/env/nv/linux.bootargs.console b/arch/arm/boards/mainstone/env/nv/linux.bootargs.console
deleted file mode 100644
index 476b1fbe49..0000000000
--- a/arch/arm/boards/mainstone/env/nv/linux.bootargs.console
+++ /dev/null
@@ -1 +0,0 @@
-console=ttyS0,115200
diff --git a/arch/arm/boards/mainstone/lowlevel.c b/arch/arm/boards/mainstone/lowlevel.c
deleted file mode 100644
index 29d12f7424..0000000000
--- a/arch/arm/boards/mainstone/lowlevel.c
+++ /dev/null
@@ -1,266 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-#include <linux/sizes.h>
-#include <mach/pxa/pxa-regs.h>
-#include <mach/pxa/regs-ost.h>
-
-/*
- * Memory settings
- */
-#define DEFAULT_MSC0_VAL	0x23F2B8F2
-#define DEFAULT_MSC1_VAL	0x7ff0fff1
-/*
- * MSC2: static partitions 4 and 5
- *
- * [31]      0   - RBUFF5
- * [30:28]   111 - RRR5
- * [27:24]   1111- RDN5
- * [23:20]   1111- RDF5
- * [19]      0   - RBW5
- * [18:16]   000 - RT5
- * [15]      0   - RBUFF4: Slow device (don't wait for data return)
- * [14:12]   111 - RRR4: Toff=(2*RRR + 1)*CLK_MEM (from nCS=1 to next nCS=0)
- * [11:8]    1111- RDN4: T=2*RDN*CLK_MEM (from nOE=1 to addr hold)
- * [7:4]     1111- RDF4: T=RDF*CLK_MEM of hold nOE/nPWE for read/write
- * [3]       0   - RBW4: Bus width is 32 bits
- * [2:0]     000 - RT4: Partition is VLIO
- */
-#define DEFAULT_MSC2_VAL	0x7ff0fff4
-
-/*
- * MDCNFG: SDRAM Configuration Register
- *
- * [31]      0	 - Memory map 0/1 uses normal 256 MBytes
- * [30]      0   - dcacx2: no extra column addressing
- * [29]      0   - reserved
- * [28]      0	 - SA1111 compatiblity mode
- * [27]      0   - latch return data with return clock
- * [26]      0   - alternate addressing for pair 2/3
- * [25:24]   00  - timings
- * [23]      0   - internal banks in lower partition 2/3 (not used)
- * [22:21]   00  - row address bits for partition 2/3 (not used)
- * [20:19]   00  - column address bits for partition 2/3 (not used)
- * [18]      0   - SDRAM partition 2/3 width is 32 bit
- * [17]      0   - SDRAM partition 3 disabled
- * [16]      0   - SDRAM partition 2 disabled
- * [15]      0	 - Stack1 : see stack0
- * [14]      0   - dcacx0 : no extra column addressing
- * [13]      0   - stack0 : stack = 0b00 => SDRAM address placed on MA<24:10>
- * [12]      0	 - SA1110 compatiblity mode
- * [11]      1   - always 1
- * [10]      0   - no alternate addressing for pair 0/1
- * [09:08]   10  - tRP=2*MemClk CL=2 tRCD=2*MemClk tRAS=7*MemClk tRC=11*MemClk
- * [7]       1   - 4 internal banks in partitions 0/1
- * [06:05]   10  - drac0: 13 row address bits for partition 0/1
- * [04:03]   01  - dcac0: 9 column address bits for partition 0/1
- * [02]      0   - SDRAM partition 0/1 width is 32 bit
- * [01]      1   - enable SDRAM partition 1
- * [00]      1   - enable SDRAM partition 0
- *
- * Configuration is for 1 bank of 64MBytes (13 rows * 9 cols)
- * in bank0, of width 32 bits, with 4 internal banks.
- * Timings (in times of SDCLK<1>): tRP = 3clk, CL=3, rRCD=3clk,
- *                                 tRAS=7clk, tRC=11clk
- */
-#define DEFAULT_MDCNFG_VAL	0x00000acb
-
-/*
- * MDREFR: SDRAM Configuration Register
- *
- * [25]      0   - K2FREE=0
- * [24]      0   - K1FREE=0
- * [23]      0   - K0FREE=0
- * [22]      0   - SLFRSH=0
- * [21]
- * [20]      0   - APD
- * [19]      0   - K2DB2=0
- * [18]      0   - K2RUN=0
- * [17]      1   - K1DB2=1
- * [16]      1   - K1RUN=1
- * [15]      0   - EP1IN
- * [14]      1   - K0DB2=1
- * [13]      1   - K0RUN=1
- * [12]
- * [11..0]  17   - DRI=17
- */
-#define DEFAULT_MDREFR_VAL	0x00036017
-#define DEFAULT_MDMRS_VAL	0x00320032
-
-#define DEFAULT_FLYCNFG_VAL	0x00000000
-#define DEFAULT_SXCNFG_VAL	0x40044004
-
-/*
- * PCMCIA and CF Interfaces
- */
-#define DEFAULT_MECR_VAL	0x00000001
-#define DEFAULT_MCMEM0_VAL	0x00014307
-#define DEFAULT_MCMEM1_VAL	0x00014307
-#define DEFAULT_MCATT0_VAL	0x0001c787
-#define DEFAULT_MCATT1_VAL	0x0001c787
-#define DEFAULT_MCIO0_VAL	0x0001430f
-#define DEFAULT_MCIO1_VAL	0x0001430f
-
-static inline void writelrb(uint32_t val, volatile u32 __iomem *addr)
-{
-	writel(val, addr);
-	barrier();
-	readl(addr);
-	barrier();
-}
-
-static inline void pxa_wait_ticks(int ticks)
-{
-	writel(0, &OSCR);
-	while (readl(&OSCR) < ticks)
-		barrier();
-}
-
-static inline void pxa2xx_dram_init(void)
-{
-	uint32_t tmp, mask;
-	int i;
-	/*
-	 * 1) Initialize Asynchronous static memory controller
-	 */
-
-	writelrb(DEFAULT_MSC1_VAL, &MSC1);
-	writelrb(DEFAULT_MSC2_VAL, &MSC2);
-	/*
-	 * 2) Initialize Card Interface
-	 */
-
-	/* MECR: Memory Expansion Card Register */
-	writelrb(DEFAULT_MECR_VAL, &MECR);
-	/* MCMEM0: Card Interface slot 0 timing */
-	writelrb(DEFAULT_MCMEM0_VAL, &MCMEM0);
-	/* MCMEM1: Card Interface slot 1 timing */
-	writelrb(DEFAULT_MCMEM1_VAL, &MCMEM1);
-	/* MCATT0: Card Interface Attribute Space Timing, slot 0 */
-	writelrb(DEFAULT_MCATT0_VAL, &MCATT0);
-	/* MCATT1: Card Interface Attribute Space Timing, slot 1 */
-	writelrb(DEFAULT_MCATT1_VAL, &MCATT1);
-	/* MCIO0: Card Interface I/O Space Timing, slot 0 */
-	writelrb(DEFAULT_MCIO0_VAL, &MCIO0);
-	/* MCIO1: Card Interface I/O Space Timing, slot 1 */
-	writelrb(DEFAULT_MCIO1_VAL, &MCIO1);
-
-	/*
-	 * 3) Configure Fly-By DMA register
-	 */
-
-	writelrb(DEFAULT_FLYCNFG_VAL, &FLYCNFG);
-
-	/*
-	 * 4) Initialize Timing for Sync Memory (SDCLK0)
-	 */
-
-	/*
-	 * Before accessing MDREFR we need a valid DRI field, so we set
-	 * this to power on defaults + DRI field.
-	 */
-
-	/* Read current MDREFR config and zero out DRI */
-	tmp = readl(&MDREFR) & ~0xfff;
-	tmp |= DEFAULT_MDREFR_VAL & 0xfff;
-	writelrb(tmp, &MDREFR);
-
-	/* clear the free-running clock bits (clear K0Free, K1Free, K2Free) */
-	mask = MDREFR_K0FREE | MDREFR_K1FREE | MDREFR_K2FREE |
-		MDREFR_K0DB2 | MDREFR_K0DB4 | MDREFR_K1DB2 | MDREFR_K2DB2 |
-		MDREFR_K0RUN | MDREFR_K1RUN | MDREFR_K2RUN;
-	tmp &= ~mask;
-	tmp |= (DEFAULT_MDREFR_VAL & mask);
-	writelrb(tmp, &MDREFR);
-
-	/*
-	 * 5) Initialize Synchronous Static Memory (Flash/Peripherals)
-	 */
-
-	/* Initialize SXCNFG register. Assert the enable bits.
-	 *
-	 * Write SXMRS to cause an MRS command to all enabled banks of
-	 * synchronous static memory. Note that SXLCR need not be written
-	 * at this time.
-	 */
-	writelrb(DEFAULT_SXCNFG_VAL, &SXCNFG);
-
-	/*
-	 * 6) Initialize SDRAM
-	 */
-
-	tmp &= ~MDREFR_SLFRSH;
-	writelrb(tmp, &MDREFR);
-	tmp |= MDREFR_E1PIN;
-	writelrb(tmp, &MDREFR);
-
-	/*
-	 * 7) Write MDCNFG with MDCNFG:DEx deasserted (set to 0), to configure
-	 *    but not enable each SDRAM partition pair.
-	 */
-
-	mask = MDCNFG_DE0 | MDCNFG_DE1 | MDCNFG_DE2 | MDCNFG_DE3;
-	writelrb(DEFAULT_MDCNFG_VAL & ~mask, &MDCNFG);
-
-	/* Wait for the clock to the SDRAMs to stabilize, 100..200 usec. */
-	pxa_wait_ticks(0x300);
-
-	/*
-	 * 8) Trigger a number (usually 8) refresh cycles by attempting
-	 *    non-burst read or write accesses to disabled SDRAM, as commonly
-	 *    specified in the power up sequence documented in SDRAM data
-	 *    sheets. The address(es) used for this purpose must not be
-	 *    cacheable.
-	 */
-	for (i = 9; i >= 0; i--) {
-		readl(0xa0000000);
-		barrier();
-	}
-	/*
-	 * 9) Write MDCNFG with enable bits asserted (MDCNFG:DEx set to 1).
-	 */
-
-	tmp = (readl(&MDCNFG) & ~mask) | (DEFAULT_MDCNFG_VAL & mask);
-	writelrb(tmp, &MDCNFG);
-
-	/*
-	 * 10) Write MDMRS.
-	 */
-	writelrb(DEFAULT_MDMRS_VAL, &MDMRS);
-
-	/*
-	 * 11) Enable APD
-	 */
-	if (DEFAULT_MDREFR_VAL & MDREFR_APD) {
-		tmp = readl(&MDREFR);
-		tmp |= MDREFR_APD;
-		writelrb(tmp, &MDREFR);
-	}
-}
-
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	unsigned long pssr = PSPR;
-	unsigned long pc = get_pc();
-
-	arm_cpu_lowlevel_init();
-	CKEN |= CKEN_OSTIMER | CKEN_MEMC | CKEN_FFUART;
-
-	/*
-	 * When not running from SDRAM, get it out of self refresh, and/or
-	 * initialize it.
-	 */
-	if (!(pc >= 0xa0000000 && pc < 0xb0000000))
-		pxa2xx_dram_init();
-
-	if ((pssr >= 0xa0000000 && pssr < 0xb0000000) ||
-	    (pssr >= 0x04000000 && pssr < 0x10000000))
-		asm("mov pc, %0" : : "r"(pssr) : );
-
-	barebox_arm_entry(0xa0000000, SZ_64M, 0);
-}
diff --git a/arch/arm/boards/mioa701/Makefile b/arch/arm/boards/mioa701/Makefile
deleted file mode 100644
index bf17869fb2..0000000000
--- a/arch/arm/boards/mioa701/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += board.o gpio0_poweroff.o
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/mioa701/board.c b/arch/arm/boards/mioa701/board.c
deleted file mode 100644
index 685c78611b..0000000000
--- a/arch/arm/boards/mioa701/board.c
+++ /dev/null
@@ -1,274 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2011 Robert Jarzmik <robert.jarzmik@free.fr>
-
-#include <common.h>
-#include <driver.h>
-#include <environment.h>
-#include <fs.h>
-#include <init.h>
-#include <led.h>
-#include <gpio.h>
-#include <pwm.h>
-
-#include <mach/pxa/devices.h>
-#include <mach/pxa/mfp-pxa27x.h>
-#include <mach/pxa/pxa-regs.h>
-#include <mach/pxa/udc_pxa2xx.h>
-#include <mach/pxa/mci_pxa2xx.h>
-
-#include <asm/armlinux.h>
-#include <asm/io.h>
-#include <asm/mach-types.h>
-#include <asm/mmu.h>
-
-#include "mioa701.h"
-
-/*
- * LTM0305A776C LCD panel timings
- *
- * see:
- *  - the LTM0305A776C datasheet,
- *  - and the PXA27x Programmers' manual
- */
-static struct pxafb_videomode mioa701_ltm0305a776c = {
-	{
-		.pixclock		= 220000,	/* CLK=4.545 MHz */
-		.xres			= 240,
-		.yres			= 320,
-		.hsync_len		= 4,
-		.vsync_len		= 2,
-		.left_margin		= 6,
-		.right_margin		= 4,
-		.upper_margin		= 5,
-		.lower_margin		= 3,
-	},
-	.bpp = 16,
-};
-
-static void mioa701_lcd_power(int on)
-{
-	gpio_set_value(GPIO87_LCD_POWER, on);
-}
-
-static void mioa701_lcd_backlight(int on)
-{
-	struct pwm_device *pwm0 = pwm_request("pwm0");
-
-	/*
-	 * The backlight has a base frequency of 250kHz (<=> 4 ms).
-	 */
-	if (on) {
-		pwm_enable(pwm0);
-		pwm_config(pwm0, 2000 * 1024, 4000 * 1024);
-	} else {
-		pwm_disable(pwm0);
-	}
-	pwm_free(pwm0);
-}
-
-static struct pxafb_platform_data mioa701_pxafb_info = {
-	.mode			= &mioa701_ltm0305a776c,
-	.lcd_conn		= LCD_COLOR_TFT_16BPP | LCD_PCLK_EDGE_FALL,
-	.lcd_power		= mioa701_lcd_power,
-	.backlight_power	= mioa701_lcd_backlight,
-};
-
-#define MIO_LED(_name, _gpio) \
-	{ .gpio = _gpio, .active_low = 1, .led = { .name = #_name, } }
-static struct gpio_led leds[] = {
-	MIO_LED(charging, GPIO10_LED_nCharging),
-	MIO_LED(blue, GPIO97_LED_nBlue),
-	MIO_LED(orange, GPIO98_LED_nOrange),
-	MIO_LED(vibra, GPIO82_LED_nVibra),
-	MIO_LED(keyboard, GPIO115_LED_nKeyboard),
-};
-
-
-static int is_usb_connected(void)
-{
-	return !gpio_get_value(GPIO13_nUSB_DETECT);
-}
-
-static struct pxa2xx_udc_mach_info mioa701_udc_info = {
-	.udc_is_connected = is_usb_connected,
-	.gpio_pullup	  = GPIO22_USB_ENABLE,
-};
-
-static struct pxamci_platform_data mioa701_mmc_info = {
-	.gpio_power = GPIO91_SDIO_EN,
-};
-
-static int mioa701_devices_init(void)
-{
-	int i;
-	void *docg3_iospace;
-
-	pxa_add_pwm((void *)0x40b00000, 0);
-	pxa_add_fb((void *)0x44000000, &mioa701_pxafb_info);
-	pxa_add_mmc((void *)0x41100000, DEVICE_ID_DYNAMIC, &mioa701_mmc_info);
-	docg3_iospace = map_io_sections(0x0, (void *)0xe0000000, 0x2000);
-	add_generic_device("docg3", DEVICE_ID_DYNAMIC, NULL, (ulong) docg3_iospace,
-			0x2000, IORESOURCE_MEM, NULL);
-	armlinux_set_architecture(MACH_TYPE_MIOA701);
-
-	for (i = 0; i < ARRAY_SIZE(leds); i++)
-		led_gpio_register(&leds[i]);
-	add_generic_device("pxa27x-udc", 0, NULL, 0x40600000,
-			   1024, IORESOURCE_MEM, &mioa701_udc_info);
-	return 0;
-}
-
-device_initcall(mioa701_devices_init);
-
-static unsigned long mioa701_pin_config[] = {
-	/* Mio global */
-	MIO_CFG_OUT(GPIO9_CHARGE_EN, AF0, DRIVE_LOW),
-	MIO_CFG_OUT(GPIO18_POWEROFF, AF0, DRIVE_LOW),
-	MFP_CFG_OUT(GPIO3, AF0, DRIVE_HIGH),
-	MFP_CFG_OUT(GPIO4, AF0, DRIVE_HIGH),
-	MIO_CFG_IN(GPIO80_MAYBE_CHARGE_VDROP, AF0),
-
-	/* Backlight PWM 0 */
-	GPIO16_PWM0_OUT,
-
-	/* LCD */
-	GPIOxx_LCD_TFT_16BPP,
-	MIO_CFG_OUT(GPIO87_LCD_POWER, AF0, DRIVE_LOW),
-
-	/* MMC */
-	GPIO32_MMC_CLK,
-	GPIO92_MMC_DAT_0,
-	GPIO109_MMC_DAT_1,
-	GPIO110_MMC_DAT_2,
-	GPIO111_MMC_DAT_3,
-	GPIO112_MMC_CMD,
-	MIO_CFG_IN(GPIO78_SDIO_RO, AF0),
-	MIO_CFG_IN(GPIO15_SDIO_INSERT, AF0),
-	MIO_CFG_OUT(GPIO91_SDIO_EN, AF0, DRIVE_LOW),
-
-	/* USB */
-	MIO_CFG_IN(GPIO13_nUSB_DETECT, AF0),
-	MIO_CFG_OUT(GPIO22_USB_ENABLE, AF0, DRIVE_LOW),
-
-	/* QCI */
-	GPIO12_CIF_DD_7,
-	GPIO17_CIF_DD_6,
-	GPIO50_CIF_DD_3,
-	GPIO51_CIF_DD_2,
-	GPIO52_CIF_DD_4,
-	GPIO53_CIF_MCLK,
-	GPIO54_CIF_PCLK,
-	GPIO55_CIF_DD_1,
-	GPIO81_CIF_DD_0,
-	GPIO82_CIF_DD_5,
-	GPIO84_CIF_FV,
-	GPIO85_CIF_LV,
-
-	/* Bluetooth */
-	MIO_CFG_IN(GPIO14_BT_nACTIVITY, AF0),
-	GPIO44_BTUART_CTS,
-	GPIO42_BTUART_RXD,
-	GPIO45_BTUART_RTS,
-	GPIO43_BTUART_TXD,
-	MIO_CFG_OUT(GPIO83_BT_ON, AF0, DRIVE_LOW),
-	MIO_CFG_OUT(GPIO77_BT_UNKNOWN1, AF0, DRIVE_HIGH),
-	MIO_CFG_OUT(GPIO86_BT_MAYBE_nRESET, AF0, DRIVE_HIGH),
-
-	/* GPS */
-	MIO_CFG_OUT(GPIO23_GPS_UNKNOWN1, AF0, DRIVE_LOW),
-	MIO_CFG_OUT(GPIO26_GPS_ON, AF0, DRIVE_LOW),
-	MIO_CFG_OUT(GPIO27_GPS_RESET, AF0, DRIVE_LOW),
-	MIO_CFG_OUT(GPIO106_GPS_UNKNOWN2, AF0, DRIVE_LOW),
-	MIO_CFG_OUT(GPIO107_GPS_UNKNOWN3, AF0, DRIVE_LOW),
-	GPIO46_STUART_RXD,
-	GPIO47_STUART_TXD,
-
-	/* GSM */
-	MIO_CFG_OUT(GPIO24_GSM_MOD_RESET_CMD, AF0, DRIVE_LOW),
-	MIO_CFG_OUT(GPIO88_GSM_nMOD_ON_CMD, AF0, DRIVE_HIGH),
-	MIO_CFG_OUT(GPIO90_GSM_nMOD_OFF_CMD, AF0, DRIVE_HIGH),
-	MIO_CFG_OUT(GPIO114_GSM_nMOD_DTE_UART_STATE, AF0, DRIVE_HIGH),
-	MIO_CFG_IN(GPIO25_GSM_MOD_ON_STATE, AF0),
-	MIO_CFG_IN(GPIO113_GSM_EVENT, AF0) | WAKEUP_ON_EDGE_BOTH,
-	GPIO34_FFUART_RXD,
-	GPIO35_FFUART_CTS,
-	GPIO36_FFUART_DCD,
-	GPIO37_FFUART_DSR,
-	GPIO39_FFUART_TXD,
-	GPIO40_FFUART_DTR,
-	GPIO41_FFUART_RTS,
-
-	/* Sound */
-	GPIO28_AC97_BITCLK,
-	GPIO29_AC97_SDATA_IN_0,
-	GPIO30_AC97_SDATA_OUT,
-	GPIO31_AC97_SYNC,
-	GPIO89_AC97_SYSCLK,
-	MIO_CFG_IN(GPIO12_HPJACK_INSERT, AF0),
-
-	/* Leds */
-	MIO_CFG_OUT(GPIO10_LED_nCharging, AF0, DRIVE_HIGH),
-	MIO_CFG_OUT(GPIO97_LED_nBlue, AF0, DRIVE_HIGH),
-	MIO_CFG_OUT(GPIO98_LED_nOrange, AF0, DRIVE_HIGH),
-	MIO_CFG_OUT(GPIO82_LED_nVibra, AF0, DRIVE_HIGH),
-	MIO_CFG_OUT(GPIO115_LED_nKeyboard, AF0, DRIVE_HIGH),
-
-	/* Keyboard */
-	MIO_CFG_IN(GPIO0_KEY_POWER, AF0) | WAKEUP_ON_EDGE_BOTH,
-	MIO_CFG_IN(GPIO93_KEY_VOLUME_UP, AF0),
-	MIO_CFG_IN(GPIO94_KEY_VOLUME_DOWN, AF0),
-	GPIO100_KP_MKIN_0,
-	GPIO101_KP_MKIN_1,
-	GPIO102_KP_MKIN_2,
-	GPIO103_KP_MKOUT_0,
-	GPIO104_KP_MKOUT_1,
-	GPIO105_KP_MKOUT_2,
-
-	/* I2C */
-	GPIO117_I2C_SCL,
-	GPIO118_I2C_SDA,
-
-	/* Unknown */
-	MFP_CFG_IN(GPIO20, AF0),
-	MFP_CFG_IN(GPIO21, AF0),
-	MFP_CFG_IN(GPIO33, AF0),
-	MFP_CFG_OUT(GPIO49, AF0, DRIVE_HIGH),
-	MFP_CFG_OUT(GPIO57, AF0, DRIVE_HIGH),
-	MFP_CFG_IN(GPIO96, AF0),
-	MFP_CFG_OUT(GPIO116, AF0, DRIVE_HIGH),
-};
-
-static int mioa701_coredevice_init(void)
-{
-	unsigned int cclk;
-	/* route pins */
-	pxa2xx_mfp_config(ARRAY_AND_SIZE(mioa701_pin_config));
-
-	/*
-	 * Put the board in superspeed (520 MHz) to speed-up logo/OS loading.
-	 * This requires to command the Maxim 1586 to upgrade core voltage to
-	 * 1.475 V, on the power I2C bus (device 0x14).
-	 */
-	CKEN |= CKEN_PWRI2C;
-	CCCR = CCCR_A | 0x20290;
-	PCFR = PCFR_GPR_EN | PCFR_FVC | PCFR_DC_EN | PCFR_PI2C_EN | PCFR_OPDE;
-	PCMD(0) = PCMD_LC | 0x1f;
-	PVCR = 0x14;
-
-	cclk = 0x0b;
-	asm volatile("mcr p14, 0, %0, c6, c0, 0 @ set CCLK"
-	  : : "r" (cclk) : "cc");
-
-	barebox_set_model("Scoter Mitac Mio A701");
-	barebox_set_hostname("mioa701");
-
-	return 0;
-}
-coredevice_initcall(mioa701_coredevice_init);
-
-static int mioa701_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0xa0000000, 64 * 1024 * 1024);
-	return 0;
-}
-mem_initcall(mioa701_mem_init);
diff --git a/arch/arm/boards/mioa701/env/bin/barebox_update b/arch/arm/boards/mioa701/env/bin/barebox_update
deleted file mode 100644
index 632c20926a..0000000000
--- a/arch/arm/boards/mioa701/env/bin/barebox_update
+++ /dev/null
@@ -1,11 +0,0 @@
-#!/bin/sh
-
-# Page+OOB specific partitions
-addpart /dev/mtd0.raw 2162688@405504(barebox)
-
-if [ -r /barebox.BIP0 ]; then
-	dps1_unlock
-	erase /dev/mtd0.raw.barebox
-	cp -v /barebox.BIPO /dev/mtd0.raw.barebox
-	dps1_unlock
-fi
diff --git a/arch/arm/boards/mioa701/env/bin/console_mode b/arch/arm/boards/mioa701/env/bin/console_mode
deleted file mode 100644
index aa06e920b4..0000000000
--- a/arch/arm/boards/mioa701/env/bin/console_mode
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-# Script to run barebox in console mode
-
-splash /dev/mtd0.barebox-logo2
-echo
-echo "Welcome to barebox console"
diff --git a/arch/arm/boards/mioa701/env/bin/dps1_unlock b/arch/arm/boards/mioa701/env/bin/dps1_unlock
deleted file mode 100644
index 2d7dab8c58..0000000000
--- a/arch/arm/boards/mioa701/env/bin/dps1_unlock
+++ /dev/null
@@ -1,12 +0,0 @@
-#!/bin/sh
-#
-# Shell to unlock the DPS1 with "12345678" key.
-
-mw -b 0x105e 0x31
-mw -b 0x105e 0x32
-mw -b 0x105e 0x33
-mw -b 0x105e 0x34
-mw -b 0x105e 0x35
-mw -b 0x105e 0x36
-mw -b 0x105e 0x37
-mw -b 0x105e 0x38
diff --git a/arch/arm/boards/mioa701/env/bin/dps1_update b/arch/arm/boards/mioa701/env/bin/dps1_update
deleted file mode 100644
index e6535eda72..0000000000
--- a/arch/arm/boards/mioa701/env/bin/dps1_update
+++ /dev/null
@@ -1,12 +0,0 @@
-#!/bin/sh
-
-# Page+OOB specific partitions
-addpart /dev/mtd0.raw 67584@202752(dps1)
-uncompress /env/data/dps1.raw.gz /dps1.raw
-
-if [ -r /dps1.raw ]; then
-	dps1_unlock
-	erase /dev/mtd0.raw.dps1
-	cp -v /dps1.raw /dev/mtd0.raw.dps1
-	dps1_unlock
-fi
diff --git a/arch/arm/boards/mioa701/env/bin/init b/arch/arm/boards/mioa701/env/bin/init
deleted file mode 100644
index e914eae32f..0000000000
--- a/arch/arm/boards/mioa701/env/bin/init
+++ /dev/null
@@ -1,79 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-addpart /dev/mtd0 $mtdparts
-
-usbserial -s "Mio A701 usb gadget"
-
-gpio_get_value 22
-is_usb_connected=$?
-
-gpio_get_value 93
-is_vol_up=$?
-
-fb0.enable=1
-# Phase1: Handle Vol-Up key case : drop immediately to console
-if [ $is_vol_up != 0 ]; then
-	console_mode
-	exit
-fi
-
-# Phase2: Handle Power-On case : debounce PowerUp key or Halt
-if [ $global.system.reset = "POR" -o $global.system.reset = "WKE" ]; then
-	powerup_released=0
-
-	gpio_get_value 0
-	is_power_up=$?
-	if [ $is_power_up = 0 ]; then
-		powerup_released=1
-	fi
-	msleep 500
-
-	gpio_get_value 0
-	is_power_up=$?
-	if [ $is_power_up = 0 ]; then
-		powerup_released=1
-	fi
-
-	if [ $powerup_released = 1 ]; then
-		echo "Power button not held, halting"
-		poweroff
-	fi
-fi
-
-# Phase3: display logo
-led keyboard 0
-splash /dev/mtd0.barebox-logo
-
-# Phase4: check for SD Card override
-sdcard_override
-if [ $? = 0 ]; then
-    console_mode
-    exit
-fi
-
-# Phase5: check for MTD override
-mtd_env_override
-if [ $? = 0 ]; then
-    echo "Switching to custom environment"
-    /env/init
-    exit
-fi
-
-# Phase6: check for user interrupting auto-boot
-echo "No custom environment found"
-if [ $is_usb_connected != 0 ]; then
-	echo -n "Hit any key to stop autoboot: "
-	timeout -a $autoboot_timeout
-	if [ $? != 0 ]; then
-		console_mode
-		exit
-	fi
-fi
-
-# Phase7: auto-boot linux kernel
-echo "Booting linux kernel on docg3 chip ..."
-bootm /dev/mtd0.kernel
diff --git a/arch/arm/boards/mioa701/env/bin/mtd_env_override b/arch/arm/boards/mioa701/env/bin/mtd_env_override
deleted file mode 100644
index faeb4d0d43..0000000000
--- a/arch/arm/boards/mioa701/env/bin/mtd_env_override
+++ /dev/null
@@ -1,4 +0,0 @@
-#!/bin/sh
-
-loadenv /dev/mtd0.barebox-env
-exit $?
diff --git a/arch/arm/boards/mioa701/env/bin/sdcard_override b/arch/arm/boards/mioa701/env/bin/sdcard_override
deleted file mode 100644
index 7003fa967e..0000000000
--- a/arch/arm/boards/mioa701/env/bin/sdcard_override
+++ /dev/null
@@ -1,19 +0,0 @@
-#!/bin/sh
-# Script to switch to execute sdcard environment scripts if available
-#
-# This enables an override of the default environment if an SD Card
-# is inserted, has a FAT filesystem,  and has a barebox.env file in
-# the root directory.
-
-mci0.probe=1
-if [ $mci0.probe = 1 ]; then
-	mkdir /sdcard
-	mount /dev/disk0.0 /sdcard
-	if [ -f /sdcard/barebox.env ]; then
-		loadenv /sdcard/barebox.env /env.sd
-		/env.sd/bin/init
-		exit
-	fi
-fi
-trigger_error_return_code
-exit
diff --git a/arch/arm/boards/mioa701/env/config b/arch/arm/boards/mioa701/env/config
deleted file mode 100644
index 92014511b4..0000000000
--- a/arch/arm/boards/mioa701/env/config
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-autoboot_timeout=3
-
-mtdparts="2048k@384k(barebox)ro,256k(barebox-logo),256k(barebox-logo2),128k(barebox-env),5120k(kernel),-(root)"
-bootargs="$bootargs mtdparts=docg3.0:$mtdparts ubi.mtd=5 rootfstype=ubifs root=ubi0:linux_root ro"
diff --git a/arch/arm/boards/mioa701/env/data/dps1.raw.gz b/arch/arm/boards/mioa701/env/data/dps1.raw.gz
deleted file mode 100644
index 9857c83e0718d0268dd8c2082193063cd3dfbc72..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 1324
zcmV+{1=IQ;iwFo+Y|>Hy17vV>F)ngpcL42GacEUl82`?__vvdcy>1KV9D1A!%r?54
zujjVx?YVHIDc)LT!~!*=OvAMd!UEskb4xU8If)^`PMCj1U=)Nx@$8LJ{t?;=B>dyu
zd$_0#WYixLNVng)?@dQE{|fr&{NUp|=eytezH`p^o!>R-L27ATn|L_6uC0cMwyyc{
z^s_hL3^g<~G)&D88X6iJ8vg?Qf6&m-m<yU8H13AeM8EwNhX0hhnK4m}w(i-_H>`77
z_$GG?Z{|<!-}O@e0ls->|H0Sx>_tzVaK?fY_E<n%$XYuWyoYf;^bu$deHglSaW2R}
zH)6i3UdYwZ2QY7f?o)Pr-v?dEbAb)pZj5W7cPJaa^+G?5Z_jZx&IN0h3b}(Tzg+MN
z^gc)*#Nk<=C3C)o@$&E?kEoa?BZFNUCUGk^kMIgI&G!<0AE(MAY~ZtoFzmeb!O)_Q
znHw9Xs<lEgTS%4rtMZxZ5sO3OutocWSTquh;`=Bc3z$tsgAaHrr^QDCcK>%W8rvhm
zJNRxa9gtS}yaa7K#{+YH&bMu7deXZUh8-2HLRPI3lCb8k;wU*DFefL;$p($M`!uwr
zY{{IoFjnWj+&q1VhTpofgiKB((myY->{e=^IQ-*?VNMILRNn}!qe(PeK6VAe>2%!L
z=C8-T*Aw<jyNV`diV3VUFA9$wA)8d))Va_*lpncj=CfBVC+D;Li$$Vd`DYkjP<yc8
zu-Zh#(Cpo9MtOQI73WUwUXHngJ6k|i67F?sZ$?FrWJE`=gyGchkY6BbU*s(ERyYMY
ziL;y24|sOx;v4TjT97f=SVvA8u-l#N#ulekx5u$hRfjmF22#&I49w(XzRk0!=|FS_
zbr#FcqNcc$rYvfL{N<V)Lf$8C=f9Ya_CU@CGF<wBXsTA#zC*}!D+^v1pA4qC;m=3x
zE?$Ug&}9=f&hlx4&pe#7hL6P<iE7wb7fr^{ordyngTGos<vT*oQ>ri2xZW<sQRg~S
zQ}9yAF<aF7MJK~>#z)yqTSR_FzNFhwqg4KUaIWRN*G88DMz#!zeAKH#t%=r_`{Cf;
z_9Yuzj*;dE%@3L%G(Tv5(EOnJLGy#=2h9(fA2dJwSNt#&o7W1Dj|*=meweTHL!0?(
zz4A#CBoDFg>__>w!k$pJvM77|?Oce1x7G&#KhO_->E`R7xWemnV?Ol^7Fk+&3rW2R
zA*WD-9ne*nU&A;?*vqRzURHMWWWt#U(lqF&pq2atdx$s=zNOrWAW^m}Ijh#g&eAph
zY`gM%+bLEj(-SeaS;(X_abL<E4?c(g3a5x1<M1m<U*?-@(HSyAR%8l+>J=u0tn3pq
zzH=;S$J?;JKp(ougIF&N7iAtkDA7~{a^HhHXyxNU3^hs&j|cN{o)ol_*?Cf#l6;MI
z1CXN-;}P^z%Xst_jb-Que#!fi4|(W+f91j+_5SLjx=?BD&ZvK%k;c9ue|bjbqB?Ru
z0&l7}+~a`^>nzN}L_sdVoP@w@b>ZJ#HPa8<U(SAdc(j+8yRk~WQ`3q0jC!Qu4jRlI
z^baBag)scp=zG_1R6OTA?=weKGup29Ss?g+i+yb?y`@v#-QCo+$=w#3ihKn45_g9_
zuy|4SLsx*u)jU?7pKB?2XPimTsO*s&!f@HCD2~Se1a|V~8`saazpnW~^F!1RnjbV~
iLGy#=2h9%}b3yZi<_FCW8gt<`Kl}}u?I7TQF#rH>#-j-U

diff --git a/arch/arm/boards/mioa701/gpio0_poweroff.c b/arch/arm/boards/mioa701/gpio0_poweroff.c
deleted file mode 100644
index 41d886d74b..0000000000
--- a/arch/arm/boards/mioa701/gpio0_poweroff.c
+++ /dev/null
@@ -1,67 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2011 Robert Jarzmik <robert.jarzmik@free.fr>
-
-#include <clock.h>
-#include <common.h>
-#include <init.h>
-#include <poweroff.h>
-#include <gpio.h>
-#include <poller.h>
-
-#include "mioa701.h"
-
-#define POWEROFF_SECS (4 * SECOND)
-
-static void blink_led_keyboard(void)
-{
-	gpio_set_value(GPIO115_LED_nKeyboard, 0);
-	mdelay(400);
-	gpio_set_value(GPIO115_LED_nKeyboard, 1);
-	mdelay(400);
-}
-
-static void try_poweroff(void)
-{
-	int poweroff_released = 0;
-
-	blink_led_keyboard();
-	poweroff_released |= !gpio_get_value(GPIO0_KEY_POWER);
-	if (poweroff_released)
-		return;
-
-	gpio_set_value(GPIO115_LED_nKeyboard, 0);
-	mdelay(2000);
-	poweroff_machine();
-}
-
-static void gpio0_poller_fn(struct poller_struct *poller)
-{
-	static uint64_t gpio0_start;
-	static bool gpio0_activated;
-
-	if (!gpio_get_value(GPIO0_KEY_POWER)) {
-		gpio0_activated = false;
-		return;
-	}
-
-	if (gpio0_activated) {
-		if (is_timeout_non_interruptible(gpio0_start, POWEROFF_SECS)) {
-			try_poweroff();
-			gpio0_activated = false;
-		}
-	} else {
-		gpio0_activated = true;
-		gpio0_start = get_time_ns();
-	}
-}
-
-static struct poller_struct gpio0_poller = {
-	.func = gpio0_poller_fn,
-};
-
-static int gpio0_poweroff_probe(void)
-{
-	return poller_register(&gpio0_poller, "power-button");
-}
-
-device_initcall(gpio0_poweroff_probe);
diff --git a/arch/arm/boards/mioa701/lowlevel.c b/arch/arm/boards/mioa701/lowlevel.c
deleted file mode 100644
index 6116990402..0000000000
--- a/arch/arm/boards/mioa701/lowlevel.c
+++ /dev/null
@@ -1,12 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-
-void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0xa0000000, SZ_64M, NULL);
-}
diff --git a/arch/arm/boards/mioa701/mioa701.h b/arch/arm/boards/mioa701/mioa701.h
deleted file mode 100644
index 5f6d5e65f7..0000000000
--- a/arch/arm/boards/mioa701/mioa701.h
+++ /dev/null
@@ -1,67 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2011 Robert Jarzmik <robert.jarzmik@free.fr>
-
-#ifndef _MIOA701_H_
-#define _MIOA701_H_
-
-#define MIO_CFG_IN(pin, af)		\
-	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_DIR_MASK)) |\
-	 (MFP_PIN(pin) | MFP_##af | MFP_DIR_IN))
-
-#define MIO_CFG_OUT(pin, af, state)	\
-	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_DIR_MASK | MFP_LPM_STATE_MASK)) |\
-	 (MFP_PIN(pin) | MFP_##af | MFP_DIR_OUT | MFP_LPM_##state))
-
-/* Global GPIOs */
-#define GPIO9_CHARGE_EN				9
-#define GPIO18_POWEROFF				18
-#define GPIO87_LCD_POWER			87
-#define GPIO96_AC_DETECT			96
-#define GPIO80_MAYBE_CHARGE_VDROP		80	/* Drop of 88mV */
-
-/* USB */
-#define GPIO13_nUSB_DETECT			13
-#define GPIO22_USB_ENABLE			22
-
-/* SDIO bits */
-#define GPIO78_SDIO_RO				78
-#define GPIO15_SDIO_INSERT			15
-#define GPIO91_SDIO_EN				91
-
-/* Bluetooth */
-#define GPIO14_BT_nACTIVITY			14
-#define GPIO83_BT_ON				83
-#define GPIO77_BT_UNKNOWN1			77
-#define GPIO86_BT_MAYBE_nRESET			86
-
-/* GPS */
-#define GPIO23_GPS_UNKNOWN1			23
-#define GPIO26_GPS_ON				26
-#define GPIO27_GPS_RESET			27
-#define GPIO106_GPS_UNKNOWN2			106
-#define GPIO107_GPS_UNKNOWN3			107
-
-/* GSM */
-#define GPIO24_GSM_MOD_RESET_CMD		24
-#define GPIO88_GSM_nMOD_ON_CMD			88
-#define GPIO90_GSM_nMOD_OFF_CMD			90
-#define GPIO114_GSM_nMOD_DTE_UART_STATE		114
-#define GPIO25_GSM_MOD_ON_STATE			25
-#define GPIO113_GSM_EVENT			113
-
-/* SOUND */
-#define GPIO12_HPJACK_INSERT			12
-
-/* LEDS */
-#define GPIO10_LED_nCharging			10
-#define GPIO97_LED_nBlue			97
-#define GPIO98_LED_nOrange			98
-#define GPIO82_LED_nVibra			82
-#define GPIO115_LED_nKeyboard			115
-
-/* Keyboard */
-#define GPIO0_KEY_POWER				0
-#define GPIO93_KEY_VOLUME_UP			93
-#define GPIO94_KEY_VOLUME_DOWN			94
-
-#endif /* _MIOA701_H */
diff --git a/arch/arm/boards/phytec-phycore-pxa270/Makefile b/arch/arm/boards/phytec-phycore-pxa270/Makefile
deleted file mode 100644
index e00d1cfd7f..0000000000
--- a/arch/arm/boards/phytec-phycore-pxa270/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += board.o
-lwl-y += lowlevel_init.o
diff --git a/arch/arm/boards/phytec-phycore-pxa270/board.c b/arch/arm/boards/phytec-phycore-pxa270/board.c
deleted file mode 100644
index 0283659a4e..0000000000
--- a/arch/arm/boards/phytec-phycore-pxa270/board.c
+++ /dev/null
@@ -1,171 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2009 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-// SPDX-FileCopyrightText: 2010 Marc Kleine-Budde <kernel@pengutronix.de>
-
-#include <common.h>
-#include <driver.h>
-#include <environment.h>
-#include <fs.h>
-#include <init.h>
-#include <linux/sizes.h>
-
-#include <gpio.h>
-#include <mach/pxa/mfp-pxa27x.h>
-#include <mach/pxa/pxa-regs.h>
-#include <mach/pxa/pxafb.h>
-#include <mach/pxa/devices.h>
-
-#include <asm/armlinux.h>
-#include <asm/io.h>
-#include <asm/mach-types.h>
-#include <asm/mmu.h>
-
-#define PCM990_CTRL_PHYS	(void *)PXA_CS1_PHYS
-
-#define PCM990_CTRL_REG3	0x0006	/* LCD CTRL REGISTER 3 */
-#define PCM990_CTRL_LCDPWR	0x0001	/* RW LCD Power on */
-#define PCM990_CTRL_LCDON	0x0002	/* RW LCD Latch on */
-#define PCM990_CTRL_LCDPOS1	0x0004	/* RW POS 1 */
-#define PCM990_CTRL_LCDPOS2	0x0008	/* RW POS 2 */
-
-static void lcd_power(int on)
-{
-	void __iomem *ctrl3 = PCM990_CTRL_PHYS + PCM990_CTRL_REG3;
-
-	if (on)
-		writeb(PCM990_CTRL_LCDPWR | PCM990_CTRL_LCDON, ctrl3);
-	else
-		writeb(0x0, ctrl3);
-}
-
-static void backlight_power(int on)
-{
-	if (on) {
-		mdelay(20);
-		gpio_set_value(16, 1);
-	} else {
-		gpio_set_value(16, 0);
-	}
-}
-
-static struct pxafb_videomode pxafb_mode = {
-	.mode = {
-		.pixclock	= 28000,
-		.xres		= 640,
-		.yres		= 480,
-		.hsync_len	= 20,
-		.left_margin	= 103,
-		.right_margin	= 47,
-		.vsync_len	= 6,
-		.upper_margin	= 28,
-		.lower_margin	= 5,
-		.sync		= 0,
-	},
-	.bpp			= 16,
-};
-
-static struct pxafb_platform_data fb_pdata = {
-	.mode			= &pxafb_mode,
-	.lcd_conn		= LCD_COLOR_TFT_16BPP | LCD_PCLK_EDGE_FALL,
-	.lcd_power		= lcd_power,
-	.backlight_power	= backlight_power,
-};
-
-static int pcm027_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0xa0000000, SZ_64M);
-
-	return 0;
-}
-mem_initcall(pcm027_mem_init);
-
-static unsigned long pin_config[] = {
-	/* Chip Selects */
-	GPIO20_nSDCS_2,
-	GPIO21_nSDCS_3,
-	GPIO15_nCS_1,
-	GPIO78_nCS_2,
-	GPIO80_nCS_4,
-
-	/* Variable Latency I/O Ready Pin */
-	GPIO18_RDY,
-
-	/* FFUART */
-	GPIO85_nPCE_1,		/* enables RX */
-	GPIO34_FFUART_RXD,
-	GPIO35_FFUART_CTS,
-	GPIO36_FFUART_DCD,
-	GPIO37_FFUART_DSR,
-	GPIO38_FFUART_RI,
-	GPIO39_FFUART_TXD,
-	GPIO40_FFUART_DTR,
-	GPIO41_FFUART_RTS,
-
-	/* LCD */
-	GPIO58_LCD_LDD_0,
-	GPIO59_LCD_LDD_1,
-	GPIO60_LCD_LDD_2,
-	GPIO61_LCD_LDD_3,
-	GPIO62_LCD_LDD_4,
-	GPIO63_LCD_LDD_5,
-	GPIO64_LCD_LDD_6,
-	GPIO65_LCD_LDD_7,
-	GPIO66_LCD_LDD_8,
-	GPIO67_LCD_LDD_9,
-	GPIO68_LCD_LDD_10,
-	GPIO69_LCD_LDD_11,
-	GPIO70_LCD_LDD_12,
-	GPIO71_LCD_LDD_13,
-	GPIO72_LCD_LDD_14,
-	GPIO73_LCD_LDD_15,
-	GPIO74_LCD_FCLK,
-	GPIO75_LCD_LCLK,
-	GPIO76_LCD_PCLK,
-	GPIO77_LCD_BIAS,
-	MFP_CFG_OUT(GPIO16, AF0, DRIVE_LOW),	/* backlight */
-
-	/* NIC */
-	GPIO33_nCS_5,
-	GPIO49_nPWE,
-};
-
-static int pcm027_devices_init(void)
-{
-	void *cfi_iospace;
-
-	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL, 0x14000300, 16,
-			IORESOURCE_MEM, NULL);
-
-	cfi_iospace = map_io_sections(0x0, (void *)0xe0000000, SZ_32M);
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, (unsigned long)cfi_iospace, SZ_32M, 0);
-
-	pxa_add_fb((void *)0x44000000, &fb_pdata);
-
-	armlinux_set_architecture(MACH_TYPE_PCM027);
-
-	devfs_add_partition("nor0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", SZ_512K, SZ_256K, DEVFS_PARTITION_FIXED, "env0");
-	protect_file("/dev/env0", 1);
-
-	return 0;
-}
-
-device_initcall(pcm027_devices_init);
-
-static int pcm027_console_init(void)
-{
-	/* route pins */
-	pxa2xx_mfp_config(ARRAY_AND_SIZE(pin_config));
-
-	/* enable clock */
-	CKEN |= CKEN_FFUART;
-
-	barebox_set_model("Phytec phyCORE-PXA270");
-	barebox_set_hostname("pcm027");
-
-	pxa_add_uart((void *)0x40100000, 0);
-
-	return 0;
-}
-
-console_initcall(pcm027_console_init);
diff --git a/arch/arm/boards/phytec-phycore-pxa270/config.h b/arch/arm/boards/phytec-phycore-pxa270/config.h
deleted file mode 100644
index 6aba53edea..0000000000
--- a/arch/arm/boards/phytec-phycore-pxa270/config.h
+++ /dev/null
@@ -1,314 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-
-/*
- * Copyright (C) 2005 Phytec Messtechnik GmbH
- * Juergen Kilb, H. Klaholz <armlinux@phytec.de>
- *
- * Copyright (C) 2006 Pengutronix
- * Sascha Hauer <s.hauer@pengutronix.de>
- * Robert Schwebel <r.schwebel@pengutronix.de>
- */
-
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-/*
- * phyCORE-PXA270 configuration settings
- * Set these to 0/1 to enable or disable the features.
- */
-
-#define PHYCORE_PXA270_USE_K3FLASH	0
-
-/* 260 MHz or 520 MHZ */
-#define PHYCORE_PXA270_SPEED		520
-
-/*********************************************************************
- * CONFIG PXA270 GPIO settings                                       *
- *********************************************************************/
-
-/*
- * GPIO set "1"
- *
- *** REG GPSR0
- * GP15 == nCS1      is 1
- * GP20 == nSDCS2    is 1
- * GP21 == nSDCS3    is 1
- *** REG GPSR1
- * GP33 == nCS5      is 1
- *** REG GPSR2
- * GP78 == nCS2      is 1
- * GP80 == nCS4      is 1
- */
-#define GPSR0_DFT		0x00308000
-#define GPSR1_DFT		0x00000002
-#define GPSR2_DFT		0x00014000
-
-#define CONFIG_GPSR0_VAL	GPSR0_DFT
-#define CONFIG_GPSR1_VAL	GPSR1_DFT
-#define CONFIG_GPSR2_VAL	GPSR2_DFT
-#define CONFIG_GPSR3_VAL	GPSR3_DFT
-
-/*
- * set Direction "1" GPIO == output else input
- *
- ** REG GPDR0
- * GP03 == PWR_SDA   is output
- * GP04 == PWR_SCL   is output
- * GP15 == nCS1      is output
- * GP20 == nSDCS2    is output
- * GP21 == nSDCS3    is output
- ** REG GPDR1
- * GP33 == nCS5      is output
- ** REG GPDR2
- * GP78 == nCS2      is output
- * GP80 == nCS4      is output
- * GP90 == LED0      is output
- * GP91 == LED1      is output
- */
-
-#define GPDR0_DFT		0x00308018
-#define GPDR1_DFT		0x00000002
-#define GPDR2_DFT		0x00014000
-
-#define CONFIG_GPDR0_VAL	GPDR0_DFT
-#define CONFIG_GPDR1_VAL	GPDR1_DFT
-#define CONFIG_GPDR2_VAL	GPDR2_DFT
-
-/*
- * set Alternate Funktions
- *
- ** REG GAFR0_L
- * GP15 == nCS1      is AF10
- ** REG GAFR0_U
- * GP18 == RDY       is AF01
- * GP20 == nSDCS2    is AF01
- * GP21 == nSDCS3    is AF01
- ** REG GAFR1_L
- * GP33 == nCS5      is AF10
- ** REG GAFR2_L
- * GP78 == nCS2      is AF10
- ** REG GAFR2_U
- * GP80 == nCS4      is AF10
- */
-
-#define GAFR0_L_DFT		0x80000000
-#define GAFR0_U_DFT		0x00000510
-#define GAFR1_L_DFT		0x00000008
-#define GAFR1_U_DFT		0x00000000
-#define GAFR2_L_DFT		0x20000000
-#define GAFR2_U_DFT		0x00000002
-
-#define CONFIG_GAFR0_L_VAL	GAFR0_L_DFT
-#define CONFIG_GAFR0_U_VAL	GAFR0_U_DFT
-#define CONFIG_GAFR1_L_VAL	GAFR1_L_DFT
-#define CONFIG_GAFR1_U_VAL	GAFR1_U_DFT
-#define CONFIG_GAFR2_L_VAL	GAFR2_L_DFT
-#define CONFIG_GAFR2_U_VAL	GAFR2_U_DFT
-
-
-/*
- * Power Manager Sleep Status Register (PSSR)
- *
- * [6] = 0   OTG pad is not holding it's state
- * [5] = 1   Read Disable Hold: receivers of all gpio pins are disabled
- * [4] = 1   gpio pins are held in their sleep mode state
- * [3] = 0   The processor has not been placed in standby mode by
- *           configuring the PWRMODE register since STS was cleared
- *           by a reset or by software.
- * [2] = 1   nVDD_FAULT has been asserted and caused the processor to
- *           enter deep-sleep mode.
- * [1] = 1   nBATT_FAULT has been asserted and caused the processor to
- *           enter deep-sleep mode.
- * [0] = 1   The processor was placed in sleep mode by configuring the
- *           PWRMODE register.
- */
-
-#define CONFIG_PSSR_VAL		0x37
-
-
-/*********************************************************************
- * CONFIG PXA270 Chipselect settings                                 *
- *********************************************************************/
-
-/*
- * Memory settings
- *
- * This is the configuration for nCS1/0 -> PLD / flash
- * configuration for nCS1:
- * [31]    0    - Slower Device
- * [30:28] 001  - CS deselect to CS time: 1*(2*MemClk) = 20 ns
- * [27:24] 0010 - Address to data valid in bursts: (2+1)*MemClk = 30 ns
- * [23:20] 1011 - " for first access: (11+2)*MemClk = 130 ns
- * [19]    1    - 16 Bit bus width
- * [18:16] 011  - burst RAM or FLASH
- * configuration for nCS0 (J3 Flash):
- * [15]    0    - Slower Device
- * [14:12] 001  - CS deselect to CS time: 1*(2*MemClk) = 20 ns
- * [11:08] 0010 - Address to data valid in bursts: (2+1)*MemClk = 30 ns
- * [07:04] 1011 - " for first access: (11+2)*MemClk = 130 ns
- * [03]    0    - 32 Bit bus width
- * [02:00] 011  - burst RAM or FLASH
- */
-#if PHYCORE_PXA270_USE_K3FLASH == 0
-#define CONFIG_MSC0_VAL		0x128C1262
-#else
-/* configuration for nCS0 (K3 Flash):
- * [15]    0    - Slower Device
- * [14:12] 001  - CS deselect to CS time: 1*(2*MemClk) = 20 ns
- * [11:08] 0010 - Address to data valid in bursts: (2+1)*MemClk = 30 ns
- * [07:04] 1011 - " for first access: (11+2)*MemClk = 130 ns
- * [03]    0    - 32 Bit bus width
- * [02:00] 011  - burst RAM or FLASH
- */
-#define CONFIG_MSC0_VAL		0x128C12B3
-#endif
-
-/*
- * This is the configuration for nCS3/2
- * configuration for nCS3: POWER
- *
- * [31]    0    - Slower Device
- * [30:28] 111  - RRR3: CS deselect to CS time: 7*(2*MemClk) = 140 ns
- * [27:24] 1111 - RDN3: Address to data valid in bursts: (15+1)*MemClk = 160 ns
- * [23:20] 1111 - RDF3: Address for first access: (23+1)*MemClk = 240 ns
- * [19]    0    - 32 Bit bus width
- * [18:16] 100  - variable latency I/O
- * configuration for nCS2: PLD
- * [15]    0    - Slower Device
- * [14:12] 111  - RRR2: CS deselect to CS time: 7*(2*MemClk) = 140 ns
- * [11:08] 1111 - RDN2: Address to data valid in bursts: (15+1)*MemClk = 160 ns
- * [07:04] 1111 - RDF2: Address for first access: (23+1)*MemClk = 240 ns
- * [03]    1    - 16 Bit bus width
- * [02:00] 100  - variable latency I/O
- */
-#define CONFIG_MSC1_VAL		0x128c128c
-
-/*
- * This is the configuration for nCS5/4
- *
- * configuration for nCS5: LAN Controller
- * [31]    0    - Slower Device
- * [30:28] 001  - RRR5: CS deselect to CS time: 1*(2*MemClk) = 20 ns
- * [27:24] 0010 - RDN5: Address to data valid in bursts: (2+1)*MemClk = 30 ns
- * [23:20] 0011 - RDF5: Address for first access: (3+1)*MemClk = 40 ns
- * [19]    0    - 32 Bit bus width
- * [18:16] 100  - variable latency I/O
- * configuration for nCS4: USB
- * [15]    0    - Slower Device
- * [14:12] 111  - RRR4: CS deselect to CS time: 7*(2*MemClk) = 140 ns
- * [11:08] 1111 - RDN4: Address to data valid in bursts: (15+1)*MemClk = 160 ns
- * [07:04] 1111 - RDF4: Address for first access: (23+1)*MemClk = 240 ns
- * [03]    1    - 16 Bit bus width
- * [02:00] 100  - variable latency I/O
- */
-#define CONFIG_MSC2_VAL		0x1234128C
-
-/*********************************************************************
- * CONFIG PXA270 SDRAM settings                                      *
- *********************************************************************/
-
-#define CONFIG_DRAM_BASE	0xa0000000
-
-
-/* MDCNFG: SDRAM Configuration Register
- *
- * [31]      0	 - Stack1
- * [30]      0   - dcacx2
- * [20]      0   - reserved
- * [31:29]   000 - reserved
- * [28]      1	 - SA1111 compatiblity mode
- * [27]      1   - latch return data with return clock
- * [26]      0   - alternate addressing for pair 2/3
- * [25:24]   10  - timings
- * [23]      1   - internal banks in lower partition 2/3 (not used)
- * [22:21]   10  - row address bits for partition 2/3 (not used)
- * [20:19]   01  - column address bits for partition 2/3 (not used)
- * [18]      0   - SDRAM partition 2/3 width is 32 bit
- * [17]      0   - SDRAM partition 3 disabled
- * [16]      0   - SDRAM partition 2 disabled
- * [15]      0	 - Stack1
- * [14]      0   - dcacx0
- * [13]      0   - Stack0
- * [12]      0	 - SA1110 compatiblity mode
- * [11]      1   - always 1
- * [10]      0   - no alternate addressing for pair 0/1
- * [09:08]   10  - tRP=2*MemClk CL=2 tRCD=2*MemClk tRAS=5*MemClk tRC=8*MemClk
- * [7]       1   - 4 internal banks in lower partition pair
- * [06:05]   10  - 13 row address bits for partition 0/1
- * [04:03]   01  - 9 column address bits for partition 0/1
- * [02]      0   - SDRAM partition 0/1 width is 32 bit
- * [01]      0   - disable SDRAM partition 1
- * [00]      1   - enable  SDRAM partition 0
- */
-
-/* K4S561633*/
-#define CONFIG_MDCNFG_VAL	0x0AC90AC9
-
-/* MDREFR: SDRAM Refresh Control Register
- *
- * [31]    0     - ALTREFA
- * [30]    0     - ALTREFB
- * [29]    1     - K0DB4
- * [28]    0     - reserved
- * [27]    0     - reserved
- * [26]    0     - reserved
- * [25]    1     - K2FREE: not free running
- * [24]    0     - K1FREE: not free running
- * [23]    1     - K0FREE: not free running
- * [22]    0     - SLFRSH: self refresh disabled
- * [21]    0     - reserved
- * [20]    0     - APD: no auto power down
- * [19]    0     - K2DB2: SDCLK2 is MemClk
- * [18]    0     - K2RUN: disable SDCLK2
- * [17]    0     - K1DB2: SDCLK1 is MemClk
- * [16]    1     - K1RUN: enable SDCLK1
- * [15]    1     - E1PIN: SDRAM clock enable
- * [14]    1     - K0DB2: SDCLK0 is MemClk
- * [13]    0     - K0RUN: disable SDCLK0
- * [12]    0     - RESERVED
- * [11:00] 000000011000 - (64ms/8192)*MemClkFreq/32 = 24
- */
-#define CONFIG_MDREFR_VAL	0x2281C018
-
-/* MDMRS: Mode Register Set Configuration Register
- *
- * [31]      0       - reserved
- * [30:23]   00000000- MDMRS2: SDRAM2/3 MRS Value. (not used)
- * [22:20]   000     - MDCL2:  SDRAM2/3 Cas Latency.  (not used)
- * [19]      0       - MDADD2: SDRAM2/3 burst Type. Fixed to sequential.  (not used)
- * [18:16]   010     - MDBL2:  SDRAM2/3 burst Length. Fixed to 4.  (not used)
- * [15]      0       - reserved
- * [14:07]   00000000- MDMRS0: SDRAM0/1 MRS Value.
- * [06:04]   010     - MDCL0:  SDRAM0/1 Cas Latency.
- * [03]      0       - MDADD0: SDRAM0/1 burst Type. Fixed to sequential.
- * [02:00]   010     - MDBL0:  SDRAM0/1 burst Length. Fixed to 4.
- */
-#define CONFIG_MDMRS_VAL	0x00020022
-
-/*********************************************************************
- * CONFIG PXA270 Clock generation                                    *
- *********************************************************************/
-#define CONFIG_FLYCNFG_VAL	0x00010001
-#define CONFIG_SXCNFG_VAL	0x40044004
-#define CONFIG_CKEN		(CKEN_MEMC |  CKEN_OSTIMER)
-
-#if PHYCORE_PXA270_SPEED == 520
-#define CONFIG_CCCR		0x00000290	/* Memory Clock is f. Table;         N=2.5, L=16 => 16x13=208, 208x2,5=520 MHz */
-#elif PHYCORE_PXA270_SPEED == 260
-#define CONFIG_CCCR		0x02000288	/* Memory Clock is System-Bus Freq., N=2.5, L=8  =>  8x13=104, 104x2,5=260 MHz */
-#else
-#error You have specified an illegal speed.
-#endif
-
-/*********************************************************************
- * CONFIG PXA270 CF interface                                        *
- *********************************************************************/
-#define CONFIG_MECR_VAL		0x00000003
-#define CONFIG_MCMEM0_VAL	0x00010504
-#define CONFIG_MCMEM1_VAL	0x00010504
-#define CONFIG_MCATT0_VAL	0x00010504
-#define CONFIG_MCATT1_VAL	0x00010504
-#define CONFIG_MCIO0_VAL	0x00004715
-#define CONFIG_MCIO1_VAL	0x00004715
-
-#endif  /* __CONFIG_H */
diff --git a/arch/arm/boards/phytec-phycore-pxa270/env/init/mtdparts-nor b/arch/arm/boards/phytec-phycore-pxa270/env/init/mtdparts-nor
deleted file mode 100644
index 4423943211..0000000000
--- a/arch/arm/boards/phytec-phycore-pxa270/env/init/mtdparts-nor
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-mtdparts="512k(nor0.barebox),256k(nor0.bareboxenv),4M(nor0.kernel),-(nor0.root)"
-kernelname="physmap-flash.0"
-
-mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/phytec-phycore-pxa270/env/nv/linux.bootargs.console b/arch/arm/boards/phytec-phycore-pxa270/env/nv/linux.bootargs.console
deleted file mode 100644
index 476b1fbe49..0000000000
--- a/arch/arm/boards/phytec-phycore-pxa270/env/nv/linux.bootargs.console
+++ /dev/null
@@ -1 +0,0 @@
-console=ttyS0,115200
diff --git a/arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S b/arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S
deleted file mode 100644
index f8f1a037e0..0000000000
--- a/arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S
+++ /dev/null
@@ -1,448 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-
-/*
- * This was originally from the Lubbock u-boot port.
- *
- * Most of this taken from Redboot hal_platform_setup.h with cleanup
- *
- * NOTE: I haven't clean this up considerably, just enough to get it
- * running. See hal_platform_setup.h for the source. See
- * board/cradle/lowlevel_init.S for another PXA250 setup that is
- * much cleaner.
- */
-
-#include <config.h>
-#include <linux/sizes.h>
-#include <mach/pxa/pxa-regs.h>
-#include <mach/pxa/regs-ost.h>
-#include <mach/pxa/regs-intc.h>
-#include <asm/barebox-arm-head.h>
-#include "config.h"
-
-#define GPSR0		0x40E00018	/* GPIO Pin Output Set Register GPIO <31:00> */
-#define GPSR1		0x40E0001C	/* GPIO Pin Output Set Register GPIO <63:32> */
-#define GPSR2		0x40E00020	/* GPIO Pin Output Set Register GPIO <80:64> */
-
-#define GPCR0		0x40E00024	/* GPIO Pin Output Clear Register GPIO <31:00> */
-#define GPCR1		0x40E00028	/* GPIO Pin Output Clear Register GPIO <63:32> */
-#define GPCR2		0x40E0002C	/* GPIO Pin Output Clear Register GPIO <80:64> */
-
-#define GPDR0		0x40E0000C	/* GPIO Pin Direction Register GPIO <31:0o> */
-#define GPDR1		0x40E00010	/* GPIO Pin Direction Register GPIO <63:32> */
-#define GPDR2		0x40E00014	/* GPIO Pin Direction Register GPIO <80:64> */
-
-#define GAFR0_L		0x40E00054	/* GPIO Alternate Function Select Register GPIO <15:00> */
-#define GAFR0_U		0x40E00058	/* GPIO Alternate Function Select Register GPIO <31:16> */
-#define GAFR1_L		0x40E0005C	/* GPIO Alternate Function Select Register GPIO <47:32> */
-#define GAFR1_U		0x40E00060	/* GPIO Alternate Function Select Register GPIO <63:48> */
-#define GAFR2_L		0x40E00064	/* GPIO Alternate Function Select Register GPIO <79:64> */
-#define GAFR2_U		0x40E00068	/* GPIO Alternate Function Select Register GPIO <95:80> */
-
-/*
- *	Memory setup
- */
-.globl barebox_arm_reset_vector
-barebox_arm_reset_vector:
-		bl	arm_cpu_lowlevel_init
-
-		@ Preserve r8/r7 i.e. kernel entry values
-
-		@ Data cache might be active.
-		@ Be sure to flush kernel binary out of the cache,
-		@ whatever state it is, before it is turned off.
-		@ This is done by fetching through currently executed
-		@ memory to be sure we hit the same cache.
-		bic	r2, pc, #0x1f
-		add	r3, r2, #0x10000	@ 64 kb is quite enough...
-1:		ldr	r0, [r2], #32
-		teq	r2, r3
-		bne	1b
-		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
-		mcr	p15, 0, r0, c7, c7, 0	@ flush I & D caches
-
-		@ disabling MMU and caches
-		mrc	p15, 0, r0, c1, c0, 0	@ read control reg
-		bic	r0, r0, #0x05		@ clear DC, MMU
-		bic	r0, r0, #0x1000		@ clear Icache
-		mcr	p15, 0, r0, c1, c0, 0
-	/* set output */
-	ldr	r0, =GPSR0
-	ldr	r1, =CONFIG_GPSR0_VAL
-	str	r1, [r0]
-
-	ldr	r0, =GPSR1
-	ldr	r1, =CONFIG_GPSR1_VAL
-	str	r1, [r0]
-
-	ldr	r0, =GPSR2
-	ldr	r1, =CONFIG_GPSR2_VAL
-	str	r1, [r0]
-
-	/* set direction */
-	ldr	r0, =GPDR0
-	ldr	r1, =CONFIG_GPDR0_VAL
-	str	r1, [r0]
-
-	ldr	r0, =GPDR1
-	ldr	r1, =CONFIG_GPDR1_VAL
-	str	r1, [r0]
-
-	ldr	r0, =GPDR2
-	ldr	r1, =CONFIG_GPDR2_VAL
-	str	r1, [r0]
-
-	/* alternate function */
-	ldr	r0, =GAFR0_L
-	ldr	r1, =CONFIG_GAFR0_L_VAL
-	str	r1, [r0]
-
-	ldr	r0, =GAFR0_U
-	ldr	r1, =CONFIG_GAFR0_U_VAL
-	str	r1, [r0]
-
-	ldr	r0, =GAFR1_L
-	ldr	r1, =CONFIG_GAFR1_L_VAL
-	str	r1, [r0]
-
-	ldr	r0, =GAFR1_U
-	ldr	r1, =CONFIG_GAFR1_U_VAL
-	str	r1, [r0]
-
-	ldr	r0, =GAFR2_L
-	ldr	r1, =CONFIG_GAFR2_L_VAL
-	str	r1, [r0]
-
-	ldr	r0, =GAFR2_U
-	ldr	r1, =CONFIG_GAFR2_U_VAL
-	str	r1, [r0]
-
-	/* enable GPIO pins */
-	ldr	r0, =PSSR
-	ldr	r1, =CONFIG_PSSR_VAL
-	str	r1, [r0]
-
-	/* -------------------------------------------------------------------- */
-	/* Enable memory interface						*/
-	/*									*/
-	/* The sequence below is based on the recommended init steps		*/
-	/* detailed in the Intel PXA250 Operating Systems Developers Guide,	*/
-	/* Chapter 10.								*/
-	/* -------------------------------------------------------------------- */
-
-	/* -------------------------------------------------------------------- */
-	/* Step 1: Wait for at least 200 microsedonds to allow internal		*/
-	/*	   clocks to settle. Only necessary after hard reset...		*/
-	/*	   FIXME: can be optimized later				*/
-	/* -------------------------------------------------------------------- */
-
-	ldr	r3, =OSCR			/* reset the OS Timer Count to zero */
-	mov	r2, #0
-	str	r2, [r3]
-	ldr	r4, =0x300			/* really 0x2E1 is about 200usec, */
-						/* so 0x300 should be plenty */
-1:
-	ldr	r2, [r3]
-	cmp	r4, r2
-	bgt	1b
-
-	cmp	pc, #0xa0000000
-	bls	mem_init
-	cmp	pc, #0xb0000000
-	bhi	mem_init
-	b	skip_mem_init
-
-mem_init:
-	ldr	r1, =MDCNFG			/* get memory controller base addr. */
-
-	/* -------------------------------------------------------------------- */
-	/* Step 2a: Initialize Asynchronous static memory controller		*/
-	/* -------------------------------------------------------------------- */
-
-	/* MSC registers: timing, bus width, mem type */
-
-	/* MSC0: nCS(0,1) */
-	ldr	r2, =CONFIG_MSC0_VAL
-	str	r2, [r1, #MSC0_OFFSET]
-	ldr	r2, [r1, #MSC0_OFFSET]		/* read back to ensure */
-						/* that data latches */
-	/* MSC1: nCS(2,3) */
-	ldr	r2, =CONFIG_MSC1_VAL
-	str	r2, [r1, #MSC1_OFFSET]
-	ldr	r2, [r1, #MSC1_OFFSET]
-
-	/* MSC2: nCS(4,5) */
-	ldr	r2, =CONFIG_MSC2_VAL
-	str	r2, [r1, #MSC2_OFFSET]
-	ldr	r2, [r1, #MSC2_OFFSET]
-
-	/* -------------------------------------------------------------------- */
-	/* Step 2b: Initialize Card Interface					*/
-	/* -------------------------------------------------------------------- */
-
-	/* MECR: Memory Expansion Card Register	*/
-	ldr	r2, =CONFIG_MECR_VAL
-	str	r2, [r1, #MECR_OFFSET]
-	ldr	r2, [r1, #MECR_OFFSET]
-
-	/* MCMEM0: Card Interface slot 0 timing	*/
-	ldr	r2, =CONFIG_MCMEM0_VAL
-	str	r2, [r1, #MCMEM0_OFFSET]
-	ldr	r2, [r1, #MCMEM0_OFFSET]
-
-	/* MCMEM1: Card Interface slot 1 timing	*/
-	ldr	r2, =CONFIG_MCMEM1_VAL
-	str	r2, [r1, #MCMEM1_OFFSET]
-	ldr	r2, [r1, #MCMEM1_OFFSET]
-
-	/* MCATT0: Card Interface Attribute Space Timing, slot 0 */
-	ldr	r2, =CONFIG_MCATT0_VAL
-	str	r2, [r1, #MCATT0_OFFSET]
-	ldr	r2, [r1, #MCATT0_OFFSET]
-
-	/* MCATT1: Card Interface Attribute Space Timing, slot 1 */
-	ldr	r2, =CONFIG_MCATT1_VAL
-	str	r2, [r1, #MCATT1_OFFSET]
-	ldr	r2, [r1, #MCATT1_OFFSET]
-
-	/* MCIO0: Card Interface I/O Space Timing, slot 0 */
-	ldr	r2, =CONFIG_MCIO0_VAL
-	str	r2, [r1, #MCIO0_OFFSET]
-	ldr	r2, [r1, #MCIO0_OFFSET]
-
-	/* MCIO1: Card Interface I/O Space Timing, slot 1 */
-	ldr	r2, =CONFIG_MCIO1_VAL
-	str	r2, [r1, #MCIO1_OFFSET]
-	ldr	r2, [r1, #MCIO1_OFFSET]
-
-	/* -------------------------------------------------------------------- */
-	/* Step 2c: Write FLYCNFG FIXME: what's that???				*/
-	/* -------------------------------------------------------------------- */
-	ldr	r2, =CONFIG_FLYCNFG_VAL
-	str	r2, [r1, #FLYCNFG_OFFSET]
-	str	r2, [r1, #FLYCNFG_OFFSET]
-
-	/* -------------------------------------------------------------------- */
-	/* Step 2d: Initialize Timing for Sync Memory (SDCLK0)			*/
-	/* -------------------------------------------------------------------- */
-
-	/* Before accessing MDREFR we need a valid DRI field, so we set	*/
-	/* this to power on defaults + DRI field. */
-
-	ldr	r4, [r1, #MDREFR_OFFSET]
-	ldr	r2, =0xFFF
-	bic	r4, r4, r2
-
-	ldr	r3, =CONFIG_MDREFR_VAL
-	and	r3, r3, r2
-
-	orr	r4, r4, r3
-	str	r4, [r1, #MDREFR_OFFSET]	/* write back MDREFR */
-
-	orr	r4, r4, #MDREFR_K0RUN
-	orr	r4, r4, #MDREFR_K0DB4
-	orr	r4, r4, #MDREFR_K0FREE
-	orr	r4, r4, #MDREFR_K2FREE
-	orr	r4, r4, #MDREFR_K0DB2
-	orr	r4, r4, #MDREFR_K1DB2
-	bic	r4, r4, #MDREFR_K1FREE
-
-	str	r4, [r1, #MDREFR_OFFSET]	/* write back MDREFR */
-	ldr	r4, [r1, #MDREFR_OFFSET]
-
-	/* Note: preserve the mdrefr value in r4 */
-
-
-	/* -------------------------------------------------------------------- */
-	/* Step 3: Initialize Synchronous Static Memory (Flash/Peripherals)	*/
-	/* -------------------------------------------------------------------- */
-
-	/* Initialize SXCNFG register. Assert the enable bits */
-
-	/*
-	 * Write SXMRS to cause an MRS command to all enabled banks of
-	 * synchronous static memory. Note that SXLCR need not be
-	 * written at this time.
-	 */
-	ldr	r2, =CONFIG_SXCNFG_VAL
-	str	r2, [r1, #SXCNFG_OFFSET]
-
-	/* -------------------------------------------------------------------- */
-	/* Step 4: Initialize SDRAM						*/
-	/* -------------------------------------------------------------------- */
-	bic	r4, r4, #(MDREFR_K1FREE | MDREFR_K0FREE)
-
-	orr	r4, r4, #MDREFR_K1RUN
-	orr	r4, r4, #MDREFR_K2FREE
-	bic	r4, r4, #MDREFR_K2DB2
-	str	r4, [r1, #MDREFR_OFFSET]
-	ldr	r4, [r1, #MDREFR_OFFSET]
-
-	bic	r4, r4, #MDREFR_SLFRSH
-	str	r4, [r1, #MDREFR_OFFSET]
-	ldr	r4, [r1, #MDREFR_OFFSET]
-
-	orr	r4, r4, #MDREFR_E1PIN
-	str	r4, [r1, #MDREFR_OFFSET]
-	ldr	r4, [r1, #MDREFR_OFFSET]
-
-	nop
-	nop
-
-
-	/*
-	 * Step 4d: write MDCNFG with MDCNFG:DEx deasserted
-	 * (set to 0), to configure but not enable each SDRAM
-	 * partition pair.
-	 */
-	ldr	r4, =CONFIG_MDCNFG_VAL
-	bic	r4, r4,	#(MDCNFG_DE0|MDCNFG_DE1)
-	bic	r4, r4,	#(MDCNFG_DE2|MDCNFG_DE3)
-
-	str	r4, [r1, #MDCNFG_OFFSET]	/* write back MDCNFG */
-	ldr	r4, [r1, #MDCNFG_OFFSET]
-
-
-	/*
-	 * Step 4e: Wait for the clock to the SDRAMs to stabilize,
-	 * 100..200 usec.
-	 */
-	ldr	r3, =OSCR			/* reset the OS Timer Count to zero */
-	mov	r2, #0
-	str	r2, [r3]
-	ldr	r4, =0x300			/* really 0x2E1 is about 200 usec,  */
-						/* so 0x300 should be plenty */
-1:
-	ldr	r2, [r3]
-	cmp	r4, r2
-	bgt	1b
-
-
-	/* Step 4f: Trigger a number (usually 8) refresh cycles by		*/
-	/*		attempting non-burst read or write accesses to disabled */
-	/*		SDRAM, as commonly specified in the power up sequence   */
-	/*		documented in SDRAM data sheets. The address(es) used   */
-	/*		for this purpose must not be cacheable.			*/
-	ldr	r3, =CONFIG_DRAM_BASE
-	str	r2, [r3]
-	str	r2, [r3]
-	str	r2, [r3]
-	str	r2, [r3]
-	str	r2, [r3]
-	str	r2, [r3]
-	str	r2, [r3]
-	str	r2, [r3]
-
-
-	/*
-	 * Step 4g: Write MDCNFG with enable bits asserted
-	 * (MDCNFG:DEx set to 1)
-	 */
-	ldr	r3, [r1, #MDCNFG_OFFSET]
-	mov	r4, r3
-	orr	r3, r3,	#MDCNFG_DE0
-	str	r3, [r1, #MDCNFG_OFFSET]
-	mov	r0, r3
-
-	/* Step 4h: Write MDMRS. */
-	ldr	r2, =CONFIG_MDMRS_VAL
-	str	r2, [r1, #MDMRS_OFFSET]
-
-	/* enable APD */
-	ldr	r3, [r1, #MDREFR_OFFSET]
-	orr	r3, r3, #MDREFR_APD
-	str	r3, [r1, #MDREFR_OFFSET]
-
-	/* We are finished with Intel's memory controller initialisation */
-skip_mem_init:
-
-wakeup:
-	/* Are we waking from sleep? */
-	ldr	r0, =RCSR
-	ldr	r1, [r0]
-	and	r1, r1, #(RCSR_GPR | RCSR_SMR | RCSR_WDR | RCSR_HWR)
-	str	r1, [r0]
-	teq	r1, #RCSR_SMR
-
-	bne	initirqs
-
-	ldr	r0, =PSSR
-	mov	r1, #PSSR_PH
-	str	r1, [r0]
-
-	/* if so, resume at PSPR */
-	ldr	r0, =PSPR
-	ldr	r1, [r0]
-	mov	pc, r1
-
-	/* -------------------------------------------------------------------- */
-	/* Disable (mask) all interrupts at interrupt controller		*/
-	/* -------------------------------------------------------------------- */
-
-initirqs:
-	mov	r1, #0		/* clear int. level register (IRQ, not FIQ) */
-	ldr	r2, =ICLR
-	str	r1, [r2]
-
-	ldr	r2, =ICMR	/* mask all interrupts at the controller */
-	str	r1, [r2]
-
-	/* -------------------------------------------------------------------- */
-	/* Clock initialisation							*/
-	/* -------------------------------------------------------------------- */
-
-initclks:
-	/* Disable the peripheral clocks, and set the core clock frequency */
-
-	/* Turn Off on-chip peripheral clocks (except for memory) */
-	/* for re-configuration. */
-	ldr	r1, =CKEN
-	ldr	r2, =CONFIG_CKEN
-	str	r2, [r1]
-
-	/* ... and write the core clock config register */
-	ldr	r2, =CONFIG_CCCR
-	ldr	r1, =CCCR
-	str	r2, [r1]
-
-	/* Turn on turbo mode */
-	mrc	p14, 0, r2, c6, c0, 0
-	orr	r2, r2, #0xB			/* Turbo, Fast-Bus, Freq change */
-	mcr	p14, 0, r2, c6, c0, 0
-
-	/* Re-write MDREFR */
-	ldr	r1, =MDCNFG
-	ldr	r2, [r1, #MDREFR_OFFSET]
-	str	r2, [r1, #MDREFR_OFFSET]
-
-	/* enable the 32Khz oscillator for RTC and PowerManager */
-	ldr	r1, =OSCC
-	mov	r2, #OSCC_OON
-	str	r2, [r1]
-
-	/* Interrupt init: Mask all interrupts */
-	ldr	r0, =ICMR			/* enable no sources */
-	mov	r1, #0
-	str	r1, [r0]
-	/* FIXME */
-
-#ifdef NODEBUG
-	/* Disable software and data breakpoints */
-	mov	r0, #0
-	mcr	p15, 0, r0, c14, c8, 0		/* ibcr0 */
-	mcr	p15, 0, r0, c14, c9, 0		/* ibcr1 */
-	mcr	p15, 0, r0, c14, c4, 0		/* dbcon */
-
-	/* Enable all debug functionality */
-	mov	r0, #0x80000000
-	mcr	p14, 0, r0, c10, c0, 0		/* dcsr */
-#endif
-
-	/* -------------------------------------------------------------------- */
-	/* End lowlevel_init							*/
-	/* -------------------------------------------------------------------- */
-
-endlowlevel_init:
-	mov	r0, #0xa0000000
-	mov	r1, #SZ_64M
-	mov	r2, #0
-	b	barebox_arm_entry
diff --git a/arch/arm/boards/zylonite/Makefile b/arch/arm/boards/zylonite/Makefile
deleted file mode 100644
index da63d2625f..0000000000
--- a/arch/arm/boards/zylonite/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += board.o
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/zylonite/board.c b/arch/arm/boards/zylonite/board.c
deleted file mode 100644
index 04cb34754c..0000000000
--- a/arch/arm/boards/zylonite/board.c
+++ /dev/null
@@ -1,93 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2014 Robert Jarzmik <robert.jarzmik@free.fr>
-
-#include <common.h>
-
-#include <driver.h>
-#include <environment.h>
-#include <fs.h>
-#include <gpio.h>
-#include <init.h>
-#include <led.h>
-#include <platform_data/eth-smc91111.h>
-#include <platform_data/mtd-nand-mrvl.h>
-#include <pwm.h>
-#include <linux/clk.h>
-#include <linux/clkdev.h>
-#include <linux/sizes.h>
-
-#include <mach/pxa/devices.h>
-#include <mach/pxa/mfp-pxa3xx.h>
-#include <mach/pxa/pxa-regs.h>
-
-#include <asm/armlinux.h>
-#include <asm/io.h>
-#include <asm/mmu.h>
-#include <asm/mach-types.h>
-
-static struct smc91c111_pdata smsc91x_pdata;
-static struct mrvl_nand_platform_data nand_pdata = {
-	.keep_config = 0,
-	.flash_bbt = 1,
-};
-
-static mfp_cfg_t pxa310_mfp_cfg[] = {
-	/* FFUART */
-	MFP_CFG_LPM(GPIO99,  AF1, FLOAT),	/* GPIO99_UART1_RXD */
-	MFP_CFG_LPM(GPIO100, AF1, FLOAT),	/* GPIO100_UART1_RXD */
-	MFP_CFG_LPM(GPIO101, AF1, FLOAT),	/* GPIO101_UART1_CTS */
-	MFP_CFG_LPM(GPIO106, AF1, FLOAT),	/* GPIO106_UART1_CTS */
-
-	/* Ethernet */
-	MFP_CFG(GPIO2,  AF1),			/* GPIO2_nCS3 */
-};
-
-static int zylonite_devices_init(void)
-{
-	struct clk *clk;
-
-	armlinux_set_architecture(MACH_TYPE_ZYLONITE);
-	pxa_add_uart((void *)0x40100000, 0);
-	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL,
-			   0x14000300, 0x100000, IORESOURCE_MEM,
-			   &smsc91x_pdata);
-	clk = clk_get_sys("nand", NULL);
-	if (!IS_ERR(clk))
-		clkdev_add_physbase(clk, 0x43100000, NULL);
-	add_generic_device("mrvl_nand", DEVICE_ID_DYNAMIC, NULL,
-			   0x43100000, 0x1000, IORESOURCE_MEM, &nand_pdata);
-	devfs_add_partition("nand0", SZ_1M, SZ_256K, DEVFS_PARTITION_FIXED,
-			    "env0");
-	return 0;
-}
-device_initcall(zylonite_devices_init);
-
-static int zylonite_coredevice_init(void)
-{
-	barebox_set_model("Zylonite");
-	barebox_set_hostname("zylonite");
-
-	mfp_init();
-	if (cpu_is_pxa310())
-		pxa3xx_mfp_config(pxa310_mfp_cfg, ARRAY_SIZE(pxa310_mfp_cfg));
-	CKENA |= CKEN_NAND | CKEN_SMC | CKEN_FFUART | CKEN_GPIO;
-	/*
-	 * Configure Ethernet controller :
-	 * MCS1: setup VLIO on nCS3, with 15 DF_SCLK cycles (max) for hold,
-	 *       setup and assertion times
-	 * CSADRCFG3: DFI AA/D multiplexing VLIO, addr split at bit <16>, full
-	 * latched mode, 7 DF_SCLK cycles (max) for nLUA and nLLA.
-	 */
-	MSC1 = 0x7ffc0000 | (MSC1 & 0x0000ffff);
-	CSADRCFG3 = 0x003e080b;
-
-	return 0;
-}
-coredevice_initcall(zylonite_coredevice_init);
-
-static int zylonite_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0x80000000, 64 * 1024 * 1024);
-	return 0;
-}
-mem_initcall(zylonite_mem_init);
diff --git a/arch/arm/boards/zylonite/env/boot/nand-ubi b/arch/arm/boards/zylonite/env/boot/nand-ubi
deleted file mode 100644
index 2231738224..0000000000
--- a/arch/arm/boards/zylonite/env/boot/nand-ubi
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/dev/nand0.kernel"
-#global.bootm.oftree="/env/oftree"
-global.linux.bootargs.dyn.root="root=ubi0:linux_root ubi.mtd=nand.root rootfstype=ubifs"
diff --git a/arch/arm/boards/zylonite/env/init/mtdparts-nand b/arch/arm/boards/zylonite/env/init/mtdparts-nand
deleted file mode 100644
index 749318b59e..0000000000
--- a/arch/arm/boards/zylonite/env/init/mtdparts-nand
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-mtdparts="128k@0(TIMH)ro,128k@128k(OBMI)ro,768k@256k(barebox),256k@1024k(barebox-env),12M@1280k(kernel),38016k@13568k(root)"
-kernelname="pxa3xx_nand-0"
-
-mtdparts-add -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/zylonite/env/nv/hostname b/arch/arm/boards/zylonite/env/nv/hostname
deleted file mode 100644
index 6e6d865eda..0000000000
--- a/arch/arm/boards/zylonite/env/nv/hostname
+++ /dev/null
@@ -1 +0,0 @@
-zylonite
diff --git a/arch/arm/boards/zylonite/env/nv/linux.bootargs.base b/arch/arm/boards/zylonite/env/nv/linux.bootargs.base
deleted file mode 100644
index 317f8b16a1..0000000000
--- a/arch/arm/boards/zylonite/env/nv/linux.bootargs.base
+++ /dev/null
@@ -1 +0,0 @@
-ram=64M
diff --git a/arch/arm/boards/zylonite/env/nv/linux.bootargs.console b/arch/arm/boards/zylonite/env/nv/linux.bootargs.console
deleted file mode 100644
index 476b1fbe49..0000000000
--- a/arch/arm/boards/zylonite/env/nv/linux.bootargs.console
+++ /dev/null
@@ -1 +0,0 @@
-console=ttyS0,115200
diff --git a/arch/arm/boards/zylonite/lowlevel.c b/arch/arm/boards/zylonite/lowlevel.c
deleted file mode 100644
index 972fd34761..0000000000
--- a/arch/arm/boards/zylonite/lowlevel.c
+++ /dev/null
@@ -1,12 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-
-void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0x80000000, SZ_64M, NULL);
-}
diff --git a/arch/arm/configs/lubbock_defconfig b/arch/arm/configs/lubbock_defconfig
deleted file mode 100644
index 78f2236648..0000000000
--- a/arch/arm/configs/lubbock_defconfig
+++ /dev/null
@@ -1,100 +0,0 @@
-CONFIG_ARCH_PXA=y
-CONFIG_AEABI=y
-CONFIG_ARM_BOARD_APPEND_ATAG=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-# CONFIG_BANNER is not set
-CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
-CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x80000
-CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_EXPERIMENTAL=y
-CONFIG_MODULES=y
-CONFIG_KALLSYMS=y
-CONFIG_PROMPT="lubbock-barebox:"
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/lubbock/env"
-CONFIG_RESET_SOURCE=y
-CONFIG_CMD_DMESG=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADS=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_SAVES=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_UBIFORMAT=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_POWEROFF=y
-CONFIG_CMD_LSMOD=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_OFDEVICE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_DRIVER_SERIAL_PXA=y
-CONFIG_DRIVER_NET_SMC91111=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_AMD is not set
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_MTD_UBI=y
-CONFIG_MCI=y
-CONFIG_MCI_PXA=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_KEYBOARD_GPIO=y
-CONFIG_GENERIC_PHY=y
-CONFIG_FS_CRAMFS=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_FS_UBIFS=y
-CONFIG_FS_UBIFS_COMPRESSION_LZO=y
-CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
-CONFIG_BZLIB=y
diff --git a/arch/arm/configs/mainstone_defconfig b/arch/arm/configs/mainstone_defconfig
deleted file mode 100644
index d452885e6d..0000000000
--- a/arch/arm/configs/mainstone_defconfig
+++ /dev/null
@@ -1,103 +0,0 @@
-CONFIG_ARCH_PXA=y
-CONFIG_ARCH_PXA27X=y
-CONFIG_AEABI=y
-CONFIG_ARM_BOARD_APPEND_ATAG=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-# CONFIG_BANNER is not set
-CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
-CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x80000
-CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_EXPERIMENTAL=y
-CONFIG_MODULES=y
-CONFIG_KALLSYMS=y
-CONFIG_PROMPT="mainstone-barebox:"
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mainstone/env"
-CONFIG_RESET_SOURCE=y
-CONFIG_CMD_DMESG=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADS=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_SAVES=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_UBIFORMAT=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_POWEROFF=y
-CONFIG_CMD_LSMOD=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_OFDEVICE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_DRIVER_SERIAL_PXA=y
-CONFIG_DRIVER_NET_SMC91111=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_AMD is not set
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_MTD_UBI=y
-CONFIG_MCI=y
-CONFIG_MCI_PXA=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_KEYBOARD_GPIO=y
-CONFIG_GENERIC_PHY=y
-CONFIG_FS_CRAMFS=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_FS_UBIFS=y
-CONFIG_FS_UBIFS_COMPRESSION_LZO=y
-CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
-CONFIG_BZLIB=y
diff --git a/arch/arm/configs/mioa701_defconfig b/arch/arm/configs/mioa701_defconfig
deleted file mode 100644
index 991fca0d7b..0000000000
--- a/arch/arm/configs/mioa701_defconfig
+++ /dev/null
@@ -1,104 +0,0 @@
-CONFIG_ARCH_PXA=y
-CONFIG_ARCH_PXA27X=y
-CONFIG_AEABI=y
-CONFIG_ARM_BOARD_APPEND_ATAG=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-# CONFIG_BANNER is not set
-CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
-CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x80000
-CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_EXPERIMENTAL=y
-CONFIG_MODULES=y
-CONFIG_KALLSYMS=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_FLEXIBLE_BOOTARGS=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mioa701/env"
-CONFIG_RESET_SOURCE=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOT=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADS=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_SAVES=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_AUTOMOUNT=y
-CONFIG_CMD_UBIFORMAT=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_GLOBAL=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_BASENAME=y
-CONFIG_CMD_DIRNAME=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_READLINK=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_GETOPT=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_POWEROFF=y
-CONFIG_CMD_LSMOD=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_OFDEVICE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_DRIVER_SERIAL_PXA=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_MTD_RAW_DEVICE=y
-CONFIG_MTD_DOCG3=y
-CONFIG_MTD_UBI=y
-CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_SERIAL=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_PXA=y
-CONFIG_MCI=y
-CONFIG_MCI_PXA=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_KEYBOARD_GPIO=y
-CONFIG_FS_CRAMFS=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_FS_UBIFS=y
-CONFIG_FS_UBIFS_COMPRESSION_LZO=y
-CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
-CONFIG_BZLIB=y
-CONFIG_BMP=y
-CONFIG_PNG=y
-CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/phytec-phycore-pxa270_defconfig b/arch/arm/configs/phytec-phycore-pxa270_defconfig
deleted file mode 100644
index 370902c3c1..0000000000
--- a/arch/arm/configs/phytec-phycore-pxa270_defconfig
+++ /dev/null
@@ -1,60 +0,0 @@
-CONFIG_ARCH_PXA=y
-CONFIG_ARCH_PXA27X=y
-CONFIG_MACH_PCM027=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycore-pxa270/env"
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_DRIVER_SERIAL_PXA=y
-CONFIG_DRIVER_NET_SMC91111=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_PXA=y
-CONFIG_FS_TFTP=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/zylonite310_defconfig b/arch/arm/configs/zylonite310_defconfig
deleted file mode 100644
index cdbd135081..0000000000
--- a/arch/arm/configs/zylonite310_defconfig
+++ /dev/null
@@ -1,104 +0,0 @@
-CONFIG_ARCH_PXA=y
-CONFIG_ARCH_PXA3XX=y
-CONFIG_AEABI=y
-CONFIG_ARM_BOARD_APPEND_ATAG=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-# CONFIG_BANNER is not set
-CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
-CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x80000
-CONFIG_MALLOC_SIZE=0x800000
-CONFIG_EXPERIMENTAL=y
-CONFIG_MODULES=y
-CONFIG_KALLSYMS=y
-CONFIG_PROMPT="zylonite-barebox:"
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/zylonite/env"
-CONFIG_RESET_SOURCE=y
-CONFIG_DEFAULT_LOGLEVEL=8
-CONFIG_CMD_DMESG=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADS=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_SAVES=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_UBIFORMAT=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_CMP=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_POWEROFF=y
-CONFIG_CMD_2048=y
-CONFIG_CMD_LSMOD=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_OFDEVICE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_DRIVER_SERIAL_PXA=y
-CONFIG_DRIVER_NET_SMC91111=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_NAND=y
-CONFIG_NAND_MRVL_NFC=y
-CONFIG_MTD_UBI=y
-CONFIG_MCI=y
-CONFIG_KEYBOARD_GPIO=y
-CONFIG_PWM=y
-# CONFIG_PINCTRL is not set
-CONFIG_FS_CRAMFS=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_FS_UBIFS=y
-CONFIG_FS_UBIFS_COMPRESSION_LZO=y
-CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
-CONFIG_BZLIB=y
-CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/include/asm/mach-types.h b/arch/arm/include/asm/mach-types.h
index 3b902aa021..259dc9568a 100644
--- a/arch/arm/include/asm/mach-types.h
+++ b/arch/arm/include/asm/mach-types.h
@@ -77,18 +77,6 @@ extern unsigned int __machine_arch_type;
 #define MACH_TYPE_PCAAXS1              4526
 #define MACH_TYPE_PFLA03               4575
 
-#ifdef CONFIG_ARCH_LUBBOCK
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_LUBBOCK
-# endif
-# define machine_is_lubbock()	(machine_arch_type == MACH_TYPE_LUBBOCK)
-#else
-# define machine_is_lubbock()	(0)
-#endif
-
 #ifdef CONFIG_ARCH_VERSATILE_PB
 # ifdef machine_arch_type
 #  undef machine_arch_type
@@ -113,18 +101,6 @@ extern unsigned int __machine_arch_type;
 # define machine_is_csb337()	(0)
 #endif
 
-#ifdef CONFIG_MACH_MAINSTONE
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_MAINSTONE
-# endif
-# define machine_is_mainstone()	(machine_arch_type == MACH_TYPE_MAINSTONE)
-#else
-# define machine_is_mainstone()	(0)
-#endif
-
 #ifdef CONFIG_MACH_NOMADIK
 # ifdef machine_arch_type
 #  undef machine_arch_type
@@ -161,18 +137,6 @@ extern unsigned int __machine_arch_type;
 # define machine_is_at91rm9200ek()	(0)
 #endif
 
-#ifdef CONFIG_MACH_PCM027
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_PCM027
-# endif
-# define machine_is_pcm027()	(machine_arch_type == MACH_TYPE_PCM027)
-#else
-# define machine_is_pcm027()	(0)
-#endif
-
 #ifdef CONFIG_MACH_AT91SAM9261EK
 # ifdef machine_arch_type
 #  undef machine_arch_type
@@ -221,30 +185,6 @@ extern unsigned int __machine_arch_type;
 # define machine_is_at91sam9263ek()	(0)
 #endif
 
-#ifdef CONFIG_MACH_ZYLONITE
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_ZYLONITE
-# endif
-# define machine_is_zylonite()	(machine_arch_type == MACH_TYPE_ZYLONITE)
-#else
-# define machine_is_zylonite()	(0)
-#endif
-
-#ifdef CONFIG_MACH_MIOA701
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_MIOA701
-# endif
-# define machine_is_mioa701()	(machine_arch_type == MACH_TYPE_MIOA701)
-#else
-# define machine_is_mioa701()	(0)
-#endif
-
 #ifdef CONFIG_MACH_PM9263
 # ifdef machine_arch_type
 #  undef machine_arch_type
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index a506c8e892..53becd51d4 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -2,14 +2,6 @@
 
 if ARCH_PXA
 
-config ARCH_TEXT_BASE
-	hex
-	default 0xa0000000 if MACH_MIOA701
-	default 0xa3f00000 if MACH_PCM027
-	default 0xa3d00000 if MACH_LUBBOCK
-	default 0xa3d00000 if MACH_MAINSTONE
-	default 0x83f00000 if MACH_ZYLONITE
-
 # ----------------------------------------------------------
 
 config ARCH_PXA2XX
@@ -41,83 +33,4 @@ config ARCH_PXA3XX
 
 endchoice
 
-# ----------------------------------------------------------
-
-if ARCH_PXA25X
-
-choice
-	prompt "PXA25x Board Type"
-	bool
-
-config MACH_LUBBOCK
-	bool "Lubbock board"
-	select PWM
-	help
-	  Say Y here if you are using a Lubbock board
-endchoice
-
-endif
-
-# ----------------------------------------------------------
-
-if ARCH_PXA27X
-
-choice
-	prompt "PXA27x Board Type"
-	bool
-
-config MACH_MAINSTONE
-	bool "Mainstone board"
-	select PWM
-	help
-	  Say Y here if you are using a Mainstone board
-config MACH_MIOA701
-	bool "Mitac Mio A701"
-	select PWM
-	select POLLER
-	help
-	  Say Y here if you are using a Mitac Mio A701 smartphone
-
-config MACH_PCM027
-	bool "Phytec phyCORE-PXA270"
-	help
-	  Say Y here if you are using a Phytec phyCORE PXA270
-	  board
-endchoice
-
-if MACH_MIOA701
-config BCH_CONST_M
-	int
-	default 14 if MACH_MIOA701
-config BCH_CONST_T
-	int
-	default 4 if MACH_MIOA701
-endif
-
-endif
-
-# ----------------------------------------------------------
-
-if ARCH_PXA3XX
-
-config MACH_ZYLONITE
-       bool
-
-choice
-	prompt "PXA3xx Board Type"
-
-config MACH_ZYLONITE_PXA310
-	bool "Zylonite board based on a PXA310 pxa SoC"
-	help
-	  Say Y here if you are using a Zylonite board, based
-	  on a PXA31x SoC.
-	select ARCH_PXA310
-	select MACH_ZYLONITE
-
-endchoice
-
-endif
-
-# ----------------------------------------------------------
-
 endif
-- 
2.39.2



