Delivery-date: Thu, 25 Apr 2024 13:56:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxi1-00GfAJ-1V
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 13:56:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxhu-00070v-Bf
	for lore@pengutronix.de; Thu, 25 Apr 2024 13:56:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTu+TDFPayI/04Msu+L7ZDKrCws7OTmpppARguAVCZI=; b=gItlxGt64cegsD
	6wIIW2iFj3w+o5IsOrRkmahK2qba2cUZZqbszUByzbO+6aJh/LOssxdP6k2++8Y2GkBu5GSY2UU6j
	pwTUAO9UEz8bBGlxGDJhLCUA9sBb5NsMTlFPtyoBnrV600lpMmgUzV7c5mreuedTdn3fhlg07omJe
	QXB9wPQ1+N+/Libbw4ks+fCaUxPqMZm0HjFvNcl9OOFCi/yckknEMlm0i0R/B089Gl9s9sswB5HdS
	bus86W1wKQZ+pIqavPiTgGmvkygyGdY8C5XZduC1j6UsK05tSWrbuAz4t+FyHeQJHFfBSU39DZtCb
	ikMtu9zwq7oY2J/+STdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgy-000000085KI-4AcS;
	Thu, 25 Apr 2024 11:55:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgq-000000085F3-2qKR
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 11:55:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgZ-00062h-8i; Thu, 25 Apr 2024 13:54:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-00EFqq-FW; Thu, 25 Apr 2024 13:54:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-009aQk-1C;
	Thu, 25 Apr 2024 13:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:30 +0200
Message-Id: <20240425115439.2269239-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_045501_525789_0F69C92E 
X-CRM114-Status: GOOD (  17.66  )
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
Subject: [PATCH 06/15] ARM: remove davinci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox davinci support is very minimal, the only supported board is
the virt2real board. This still has no PBL support which becomes
mandatory soon, so remove the architecture.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                     |   8 -
 arch/arm/Makefile                    |  13 --
 arch/arm/boards/Makefile             |   1 -
 arch/arm/boards/virt2real/Makefile   |   4 -
 arch/arm/boards/virt2real/board.c    |  15 --
 arch/arm/boards/virt2real/lowlevel.c |  28 ----
 arch/arm/configs/virt2real_defconfig |  45 ------
 arch/arm/dts/Makefile                |   1 -
 arch/arm/dts/virt2real.dts           |  36 -----
 arch/arm/include/asm/debug_ll.h      |   2 -
 arch/arm/mach-davinci/Kconfig        |  19 ---
 arch/arm/mach-davinci/Makefile       |   3 -
 arch/arm/mach-davinci/time.c         | 216 ---------------------------
 include/mach/davinci/debug_ll.h      |  28 ----
 include/mach/davinci/hardware.h      |  27 ----
 include/mach/davinci/serial.h        |  18 ---
 include/mach/davinci/time.h          |  18 ---
 scripts/Kconfig                      |   7 -
 scripts/Makefile                     |   1 -
 scripts/mkublheader.c                |  85 -----------
 20 files changed, 575 deletions(-)
 delete mode 100644 arch/arm/boards/virt2real/Makefile
 delete mode 100644 arch/arm/boards/virt2real/board.c
 delete mode 100644 arch/arm/boards/virt2real/lowlevel.c
 delete mode 100644 arch/arm/configs/virt2real_defconfig
 delete mode 100644 arch/arm/dts/virt2real.dts
 delete mode 100644 arch/arm/mach-davinci/Kconfig
 delete mode 100644 arch/arm/mach-davinci/Makefile
 delete mode 100644 arch/arm/mach-davinci/time.c
 delete mode 100644 include/mach/davinci/debug_ll.h
 delete mode 100644 include/mach/davinci/hardware.h
 delete mode 100644 include/mach/davinci/serial.h
 delete mode 100644 include/mach/davinci/time.h
 delete mode 100644 scripts/mkublheader.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index b3e4330ffe..7f84a1a12b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -70,13 +70,6 @@ config ARCH_CLPS711X
 	select MFD_SYSCON
 	select RELOCATABLE
 
-config ARCH_DAVINCI
-	bool "TI Davinci"
-	depends on 32BIT
-	select CPU_ARM926T
-	select HAS_DEBUG_LL
-	select GPIOLIB
-
 config ARCH_MVEBU
 	bool "Marvell EBU platforms"
 	depends on 32BIT
