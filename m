Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.176.173])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0lwh-0003YI-Bf
 for barebox@lists.infradead.org; Wed, 08 Jan 2014 05:44:56 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed,  8 Jan 2014 09:44:15 +0400
Message-Id: <1389159856-13909-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] ARM: i.MX51: Sync DT files with kernel
To: barebox@lists.infradead.org

This patch includes update i.MX51 template and porting some barebox
DTS files to use new template.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/dts/imx51-babbage.dts                 | 149 ++++++--
 arch/arm/dts/imx51-genesi-efika-sb.dts         | 156 ++++++---
 arch/arm/dts/imx51-pingrp.h                    | 249 +++++++++++++
 arch/arm/dts/imx51.dtsi                        | 465 +++++--------------------
 include/dt-bindings/clock/imx5-clock.h         | 203 +++++++++++
 include/dt-bindings/interrupt-controller/irq.h |  19 +
 6 files changed, 794 insertions(+), 447 deletions(-)
 create mode 100644 arch/arm/dts/imx51-pingrp.h
 create mode 100644 include/dt-bindings/clock/imx5-clock.h
 create mode 100644 include/dt-bindings/interrupt-controller/irq.h

diff --git a/arch/arm/dts/imx51-babbage.dts b/arch/arm/dts/imx51-babbage.dts
index 4edbccb..41f470e 100644
--- a/arch/arm/dts/imx51-babbage.dts
+++ b/arch/arm/dts/imx51-babbage.dts
@@ -35,7 +35,21 @@
 		crtcs = <&ipu 0>;
 		interface-pix-fmt = "rgb24";
 		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_ipu_disp1_1>;
+		pinctrl-0 = <&pinctrl_ipu_disp1>;
+		display-timings {
+			native-mode = <&timing0>;
+			timing0: dvi {
+				clock-frequency = <65000000>;
+				hactive = <1024>;
+				vactive = <768>;
+				hback-porch = <220>;
+				hfront-porch = <40>;
+				vback-porch = <21>;
+				vfront-porch = <7>;
+				hsync-len = <60>;
+				vsync-len = <10>;
+			};
+		};
 	};
 
 	display@di1 {
@@ -43,7 +57,26 @@
 		crtcs = <&ipu 1>;
 		interface-pix-fmt = "rgb565";
 		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_ipu_disp2_1>;
+		pinctrl-0 = <&pinctrl_ipu_disp2>;
+		status = "disabled";
+		display-timings {
+			native-mode = <&timing1>;
+			timing1: claawvga {
+				clock-frequency = <27000000>;
+				hactive = <800>;
+				vactive = <480>;
+				hback-porch = <40>;
+				hfront-porch = <60>;
+				vback-porch = <10>;
+				vfront-porch = <10>;
+				hsync-len = <20>;
+				vsync-len = <10>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+				de-active = <1>;
+				pixelclk-active = <0>;
+			};
+		};
 	};
 
 	gpio-keys {
@@ -51,7 +84,7 @@
 
 		power {
 			label = "Power Button";
-			gpios = <&gpio2 21 0>;
+			gpios = <&gpio2 21 GPIO_ACTIVE_HIGH>;
 			linux,code = <116>; /* KEY_POWER */
 			gpio-key,wakeup;
 		};
@@ -70,11 +103,25 @@
 		mux-int-port = <2>;
 		mux-ext-port = <3>;
 	};
+
+	clocks {
+		ckih1 {
+			clock-frequency = <22579200>;
+		};
+
+		clk_26M: codec_clock {
+			compatible = "fixed-clock";
+			reg=<0>;
+			#clock-cells = <0>;
+			clock-frequency = <26000000>;
+			gpios = <&gpio4 26 GPIO_ACTIVE_LOW>;
+		};
+	};
 };
 
 &esdhc1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_esdhc1_1>;
+	pinctrl-0 = <&pinctrl_esdhc1>;
 	fsl,cd-controller;
 	fsl,wp-controller;
 	status = "okay";
@@ -89,24 +136,25 @@
 
 &esdhc2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_esdhc2_1>;
-	cd-gpios = <&gpio1 6 0>;
-	wp-gpios = <&gpio1 5 0>;
+	pinctrl-0 = <&pinctrl_esdhc2>;
+	cd-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
+	wp-gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
 
 &uart3 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart3_1>;
+	pinctrl-0 = <&pinctrl_uart3 &pinctrl_uart3_rtscts>;
 	fsl,uart-has-rtscts;
 	status = "okay";
 };
 
 &ecspi1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_ecspi1_1>;
+	pinctrl-0 = <&pinctrl_ecspi1>;
 	fsl,spi-num-chipselects = <2>;
-	cs-gpios = <&gpio4 24 0>, <&gpio4 25 0>;
+	cs-gpios = <&gpio4 24 GPIO_ACTIVE_HIGH>,
+		   <&gpio4 25 GPIO_ACTIVE_LOW>;
 	status = "okay";
 
 	pmic: mc13892@0 {
@@ -117,7 +165,7 @@
 		spi-cs-high;
 		reg = <0>;
 		interrupt-parent = <&gpio1>;
-		interrupts = <8 0x4>;
+		interrupts = <8 IRQ_TYPE_LEVEL_HIGH>;
 
 		regulators {
 			sw1_reg: sw1 {
@@ -240,7 +288,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_hog>;
 
-	hog {
+	imx51-babbage {
 		pinctrl_hog: hoggrp {
 			fsl,pins = <
 				MX51_PAD_GPIO1_0__SD1_CD     0x20d5
@@ -250,34 +298,93 @@
 				MX51_PAD_EIM_A27__GPIO2_21   0x5
 				MX51_PAD_CSPI1_SS0__GPIO4_24 0x85
 				MX51_PAD_CSPI1_SS1__GPIO4_25 0x85
-				MX51_PAD_EIM_A20__GPIO2_14   0x85
+				MX51_PAD_CSPI1_RDY__GPIO4_26 0x80000000
 			>;
 		};
+
+		pinctrl_audmux: audmuxgrp {
+			fsl,pins = <MX51_AUDMUX_PINGRP1>;
+		};
+
+		pinctrl_ecspi1: ecspi1grp {
+			fsl,pins = <MX51_ECSPI1_PINGRP1>;
+		};
+
+		pinctrl_esdhc1: esdhc1grp {
+			fsl,pins = <MX51_ESDHC1_PINGRP1>;
+		};
+
+		pinctrl_esdhc2: esdhc2grp {
+			fsl,pins = <MX51_ESDHC2_PINGRP1>;
+		};
+
+		pinctrl_fec: fecgrp {
+			fsl,pins = <
+				MX51_FEC_PINGRP1
+				MX51_PAD_EIM_A20__GPIO2_14 0x85 /* Reset */
+			>;
+		};
+
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <MX51_I2C2_PINGRP1>;
+		};
+
+		pinctrl_ipu_disp1: ipudisp1grp {
+			fsl,pins = <MX51_IPU_DISP1_PINGRP1>;
+		};
+
+		pinctrl_ipu_disp2: ipudisp2grp {
+			fsl,pins = <MX51_IPU_DISP2_PINGRP1>;
+		};
+
+		pinctrl_kpp: kppgrp {
+			fsl,pins = <MX51_KPP_PINGRP1>;
+		};
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <MX51_UART1_PINGRP1>;
+		};
+
+		pinctrl_uart1_rtscts: uart1rtsctsgrp {
+			fsl,pins = <MX51_UART1_RTSCTS_PINGRP1>;
+		};
+
+		pinctrl_uart2: uart2grp {
+			fsl,pins = <MX51_UART2_PINGRP1>;
+		};
+
+		pinctrl_uart3: uart3grp {
+			fsl,pins = <MX51_UART3_PINGRP1>;
+		};
+
+		pinctrl_uart3_rtscts: uart3rtsctsgrp {
+			fsl,pins = <MX51_UART3_RTSCTS_PINGRP1>;
+		};
 	};
 };
 
 &uart1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart1_1>;
+	pinctrl-0 = <&pinctrl_uart1 &pinctrl_uart1_rtscts>;
 	fsl,uart-has-rtscts;
 	status = "okay";
 };
 
 &uart2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart2_1>;
+	pinctrl-0 = <&pinctrl_uart2>;
 	status = "okay";
 };
 
 &i2c2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c2_1>;
+	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
 
 	sgtl5000: codec@0a {
 		compatible = "fsl,sgtl5000";
 		reg = <0x0a>;
-		clock-frequency = <26000000>;
+		clocks = <&clk_26M>;
 		VDDA-supply = <&vdig_reg>;
 		VDDIO-supply = <&vvideo_reg>;
 	};
