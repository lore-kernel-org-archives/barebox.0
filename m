Delivery-date: Thu, 25 Apr 2024 13:55:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxhj-00Gf7Z-1P
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 13:55:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxhb-0006nM-94
	for lore@pengutronix.de; Thu, 25 Apr 2024 13:55:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfpwJuyEzSeoZW0tv0XPoATG3X7KDJ6vKMIkbKKgEUA=; b=CgPdZmX1hvijYJ
	Xuz0QUbPyqWG8pbrGzV/cTOXAyKlaisfnV6T9xeWuxfolk9QCcz1rl/Tc2cpxttbY6dLRfCOZhT3X
	BSQXlsf1fyGiAWIxAT87cvXDmVRhjhorGf0ho/xzqz9HxB96ZESxTb9x0UG8C6O3r2/jqoYom1njW
	LdvjjpRfWq6dR/bA5Irv5lwegPey4vpRrl7gm41+5D5xDCB/cwh6Se6UoIljWzBeU9r1i7ai2Gl2g
	UkBuXh2MvT4XSoKu7ygLrB7+AV1qrxYzpfuNYDkaTLQeuhlJ81H6L8uCKILmtpk1aMJWIKbgDE/16
	26WwfN5xtI6vaLqXGXpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgk-000000085Cy-2pds;
	Thu, 25 Apr 2024 11:54:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgf-000000085BJ-1p2k
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 11:54:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgZ-00062e-8k; Thu, 25 Apr 2024 13:54:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-00EFqh-9N; Thu, 25 Apr 2024 13:54:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-009aQk-0Z;
	Thu, 25 Apr 2024 13:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:27 +0200
Message-Id: <20240425115439.2269239-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_045449_806280_9A7C05C9 
X-CRM114-Status: GOOD (  21.39  )
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
Subject: [PATCH 03/15] ARM: remove uemd architecure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mach-uemd is one of the architectures that still doesn't support PBL.
As PBL support becomes mandatory remove the architecture.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                         | 12 -------
 arch/arm/Makefile                        |  1 -
 arch/arm/boards/Makefile                 |  1 -
 arch/arm/boards/module-mb7707/Makefile   |  4 ---
 arch/arm/boards/module-mb7707/board.c    | 31 ----------------
 arch/arm/boards/module-mb7707/lowlevel.c | 28 ---------------
 arch/arm/configs/module-mb7707_defconfig | 45 ------------------------
 arch/arm/dts/Makefile                    |  1 -
 arch/arm/dts/k1879hb1ya.dtsi             | 44 -----------------------
 arch/arm/dts/module-mb7707.dts           | 25 -------------
 arch/arm/include/asm/debug_ll.h          |  2 --
 arch/arm/mach-uemd/Kconfig               | 17 ---------
 arch/arm/mach-uemd/Makefile              |  3 --
 include/mach/uemd/debug_ll.h             | 41 ---------------------
 include/mach/uemd/hardware.h             |  9 -----
 15 files changed, 264 deletions(-)
 delete mode 100644 arch/arm/boards/module-mb7707/Makefile
 delete mode 100644 arch/arm/boards/module-mb7707/board.c
 delete mode 100644 arch/arm/boards/module-mb7707/lowlevel.c
 delete mode 100644 arch/arm/configs/module-mb7707_defconfig
 delete mode 100644 arch/arm/dts/k1879hb1ya.dtsi
 delete mode 100644 arch/arm/dts/module-mb7707.dts
 delete mode 100644 arch/arm/mach-uemd/Kconfig
 delete mode 100644 arch/arm/mach-uemd/Makefile
 delete mode 100644 include/mach/uemd/debug_ll.h
 delete mode 100644 include/mach/uemd/hardware.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 728438dcf6..0b4333db6a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -160,17 +160,6 @@ config ARCH_TEGRA
 	select RESET_CONTROLLER
 	select PINCTRL
 
-config ARCH_UEMD
-	bool "RC Module UEMD Platform"
-	depends on 32BIT
-	select CPU_ARM1176
-	select COMMON_CLK
-	select COMMON_CLK_OF_PROVIDER
-	select OFDEVICE
-	select OFTREE
-	select CLOCKSOURCE_UEMD
-	select HAS_DEBUG_LL
-
 config ARCH_ZYNQ
 	bool "Xilinx Zynq-based boards"
 	depends on 32BIT
@@ -318,7 +307,6 @@ source "arch/arm/mach-stm32mp/Kconfig"
 source "arch/arm/mach-versatile/Kconfig"
 source "arch/arm/mach-vexpress/Kconfig"
 source "arch/arm/mach-tegra/Kconfig"