@@ -274,7 +267,6 @@ source "arch/arm/cpu/Kconfig"
 source "arch/arm/mach-at91/Kconfig"
 source "arch/arm/mach-bcm283x/Kconfig"
 source "arch/arm/mach-clps711x/Kconfig"
-source "arch/arm/mach-davinci/Kconfig"
 source "arch/arm/mach-imx/Kconfig"
 source "arch/arm/mach-layerscape/Kconfig"
 source "arch/arm/mach-mxs/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a183a5a61e..beb1c102c9 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -85,7 +85,6 @@ endif
 machine-$(CONFIG_ARCH_AT91)		+= at91
 machine-$(CONFIG_ARCH_BCM283X)		+= bcm283x
 machine-$(CONFIG_ARCH_CLPS711X)		+= clps711x
-machine-$(CONFIG_ARCH_DAVINCI)		+= davinci
 machine-$(CONFIG_ARCH_IMX)		+= imx
 machine-$(CONFIG_ARCH_K3)		+= k3
 machine-$(CONFIG_ARCH_LAYERSCAPE)	+= layerscape
@@ -140,18 +139,6 @@ ifeq ($(CONFIG_OMAP_BUILD_IFT),y)
 KBUILD_IMAGE := MLO
 endif
 
-quiet_cmd_davinci_ubl_image = UBL-IMG $@
-      cmd_davinci_ubl_image = set -e; \
-	 scripts/mkublheader $< > $@; \
-	 cat $< >> $@
-
-barebox.ubl: $(KBUILD_BINARY) FORCE
-	$(call if_changed,davinci_ubl_image)
-
-ifeq ($(CONFIG_ARCH_DAVINCI),y)
-KBUILD_IMAGE := barebox.ubl
-endif
-
 archclean:
 	$(MAKE) $(clean)=$(pbl)
 
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index a06c45d11d..022ba9903a 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -161,7 +161,6 @@ obj-$(CONFIG_MACH_USB_A9G20)			+= usb-a926x/
 obj-$(CONFIG_MACH_USI_TOPKICK)			+= usi-topkick/
 obj-$(CONFIG_MACH_VERSATILEPB)			+= versatile/
 obj-$(CONFIG_MACH_VEXPRESS)			+= vexpress/
-obj-$(CONFIG_MACH_VIRT2REAL)			+= virt2real/
 obj-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard/
 obj-$(CONFIG_MACH_ZYLONITE)			+= zylonite/
 obj-$(CONFIG_MACH_VARISCITE_MX6)		+= variscite-mx6/
diff --git a/arch/arm/boards/virt2real/Makefile b/arch/arm/boards/virt2real/Makefile
deleted file mode 100644
index da63d2625f..0000000000
--- a/arch/arm/boards/virt2real/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += board.o
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/virt2real/board.c b/arch/arm/boards/virt2real/board.c
deleted file mode 100644
index caa2b53a68..0000000000
--- a/arch/arm/boards/virt2real/board.c
+++ /dev/null
@@ -1,15 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-// SPDX-FileCopyrightText: 2014 Antony Pavlov <antonynpavlov@gmail.com>
-
-/* This file is part of barebox. */
-
-#include <common.h>
-#include <init.h>
-
-static int hostname_init(void)
-{
-	barebox_set_hostname("virt2real");
-
-	return 0;
-}
-core_initcall(hostname_init);
diff --git a/arch/arm/boards/virt2real/lowlevel.c b/arch/arm/boards/virt2real/lowlevel.c
deleted file mode 100644
index d14907b768..0000000000
--- a/arch/arm/boards/virt2real/lowlevel.c
+++ /dev/null
@@ -1,28 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-// SPDX-FileCopyrightText: 2014 Antony Pavlov <antonynpavlov@gmail.com>
-
-/* This file is part of barebox. */
-
-#define __LOWLEVEL_INIT__
-
-#include <common.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include <init.h>
-#include <linux/sizes.h>
-
-#define VIRT2REAL_SRAM_BASE 0x82000000
-#define VIRT2REAL_SRAM_SIZE SZ_16M
-
-extern char __dtb_virt2real_start[];
-
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	void *fdt;
-
-	arm_cpu_lowlevel_init();
-
-	fdt = __dtb_virt2real_start + get_runtime_offset();
-
-	barebox_arm_entry(VIRT2REAL_SRAM_BASE, VIRT2REAL_SRAM_SIZE, fdt);
-}
diff --git a/arch/arm/configs/virt2real_defconfig b/arch/arm/configs/virt2real_defconfig
deleted file mode 100644
index 6e51f53f19..0000000000
--- a/arch/arm/configs/virt2real_defconfig
+++ /dev/null
@@ -1,45 +0,0 @@
-CONFIG_TEXT_BASE=0x82300000
-CONFIG_ARCH_DAVINCI=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MALLOC_SIZE=0x200000
-CONFIG_MALLOC_TLSF=y
-CONFIG_PROMPT="virt2real: "
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_PASSWORD=y
-CONFIG_PARTITION=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTM is not set
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-# CONFIG_SPI is not set
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_GPIO_OF=y
-CONFIG_DIGEST_SHA1_GENERIC=y
-CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index bb4e752f2c..40d61ce8db 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -178,7 +178,6 @@ lwl-$(CONFIG_MACH_VARISCITE_SOM_MX7) += imx7d-gome-e143_01.dtb.o
 lwl-$(CONFIG_MACH_VERSATILEPB) += versatile-pb.dtb.o
 lwl-$(CONFIG_MACH_VEXPRESS) += vexpress-v2p-ca9.dtb.o
 lwl-$(CONFIG_MACH_VEXPRESS) += vexpress-v2p-ca15.dtb.o
