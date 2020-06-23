Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnivU-0003Zh-6e
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:25:31 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Jun 2020 15:25:19 +0200
Message-Id: <20200623132521.4727-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200623132521.4727-1-a.fatoum@pengutronix.de>
References: <20200623132521.4727-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: stm32mp: dts: extend now upstream
 stm32mp157c-lxa-mc1.dts
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With the recent v5.8-rc1 device tree sync, we can drop everything but
the barebox-specific parts from the barebox device tree.
The rest now comes from the upstream device tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp157c-lxa-mc1.dts  |   2 +-
 arch/arm/dts/stm32mp157c-lxa-mc1.dtsi | 362 --------------------------
 arch/arm/dts/stm32mp15xx-osd32.dtsi   | 229 ----------------
 3 files changed, 1 insertion(+), 592 deletions(-)
 delete mode 100644 arch/arm/dts/stm32mp157c-lxa-mc1.dtsi
 delete mode 100644 arch/arm/dts/stm32mp15xx-osd32.dtsi

diff --git a/arch/arm/dts/stm32mp157c-lxa-mc1.dts b/arch/arm/dts/stm32mp157c-lxa-mc1.dts
index 57baaf4005d2..f89c0852809e 100644
--- a/arch/arm/dts/stm32mp157c-lxa-mc1.dts
+++ b/arch/arm/dts/stm32mp157c-lxa-mc1.dts
@@ -3,7 +3,7 @@
  * Copyright (C) 2020 Ahmad Fatoum, Pengutronix
  */
 
