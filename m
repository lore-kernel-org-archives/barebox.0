Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dcbZQ-0004Qq-NA
 for barebox@lists.infradead.org; Tue, 01 Aug 2017 18:07:08 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue,  1 Aug 2017 20:06:21 +0200
Message-Id: <20170801180621.25325-4-linux@rempel-privat.de>
In-Reply-To: <20170801180621.25325-1-linux@rempel-privat.de>
References: <20170801180621.25325-1-linux@rempel-privat.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 3/3] MIPS: ath79: add TP-Link WDR4300 board support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

This provides low level initialization of pll and ddr2. Resulting binary
should work from SRAM, DDR2 and SPI flash. If started from DDR2 RAM
level initialization will skipped.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/Makefile                                 |  1 +
 arch/mips/boards/tplink-wdr4300/Makefile           |  1 +
 arch/mips/boards/tplink-wdr4300/board.c            | 28 ++++++++++
 .../tplink-wdr4300/include/board/board_pbl_start.h | 62 ++++++++++++++++++++++
 arch/mips/configs/tplink-wdr4300_defconfig         | 50 +++++++++++++++++
 arch/mips/dts/ar9344_tl_wdr3400.dts                | 47 ++++++++++++++++
 arch/mips/mach-ath79/Kconfig                       | 10 ++++
 7 files changed, 199 insertions(+)
 create mode 100644 arch/mips/boards/tplink-wdr4300/Makefile
 create mode 100644 arch/mips/boards/tplink-wdr4300/board.c
 create mode 100644 arch/mips/boards/tplink-wdr4300/include/board/board_pbl_start.h
 create mode 100644 arch/mips/configs/tplink-wdr4300_defconfig
 create mode 100644 arch/mips/dts/ar9344_tl_wdr3400.dts

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 75761b5e7..dd5ceea20 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -80,6 +80,7 @@ board-$(CONFIG_BOARD_NETGEAR_WG102)	:= netgear-wg102
 
 machine-$(CONFIG_MACH_MIPS_ATH79)	:= ath79
 board-$(CONFIG_BOARD_TPLINK_MR3020)	:= tplink-mr3020
+board-$(CONFIG_BOARD_TPLINK_WDR4300)	:= tplink-wdr4300
 board-$(CONFIG_BOARD_BLACK_SWIFT)	:= black-swift
 
 machine-$(CONFIG_MACH_MIPS_BCM47XX)	:= bcm47xx
diff --git a/arch/mips/boards/tplink-wdr4300/Makefile b/arch/mips/boards/tplink-wdr4300/Makefile
new file mode 100644
index 000000000..dcfc2937d
--- /dev/null
+++ b/arch/mips/boards/tplink-wdr4300/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/mips/boards/tplink-wdr4300/board.c b/arch/mips/boards/tplink-wdr4300/board.c
new file mode 100644
index 000000000..d6126fcb6
--- /dev/null
+++ b/arch/mips/boards/tplink-wdr4300/board.c
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2017 Oleksij Rempel <o.rempel@pengutronix.de>
+ * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+
+static int model_hostname_init(void)
+{
+	barebox_set_hostname("wdr4300");
+
+	return 0;
+}
+postcore_initcall(model_hostname_init);
diff --git a/arch/mips/boards/tplink-wdr4300/include/board/board_pbl_start.h b/arch/mips/boards/tplink-wdr4300/include/board/board_pbl_start.h
new file mode 100644
index 000000000..7d4ee4bab
--- /dev/null
+++ b/arch/mips/boards/tplink-wdr4300/include/board/board_pbl_start.h
@@ -0,0 +1,62 @@
+/*
+ * Copyright (C) 2017 Oleksij Rempel <o.rempel@pengutronix.de>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <mach/debug_ll_ar9344.h>
+#include <asm/pbl_macros.h>
+#include <mach/pbl_macros.h>
+#include <mach/pbl_ll_init_ar9344_1.1.h>
+#include <asm/pbl_nmon.h>
+
+	.macro	board_pbl_start
+	.set	push
+	.set	noreorder
+
+	mips_barebox_10h
+
+	debug_ll_ar9344_init
+
+	debug_ll_outc '1'
+
+	hornet_mips24k_cp0_setup
+	debug_ll_outc '2'
+
+	/* test if we are in the SRAM */
+	pbl_blt 0xbd000000 1f t8
+	debug_ll_outc '3'
+	b skip_flash_test
+	nop
+1:
+	/* test if we are in the flash */
+	pbl_blt 0xbf000000 skip_pll_ram_config t8
+	debug_ll_outc '4'
+skip_flash_test:
+
+	pbl_ar9344_v11_pll_config
+	debug_ll_outc '5'
+
+	pbl_ar9344_v11_ddr2_config
+
+skip_pll_ram_config:
+	debug_ll_outc '6'
+	debug_ll_outnl
+
+	mips_nmon
+
+	copy_to_link_location	pbl_start
+
+	.set	pop
+	.endm
diff --git a/arch/mips/configs/tplink-wdr4300_defconfig b/arch/mips/configs/tplink-wdr4300_defconfig
new file mode 100644
index 000000000..9114b86db
--- /dev/null
+++ b/arch/mips/configs/tplink-wdr4300_defconfig
@@ -0,0 +1,50 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="ar9344_tl_wdr3400"
+CONFIG_MACH_MIPS_ATH79=y
+CONFIG_BOARD_TPLINK_WDR4300=y
+CONFIG_PBL_IMAGE=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0xbfc00000
+CONFIG_MALLOC_TLSF=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEBUG_INFO=y
+CONFIG_DEBUG_LL=y
+CONFIG_DEBUG_INITCALLS=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_OFDEVICE=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SPI_ATH79=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_M25P80=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_DIGEST_SHA224_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/mips/dts/ar9344_tl_wdr3400.dts b/arch/mips/dts/ar9344_tl_wdr3400.dts
new file mode 100644
index 000000000..825b4820d
--- /dev/null
+++ b/arch/mips/dts/ar9344_tl_wdr3400.dts
@@ -0,0 +1,47 @@
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar9344.dtsi"
+
+/ {
+	model = "TP-Link WDR4300";
+	compatible = "tplink,tl-wdr4300";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x8000000>;
+	};
+
+	chosen {
+		stdout-path = &uart0;
+	};
+};
+
+&ref {
+	clock-frequency = <40000000>;
+};
+
+&uart0 {
+	status = "okay";
+	clock-frequency = <40000000>;
+};
+
+&spi {
+	num-chipselects = <1>;
+	status = "okay";
+
+	/* Winbond W25Q64CV SPI flash */
+	spiflash: w25q64cv@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "winbond,w25q64cv", "jedec,spi-nor";
+		spi-max-frequency = <104000000>;
+		reg = <0>;
+	};
+};
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index f2eae2532..9fec00c98 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -7,6 +7,9 @@ config ARCH_TEXT_BASE
 config SOC_QCA_AR9331
 	bool
 
+config SOC_QCA_AR9344
+	bool
+
 choice
 	prompt "Board type"
 
@@ -17,6 +20,13 @@ config BOARD_TPLINK_MR3020
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
 
+config BOARD_TPLINK_WDR4300
+	bool "TP-LINK WDR4300"
+	select SOC_QCA_AR9344
+	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
+	select HAS_NMON
+
 config BOARD_BLACK_SWIFT
 	bool "Black Swift"
 	select SOC_QCA_AR9331
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
