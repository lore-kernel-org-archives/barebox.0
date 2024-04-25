Delivery-date: Thu, 25 Apr 2024 13:55:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxhn-00Gf8M-2W
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 13:55:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxhe-0006q7-Of
	for lore@pengutronix.de; Thu, 25 Apr 2024 13:55:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jzz7qxNBMgOoXhSyHiVhV/IgGUnUN4/z/wWOdA3HWI=; b=tCYIUMqnBsZSfR
	E/ZmpSsyw0/blqd6Bx7RJjsc315rY7abkEQctxPh7CDBcsRsrc1YQ6S+igWSbg7vC66j9Y+5t3nHY
	uvB5Ad+1USA63LmADt9gErc7mWy0WfT6p9PP9hpHWs5mThcMf2BJhPRjCgmAxboh+hjYM6w2IB/JU
	ZuCdUQuJhWYOLe51oBw4i2VTpGqlEEoFhKV+Qra/ceXZC2f1sXlR+5hCl5v59gVWI+YVHtaXXLTAj
	a3SZC1HS/LS8otWPyzWWx9m9VxEJytYXUXAkle+DG9LXf4QnafgSpca4SVw4Nq++ZXRV+bSMNMJI4
	ZaIcAHoicyP21dayB79w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgx-000000085Jb-072c;
	Thu, 25 Apr 2024 11:55:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgq-000000085F4-2qWS
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 11:55:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgZ-00062g-8j; Thu, 25 Apr 2024 13:54:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-00EFqn-Di; Thu, 25 Apr 2024 13:54:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-009aQk-11;
	Thu, 25 Apr 2024 13:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:29 +0200
Message-Id: <20240425115439.2269239-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_045501_453996_86743C54 
X-CRM114-Status: GOOD (  19.18  )
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
Subject: [PATCH 05/15] ARM: remove canon-a1100 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

canon-a1100 still doesn't have PBL support which will become mandatory
soon. Remove the architecture.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                       | 11 ------
 arch/arm/Makefile                      | 11 ------
 arch/arm/boards/Makefile               |  1 -
 arch/arm/boards/canon-a1100/Makefile   |  3 --
 arch/arm/boards/canon-a1100/lowlevel.c | 32 ----------------
 arch/arm/configs/canon-a1100_defconfig | 51 --------------------------
 arch/arm/dts/Makefile                  |  1 -
 arch/arm/dts/canon-a1100.dts           | 36 ------------------
 arch/arm/include/asm/debug_ll.h        |  2 -
 arch/arm/mach-digic/Kconfig            | 17 ---------
 arch/arm/mach-digic/Makefile           |  3 --
 include/mach/digic/debug_ll.h          | 39 --------------------
 include/mach/digic/digic4.h            | 22 -----------
 include/mach/digic/uart.h              | 27 --------------
 scripts/canon-a1100-image              | 12 ------
 15 files changed, 268 deletions(-)
 delete mode 100644 arch/arm/boards/canon-a1100/Makefile
 delete mode 100644 arch/arm/boards/canon-a1100/lowlevel.c
 delete mode 100644 arch/arm/configs/canon-a1100_defconfig
 delete mode 100644 arch/arm/dts/canon-a1100.dts
 delete mode 100644 arch/arm/mach-digic/Kconfig
 delete mode 100644 arch/arm/mach-digic/Makefile
 delete mode 100644 include/mach/digic/debug_ll.h
 delete mode 100644 include/mach/digic/digic4.h
 delete mode 100644 include/mach/digic/uart.h
 delete mode 100755 scripts/canon-a1100-image

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 837c7eb9f4..b3e4330ffe 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -77,16 +77,6 @@ config ARCH_DAVINCI
 	select HAS_DEBUG_LL
 	select GPIOLIB
 
