Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkRw5-0001Bq-Sp
 for barebox@lists.infradead.org; Sun, 14 Jun 2020 12:40:32 +0000
Received: by mail-pg1-x544.google.com with SMTP id b5so5417070pgm.8
 for <barebox@lists.infradead.org>; Sun, 14 Jun 2020 05:40:29 -0700 (PDT)
From: Du Huanpeng <u74147@gmail.com>
Date: Sun, 14 Jun 2020 20:40:12 +0800
Message-Id: <1592138412-25665-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] MIPS: AR9331: OKUD Max9331
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

Oleksij and Kevin's Useless Devices.
        O&KUD Max9331

 AR9331 400MHz MIPS
   64M DRAM
   16M SPI Flash
    4G USB Nand Flash
     3 User LEDs
     3 Ports(1Wan/2Lan)
     1 TTL Debug Uart

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 Documentation/boards/mips/max9331.rst          | 144 +++++++++++++++++++++++++
 arch/mips/boards/Makefile                      |   1 +
 arch/mips/boards/okud-max9331/Makefile         |   2 +
 arch/mips/boards/okud-max9331/lowlevel.S       |  22 ++++
 arch/mips/boards/okud-max9331/lowlevel_boot0.S |  22 ++++
 arch/mips/configs/ath79_defconfig              |   1 +
 arch/mips/dts/Makefile                         |   1 +
 arch/mips/dts/ar9331-okud-max9331.dts          | 140 ++++++++++++++++++++++++
 arch/mips/mach-ath79/Kconfig                   |   7 ++
 images/Makefile.ath79                          |   8 ++
 10 files changed, 348 insertions(+)
 create mode 100644 Documentation/boards/mips/max9331.rst
 create mode 100644 arch/mips/boards/okud-max9331/Makefile
 create mode 100644 arch/mips/boards/okud-max9331/lowlevel.S
 create mode 100644 arch/mips/boards/okud-max9331/lowlevel_boot0.S
 mode change 100644 => 100755 arch/mips/dts/Makefile
 create mode 100644 arch/mips/dts/ar9331-okud-max9331.dts

diff --git a/Documentation/boards/mips/max9331.rst b/Documentation/boards/mips/max9331.rst
new file mode 100644
index 0000000..f09dabc
--- /dev/null
+++ b/Documentation/boards/mips/max9331.rst
@@ -0,0 +1,144 @@
+OKUD MAX9331
+==============
+
+The USELESS Board seems useless
+
+  * Atheros ar9331 SoC(MIPS24Kc, 400MHz, 32bit);
+  * 64 MiB SDRAM;
+  * 16 MiB NOR type SPI Flash Memory;
+  * 3.3V TTL UART;
+  * 4 GiB USB Nand Flash Disk;
+  * 3 RJ45 Ports;
+  *   IEEE 802.11b/g;
+  * 3 User LEDs;
+  * 1 GPIO Button;
+
+The useless board always shiped with the lastest barebox and kernel. OpenWRT
+is supported too.
+
+Perparing Hardware
+------------------
+
+solder the board in the back, use a TTL dongle connect to JP1.
+
+::
+
+	TP2 -- TP3
+	TP1 -- TP4
+
+	+--|PWR|---|wan|---|lan1|---|lan2|-----|ANT|---+
+	|                                              |
+	|                                              |
+	|                                              |
+	|                                              |
+	|                                              |
+	|                          TP2                 |
+	|                           O  O TP1           |
+	|      TP3                                     |
+	|       O                                      |
+	| TP4 O                                        |
+	|     o o o                                    |
+	+----------------------------------------------+
+	    Tx Rx GND
+
+
+Running barebox
+---------------
+
+Barebox can be program to the board with:
+
+ * run by u-boot from tftp server
+ * run barebox from RAM or burn to flash by barebox
+ * run from spi flash
+
+Barebox can be started from U-Boot using tftp.
+To convert barebox.bin to u-boot uImage format:
+
+.. code-block:: sh
+
+  $ mkimage -A mips -O linux -T kernel -C none -a a0060000 -e a0060000 -n 'Barebox uImage' -d images/barebox-okud-max9331.img uImage
+  $ cp uImage /var/lib/tftpboot
+
+connect your board to your tftp-server network via Ethernet.
+next, setup network on MAX9331 and run:
+
+.. code-block:: console
+
+  hornet> set ipaddr 192.168.31.17
+  hornet> set serverip 192.168.31.40
+  hornet> tftpboot 0x81000000 uImage
+
+run from ram:
+
+.. code-block:: console
+
+  hornet> bootm 0x81000000
+
+or burn to flash, replace the 0x40000 to your uImage real size,
+
+.. code-block:: console
+
+  hornet> erase 0x9f020000 +0x40000
+  hornet> cp.b 0x81000000 0x9f020000 0x40000
+  hornet> reset
+
+if your board preinstalled with barebox:
+
+run barebox from ram by barebox
+
+copy the image to tftp server folder
+
+.. code-block:: sh
+
+  $ cp images/barebox-okud-max9331.img /var/lib/tftpboot/none-barebox-max9331
+
+enable dhcp service on the network
+
+.. code-block:: console
+
+   global net.server=10.1.1.72
+   boot bnet
+
+if you want to make it valid next boot
+
+.. code-block:: console
+
+   nv net.server=10.1.1.72
+   boot bnet
+
+update barebox by barebox
+
+.. code-block:: console
+
+   barebox_update /mnt/tftp/none-barebox-max9331
+
+run from spi flash
+
+max9331 has 16MiB spi flash on board, layout is like this
+
+.. code-block:: text
+
+   | boot0 | ... | barebox | ... | art |
+
+by default, the barebox bootloader is not located in the begginning of flash,
+instead we have a so called program boot0, it is a very simple program,
+it jump to 0x9f020000 where the first instruction of barebox.
+This is usefull when debug with jtag or choosing different bootloaders.
+or even boot kernel without bootloader.
+
+.. code-block:: assembly
+
+ lui  ra, 0x9f02
+ jr   ra
+ nop
+
+ b    .
+ nop
+
+Links
+-----
+
+See also
+
+  * http://www.eeboard.com/wp-content/uploads/downloads/2013/08/AR9331.pdf
+  * http://squonk42.github.io/TL-WR703N/
diff --git a/arch/mips/boards/Makefile b/arch/mips/boards/Makefile
index e85647a..5f9b61e 100644
--- a/arch/mips/boards/Makefile
+++ b/arch/mips/boards/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_BOARD_CI20) += img-ci20/
 obj-$(CONFIG_BOARD_DLINK_DIR320) += dlink-dir-320/
 obj-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += dptechnics-dpt-module/
 obj-$(CONFIG_BOARD_OPENEMBEDED_SOM9331) += openembed-som9331/