@@ -285,20 +392,22 @@
 
 &audmux {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_audmux_1>;
+	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 };
 
 &fec {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_fec_1>;
+	pinctrl-0 = <&pinctrl_fec>;
 	phy-mode = "mii";
+	phy-reset-gpios = <&gpio2 14 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <1>;
 	status = "okay";
 };
 
 &kpp {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_kpp_1>;
+	pinctrl-0 = <&pinctrl_kpp>;
 	linux,keymap = <0x00000067	/* KEY_UP */
 			0x0001006c	/* KEY_DOWN */
 			0x00020072	/* KEY_VOLUMEDOWN */
diff --git a/arch/arm/dts/imx51-genesi-efika-sb.dts b/arch/arm/dts/imx51-genesi-efika-sb.dts
index 21b7c7e..2b85a49 100644
--- a/arch/arm/dts/imx51-genesi-efika-sb.dts
+++ b/arch/arm/dts/imx51-genesi-efika-sb.dts
@@ -38,33 +38,37 @@
 
 	leds {
 		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_leds>;
 
 		mail {
 			label = "mail";
-			gpios = <&gpio1 3 1>;
+			gpios = <&gpio1 3 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "heartbeat";
 		};
 
 		white {
 			label = "white";
-			gpios = <&gpio2 25 0>;
+			gpios = <&gpio2 25 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "none";
 		};
 	};
 
 	gpio-keys {
 		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_keys>;
 
 		power {
 			label = "Power";
-			gpios = <&gpio2 31 0>;
+			gpios = <&gpio2 31 GPIO_ACTIVE_HIGH>;
 			linux,code = <116>; /* KEY_POWER */
 			gpio-key,wakeup;
 		};
 
 		lid {
 			label = "Lid";
-			gpios = <&gpio3 14 0>;
+			gpios = <&gpio3 14 GPIO_ACTIVE_HIGH>;
 			linux,input-type = <5>; /* EV_SW */
 			linux,code = <0>; /* SW_LID */
 			debounce-interval = <1>;
@@ -78,8 +82,7 @@
 		model = "imx51-efikasb-sgtl5000";
 		ssi-controller = <&ssi1>;
 		audio-codec = <&sgtl5000>;
-		audio-routing =
-			"Headphone Jack", "HP_OUT";
+		audio-routing = "Headphone Jack", "HP_OUT";
 		mux-int-port = <1>;
 		mux-ext-port = <3>;
 	};
@@ -101,52 +104,115 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_hog>;
 
-	hog {
+	imx51-genesi-efika-sb {
 		pinctrl_hog: hoggrp {
 			fsl,pins = <
-				MX51_PAD_EIM_DTACK__GPIO2_31 0x800000c0		/* Power button */
 				MX51_PAD_EIM_A16__GPIO2_10  0x80000000		/* WLAN reset */
 				MX51_PAD_EIM_A22__GPIO2_16 0x80000000		/* WLAN power */
-				MX51_PAD_CSI2_D13__GPIO4_10 0x80000000		/* WWAN power? */
 				MX51_PAD_DI1_PIN12__GPIO3_1 0x80000000		/* WLAN switch */
 				MX51_PAD_EIM_A17__GPIO2_11  0x80000000		/* Bluetooth power */
 				MX51_PAD_EIM_A23__GPIO2_17 0x80000000		/* Audio amp enable, 1 = on */
-				MX51_PAD_GPIO1_6__REF_EN_B 0x80000000		/* PMIC interrupt */
-				MX51_PAD_DI1_PIN11__GPIO3_0 0x80000000		/* Battery low */
-				MX51_PAD_CSI2_PIXCLK__GPIO4_15 0x80000000	/* Power good */
-				MX51_PAD_CSI1_VSYNC__GPIO3_14 0x80000000	/* Lid switch, 0 = closed */
-				MX51_PAD_CSPI1_SS0__GPIO4_24 0x85
-				MX51_PAD_CSPI1_SS1__GPIO4_25 0x85
 				MX51_PAD_CSI1_D8__GPIO3_12 0x80000000		/* LVDS enable, 1 = on */
 				MX51_PAD_GPIO1_2__GPIO1_2 0x80000000		/* Backlight PWM */
 				MX51_PAD_CSI2_D19__GPIO4_12 0x80000000		/* Backlight power, 0 = on */
-				MX51_PAD_DISPB2_SER_DIO__GPIO3_6 0x80000000	/* LVDS reset, 1 = reset */
 				MX51_PAD_DISPB2_SER_DIN__GPIO3_5 0x80000000	/* LVDS reset (1 = reset) */
 				MX51_PAD_DISPB2_SER_CLK__GPIO3_7 0x80000000	/* LVDS power, 1 = on */
 				MX51_PAD_CSI1_D9__GPIO3_13 0x80000000		/* LCD enable (1 = on */
 				MX51_PAD_NANDF_CS0__GPIO3_16 0x80000000		/* Camera power, 0 = on */
 				MX51_PAD_GPIO1_5__GPIO1_5 0x80000000		/* USB hub reset, 0 = reset */
 				MX51_PAD_EIM_D27__GPIO2_9  0x80000000		/* USB phy reset, 0 = reset */
-				MX51_PAD_DISPB2_SER_DIO__GPIO3_6 0x80000000	/* Battery, 0 = inserted */
-				MX51_PAD_GPIO1_3__GPIO1_3 0x80000000		/* Alarm LED, 0 = on */
-				MX51_PAD_EIM_CS0__GPIO2_25 0x80000000		/* Caps LED, 1 = on */
 				MX51_PAD_CSPI1_RDY__GPIO4_26 0x80000000		/* Audio clk enable */
-				MX51_PAD_EIM_A26__GPIO2_20 0x80000000
-				MX51_PAD_USBH1_STP__GPIO1_27 0x80000000
 			>;
 		};
+
+		pinctrl_audmux: audmuxgrp {
+			fsl,pins = <MX51_AUDMUX_PINGRP1>;
+		};
+
+		pinctrl_battery: batterygrp {
+			fsl,pins = <
+				MX51_PAD_DISPB2_SER_DIO__GPIO3_6 0xe5 /* Battery */
+			>;
+		};
+
+		pinctrl_ecspi1: ecspi1grp {
+			fsl,pins = <
+				MX51_ECSPI1_PINGRP1
+				MX51_PAD_CSPI1_SS0__GPIO4_24	0x85 /* CS0 */
+				MX51_PAD_CSPI1_SS1__GPIO4_25	0x85 /* CS1 */
+				MX51_PAD_GPIO1_6__GPIO1_6	0xe5 /* PMIC IRQ */
+			>;
+		};
+
+		pinctrl_esdhc1: esdhc1grp {
+			fsl,pins = <
+				MX51_ESDHC1_PINGRP1
+				MX51_PAD_GPIO1_1__GPIO1_1	0xe5 /* WP */
+				MX51_PAD_EIM_CS2__GPIO2_27	0xe5 /* CD */
+			>;
+		};
+
+		pinctrl_esdhc2: esdhc2grp {
+			fsl,pins = <
+				MX51_ESDHC2_PINGRP1
+				MX51_PAD_GPIO1_7__GPIO1_7	0xe5 /* WP */
+				MX51_PAD_GPIO1_8__GPIO1_8	0xe5 /* CD */
+			>;
+		};
+
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <MX51_I2C2_PINGRP1>;
+		};
+
+		pinctrl_ipu_disp1: ipudisp1grp {
+			fsl,pins = <MX51_IPU_DISP1_PINGRP1>;
+		};
+
+		pinctrl_keys: keysgrp {
+			fsl,pins = <
+				MX51_PAD_EIM_DTACK__GPIO2_31	0xe5 /* Power btn */
+				MX51_PAD_CSI1_VSYNC__GPIO3_14	0xe5 /* Lid switch */
+			>;
+		};
+
+		pinctrl_leds: ledsgrp {
+			fsl,pins = <
+				MX51_PAD_GPIO1_3__GPIO1_3	0x85 /* Alarm LED */
+				MX51_PAD_EIM_CS0__GPIO2_25	0x85 /* Caps LED */
+			>;
+		};
+
+		pinctrl_pata: patagrp {
+			fsl,pins = <MX51_PATA_PINGRP1>;
+		};
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX51_UART1_PINGRP1
+				MX51_UART1_RTSCTS_PINGRP1
+			>;
+		};
+
+		pinctrl_usbh1: usbh1grp {
+			fsl,pins = <MX51_USBH1_PINGRP1>;
+		};
+
+		pinctrl_usbh2: usbh2grp {
+			fsl,pins = <MX51_USBH2_PINGRP1>;
+		};
 	};
 };
 
 &uart1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart1_1>;
+	pinctrl-0 = <&pinctrl_uart1>;
+	fsl,uart-has-rtscts;
 	status = "okay";
 };
 
 &i2c2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c2_1>;
+	pinctrl-0 = <&pinctrl_i2c2>;
 	clock-frequency = <100000>;
 	status = "okay";
 
@@ -161,34 +227,36 @@
 
 	battery: battery@0b {
 		compatible = "sbs,sbs-battery";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_battery>;
 		reg = <0x0b>;
-		sbs,battery-detect-gpios = <&gpio3 6 1>;
+		sbs,battery-detect-gpios = <&gpio3 6 GPIO_ACTIVE_LOW>;
 	};
 
 	lvds: mtl017@3a {
 		compatible = "mtl017";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ipu_disp1>;
 		reg = <0x3a>;
 		crtcs = <&ipu 1>;
 		edid-i2c = <&i2c2>;
 		interface-pix-fmt = "rgb565";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_ipu_disp1_1>;
 	};
 };
 
 &esdhc1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_esdhc1_1>;
-	cd-gpios = <&gpio2 27 0>;
-	wp-gpios = <&gpio1 1 0>;
+	pinctrl-0 = <&pinctrl_esdhc1>;
+	cd-gpios = <&gpio2 27 GPIO_ACTIVE_HIGH>;
+	wp-gpios = <&gpio1 1 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
 
 &esdhc2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_esdhc2_1>;
-	cd-gpios = <&gpio1 8 0>;
-	wp-gpios = <&gpio1 7 0>;
+	pinctrl-0 = <&pinctrl_esdhc2>;
+	cd-gpios = <&gpio1 8 GPIO_ACTIVE_HIGH>;
+	wp-gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 	#address-cells = <1>;
 	#size-cells = <1>;
