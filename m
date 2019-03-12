Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3bn6-0002gF-9n
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 07:25:38 +0000
Received: by mail-pf1-x42d.google.com with SMTP id i19so1201569pfd.0
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2019 00:25:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Mar 2019 00:25:27 -0700
Message-Id: <20190312072527.21772-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190312072527.21772-1-andrew.smirnov@gmail.com>
References: <20190312072527.21772-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] ARM: zii-vf610-dev: Switch SCU4 AIB board to use upstream
 DTS
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Barebox now has a copy of upstream DTS file for SCU4 AIB board, so
convert corresponding code to use it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/lowlevel.c  |   4 +-
 arch/arm/dts/Makefile                     |   2 +-
 arch/arm/dts/vf610-zii-scu4-aib-rev-c.dts | 459 ----------------------
 arch/arm/dts/vf610-zii-scu4-aib.dts       |  21 +
 4 files changed, 24 insertions(+), 462 deletions(-)
 delete mode 100644 arch/arm/dts/vf610-zii-scu4-aib-rev-c.dts
 create mode 100644 arch/arm/dts/vf610-zii-scu4-aib.dts

diff --git a/arch/arm/boards/zii-vf610-dev/lowlevel.c b/arch/arm/boards/zii-vf610-dev/lowlevel.c
index 04d390ba5..79588ac38 100644
--- a/arch/arm/boards/zii-vf610-dev/lowlevel.c
+++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
@@ -78,7 +78,7 @@ extern char __dtb_vf610_zii_dev_rev_b_start[];
 extern char __dtb_vf610_zii_dev_rev_c_start[];
 extern char __dtb_vf610_zii_cfu1_start[];
 extern char __dtb_vf610_zii_ssmb_spu3_start[];
-extern char __dtb_vf610_zii_scu4_aib_rev_c_start[];
+extern char __dtb_vf610_zii_scu4_aib_start[];
 extern char __dtb_vf610_zii_spb4_start[];
 
 ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
@@ -123,7 +123,7 @@ ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
 		fdt = __dtb_vf610_zii_dev_rev_b_start;
 		break;
 	case ZII_PLATFORM_VF610_SCU4_AIB:
-		fdt = __dtb_vf610_zii_scu4_aib_rev_c_start;
+		fdt = __dtb_vf610_zii_scu4_aib_start;
 		break;
 	case ZII_PLATFORM_VF610_DEV_REV_C:
 		fdt = __dtb_vf610_zii_dev_rev_c_start;
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b0238e91e..234e1f3fd 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -124,7 +124,7 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-dev-rev-c.dtb.o 	\
 	vf610-zii-cfu1.dtb.o		\
 	vf610-zii-ssmb-spu3.dtb.o	\
-	vf610-zii-scu4-aib-rev-c.dtb.o  \
+	vf610-zii-scu4-aib.dtb.o	\
 	vf610-zii-spb4.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
 pbl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