+obj-$(CONFIG_BOARD_OKUD_MAX9331) += okud-max9331/
 obj-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) += loongson-ls1b/
 obj-$(CONFIG_BOARD_NETGEAR_WG102) += netgear-wg102/
 obj-$(CONFIG_BOARD_QEMU_MALTA) += qemu-malta/
diff --git a/arch/mips/boards/okud-max9331/Makefile b/arch/mips/boards/okud-max9331/Makefile
new file mode 100644
index 0000000..c58bf72
--- /dev/null
+++ b/arch/mips/boards/okud-max9331/Makefile
@@ -0,0 +1,2 @@
+lwl-y += lowlevel.o
+lwl-y += lowlevel_boot0.o
diff --git a/arch/mips/boards/okud-max9331/lowlevel.S b/arch/mips/boards/okud-max9331/lowlevel.S
new file mode 100644
index 0000000..c5a2885
--- /dev/null
+++ b/arch/mips/boards/okud-max9331/lowlevel.S
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2017 Oleksij Rempel <linux@rempel-privat.de>
+ * Copyright (C) 2019 Du Huanpeng <u74147@gmail.com>
+ */
+
+#define BOARD_PBL_START start_okud_max9331
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
+
+ENTRY_FUNCTION_END(BOARD_PBL_START, ar9331_okud_max9331, SZ_64M)
diff --git a/arch/mips/boards/okud-max9331/lowlevel_boot0.S b/arch/mips/boards/okud-max9331/lowlevel_boot0.S
new file mode 100644
index 0000000..b0a0e22
--- /dev/null
+++ b/arch/mips/boards/okud-max9331/lowlevel_boot0.S
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2018 Oleksij Rempel <linux@rempel-privat.de>
+ * Copyright (C) 2019 Du Huanpeng <u74147@gmail.com>
+ */
+
+#define BOARD_PBL_START start_okud_max9331_boot0
+
+#include <mach/debug_ll.h>
+#include <asm/asm.h>
+#include <asm/pbl_macros.h>
+#include <mach/pbl_macros.h>
+#include <asm/pbl_nmon.h>
+
+ENTRY_FUNCTION(BOARD_PBL_START)
+
+        li      ra, 0xbfc20000
+        jr      ra
+	nop
+
+
+STOP_WITH_DEBUG_EVENT
diff --git a/arch/mips/configs/ath79_defconfig b/arch/mips/configs/ath79_defconfig
index ab68f12..64321ce 100644
--- a/arch/mips/configs/ath79_defconfig
+++ b/arch/mips/configs/ath79_defconfig
@@ -2,6 +2,7 @@ CONFIG_MACH_MIPS_ATH79=y
 CONFIG_BOARD_8DEVICES_LIMA=y
 CONFIG_BOARD_DPTECHNICS_DPT_MODULE=y
 CONFIG_BOARD_OPENEMBEDED_SOM9331=y
+CONFIG_BOARD_OKUD_MAX9331=y
 CONFIG_BOARD_TPLINK_MR3020=y
 CONFIG_BOARD_TPLINK_WDR4300=y
 CONFIG_BOARD_BLACK_SWIFT=y