@@ -200,23 +268,22 @@
 };
 
 &ecspi1 {
-	fsl,spi-num-chipselects = <1>;
-	cs-gpios = <&gpio4 23 0>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_ecspi1_1>;
+	pinctrl-0 = <&pinctrl_ecspi1>;
 	fsl,spi-num-chipselects = <2>;
-	cs-gpios = <&gpio4 24 0>, <&gpio4 25 0>;
+	cs-gpios = <&gpio4 24 GPIO_ACTIVE_HIGH>,
+		   <&gpio4 25 GPIO_ACTIVE_LOW>;
 	status = "okay";
 
 	pmic: mc13892@0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
 		compatible = "fsl,mc13892";
 		spi-max-frequency = <20000000>;
 		reg = <0>;
 		spi-cs-high;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		interrupt-parent = <&gpio1>;
-		interrupts = <6 0x4>;
+		interrupts = <6 IRQ_TYPE_LEVEL_HIGH>;
 
 		regulators {
 			sw1_reg: sw1 {
@@ -321,34 +388,31 @@
 
 &audmux {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_audmux_1>;
+	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 };
 
 &pata {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_pata_1>;
+	pinctrl-0 = <&pinctrl_pata>;
 	status = "okay";
 };
 
 &usbotg {
-	barebox,phy_type = "utmi_wide";
 	phy_type = "ulpi";
 	status = "okay";
 };
 
 &usbh1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usbh1_1>;
-	barebox,phy_type = "ulpi";
+	pinctrl-0 = <&pinctrl_usbh1>;
 	phy_type = "ulpi";
 	status = "okay";
 };
 
 &usbh2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usbh2_1>;
-	barebox,phy_type = "ulpi";
+	pinctrl-0 = <&pinctrl_usbh2>;
 	phy_type = "ulpi";
 	status = "okay";
 };
diff --git a/arch/arm/dts/imx51-pingrp.h b/arch/arm/dts/imx51-pingrp.h
new file mode 100644
index 0000000..f63267b
--- /dev/null
+++ b/arch/arm/dts/imx51-pingrp.h
@@ -0,0 +1,249 @@
+/*
+ * Copyright (C) 2013 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+
+#ifndef __DTS_IMX51_PINGRP_H
+#define __DTS_IMX51_PINGRP_H
+
+#include "imx51-pinfunc.h"
+
+#define MX51_AUDMUX_PINGRP1 \
+	MX51_PAD_AUD3_BB_TXD__AUD3_TXD			0x80000000 \
+	MX51_PAD_AUD3_BB_RXD__AUD3_RXD			0x80000000 \
+	MX51_PAD_AUD3_BB_CK__AUD3_TXC			0x80000000 \
+	MX51_PAD_AUD3_BB_FS__AUD3_TXFS			0x80000000
+
+#define MX51_FEC_PINGRP1 \
+	MX51_PAD_EIM_EB2__FEC_MDIO			0x80000000 \
+	MX51_PAD_EIM_EB3__FEC_RDATA1			0x80000000 \
+	MX51_PAD_EIM_CS2__FEC_RDATA2			0x80000000 \
+	MX51_PAD_EIM_CS3__FEC_RDATA3			0x80000000 \
+	MX51_PAD_EIM_CS4__FEC_RX_ER			0x80000000 \
+	MX51_PAD_EIM_CS5__FEC_CRS			0x80000000 \
+	MX51_PAD_NANDF_RB2__FEC_COL			0x80000000 \
+	MX51_PAD_NANDF_RB3__FEC_RX_CLK			0x80000000 \
+	MX51_PAD_NANDF_D9__FEC_RDATA0			0x80000000 \
+	MX51_PAD_NANDF_D8__FEC_TDATA0			0x80000000 \
+	MX51_PAD_NANDF_CS2__FEC_TX_ER			0x80000000 \
+	MX51_PAD_NANDF_CS3__FEC_MDC			0x80000000 \
+	MX51_PAD_NANDF_CS4__FEC_TDATA1			0x80000000 \
+	MX51_PAD_NANDF_CS5__FEC_TDATA2			0x80000000 \
+	MX51_PAD_NANDF_CS6__FEC_TDATA3			0x80000000 \
+	MX51_PAD_NANDF_CS7__FEC_TX_EN			0x80000000 \
+	MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK		0x80000000
+
+#define MX51_FEC_PINGRP2 \
+	MX51_PAD_DI_GP3__FEC_TX_ER			0x80000000 \
+	MX51_PAD_DI2_PIN4__FEC_CRS			0x80000000 \
+	MX51_PAD_DI2_PIN2__FEC_MDC			0x80000000 \
+	MX51_PAD_DI2_PIN3__FEC_MDIO			0x80000000 \
+	MX51_PAD_DI2_DISP_CLK__FEC_RDATA1		0x80000000 \
+	MX51_PAD_DI_GP4__FEC_RDATA2			0x80000000 \
+	MX51_PAD_DISP2_DAT0__FEC_RDATA3			0x80000000 \
+	MX51_PAD_DISP2_DAT1__FEC_RX_ER			0x80000000 \
+	MX51_PAD_DISP2_DAT6__FEC_TDATA1			0x80000000 \
+	MX51_PAD_DISP2_DAT7__FEC_TDATA2			0x80000000 \
+	MX51_PAD_DISP2_DAT8__FEC_TDATA3			0x80000000 \
+	MX51_PAD_DISP2_DAT9__FEC_TX_EN			0x80000000 \
+	MX51_PAD_DISP2_DAT10__FEC_COL			0x80000000 \
+	MX51_PAD_DISP2_DAT11__FEC_RX_CLK		0x80000000 \
+	MX51_PAD_DISP2_DAT12__FEC_RX_DV			0x80000000 \
+	MX51_PAD_DISP2_DAT13__FEC_TX_CLK		0x80000000 \
+	MX51_PAD_DISP2_DAT14__FEC_RDATA0		0x80000000 \
+	MX51_PAD_DISP2_DAT15__FEC_TDATA0		0x80000000
+
+#define MX51_ECSPI1_PINGRP1 \
+	MX51_PAD_CSPI1_MISO__ECSPI1_MISO		0x185 \
+	MX51_PAD_CSPI1_MOSI__ECSPI1_MOSI		0x185 \
+	MX51_PAD_CSPI1_SCLK__ECSPI1_SCLK		0x185
+
+#define MX51_ECSPI2_PINGRP1 \
+	MX51_PAD_NANDF_RB3__ECSPI2_MISO			0x185 \
+	MX51_PAD_NANDF_D15__ECSPI2_MOSI			0x185 \
+	MX51_PAD_NANDF_RB2__ECSPI2_SCLK			0x185
+
+#define MX51_ESDHC1_PINGRP1 \
+	MX51_PAD_SD1_CMD__SD1_CMD			0x400020d5 \
+	MX51_PAD_SD1_CLK__SD1_CLK			0x20d5 \
+	MX51_PAD_SD1_DATA0__SD1_DATA0			0x20d5 \
+	MX51_PAD_SD1_DATA1__SD1_DATA1			0x20d5 \
+	MX51_PAD_SD1_DATA2__SD1_DATA2			0x20d5 \
+	MX51_PAD_SD1_DATA3__SD1_DATA3			0x20d5
+
+#define MX51_ESDHC2_PINGRP1 \
+	MX51_PAD_SD2_CMD__SD2_CMD			0x400020d5 \
+	MX51_PAD_SD2_CLK__SD2_CLK			0x20d5 \
+	MX51_PAD_SD2_DATA0__SD2_DATA0			0x20d5 \
+	MX51_PAD_SD2_DATA1__SD2_DATA1			0x20d5 \
+	MX51_PAD_SD2_DATA2__SD2_DATA2			0x20d5 \
+	MX51_PAD_SD2_DATA3__SD2_DATA3			0x20d5
+
+#define MX51_I2C1_PINGRP1 \
+	MX51_PAD_SD2_CMD__I2C1_SCL			0x400001ed \
+	MX51_PAD_SD2_CLK__I2C1_SDA			0x400001ed
+
+#define MX51_I2C2_PINGRP1 \
+	MX51_PAD_KEY_COL4__I2C2_SCL			0x400001ed \
+	MX51_PAD_KEY_COL5__I2C2_SDA			0x400001ed
+
+#define MX51_I2C2_PINGRP2 \
+	MX51_PAD_EIM_D27__I2C2_SCL			0x400001ed \
+	MX51_PAD_EIM_D24__I2C2_SDA			0x400001ed
+
+#define MX51_I2C2_PINGRP3 \
+	MX51_PAD_GPIO1_2__I2C2_SCL			0x400001ed \
+	MX51_PAD_GPIO1_3__I2C2_SDA			0x400001ed
+
+#define MX51_IPU_DISP1_PINGRP1 \
+	MX51_PAD_DISP1_DAT0__DISP1_DAT0			0x5 \
+	MX51_PAD_DISP1_DAT1__DISP1_DAT1			0x5 \
+	MX51_PAD_DISP1_DAT2__DISP1_DAT2			0x5 \
+	MX51_PAD_DISP1_DAT3__DISP1_DAT3			0x5 \
+	MX51_PAD_DISP1_DAT4__DISP1_DAT4			0x5 \
+	MX51_PAD_DISP1_DAT5__DISP1_DAT5			0x5 \
+	MX51_PAD_DISP1_DAT6__DISP1_DAT6			0x5 \
+	MX51_PAD_DISP1_DAT7__DISP1_DAT7			0x5 \
+	MX51_PAD_DISP1_DAT8__DISP1_DAT8			0x5 \
+	MX51_PAD_DISP1_DAT9__DISP1_DAT9			0x5 \
+	MX51_PAD_DISP1_DAT10__DISP1_DAT10		0x5 \
+	MX51_PAD_DISP1_DAT11__DISP1_DAT11		0x5 \
+	MX51_PAD_DISP1_DAT12__DISP1_DAT12		0x5 \
+	MX51_PAD_DISP1_DAT13__DISP1_DAT13		0x5 \
+	MX51_PAD_DISP1_DAT14__DISP1_DAT14		0x5 \
+	MX51_PAD_DISP1_DAT15__DISP1_DAT15		0x5 \
+	MX51_PAD_DISP1_DAT16__DISP1_DAT16		0x5 \
+	MX51_PAD_DISP1_DAT17__DISP1_DAT17		0x5 \
+	MX51_PAD_DISP1_DAT18__DISP1_DAT18		0x5 \
+	MX51_PAD_DISP1_DAT19__DISP1_DAT19		0x5 \
+	MX51_PAD_DISP1_DAT20__DISP1_DAT20		0x5 \
+	MX51_PAD_DISP1_DAT21__DISP1_DAT21		0x5 \
+	MX51_PAD_DISP1_DAT22__DISP1_DAT22		0x5 \
+	MX51_PAD_DISP1_DAT23__DISP1_DAT23		0x5 \
+	MX51_PAD_DI1_PIN2__DI1_PIN2			0x5 \
+	MX51_PAD_DI1_PIN3__DI1_PIN3			0x5
+
+#define MX51_IPU_DISP2_PINGRP1 \
+	MX51_PAD_DISP2_DAT0__DISP2_DAT0			0x5 \
+	MX51_PAD_DISP2_DAT1__DISP2_DAT1			0x5 \
+	MX51_PAD_DISP2_DAT2__DISP2_DAT2			0x5 \
+	MX51_PAD_DISP2_DAT3__DISP2_DAT3			0x5 \
+	MX51_PAD_DISP2_DAT4__DISP2_DAT4			0x5 \
+	MX51_PAD_DISP2_DAT5__DISP2_DAT5			0x5 \
+	MX51_PAD_DISP2_DAT6__DISP2_DAT6			0x5 \
+	MX51_PAD_DISP2_DAT7__DISP2_DAT7			0x5 \
+	MX51_PAD_DISP2_DAT8__DISP2_DAT8			0x5 \
+	MX51_PAD_DISP2_DAT9__DISP2_DAT9			0x5 \
+	MX51_PAD_DISP2_DAT10__DISP2_DAT10		0x5 \
+	MX51_PAD_DISP2_DAT11__DISP2_DAT11		0x5 \
+	MX51_PAD_DISP2_DAT12__DISP2_DAT12		0x5 \
+	MX51_PAD_DISP2_DAT13__DISP2_DAT13		0x5 \
+	MX51_PAD_DISP2_DAT14__DISP2_DAT14		0x5 \
+	MX51_PAD_DISP2_DAT15__DISP2_DAT15		0x5 \
+	MX51_PAD_DI2_PIN2__DI2_PIN2			0x5 \
+	MX51_PAD_DI2_PIN3__DI2_PIN3			0x5 \
+	MX51_PAD_DI2_DISP_CLK__DI2_DISP_CLK		0x5 \
+	MX51_PAD_DI_GP4__DI2_PIN15			0x5
+
+#define MX51_KPP_PINGRP1 \
+	MX51_PAD_KEY_ROW0__KEY_ROW0			0xe0 \
+	MX51_PAD_KEY_ROW1__KEY_ROW1			0xe0 \
+	MX51_PAD_KEY_ROW2__KEY_ROW2			0xe0 \
+	MX51_PAD_KEY_ROW3__KEY_ROW3			0xe0 \
+	MX51_PAD_KEY_COL0__KEY_COL0			0xe8 \
+	MX51_PAD_KEY_COL1__KEY_COL1			0xe8 \
+	MX51_PAD_KEY_COL2__KEY_COL2			0xe8 \
+	MX51_PAD_KEY_COL3__KEY_COL3			0xe8
+
+#define MX51_PATA_PINGRP1 \
+	MX51_PAD_NANDF_WE_B__PATA_DIOW			0x2004 \
+	MX51_PAD_NANDF_RE_B__PATA_DIOR			0x2004 \
+	MX51_PAD_NANDF_ALE__PATA_BUFFER_EN		0x2004 \
+	MX51_PAD_NANDF_CLE__PATA_RESET_B		0x2004 \
+	MX51_PAD_NANDF_WP_B__PATA_DMACK			0x2004 \
+	MX51_PAD_NANDF_RB0__PATA_DMARQ			0x2004 \
+	MX51_PAD_NANDF_RB1__PATA_IORDY			0x2004 \
+	MX51_PAD_GPIO_NAND__PATA_INTRQ			0x2004 \
+	MX51_PAD_NANDF_CS2__PATA_CS_0			0x2004 \
+	MX51_PAD_NANDF_CS3__PATA_CS_1			0x2004 \
+	MX51_PAD_NANDF_CS4__PATA_DA_0			0x2004 \
+	MX51_PAD_NANDF_CS5__PATA_DA_1			0x2004 \
+	MX51_PAD_NANDF_CS6__PATA_DA_2			0x2004 \
+	MX51_PAD_NANDF_D15__PATA_DATA15			0x2004 \
+	MX51_PAD_NANDF_D14__PATA_DATA14			0x2004 \
+	MX51_PAD_NANDF_D13__PATA_DATA13			0x2004 \
+	MX51_PAD_NANDF_D12__PATA_DATA12			0x2004 \
+	MX51_PAD_NANDF_D11__PATA_DATA11			0x2004 \
+	MX51_PAD_NANDF_D10__PATA_DATA10			0x2004 \
+	MX51_PAD_NANDF_D9__PATA_DATA9			0x2004 \
+	MX51_PAD_NANDF_D8__PATA_DATA8			0x2004 \
+	MX51_PAD_NANDF_D7__PATA_DATA7			0x2004 \
+	MX51_PAD_NANDF_D6__PATA_DATA6			0x2004 \
+	MX51_PAD_NANDF_D5__PATA_DATA5			0x2004 \
+	MX51_PAD_NANDF_D4__PATA_DATA4			0x2004 \
+	MX51_PAD_NANDF_D3__PATA_DATA3			0x2004 \
+	MX51_PAD_NANDF_D2__PATA_DATA2			0x2004 \
+	MX51_PAD_NANDF_D1__PATA_DATA1			0x2004 \
+	MX51_PAD_NANDF_D0__PATA_DATA0			0x2004
+
+#define MX51_UART1_PINGRP1 \
+	MX51_PAD_UART1_RXD__UART1_RXD			0x1c5 \
+	MX51_PAD_UART1_TXD__UART1_TXD			0x1c5
+
+#define MX51_UART1_RTSCTS_PINGRP1 \
+	MX51_PAD_UART1_RTS__UART1_RTS			0x1c5 \
+	MX51_PAD_UART1_CTS__UART1_CTS			0x1c5
+
+#define MX51_UART2_PINGRP1 \
+	MX51_PAD_UART2_RXD__UART2_RXD			0x1c5 \
+	MX51_PAD_UART2_TXD__UART2_TXD			0x1c5
+
+#define MX51_UART3_PINGRP1 \
+	MX51_PAD_EIM_D25__UART3_RXD			0x1c5 \
+	MX51_PAD_EIM_D26__UART3_TXD			0x1c5
+
+#define MX51_UART3_RTSCTS_PINGRP1 \
+	MX51_PAD_EIM_D27__UART3_RTS			0x1c5 \
+	MX51_PAD_EIM_D24__UART3_CTS			0x1c5
+
+#define MX51_UART3_PINGRP2 \
+	MX51_PAD_UART3_RXD__UART3_RXD			0x1c5 \
+	MX51_PAD_UART3_TXD__UART3_TXD			0x1c5
+
+#define MX51_UART3_RTSCTS_PINGRP2 \
+	MX51_PAD_KEY_COL4__UART3_RTS			0x1c5 \
+	MX51_PAD_KEY_COL5__UART3_CTS			0x1c5
+
+#define MX51_USBH1_PINGRP1 \
+	MX51_PAD_USBH1_DATA0__USBH1_DATA0		0x1e5 \
+	MX51_PAD_USBH1_DATA1__USBH1_DATA1		0x1e5 \
+	MX51_PAD_USBH1_DATA2__USBH1_DATA2		0x1e5 \
+	MX51_PAD_USBH1_DATA3__USBH1_DATA3		0x1e5 \
+	MX51_PAD_USBH1_DATA4__USBH1_DATA4		0x1e5 \
+	MX51_PAD_USBH1_DATA5__USBH1_DATA5		0x1e5 \
+	MX51_PAD_USBH1_DATA6__USBH1_DATA6		0x1e5 \
+	MX51_PAD_USBH1_DATA7__USBH1_DATA7		0x1e5 \
+	MX51_PAD_USBH1_CLK__USBH1_CLK			0x1e5 \
+	MX51_PAD_USBH1_DIR__USBH1_DIR			0x1e5 \
+	MX51_PAD_USBH1_NXT__USBH1_NXT			0x1e5 \
+	MX51_PAD_USBH1_STP__USBH1_STP			0x1e5
+
+#define MX51_USBH2_PINGRP1 \
+	MX51_PAD_EIM_D16__USBH2_DATA0			0x1e5 \
+	MX51_PAD_EIM_D17__USBH2_DATA1			0x1e5 \
+	MX51_PAD_EIM_D18__USBH2_DATA2			0x1e5 \
+	MX51_PAD_EIM_D19__USBH2_DATA3			0x1e5 \
+	MX51_PAD_EIM_D20__USBH2_DATA4			0x1e5 \
+	MX51_PAD_EIM_D21__USBH2_DATA5			0x1e5 \
+	MX51_PAD_EIM_D22__USBH2_DATA6			0x1e5 \
+	MX51_PAD_EIM_D23__USBH2_DATA7			0x1e5 \
+	MX51_PAD_EIM_A24__USBH2_CLK			0x1e5 \
+	MX51_PAD_EIM_A25__USBH2_DIR			0x1e5 \
+	MX51_PAD_EIM_A27__USBH2_NXT			0x1e5 \
+	MX51_PAD_EIM_A26__USBH2_STP			0x1e5
+
+#endif /* __DTS_IMX51_PINGRP_H */
diff --git a/arch/arm/dts/imx51.dtsi b/arch/arm/dts/imx51.dtsi
index c105daf..61a2552 100644
--- a/arch/arm/dts/imx51.dtsi
+++ b/arch/arm/dts/imx51.dtsi
@@ -11,7 +11,10 @@
  */
 
 #include "skeleton.dtsi"
-#include "imx51-pinfunc.h"
+#include "imx51-pingrp.h"
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/clock/imx5-clock.h>
+#include <dt-bindings/gpio/gpio.h>
 
 / {
 	aliases {
@@ -21,11 +24,6 @@
 		gpio3 = &gpio4;
 		i2c0 = &i2c1;
 		i2c1 = &i2c2;
-		mmc0 = &esdhc1;
-		mmc1 = &esdhc2;
-		mmc2 = &esdhc3;
-		mmc3 = &esdhc4;
-		pata0 = &pata;
 		serial0 = &uart1;
 		serial1 = &uart2;
 		serial2 = &uart3;
@@ -69,18 +67,32 @@
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
-		cpu@0 {
+		cpu: cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a8";
 			reg = <0>;
-			clock-latency = <61036>; /* two CLK32 periods */
-			clocks = <&clks 24>;
+			clock-latency = <62500>;
+			clocks = <&clks IMX5_CLK_CPU_PODF>;
 			clock-names = "cpu";
 			operating-points = <
-				/* kHz  uV (No regulator support) */
-				160000  0
-				800000  0
+				166000	1000000
+				600000	1050000
+				800000	1100000
 			>;
+			voltage-tolerance = <5>;
+		};
+	};
+
+	usbphy {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "simple-bus";
+
+		usbphy0: usbphy@0 {
+			compatible = "usb-nop-xceiv";
+			reg = <0>;
+			clocks = <&clks IMX5_CLK_USB_PHY_GATE>;
+			clock-names = "main_clk";
 		};
 	};
 
@@ -101,7 +113,9 @@
 			compatible = "fsl,imx51-ipu";
 			reg = <0x40000000 0x20000000>;
 			interrupts = <11 10>;
-			clocks = <&clks 59>, <&clks 110>, <&clks 61>;
+			clocks = <&clks IMX5_CLK_IPU_GATE>,
+			         <&clks IMX5_CLK_IPU_DI0_GATE>,
+			         <&clks IMX5_CLK_IPU_DI1_GATE>;
 			clock-names = "bus", "di0", "di1";
 			resets = <&src 2>;
 		};
@@ -124,7 +138,9 @@
 					compatible = "fsl,imx51-esdhc";
 					reg = <0x70004000 0x4000>;
 					interrupts = <1>;
-					clocks = <&clks 44>, <&clks 0>, <&clks 71>;
+					clocks = <&clks IMX5_CLK_ESDHC1_IPG_GATE>,
+					         <&clks IMX5_CLK_DUMMY>,
+					         <&clks IMX5_CLK_ESDHC1_PER_GATE>;
 					clock-names = "ipg", "ahb", "per";
 					status = "disabled";
 				};