diff --git a/arch/arm/dts/vf610-zii-scu4-aib-rev-c.dts b/arch/arm/dts/vf610-zii-scu4-aib-rev-c.dts
deleted file mode 100644
index 12c2568bc..000000000
--- a/arch/arm/dts/vf610-zii-scu4-aib-rev-c.dts
+++ /dev/null
@@ -1,459 +0,0 @@
-/*
- * Copyright (C) 2015, 2016 Zodiac Inflight Innovations
- *
- * Based on an original 'vf610-twr.dts' which is Copyright 2015,
- * Freescale Semiconductor, Inc.
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This file is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License
- *     version 2 as published by the Free Software Foundation.
- *
- *     This file is distributed in the hope that it will be useful
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- * Or, alternatively
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED , WITHOUT WARRANTY OF ANY KIND
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
- */
-
-/dts-v1/;
-
-#include <arm/vf610-zii-dev.dtsi>
-
-#include "vf610-zii-dev.dtsi"
-
-/ {
-	model = "ZII VF610 SCU4 AIB, Rev C";
-	compatible = "zii,vf610scu4-aib-c", "zii,vf610dev", "fsl,vf610";
-
-	chosen {
-		bootargs = "console=ttyLP0,115200n8";
-	};
-
-	gpio-leds {
-		debug {
-			gpios = <&gpio3 0 GPIO_ACTIVE_HIGH>;
-		};
-	};
-
-	mdio-mux {
-		compatible = "mdio-mux-gpio";
-		pinctrl-0 = <&pinctrl_mdio_mux>;
-		pinctrl-names = "default";
-		gpios = <&gpio4 4  GPIO_ACTIVE_HIGH
-			 &gpio4 5  GPIO_ACTIVE_HIGH
-			 &gpio3 30 GPIO_ACTIVE_HIGH
-			 &gpio3 31 GPIO_ACTIVE_HIGH>;
-		mdio-parent-bus = <&mdio1>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		mdio_mux_1: mdio@1 {
-			reg = <1>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-		};
-
-		mdio_mux_2: mdio@2 {
-			reg = <2>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-		};
-
-		mdio_mux_4: mdio@4 {
-			reg = <4>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-		};
-
-		mdio_mux_8: mdio@8 {
-			reg = <8>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-		};
-	};
-
-	spi2 {
-		compatible = "spi-gpio";
-		pinctrl-0 = <&pinctrl_dspi2>;
-		pinctrl-names = "default";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		gpio-sck  = <&gpio2 3 GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio2 2 GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpio2 1 GPIO_ACTIVE_HIGH>;
-		cs-gpios  = <&gpio2 0 GPIO_ACTIVE_HIGH>;
-		num-chipselects = <1>;
-
-		at93c46d@0 {
-			compatible = "atmel,at93c46d";
-			#address-cells = <0>;
-			#size-cells = <0>;
-			reg = <0>;
-			spi-max-frequency = <500000>;
-			spi-cs-high;
-			data-size = <16>;
-			select-gpios = <&gpio2 4 GPIO_ACTIVE_HIGH>;
-		};
-	};
-};
-
-&dspi0 {
-	pinctrl-0 = <&pinctrl_dspi0>, <&pinctrl_dspi0_cs_4_5>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-&dspi1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_dspi1>;
-	status = "okay";
-
-	m25p128@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "m25p128", "jedec,spi-nor";
-		reg = <0>;
-		spi-max-frequency = <50000000>;
-
-		partition@0 {
-			label = "m25p128-0";
-			reg = <0x0 0x01000000>;
-		};
-	};
-
-	m25p128@1 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "m25p128", "jedec,spi-nor";
-		reg = <1>;
-		spi-max-frequency = <50000000>;
-
-		partition@0 {
-			label = "m25p128-1";
-			reg = <0x0 0x01000000>;
-		};
-	};
-};
-
-&esdhc0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_esdhc0>;
-	bus-width = <8>;
-	status = "okay";
-};
-
-&fec0 {
-	status = "disabled";
-};
-
-&i2c0 {
-	/* Reset Signals */
-	gpio5: pca9505@20 {
-		compatible = "nxp,pca9554";
-		reg = <0x20>;
-		gpio-controller;
-		#gpio-cells = <2>;
-	};
-
-	/* Board Revision */
-	gpio6: pca9505@22 {
-		compatible = "nxp,pca9554";
-		reg = <0x22>;
-		gpio-controller;
-		#gpio-cells = <2>;
-	};
-};
-
-&i2c1 {
-	/* Wireless 2 */
-	gpio8: pca9554@18 {
-		compatible = "nxp,pca9557";
-		reg = <0x18>;
-		gpio-controller;
-		#gpio-cells = <2>;
-	};
-
-	/* Wireless 1 */
-	gpio7: pca9554@24 {
-		compatible = "nxp,pca9554";
-		reg = <0x24>;
-		gpio-controller;
-		#gpio-cells = <2>;
-	};
-
-	/* AIB voltage monitor */
-	adt7411@4a {
-		compatible = "adi,adt7411";
-		reg = <0x4a>;
-	};
-};
-
-&i2c2 {
-	/* FIB voltage monitor */
-	adt7411@4a {
-		compatible = "adi,adt7411";
-		reg = <0x4a>;
-	};
-
-        lm75_swb {
-                compatible = "national,lm75";
-                reg = <0x4e>;
-        };
-
-	lm75_swa {
-                compatible = "national,lm75";
-                reg = <0x4f>;
-        };
-
-	/* FIB Nameplate */
-	at24c08@57 {
-		compatible = "atmel,24c08";
-		reg = <0x57>;
-	};
-
-	tca9548@70 {
-		compatible = "nxp,pca9548";
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x70>;
-
-		i2c@1 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <1>;
-
-			sff0: at24c04@50 {
-				compatible = "atmel,24c04";
-				reg = <0x50>;
-			};
-		};
-
-		i2c@2 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <2>;
-
-			sff1: at24c04@50 {
-				compatible = "atmel,24c04";
-				reg = <0x50>;
-			};
-		};
-
-		i2c@3 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <3>;
-
-			sff2: at24c04@50 {
-				compatible = "atmel,24c04";
-				reg = <0x50>;
-			};
-		};
-
-		i2c@4 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <4>;
-
-			sff3: at24c04@50 {
-				compatible = "atmel,24c04";
-				reg = <0x50>;
-			};
-		};
-
-		i2c@5 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <5>;
-
-			sff4: at24c04@50 {
-				compatible = "atmel,24c04";
-				reg = <0x50>;
-			};
-		};
-	};
-
-
-	tca9548@71 {
-		compatible = "nxp,pca9548";
-		reg = <0x71>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		i2c@1 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <1>;
-
-			sff5: at24c04@50 {
-				compatible = "atmel,24c04";
-				reg = <0x50>;
-			};
-		};
-
-		i2c@2 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <2>;
-
-			sff6: at24c04@50 {
-				compatible = "atmel,24c04";
-				reg = <0x50>;
-			};
-		};
-
-		i2c@3 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <3>;
-
-			sff7: at24c04@50 {
-				compatible = "atmel,24c04";
-				reg = <0x50>;
-			};
-
-		};
-
-		i2c@4 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <4>;
-
-			sff8: at24c04@50 {
-				compatible = "atmel,24c04";
-				reg = <0x50>;
-			};
-		};
-
-		i2c@5 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <5>;
-
-			sff9: at24c04@50 {
-				compatible = "atmel,24c04";
-				reg = <0x50>;
-			};
-		};
-	};
-};
-
-&uart1 {
-	linux,rs485-enabled-at-boot-time;
-	pinctrl-0 = <&pinctrl_uart1>, <&pinctrl_uart1_rts>;
-};
-
-&uart2 {
-	linux,rs485-enabled-at-boot-time;
-	pinctrl-0 = <&pinctrl_uart2>, <&pinctrl_uart2_rts>;
-};
-
-&iomuxc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_gpo_public>;
-
-
-	pinctrl_gpo_public: gpopubgrp {
-		fsl,pins = <
-			VF610_PAD_PTE2__GPIO_107		0x2062
-			VF610_PAD_PTE3__GPIO_108		0x2062
-			VF610_PAD_PTE4__GPIO_109		0x2062
-			VF610_PAD_PTE5__GPIO_110		0x2062
-			VF610_PAD_PTE6__GPIO_111		0x2062
-		>;
-	};
-
-	pinctrl_dspi0_cs_4_5: dspi0grp-cs-4-5 {
-		fsl,pins = <
-			VF610_PAD_PTB13__DSPI0_CS4		0x1182
-			VF610_PAD_PTB12__DSPI0_CS5		0x1182
-		>;
-	};
-
-	pinctrl_dspi1: dspi1grp {
-		fsl,pins = <
-			VF610_PAD_PTD5__DSPI1_CS0		0x1182
-			VF610_PAD_PTD4__DSPI1_CS1		0x1182
-			VF610_PAD_PTC6__DSPI1_SIN		0x1181
-			VF610_PAD_PTC7__DSPI1_SOUT		0x1182
-			VF610_PAD_PTC8__DSPI1_SCK		0x1182
-		>;
-	};
-
-	pinctrl_esdhc0: esdhc0grp {
-		fsl,pins = <
-			VF610_PAD_PTC0__ESDHC0_CLK	 0x31ef
-			VF610_PAD_PTC1__ESDHC0_CMD	 0x31ef
-			VF610_PAD_PTC2__ESDHC0_DAT0	 0x31ef
-			VF610_PAD_PTC3__ESDHC0_DAT1	 0x31ef
-			VF610_PAD_PTC4__ESDHC0_DAT2	 0x31ef
-			VF610_PAD_PTC5__ESDHC0_DAT3	 0x31ef
-			VF610_PAD_PTD23__ESDHC0_DAT4 0x31ef
-			VF610_PAD_PTD22__ESDHC0_DAT5 0x31ef
-			VF610_PAD_PTD21__ESDHC0_DAT6 0x31ef
-			VF610_PAD_PTD20__ESDHC0_DAT7 0x31ef
-		>;
-	};
-
-	pinctrl_i2c3: i2c3grp {
-		fsl,pins = <
-			VF610_PAD_PTA30__I2C3_SCL		0x37ff
-			VF610_PAD_PTA31__I2C3_SDA		0x37ff
-		>;
-	};
-
-	pinctrl_leds_debug: pinctrl-leds-debug {
-		fsl,pins = <
-			VF610_PAD_PTB26__GPIO_96		0x31c2
-		>;
-	};
-
-	pinctrl_uart1_rts: uart1grp-rts {
-		fsl,pins = <
-			VF610_PAD_PTB25__UART1_RTS		0x2062
-		>;
-	};
-
-	pinctrl_uart2_rts: uart2grp-rts {
-		fsl,pins = <
-			VF610_PAD_PTD2__UART2_RTS		0x2062
-		>;
-	};
-
-	pinctrl_mdio_mux: pinctrl-mdio-mux {
-		fsl,pins = <
-			VF610_PAD_PTE27__GPIO_132	0x31c2
-			VF610_PAD_PTE28__GPIO_133	0x31c2
-			VF610_PAD_PTE21__GPIO_126	0x31c2
-			VF610_PAD_PTE22__GPIO_127	0x31c2
-		>;
-	};
-};
diff --git a/arch/arm/dts/vf610-zii-scu4-aib.dts b/arch/arm/dts/vf610-zii-scu4-aib.dts
new file mode 100644
index 000000000..abe9e14fd
--- /dev/null
+++ b/arch/arm/dts/vf610-zii-scu4-aib.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+//
+// Copyright (C) 2016-2018 Zodiac Inflight Innovations
+
+#include <arm/vf610-zii-scu4-aib.dts>
+
+#include "vf610-zii-dev.dtsi"
+
+/ {
+	aliases {
+		/*
+		 * NVMEM device corresponding to EEPROM attached to
+                 * the switch shares DT node with it, so we use that
+                 * fact to create a desirable naming
+		 */
+		switch0-eeprom = &switch0;
+		switch1-eeprom = &switch1;
+		switch2-eeprom = &switch2;
+		switch3-eeprom = &switch3;
+	};
+};
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