diff --git a/arch/mips/dts/Makefile b/arch/mips/dts/Makefile
old mode 100644
new mode 100755
index b0ad25e..e5900c9
--- a/arch/mips/dts/Makefile
+++ b/arch/mips/dts/Makefile
@@ -8,6 +8,7 @@ pbl-$(CONFIG_BOARD_BLACK_SWIFT) += black-swift.dtb.o
 pbl-$(CONFIG_BOARD_CI20) += img-ci20.dtb.o
 pbl-$(CONFIG_BOARD_DLINK_DIR320) += dlink-dir-320.dtb.o
 pbl-$(CONFIG_BOARD_DPTECHNICS_DPT_MODULE) += ar9331-dptechnics-dpt-module.dtb.o
+pbl-$(CONFIG_BOARD_OKUD_MAX9331) += ar9331-okud-max9331.dtb.o
 pbl-$(CONFIG_BOARD_OPENEMBEDED_SOM9331) += ar9331-openembed-som9331-board.dtb.o
 pbl-$(CONFIG_BOARD_LOONGSON_TECH_LS1B) += loongson-ls1b.dtb.o
 pbl-$(CONFIG_BOARD_QEMU_MALTA) += qemu-malta.dtb.o
diff --git a/arch/mips/dts/ar9331-okud-max9331.dts b/arch/mips/dts/ar9331-okud-max9331.dts
new file mode 100644
index 0000000..5335089
--- /dev/null
+++ b/arch/mips/dts/ar9331-okud-max9331.dts
@@ -0,0 +1,140 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+#include <mips/qca/ar9331.dtsi>
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar9331.dtsi"
+
+/ {
+	model = "o&kud max9331";
+	compatible = "okud,max9331";
+
+	aliases {
+		spiflash = &spiflash;
+		serial0 = &uart;
+	};
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
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x4000000>;
+	};
+
+	/* FIXME: leds and gpio */
+	leds {
+		compatible = "gpio-leds";
+
+		net {
+			label = "board:LED1:system";
+			gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+			barebox,default-trigger = "net";
+		};
+
+		panic {
+			label = "board:LED2:system";
+			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+			default-state = "on";
+			barebox,default-trigger = "panic";
+		};
+
+		system {
+			label = "board:LED3:system";
+			gpios = <&gpio 27 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+			barebox,default-trigger = "heartbeat";
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		button@0 {
+			label = "reset";
+			linux,code = <KEY_ENTER>;
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&eth0 {
+	status = "okay";
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
+	/* Spansion FL128SA SPI flash */
+	spiflash: s25fl128s@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "spansion,s25fl128s1", "jedec,spi-nor";
+		spi-max-frequency = <25000000>;
+		reg = <0>;
+	};
+};
+
+&spiflash {
+	partition@0 {
+		label = "boot0";
+		reg = <0 0x10000>;
+	};
+
+	partition@10000 {
+		label = "barebox-environment";
+		reg = <0x10000 0x10000>;
+	};
+
+	partition@20000 {
+		label = "barebox";
+		reg = <0x20000 0x80000>;
+	};
+
+	partition@a0000 {
+		label = "kernel";
+		reg = <0xA0000 0xF50000>;
+	};
+
+	spiflash_art: partition@ff0000 {
+		label = "art";
+		reg = <0xff0000 0x10000>;
+	};
+};
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index 9dab5fc..2dfe0e5 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -43,6 +43,13 @@ config BOARD_OPENEMBEDED_SOM9331
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
 
+config BOARD_OKUD_MAX9331
+	bool "The Useless Board Max9331"
+	select SOC_QCA_AR9331
+	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
+	select HAS_NMON
+
 config BOARD_TPLINK_MR3020
 	bool "TP-LINK MR3020"
 	select SOC_QCA_AR9331
diff --git a/images/Makefile.ath79 b/images/Makefile.ath79
index 95c1001..072062b 100644
--- a/images/Makefile.ath79
+++ b/images/Makefile.ath79
@@ -22,6 +22,14 @@ pblb-$(CONFIG_BOARD_OPENEMBEDED_SOM9331) += start_openembed_som9331_board
 FILE_barebox-openembed-som9331-board.img = start_openembed_som9331_board.pblb
 image-$(CONFIG_BOARD_OPENEMBEDED_SOM9331) += barebox-openembed-som9331-board.img
 
+pblb-$(CONFIG_BOARD_OKUD_MAX9331) += start_okud_max9331
+FILE_barebox-okud-max9331.img = start_okud_max9331.pblb
+image-$(CONFIG_BOARD_OKUD_MAX9331) += barebox-okud-max9331.img
+
+pblb-$(CONFIG_BOARD_OKUD_MAX9331) += start_okud_max9331_boot0
+FILE_barebox-okud-max9331-boot0.img = start_okud_max9331_boot0.pblb
+image-$(CONFIG_BOARD_OKUD_MAX9331) += barebox-okud-max9331-boot0.img
+
 pblb-$(CONFIG_BOARD_TPLINK_MR3020) += start_tplink_mr3020
 FILE_barebox-tplink-mr3020.img = start_tplink_mr3020.pblb
 image-$(CONFIG_BOARD_TPLINK_MR3020) += barebox-tplink-mr3020.img
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
