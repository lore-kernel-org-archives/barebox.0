Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Pbg-0007gw-38
 for barebox@lists.infradead.org; Sat, 22 Feb 2020 07:53:50 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sat, 22 Feb 2020 08:53:41 +0100
Message-Id: <20200222075341.13407-1-o.rempel@pengutronix.de>
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
Subject: [PATCH] MIPS: ath79: add support for OpenEmbed SOM9331 board
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/boards/Makefile                     |   1 +
 arch/mips/boards/openembed-som9331/Makefile   |   1 +
 arch/mips/boards/openembed-som9331/lowlevel.S |  23 ++++
 arch/mips/configs/ath79_defconfig             |   1 +
 arch/mips/dts/Makefile                        |   1 +
 .../dts/ar9331-openembed-som9331-board.dts    | 113 ++++++++++++++++++
 arch/mips/mach-ath79/Kconfig                  |   7 ++
 images/Makefile.ath79                         |   4 +
 8 files changed, 151 insertions(+)
 create mode 100644 arch/mips/boards/openembed-som9331/Makefile
 create mode 100644 arch/mips/boards/openembed-som9331/lowlevel.S
 create mode 100644 arch/mips/dts/ar9331-openembed-som9331-board.dts

diff --git a/arch/mips/boards/Makefile b/arch/mips/boards/Makefile
index 50652f9841..e85647a0e5 100644
--- a/arch/mips/boards/Makefile
+++ b/arch/mips/boards/Makefile
@@ -3,6 +3,7 @@ obj-$(CONFIG_BOARD_BLACK_SWIFT) += black-swift/
 obj-$(CONFIG_BOARD_CI20) += img-ci20/
 obj-$(CONFIG_BOARD_DLINK_DIR320) += dlink-dir-320/
 obj-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += dptechnics-dpt-module/
+obj-$(CONFIG_BOARD_OPENEMBEDED_SOM9331) += openembed-som9331/
 obj-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) += loongson-ls1b/
 obj-$(CONFIG_BOARD_NETGEAR_WG102) += netgear-wg102/
 obj-$(CONFIG_BOARD_QEMU_MALTA) += qemu-malta/
diff --git a/arch/mips/boards/openembed-som9331/Makefile b/arch/mips/boards/openembed-som9331/Makefile
new file mode 100644
index 0000000000..b08c4a93ca
--- /dev/null
+++ b/arch/mips/boards/openembed-som9331/Makefile
@@ -0,0 +1 @@
+lwl-y += lowlevel.o
diff --git a/arch/mips/boards/openembed-som9331/lowlevel.S b/arch/mips/boards/openembed-som9331/lowlevel.S
new file mode 100644
index 0000000000..dea735dd13
--- /dev/null
+++ b/arch/mips/boards/openembed-som9331/lowlevel.S
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2019 Oleksij Rempel <linux@rempel-privat.de>
+ */
+
+#define BOARD_PBL_START start_openembed_som9331_board
+
+#include <mach/debug_ll.h>
+#include <asm/regdef.h>
+#include <asm/mipsregs.h>
+#include <asm/asm.h>
+#include <asm/pbl_macros.h>
+#include <mach/pbl_macros.h>
+#include <asm/pbl_nmon.h>
+#include <linux/sizes.h>
+
+ENTRY_FUNCTION(BOARD_PBL_START)
+
+	ar9331_pbl_generic_start
+	/* swap PHY4 and PHY0 */
+	pbl_reg_writel 0x190, 0xb8070000
+
+ENTRY_FUNCTION_END(BOARD_PBL_START, ar9331_openembed_som9331_board, SZ_64M)
diff --git a/arch/mips/configs/ath79_defconfig b/arch/mips/configs/ath79_defconfig
index ab7af794a2..ab68f12533 100644
--- a/arch/mips/configs/ath79_defconfig
+++ b/arch/mips/configs/ath79_defconfig
@@ -1,6 +1,7 @@
 CONFIG_MACH_MIPS_ATH79=y
 CONFIG_BOARD_8DEVICES_LIMA=y
 CONFIG_BOARD_DPTECHNICS_DPT_MODULE=y
+CONFIG_BOARD_OPENEMBEDED_SOM9331=y
 CONFIG_BOARD_TPLINK_MR3020=y
 CONFIG_BOARD_TPLINK_WDR4300=y
 CONFIG_BOARD_BLACK_SWIFT=y
