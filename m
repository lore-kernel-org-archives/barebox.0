Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out203-205-251-80.mail.qq.com ([203.205.251.80] helo=qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJjX-0007In-NP
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 16:27:30 +0000
From: you xiaojie <84640926@qq.com>
Date: Wed, 01 Apr 2020 00:24:17 +0800
Message-ID: <1786135.fHojdExsTz@allan-home>
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
Subject: bug report: fail to boot barebox in marvell 6281 board
To: barebox@lists.infradead.org

I ported barebox to a new board similar to guruplug, but it could not boot, 
only show a line of barebox 2020.03.0-....., and I try official guruplug also 
stopped. the devicetree is ok under linux 5.4 and the kwbimage.cfg is ok I 
think, according to the 6281's datasheet and compared with the original 
register value of machine.

so any can try guruplug's barebox? this is my porting patch, is there 
something wrong?

From f2381a9855ae9db312aed52b1ab4d7343181e3b4 Mon Sep 17 00:00:00 2001
From: =?UTF-8?q?=E5=B0=A4=E6=99=93=E6=9D=B0?= <yxj790222@163.com>
Date: Mon, 30 Mar 2020 01:32:31 +0800
Subject: [PATCH] Add support for Huanshuo HS-50A

---
 arch/arm/boards/Makefile                    |   1 +
 arch/arm/boards/huanshuo-hs50a/Makefile     |   2 +
 arch/arm/boards/huanshuo-hs50a/board.c      |  17 +
 arch/arm/boards/huanshuo-hs50a/kwbimage.cfg |  27 ++
 arch/arm/boards/huanshuo-hs50a/lowlevel.c   |  35 ++
 arch/arm/configs/mvebu_defconfig            |   1 +
 arch/arm/dts/Makefile                       |   1 +
 arch/arm/dts/kirkwood-huanshuo-hs50a-bb.dts |  16 +
 arch/arm/mach-mvebu/Kconfig                 |   4 +
 dts/src/arm/kirkwood-huanshuo-hs50a.dts     | 348 ++++++++++++++++++++
 images/Makefile.mvebu                       |   8 +
 11 files changed, 460 insertions(+)
 create mode 100644 arch/arm/boards/huanshuo-hs50a/Makefile
 create mode 100644 arch/arm/boards/huanshuo-hs50a/board.c
 create mode 100644 arch/arm/boards/huanshuo-hs50a/kwbimage.cfg
 create mode 100644 arch/arm/boards/huanshuo-hs50a/lowlevel.c
 create mode 100644 arch/arm/dts/kirkwood-huanshuo-hs50a-bb.dts
 create mode 100644 dts/src/arm/kirkwood-huanshuo-hs50a.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 9fe458e0a..009dbd801 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -61,6 +61,7 @@ obj-$(CONFIG_MACH_GUF_VINCELL)			
+= guf-vincell/
 obj-$(CONFIG_MACH_GW_VENTANA)			+= gateworks-ventana/
 obj-$(CONFIG_MACH_HABA_KNX_LITE)		+= haba-knx/
 obj-$(CONFIG_MACH_HIGHBANK)			+= highbank/
+obj-$(CONFIG_MACH_HUANSHUO_HS50A)		+= huanshuo-hs50a/
 obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
 obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
 obj-$(CONFIG_MACH_IMX27ADS)			+= freescale-mx27-ads/
diff --git a/arch/arm/boards/huanshuo-hs50a/Makefile b/arch/arm/boards/huanshuo-
hs50a/Makefile
new file mode 100644
index 000000000..01c7a259e
--- /dev/null
+++ b/arch/arm/boards/huanshuo-hs50a/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/huanshuo-hs50a/board.c b/arch/arm/boards/huanshuo-
hs50a/board.c
new file mode 100644
index 000000000..9c800c541
--- /dev/null
+++ b/arch/arm/boards/huanshuo-hs50a/board.c
@@ -0,0 +1,17 @@
+/*
+ * Copyright
+ * (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+/* empty */
diff --git a/arch/arm/boards/huanshuo-hs50a/kwbimage.cfg b/arch/arm/boards/
huanshuo-hs50a/kwbimage.cfg
new file mode 100644
index 000000000..d0f3bdb01
--- /dev/null
+++ b/arch/arm/boards/huanshuo-hs50a/kwbimage.cfg
@@ -0,0 +1,27 @@
+VERSION 0
+BOOT_FROM nand
+NAND_ECCMODE default
+NAND_PAGESZ 00000800
+DATA ffd100e0 1b1b9b9b
+DATA ffd01400 43000c30
+DATA ffd01404 37543000
+DATA ffd01408 22125451
+DATA ffd0140c 00000a33
+DATA ffd01410 000000cc
+DATA ffd01414 00000000
+DATA ffd01418 00000000
+DATA ffd0141c 00000c52
+DATA ffd01420 00000040
+DATA ffd01424 0000f17f
+DATA ffd01428 00085520
+DATA ffd0147c 00008552
+DATA ffd01500 00000000
+DATA ffd01504 0ffffff1
+DATA ffd01508 10000000
+DATA ffd0150c 0ffffff5
+DATA ffd01514 00000000
+DATA ffd0151c 00000000
+DATA ffd01494 00030000
+DATA ffd01498 00000000
+DATA ffd0149c 0000e803
+DATA ffd01480 00000001
diff --git a/arch/arm/boards/huanshuo-hs50a/lowlevel.c b/arch/arm/boards/
huanshuo-hs50a/lowlevel.c
new file mode 100644
--- /dev/null
+++ b/arch/arm/boards/huanshuo-hs50a/lowlevel.c
@@ -0,0 +1,35 @@
+ *  Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+#include <linux/sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/lowlevel.h>
+
+extern char __dtb_kirkwood_huanshuo_hs50a_bb_start[];
+
+ENTRY_FUNCTION(start_huanshuo_hs50a, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = __dtb_kirkwood_huanshuo_hs50a_bb_start +
+		get_runtime_offset();
+
+	kirkwood_barebox_entry(fdt);
+}
diff --git a/arch/arm/configs/mvebu_defconfig b/arch/arm/configs/mvebu_defconfig
index c830cf2f0..2aff89a02 100644
--- a/arch/arm/configs/mvebu_defconfig
+++ b/arch/arm/configs/mvebu_defconfig
@@ -9,6 +9,7 @@ CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3=y
 CONFIG_MACH_TURRIS_OMNIA=y
 CONFIG_MACH_SOLIDRUN_CUBOX=y
 CONFIG_MACH_GLOBALSCALE_GURUPLUG=y
+CONFIG_MACH_HUANSHUO_HS50A=y
 CONFIG_MACH_PLATHOME_OPENBLOCKS_A6=y
 CONFIG_MACH_USI_TOPKICK=y
 CONFIG_AEABI=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index ddfe64e83..b3bd5cdc4 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -30,6 +30,7 @@ lwl-dtb-$(CONFIG_MACH_GRINN_LITEBOARD) += imx6ul-
liteboard.dtb.o
 lwl-dtb-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
 lwl-dtb-$(CONFIG_MACH_GUF_VINCELL) += imx53-guf-vincell.dtb.o imx53-guf-
vincell-lt.dtb.o
 lwl-dtb-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
+lwl-dtb-$(CONFIG_MACH_HUANSHUO_HS50A) += kirkwood-huanshuo-hs50a-bb.dtb.o
 lwl-dtb-$(CONFIG_MACH_KONTRON_SAMX6I) += imx6q-samx6i.dtb.o \
 					imx6dl-samx6i.dtb.o
 lwl-dtb-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
diff --git a/arch/arm/dts/kirkwood-huanshuo-hs50a-bb.dts b/arch/arm/dts/
kirkwood-huanshuo-hs50a-bb.dts
new file mode 100644
--- /dev/null
+++ b/arch/arm/dts/kirkwood-huanshuo-hs50a-bb.dts
@@ -0,0 +1,16 @@
+ * Barebox specific DT overlay for HuanShuo HS-50A
+ *   You Xiaojie <yxj790222@163.com>
+ */
+	gpio-leds {
+		health-r {
+			barebox,default-trigger = "heartbeat";
+		};
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index bab22f07f..9bd72dddb 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -102,6 +102,10 @@ config MACH_GLOBALSCALE_GURUPLUG
 	bool "Guruplug"
 	select ARCH_KIRKWOOD
 
+config MACH_HUANSHUO_HS50A
+	bool "Huanshuo HS-50A"
+	select ARCH_KIRKWOOD
+
 config MACH_PLATHOME_OPENBLOCKS_A6
 	bool "PlatHome OpenBlocks A6"
 	select ARCH_KIRKWOOD
diff --git a/dts/src/arm/kirkwood-huanshuo-hs50a.dts b/dts/src/arm/kirkwood-
huanshuo-hs50a.dts
new file mode 100644
--- /dev/null
+++ b/dts/src/arm/kirkwood-huanshuo-hs50a.dts
@@ -0,0 +1,348 @@
+/* Device tree file for the HuanShuo HS-50A box.
+ *
+ * Copyright (c) 2019-2020 you_xiaojie <yxj790222@163.com>
+ * Based on Marvell RD88F6181 A Board descrition
+ * Andrew Lunn <andrew@lunn.ch>
+*/
+	model = "Huanshuo hs-50a";
+	compatible = "huanshuo,hs50a","marvell,rd88f6281-a", 
"marvell,rd88f6281","marvell,kirkwood-88f6281", "marvell,kirkwood";
+
+		bootargs = "console=ttyS0,115200n8 earlyprintk";
+		stdout-path = &uart0;
+		stdin-path = &uart0;
+	};
+		device_type = "memory";
+		reg = <0x00000000 0x20000000>; /* 512 MB */
+		pinctrl-0 = <&pmx_usben>;
+		pinctrl-names = "default";
+
+		usb_power: regulator@0 {
+			compatible = "regulator-fixed";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			enable-active-high;
+			gpio = <&gpio1 5 GPIO_ACTIVE_HIGH>;
+		};
+		compatible = "marvell,dsa";
+		#address-cells = <2>;
+		dsa,ethernet = <&eth0port>;
+		dsa,mii-bus = <&mdio>;
+
+			reg = <10 0>;	/* MDIO address 0x0a, switch 0 
in tree */
+				label = "lan1";
+			};
+				label = "lan2";
+			};
+				label = "lan3";
+			};
+				label = "lan4";
+			};
+				label = "cpu";
+				fixed-link {
+		&nand {
+			status = "okay";
+				label = "ubi";
+				reg = <0x0400000 0x3c00000>;
+		&mdio {
+			status = "okay";
+			switch0: switch@11 {
+				status = "okay";
+				compatible = "marvell,mv88e6085";
+				pinctrl-0 = <&pmx_sw_irq_n>;
+				pinctrl-names = "default";
+				#address-cells = <1>;
IRQ_TYPE_LEVEL_LOW>;
+				interrupt-parent = <&gpio1>;
+				interrupt-controller;
"lan1";
+						phy-handle = 
<&sw0phy0>;
+						phy-mode = 
"rgmii-id"; //optional rgmii is ok
+						};
"lan2";
+						phy-handle = 
<&sw0phy1>;
+						phy-mode = 
"rgmii-id"; //optional rgmii is ok
+					};
"lan3";
+						phy-handle = 
<&sw0phy2>;
+						phy-mode = 
"rgmii-id"; //optional rgmii is ok
+					};
"lan4";
+						phy-handle = 
<&sw0phy3>;
+						phy-mode = 
"rgmii-id"; //optional rgmii is ok
+					};
+						phy-handle = 
<&sw0phy4>;
+						phy-mode = 
"rgmii-id"; //optional rgmii is ok
+					};
"cpu";
+						ethernet = 
<&eth1port>;
+						phy-mode = 
"rgmii-id"; //must set, otherwise no rx package
+						fixed-link {
+						ethernet = 
<&eth0port>;
+						phy-mode = 
"rgmii-id"; //optional, set to rgmii no rx package
+						fixed-link {
+				mdio {
+					#address-cells = <1>;
+					sw0phy0: switch0phy0@0 
{
<0 IRQ_TYPE_LEVEL_HIGH>;
+					};
+					sw0phy1: switch0phy1@1 
{
<1 IRQ_TYPE_LEVEL_HIGH>;
+					};
+					sw0phy2: switch0phy2@2 
{
<2 IRQ_TYPE_LEVEL_HIGH>;
+					};
+					sw0phy3: switch0phy3@3 
{
<3 IRQ_TYPE_LEVEL_HIGH>;
+					};
+					sw0phy4: switch0phy4@4 
{
"ethernet-phy-id0141.0e70"; //, ethernet-phy-ieee802.3-c22";
+						reg = <4>;
parent = <&switch0>;
+						interrupts = 
<4 IRQ_TYPE_LEVEL_HIGH>;
+					};
+		&pinctrl {
+			pinctrl-names = "default";
+
+			pmx_mpps:pmx-mpps {
+				marvell,pins = "mpp28", "mpp29", 
"mpp36", "mpp39", "mpp45", "mpp47", "mpp48", "mpp49";
+				marvell,function = "gpio";
+			};
+			pmx_sysrsto_n:pmx-sysrstout-n {
+				marvell,pins = "mpp6";
+				marvell,function = "sysrst";
+			};
+			pmx_sata1_n:pmx-sata1-act-n {
+				marvell,pins = "mpp34";
+				marvell,function = "sata1";
+			};
+			pmx_sata0_n:pmx-sata0-act-n {
+				marvell,pins = "mpp35";
+				marvell,function = "sata0";
+			};
+			pmx_usben:pmx-usb-pwrenable {
+				marvell,pins = "mpp37";
+				marvell,function = "gpio";
+			};
+			pmx_sw_irq_n:pmx-switcher-irq-n {
+				marvell,pins = "mpp38";
+				marvell,function = "gpio";
+			};
+			pmx_fs_n:pmx-fanspeed-n {
+				marvell,pins = "mpp40";
+				marvell,function = "gpio";
+			};
+			pmx_usboc:pmx-usb-pwroc {
+				marvell,pins = "mpp41";
+				marvell,function = "gpio";
+			};
+			pmx_sdwp:pmx-sdio-wp {
+				marvell,pins = "mpp42";
+				marvell,function = "gpio";
+			}; 
+			pmx_sdcd_n:pmx-sdio-cd-n {
+				marvell,pins = "mpp43";
+				marvell,function = "gpio";
+			};
+			pmx_nfbusy_n:pmx-nfrb {
+				marvell,pins = "mpp44";
+				marvell,function = "gpio";
+			}; 
+			pmx_mpps:pmx-mpps {
+				marvell,pins = "mpp46";
+				marvell,function = "gpio";
+			};
+		&gpio0 {
+			gpio-line-names = "NF_IO2", "NF_IO3", 
"NF_IO4", "NF_IO5", "NF_IO6", "NF_IO7", "SYSRST_On", "", "TW_SDA", "TW_SCK", 
"UA0_TXD", "UA0_RXD", "SD_CLK", "SD_CMD", "SD_D0", "SD_D1", "SD_D2", "SD_D3", 
"NF_IO0", "NF_IO1", "RGMII1_TXD0", "RGMII1_TXD1", "RGMII1_TXD2", 
"RGMII1_TXD3", "RGMII1_RXD0", "RGMII1_RXD1", "RGMII1_RXD2", "RGMII1_RXD3", "", 
"", "RGMII1_RXCTL", "RGMII1_RXCLK";
+		};
+		&gpio1 {
+			gpio-line-names = "RGMII1_TXCLKOUT", 
"RGMII1_TXCTL", "SATA1_ACTn", "SATA0_ACTn", "", "USB_EN", "SWITCH_IRQn", "", 
"FAN_SPEEDn", "USB_OC", "SDWP", "SDCDn", "NFRB", "", "", "", "", "";
+		};
+		&i2c0 {
+			status = "okay";
+			compatible = "atmel,24c64";
+				reg = <0x50>;
+				pagesize = <32>;
+			};
+		&sdio {
+			status = "okay";
+			pinctrl-0 = <&pmx_sdio &pmx_sdcd_n 
&pmx_sdwp>;
+			pinctrl-names = "default";
+			cd-gpios = <&gpio1 11 GPIO_ACTIVE_LOW>;
+			wp-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+		};
+		&sata {
+			status = "okay";
+			pinctrl-0 = <&pmx_sata0_n &pmx_sata1_n>;
+			nr-ports = <2>;
+		};
+		&uart0 {
+			status = "okay";
+		&pciec {
+			status = "okay";
+			&pcie0 {
+				status = "okay";
+				compatible = "pci168c,abcd";
+				reg = <0x7000 0 0 0 0x1000>;
+				qca,no-eeprom;
+				};
+		/* eth0 is connected to a Marvell 88E6171 switch, 
without a PHY. So set
+		 * fixed speed and duplex.
+		&eth0 {
+			status = "okay";
+			&eth0port {
+				speed = <1000>;
+		&eth1 {
+			status = "okay";
+			&eth1port {
+				speed = <1000>;
diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index 112227424..2d8f66407 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -110,6 +110,14 @@ pblb-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += 
start_globalscale_guruplug
 image-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += barebox-globalscale-guruplug.img
 image-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += barebox-globalscale-
guruplug-2nd.img
 
+HUANSHUO_HS50A_KWBOPTS = ${KWBOPTS} -i $(board)/huanshuo-hs50a/kwbimage.cfg
+OPTS_start_huanshuo_hs50a.pblb.kwbimg = $(HUANSHUO_HS50A_KWBOPTS)
+FILE_barebox-huanshuo-hs50a.img = start_huanshuo_hs50a.pblb.kwbimg
+FILE_barebox-huanshuo-hs50a-2nd.img = start_huanshuo_hs50a.pblb
+pblb-$(CONFIG_MACH_HUANSHUO_HS50A) += start_huanshuo_hs50a
+image-$(CONFIG_MACH_HUANSHUO_HS50A) += barebox-huanshuo-hs50a.img
+image-$(CONFIG_MACH_HUANSHUO_HS50A) += barebox-huanshuo-hs50a-2nd.img
+
 PLATHOME_OPENBLOCKS_A6_KWBOPTS = ${KWBOPTS} -i $(board)/plathome-openblocks-
a6/kwbimage.cfg
 OPTS_start_plathome_openblocks_a6.pblb.kwbimg = $
(PLATHOME_OPENBLOCKS_A6_KWBOPTS)
 FILE_barebox-plathome-openblocks-a6.img = 
start_plathome_openblocks_a6.pblb.kwbimg
-- 
2.26.0.rc2




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