-config ARCH_DIGIC
-	bool "Canon DIGIC-based cameras"
-	depends on 32BIT
-	select CPU_ARM946E
-	select HAS_DEBUG_LL
-	select CLOCKSOURCE_DIGIC
-	select GPIOLIB
-	help
-	  Support for Canon's digital cameras that use the DIGIC4 chip.
-
 config ARCH_MVEBU
 	bool "Marvell EBU platforms"
 	depends on 32BIT
@@ -285,7 +275,6 @@ source "arch/arm/mach-at91/Kconfig"
 source "arch/arm/mach-bcm283x/Kconfig"
 source "arch/arm/mach-clps711x/Kconfig"
 source "arch/arm/mach-davinci/Kconfig"
-source "arch/arm/mach-digic/Kconfig"
 source "arch/arm/mach-imx/Kconfig"
 source "arch/arm/mach-layerscape/Kconfig"
 source "arch/arm/mach-mxs/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a08be94687..a183a5a61e 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -86,7 +86,6 @@ machine-$(CONFIG_ARCH_AT91)		+= at91
 machine-$(CONFIG_ARCH_BCM283X)		+= bcm283x
 machine-$(CONFIG_ARCH_CLPS711X)		+= clps711x
 machine-$(CONFIG_ARCH_DAVINCI)		+= davinci
-machine-$(CONFIG_ARCH_DIGIC)		+= digic
 machine-$(CONFIG_ARCH_IMX)		+= imx
 machine-$(CONFIG_ARCH_K3)		+= k3
 machine-$(CONFIG_ARCH_LAYERSCAPE)	+= layerscape
@@ -153,16 +152,6 @@ ifeq ($(CONFIG_ARCH_DAVINCI),y)
 KBUILD_IMAGE := barebox.ubl
 endif
 
-quiet_cmd_canon_a1100_image = DD      $@
-      cmd_canon_a1100_image = scripts/canon-a1100-image $< $@ || \
-	echo "WARNING: Couldn't create Canon A1100 image due to previous errors."
-barebox.canon-a1100.bin: $(KBUILD_BINARY) FORCE
-	$(call if_changed,canon_a1100_image)
-
-ifeq ($(CONFIG_MACH_CANON_A1100),y)
-KBUILD_IMAGE := barebox.canon-a1100.bin
-endif
-
 archclean:
 	$(MAKE) $(clean)=$(pbl)
 
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 2e41865890..a06c45d11d 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -19,7 +19,6 @@ obj-$(CONFIG_MACH_BEAGLE)			+= beagle/
 obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
 obj-$(CONFIG_MACH_BEAGLEPLAY)			+= beagleplay/
 obj-$(CONFIG_MACH_CALAO)			+= calao/
-obj-$(CONFIG_MACH_CANON_A1100)			+= canon-a1100/
 obj-$(CONFIG_MACH_CM_FX6)			+= cm-fx6/
 obj-$(CONFIG_MACH_NITROGEN6)			+= boundarydevices-nitrogen6/
 obj-$(CONFIG_MACH_NOVENA)			+= novena/