-source "arch/arm/mach-uemd/Kconfig"
 source "arch/arm/mach-zynq/Kconfig"
 source "arch/arm/mach-zynqmp/Kconfig"
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index ecc74838f6..1c8ec48988 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -103,7 +103,6 @@ machine-$(CONFIG_ARCH_STM32MP)		+= stm32mp
 machine-$(CONFIG_ARCH_VERSATILE)	+= versatile
 machine-$(CONFIG_ARCH_VEXPRESS)		+= vexpress
 machine-$(CONFIG_ARCH_TEGRA)		+= tegra
-machine-$(CONFIG_ARCH_UEMD)		+= uemd
 machine-$(CONFIG_ARCH_ZYNQ)		+= zynq
 machine-$(CONFIG_ARCH_ZYNQMP)		+= zynqmp
 
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 98eab17af2..eb4e80d3e0 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -69,7 +69,6 @@ obj-$(CONFIG_MACH_LUBBOCK)			+= lubbock/
 obj-$(CONFIG_MACH_MAINSTONE)			+= mainstone/
 obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP)		+= marvell-armada-xp-gp/
 obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB)		+= marvell-armada-xp-db/
-obj-$(CONFIG_MACH_MB7707)			+= module-mb7707/
 obj-$(CONFIG_MACH_MIOA701)			+= mioa701/
 obj-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk/
 obj-$(CONFIG_MACH_MX28EVK)			+= freescale-mx28-evk/
diff --git a/arch/arm/boards/module-mb7707/Makefile b/arch/arm/boards/module-mb7707/Makefile
deleted file mode 100644
index da63d2625f..0000000000
--- a/arch/arm/boards/module-mb7707/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += board.o
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/module-mb7707/board.c b/arch/arm/boards/module-mb7707/board.c
deleted file mode 100644
index 366baddf81..0000000000
--- a/arch/arm/boards/module-mb7707/board.c
+++ /dev/null
@@ -1,31 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-// SPDX-FileCopyrightText: 2014 Antony Pavlov <antonynpavlov@gmail.com>
-
-/* This file is part of barebox. */
-
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <linux/usb/ehci.h>
-#include <mach/uemd/hardware.h>
-
-static int hostname_init(void)
-{
-	barebox_set_hostname("mb7707");
-
-	return 0;
-}
-core_initcall(hostname_init);
-
-static struct ehci_platform_data ehci_pdata = {
-	.flags = 0,
-};
-
-static int mb7707_devices_init(void)
-{
-	add_usb_ehci_device(DEVICE_ID_DYNAMIC, UEMD_EHCI_BASE,
-		UEMD_EHCI_BASE + 0x10, &ehci_pdata);
-
-	return 0;
-}
-device_initcall(mb7707_devices_init);
diff --git a/arch/arm/boards/module-mb7707/lowlevel.c b/arch/arm/boards/module-mb7707/lowlevel.c
deleted file mode 100644
index 3b529d1232..0000000000
--- a/arch/arm/boards/module-mb7707/lowlevel.c
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
-#define MB7707_SRAM_BASE 0x40000000
-#define MB7707_SRAM_SIZE SZ_128M
-
-extern char __dtb_module_mb7707_start[];
-
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	void *fdt;
-
-	arm_cpu_lowlevel_init();
-
-	fdt = __dtb_module_mb7707_start + get_runtime_offset();
-
-	barebox_arm_entry(MB7707_SRAM_BASE, MB7707_SRAM_SIZE, fdt);
-}
diff --git a/arch/arm/configs/module-mb7707_defconfig b/arch/arm/configs/module-mb7707_defconfig
deleted file mode 100644
index 60be16df74..0000000000
--- a/arch/arm/configs/module-mb7707_defconfig
+++ /dev/null
@@ -1,45 +0,0 @@
-CONFIG_ARCH_UEMD=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
-CONFIG_PBL_RELOCATABLE=y
-CONFIG_MALLOC_TLSF=y
-CONFIG_PROMPT="MB 77.07: "
-CONFIG_BAUDRATE=38400
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_PASSWORD=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTM is not set
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-# CONFIG_CMD_MOUNT is not set
-# CONFIG_CMD_UMOUNT is not set
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-# CONFIG_SPI is not set
-CONFIG_USB_HOST=y
-CONFIG_USB_EHCI=y
-CONFIG_USB_STORAGE=y
-CONFIG_DIGEST_SHA1_GENERIC=y
-CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index e4af867027..39c85a477a 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -43,7 +43,6 @@ lwl-$(CONFIG_MACH_KONTRON_SAMX6I) += imx6q-samx6i.dtb.o \
 lwl-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
 lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
 lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB) += armada-xp-db-bb.dtb.o
-lwl-$(CONFIG_MACH_MB7707) += module-mb7707.dtb.o
 lwl-$(CONFIG_MACH_MX28EVK) += imx28-evk.dtb.o
 lwl-$(CONFIG_MACH_MYIRTECH_X335X) += am335x-myirtech-myd.dtb.o
 lwl-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