@@ -133,7 +149,9 @@
 					compatible = "fsl,imx51-esdhc";
 					reg = <0x70008000 0x4000>;
 					interrupts = <2>;
-					clocks = <&clks 45>, <&clks 0>, <&clks 72>;
+					clocks = <&clks IMX5_CLK_ESDHC2_IPG_GATE>,
+					         <&clks IMX5_CLK_DUMMY>,
+					         <&clks IMX5_CLK_ESDHC2_PER_GATE>;
 					clock-names = "ipg", "ahb", "per";
 					bus-width = <4>;
 					status = "disabled";
@@ -143,7 +161,8 @@
 					compatible = "fsl,imx51-uart", "fsl,imx21-uart";
 					reg = <0x7000c000 0x4000>;
 					interrupts = <33>;
-					clocks = <&clks 32>, <&clks 33>;
+					clocks = <&clks IMX5_CLK_UART3_IPG_GATE>,
+					         <&clks IMX5_CLK_UART3_PER_GATE>;
 					clock-names = "ipg", "per";
 					status = "disabled";
 				};
@@ -154,7 +173,8 @@
 					compatible = "fsl,imx51-ecspi";
 					reg = <0x70010000 0x4000>;
 					interrupts = <36>;
-					clocks = <&clks 51>, <&clks 52>;
+					clocks = <&clks IMX5_CLK_ECSPI1_IPG_GATE>,
+					         <&clks IMX5_CLK_ECSPI1_PER_GATE>;
 					clock-names = "ipg", "per";
 					status = "disabled";
 				};
@@ -163,9 +183,9 @@
 					compatible = "fsl,imx51-ssi", "fsl,imx21-ssi";
 					reg = <0x70014000 0x4000>;
 					interrupts = <30>;
-					clocks = <&clks 49>;
-					dmas = <&sdma 24 1 0>,
-					       <&sdma 25 1 0>;
+					clocks = <&clks IMX5_CLK_SSI2_IPG_GATE>;
+					dmas = <&sdma 24 22 0>,
+					       <&sdma 25 22 0>;
 					dma-names = "rx", "tx";
 					fsl,fifo-depth = <15>;
 					fsl,ssi-dma-events = <25 24 23 22>; /* TX0 RX0 TX1 RX1 */
@@ -176,7 +196,9 @@
 					compatible = "fsl,imx51-esdhc";
 					reg = <0x70020000 0x4000>;
 					interrupts = <3>;