-lwl-$(CONFIG_MACH_VIRT2REAL) += virt2real.dtb.o
 lwl-$(CONFIG_MACH_VSCOM_BALTOS) += am335x-baltos-minimal.dtb.o
 lwl-$(CONFIG_MACH_WARP7) += imx7s-warp.dtb.o
 lwl-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
diff --git a/arch/arm/dts/virt2real.dts b/arch/arm/dts/virt2real.dts
deleted file mode 100644
index 3b543b6e93..0000000000
--- a/arch/arm/dts/virt2real.dts
+++ /dev/null
@@ -1,36 +0,0 @@
-/dts-v1/;
-
-#include "dm365.dtsi"
-
-/ {
-	model = "virt2real";
-
-	memory@82000000 {
-		device_type = "memory";
-		reg = <0x82000000 0x01000000>;
-	};
-
-	soc {
-		serial0: serial@1c20000 {
-			status = "okay";
-		};
-
-		gpio: gpio@1c67000 {
-			status = "okay";
-		};
-	};
-
-	leds {
-		compatible = "gpio-leds";
-
-		green_led {
-			label = "green-led";
-			gpios = <&gpio 73 0>;
-		};
-
-		red_led {
-			label = "red-led";
-			gpios = <&gpio 74 0>;
-		};
-	};
-};
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index a8860f6b0c..43baea2207 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -36,8 +36,6 @@
 #include <debug_ll/pl011.h>
 #elif defined CONFIG_ARCH_MVEBU
 #include <mach/mvebu/debug_ll.h>
-#elif defined CONFIG_ARCH_DAVINCI
-#include <mach/davinci/debug_ll.h>
 #elif defined CONFIG_ARCH_ZYNQ
 #include <mach/zynq/debug_ll.h>
 #elif defined CONFIG_ARCH_VERSATILE
