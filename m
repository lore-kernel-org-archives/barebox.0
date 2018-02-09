Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5i1-0006D1-0a
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 10:15:11 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Fri,  9 Feb 2018 11:14:44 +0100
Message-Id: <20180209101444.2477-2-linux@rempel-privat.de>
In-Reply-To: <20180209101444.2477-1-linux@rempel-privat.de>
References: <20180209101444.2477-1-linux@rempel-privat.de>
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
Subject: [PATCH 2/2] MIPS: add initial 8devices-lima board
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

More information about this board can be found here:
https://www.8devices.com/products/lima

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/Makefile                                 |  1 +
 .../8devices-lima/include/board/board_pbl_start.h  | 65 +++++++++++++++++
 arch/mips/configs/8devices-lima_defconfig          | 83 ++++++++++++++++++++++
 arch/mips/dts/qca4531-8devices-lima.dts            | 71 ++++++++++++++++++
 arch/mips/mach-ath79/Kconfig                       |  8 +++
 5 files changed, 228 insertions(+)
 create mode 100644 arch/mips/boards/8devices-lima/include/board/board_pbl_start.h
 create mode 100644 arch/mips/configs/8devices-lima_defconfig
 create mode 100644 arch/mips/dts/qca4531-8devices-lima.dts

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 1ef44a0f1..c53c3767b 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -79,6 +79,7 @@ machine-$(CONFIG_MACH_MIPS_AR231X)	:= ar231x
 board-$(CONFIG_BOARD_NETGEAR_WG102)	:= netgear-wg102
 
 machine-$(CONFIG_MACH_MIPS_ATH79)	:= ath79
+board-$(CONFIG_BOARC_8DEVICES_LIMA)	:= 8devices-lima
 board-$(CONFIG_BOARC_DPTECHNICS_DPT_MODULE)	:= dptechnics-dpt-module
 board-$(CONFIG_BOARD_TPLINK_MR3020)	:= tplink-mr3020
 board-$(CONFIG_BOARD_TPLINK_WDR4300)	:= tplink-wdr4300
diff --git a/arch/mips/boards/8devices-lima/include/board/board_pbl_start.h b/arch/mips/boards/8devices-lima/include/board/board_pbl_start.h
new file mode 100644
index 000000000..e95aa4925
--- /dev/null
+++ b/arch/mips/boards/8devices-lima/include/board/board_pbl_start.h
@@ -0,0 +1,65 @@
+/*
+ * Copyright (C) 2018 Oleksij Rempel <linux@rempel-privat.de>
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
+#include <mach/pbl_ll_init_qca4531.h>
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
+	pbl_qca4531_ddr2_550_550_init
+
+	debug_ll_outc '5'
+	/* Initialize caches... */
+	mips_cache_reset
+
+	/* ... and enable them */
+	dcache_enable
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
diff --git a/arch/mips/configs/8devices-lima_defconfig b/arch/mips/configs/8devices-lima_defconfig
new file mode 100644
index 000000000..446369a54
--- /dev/null
+++ b/arch/mips/configs/8devices-lima_defconfig
@@ -0,0 +1,83 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="qca4531-8devices-lima"
+CONFIG_MACH_MIPS_ATH79=y
+CONFIG_PBL_IMAGE=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x81000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_CONSOLE_RATP=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_HOST=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_SNTP=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_AG71XX=y
+CONFIG_AR8327N_PHY=y
+CONFIG_MDIO_BITBANG=y
+CONFIG_MDIO_GPIO=y
+CONFIG_DRIVER_SPI_ATH79=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_M25P80=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_RATP=y
+CONFIG_DIGEST_SHA224_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/mips/dts/qca4531-8devices-lima.dts b/arch/mips/dts/qca4531-8devices-lima.dts
new file mode 100644
index 000000000..7b03bc4be
--- /dev/null
+++ b/arch/mips/dts/qca4531-8devices-lima.dts
@@ -0,0 +1,71 @@
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "qca4531.dtsi"
+
+/ {
+	model = "8devices LIMA";
+	compatible = "8devices,lima";
+
+	aliases {
+		serial0 = &uart0;
+		spiflash = &spiflash;
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x8000000>;
+	};
+
+	chosen {
+		stdout-path = &uart0;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &spiflash, "partname:barebox-environment";
+		};
+	};
+};
+
+&ref {
+	clock-frequency = <25000000>;
+};
+
+&uart0 {
+	status = "okay";
+	clock-frequency = <25000000>;
+};
+
+&wdt0 {
+	status = "okay";
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
+		compatible = "jedec,spi-nor", "winbond,w25q64cv";
+		spi-max-frequency = <104000000>;
+		reg = <0>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0 0x80000>;
+		};
+
+		partition@80000 {
+			label = "barebox-environment";
+			reg = <0x80000 0x10000>;
+		};
+	};
+};
+
+&mac0 {
+	status = "okay";
+};
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index c7ce77568..3434e38ed 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -13,6 +13,14 @@ config SOC_QCA_AR9344
 choice
 	prompt "Board type"
 
+config BOARC_8DEVICES_LIMA
+	bool "8devices LIMA"
+	select SOC_QCA_QCA4531
+	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
+	select HAS_NMON
+	select HAS_NO_BOARD_HL_CODE
+
 config BOARC_DPTECHNICS_DPT_MODULE
 	bool "DPTechnics DPT-Module"
 	select SOC_QCA_AR9331
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