-					clocks = <&clks 46>, <&clks 0>, <&clks 73>;
+					clocks = <&clks IMX5_CLK_ESDHC3_IPG_GATE>,
+					         <&clks IMX5_CLK_DUMMY>,
+					         <&clks IMX5_CLK_ESDHC3_PER_GATE>;
 					clock-names = "ipg", "ahb", "per";
 					bus-width = <4>;
 					status = "disabled";
@@ -186,25 +208,20 @@
 					compatible = "fsl,imx51-esdhc";
 					reg = <0x70024000 0x4000>;
 					interrupts = <4>;
-					clocks = <&clks 47>, <&clks 0>, <&clks 74>;
+					clocks = <&clks IMX5_CLK_ESDHC4_IPG_GATE>,
+					         <&clks IMX5_CLK_DUMMY>,
+					         <&clks IMX5_CLK_ESDHC4_PER_GATE>;
 					clock-names = "ipg", "ahb", "per";
 					bus-width = <4>;
 					status = "disabled";
 				};
 			};
 
-			usbphy0: usbphy@0 {
-				compatible = "usb-nop-xceiv";
-				clocks = <&clks 124>;
-				clock-names = "main_clk";
-				status = "okay";
-			};
-
 			usbotg: usb@73f80000 {
 				compatible = "fsl,imx51-usb", "fsl,imx27-usb";
 				reg = <0x73f80000 0x0200>;
 				interrupts = <18>;
-				clocks = <&clks 108>;
+				clocks = <&clks IMX5_CLK_USBOH3_GATE>;
 				fsl,usbmisc = <&usbmisc 0>;
 				fsl,usbphy = <&usbphy0>;
 				status = "disabled";
@@ -214,7 +231,7 @@
 				compatible = "fsl,imx51-usb", "fsl,imx27-usb";
 				reg = <0x73f80200 0x0200>;
 				interrupts = <14>;
-				clocks = <&clks 108>;
+				clocks = <&clks IMX5_CLK_USBOH3_GATE>;
 				fsl,usbmisc = <&usbmisc 1>;
 				status = "disabled";
 			};
@@ -223,7 +240,7 @@
 				compatible = "fsl,imx51-usb", "fsl,imx27-usb";
 				reg = <0x73f80400 0x0200>;
 				interrupts = <16>;
-				clocks = <&clks 108>;
+				clocks = <&clks IMX5_CLK_USBOH3_GATE>;
 				fsl,usbmisc = <&usbmisc 2>;
 				status = "disabled";
 			};
@@ -232,7 +249,7 @@
 				compatible = "fsl,imx51-usb", "fsl,imx27-usb";
 				reg = <0x73f80600 0x0200>;
 				interrupts = <17>;
-				clocks = <&clks 108>;
+				clocks = <&clks IMX5_CLK_USBOH3_GATE>;
 				fsl,usbmisc = <&usbmisc 3>;
 				status = "disabled";
 			};
@@ -241,7 +258,7 @@
 				#index-cells = <1>;
 				compatible = "fsl,imx51-usbmisc";
 				reg = <0x73f80800 0x200>;
-				clocks = <&clks 108>;
+				clocks = <&clks IMX5_CLK_USBOH3_GATE>;
 			};
 
 			gpio1: gpio@73f84000 {
@@ -288,7 +305,7 @@
 				compatible = "fsl,imx51-kpp", "fsl,imx21-kpp";
 				reg = <0x73f94000 0x4000>;
 				interrupts = <60>;
-				clocks = <&clks 0>;
+				clocks = <&clks IMX5_CLK_DUMMY>;
 				status = "disabled";
 			};
 
@@ -296,14 +313,14 @@
 				compatible = "fsl,imx51-wdt", "fsl,imx21-wdt";
 				reg = <0x73f98000 0x4000>;
 				interrupts = <58>;
-				clocks = <&clks 0>;
+				clocks = <&clks IMX5_CLK_DUMMY>;
 			};
 
 			wdog2: wdog@73f9c000 {
 				compatible = "fsl,imx51-wdt", "fsl,imx21-wdt";
 				reg = <0x73f9c000 0x4000>;
 				interrupts = <59>;
-				clocks = <&clks 0>;
+				clocks = <&clks IMX5_CLK_DUMMY>;
 				status = "disabled";
 			};
 
@@ -311,7 +328,8 @@
 				compatible = "fsl,imx51-gpt", "fsl,imx31-gpt";
 				reg = <0x73fa0000 0x4000>;
 				interrupts = <39>;
-				clocks = <&clks 36>, <&clks 41>;
+				clocks = <&clks IMX5_CLK_GPT_IPG_GATE>,
+				         <&clks IMX5_CLK_GPT_HF_GATE>;
 				clock-names = "ipg", "per";
 			};
 
@@ -324,7 +342,8 @@
 				#pwm-cells = <2>;
 				compatible = "fsl,imx51-pwm", "fsl,imx27-pwm";
 				reg = <0x73fb4000 0x4000>;
-				clocks = <&clks 37>, <&clks 38>;
+				clocks = <&clks IMX5_CLK_PWM1_IPG_GATE>,
+				         <&clks IMX5_CLK_PWM1_HF_GATE>;
 				clock-names = "ipg", "per";
 				interrupts = <61>;
 			};
@@ -333,7 +352,8 @@
 				#pwm-cells = <2>;
 				compatible = "fsl,imx51-pwm", "fsl,imx27-pwm";
 				reg = <0x73fb8000 0x4000>;
-				clocks = <&clks 39>, <&clks 40>;
+				clocks = <&clks IMX5_CLK_PWM2_IPG_GATE>,
+				         <&clks IMX5_CLK_PWM2_HF_GATE>;
 				clock-names = "ipg", "per";
 				interrupts = <94>;
 			};
@@ -342,7 +362,8 @@
 				compatible = "fsl,imx51-uart", "fsl,imx21-uart";
 				reg = <0x73fbc000 0x4000>;
 				interrupts = <31>;
-				clocks = <&clks 28>, <&clks 29>;
+				clocks = <&clks IMX5_CLK_UART1_IPG_GATE>,
+				         <&clks IMX5_CLK_UART1_PER_GATE>;
 				clock-names = "ipg", "per";
 				status = "disabled";
 			};
@@ -351,7 +372,8 @@
 				compatible = "fsl,imx51-uart", "fsl,imx21-uart";
 				reg = <0x73fc0000 0x4000>;
 				interrupts = <32>;
-				clocks = <&clks 30>, <&clks 31>;
+				clocks = <&clks IMX5_CLK_UART2_IPG_GATE>,
+				         <&clks IMX5_CLK_UART2_PER_GATE>;
 				clock-names = "ipg", "per";
 				status = "disabled";
 			};
@@ -381,14 +403,14 @@
 				compatible = "fsl,imx51-iim", "fsl,imx27-iim";
 				reg = <0x83f98000 0x4000>;
 				interrupts = <69>;
-				clocks = <&clks 107>;
+				clocks = <&clks IMX5_CLK_IIM_GATE>;
 			};
 
 			owire: owire@83fa4000 {
 				compatible = "fsl,imx51-owire", "fsl,imx21-owire";
 				reg = <0x83fa4000 0x4000>;
 				interrupts = <88>;
-				clocks = <&clks 159>;
+				clocks = <&clks IMX5_CLK_OWIRE_GATE>;
 				status = "disabled";
 			};
 
@@ -398,7 +420,8 @@
 				compatible = "fsl,imx51-ecspi";
 				reg = <0x83fac000 0x4000>;
 				interrupts = <37>;
-				clocks = <&clks 53>, <&clks 54>;
+				clocks = <&clks IMX5_CLK_ECSPI2_IPG_GATE>,
+				         <&clks IMX5_CLK_ECSPI2_PER_GATE>;
 				clock-names = "ipg", "per";
 				status = "disabled";
 			};
@@ -407,7 +430,8 @@
 				compatible = "fsl,imx51-sdma", "fsl,imx35-sdma";
 				reg = <0x83fb0000 0x4000>;
 				interrupts = <6>;
-				clocks = <&clks 56>, <&clks 56>;
+				clocks = <&clks IMX5_CLK_SDMA_GATE>,
+				         <&clks IMX5_CLK_SDMA_GATE>;
 				clock-names = "ipg", "ahb";
 				#dma-cells = <3>;
 				fsl,sdma-ram-script-name = "imx/sdma/sdma-imx51.bin";
@@ -419,7 +443,8 @@
 				compatible = "fsl,imx51-cspi", "fsl,imx35-cspi";
 				reg = <0x83fc0000 0x4000>;
 				interrupts = <38>;
-				clocks = <&clks 55>, <&clks 55>;
+				clocks = <&clks IMX5_CLK_CSPI_IPG_GATE>,
+				         <&clks IMX5_CLK_CSPI_IPG_GATE>;
 				clock-names = "ipg", "per";
 				status = "disabled";
 			};
@@ -430,7 +455,7 @@
 				compatible = "fsl,imx51-i2c", "fsl,imx21-i2c";
 				reg = <0x83fc4000 0x4000>;
 				interrupts = <63>;
-				clocks = <&clks 35>;
+				clocks = <&clks IMX5_CLK_I2C2_GATE>;
 				status = "disabled";
 			};
 
@@ -440,7 +465,7 @@
 				compatible = "fsl,imx51-i2c", "fsl,imx21-i2c";
 				reg = <0x83fc8000 0x4000>;
 				interrupts = <62>;
-				clocks = <&clks 34>;
+				clocks = <&clks IMX5_CLK_I2C1_GATE>;
 				status = "disabled";
 			};
 
@@ -448,7 +473,7 @@
 				compatible = "fsl,imx51-ssi", "fsl,imx21-ssi";
 				reg = <0x83fcc000 0x4000>;
 				interrupts = <29>;
-				clocks = <&clks 48>;
+				clocks = <&clks IMX5_CLK_SSI1_IPG_GATE>;
 				dmas = <&sdma 28 0 0>,
 				       <&sdma 29 0 0>;
 				dma-names = "rx", "tx";
@@ -460,6 +485,8 @@
 			audmux: audmux@83fd0000 {
 				compatible = "fsl,imx51-audmux", "fsl,imx31-audmux";
 				reg = <0x83fd0000 0x4000>;
+				clocks = <&clks IMX5_CLK_DUMMY>;
+				clock-names = "audmux";
 				status = "disabled";
 			};
 
@@ -468,7 +495,7 @@
 				#size-cells = <1>;
 				compatible = "fsl,imx51-weim";
 				reg = <0x83fda000 0x1000>;
-				clocks = <&clks 57>;
+				clocks = <&clks IMX5_CLK_EMI_SLOW_GATE>;
 				ranges = <
 					0 0 0xb0000000 0x08000000
 					1 0 0xb8000000 0x08000000
@@ -484,7 +511,7 @@
 				compatible = "fsl,imx51-nand";
 				reg = <0x83fdb000 0x1000 0xcfff0000 0x10000>;
 				interrupts = <8>;
-				clocks = <&clks 60>;
+				clocks = <&clks IMX5_CLK_NFC_GATE>;
 				status = "disabled";
 			};
 