diff --git a/arch/arm/boards/canon-a1100/Makefile b/arch/arm/boards/canon-a1100/Makefile
deleted file mode 100644
index 458f520900..0000000000
--- a/arch/arm/boards/canon-a1100/Makefile
+++ /dev/null
@@ -1,3 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/canon-a1100/lowlevel.c b/arch/arm/boards/canon-a1100/lowlevel.c
deleted file mode 100644
index 47a9564e0f..0000000000
--- a/arch/arm/boards/canon-a1100/lowlevel.c
+++ /dev/null
@@ -1,32 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-
-extern char __dtb_canon_a1100_start[];
-
-void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	void *fdt;
-
-	arm_cpu_lowlevel_init();
-
-	fdt = __dtb_canon_a1100_start + get_runtime_offset();
-
-	/* FIXME: can we determine RAM size using CP15 register?
-	 *
-	 * see http://chdk.setepontos.com/index.php?topic=5980.90
-	 *
-	 * http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.ddi0363e/Bgbcdeca.html
-	 * 4.2.19. c6, MPU memory region programming registers
-	 *
-	 * But the 'cpuinfo' command says that the Protection
-	 * unit is disabled.
-	 * The Control Register value (mrc    p15, 0, %0, c0, c1, 4)
-	 * is 0x00051078.
-	 */
-
-	barebox_arm_entry(0x0, SZ_64M, fdt);
-}
diff --git a/arch/arm/configs/canon-a1100_defconfig b/arch/arm/configs/canon-a1100_defconfig
deleted file mode 100644
index 53348f6e8a..0000000000
--- a/arch/arm/configs/canon-a1100_defconfig
+++ /dev/null
@@ -1,51 +0,0 @@
-CONFIG_TEXT_BASE=0x00300000
-CONFIG_ARCH_DIGIC=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
-CONFIG_MALLOC_SIZE=0x200000
-CONFIG_PROMPT="canon-a1100 > "
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
-CONFIG_DEBUG_LL=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTM is not set
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADY=y
-# CONFIG_CMD_MOUNT is not set
-# CONFIG_CMD_UMOUNT is not set
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_GLOBAL=y
-CONFIG_CMD_MD5SUM=y
-# CONFIG_CMD_PWD is not set
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SLEEP=y
-# CONFIG_CMD_CLEAR is not set
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_OFDEVICE=y
-CONFIG_DRIVER_SERIAL_DIGIC=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-# CONFIG_MTD_WRITE is not set
-CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
-CONFIG_CLOCKSOURCE_DUMMY_RATE=2000
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_GPIO_OF=y
-CONFIG_GPIO_DIGIC=y
-CONFIG_ZLIB=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 39c85a477a..bb4e752f2c 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -8,7 +8,6 @@ lwl-$(CONFIG_MACH_ADVANTECH_ROM_742X) += imx6dl-advantech-rom-7421.dtb.o
 lwl-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
 lwl-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
 lwl-$(CONFIG_MACH_BEAGLEPLAY) += k3-am625-beagleplay.dtb.o
-lwl-$(CONFIG_MACH_CANON_A1100) += canon-a1100.dtb.o
 lwl-$(CONFIG_MACH_CLEP7212) += ep7212-clep7212.dtb.o
 lwl-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
 lwl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
diff --git a/arch/arm/dts/canon-a1100.dts b/arch/arm/dts/canon-a1100.dts
deleted file mode 100644
index 18ba495bcf..0000000000
--- a/arch/arm/dts/canon-a1100.dts
+++ /dev/null
@@ -1,36 +0,0 @@
-/dts-v1/;
-
-/include/ "digic4.dtsi"
-
-/ {
-	model = "Canon PowerShot A1100 IS";
-	compatible = "canon,a1100";
-
-	memory {
-		device_type = "memory";
-		reg = <0x00000000 0x04000000>;
-	};
-
-	flash@f8000000 {
-		compatible = "cfi-flash";
-		reg = <0xf8000000 0x08000000>;
-	};
-
-	leds {
-		compatible = "gpio-leds";
-
-		direct_print {
-			label = "direct-print (blue)";
-			gpios = <&gpio 51 0>;
-		};
-
-		auto_focus {
-			label = "auto-focus (red)";
-			gpios = <&gpio 55 0>;
-		};
-	};
-};
-
-&timer2 {
-        status = "okay";
-};
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 5fe1b0be91..a8860f6b0c 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -54,8 +54,6 @@
 #include <mach/nomadik/debug_ll.h>
 #elif defined CONFIG_ARCH_MXS
 #include <mach/mxs/debug_ll.h>
-#elif defined CONFIG_ARCH_DIGIC
-#include <mach/digic/debug_ll.h>
 #elif defined CONFIG_ARCH_CLPS711X
 #include <mach/clps711x/debug_ll.h>
 #elif defined CONFIG_ARCH_AT91