diff --git a/arch/mips/dts/Makefile b/arch/mips/dts/Makefile
index b3660cd286..9e8a6a6aaf 100644
--- a/arch/mips/dts/Makefile
+++ b/arch/mips/dts/Makefile
@@ -8,6 +8,7 @@ pbl-dtb-$(CONFIG_BOARD_BLACK_SWIFT) += black-swift.dtb.o
 pbl-dtb-$(CONFIG_BOARD_CI20) += img-ci20.dtb.o
 pbl-dtb-$(CONFIG_BOARD_DLINK_DIR320) += dlink-dir-320.dtb.o
 pbl-dtb-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += ar9331-dptechnics-dpt-module.dtb.o
+pbl-dtb-$(CONFIG_BOARD_OPENEMBEDED_SOM9331) += ar9331-openembed-som9331-board.dtb.o
 pbl-dtb-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) += loongson-ls1b.dtb.o
 pbl-dtb-$(CONFIG_BOARD_QEMU_MALTA) += qemu-malta.dtb.o
 pbl-dtb-$(CONFIG_BOARD_RZX50) += rzx50.dtb.o
diff --git a/arch/mips/dts/ar9331-openembed-som9331-board.dts b/arch/mips/dts/ar9331-openembed-som9331-board.dts
new file mode 100644
index 0000000000..ff9d25e352
--- /dev/null
+++ b/arch/mips/dts/ar9331-openembed-som9331-board.dts
@@ -0,0 +1,113 @@
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include <mips/qca/ar9331.dtsi>
+#include "ar9331.dtsi"
+
+/ {
+	model = "OpenEmbed SOM9331 Board";
+	compatible = "openembed,som9331-board", "openembed,som9331-module";
+
+	aliases {
+		serial0 = &uart;
+		spiflash = &spiflash;
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x4000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		system {
+			label = "dpt-module:green:system";
+			gpios = <&gpio 27 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+			barebox,default-trigger = "heartbeat";
+		};
+	};
+
+
+	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &spiflash, "partname:barebox-environment";
+		};
+
+		art@0 {
+			compatible = "qca,art-ar9331", "qca,art";
+			device-path = &spiflash_art;
+			barebox,provide-mac-address = <&eth0>;
+		};
+	};
+
+	gpio-keys {
+		button@0 {
+			gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&ref {
+	clock-frequency = <25000000>;
+};
+
+&uart {
+	status = "okay";
+};
+
+&gpio {
+	status = "okay";
+};
+
+&usb {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usb_phy {
+	status = "okay";
+};
+
+&spi {
+	num-chipselects = <1>;
+	status = "okay";
+
+	/* Winbond 25Q128FVSG SPI flash */
+	spiflash: w25q128@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "winbond,w25q128", "jedec,spi-nor";
+		spi-max-frequency = <104000000>;
+		reg = <0>;
+	};
+};
+
+&spiflash {
+	partition@0 {
+		label = "barebox";
+		reg = <0 0x80000>;
+	};
+
+	partition@80000 {
+		label = "barebox-environment";
+		reg = <0x80000 0x10000>;
+	};
+
+	spiflash_art: partition@7f0000 {
+		label = "art";
+		reg = <0x7f0000 0x10000>;
+	};
+};
+
+&eth0 {
+	status = "okay";
+};
+
+&eth1 {
+	status = "okay";
+};
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index b1b49b0005..97eea6a2a2 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -33,6 +33,13 @@ config BOARD_DPTECHNICS_DPT_MODULE
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
 
+config BOARD_OPENEMBEDED_SOM9331
+	bool "OpenEmbed SOM9331"
+	select SOC_QCA_AR9331
+	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
+	select HAS_NMON
+
 config BOARD_TPLINK_MR3020
 	bool "TP-LINK MR3020"
 	select SOC_QCA_AR9331
diff --git a/images/Makefile.ath79 b/images/Makefile.ath79
index 5dda411d8f..95c10014a5 100644
--- a/images/Makefile.ath79
+++ b/images/Makefile.ath79
@@ -18,6 +18,10 @@ pblb-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += start_dptechnics_dpt_module
 FILE_barebox-dptechnics-dpt-module.img = start_dptechnics_dpt_module.pblb
 image-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += barebox-dptechnics-dpt-module.img
 
+pblb-$(CONFIG_BOARD_OPENEMBEDED_SOM9331) += start_openembed_som9331_board
+FILE_barebox-openembed-som9331-board.img = start_openembed_som9331_board.pblb
+image-$(CONFIG_BOARD_OPENEMBEDED_SOM9331) += barebox-openembed-som9331-board.img
+
 pblb-$(CONFIG_BOARD_TPLINK_MR3020) += start_tplink_mr3020
 FILE_barebox-tplink-mr3020.img = start_tplink_mr3020.pblb
 image-$(CONFIG_BOARD_TPLINK_MR3020) += barebox-tplink-mr3020.img
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
