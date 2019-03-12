Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3bn4-0002fz-Qv
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 07:25:36 +0000
Received: by mail-pg1-x544.google.com with SMTP id m2so1149263pgl.5
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2019 00:25:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Mar 2019 00:25:26 -0700
Message-Id: <20190312072527.21772-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] ARM: zii-vf610-dev: Add ZII SPB4 board
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add support for Zodiac's VF610 based SPB4 board.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/board.c    |   4 +-
 arch/arm/boards/zii-vf610-dev/lowlevel.c |   5 +
 arch/arm/dts/Makefile                    |   3 +-
 arch/arm/dts/vf610-zii-spb4.dts          |  16 +
 arch/arm/dts/vf610-zii-spb4.dtsi         | 365 +++++++++++++++++++++++
 5 files changed, 391 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/dts/vf610-zii-spb4.dts
 create mode 100644 arch/arm/dts/vf610-zii-spb4.dtsi

diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index cb4216272..e74ada396 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -67,6 +67,7 @@ static int zii_vf610_dev_set_hostname(void)
 		const char *hostname;
 	} boards[] = {
 		{ "zii,vf610spu3", "spu3" },
+		{ "zii,vf610spb4", "spb4" },
 		{ "zii,vf610cfu1", "cfu1" },
 		{ "zii,vf610dev-b", "dev-rev-b" },
 		{ "zii,vf610dev-c", "dev-rev-c" },
@@ -112,7 +113,8 @@ static int zii_vf610_register_emmc_bbu(void)
 	int ret;
 
 	if (!of_machine_is_compatible("zii,vf610spu3") &&
-	    !of_machine_is_compatible("zii,vf610cfu1"))
+	    !of_machine_is_compatible("zii,vf610cfu1") &&
+	    !of_machine_is_compatible("zii,vf610spb4"))
 		return 0;
 
 	ret = vf610_bbu_internal_mmcboot_register_handler("eMMC",
diff --git a/arch/arm/boards/zii-vf610-dev/lowlevel.c b/arch/arm/boards/zii-vf610-dev/lowlevel.c
index d19318026..04d390ba5 100644
--- a/arch/arm/boards/zii-vf610-dev/lowlevel.c
+++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
@@ -41,6 +41,7 @@ enum zii_platform_vf610_type {
 	ZII_PLATFORM_VF610_SSMB_SPU3	= 0x03,
 	ZII_PLATFORM_VF610_CFU1		= 0x04,
 	ZII_PLATFORM_VF610_DEV_REV_C	= 0x05,
+	ZII_PLATFORM_VF610_SPB4		= 0x06,
 };
 
 static unsigned int get_system_type(void)
@@ -78,6 +79,7 @@ extern char __dtb_vf610_zii_dev_rev_c_start[];
 extern char __dtb_vf610_zii_cfu1_start[];
 extern char __dtb_vf610_zii_ssmb_spu3_start[];
 extern char __dtb_vf610_zii_scu4_aib_rev_c_start[];
+extern char __dtb_vf610_zii_spb4_start[];
 
 ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
 {
@@ -132,6 +134,9 @@ ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
 	case ZII_PLATFORM_VF610_SSMB_SPU3:
 		fdt = __dtb_vf610_zii_ssmb_spu3_start;
 		break;
+	case ZII_PLATFORM_VF610_SPB4:
+		fdt = __dtb_vf610_zii_spb4_start;
+		break;
 	}
 
 	vf610_barebox_entry(fdt + get_runtime_offset());
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index c89efeaf8..b0238e91e 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -124,7 +124,8 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-dev-rev-c.dtb.o 	\
 	vf610-zii-cfu1.dtb.o		\
 	vf610-zii-ssmb-spu3.dtb.o	\
-	vf610-zii-scu4-aib-rev-c.dtb.o
+	vf610-zii-scu4-aib-rev-c.dtb.o  \
+	vf610-zii-spb4.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
 pbl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
diff --git a/arch/arm/dts/vf610-zii-spb4.dts b/arch/arm/dts/vf610-zii-spb4.dts
new file mode 100644
index 000000000..e7d35d0e6
--- /dev/null
+++ b/arch/arm/dts/vf610-zii-spb4.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#include "vf610-zii-spb4.dtsi"
+
+#include "vf610-zii-dev.dtsi"
+
+/ {
+	aliases {
+		/*
+		* NVMEM device corresponding to EEPROM attached to
+		* the switch shared DT node with it, so we use that
+		* fact to create a desirable naming
+		*/
+		switch-eeprom = &switch0;
+	};
+};
diff --git a/arch/arm/dts/vf610-zii-spb4.dtsi b/arch/arm/dts/vf610-zii-spb4.dtsi
new file mode 100644
index 000000000..4ceaf440a
--- /dev/null
+++ b/arch/arm/dts/vf610-zii-spb4.dtsi
@@ -0,0 +1,365 @@
+/*
+ * This is a copy of DTS file from Linux. Remove it once the same file
+ * is availible via dts/src/arm
+ */
+
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/*
+ * Device tree file for ZII's SPB4 board
+ *
+ * SPB - Seat Power Box
+ *
+ * Copyright (C) 2019 Zodiac Inflight Innovations
+ */
+
+/dts-v1/;
+#include <arm/vf610.dtsi>
+
+/ {
+	model = "ZII VF610 SPB4 Board";
+	compatible = "zii,vf610spb4", "zii,vf610dev", "fsl,vf610";
+
+	chosen {
+		stdout-path = &uart0;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x20000000>;
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&pinctrl_leds_debug>;
+		pinctrl-names = "default";
+
+		led-debug {
+			label = "zii:green:debug1";
+			gpios = <&gpio2 18 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+			max-brightness = <1>;
+		};
+	};
+
+	reg_vcc_3v3_mcu: regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3_mcu";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+};
+
+&adc0 {
+	vref-supply = <&reg_vcc_3v3_mcu>;
+	status = "okay";
+};
+
+&adc1 {
+	vref-supply = <&reg_vcc_3v3_mcu>;
+	status = "okay";
+};
+
+&dspi1 {
+	bus-num = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_dspi1>;
+	status = "okay";
+
+	m25p128@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "m25p128", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+	};
+};
+
+&edma0 {
+	status = "okay";
+};
+
+&edma1 {
+	status = "okay";
+};
+
+&esdhc0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc0>;
+	bus-width = <8>;
+	non-removable;
+	no-1-8-v;
+	keep-power-in-suspend;
+	no-sdio;
+	no-sd;
+	status = "okay";
+};
+
+&esdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc1>;
+	bus-width = <4>;
+	no-sdio;
+	status = "okay";
+};
+
+&fec1 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	status = "okay";
+
+	fixed-link {
+		speed = <100>;
+		full-duplex;
+	};
+
+	mdio1: mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "okay";
+
+		switch0: switch0@0 {
+			compatible = "marvell,mv88e6190";
+			pinctrl-0 = <&pinctrl_gpio_switch0>;
+			pinctrl-names = "default";
+			reg = <0>;
+			eeprom-length = <65536>;
+			reset-gpios = <&gpio3 11 GPIO_ACTIVE_LOW>;
+			interrupt-parent = <&gpio3>;
+			interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					label = "cpu";
+					ethernet = <&fec1>;
+
+					fixed-link {
+						speed = <100>;
+						full-duplex;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					label = "eth_cu_1000_1";
+				};
+
+				port@2 {
+					reg = <2>;
+					label = "eth_cu_1000_2";
+				};
+
+				port@3 {
+					reg = <3>;
+					label = "eth_cu_1000_3";
+				};
+
+				port@4 {
+					reg = <4>;
+					label = "eth_cu_1000_4";
+				};
+
+				port@5 {
+					reg = <5>;
+					label = "eth_cu_1000_5";
+				};
+
+				port@6 {
+					reg = <6>;
+					label = "eth_cu_1000_6";
+				};
+			};
+		};
+	};
+};
+
+&i2c0 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c0>;
+	status = "okay";
+
+	gpio6: pca9505@22 {
+		compatible = "nxp,pca9554";
+		reg = <0x22>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	at24c04@50 {
+		compatible = "atmel,24c04";
+		reg = <0x50>;
+		label = "nameplate";
+	};
+
+	at24c04@52 {
+		compatible = "atmel,24c04";
+		reg = <0x52>;
+	};
+};
+
+&snvsrtc {
+	status = "disabled";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart0>;
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+
+	rave-sp {
+		compatible = "zii,rave-sp-rdu2";
+		current-speed = <1000000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		watchdog {
+			compatible = "zii,rave-sp-watchdog";
+		};
+
+		eeprom@a3 {
+			compatible = "zii,rave-sp-eeprom";
+			reg = <0xa3 0x4000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			zii,eeprom-name = "main-eeprom";
+		};
+	};
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	status = "okay";
+};
+
+&wdoga5 {
+       status = "disabled";
+};
+
+&iomuxc {
+	pinctrl_dspi1: dspi1grp {
+		fsl,pins = <
+			VF610_PAD_PTD5__DSPI1_CS0		0x1182
+			VF610_PAD_PTD4__DSPI1_CS1		0x1182
+			VF610_PAD_PTC6__DSPI1_SIN		0x1181
+			VF610_PAD_PTC7__DSPI1_SOUT		0x1182
+			VF610_PAD_PTC8__DSPI1_SCK		0x1182
+		>;
+	};
+
+	pinctrl_esdhc0: esdhc0grp {
+		fsl,pins = <
+			VF610_PAD_PTC0__ESDHC0_CLK		0x31ef
+			VF610_PAD_PTC1__ESDHC0_CMD		0x31ef
+			VF610_PAD_PTC2__ESDHC0_DAT0		0x31ef
+			VF610_PAD_PTC3__ESDHC0_DAT1		0x31ef
+			VF610_PAD_PTC4__ESDHC0_DAT2		0x31ef
+			VF610_PAD_PTC5__ESDHC0_DAT3		0x31ef
+			VF610_PAD_PTD23__ESDHC0_DAT4		0x31ef
+			VF610_PAD_PTD22__ESDHC0_DAT5		0x31ef
+			VF610_PAD_PTD21__ESDHC0_DAT6		0x31ef
+			VF610_PAD_PTD20__ESDHC0_DAT7		0x31ef
+		>;
+	};
+
+	pinctrl_esdhc1: esdhc1grp {
+		fsl,pins = <
+			VF610_PAD_PTA24__ESDHC1_CLK		0x31ef
+			VF610_PAD_PTA25__ESDHC1_CMD		0x31ef
+			VF610_PAD_PTA26__ESDHC1_DAT0		0x31ef
+			VF610_PAD_PTA27__ESDHC1_DAT1		0x31ef
+			VF610_PAD_PTA28__ESDHC1_DATA2		0x31ef
+			VF610_PAD_PTA29__ESDHC1_DAT3		0x31ef
+		>;
+	};
+
+	pinctrl_fec1: fec1grp {
+		fsl,pins = <
+			VF610_PAD_PTA6__RMII_CLKIN		0x30d1
+			VF610_PAD_PTC9__ENET_RMII1_MDC		0x30d2
+			VF610_PAD_PTC10__ENET_RMII1_MDIO	0x30d3
+			VF610_PAD_PTC11__ENET_RMII1_CRS		0x30d1
+			VF610_PAD_PTC12__ENET_RMII1_RXD1	0x30d1
+			VF610_PAD_PTC13__ENET_RMII1_RXD0	0x30d1
+			VF610_PAD_PTC14__ENET_RMII1_RXER	0x30d1
+			VF610_PAD_PTC15__ENET_RMII1_TXD1	0x30d2
+			VF610_PAD_PTC16__ENET_RMII1_TXD0	0x30d2
+			VF610_PAD_PTC17__ENET_RMII1_TXEN	0x30d2
+		>;
+	};
+
+	pinctrl_gpio_switch0: pinctrl-gpio-switch0 {
+		fsl,pins = <
+			VF610_PAD_PTE2__GPIO_107		0x31c2
+			VF610_PAD_PTB28__GPIO_98		0x219d
+		>;
+	};
+
+	pinctrl_i2c0: i2c0grp {
+		fsl,pins = <
+			VF610_PAD_PTB14__I2C0_SCL		0x37ff
+			VF610_PAD_PTB15__I2C0_SDA		0x37ff
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			VF610_PAD_PTB16__I2C1_SCL		0x37ff
+			VF610_PAD_PTB17__I2C1_SDA		0x37ff
+		>;
+	};
+
+	pinctrl_leds_debug: pinctrl-leds-debug {
+		fsl,pins = <
+			VF610_PAD_PTD3__GPIO_82			0x31c2
+		>;
+	};
+
+	pinctrl_uart0: uart0grp {
+		fsl,pins = <
+			VF610_PAD_PTB10__UART0_TX		0x21a2
+			VF610_PAD_PTB11__UART0_RX		0x21a1
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			VF610_PAD_PTB23__UART1_TX		0x21a2
+			VF610_PAD_PTB24__UART1_RX		0x21a1
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			VF610_PAD_PTD0__UART2_TX		0x21a2
+			VF610_PAD_PTD1__UART2_RX		0x21a1
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+                fsl,pins = <
+                	VF610_PAD_PTA30__UART3_TX               0x21a2
+                	VF610_PAD_PTA31__UART3_RX               0x21a1
+                >;
+        };
+};
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