@@ -492,7 +519,7 @@
 				compatible = "fsl,imx51-pata", "fsl,imx27-pata";
 				reg = <0x83fe0000 0x4000>;
 				interrupts = <70>;
-				clocks = <&clks 172>;
+				clocks = <&clks IMX5_CLK_PATA_GATE>;
 				status = "disabled";
 			};
 
@@ -500,7 +527,7 @@
 				compatible = "fsl,imx51-ssi", "fsl,imx21-ssi";
 				reg = <0x83fe8000 0x4000>;
 				interrupts = <96>;
-				clocks = <&clks 50>;
+				clocks = <&clks IMX5_CLK_SSI3_IPG_GATE>;
 				dmas = <&sdma 46 0 0>,
 				       <&sdma 47 0 0>;
 				dma-names = "rx", "tx";
@@ -513,336 +540,12 @@
 				compatible = "fsl,imx51-fec", "fsl,imx27-fec";
 				reg = <0x83fec000 0x4000>;
 				interrupts = <87>;
-				clocks = <&clks 42>, <&clks 42>, <&clks 42>;
+				clocks = <&clks IMX5_CLK_FEC_GATE>,
+				         <&clks IMX5_CLK_FEC_GATE>,
+				         <&clks IMX5_CLK_FEC_GATE>;
 				clock-names = "ipg", "ahb", "ptp";
 				status = "disabled";
 			};
 		};
 	};
 };