diff --git a/arch/arm/mach-digic/Kconfig b/arch/arm/mach-digic/Kconfig
deleted file mode 100644
index 25b9a0da2f..0000000000
--- a/arch/arm/mach-digic/Kconfig
+++ /dev/null
@@ -1,17 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-if ARCH_DIGIC
-
-choice
-	prompt "camera type"
-
-config MACH_CANON_A1100
-	bool "Canon PowerShot A1100 IS"
-
-endchoice
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x00001900 if MACH_CANON_A1100
-
-endif
diff --git a/arch/arm/mach-digic/Makefile b/arch/arm/mach-digic/Makefile
deleted file mode 100644
index 1c2b374603..0000000000
--- a/arch/arm/mach-digic/Makefile
+++ /dev/null
@@ -1,3 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj- := __dummy__.o
diff --git a/include/mach/digic/debug_ll.h b/include/mach/digic/debug_ll.h
deleted file mode 100644
index f4d99f68c1..0000000000
--- a/include/mach/digic/debug_ll.h
+++ /dev/null
@@ -1,39 +0,0 @@
-/*
- * Copyright (C) 2013, 2014 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
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
-#ifndef __MACH_DIGIC_DEBUG_LL_H__
-#define __MACH_DIGIC_DEBUG_LL_H__
-
-#include <io.h>
-#include <mach/digic/digic4.h>
-#include <mach/digic/uart.h>
-
-#define DEBUG_LL_UART         DIGIC4_UART
-
-/* Serial interface registers */
-#define DEBUG_LL_UART_TX         (DEBUG_LL_UART + DIGIC_UART_TX)
-#define DEBUG_LL_UART_ST         (DEBUG_LL_UART + DIGIC_UART_ST)
-
-static inline void PUTC_LL(char ch)
-{
-	while (!(readl(DEBUG_LL_UART_ST) & DIGIC_UART_ST_TX_RDY))
-		; /* noop */
-
-	writel(0x06, DEBUG_LL_UART_ST);
-	writel(ch, DEBUG_LL_UART_TX);
-}
-
-#endif /* __MACH_DIGIC_DEBUG_LL_H__ */
diff --git a/include/mach/digic/digic4.h b/include/mach/digic/digic4.h
deleted file mode 100644
index 54a897f828..0000000000
--- a/include/mach/digic/digic4.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/*
- * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
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
-#ifndef __DIGIC4_H__
-#define __DIGIC4_H__
-
-#define DIGIC4_UART	0xc0800000
-
-#endif /* __DIGIC4_H__ */
diff --git a/include/mach/digic/uart.h b/include/mach/digic/uart.h
deleted file mode 100644
index 481c3c62c7..0000000000
--- a/include/mach/digic/uart.h
+++ /dev/null
@@ -1,27 +0,0 @@
-/*
- * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
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
-#ifndef __DIGIC_UART_H__
-#define __DIGIC_UART_H__
-
-/* Serial interface registers offsets */
-#define DIGIC_UART_TX	0x0
-#define DIGIC_UART_RX	0x4
-#define DIGIC_UART_ST	0x14
-# define DIGIC_UART_ST_RX_RDY	1
-# define DIGIC_UART_ST_TX_RDY	2
-
-#endif /* __DIGIC_UART_H__ */
diff --git a/scripts/canon-a1100-image b/scripts/canon-a1100-image
deleted file mode 100755
index 17fd47373e..0000000000
--- a/scripts/canon-a1100-image
+++ /dev/null
@@ -1,12 +0,0 @@
-#!/usr/bin/env bash
-
-set -e
-
-IFILE=$1
-OFILE=$2
-
-dd if=/dev/zero bs=4M count=1 of=$OFILE 2>/dev/null
-dd if=$IFILE of=$OFILE conv=notrunc 2>/dev/null
-
-# 0xffff0000:  fe 3f f0 ea     b       0xffc00000
-echo -n -e "\xfe\x3f\xf0\xea" | dd of=$OFILE bs=64K seek=63 conv=notrunc 2>/dev/null
-- 
2.39.2