-#include "stm32mp157c-lxa-mc1.dtsi"
+#include <arm/stm32mp157c-lxa-mc1.dts>
 #include "stm32mp151.dtsi"
 
 / {
diff --git a/arch/arm/dts/stm32mp157c-lxa-mc1.dtsi b/arch/arm/dts/stm32mp157c-lxa-mc1.dtsi
deleted file mode 100644
index 6603cf280eb2..000000000000
--- a/arch/arm/dts/stm32mp157c-lxa-mc1.dtsi
+++ /dev/null
@@ -1,362 +0,0 @@
-/* SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause) */
-/*
- * Copyright (C) 2020 STMicroelectronics - All Rights Reserved
- * Copyright (C) 2020 Ahmad Fatoum, Pengutronix
- */
-
-/dts-v1/;
-
-#include <arm/stm32mp157.dtsi>
-#include "stm32mp15xx-osd32.dtsi"
-#include <arm/stm32mp15xxac-pinctrl.dtsi>
-
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/pwm/pwm.h>
-
-/ {
-	model = "Linux Automation MC-1 board";
-	compatible = "lxa,stm32mp157c-mc1", "st,stm32mp157";
-
-	aliases {
-		ethernet0 = &ethernet0;
-		mmc0 = &sdmmc1;
-		mmc1 = &sdmmc2;
-		serial0 = &uart4;
-	};
-
-	backlight: backlight {
-		compatible = "pwm-backlight";
-		pwms = <&backlight_pwm 1 100000 PWM_POLARITY_INVERTED>;
-		brightness-levels = <0 31 63 95 127 159 191 223 255>;
-		default-brightness-level = <7>;
-		power-supply = <&reg_5v2>; /* 3V3_BACKLIGHT */
-	};
-
-	chosen {
-		stdout-path = &uart4;
-	};
-
-	led-act {
-		compatible = "gpio-leds";
-
-		led-green {
-			label = "mc1:green:act";
-			gpios = <&gpioa 13 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "heartbeat";
-		};
-	};
-
-	led-rgb {
-		compatible = "pwm-leds";
-
-		led-red {
-			label = "mc1:red:rgb";
-			pwms = <&leds_pwm 1 1000000 0>;
-			max-brightness = <255>;
-			active-low;
-		};
-
-		led-green {
-			label = "mc1:green:rgb";
-			pwms = <&leds_pwm 2 1000000 0>;
-			max-brightness = <255>;
-			active-low;
-		};
-
-		led-blue {
-			label = "mc1:blue:rgb";
-			pwms = <&leds_pwm 3 1000000 0>;
-			max-brightness = <255>;
-			active-low;
-		};
-	};
-
-	panel: panel {
-		compatible = "edt,etm0700g0edh6", "simple-panel";
-		backlight = <&backlight>;
-		enable-gpios = <&gpiod 4 GPIO_ACTIVE_HIGH>;
-		power-supply = <&reg_3v3>;
-
-		port {
-			panel_input: endpoint {
-				remote-endpoint = <&ltdc_ep0_out>;
-			};
-		};
-	};
-
-	reg_3v3: regulator_3v3 {
-		compatible = "regulator-fixed";
-		regulator-name = "3V3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-always-on;
-		vin-supply = <&v3v3>;
-	};
-
-	/* supplied by either debug board or PoE */
-	reg_5v2: regulator_5v2 {
-		compatible = "regulator-fixed";
-		regulator-name = "5V2";
-		regulator-min-microvolt = <5200000>;
-		regulator-max-microvolt = <5200000>;
-		regulator-always-on;
-	};
-};
-
-&ethernet0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&ethernet0_rgmii_mc1pins_b>;
-	phy-mode = "rgmii-id";
-	phy-handle = <&ethphy>;
-	status = "okay";
-
-	mdio0 {
-		compatible = "snps,dwmac-mdio";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ethphy: ethernet-phy@3 { /* KSZ9031RN */
-			reg = <3>;
-			reset-gpios = <&gpiog 0 GPIO_ACTIVE_LOW>; /* ETH_RST# */
-			interrupt-parent = <&gpioa>;
-			interrupts = <6 IRQ_TYPE_EDGE_FALLING>; /* ETH_MDINT# */
-			rxc-skew-ps = <1860>;
-			txc-skew-ps = <1860>;
-			reset-assert-us = <10000>;
-			reset-deassert-us = <300>;
-			micrel,force-master;
-		};
-	};
-};
-
-&gpioz {
-	gpio-line-names = "HWID0", "HWID1", "HWID2", "HWID3", "", "",
-			  "HWID4", "HWID5";
-};
-
-&gpu {
-	status = "okay";
-};
-
-&i2c5 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c5_mc1pins_b>;
-	clock-frequency = <400000>;
-	status = "okay";
-
-	touchscreen@38 {
-		compatible = "edt,edt-ft5x06";
-		interrupt-parent = <&gpiod>;
-		interrupts = <11 IRQ_TYPE_EDGE_FALLING>; /* TOUCH_INT# */
-		vcc-supply = <&reg_3v3>;
-		reg = <0x38>;
-		reset-gpios = <&gpiof 8 GPIO_ACTIVE_LOW>; /* TOUCH_RESET# */
-		touchscreen-size-x = <1792>;
-		touchscreen-size-y = <1024>;
-		wakeup-source;
-	};
-};
-
-&ltdc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&ltdc_mc1pins_c>;
-	status = "okay";
-
-	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		ltdc_ep0_out: endpoint@0 {
-			reg = <0>;
-			remote-endpoint = <&panel_input>;
-		};
-	};
-};
-
-&pmic {
-	regulators {
-		buck4-supply = <&reg_5v2>;	/* VIN */
-		ldo2-supply = <&reg_5v2>;	/* PMIC_LDO25IN */
-		ldo5-supply = <&reg_5v2>;	/* PMIC_LDO25IN */
-		boost-supply = <&reg_5v2>;	/* PMIC_BSTIN */
-		pwr_sw2-supply = <&bst_out>;    /* PMIC_SWIN */
-	};
-};
-
-&sdmmc1 {
-	pinctrl-names = "default", "opendrain";
-	pinctrl-0 = <&sdmmc1_b4_pins_a>;
-	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
-	bus-width = <4>;
-	cd-gpios = <&gpioh 3 GPIO_ACTIVE_LOW>;
-	disable-wp;
-	no-1-8-v;
-	st,neg-edge;
-	vmmc-supply = <&reg_3v3>;
-	status = "okay";
-};
-
-&sdmmc1_b4_pins_a {
-	/*
-	 * board lacks external pull-ups on SDMMC lines. Class 10 SD refuses to
-	 * work, thus enable internal pull-ups.
-	 */
-	pins1 {
-		/delete-property/ bias-disable;
-		bias-pull-up;
-	};
-	pins2 {
-		/delete-property/ bias-disable;
-		bias-pull-up;
-	};
-};
-
-&sdmmc2 {
-	pinctrl-names = "default", "opendrain";
-	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_mc1pins_b>;
-	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_mc1pins_b>;
-	bus-width = <8>;
-	no-1-8-v;
-	no-sd;
-	no-sdio;
-	non-removable;
-	st,neg-edge;
-	vmmc-supply = <&reg_3v3>;
-	status = "okay";
-};
-
-&timers3 {
-	status = "okay";
-
-	backlight_pwm: pwm {
-		pinctrl-names = "default";
-		pinctrl-0 = <&pwm3_mc1pins_b>;
-		status = "okay";
-	};
-};
-
-&timers5 {
-	status = "okay";
-
-	leds_pwm: pwm {
-		pinctrl-names = "default";
-		pinctrl-0 = <&pwm5_mc1pins_b>;
-		status = "okay";
-	};
-};
-
-&uart4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart4_pins_a>;
-	status = "okay";
-};
-
-&pinctrl {
-	ethernet0_rgmii_mc1pins_b: mc1-rgmii-1 {
-		pins1 {
-			pinmux = <STM32_PINMUX('G', 5, AF11)>, /* ETH_RGMII_CLK125 */
-				 <STM32_PINMUX('G', 4, AF11)>, /* ETH_RGMII_GTX_CLK */
-				 <STM32_PINMUX('G', 13, AF11)>, /* ETH_RGMII_TXD0 */
-				 <STM32_PINMUX('G', 14, AF11)>, /* ETH_RGMII_TXD1 */
-				 <STM32_PINMUX('C', 2, AF11)>, /* ETH_RGMII_TXD2 */
-				 <STM32_PINMUX('E', 2, AF11)>, /* ETH_RGMII_TXD3 */
-				 <STM32_PINMUX('B', 11, AF11)>, /* ETH_RGMII_TX_CTL */
-				 <STM32_PINMUX('C', 1, AF11)>; /* ETH_MDC */
-			bias-disable;
-			drive-push-pull;
-			slew-rate = <2>;
-		};
-		pins2 {
-			pinmux = <STM32_PINMUX('A', 2, AF11)>; /* ETH_MDIO */
-			bias-disable;
-			drive-push-pull;
-			slew-rate = <0>;
-		};
-		pins3 {
-			pinmux = <STM32_PINMUX('C', 4, AF11)>, /* ETH_RGMII_RXD0 */
-				 <STM32_PINMUX('C', 5, AF11)>, /* ETH_RGMII_RXD1 */
-				 <STM32_PINMUX('H', 6, AF11)>, /* ETH_RGMII_RXD2 */
-				 <STM32_PINMUX('H', 7, AF11)>, /* ETH_RGMII_RXD3 */
-				 <STM32_PINMUX('A', 1, AF11)>, /* ETH_RGMII_RX_CLK */
-				 <STM32_PINMUX('A', 7, AF11)>; /* ETH_RGMII_RX_CTL */
-			bias-disable;
-		};
-	};
-
-	i2c5_mc1pins_b: mc1-i2c5-1 {
-		pins {
-			pinmux = <STM32_PINMUX('D', 0, AF4)>, /* I2C5_SCL */
-			         <STM32_PINMUX('D', 1, AF4)>; /* I2C5_SDA */
-			bias-disable;
-			drive-open-drain;
-			slew-rate = <0>;
-		};
-	};
-
-	ltdc_mc1pins_c: mc1-ltdc-2 {
-		pins1 {
-			pinmux = <STM32_PINMUX('B',  1, AF9)>,  /* LTDC_R6 */
-				 <STM32_PINMUX('B',  9, AF14)>, /* LTDC_B7 */
-				 <STM32_PINMUX('C',  0, AF14)>, /* LTDC_R5 */
-				 <STM32_PINMUX('D',  3, AF14)>, /* LTDC_G7 */
-				 <STM32_PINMUX('D',  6, AF14)>, /* LTDC_B2 */
-				 <STM32_PINMUX('D', 10, AF14)>, /* LTDC_B3 */
-				 <STM32_PINMUX('E', 11, AF14)>, /* LTDC_G3 */
-				 <STM32_PINMUX('E', 12, AF14)>, /* LTDC_B4 */
-				 <STM32_PINMUX('E', 13, AF14)>, /* LTDC_DE */
-				 <STM32_PINMUX('E', 15, AF14)>, /* LTDC_R7 */
-				 <STM32_PINMUX('H',  4, AF9)>,  /* LTDC_G5 */
-				 <STM32_PINMUX('H',  8, AF14)>, /* LTDC_R2 */
-				 <STM32_PINMUX('H',  9, AF14)>, /* LTDC_R3 */
-				 <STM32_PINMUX('H', 10, AF14)>, /* LTDC_R4 */
-				 <STM32_PINMUX('H', 13, AF14)>, /* LTDC_G2 */
-				 <STM32_PINMUX('H', 15, AF14)>, /* LTDC_G4 */
-				 <STM32_PINMUX('I',  1, AF14)>, /* LTDC_G6 */
-				 <STM32_PINMUX('I',  5, AF14)>, /* LTDC_B5 */
-				 <STM32_PINMUX('I',  6, AF14)>, /* LTDC_B6 */
-				 <STM32_PINMUX('I',  9, AF14)>, /* LTDC_VSYNC */
-				 <STM32_PINMUX('I', 10, AF14)>; /* LTDC_HSYNC */
-			bias-disable;
-			drive-push-pull;
-			slew-rate = <0>;
-		};
-		pins2 {
-			pinmux = <STM32_PINMUX('E', 14, AF14)>; /* LTDC_CLK */
-			bias-disable;
-			drive-push-pull;
-			slew-rate = <1>;
-		};
-	};
-
-	pwm3_mc1pins_b: mc1-pwm3-1 {
-		pins {
-			pinmux = <STM32_PINMUX('B', 5, AF2)>; /* TIM3_CH2 */
-			bias-disable;
-			drive-push-pull;
-			slew-rate = <0>;
-		};
-	};
-
-	pwm5_mc1pins_b: mc1-pwm5-1 {
-		pins {
-			pinmux = <STM32_PINMUX('H', 11, AF2)>, /* TIM5_CH2 */
-				 <STM32_PINMUX('H', 12, AF2)>, /* TIM5_CH3 */
-				 <STM32_PINMUX('I', 0, AF2)>; /* TIM5_CH4 */
-			bias-disable;
-			drive-push-pull;
-			slew-rate = <0>;
-		};
-	};
-
-	sdmmc2_d47_mc1pins_b: mc1-sdmmc2-d47-1 {
-		pins {
-			pinmux = <STM32_PINMUX('A', 8, AF9)>,  /* SDMMC2_D4 */
-				 <STM32_PINMUX('A', 9, AF10)>, /* SDMMC2_D5 */
-				 <STM32_PINMUX('C', 6, AF10)>, /* SDMMC2_D6 */
-				 <STM32_PINMUX('C', 7, AF10)>; /* SDMMC2_D7 */
-			slew-rate = <1>;
-			drive-push-pull;
-			bias-disable;
-		};
-	};
-
-};
diff --git a/arch/arm/dts/stm32mp15xx-osd32.dtsi b/arch/arm/dts/stm32mp15xx-osd32.dtsi
deleted file mode 100644
index 87508350339e..000000000000
--- a/arch/arm/dts/stm32mp15xx-osd32.dtsi
+++ /dev/null
@@ -1,229 +0,0 @@
-/* SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause) */
-/*
- * Copyright (C) 2020 STMicroelectronics - All Rights Reserved
- * Copyright (C) 2020 Ahmad Fatoum, Pengutronix
- */
-
-#include <arm/stm32mp15-pinctrl.dtsi>
-
-#include <dt-bindings/mfd/st,stpmic1.h>
-
-/ {
-	reserved-memory {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		mcuram2: mcuram2@10000000 {
-			compatible = "shared-dma-pool";
-			reg = <0x10000000 0x40000>;
-			no-map;
-		};
-
-		vdev0vring0: vdev0vring0@10040000 {
-			compatible = "shared-dma-pool";
-			reg = <0x10040000 0x1000>;
-			no-map;
-		};
-
-		vdev0vring1: vdev0vring1@10041000 {
-			compatible = "shared-dma-pool";
-			reg = <0x10041000 0x1000>;
-			no-map;
-		};
-
-		vdev0buffer: vdev0buffer@10042000 {
-			compatible = "shared-dma-pool";
-			reg = <0x10042000 0x4000>;
-			no-map;
-		};
-
-		mcuram: mcuram@30000000 {
-			compatible = "shared-dma-pool";
-			reg = <0x30000000 0x40000>;
-			no-map;
-		};
-
-		retram: retram@38000000 {
-			compatible = "shared-dma-pool";
-			reg = <0x38000000 0x10000>;
-			no-map;
-		};
-	};
-
-	reg_sip_eeprom: regulator_eeprom {
-		compatible = "regulator-fixed";
-		regulator-name = "sip_eeprom";
-		regulator-always-on;
-	};
-};
-
-&i2c4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c4_pins_a>;
-	clock-frequency = <400000>;
-	i2c-scl-rising-time-ns = <185>;
-	i2c-scl-falling-time-ns = <20>;
-	status = "okay";
-
-	pmic: stpmic@33 {
-		compatible = "st,stpmic1";
-		reg = <0x33>;
-		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
-		interrupt-controller;
-		#interrupt-cells = <2>;
-
-		regulators {
-			compatible = "st,stpmic1-regulators";
-
-			ldo1-supply = <&v3v3>;
-			ldo6-supply = <&v3v3>;
-			pwr_sw1-supply = <&bst_out>;
-
-			vddcore: buck1 {
-				regulator-name = "vddcore";
-				regulator-min-microvolt = <1200000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-always-on;
-				regulator-initial-mode = <0>;
-				regulator-over-current-protection;
-			};
-
-			vdd_ddr: buck2 {
-				regulator-name = "vdd_ddr";
-				regulator-min-microvolt = <1350000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-always-on;
-				regulator-initial-mode = <0>;
-				regulator-over-current-protection;
-			};
-
-			vdd: buck3 {
-				regulator-name = "vdd";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-				st,mask-reset;
-				regulator-initial-mode = <0>;
-				regulator-over-current-protection;
-			};
-
-			v3v3: buck4 {
-				regulator-name = "v3v3";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-				regulator-over-current-protection;
-				regulator-initial-mode = <0>;
-			};
-
-			v1v8_audio: ldo1 {
-				regulator-name = "v1v8_audio";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-always-on;
-				interrupts = <IT_CURLIM_LDO1 0>;
-
-			};
-
-			v3v3_hdmi: ldo2 {
-				regulator-name = "v3v3_hdmi";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-				interrupts = <IT_CURLIM_LDO2 0>;
-
-			};
-
-			vtt_ddr: ldo3 {
-				regulator-name = "vtt_ddr";
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <750000>;
-				regulator-always-on;
-				regulator-over-current-protection;
-			};
-
-			vdd_usb: ldo4 {
-				regulator-name = "vdd_usb";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				interrupts = <IT_CURLIM_LDO4 0>;
-			};
-
-			vdda: ldo5 {
-				regulator-name = "vdda";
-				regulator-min-microvolt = <2900000>;
-				regulator-max-microvolt = <2900000>;
-				interrupts = <IT_CURLIM_LDO5 0>;
-				regulator-boot-on;
-			};
-
-			v1v2_hdmi: ldo6 {
-				regulator-name = "v1v2_hdmi";
-				regulator-min-microvolt = <1200000>;
-				regulator-max-microvolt = <1200000>;
-				regulator-always-on;
-				interrupts = <IT_CURLIM_LDO6 0>;
-
-			};
-
-			vref_ddr: vref_ddr {
-				regulator-name = "vref_ddr";
-				regulator-always-on;
-				regulator-over-current-protection;
-			};
-
-			bst_out: boost {
-				regulator-name = "bst_out";
-				interrupts = <IT_OCP_BOOST 0>;
-			};
-
-			vbus_otg: pwr_sw1 {
-				regulator-name = "vbus_otg";
-				interrupts = <IT_OCP_OTG 0>;
-				regulator-active-discharge;
-			};
-
-			vbus_sw: pwr_sw2 {
-				regulator-name = "vbus_sw";
-				interrupts = <IT_OCP_SWOUT 0>;
-				regulator-active-discharge;
-			};
-		};
-
-		onkey {
-			compatible = "st,stpmic1-onkey";
-			interrupts = <IT_PONKEY_F 0>, <IT_PONKEY_R 1>;
-			interrupt-names = "onkey-falling", "onkey-rising";
-		};
-
-		pmic_watchdog: watchdog {
-			compatible = "st,stpmic1-wdt";
-			status = "disabled";
-		};
-	};
-
-	sip_eeprom: eeprom@50 {
-		compatible = "atmel,24c32";
-		vcc-supply = <&reg_sip_eeprom>;
-		reg = <0x50>;
-	};
-};
-
-&ipcc {
-	status = "okay";
-};
-
-&m4_rproc {
-	memory-region = <&retram>, <&mcuram>, <&mcuram2>, <&vdev0vring0>,
-			<&vdev0vring1>, <&vdev0buffer>;
-	mboxes = <&ipcc 0>, <&ipcc 1>, <&ipcc 2>;
-	mbox-names = "vq0", "vq1", "shutdown";
-	interrupt-parent = <&exti>;
-	interrupts = <68 1>;
-	status = "okay";
-};
-
-&rng1 {
-	status = "okay";
-};
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