-
-&iomuxc {
-	audmux {
-		pinctrl_audmux_1: audmuxgrp-1 {
-			fsl,pins = <
-				MX51_PAD_AUD3_BB_TXD__AUD3_TXD 0x80000000
-				MX51_PAD_AUD3_BB_RXD__AUD3_RXD 0x80000000
-				MX51_PAD_AUD3_BB_CK__AUD3_TXC  0x80000000
-				MX51_PAD_AUD3_BB_FS__AUD3_TXFS 0x80000000
-			>;
-		};
-	};
-
-	fec {
-		pinctrl_fec_1: fecgrp-1 {
-			fsl,pins = <
-				MX51_PAD_EIM_EB2__FEC_MDIO	   0x80000000
-				MX51_PAD_EIM_EB3__FEC_RDATA1	   0x80000000
-				MX51_PAD_EIM_CS2__FEC_RDATA2	   0x80000000
-				MX51_PAD_EIM_CS3__FEC_RDATA3	   0x80000000
-				MX51_PAD_EIM_CS4__FEC_RX_ER	   0x80000000
-				MX51_PAD_EIM_CS5__FEC_CRS	   0x80000000
-				MX51_PAD_NANDF_RB2__FEC_COL	   0x80000000
-				MX51_PAD_NANDF_RB3__FEC_RX_CLK	   0x80000000
-				MX51_PAD_NANDF_D9__FEC_RDATA0	   0x80000000
-				MX51_PAD_NANDF_D8__FEC_TDATA0	   0x80000000
-				MX51_PAD_NANDF_CS2__FEC_TX_ER	   0x80000000
-				MX51_PAD_NANDF_CS3__FEC_MDC	   0x80000000
-				MX51_PAD_NANDF_CS4__FEC_TDATA1	   0x80000000
-				MX51_PAD_NANDF_CS5__FEC_TDATA2	   0x80000000
-				MX51_PAD_NANDF_CS6__FEC_TDATA3	   0x80000000
-				MX51_PAD_NANDF_CS7__FEC_TX_EN	   0x80000000
-				MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK 0x80000000
-			>;
-		};
-
-		pinctrl_fec_2: fecgrp-2 {
-			fsl,pins = <
-				MX51_PAD_DI_GP3__FEC_TX_ER	  0x80000000
-				MX51_PAD_DI2_PIN4__FEC_CRS	  0x80000000
-				MX51_PAD_DI2_PIN2__FEC_MDC	  0x80000000
-				MX51_PAD_DI2_PIN3__FEC_MDIO	  0x80000000
-				MX51_PAD_DI2_DISP_CLK__FEC_RDATA1 0x80000000
-				MX51_PAD_DI_GP4__FEC_RDATA2	  0x80000000
-				MX51_PAD_DISP2_DAT0__FEC_RDATA3   0x80000000
-				MX51_PAD_DISP2_DAT1__FEC_RX_ER	  0x80000000
-				MX51_PAD_DISP2_DAT6__FEC_TDATA1	  0x80000000
-				MX51_PAD_DISP2_DAT7__FEC_TDATA2	  0x80000000
-				MX51_PAD_DISP2_DAT8__FEC_TDATA3	  0x80000000
-				MX51_PAD_DISP2_DAT9__FEC_TX_EN	  0x80000000
-				MX51_PAD_DISP2_DAT10__FEC_COL	  0x80000000
-				MX51_PAD_DISP2_DAT11__FEC_RX_CLK  0x80000000
-				MX51_PAD_DISP2_DAT12__FEC_RX_DV	  0x80000000
-				MX51_PAD_DISP2_DAT13__FEC_TX_CLK  0x80000000
-				MX51_PAD_DISP2_DAT14__FEC_RDATA0  0x80000000
-				MX51_PAD_DISP2_DAT15__FEC_TDATA0  0x80000000
-			>;
-		};
-	};
-
-	ecspi1 {
-		pinctrl_ecspi1_1: ecspi1grp-1 {
-			fsl,pins = <
-				MX51_PAD_CSPI1_MISO__ECSPI1_MISO 0x185
-				MX51_PAD_CSPI1_MOSI__ECSPI1_MOSI 0x185
-				MX51_PAD_CSPI1_SCLK__ECSPI1_SCLK 0x185
-			>;
-		};
-	};
-
-	ecspi2 {
-		pinctrl_ecspi2_1: ecspi2grp-1 {
-			fsl,pins = <
-				MX51_PAD_NANDF_RB3__ECSPI2_MISO 0x185
-				MX51_PAD_NANDF_D15__ECSPI2_MOSI 0x185
-				MX51_PAD_NANDF_RB2__ECSPI2_SCLK 0x185
-			>;
-		};
-	};
-
-	esdhc1 {
-		pinctrl_esdhc1_1: esdhc1grp-1 {
-			fsl,pins = <
-				MX51_PAD_SD1_CMD__SD1_CMD     0x400020d5
-				MX51_PAD_SD1_CLK__SD1_CLK     0x20d5
-				MX51_PAD_SD1_DATA0__SD1_DATA0 0x20d5
-				MX51_PAD_SD1_DATA1__SD1_DATA1 0x20d5
-				MX51_PAD_SD1_DATA2__SD1_DATA2 0x20d5
-				MX51_PAD_SD1_DATA3__SD1_DATA3 0x20d5
-			>;
-		};
-	};
-
-	esdhc2 {
-		pinctrl_esdhc2_1: esdhc2grp-1 {
-			fsl,pins = <
-				MX51_PAD_SD2_CMD__SD2_CMD     0x400020d5
-				MX51_PAD_SD2_CLK__SD2_CLK     0x20d5
-				MX51_PAD_SD2_DATA0__SD2_DATA0 0x20d5
-				MX51_PAD_SD2_DATA1__SD2_DATA1 0x20d5
-				MX51_PAD_SD2_DATA2__SD2_DATA2 0x20d5
-				MX51_PAD_SD2_DATA3__SD2_DATA3 0x20d5
-			>;
-		};
-	};
-
-	i2c2 {
-		pinctrl_i2c2_1: i2c2grp-1 {
-			fsl,pins = <
-				MX51_PAD_KEY_COL4__I2C2_SCL 0x400001ed
-				MX51_PAD_KEY_COL5__I2C2_SDA 0x400001ed
-			>;
-		};
-
-		pinctrl_i2c2_2: i2c2grp-2 {
-			fsl,pins = <
-				MX51_PAD_EIM_D27__I2C2_SCL 0x400001ed
-				MX51_PAD_EIM_D24__I2C2_SDA 0x400001ed
-			>;
-		};
-
-		pinctrl_i2c2_3: i2c2grp-3 {
-			fsl,pins = <
-				MX51_PAD_GPIO1_2__I2C2_SCL 0x400001ed
-				MX51_PAD_GPIO1_3__I2C2_SDA 0x400001ed
-			>;
-		};
-	};
-
-	ipu_disp1 {
-		pinctrl_ipu_disp1_1: ipudisp1grp-1 {
-			fsl,pins = <
-				MX51_PAD_DISP1_DAT0__DISP1_DAT0	  0x5
-				MX51_PAD_DISP1_DAT1__DISP1_DAT1	  0x5
-				MX51_PAD_DISP1_DAT2__DISP1_DAT2	  0x5
-				MX51_PAD_DISP1_DAT3__DISP1_DAT3	  0x5
-				MX51_PAD_DISP1_DAT4__DISP1_DAT4	  0x5
-				MX51_PAD_DISP1_DAT5__DISP1_DAT5	  0x5
-				MX51_PAD_DISP1_DAT6__DISP1_DAT6	  0x5
-				MX51_PAD_DISP1_DAT7__DISP1_DAT7	  0x5
-				MX51_PAD_DISP1_DAT8__DISP1_DAT8	  0x5
-				MX51_PAD_DISP1_DAT9__DISP1_DAT9	  0x5
-				MX51_PAD_DISP1_DAT10__DISP1_DAT10 0x5
-				MX51_PAD_DISP1_DAT11__DISP1_DAT11 0x5
-				MX51_PAD_DISP1_DAT12__DISP1_DAT12 0x5
-				MX51_PAD_DISP1_DAT13__DISP1_DAT13 0x5
-				MX51_PAD_DISP1_DAT14__DISP1_DAT14 0x5
-				MX51_PAD_DISP1_DAT15__DISP1_DAT15 0x5
-				MX51_PAD_DISP1_DAT16__DISP1_DAT16 0x5
-				MX51_PAD_DISP1_DAT17__DISP1_DAT17 0x5
-				MX51_PAD_DISP1_DAT18__DISP1_DAT18 0x5
-				MX51_PAD_DISP1_DAT19__DISP1_DAT19 0x5
-				MX51_PAD_DISP1_DAT20__DISP1_DAT20 0x5
-				MX51_PAD_DISP1_DAT21__DISP1_DAT21 0x5
-				MX51_PAD_DISP1_DAT22__DISP1_DAT22 0x5
-				MX51_PAD_DISP1_DAT23__DISP1_DAT23 0x5
-				MX51_PAD_DI1_PIN2__DI1_PIN2	  0x5 /* hsync */
-				MX51_PAD_DI1_PIN3__DI1_PIN3	  0x5 /* vsync */
-			>;
-		};
-	};
-
-	ipu_disp2 {
-		pinctrl_ipu_disp2_1: ipudisp2grp-1 {
-			fsl,pins = <
-				MX51_PAD_DISP2_DAT0__DISP2_DAT0	    0x5
-				MX51_PAD_DISP2_DAT1__DISP2_DAT1	    0x5
-				MX51_PAD_DISP2_DAT2__DISP2_DAT2	    0x5
-				MX51_PAD_DISP2_DAT3__DISP2_DAT3	    0x5
-				MX51_PAD_DISP2_DAT4__DISP2_DAT4	    0x5
-				MX51_PAD_DISP2_DAT5__DISP2_DAT5	    0x5
-				MX51_PAD_DISP2_DAT6__DISP2_DAT6	    0x5
-				MX51_PAD_DISP2_DAT7__DISP2_DAT7	    0x5
-				MX51_PAD_DISP2_DAT8__DISP2_DAT8	    0x5
-				MX51_PAD_DISP2_DAT9__DISP2_DAT9	    0x5
-				MX51_PAD_DISP2_DAT10__DISP2_DAT10   0x5
-				MX51_PAD_DISP2_DAT11__DISP2_DAT11   0x5
-				MX51_PAD_DISP2_DAT12__DISP2_DAT12   0x5
-				MX51_PAD_DISP2_DAT13__DISP2_DAT13   0x5
-				MX51_PAD_DISP2_DAT14__DISP2_DAT14   0x5
-				MX51_PAD_DISP2_DAT15__DISP2_DAT15   0x5
-				MX51_PAD_DI2_PIN2__DI2_PIN2	    0x5 /* hsync */
-				MX51_PAD_DI2_PIN3__DI2_PIN3	    0x5 /* vsync */
-				MX51_PAD_DI2_DISP_CLK__DI2_DISP_CLK 0x5 /* CLK */
-				MX51_PAD_DI_GP4__DI2_PIN15	    0x5 /* DE */
-			>;
-		};
-	};
-
-	kpp {
-		pinctrl_kpp_1: kppgrp-1 {
-			fsl,pins = <
-				MX51_PAD_KEY_ROW0__KEY_ROW0 0xe0
-				MX51_PAD_KEY_ROW1__KEY_ROW1 0xe0
-				MX51_PAD_KEY_ROW2__KEY_ROW2 0xe0
-				MX51_PAD_KEY_ROW3__KEY_ROW3 0xe0
-				MX51_PAD_KEY_COL0__KEY_COL0 0xe8
-				MX51_PAD_KEY_COL1__KEY_COL1 0xe8
-				MX51_PAD_KEY_COL2__KEY_COL2 0xe8
-				MX51_PAD_KEY_COL3__KEY_COL3 0xe8
-			>;
-		};
-	};
-
-	pata {
-		pinctrl_pata_1: patagrp-1 {
-			fsl,pins = <
-				MX51_PAD_NANDF_WE_B__PATA_DIOW	   0x2004
-				MX51_PAD_NANDF_RE_B__PATA_DIOR	   0x2004
-				MX51_PAD_NANDF_ALE__PATA_BUFFER_EN 0x2004
-				MX51_PAD_NANDF_CLE__PATA_RESET_B   0x2004
-				MX51_PAD_NANDF_WP_B__PATA_DMACK	   0x2004
-				MX51_PAD_NANDF_RB0__PATA_DMARQ	   0x2004
-				MX51_PAD_NANDF_RB1__PATA_IORDY	   0x2004
-				MX51_PAD_GPIO_NAND__PATA_INTRQ	   0x2004
-				MX51_PAD_NANDF_CS2__PATA_CS_0	   0x2004
-				MX51_PAD_NANDF_CS3__PATA_CS_1	   0x2004
-				MX51_PAD_NANDF_CS4__PATA_DA_0	   0x2004
-				MX51_PAD_NANDF_CS5__PATA_DA_1	   0x2004
-				MX51_PAD_NANDF_CS6__PATA_DA_2	   0x2004
-				MX51_PAD_NANDF_D15__PATA_DATA15	   0x2004
-				MX51_PAD_NANDF_D14__PATA_DATA14	   0x2004
-				MX51_PAD_NANDF_D13__PATA_DATA13	   0x2004
-				MX51_PAD_NANDF_D12__PATA_DATA12	   0x2004
-				MX51_PAD_NANDF_D11__PATA_DATA11	   0x2004
-				MX51_PAD_NANDF_D10__PATA_DATA10	   0x2004
-				MX51_PAD_NANDF_D9__PATA_DATA9	   0x2004
-				MX51_PAD_NANDF_D8__PATA_DATA8	   0x2004
-				MX51_PAD_NANDF_D7__PATA_DATA7	   0x2004
-				MX51_PAD_NANDF_D6__PATA_DATA6	  0x2004
-				MX51_PAD_NANDF_D5__PATA_DATA5	  0x2004
-				MX51_PAD_NANDF_D4__PATA_DATA4	  0x2004
-				MX51_PAD_NANDF_D3__PATA_DATA3	  0x2004
-				MX51_PAD_NANDF_D2__PATA_DATA2	  0x2004
-				MX51_PAD_NANDF_D1__PATA_DATA1	  0x2004
-				MX51_PAD_NANDF_D0__PATA_DATA0	  0x2004
-			>;
-		};
-	};
-
-	uart1 {
-		pinctrl_uart1_1: uart1grp-1 {
-			fsl,pins = <
-				MX51_PAD_UART1_RXD__UART1_RXD 0x1c5
-				MX51_PAD_UART1_TXD__UART1_TXD 0x1c5
-			>;
-		};
-
-		pinctrl_uart1_rtscts_1: uart1rtscts-1 {
-			fsl,pins = <
-				MX51_PAD_UART1_RTS__UART1_RTS 0x1c5
-				MX51_PAD_UART1_CTS__UART1_CTS 0x1c5
-			>;
-		};
-	};
-
-	uart2 {
-		pinctrl_uart2_1: uart2grp-1 {
-			fsl,pins = <
-				MX51_PAD_UART2_RXD__UART2_RXD 0x1c5
-				MX51_PAD_UART2_TXD__UART2_TXD 0x1c5
-			>;
-		};
-	};
-
-	uart3 {
-		pinctrl_uart3_1: uart3grp-1 {
-			fsl,pins = <
-				MX51_PAD_EIM_D25__UART3_RXD 0x1c5
-				MX51_PAD_EIM_D26__UART3_TXD 0x1c5
-			>;
-		};
-
-		pinctrl_uart3_rtscts_1: uart3rtscts-1 {
-			fsl,pins = <
-				MX51_PAD_EIM_D27__UART3_RTS 0x1c5
-				MX51_PAD_EIM_D24__UART3_CTS 0x1c5
-			>;
-		};
-
-		pinctrl_uart3_2: uart3grp-2 {
-			fsl,pins = <
-				MX51_PAD_UART3_RXD__UART3_RXD 0x1c5
-				MX51_PAD_UART3_TXD__UART3_TXD 0x1c5
-			>;
-		};
-	};
-
-	usbh1 {
-		pinctrl_usbh1_1: usbh1grp-1 {
-			fsl,pins = <
-				MX51_PAD_USBH1_DATA0__USBH1_DATA0 0x1e5
-				MX51_PAD_USBH1_DATA1__USBH1_DATA1 0x1e5
-				MX51_PAD_USBH1_DATA2__USBH1_DATA2 0x1e5
-				MX51_PAD_USBH1_DATA3__USBH1_DATA3 0x1e5
-				MX51_PAD_USBH1_DATA4__USBH1_DATA4 0x1e5
-				MX51_PAD_USBH1_DATA5__USBH1_DATA5 0x1e5
-				MX51_PAD_USBH1_DATA6__USBH1_DATA6 0x1e5
-				MX51_PAD_USBH1_DATA7__USBH1_DATA7 0x1e5
-				MX51_PAD_USBH1_CLK__USBH1_CLK	  0x1e5
-				MX51_PAD_USBH1_DIR__USBH1_DIR	  0x1e5
-				MX51_PAD_USBH1_NXT__USBH1_NXT	  0x1e5
-				MX51_PAD_USBH1_STP__USBH1_STP	  0x1e5
-			>;
-		};
-	};
-
-	usbh2 {
-		pinctrl_usbh2_1: usbh2grp-1 {
-			fsl,pins = <
-				MX51_PAD_EIM_D16__USBH2_DATA0 0x1e5
-				MX51_PAD_EIM_D17__USBH2_DATA1 0x1e5
-				MX51_PAD_EIM_D18__USBH2_DATA2 0x1e5
-				MX51_PAD_EIM_D19__USBH2_DATA3 0x1e5
-				MX51_PAD_EIM_D20__USBH2_DATA4 0x1e5
-				MX51_PAD_EIM_D21__USBH2_DATA5 0x1e5
-				MX51_PAD_EIM_D22__USBH2_DATA6 0x1e5
-				MX51_PAD_EIM_D23__USBH2_DATA7 0x1e5
-				MX51_PAD_EIM_A24__USBH2_CLK   0x1e5
-				MX51_PAD_EIM_A25__USBH2_DIR   0x1e5
-				MX51_PAD_EIM_A27__USBH2_NXT   0x1e5
-				MX51_PAD_EIM_A26__USBH2_STP   0x1e5
-			>;
-		};
-	};
-};
diff --git a/include/dt-bindings/clock/imx5-clock.h b/include/dt-bindings/clock/imx5-clock.h
new file mode 100644
index 0000000..5f2667e
--- /dev/null
+++ b/include/dt-bindings/clock/imx5-clock.h
@@ -0,0 +1,203 @@
+/*
+ * Copyright 2013 Lucas Stach, Pengutronix <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+
+#ifndef __DT_BINDINGS_CLOCK_IMX5_H
+#define __DT_BINDINGS_CLOCK_IMX5_H
+
+#define IMX5_CLK_DUMMY			0
+#define IMX5_CLK_CKIL			1
+#define IMX5_CLK_OSC			2
+#define IMX5_CLK_CKIH1			3
+#define IMX5_CLK_CKIH2			4
+#define IMX5_CLK_AHB			5
+#define IMX5_CLK_IPG			6
+#define IMX5_CLK_AXI_A			7
+#define IMX5_CLK_AXI_B			8
+#define IMX5_CLK_UART_PRED		9
+#define IMX5_CLK_UART_ROOT		10
+#define IMX5_CLK_ESDHC_A_PRED		11
+#define IMX5_CLK_ESDHC_B_PRED		12
+#define IMX5_CLK_ESDHC_C_SEL		13
+#define IMX5_CLK_ESDHC_D_SEL		14
+#define IMX5_CLK_EMI_SEL		15
+#define IMX5_CLK_EMI_SLOW_PODF		16
+#define IMX5_CLK_NFC_PODF		17
+#define IMX5_CLK_ECSPI_PRED		18
+#define IMX5_CLK_ECSPI_PODF		19
+#define IMX5_CLK_USBOH3_PRED		20
+#define IMX5_CLK_USBOH3_PODF		21
+#define IMX5_CLK_USB_PHY_PRED		22
+#define IMX5_CLK_USB_PHY_PODF		23
+#define IMX5_CLK_CPU_PODF		24
+#define IMX5_CLK_DI_PRED		25
+#define IMX5_CLK_TVE_SEL		27
+#define IMX5_CLK_UART1_IPG_GATE		28
+#define IMX5_CLK_UART1_PER_GATE		29
+#define IMX5_CLK_UART2_IPG_GATE		30
+#define IMX5_CLK_UART2_PER_GATE		31
+#define IMX5_CLK_UART3_IPG_GATE		32
+#define IMX5_CLK_UART3_PER_GATE		33
+#define IMX5_CLK_I2C1_GATE		34
+#define IMX5_CLK_I2C2_GATE		35
+#define IMX5_CLK_GPT_IPG_GATE		36
+#define IMX5_CLK_PWM1_IPG_GATE		37
+#define IMX5_CLK_PWM1_HF_GATE		38
+#define IMX5_CLK_PWM2_IPG_GATE		39
+#define IMX5_CLK_PWM2_HF_GATE		40
+#define IMX5_CLK_GPT_HF_GATE		41
+#define IMX5_CLK_FEC_GATE		42
+#define IMX5_CLK_USBOH3_PER_GATE	43
+#define IMX5_CLK_ESDHC1_IPG_GATE	44
+#define IMX5_CLK_ESDHC2_IPG_GATE	45
+#define IMX5_CLK_ESDHC3_IPG_GATE	46
+#define IMX5_CLK_ESDHC4_IPG_GATE	47
+#define IMX5_CLK_SSI1_IPG_GATE		48
+#define IMX5_CLK_SSI2_IPG_GATE		49
+#define IMX5_CLK_SSI3_IPG_GATE		50
+#define IMX5_CLK_ECSPI1_IPG_GATE	51
+#define IMX5_CLK_ECSPI1_PER_GATE	52
+#define IMX5_CLK_ECSPI2_IPG_GATE	53
+#define IMX5_CLK_ECSPI2_PER_GATE	54
+#define IMX5_CLK_CSPI_IPG_GATE		55
+#define IMX5_CLK_SDMA_GATE		56
+#define IMX5_CLK_EMI_SLOW_GATE		57
+#define IMX5_CLK_IPU_SEL		58
+#define IMX5_CLK_IPU_GATE		59
+#define IMX5_CLK_NFC_GATE		60
+#define IMX5_CLK_IPU_DI1_GATE		61
+#define IMX5_CLK_VPU_SEL		62
+#define IMX5_CLK_VPU_GATE		63
+#define IMX5_CLK_VPU_REFERENCE_GATE	64
+#define IMX5_CLK_UART4_IPG_GATE		65
+#define IMX5_CLK_UART4_PER_GATE		66
+#define IMX5_CLK_UART5_IPG_GATE		67
+#define IMX5_CLK_UART5_PER_GATE		68
+#define IMX5_CLK_TVE_GATE		69
+#define IMX5_CLK_TVE_PRED		70
+#define IMX5_CLK_ESDHC1_PER_GATE	71
+#define IMX5_CLK_ESDHC2_PER_GATE	72
+#define IMX5_CLK_ESDHC3_PER_GATE	73
+#define IMX5_CLK_ESDHC4_PER_GATE	74
+#define IMX5_CLK_USB_PHY_GATE		75
+#define IMX5_CLK_HSI2C_GATE		76
+#define IMX5_CLK_MIPI_HSC1_GATE		77
+#define IMX5_CLK_MIPI_HSC2_GATE		78
+#define IMX5_CLK_MIPI_ESC_GATE		79
+#define IMX5_CLK_MIPI_HSP_GATE		80
+#define IMX5_CLK_LDB_DI1_DIV_3_5	81
+#define IMX5_CLK_LDB_DI1_DIV		82
+#define IMX5_CLK_LDB_DI0_DIV_3_5	83
+#define IMX5_CLK_LDB_DI0_DIV		84
+#define IMX5_CLK_LDB_DI1_GATE		85
+#define IMX5_CLK_CAN2_SERIAL_GATE	86
+#define IMX5_CLK_CAN2_IPG_GATE		87
+#define IMX5_CLK_I2C3_GATE		88
+#define IMX5_CLK_LP_APM			89
+#define IMX5_CLK_PERIPH_APM		90
+#define IMX5_CLK_MAIN_BUS		91
+#define IMX5_CLK_AHB_MAX		92
+#define IMX5_CLK_AIPS_TZ1		93
+#define IMX5_CLK_AIPS_TZ2		94
+#define IMX5_CLK_TMAX1			95
+#define IMX5_CLK_TMAX2			96
+#define IMX5_CLK_TMAX3			97
+#define IMX5_CLK_SPBA			98
+#define IMX5_CLK_UART_SEL		99
+#define IMX5_CLK_ESDHC_A_SEL		100
+#define IMX5_CLK_ESDHC_B_SEL		101
+#define IMX5_CLK_ESDHC_A_PODF		102
+#define IMX5_CLK_ESDHC_B_PODF		103
+#define IMX5_CLK_ECSPI_SEL		104
+#define IMX5_CLK_USBOH3_SEL		105
+#define IMX5_CLK_USB_PHY_SEL		106
+#define IMX5_CLK_IIM_GATE		107
+#define IMX5_CLK_USBOH3_GATE		108
+#define IMX5_CLK_EMI_FAST_GATE		109
+#define IMX5_CLK_IPU_DI0_GATE		110
+#define IMX5_CLK_GPC_DVFS		111
+#define IMX5_CLK_PLL1_SW		112
+#define IMX5_CLK_PLL2_SW		113
+#define IMX5_CLK_PLL3_SW		114
+#define IMX5_CLK_IPU_DI0_SEL		115
+#define IMX5_CLK_IPU_DI1_SEL		116
+#define IMX5_CLK_TVE_EXT_SEL		117
+#define IMX5_CLK_MX51_MIPI		118
+#define IMX5_CLK_PLL4_SW		119
+#define IMX5_CLK_LDB_DI1_SEL		120
+#define IMX5_CLK_DI_PLL4_PODF		121
+#define IMX5_CLK_LDB_DI0_SEL		122
+#define IMX5_CLK_LDB_DI0_GATE		123
+#define IMX5_CLK_USB_PHY1_GATE		124
+#define IMX5_CLK_USB_PHY2_GATE		125
+#define IMX5_CLK_PER_LP_APM		126
+#define IMX5_CLK_PER_PRED1		127
+#define IMX5_CLK_PER_PRED2		128
+#define IMX5_CLK_PER_PODF		129
+#define IMX5_CLK_PER_ROOT		130
+#define IMX5_CLK_SSI_APM		131
+#define IMX5_CLK_SSI1_ROOT_SEL		132
+#define IMX5_CLK_SSI2_ROOT_SEL		133
+#define IMX5_CLK_SSI3_ROOT_SEL		134
+#define IMX5_CLK_SSI_EXT1_SEL		135
+#define IMX5_CLK_SSI_EXT2_SEL		136
+#define IMX5_CLK_SSI_EXT1_COM_SEL	137
+#define IMX5_CLK_SSI_EXT2_COM_SEL	138
+#define IMX5_CLK_SSI1_ROOT_PRED		139
+#define IMX5_CLK_SSI1_ROOT_PODF		140
+#define IMX5_CLK_SSI2_ROOT_PRED		141
+#define IMX5_CLK_SSI2_ROOT_PODF		142
+#define IMX5_CLK_SSI_EXT1_PRED		143
+#define IMX5_CLK_SSI_EXT1_PODF		144
+#define IMX5_CLK_SSI_EXT2_PRED		145
+#define IMX5_CLK_SSI_EXT2_PODF		146
+#define IMX5_CLK_SSI1_ROOT_GATE		147
+#define IMX5_CLK_SSI2_ROOT_GATE		148
+#define IMX5_CLK_SSI3_ROOT_GATE		149
+#define IMX5_CLK_SSI_EXT1_GATE		150
+#define IMX5_CLK_SSI_EXT2_GATE		151
+#define IMX5_CLK_EPIT1_IPG_GATE		152
+#define IMX5_CLK_EPIT1_HF_GATE		153
+#define IMX5_CLK_EPIT2_IPG_GATE		154
+#define IMX5_CLK_EPIT2_HF_GATE		155
+#define IMX5_CLK_CAN_SEL		156
+#define IMX5_CLK_CAN1_SERIAL_GATE	157
+#define IMX5_CLK_CAN1_IPG_GATE		158
+#define IMX5_CLK_OWIRE_GATE		159
+#define IMX5_CLK_GPU3D_SEL		160
+#define IMX5_CLK_GPU2D_SEL		161
+#define IMX5_CLK_GPU3D_GATE		162
+#define IMX5_CLK_GPU2D_GATE		163
+#define IMX5_CLK_GARB_GATE		164
+#define IMX5_CLK_CKO1_SEL		165
+#define IMX5_CLK_CKO1_PODF		166
+#define IMX5_CLK_CKO1			167
+#define IMX5_CLK_CKO2_SEL		168
+#define IMX5_CLK_CKO2_PODF		169
+#define IMX5_CLK_CKO2			170
+#define IMX5_CLK_SRTC_GATE		171
+#define IMX5_CLK_PATA_GATE		172
+#define IMX5_CLK_SATA_GATE		173
+#define IMX5_CLK_SPDIF_XTAL_SEL		174
+#define IMX5_CLK_SPDIF0_SEL		175
+#define IMX5_CLK_SPDIF1_SEL		176
+#define IMX5_CLK_SPDIF0_PRED		177
+#define IMX5_CLK_SPDIF0_PODF		178
+#define IMX5_CLK_SPDIF1_PRED		179
+#define IMX5_CLK_SPDIF1_PODF		180
+#define IMX5_CLK_SPDIF0_COM_SEL		181
+#define IMX5_CLK_SPDIF1_COM_SEL		182
+#define IMX5_CLK_SPDIF0_GATE		183
+#define IMX5_CLK_SPDIF1_GATE		184
+#define IMX5_CLK_SPDIF_IPG_GATE		185
+#define IMX5_CLK_OCRAM			186
+#define IMX5_CLK_SAHARA_IPG_GATE	187
+#define IMX5_CLK_SATA_REF		188
+#define IMX5_CLK_END			189
+
+#endif /* __DT_BINDINGS_CLOCK_IMX5_H */
diff --git a/include/dt-bindings/interrupt-controller/irq.h b/include/dt-bindings/interrupt-controller/irq.h
new file mode 100644
index 0000000..33a1003
--- /dev/null
+++ b/include/dt-bindings/interrupt-controller/irq.h
@@ -0,0 +1,19 @@
+/*
+ * This header provides constants for most IRQ bindings.
+ *
+ * Most IRQ bindings include a flags cell as part of the IRQ specifier.
+ * In most cases, the format of the flags cell uses the standard values
+ * defined in this header.
+ */
+
+#ifndef _DT_BINDINGS_INTERRUPT_CONTROLLER_IRQ_H
+#define _DT_BINDINGS_INTERRUPT_CONTROLLER_IRQ_H
+
+#define IRQ_TYPE_NONE		0
+#define IRQ_TYPE_EDGE_RISING	1
+#define IRQ_TYPE_EDGE_FALLING	2
+#define IRQ_TYPE_EDGE_BOTH	(IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING)
+#define IRQ_TYPE_LEVEL_HIGH	4
+#define IRQ_TYPE_LEVEL_LOW	8
+
+#endif
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