diff --git a/arch/arm/dts/k1879hb1ya.dtsi b/arch/arm/dts/k1879hb1ya.dtsi
deleted file mode 100644
index 7bbc31efc5..0000000000
--- a/arch/arm/dts/k1879hb1ya.dtsi
+++ /dev/null
@@ -1,44 +0,0 @@
-/ {
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	chosen { };
-
-	memory {
-		device_type = "memory";
-	};
-
-	soc {
-		compatible = "simple-bus";
-		model = "RC Module K1879HB1YA";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		/*
-		 * Actually clk_apb is not a fixed-clock at all.
-		 * clk_apb is a derivated clock, but for the moment
-		 * there is no public documentation on k1879hb1ya
-		 * so we can't describe it correctly.
-		 */
-		clk_apb: clock@0 {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-		};
-
-		serial0: serial@2002b000 {
-			compatible = "ns16550a";
-			reg = <0x2002b000 0x1000>;
-			reg-shift = <2>;
-			clocks = <&clk_apb 0>;
-			status = "disabled";
-		};
-
-		timer0: timer@20024000 {
-			compatible = "module,uemd-timer";
-			reg = <0x20024000 0x20>;
-			clocks = <&clk_apb 0>;
-			status = "disabled";
-		};
-	};
-};
diff --git a/arch/arm/dts/module-mb7707.dts b/arch/arm/dts/module-mb7707.dts
deleted file mode 100644
index 9a0f74997d..0000000000
--- a/arch/arm/dts/module-mb7707.dts
+++ /dev/null
@@ -1,25 +0,0 @@
-/dts-v1/;
-
-#include "k1879hb1ya.dtsi"
-
-/ {
-	model = "Module MB 77.07";
-	compatible = "module,mb7707";
-
-	memory@40000000 {
-		device_type = "memory";
-		reg = <0x40000000 0x8000000>;
-	};
-};
-
-&clk_apb {
-	clock-frequency = <54000000>;
-};
-
-&serial0 {
-	status = "okay";
-};
-
-&timer0 {
-	status = "okay";
-};
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 98a7d0d839..ced81c1a8b 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -46,8 +46,6 @@
 #include <mach/layerscape/debug_ll.h>
 #elif defined CONFIG_ARCH_TEGRA
 #include <mach/tegra/debug_ll.h>
-#elif defined CONFIG_ARCH_UEMD
-#include <mach/uemd/debug_ll.h>
 #elif defined CONFIG_ARCH_SOCFPGA
 #include <mach/socfpga/debug_ll.h>
 #elif defined CONFIG_ARCH_PXA
diff --git a/arch/arm/mach-uemd/Kconfig b/arch/arm/mach-uemd/Kconfig
deleted file mode 100644
index 7844b9c78f..0000000000
--- a/arch/arm/mach-uemd/Kconfig
+++ /dev/null
@@ -1,17 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-if ARCH_UEMD
-
-config ARCH_TEXT_BASE
-	hex
-	default 0x40800000
-
-choice
-	prompt "UEMD Board type"
-
-config MACH_MB7707
-	bool "MB7707"
-
-endchoice
-
-endif
diff --git a/arch/arm/mach-uemd/Makefile b/arch/arm/mach-uemd/Makefile
deleted file mode 100644
index 1c2b374603..0000000000
--- a/arch/arm/mach-uemd/Makefile
+++ /dev/null
@@ -1,3 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj- := __dummy__.o
diff --git a/include/mach/uemd/debug_ll.h b/include/mach/uemd/debug_ll.h
deleted file mode 100644
index c6ae3fe294..0000000000
--- a/include/mach/uemd/debug_ll.h
+++ /dev/null
@@ -1,41 +0,0 @@
-/*
- * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
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
-/** @file
- *  This File contains declaration for early output support
- */
-#ifndef __MACH_UEMD_DEBUG_LL_H__
-#define __MACH_UEMD_DEBUG_LL_H__
-
-#include <asm/io.h>
-#include <mach/uemd/hardware.h>
-
-#define DEBUG_LL_UART_ADDR	UEMD_UART0_BASE
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
-#endif /* __MACH_UEMD_DEBUG_LL_H__ */
diff --git a/include/mach/uemd/hardware.h b/include/mach/uemd/hardware.h
deleted file mode 100644
index 5cdf4403ad..0000000000
--- a/include/mach/uemd/hardware.h
+++ /dev/null
@@ -1,9 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef __MACH_UEMD_HARDWARE_H
-#define __MACH_UEMD_HARDWARE_H
-
-#define UEMD_EHCI_BASE	0x10040000
-#define UEMD_UART0_BASE	0x2002b000
-
-#endif /* __MACH_UEMD_HARDWARE_H */
-- 
2.39.2