diff --git a/arch/arm/mach-davinci/Kconfig b/arch/arm/mach-davinci/Kconfig
deleted file mode 100644
index a87b6256ce..0000000000
--- a/arch/arm/mach-davinci/Kconfig
+++ /dev/null
@@ -1,19 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-if ARCH_DAVINCI
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x82000000
-
-choice
-	prompt "Davinci Board type"
-
-config MACH_VIRT2REAL
-	bool "Virt2Real"
-	select OFTREE
-	select OFDEVICE
-
-endchoice
-
-endif
diff --git a/arch/arm/mach-davinci/Makefile b/arch/arm/mach-davinci/Makefile
deleted file mode 100644
index f7865a941b..0000000000
--- a/arch/arm/mach-davinci/Makefile
+++ /dev/null
@@ -1,3 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += time.o
diff --git a/arch/arm/mach-davinci/time.c b/arch/arm/mach-davinci/time.c
deleted file mode 100644
index 5456820009..0000000000
--- a/arch/arm/mach-davinci/time.c
+++ /dev/null
@@ -1,216 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/* SPDX-FileCopyrightText: 2007 MontaVista Software, Inc. */
-
-/*
- * DaVinci timer subsystem
- *
- * Author: Kevin Hilman, MontaVista Software, Inc. <source@mvista.com>
- */
-
-#include <common.h>
-#include <io.h>
-#include <init.h>
-#include <restart.h>
-#include <clock.h>
-
-#include <mach/davinci/time.h>
-
-/* Timer register offsets */
-#define PID12			0x0
-#define TIM12			0x10
-#define TIM34			0x14
-#define PRD12			0x18
-#define PRD34			0x1c
-#define TCR			0x20
-#define TGCR			0x24
-#define WDTCR			0x28
-
-/* Timer register bitfields */
-#define TCR_ENAMODE_DISABLE          0x0
-#define TCR_ENAMODE_ONESHOT          0x1
-#define TCR_ENAMODE_PERIODIC         0x2
-#define TCR_ENAMODE_MASK             0x3
-
-#define TGCR_TIMMODE_SHIFT           2
-#define TGCR_TIMMODE_64BIT_GP        0x0
-#define TGCR_TIMMODE_32BIT_UNCHAINED 0x1
-#define TGCR_TIMMODE_64BIT_WDOG      0x2
-#define TGCR_TIMMODE_32BIT_CHAINED   0x3
-
-#define TGCR_TIM12RS_SHIFT           0
-#define TGCR_TIM34RS_SHIFT           1
-#define TGCR_RESET                   0x0
-#define TGCR_UNRESET                 0x1
-#define TGCR_RESET_MASK              0x3
-
-#define WDTCR_WDEN_SHIFT             14
-#define WDTCR_WDEN_DISABLE           0x0
-#define WDTCR_WDEN_ENABLE            0x1
-#define WDTCR_WDKEY_SHIFT            16
-#define WDTCR_WDKEY_SEQ0             0xa5c6
-#define WDTCR_WDKEY_SEQ1             0xda7e
-
-#define DAVINCI_TIMER_CLOCK 24000000
-
-struct timer_s {
-	void __iomem *base;
-	unsigned long tim_off;
-	unsigned long prd_off;
-	unsigned long enamode_shift;
-};
-
-static struct timer_s timers[] = {
-	{
-		.base = IOMEM(DAVINCI_TIMER0_BASE),
-		.enamode_shift = 6,
-		.tim_off = TIM12,
-		.prd_off = PRD12,
-	},
-	{
-		.base = IOMEM(DAVINCI_TIMER0_BASE),
-		.enamode_shift = 22,
-		.tim_off = TIM34,
-		.prd_off = PRD34,
-	},
-	{
-		.base = IOMEM(DAVINCI_TIMER1_BASE),
-		.enamode_shift = 6,
-		.tim_off = TIM12,
-		.prd_off = PRD12,
-	},
-	{
-		.base = IOMEM(DAVINCI_TIMER1_BASE),
-		.enamode_shift = 22,
-		.tim_off = TIM34,
-		.prd_off = PRD34,
-	},
-};
-
-static struct timer_s *t = &timers[0];
-
-static uint64_t davinci_cs_read(void)
-{
-	return (uint64_t)__raw_readl(t->base + t->tim_off);
-}
-
-static struct clocksource davinci_cs = {
-	.read	= davinci_cs_read,
-	.mask	= CLOCKSOURCE_MASK(32),
-	.priority = 80,
-};
-
-static int timer32_config(struct timer_s *t)
-{
-	u32 tcr;
-
-	tcr = __raw_readl(t->base + TCR);
-
-	/* disable timer */
-	tcr &= ~(TCR_ENAMODE_MASK << t->enamode_shift);
-	__raw_writel(tcr, t->base + TCR);
-
-	/* reset counter to zero, set new period */
-	__raw_writel(0, t->base + t->tim_off);
-	__raw_writel(0xffffffff, t->base + t->prd_off);
-
-	/* Set enable mode for periodic timer */
-	tcr |= TCR_ENAMODE_PERIODIC << t->enamode_shift;
-
-	__raw_writel(tcr, t->base + TCR);
-
-	return 0;
-}
-
-/* Global init of 64-bit timer as a whole */
-static void __init timer_init(void __iomem *base)
-{
-	u32 tgcr;
-
-	/* Disabled, Internal clock source */
-	__raw_writel(0, base + TCR);
-
-	/* reset both timers, no pre-scaler for timer34 */
-	tgcr = 0;
-	__raw_writel(tgcr, base + TGCR);
-
-	/* Set both timers to unchained 32-bit */
-	tgcr = TGCR_TIMMODE_32BIT_UNCHAINED << TGCR_TIMMODE_SHIFT;
-	__raw_writel(tgcr, base + TGCR);
-
-	/* Unreset timers */
-	tgcr |= (TGCR_UNRESET << TGCR_TIM12RS_SHIFT) |
-		(TGCR_UNRESET << TGCR_TIM34RS_SHIFT);
-	__raw_writel(tgcr, base + TGCR);
-
-	/* Init both counters to zero */
-	__raw_writel(0, base + TIM12);
-	__raw_writel(0, base + TIM34);
-}
-
-static int clocksource_init(void)
-{
-	clocks_calc_mult_shift(&davinci_cs.mult, &davinci_cs.shift,
-		DAVINCI_TIMER_CLOCK, NSEC_PER_SEC, 10);
-
-	init_clock(&davinci_cs);
-
-	timer_init(IOMEM(DAVINCI_TIMER0_BASE));
-	timer_init(IOMEM(DAVINCI_TIMER1_BASE));
-
-	timer32_config(t);
-
-	return 0;
-}
-core_initcall(clocksource_init);
-
-/* reset board using watchdog timer */
-static void __noreturn davinci_restart_soc(struct restart_handler *rst)
-{
-	u32 tgcr, wdtcr;
-	void __iomem *base;
-
-	base = IOMEM(DAVINCI_WDOG_BASE);
-
-	/* disable, internal clock source */
-	__raw_writel(0, base + TCR);
-
-	/* reset timer, set mode to 64-bit watchdog, and unreset */
-	tgcr = 0;
-	__raw_writel(tgcr, base + TGCR);
-	tgcr = TGCR_TIMMODE_64BIT_WDOG << TGCR_TIMMODE_SHIFT;
-	tgcr |= (TGCR_UNRESET << TGCR_TIM12RS_SHIFT) |
-		(TGCR_UNRESET << TGCR_TIM34RS_SHIFT);
-	__raw_writel(tgcr, base + TGCR);
-
-	/* clear counter and period regs */
-	__raw_writel(0, base + TIM12);
-	__raw_writel(0, base + TIM34);
-	__raw_writel(0, base + PRD12);
-	__raw_writel(0, base + PRD34);
-
-	/* put watchdog in pre-active state */
-	wdtcr = __raw_readl(base + WDTCR);
-	wdtcr = (WDTCR_WDKEY_SEQ0 << WDTCR_WDKEY_SHIFT) |
-		(WDTCR_WDEN_ENABLE << WDTCR_WDEN_SHIFT);
-	__raw_writel(wdtcr, base + WDTCR);
-
-	/* put watchdog in active state */
-	wdtcr = (WDTCR_WDKEY_SEQ1 << WDTCR_WDKEY_SHIFT) |
-		(WDTCR_WDEN_ENABLE << WDTCR_WDEN_SHIFT);
-	__raw_writel(wdtcr, base + WDTCR);
-
-	/* write an invalid value to the WDKEY field to trigger
-	 * a watchdog reset */
-	wdtcr = 0x00004000;
-	__raw_writel(wdtcr, base + WDTCR);
-
-	hang();
-}
-
-static int restart_register_feature(void)
-{
-	restart_handler_register_fn("soc-wdt", davinci_restart_soc);
-
-	return 0;
-}
-coredevice_initcall(restart_register_feature);
diff --git a/include/mach/davinci/debug_ll.h b/include/mach/davinci/debug_ll.h
deleted file mode 100644
index 1539bf8ee4..0000000000
--- a/include/mach/davinci/debug_ll.h
+++ /dev/null
@@ -1,28 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 2014 Antony Pavlov <antonynpavlov@gmail.com> */
-
-/** @file
- *  This File contains declaration for early output support
- */
-#ifndef __MACH_DAVINCI_DEBUG_LL_H__
-#define __MACH_DAVINCI_DEBUG_LL_H__
-
-#include <asm/io.h>
-#include <mach/davinci/serial.h>
-
-#define DEBUG_LL_UART_ADDR	DAVINCI_UART0_BASE
-#define DEBUG_LL_UART_RSHFT	2
-
-#define rbr		(0 << DEBUG_LL_UART_RSHFT)
-#define lsr		(5 << DEBUG_LL_UART_RSHFT)
-#define LSR_THRE	0x20	/* Xmit holding register empty */
-
-static inline void PUTC_LL(char ch)
-{
-	while (!(__raw_readb(DEBUG_LL_UART_ADDR + lsr) & LSR_THRE))
-		;
-
-	__raw_writeb(ch, DEBUG_LL_UART_ADDR + rbr);
-}
-
-#endif /* __MACH_DAVINCI_DEBUG_LL_H__ */
diff --git a/include/mach/davinci/hardware.h b/include/mach/davinci/hardware.h
deleted file mode 100644
index a0a1918444..0000000000
--- a/include/mach/davinci/hardware.h
+++ /dev/null
@@ -1,27 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 2007 Deep Root Systems, LLC. */
-
-/*
- * Hardware definitions common to all DaVinci family processors
- *
- * Author: Kevin Hilman, Deep Root Systems, LLC
- */
-#ifndef __MACH_DAVINCI_HARDWARE_H
-#define __MACH_DAVINCI_HARDWARE_H
-
-#include <asm/memory.h>
-
-/*
- * Before you add anything to this file:
- *
- * This header is for defines common to ALL DaVinci family chips.
- * Anything that is chip specific should go in <chipname>.h,
- * and the chip/board init code should then explicitly include
- * <chipname>.h
- */
-/*
- * I/O mapping
- */
-#define IO_PHYS				UL(0x01c00000)
-
-#endif /* __MACH_DAVINCI_HARDWARE_H */
diff --git a/include/mach/davinci/serial.h b/include/mach/davinci/serial.h
deleted file mode 100644
index cc14c5cf29..0000000000
--- a/include/mach/davinci/serial.h
+++ /dev/null
@@ -1,18 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 2007 MontaVista Software, Inc. */
-
-/*
- * DaVinci serial device definitions
- *
- * Author: Kevin Hilman, MontaVista Software, Inc. <source@mvista.com>
- */
-#ifndef __ASM_ARCH_SERIAL_H
-#define __ASM_ARCH_SERIAL_H
-
-#include <mach/davinci/hardware.h>
-
-#define DAVINCI_UART0_BASE	(IO_PHYS + 0x20000)
-#define DAVINCI_UART1_BASE	(IO_PHYS + 0x20400)
-#define DAVINCI_UART2_BASE	(IO_PHYS + 0x20800)
-
-#endif /* __ASM_ARCH_SERIAL_H */
diff --git a/include/mach/davinci/time.h b/include/mach/davinci/time.h
deleted file mode 100644
index d7d90efea9..0000000000
--- a/include/mach/davinci/time.h
+++ /dev/null
@@ -1,18 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/* SPDX-FileCopyrightText: 2007 MontaVista Software, Inc. */
-
-/*
- * Local header file for DaVinci time code.
- *
- * Author: Kevin Hilman, MontaVista Software, Inc. <source@mvista.com>
- */
-#ifndef __ARCH_ARM_MACH_DAVINCI_TIME_H
-#define __ARCH_ARM_MACH_DAVINCI_TIME_H
-
-#include <mach/davinci/hardware.h>
-
-#define DAVINCI_TIMER0_BASE		(IO_PHYS + 0x21400)
-#define DAVINCI_TIMER1_BASE		(IO_PHYS + 0x21800)
-#define DAVINCI_WDOG_BASE		(IO_PHYS + 0x21C00)
-
-#endif /* __ARCH_ARM_MACH_DAVINCI_TIME_H */
diff --git a/scripts/Kconfig b/scripts/Kconfig
index 4b675671ee..4034f020d0 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -70,13 +70,6 @@ config OMAP_IMAGE
 	help
 	  This enables building the image creation tools for TI OMAP SoCs
 
-config DAVINCI_IMAGE
-	bool "Davinci image tool" if COMPILE_HOST_TOOLS
-	depends on ARCH_DAVINCI || COMPILE_HOST_TOOLS
-	default y if ARCH_DAVINCI
-	help
-	  This enables building the image creation tool for Davinci SoCs
-
 config MVEBU_HOSTTOOLS
 	bool "mvebu hosttools" if COMPILE_HOST_TOOLS
 	depends on ARCH_MVEBU || COMPILE_HOST_TOOLS
diff --git a/scripts/Makefile b/scripts/Makefile
index cb1d916439..20da6fc5e7 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -18,7 +18,6 @@ hostprogs-always-$(CONFIG_KALLSYMS)			+= kallsyms
 hostprogs-always-$(CONFIG_MIPS)				+= mips-relocs
 hostprogs-always-$(CONFIG_MVEBU_HOSTTOOLS)		+= kwbimage kwboot mvebuimg
 hostprogs-always-$(CONFIG_OMAP_IMAGE)			+= omap_signGP mk-omap-image
-hostprogs-always-$(CONFIG_DAVINCI_IMAGE)		+= mkublheader
 HOSTCFLAGS_zynq_mkimage.o = -I$(srctree) -I$(srctree)/include/mach
 hostprogs-always-$(CONFIG_ZYNQ_MKIMAGE)			+= zynq_mkimage
 hostprogs-always-$(CONFIG_SOCFPGA_MKIMAGE)		+= socfpga_mkimage
diff --git a/scripts/mkublheader.c b/scripts/mkublheader.c
deleted file mode 100644
index db3e284a8a..0000000000
--- a/scripts/mkublheader.c
+++ /dev/null
@@ -1,85 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2012 Jan Luebbe <j.luebbe@pengutronix.de>
-
-/* mkublheader.c - produce the header needed to load barebox on OMAP-L138 */
-
-#define _BSD_SOURCE
-#define _DEFAULT_SOURCE
-
-#include <stdio.h>
-#include <sys/types.h>
-#include <sys/stat.h>
-#include <fcntl.h>
-#include <unistd.h>
-#include <stdint.h>
-#include <limits.h>
-#include <errno.h>
-#include <stdlib.h>
-#include <string.h>
-#include <getopt.h>
-#include <endian.h>
-
-#define MAGICNUM 0xa1aced00
-
-struct ubl_header
-{
-  uint32_t magicNum; /* Expected magic number */
-  uint32_t epAddr;   /* Entry point of the user application */
-  uint32_t imgSize;  /* Number of bytes of the application image */
-  uint32_t imgAddr;  /* SPI memory offset where application image is located */
-  uint32_t ldAddr;   /* Address where image is copied to */
-};
-
-static void usage(char *prgname)
-{
-	printf( "Usage : %s [OPTION] FILE > HEADER\n"
-		"\n"
-		"options:\n"
-		"  -a <address> image flash address\n"
-		"  -e <address> entry point memory address\n"
-		"  -l <address> load memory address\n",
-		prgname);
-}
-
-int main(int argc, char *argv[])
-{
-	struct stat sb;
-	struct ubl_header uh;
-	int opt;
-	uint32_t imgAddr = 0x00040000 + sizeof(uh);
-	uint32_t epAddr = 0xc1080000, ldAddr = 0xc1080000;
-
-	while((opt = getopt(argc, argv, "ael:")) != -1) {
-		switch (opt) {
-		case 'a':
-			imgAddr = strtoul(optarg, NULL, 0);
-			break;
-		case 'e':
-			epAddr = strtoul(optarg, NULL, 0);
-			break;
-		case 'l':
-			ldAddr = strtoul(optarg, NULL, 0);
-			break;
-		}
-	}
-
-	if (optind >= argc) {
-		usage(argv[0]);
-		exit(1);
-	}
-
-	if (stat(argv[optind], &sb) == -1) {
-		perror("stat");
-		exit(EXIT_FAILURE);
-	}
-
-	uh.magicNum = htole32(MAGICNUM);
-	uh.epAddr = htole32(epAddr);
-	uh.imgSize = htole32((uint32_t)sb.st_size);
-	uh.imgAddr = htole32(imgAddr);
-	uh.ldAddr = htole32(ldAddr);
-
-	fwrite(&uh, sizeof(uh), 1, stdout);
-
-	exit(EXIT_SUCCESS);
-}
-- 
2.39.2



