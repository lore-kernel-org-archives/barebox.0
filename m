Delivery-date: Mon, 27 Nov 2023 22:50:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7jUv-00BOYe-2S
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 22:50:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7jUs-0003Lt-RD
	for lore@pengutronix.de; Mon, 27 Nov 2023 22:50:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DHNh0R1x3fEwURMqxZN0Td0czlXGHRfyM5nmO/tLAp4=; b=MgQDKPomn1v55R06ZrcTrw6N+B
	3zXJYowsLZGQuHwe9mt/CdoJMM9RtsB+8xNL0eQh8T/jZivAZIxfbVGVogSpYq5vyQC+PvlaO9Iha
	oXURNv2Vciy2pJ/yqmCW0CYUfmpt+nVETIeaxnWOvPgA5WZJNpuuLbji3tZ2MbEep4A8K0iOFYmmq
	a7s6VaKZiIHGGUegWLRv9McVRNJhdLucFWsYa38pvOuWG4iF0gr2IUddl/NgdhJC0+4mtXTqK/j/b
	VdfA3MmUfiGs+hrcbBmJnM68RPoHL1h9FtEVDtF0zggofOgcaL/sOOkmtBw5MhUfZE6WRqSrtDmGL
	dB8JROzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7jT0-003WsH-0i;
	Mon, 27 Nov 2023 21:48:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7jSq-003Wqm-2J
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 21:48:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1r7jSn-0002qT-Vn; Mon, 27 Nov 2023 22:48:22 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1r7jSn-00C1vl-Iv; Mon, 27 Nov 2023 22:48:21 +0100
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1r7jSn-00Fk6Y-1k;
	Mon, 27 Nov 2023 22:48:21 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Mon, 27 Nov 2023 22:48:17 +0100
Message-Id: <20231127214818.3751722-2-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127214818.3751722-1-rhi@pengutronix.de>
References: <20231127214818.3751722-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_134825_255977_9A669709 
X-CRM114-Status: GOOD (  14.42  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] ARM: i.MX7: Import GoMe device trees from kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The kernel device tree for the VAR-SOM-MX7 System-on-Module and the
Gossen Metrawatt Profitest MF (e143_01) have been submitted upstream:
http://lore.kernel.org/r/20231127-b4-imx7-var-som-gome-v1-0-f26f88f2d0bc@pengutronix.de

Until the fixes are in the upstream kernel and synced to our dts/
folder, add them here so we can already use them. This also includes the
dt-schema validation fixes to the upstream i.MX7 device trees mentioned
in the upstream kernel series.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 arch/arm/dts/imx7d-gome-e143_01.kernel.dts |  561 ++++++++
 arch/arm/dts/imx7d-pinfunc.kernel.h        |    8 +
 arch/arm/dts/imx7d-var-som-mx7.kernel.dtsi |  607 +++++++++
 arch/arm/dts/imx7d.kernel.dtsi             |  226 ++++
 arch/arm/dts/imx7s.kernel.dtsi             | 1354 ++++++++++++++++++++
 5 files changed, 2756 insertions(+)
 create mode 100644 arch/arm/dts/imx7d-gome-e143_01.kernel.dts
 create mode 100644 arch/arm/dts/imx7d-pinfunc.kernel.h
 create mode 100644 arch/arm/dts/imx7d-var-som-mx7.kernel.dtsi
 create mode 100644 arch/arm/dts/imx7d.kernel.dtsi
 create mode 100644 arch/arm/dts/imx7s.kernel.dtsi

diff --git a/arch/arm/dts/imx7d-gome-e143_01.kernel.dts b/arch/arm/dts/imx7d-gome-e143_01.kernel.dts
new file mode 100644
index 000000000000..19c7a3d4260e
--- /dev/null
+++ b/arch/arm/dts/imx7d-gome-e143_01.kernel.dts
@@ -0,0 +1,561 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/**
+ * Copyright (C) 2022 Gossen Metrawatt GmbH
+ * Copyright (C) 2022 Marco Felsch, Pengutronix
+ * Copyright (C) 2022 Philipp Zabel, Pengutronix
+ * Copyright (C) 2022 Roland Hieber, Pengutronix
+ */
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include "imx7d-var-som-mx7.dtsi"
+
+/ {
+	model = "Gossen Metrawatt Profitest MF (e143_01)";
+	compatible = "gome,e143_01", "variscite,var-som-mx7", "fsl,imx7d";
+
+	aliases {
+		gpio7 = &gpio8;
+		rtc0 = &rtc0;
+	};
+
+	max98357a: audio-codec {
+		compatible = "maxim,max98357a";
+		#sound-dai-cells = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_sdmode>;
+		sdmode-gpios = <&gpio3 20 GPIO_ACTIVE_HIGH>; // Pin 60 AUDIO_SHDN_B
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_keys>, <&pinctrl_gpio_keys_2>;
+		autorepeat;
+
+		button-0 {
+			label = "S0";
+			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>; // Pin 183 BTN_S0_ESC
+			linux,code = <KEY_ESC>;
+			wakeup-source;
+		};
+
+		button-1 {
+			label = "S1";
+			gpios = <&gpio1 11 GPIO_ACTIVE_LOW>; // Pin 185 BTN_S1_MEM
+			linux,code = <KEY_DOCUMENTS>;
+			wakeup-source;
+		};
+
+		button-2 {
+			label = "S2";
+			gpios = <&gpio1 10 GPIO_ACTIVE_LOW>; // Pin 181 BTN_S2_HLP
+			linux,code = <KEY_HELP>;
+			wakeup-source;
+		};
+
+		button-3 {
+			label = "S3";
+			gpios = <&gpio1 1 GPIO_ACTIVE_LOW>; // Pin 1 BTN_S3_STA
+			linux,code = <KEY_PROG1>;
+			wakeup-source;
+		};
+
+		button-4 {
+			label = "S4";
+			gpios = <&gpio1 2 GPIO_ACTIVE_LOW>; // Pin 168 BTN_S4_IDN
+			linux,code = <KEY_PROG2>;
+			wakeup-source;
+		};
+
+		button-5 {
+			label = "S5";
+			gpios = <&gpio3 24 GPIO_ACTIVE_LOW>; // Pin 28 BTN_S5
+			linux,code = <KEY_F5>;
+		};
+
+		button-6 {
+			label = "S6";
+			gpios = <&gpio3 5 GPIO_ACTIVE_LOW>; // Pin 40 BTN_S6
+			linux,code = <KEY_F6>;
+		};
+
+		button-7 {
+			label = "S7";
+			gpios = <&gpio3 22 GPIO_ACTIVE_LOW>; // Pin 38 BTN_S7
+			linux,code = <KEY_F7>;
+		};
+
+		button-8 {
+			label = "S8";
+			gpios = <&gpio3 4 GPIO_ACTIVE_LOW>; // Pin 36 BTN_S8
+			linux,code = <KEY_F8>;
+		};
+
+		button-9 {
+			label = "S9";
+			gpios = <&gpio3 27 GPIO_ACTIVE_LOW>; // Pin 20 BTN_S9
+			linux,code = <KEY_F9>;
+		};
+	};
+
+	gpio-poweroff {
+		compatible = "gpio-poweroff";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_poweroff>;
+		gpios = <&gpio7 14 GPIO_ACTIVE_LOW>; // Pin 7 POWER_OFF_B
+		input;
+	};
+
+	iio-hwmon {
+		compatible = "iio-hwmon";
+		io-channels = <&adc2 0>, // ARS_VAL
+			      <&adc2 1>, // VBAT_VAL
+			      <&adc2 2>, // LCD_BACKLIGHT_VAL
+			      <&adc2 3>; // VCC_5V0_FB
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_debug_led>;
+
+		test-led-1 {
+			label = "test-led-1:red";
+			gpios = <&gpio3 2 GPIO_ACTIVE_LOW>; // Pin 44 LED_TEST1_B
+			color = <LED_COLOR_ID_RED>;
+			linux,default-trigger = "disk-activity";
+		};
+
+		test-led-2 {
+			label = "test-led-2:red";
+			gpios = <&gpio3 3 GPIO_ACTIVE_LOW>; // Pin 46 LED_TEST2_B
+			color = <LED_COLOR_ID_RED>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	leds2 {
+		compatible = "gpio-leds";
+
+		led_netz_gn {
+			label = "mains:green";
+			gpios = <&gpio8 9 GPIO_ACTIVE_LOW>; // LED_NETZ_GN
+			color = <LED_COLOR_ID_GREEN>;
+		};
+
+		led_netz_rt {
+			label = "mains:red";
+			gpios = <&gpio8 8 GPIO_ACTIVE_LOW>; // LED_NETZ_RT
+			color = <LED_COLOR_ID_RED>;
+			default-state = "on";
+		};
+
+		led_debug_gn {
+			label = "debug:green";
+			gpios = <&gpio8 0 GPIO_ACTIVE_LOW>; // LED_DEBUG_GN
+			color = <LED_COLOR_ID_GREEN>;
+		};
+
+		led_debug_rt {
+			label = "debug:red";
+			gpios = <&gpio8 1 GPIO_ACTIVE_LOW>; // LED_DEBUG_RT
+			color = <LED_COLOR_ID_RED>;
+		};
+
+		led_ul_gn {
+			label = "ulrl:green";
+			gpios = <&gpio8 2 GPIO_ACTIVE_LOW>; // LED_UL_GN
+			color = <LED_COLOR_ID_GREEN>;
+		};
+
+		led_ul_rt {
+			label = "ulrl:red";
+			gpios = <&gpio8 6 GPIO_ACTIVE_LOW>; // LED_UL_RT
+			color = <LED_COLOR_ID_RED>;
+			default-state = "on";
+		};
+
+		led_rcd_gn {
+			label = "rcd:green";
+			gpios = <&gpio8 3 GPIO_ACTIVE_LOW>; // LED_RCD_GN
+			color = <LED_COLOR_ID_GREEN>;
+		};
+
+		led_rcd_rt {
+			label = "rcd:red";
+			gpios = <&gpio8 7 GPIO_ACTIVE_LOW>; // LED_RCD_RT
+			color = <LED_COLOR_ID_RED>;
+			default-state = "on";
+		};
+	};
+
+	reg_vled_backlight: regulator-vled-backlight {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_mipi_backlight>;
+		regulator-name = "VLED_BACKLIGHT";
+		gpio = <&gpio7 12 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <20000000>;
+		regulator-max-microvolt = <20000000>;
+		enable-active-high;
+	};
+
+	reg_vcc_3v3_per: regulator-vcc-3v3-per {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_vcc_3v3_per>;
+		regulator-name = "VCC_3V3_PER";
+		gpio = <&gpio2 26 GPIO_ACTIVE_HIGH>; // Pin 83 VCC_3V3_PER_EN
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-enable-ramp-delay = <30000>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	reg_vcc_5v0_per: regulator-vcc-5v0-per {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_vcc_5v0_per>;
+		regulator-name = "VCC_5V0_PER";
+		gpio = <&gpio2 29 GPIO_ACTIVE_HIGH>; // Pin 75 VCC_5V0_PER_EN
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	reg_imt: regulator-imt {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_imt>;
+		regulator-name = "VCC_IMT";
+		gpio = <&gpio3 10 GPIO_ACTIVE_HIGH>; // Pin 66 MT_EN
+		regulator-min-microvolt = <9000000>;
+		regulator-max-microvolt = <9000000>;
+		enable-active-high;
+	};
+
+	reg_vcc_1v8_alg: regulator-vcc-1v8-alg {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_1V8_ALG";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&reg_vcc_3v3_per>;
+	};
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "max98357aaudio";
+		/delete-property/ simple-audio-card,widgets;
+		/delete-property/ simple-audio-card,routing;
+		simple-audio-card,format = "i2s";
+
+		simple-audio-card,cpu {
+			sound-dai = <&sai3>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&max98357a>;
+		};
+	};
+
+	uc-imt-power {
+		compatible = "reg-userspace-consumer";
+		regulator-name = "reg_imt-consumer";
+		regulator-supplies = "vcc";
+		vcc-supply = <&reg_imt>;
+	};
+};
+
+&adc2 {
+	status = "okay";
+};
+
+&fec1 {
+	status = "okay";
+};
+
+&i2c2 {
+	/delete-node/ wm8731@1a;
+
+	/* DS1339 RTC module */
+	rtc0: rtc@68 {
+		compatible = "dallas,ds1339";
+		reg = <0x68>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_rtc>;
+		trickle-resistor-ohms = <250>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <13 GPIO_ACTIVE_LOW>; // Pin 120 RTC_INT_B
+		wakeup-source;
+	};
+};
+
+&i2c4 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	pinctrl-1 = <&pinctrl_i2c4_gpio>;
+	scl-gpios = <&gpio4 14 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>; // Pin 175 I2C4_SCL
+	sda-gpios = <&gpio4 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>; // Pin 173 I2C4_SDA
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	gpio8: max7312@23 {
+		compatible = "maxim,max7312";
+		reg = <0x23>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names = "LED_DEBUG_GN", "LED_DEBUG_RT", "LED_UL_GN", "LED_RCD_GN",
+				  "", "", "LED_UL_RT", "LED_RCD_RT",
+				  "LED_NETZ_RT", "LED_NETZ_GN", "", "",
+				  "DP_HW_CODE_1", "DP_HW_CODE_2", "DP_HW_CODE_3", "DP_HW_CODE_4";
+		vcc-supply = <&reg_vcc_3v3_per>;
+	};
+};
+
+&gpio1 {
+	gpio-line-names = "GWDOG_RST_B", "BTN_S3_STA", "BTN_S4_IDN", "",
+			  "", "", "", "USB_HOST_PWR_EN",
+			  "", "", "BTN_S2_HLP", "BTN_S1_MEM",
+			  "BTN_S0_ESC", "RTC_INT_B", "SOM: bt reg on";
+};
+
+&gpio2 {
+	gpio-line-names = "", "", "", "",
+			  "DBG_GPIO1", "DBG_GPIO2", "DBG_GPIO3", "DBG_GPIO4",
+			  "", "", "", "",
+			  "MT_RXD", "MT_TXD", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "VCC_3V3_PER_EN", "",
+			  "DSI_RESET", "VCC_5V0_PER_EN";
+};
+
+&gpio3 {
+	gpio-line-names = "", "", "LED_TEST1_B", "LED_TEST2_B",
+			  "BTN_S8", "BTN_S6", "MT_RESET", "",
+			  "", "", "MT_EN", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "AUDIO_SHDN_B", "", "BTN_S7", "",
+			  "BTN_S5", "", "", "BTN_S9",
+			  "BATT_LOW";
+};
+
+&gpio4 {
+	gpio-line-names = "", "", "", "",
+			  "", "", "", "",
+			  "I2C1_SCL", "I2C1_SDA", "I2C2_SCL", "I2C2_SDA",
+			  "", "", "I2C4_SCL", "I2C4_SDA",
+			  "", "", "", "",
+			  "", "", "", "HIL_SPI_CS0";
+};
+
+&gpio5 {
+	gpio-line-names = "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "SOM: ethphy0 reset";
+};
+
+&gpio6 {
+	gpio-line-names = "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "SOM: sd3_pwr (eMMC)";
+};
+
+&gpio7 {
+	gpio-line-names = "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "LCD_BACKLIGHT_EN", "", "POWER_OFF_B";
+};
+
+&lcdif {
+	assigned-clocks = <&clks IMX7D_LCDIF_PIXEL_ROOT_SRC>,
+			  <&clks IMX7D_PLL_VIDEO_POST_DIV>;
+	assigned-clock-parents = <&clks IMX7D_PLL_VIDEO_POST_DIV>;
+	assigned-clock-rates = <0>, <128000000>;
+	fsl,ocram = <&ocram>;
+	fsl,pxp = <&pxp>;
+	status = "okay";
+};
+
+&mipi_dsi {
+	samsung,burst-clock-frequency = <850000000>;
+	status = "okay";
+
+	panel@0 {
+		compatible = "tianma,tm050jdhg33", "ilitek,ili9881c";
+		reg = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_mipi_panel>;
+		reset-gpios = <&gpio2 28 GPIO_ACTIVE_LOW>; // Pin 73 DSI_RESET
+		power-supply = <&reg_vcc_3v3_per>;
+		dsi-lanes = <2>;
+
+		rotation = <90>;
+
+		ilitek,enable-internal-backlight;
+		default-brightness = <2047>;
+		ilitek,pwm-frequency = <50000>;
+		ilitek,backlight-supply = <&reg_vled_backlight>;
+	};
+};
+
+&sai3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai3>;
+	assigned-clocks = <&clks IMX7D_SAI3_ROOT_SRC>,
+			  <&clks IMX7D_SAI3_ROOT_CLK>;
+	assigned-clock-parents = <&clks IMX7D_PLL_AUDIO_POST_DIV>;
+	assigned-clock-rates = <0>, <36864000>;
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart7 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart7>;
+	status = "okay";
+};
+
+&usbotg1 {
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&usbotg2 {
+	status = "okay";
+};
+
+&iomuxc_lpsr {
+	pinctrl_gpio_keys_2: pinctrl_gpio_keys_2grp {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO01__GPIO1_IO1        0x0C
+			MX7D_PAD_LPSR_GPIO1_IO02__GPIO1_IO2        0x0C
+		>;
+	};
+
+	pinctrl_usbotg2_pwr: pinctrl_usbotg2_pwrgrp {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO07__GPIO1_IO7        0x14
+		>;
+	};
+};
+
+&iomuxc {
+	pinctrl_gpio_keys: pinctrl-gpio-keysgrp {
+		fsl,pins = <
+			MX7D_PAD_GPIO1_IO10__GPIO1_IO10            0x0000000C
+			MX7D_PAD_GPIO1_IO11__GPIO1_IO11            0x0000000C
+			MX7D_PAD_GPIO1_IO12__GPIO1_IO12            0x0000000C
+			MX7D_PAD_LCD_DATA00__GPIO3_IO5             0x0000000C
+			MX7D_PAD_LCD_DATA17__GPIO3_IO22            0x0000000C
+			MX7D_PAD_LCD_DATA19__GPIO3_IO24            0x0000000C
+			MX7D_PAD_LCD_DATA22__GPIO3_IO27            0x0000000C
+			MX7D_PAD_LCD_RESET__GPIO3_IO4              0x0000000C
+		>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX7D_PAD_I2C4_SCL__I2C4_SCL                0x4000007f
+			MX7D_PAD_I2C4_SDA__I2C4_SDA                0x4000007f
+		>;
+	};
+
+	pinctrl_i2c4_gpio: i2c4-gpiogrp {
+		fsl,pins = <
+			MX7D_PAD_I2C4_SCL__GPIO4_IO14              0x4000007f
+			MX7D_PAD_I2C4_SDA__GPIO4_IO15              0x4000007f
+		>;
+	};
+
+	pinctrl_mipi_backlight: mipi-backlightgrp {
+		fsl,pins = <
+			MX7D_PAD_ENET1_TX_CLK__GPIO7_IO12          0x0000001B
+		>;
+	};
+
+	pinctrl_mipi_panel: mipi-panelgrp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_BDR0__GPIO2_IO28             0x0000001B /* DSI_RESET */
+		>;
+	};
+
+	pinctrl_poweroff: pinctrl_poweroffgrp {
+		fsl,pins = <
+			MX7D_PAD_ENET1_CRS__GPIO7_IO14             0x0000001B
+		>;
+	};
+
+	pinctrl_reg_vcc_3v3_per: pinctrl_reg_vcc_3v3_pergrp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_GDRL__GPIO2_IO26             0x0000001B
+		>;
+	};
+
+	pinctrl_reg_vcc_5v0_per: pinctrl_reg_vcc_5v0_pergrp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_BDR1__GPIO2_IO29             0x0000001B
+		>;
+	};
+
+	pinctrl_reg_imt: pinctrl_reg_imtgrp {
+		fsl,pins = <
+			MX7D_PAD_LCD_DATA05__GPIO3_IO10            0x0000001B
+		>;
+	};
+
+	pinctrl_rtc: pinctrl_rtcgrp {
+		fsl,pins = <
+			MX7D_PAD_GPIO1_IO13__GPIO1_IO13            0x0000001B
+		>;
+	};
+
+	pinctrl_sai3: pinctrl_sai3grp {
+		fsl,pins = <
+			MX7D_PAD_SD1_DATA1__SAI3_TX_BCLK           0x0000001F
+			MX7D_PAD_SD1_DATA2__SAI3_TX_SYNC           0x0000001F
+			MX7D_PAD_SD1_DATA3__SAI3_TX_DATA0          0x00000030
+		>;
+	};
+
+	pinctrl_sdmode: pinctrl_sdmodegrp {
+		fsl,pins = <
+			MX7D_PAD_LCD_DATA15__GPIO3_IO20            0x0000001F
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX	0x79 /* DEBUG_UART1_TXD */
+			MX7D_PAD_UART1_RX_DATA__UART1_DCE_RX	0x79 /* DEBUG_UART1_RXD */
+		>;
+	};
+
+	pinctrl_uart7: uart7grp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_DATA12__UART7_DCE_RX	0x79
+			MX7D_PAD_EPDC_DATA13__UART7_DCE_TX	0x79
+		>;
+	};
+
+	pinctrl_debug_led: pinctrl_debug_ledgrp {
+		fsl,pins = <
+			MX7D_PAD_LCD_HSYNC__GPIO3_IO2              0x00000003
+			MX7D_PAD_LCD_VSYNC__GPIO3_IO3              0x00000003
+		>;
+	};
+};
diff --git a/arch/arm/dts/imx7d-pinfunc.kernel.h b/arch/arm/dts/imx7d-pinfunc.kernel.h
new file mode 100644
index 000000000000..141192404b65
--- /dev/null
+++ b/arch/arm/dts/imx7d-pinfunc.kernel.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __DTS_IMX7D_PINFUNC_KERNEL_H
+#define __DTS_IMX7D_PINFUNC_KERNEL_H
+
+#define MX7D_PAD_LPSR_GPIO1_IO03__OSC32K_32K_OUT                  0x000C 0x003C 0x0000 0x4 0x0
+
+#endif /* __DTS_IMX7D_PINFUNC_KERNEL_H */
diff --git a/arch/arm/dts/imx7d-var-som-mx7.kernel.dtsi b/arch/arm/dts/imx7d-var-som-mx7.kernel.dtsi
new file mode 100644
index 000000000000..591436ffc6a0
--- /dev/null
+++ b/arch/arm/dts/imx7d-var-som-mx7.kernel.dtsi
@@ -0,0 +1,607 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2015 Freescale Semiconductor, Inc.
+ * Copyright (C) 2016-2017 Variscite Ltd.
+ * Copyright (C) 2022 Philipp Zabel, Pengutronix
+ * Copyright (C) 2022 Roland Hieber, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <dt-bindings/input/input.h>
+#include "imx7d.kernel.dtsi"
+
+/ {
+	model = "Variscite i.MX7 Dual VAR-SOM-MX7";
+	compatible = "variscite,var-som-mx7", "fsl,imx7d";
+
+	reg_vref_1v8: regulator-vref-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vref-1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
+	reg_usb_otg1_vbus: regulator-usbotg1-vbus {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usbotg1_vbus>;
+		regulator-name = "usb_otg1_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio1 5 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_usb_otg2_vbus: regulator-usbotg2-vbus {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usbotg2_vbus>;
+		regulator-name = "usb_otg2_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio1 7 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	wlreg_on: regulator-wlreg-on {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "wlreg_on";
+	};
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "wm8731audio";
+		simple-audio-card,widgets =
+			"Headphone", "Headphone Jack",
+			"Line", "Line Jack",
+			"Microphone", "Mic Jack";
+		simple-audio-card,routing =
+			"Headphone Jack", "RHPOUT",
+			"Headphone Jack", "LHPOUT",
+			"LLINEIN", "Line Jack",
+			"RLINEIN", "Line Jack",
+			"MICIN", "Mic Bias",
+			"Mic Bias", "Mic Jack";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&sound_master>;
+		simple-audio-card,frame-master = <&sound_master>;
+
+		sound_master: simple-audio-card,cpu {
+			sound-dai = <&sai1>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&wm8731>;
+			system-clock-frequency = <12288000>;
+		};
+	};
+};
+
+&adc1 {
+	vref-supply = <&reg_vref_1v8>;
+};
+
+&adc2 {
+	vref-supply = <&reg_vref_1v8>;
+};
+
+&cpu0 {
+	cpu-supply = <&sw1a_reg>;
+};
+
+&cpu1 {
+	cpu-supply = <&sw1a_reg>;
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1>;
+	phy-supply = <&vgen3_reg>;
+	assigned-clocks = <&clks IMX7D_ENET_PHY_REF_ROOT_SRC>,
+			  <&clks IMX7D_ENET_AXI_ROOT_SRC>,
+			  <&clks IMX7D_ENET1_TIME_ROOT_SRC>,
+			  <&clks IMX7D_ENET1_TIME_ROOT_CLK>,
+			  <&clks IMX7D_ENET_AXI_ROOT_CLK>;
+	assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_25M_CLK>,
+				 <&clks IMX7D_PLL_ENET_MAIN_250M_CLK>,
+				 <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>;
+	assigned-clock-rates = <0>, <0>, <0>, <100000000>, <250000000>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	phy-reset-gpios = <&gpio5 11 GPIO_ACTIVE_LOW>;
+	phy-reset-post-delay = <20>;
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+		};
+
+		ethphy1: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
+		};
+	};
+};
+
+&fec2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet2>;
+	phy-supply = <&vgen3_reg>;
+	assigned-clocks = <&clks IMX7D_ENET_PHY_REF_ROOT_SRC>,
+			  <&clks IMX7D_ENET_AXI_ROOT_SRC>,
+			  <&clks IMX7D_ENET2_TIME_ROOT_SRC>,
+			  <&clks IMX7D_ENET2_TIME_ROOT_CLK>,
+			  <&clks IMX7D_ENET_AXI_ROOT_CLK>;
+	assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_25M_CLK>,
+				 <&clks IMX7D_PLL_ENET_MAIN_250M_CLK>,
+				 <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>;
+	assigned-clock-rates = <0>, <0>, <0>, <100000000>, <250000000>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy1>;
+	phy-reset-gpios = <&gpio4 3 GPIO_ACTIVE_LOW>;
+	phy-reset-post-delay = <20>;
+};
+
+&gpio6 {
+	sd3-pwr-hog {
+		gpio-hog;
+		gpios = <11 0>;
+		output-low;
+		line-name = "sd3_pwr";
+	};
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	pinctrl-1 = <&pinctrl_i2c1_gpio>;
+	scl-gpios = <&gpio4 8 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio4 9 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+
+	pmic@8 {
+		compatible = "fsl,pfuze3000";
+		reg = <0x08>;
+
+		regulators {
+			sw1a_reg: sw1a {
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+
+			/* use sw1c_reg to align with pfuze100/pfuze200 */
+			sw1c_reg: sw1b {
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1475000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+
+			sw2_reg: sw2 {
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw3a_reg: sw3 {
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1650000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			swbst_reg: swbst {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+			};
+
+			snvs_reg: vsnvs {
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vref_reg: vrefddr {
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vgen1_reg: vldo1 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen2_reg: vldo2 {
+				status = "disabled";
+			};
+
+			vgen3_reg: vccsd {
+				regulator-min-microvolt = <2850000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vgen4_reg: v33 {
+				regulator-min-microvolt = <2850000>;
+				regulator-max-microvolt = <2850000>;
+				regulator-always-on;
+			};
+
+			vgen5_reg: vldo3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen6_reg: vldo4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+		};
+	};
+
+	eeprom@50 {
+		compatible = "rohm,br24g04", "atmel,24c04";
+		reg = <0x50>;
+		pagesize = <16>;
+		num-addresses = <2>;
+		address-width = <8>;
+		read-only;
+	};
+};
+
+&i2c2 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	pinctrl-1 = <&pinctrl_i2c2_gpio>;
+	scl-gpios = <&gpio4 10 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio4 11 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+
+	wm8731: wm8731@1a {
+		#sound-dai-cells = <0>;
+		AVDD-supply = <&vgen6_reg>;
+		HPVDD-supply = <&vgen6_reg>;
+		DBVDD-supply = <&vgen6_reg>;
+		DCVDD-supply = <&vgen6_reg>;
+		compatible = "wlf,wm8731";
+		reg = <0x1a>;
+		clocks = <&clks IMX7D_AUDIO_MCLK_ROOT_CLK>;
+		clock-names = "mclk";
+		assigned-clocks = <&clks IMX7D_AUDIO_MCLK_ROOT_SRC>,
+				  <&clks IMX7D_PLL_AUDIO_POST_DIV>,
+				  <&clks IMX7D_AUDIO_MCLK_ROOT_DIV>;
+		assigned-clock-parents = <&clks IMX7D_PLL_AUDIO_POST_DIV>;
+		assigned-clock-rates = <0>, <884736000>, <12288000>;
+	};
+};
+
+&sai1 {
+	assigned-clocks = <&clks IMX7D_AUDIO_MCLK_ROOT_SRC>,
+			  <&clks IMX7D_PLL_AUDIO_POST_DIV>,
+			  <&clks IMX7D_AUDIO_MCLK_ROOT_DIV>;
+	assigned-clock-parents = <&clks IMX7D_PLL_AUDIO_POST_DIV>;
+	assigned-clock-rates = <0>, <884736000>, <12288000>;
+	status = "okay";
+};
+
+&snvs_pwrkey {
+	status = "okay";
+};
+
+&snvs_rtc {
+	status = "disabled";
+};
+
+&uart1 {
+	assigned-clocks = <&clks IMX7D_UART1_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_OSC_24M_CLK>;
+};
+
+&uart2 {
+	assigned-clocks = <&clks IMX7D_UART2_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_OSC_24M_CLK>;
+};
+
+&uart3 {
+	assigned-clocks = <&clks IMX7D_UART3_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&usbotg1 {
+	vbus-supply = <&reg_usb_otg1_vbus>;
+	dr_mode = "host";
+};
+
+&usbotg2 {
+	vbus-supply = <&reg_usb_otg2_vbus>;
+	dr_mode = "host";
+};
+
+&usdhc2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_wlan>, <&pinctrl_bt>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_wlan>, <&pinctrl_bt>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_wlan>, <&pinctrl_bt>;
+	pinctrl-3 = <&pinctrl_usdhc2_sleep>, <&pinctrl_wlan_sleep>, <&pinctrl_bt_sleep>;
+	keep-power-in-suspend;
+	non-removable;
+	vmmc-supply = <&wlreg_on>;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+	};
+};
+
+/* eMMC */
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3_ctrl>, <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_ctrl>, <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_ctrl>, <&pinctrl_usdhc3_200mhz>;
+	vmmc-supply = <&vgen3_reg>;
+	assigned-clocks = <&clks IMX7D_USDHC3_ROOT_CLK>;
+	assigned-clock-rates = <400000000>;
+	no-1-8-v;
+	no-sdio;
+	no-sd;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+};
+
+&iomuxc_lpsr {
+	pinctrl_usbotg1_vbus: usbotg1-vbusgrp {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO05__GPIO1_IO5		0x14
+		>;
+	};
+
+	pinctrl_usbotg2_vbus: usbotg2-vbusgrp {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO07__GPIO1_IO7		0x14
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO00__WDOG1_WDOG_B		0x74
+		>;
+	};
+
+	pinctrl_wlan: wlangrp {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO04__GPIO1_IO4		0x09 /* WL_REG_ON */
+			MX7D_PAD_LPSR_GPIO1_IO03__OSC32K_32K_OUT	0xb0 /* WIFI Slow clock */
+		>;
+	};
+
+	pinctrl_wlan_sleep: wlan-sleepgrp {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO04__GPIO1_IO4		0x10 /* WL_REG_ON */
+			MX7D_PAD_LPSR_GPIO1_IO03__OSC32K_32K_OUT	0x10 /* WIFI Slow clock */
+		>;
+	};
+};
+
+&iomuxc {
+
+	pinctrl_bt: btgrp {
+		fsl,pins = <
+			MX7D_PAD_GPIO1_IO14__GPIO1_IO14		0x80000000  /* bt reg on */
+		>;
+	};
+
+	pinctrl_bt_sleep: bt-sleepgrp {
+		fsl,pins = <
+			MX7D_PAD_GPIO1_IO14__GPIO1_IO14			0x10  /* bt reg on */
+		>;
+	};
+
+	pinctrl_enet1: enet1grp {
+		fsl,pins = <
+			MX7D_PAD_SD2_CD_B__ENET1_MDIO			0x3
+			MX7D_PAD_SD2_WP__ENET1_MDC			0x3
+			MX7D_PAD_ENET1_RGMII_TXC__ENET1_RGMII_TXC	0x1
+			MX7D_PAD_ENET1_RGMII_TD0__ENET1_RGMII_TD0	0x1
+			MX7D_PAD_ENET1_RGMII_TD1__ENET1_RGMII_TD1	0x1
+			MX7D_PAD_ENET1_RGMII_TD2__ENET1_RGMII_TD2	0x1
+			MX7D_PAD_ENET1_RGMII_TD3__ENET1_RGMII_TD3	0x1
+			MX7D_PAD_ENET1_RGMII_TX_CTL__ENET1_RGMII_TX_CTL	0x1
+			MX7D_PAD_ENET1_RGMII_RXC__ENET1_RGMII_RXC	0x1
+			MX7D_PAD_ENET1_RGMII_RD0__ENET1_RGMII_RD0	0x1
+			MX7D_PAD_ENET1_RGMII_RD1__ENET1_RGMII_RD1	0x1
+			MX7D_PAD_ENET1_RGMII_RD2__ENET1_RGMII_RD2	0x1
+			MX7D_PAD_ENET1_RGMII_RD3__ENET1_RGMII_RD3	0x1
+			MX7D_PAD_ENET1_RGMII_RX_CTL__ENET1_RGMII_RX_CTL	0x1
+			MX7D_PAD_SD2_RESET_B__GPIO5_IO11	0x59  /* ethphy0 reset */
+		>;
+	};
+
+	pinctrl_enet2: enet2grp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_GDSP__ENET2_RGMII_TXC		0x1
+			MX7D_PAD_EPDC_SDCE2__ENET2_RGMII_TD0		0x1
+			MX7D_PAD_EPDC_SDCE3__ENET2_RGMII_TD1		0x1
+			MX7D_PAD_EPDC_GDCLK__ENET2_RGMII_TD2		0x1
+			MX7D_PAD_EPDC_GDOE__ENET2_RGMII_TD3		0x1
+			MX7D_PAD_EPDC_GDRL__ENET2_RGMII_TX_CTL		0x1
+			MX7D_PAD_EPDC_SDCE1__ENET2_RGMII_RXC		0x1
+			MX7D_PAD_EPDC_SDCLK__ENET2_RGMII_RD0		0x1
+			MX7D_PAD_EPDC_SDLE__ENET2_RGMII_RD1		0x1
+			MX7D_PAD_EPDC_SDOE__ENET2_RGMII_RD2		0x1
+			MX7D_PAD_EPDC_SDSHR__ENET2_RGMII_RD3		0x1
+			MX7D_PAD_EPDC_SDCE0__ENET2_RGMII_RX_CTL		0x1
+			MX7D_PAD_UART2_TX_DATA__GPIO4_IO3	0x59  /* ethphy1 reset */
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX7D_PAD_I2C1_SDA__I2C1_SDA	0x4000007f
+			MX7D_PAD_I2C1_SCL__I2C1_SCL	0x4000007f
+		>;
+	};
+
+	pinctrl_i2c1_gpio: i2c1gpiogrp {
+		fsl,pins = <
+			MX7D_PAD_I2C1_SDA__GPIO4_IO9	0x4000007f
+			MX7D_PAD_I2C1_SCL__GPIO4_IO8	0x4000007f
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX7D_PAD_I2C2_SDA__I2C2_SDA	0x4000007f
+			MX7D_PAD_I2C2_SCL__I2C2_SCL	0x4000007f
+		>;
+	};
+
+	pinctrl_i2c2_gpio: i2c2gpiogrp {
+		fsl,pins = <
+			MX7D_PAD_I2C2_SDA__GPIO4_IO11	0x4000007f
+			MX7D_PAD_I2C2_SCL__GPIO4_IO10	0x4000007f
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX7D_PAD_UART3_TX_DATA__UART3_DCE_TX    0x79
+			MX7D_PAD_UART3_RX_DATA__UART3_DCE_RX    0x79
+			MX7D_PAD_UART3_CTS_B__UART3_DCE_CTS     0x79
+			MX7D_PAD_UART3_RTS_B__UART3_DCE_RTS     0x79
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX7D_PAD_SD2_CMD__SD2_CMD		0x59
+			MX7D_PAD_SD2_CLK__SD2_CLK		0x19
+			MX7D_PAD_SD2_DATA0__SD2_DATA0		0x59
+			MX7D_PAD_SD2_DATA1__SD2_DATA1		0x59
+			MX7D_PAD_SD2_DATA2__SD2_DATA2		0x59
+			MX7D_PAD_SD2_DATA3__SD2_DATA3		0x59
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			MX7D_PAD_SD2_CMD__SD2_CMD		0x5a
+			MX7D_PAD_SD2_CLK__SD2_CLK		0x1a
+			MX7D_PAD_SD2_DATA0__SD2_DATA0		0x5a
+			MX7D_PAD_SD2_DATA1__SD2_DATA1		0x5a
+			MX7D_PAD_SD2_DATA2__SD2_DATA2		0x5a
+			MX7D_PAD_SD2_DATA3__SD2_DATA3		0x5a
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <
+			MX7D_PAD_SD2_CMD__SD2_CMD		0x5b
+			MX7D_PAD_SD2_CLK__SD2_CLK		0x1b
+			MX7D_PAD_SD2_DATA0__SD2_DATA0		0x5b
+			MX7D_PAD_SD2_DATA1__SD2_DATA1		0x5b
+			MX7D_PAD_SD2_DATA2__SD2_DATA2		0x5b
+			MX7D_PAD_SD2_DATA3__SD2_DATA3		0x5b
+		>;
+	};
+
+	pinctrl_usdhc2_sleep: usdhc2-sleepgrp {
+		fsl,pins = <
+			MX7D_PAD_SD2_CMD__GPIO5_IO13		0x10
+			MX7D_PAD_SD2_CLK__GPIO5_IO12		0x10
+			MX7D_PAD_SD2_DATA0__GPIO5_IO14		0x10
+			MX7D_PAD_SD2_DATA1__GPIO5_IO15		0x10
+			MX7D_PAD_SD2_DATA2__GPIO5_IO16		0x10
+			MX7D_PAD_SD2_DATA3__GPIO5_IO17		0x10
+		>;
+	};
+
+	pinctrl_usdhc3_ctrl: usdhc3-ctrlgrp {
+		fsl,pins = <
+			MX7D_PAD_SD3_RESET_B__SD3_RESET_B	0x59
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX7D_PAD_SD3_CMD__SD3_CMD		0x59
+			MX7D_PAD_SD3_CLK__SD3_CLK		0x19
+			MX7D_PAD_SD3_DATA0__SD3_DATA0		0x59
+			MX7D_PAD_SD3_DATA1__SD3_DATA1		0x59
+			MX7D_PAD_SD3_DATA2__SD3_DATA2		0x59
+			MX7D_PAD_SD3_DATA3__SD3_DATA3		0x59
+			MX7D_PAD_SD3_DATA4__SD3_DATA4		0x59
+			MX7D_PAD_SD3_DATA5__SD3_DATA5		0x59
+			MX7D_PAD_SD3_DATA6__SD3_DATA6		0x59
+			MX7D_PAD_SD3_DATA7__SD3_DATA7		0x59
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <
+			MX7D_PAD_SD3_CMD__SD3_CMD		0x5a
+			MX7D_PAD_SD3_CLK__SD3_CLK		0x1a
+			MX7D_PAD_SD3_DATA0__SD3_DATA0		0x5a
+			MX7D_PAD_SD3_DATA1__SD3_DATA1		0x5a
+			MX7D_PAD_SD3_DATA2__SD3_DATA2		0x5a
+			MX7D_PAD_SD3_DATA3__SD3_DATA3		0x5a
+			MX7D_PAD_SD3_DATA4__SD3_DATA4		0x5a
+			MX7D_PAD_SD3_DATA5__SD3_DATA5		0x5a
+			MX7D_PAD_SD3_DATA6__SD3_DATA6		0x5a
+			MX7D_PAD_SD3_DATA7__SD3_DATA7		0x5a
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <
+			MX7D_PAD_SD3_CMD__SD3_CMD		0x5b
+			MX7D_PAD_SD3_CLK__SD3_CLK		0x1b
+			MX7D_PAD_SD3_DATA0__SD3_DATA0		0x5b
+			MX7D_PAD_SD3_DATA1__SD3_DATA1		0x5b
+			MX7D_PAD_SD3_DATA2__SD3_DATA2		0x5b
+			MX7D_PAD_SD3_DATA3__SD3_DATA3		0x5b
+			MX7D_PAD_SD3_DATA4__SD3_DATA4		0x5b
+			MX7D_PAD_SD3_DATA5__SD3_DATA5		0x5b
+			MX7D_PAD_SD3_DATA6__SD3_DATA6		0x5b
+			MX7D_PAD_SD3_DATA7__SD3_DATA7		0x5b
+		>;
+	};
+};
diff --git a/arch/arm/dts/imx7d.kernel.dtsi b/arch/arm/dts/imx7d.kernel.dtsi
new file mode 100644
index 000000000000..bc066b71a373
--- /dev/null
+++ b/arch/arm/dts/imx7d.kernel.dtsi
@@ -0,0 +1,226 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+//
+// Copyright 2015 Freescale Semiconductor, Inc.
+// Copyright 2016 Toradex AG
+
+#include "imx7s.kernel.dtsi"
+#include <dt-bindings/reset/imx7-reset.h>
+
+/ {
+	aliases {
+		usb0 = &usbotg1;
+		usb1 = &usbotg2;
+		usb2 = &usbh;
+	};
+
+	cpus {
+		cpu0: cpu@0 {
+			clock-frequency = <996000000>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			#cooling-cells = <2>;
+			nvmem-cells = <&fuse_grade>;
+			nvmem-cell-names = "speed_grade";
+		};
+
+		cpu1: cpu@1 {
+			compatible = "arm,cortex-a7";
+			device_type = "cpu";
+			reg = <1>;
+			clock-frequency = <996000000>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			#cooling-cells = <2>;
+			cpu-idle-states = <&cpu_sleep_wait>;
+		};
+	};
+
+	timer {
+		compatible = "arm,armv7-timer";
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>;
+	};
+
+	cpu0_opp_table: opp-table {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-792000000 {
+			opp-hz = /bits/ 64 <792000000>;
+			opp-microvolt = <1000000>;
+			clock-latency-ns = <150000>;
+			opp-supported-hw = <0xd>, <0x7>;
+			opp-suspend;
+		};
+
+		opp-996000000 {
+			opp-hz = /bits/ 64 <996000000>;
+			opp-microvolt = <1100000>;
+			clock-latency-ns = <150000>;
+			opp-supported-hw = <0xc>, <0x7>;
+			opp-suspend;
+		};
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <1225000>;
+			clock-latency-ns = <150000>;
+			opp-supported-hw = <0x8>, <0x3>;
+			opp-suspend;
+		};
+	};
+
+	usbphynop2: usbphynop2 {
+		compatible = "usb-nop-xceiv";
+		clocks = <&clks IMX7D_USB_PHY2_CLK>;
+		clock-names = "main_clk";
+		#phy-cells = <0>;
+	};
+
+	soc: soc {
+		etm@3007d000 {
+			compatible = "arm,coresight-etm3x", "arm,primecell";
+			reg = <0x3007d000 0x1000>;
+
+			/*
+			 * System will hang if added nosmp in kernel command line
+			 * without arm,primecell-periphid because amba bus try to
+			 * read id and core1 power off at this time.
+			 */
+			arm,primecell-periphid = <0xbb956>;
+			cpu = <&cpu1>;
+			clocks = <&clks IMX7D_MAIN_AXI_ROOT_CLK>;
+			clock-names = "apb_pclk";
+
+			out-ports {
+				port {
+					etm1_out_port: endpoint {
+						remote-endpoint = <&ca_funnel_in_port1>;
+					};
+				};
+			};
+		};
+
+		intc: interrupt-controller@31001000 {
+			compatible = "arm,cortex-a7-gic";
+			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_HIGH)>;
+			#interrupt-cells = <3>;
+			interrupt-controller;
+			interrupt-parent = <&intc>;
+			reg = <0x31001000 0x1000>,
+			      <0x31002000 0x2000>,
+			      <0x31004000 0x2000>,
+			      <0x31006000 0x2000>;
+		};
+
+		pcie: pcie@33800000 {
+			compatible = "fsl,imx7d-pcie";
+			reg = <0x33800000 0x4000>,
+			      <0x4ff00000 0x80000>;
+			reg-names = "dbi", "config";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			bus-range = <0x00 0xff>;
+			ranges = <0x81000000 0 0          0x4ff80000 0 0x00010000>, /* downstream I/O */
+				 <0x82000000 0 0x40000000 0x40000000 0 0x0ff00000>; /* non-prefetchable memory */
+			num-lanes = <1>;
+			interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi";
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			/*
+			 * Reference manual lists pci irqs incorrectly
+			 * Real hardware ordering is same as imx6: D+MSI, C, B, A
+			 */
+			interrupt-map = <0 0 0 1 &intc GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks IMX7D_PCIE_CTRL_ROOT_CLK>,
+				 <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>,
+				 <&clks IMX7D_PCIE_PHY_ROOT_CLK>;
+			clock-names = "pcie", "pcie_bus", "pcie_phy";
+			assigned-clocks = <&clks IMX7D_PCIE_CTRL_ROOT_SRC>,
+					  <&clks IMX7D_PCIE_PHY_ROOT_SRC>;
+			assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_250M_CLK>,
+						 <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>;
+
+			fsl,max-link-speed = <2>;
+			power-domains = <&pgc_pcie_phy>;
+			resets = <&src IMX7_RESET_PCIEPHY>,
+				 <&src IMX7_RESET_PCIE_CTRL_APPS_EN>,
+				 <&src IMX7_RESET_PCIE_CTRL_APPS_TURNOFF>;
+			reset-names = "pciephy", "apps", "turnoff";
+			fsl,imx7d-pcie-phy = <&pcie_phy>;
+			status = "disabled";
+		};
+	};
+};
+
+&aips2 {
+	pcie_phy: pcie-phy@306d0000 {
+		  compatible = "fsl,imx7d-pcie-phy";
+		  reg = <0x306d0000 0x10000>;
+		  status = "disabled";
+	};
+
+	pxp: pxp@30700000 {
+		compatible = "fsl,imx7d-pxp";
+		reg = <0x30700000 0x10000>;
+		interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&clks IMX7D_PXP_CLK>;
+		clock-names = "axi";
+	};
+};
+
+&aips3 {
+	usbotg2: usb@30b20000 {
+		compatible = "fsl,imx7d-usb", "fsl,imx27-usb";
+		reg = <0x30b20000 0x200>;
+		interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&clks IMX7D_USB_CTRL_CLK>;
+		fsl,usbphy = <&usbphynop2>;
+		fsl,usbmisc = <&usbmisc2 0>;
+		phy-clkgate-delay-us = <400>;
+		status = "disabled";
+	};
+
+	usbmisc2: usbmisc@30b20200 {
+		#index-cells = <1>;
+		compatible = "fsl,imx7d-usbmisc", "fsl,imx6q-usbmisc";
+		reg = <0x30b20200 0x200>;
+	};
+
+	fec2: ethernet@30bf0000 {
+		compatible = "fsl,imx7d-fec", "fsl,imx6sx-fec";
+		reg = <0x30bf0000 0x10000>;
+		interrupt-names = "int0", "int1", "int2", "pps";
+		interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
+			<GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
+			<GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
+			<GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&clks IMX7D_ENET2_IPG_ROOT_CLK>,
+			<&clks IMX7D_ENET_AXI_ROOT_CLK>,
+			<&clks IMX7D_ENET2_TIME_ROOT_CLK>,
+			<&clks IMX7D_PLL_ENET_MAIN_125M_CLK>,
+			<&clks IMX7D_ENET_PHY_REF_ROOT_CLK>;
+		clock-names = "ipg", "ahb", "ptp",
+			"enet_clk_ref", "enet_out";
+		fsl,num-tx-queues = <3>;
+		fsl,num-rx-queues = <3>;
+		fsl,stop-mode = <&gpr 0x10 4>;
+		status = "disabled";
+	};
+};
+
+&ca_funnel_in_ports {
+	port@1 {
+		reg = <1>;
+		ca_funnel_in_port1: endpoint {
+			remote-endpoint = <&etm1_out_port>;
+		};
+	};
+};
diff --git a/arch/arm/dts/imx7s.kernel.dtsi b/arch/arm/dts/imx7s.kernel.dtsi
new file mode 100644
index 000000000000..6ea9e05f7b48
--- /dev/null
+++ b/arch/arm/dts/imx7s.kernel.dtsi
@@ -0,0 +1,1354 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+//
+// Copyright 2015 Freescale Semiconductor, Inc.
+// Copyright 2016 Toradex AG
+
+#include <dt-bindings/clock/imx7d-clock.h>
+#include <dt-bindings/power/imx7-power.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/reset/imx7-reset.h>
+#include <arm/nxp/imx/imx7d-pinfunc.h>
+#include "imx7d-pinfunc.kernel.h"
+
+/ {
+	#address-cells = <1>;
+	#size-cells = <1>;
+	/*
+	 * The decompressor and also some bootloaders rely on a
+	 * pre-existing /chosen node to be available to insert the
+	 * command line and merge other ATAGS info.
+	 */
+	chosen {};
+
+	aliases {
+		gpio0 = &gpio1;
+		gpio1 = &gpio2;
+		gpio2 = &gpio3;
+		gpio3 = &gpio4;
+		gpio4 = &gpio5;
+		gpio5 = &gpio6;
+		gpio6 = &gpio7;
+		i2c0 = &i2c1;
+		i2c1 = &i2c2;
+		i2c2 = &i2c3;
+		i2c3 = &i2c4;
+		mmc0 = &usdhc1;
+		mmc1 = &usdhc2;
+		mmc2 = &usdhc3;
+		serial0 = &uart1;
+		serial1 = &uart2;
+		serial2 = &uart3;
+		serial3 = &uart4;
+		serial4 = &uart5;
+		serial5 = &uart6;
+		serial6 = &uart7;
+		spi0 = &ecspi1;
+		spi1 = &ecspi2;
+		spi2 = &ecspi3;
+		spi3 = &ecspi4;
+		usb0 = &usbotg1;
+		usb1 = &usbh;
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		idle-states {
+			entry-method = "psci";
+
+			cpu_sleep_wait: cpu-sleep-wait {
+				compatible = "arm,idle-state";
+				arm,psci-suspend-param = <0x0010000>;
+				local-timer-stop;
+				entry-latency-us = <100>;
+				exit-latency-us = <50>;
+				min-residency-us = <1000>;
+			};
+		};
+
+		cpu0: cpu@0 {
+			compatible = "arm,cortex-a7";
+			device_type = "cpu";
+			reg = <0>;
+			clock-frequency = <792000000>;
+			clock-latency = <61036>; /* two CLK32 periods */
+			clocks = <&clks IMX7D_CLK_ARM>;
+			cpu-idle-states = <&cpu_sleep_wait>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			#cooling-cells = <2>;
+			nvmem-cells = <&fuse_grade>;
+			nvmem-cell-names = "speed_grade";
+		};
+	};
+
+	cpu0_opp_table: opp-table {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-792000000 {
+			opp-hz = /bits/ 64 <792000000>;
+			opp-microvolt = <1000000>;
+			clock-latency-ns = <150000>;
+			opp-supported-hw = <0xf>, <0xf>;
+		};
+	};
+
+	ckil: clock-cki {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "ckil";
+	};
+
+	osc: clock-osc {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+		clock-output-names = "osc";
+	};
+
+	usbphynop1: usbphynop1 {
+		compatible = "usb-nop-xceiv";
+		clocks = <&clks IMX7D_USB_PHY1_CLK>;
+		clock-names = "main_clk";
+		#phy-cells = <0>;
+	};
+
+	usbphynop3: usbphynop3 {
+		compatible = "usb-nop-xceiv";
+		clocks = <&clks IMX7D_USB_HSIC_ROOT_CLK>;
+		clock-names = "main_clk";
+		power-domains = <&pgc_hsic_phy>;
+		#phy-cells = <0>;
+	};
+
+	pmu {
+		compatible = "arm,cortex-a7-pmu";
+		interrupt-parent = <&gpc>;
+		interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>;
+	};
+
+	replicator {
+		/*
+		 * non-configurable replicators don't show up on the
+		 * AMBA bus.  As such no need to add "arm,primecell"
+		 */
+		compatible = "arm,coresight-static-replicator";
+
+		out-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+				/* replicator output ports */
+			port@0 {
+				reg = <0>;
+				replicator_out_port0: endpoint {
+					remote-endpoint = <&tpiu_in_port>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				replicator_out_port1: endpoint {
+					remote-endpoint = <&etr_in_port>;
+				};
+			};
+		};
+
+		in-ports {
+			port {
+				replicator_in_port0: endpoint {
+					remote-endpoint = <&etf_out_port>;
+				};
+			};
+		};
+	};
+
+	timer {
+		compatible = "arm,armv7-timer";
+		arm,cpu-registers-not-fw-configured;
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>;
+	};
+
+	soc: soc {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "simple-bus";
+		interrupt-parent = <&gpc>;
+		ranges;
+
+		ocram: sram@900000 {
+			compatible = "mmio-sram";
+			reg = <0x00900000 0x20000>;
+			ranges = <0 0x00900000 0x20000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			clocks = <&clks IMX7D_OCRAM_CLK>;
+		};
+
+		funnel@30041000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x30041000 0x1000>;
+			clocks = <&clks IMX7D_MAIN_AXI_ROOT_CLK>;
+			clock-names = "apb_pclk";
+
+			ca_funnel_in_ports: in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					ca_funnel_in_port0: endpoint {
+						remote-endpoint = <&etm0_out_port>;
+					};
+				};
+
+				/* the other input ports are not connect to anything */
+			};
+
+			out-ports {
+				port {
+					ca_funnel_out_port0: endpoint {
+						remote-endpoint = <&hugo_funnel_in_port0>;
+					};
+				};
+
+			};
+		};
+
+		etm@3007c000 {
+			compatible = "arm,coresight-etm3x", "arm,primecell";
+			reg = <0x3007c000 0x1000>;
+			cpu = <&cpu0>;
+			clocks = <&clks IMX7D_MAIN_AXI_ROOT_CLK>;
+			clock-names = "apb_pclk";
+
+			out-ports {
+				port {
+					etm0_out_port: endpoint {
+						remote-endpoint = <&ca_funnel_in_port0>;
+					};
+				};
+			};
+		};
+
+		funnel@30083000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x30083000 0x1000>;
+			clocks = <&clks IMX7D_MAIN_AXI_ROOT_CLK>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					hugo_funnel_in_port0: endpoint {
+						remote-endpoint = <&ca_funnel_out_port0>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					hugo_funnel_in_port1: endpoint {
+						/* M4 input */
+					};
+				};
+				/* the other input ports are not connect to anything */
+			};
+
+			out-ports {
+				port {
+					hugo_funnel_out_port0: endpoint {
+						remote-endpoint = <&etf_in_port>;
+					};
+				};
+			};
+		};
+
+		etf@30084000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x30084000 0x1000>;
+			clocks = <&clks IMX7D_MAIN_AXI_ROOT_CLK>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					etf_in_port: endpoint {
+						remote-endpoint = <&hugo_funnel_out_port0>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					etf_out_port: endpoint {
+						remote-endpoint = <&replicator_in_port0>;
+					};
+				};
+			};
+		};
+
+		etr@30086000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x30086000 0x1000>;
+			clocks = <&clks IMX7D_MAIN_AXI_ROOT_CLK>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					etr_in_port: endpoint {
+						remote-endpoint = <&replicator_out_port1>;
+					};
+				};
+			};
+		};
+
+		tpiu@30087000 {
+			compatible = "arm,coresight-tpiu", "arm,primecell";
+			reg = <0x30087000 0x1000>;
+			clocks = <&clks IMX7D_MAIN_AXI_ROOT_CLK>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					tpiu_in_port: endpoint {
+						remote-endpoint = <&replicator_out_port0>;
+					};
+				};
+			};
+		};
+
+		intc: interrupt-controller@31001000 {
+			compatible = "arm,cortex-a7-gic";
+			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>;
+			#interrupt-cells = <3>;
+			interrupt-controller;
+			interrupt-parent = <&intc>;
+			reg = <0x31001000 0x1000>,
+			      <0x31002000 0x2000>,
+			      <0x31004000 0x2000>,
+			      <0x31006000 0x2000>;
+		};
+
+		aips1: bus@30000000 {
+			compatible = "fsl,aips-bus", "simple-bus";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0x30000000 0x400000>;
+			ranges;
+
+			gpio1: gpio@30200000 {
+				compatible = "fsl,imx7d-gpio", "fsl,imx35-gpio";
+				reg = <0x30200000 0x10000>;
+				interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>, /* GPIO1_INT15_0 */
+					     <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>; /* GPIO1_INT31_16 */
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				gpio-ranges = <&iomuxc_lpsr 0 0 8>, <&iomuxc 8 5 8>;
+			};
+
+			gpio2: gpio@30210000 {
+				compatible = "fsl,imx7d-gpio", "fsl,imx35-gpio";
+				reg = <0x30210000 0x10000>;
+				interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				gpio-ranges = <&iomuxc 0 13 32>;
+			};
+
+			gpio3: gpio@30220000 {
+				compatible = "fsl,imx7d-gpio", "fsl,imx35-gpio";
+				reg = <0x30220000 0x10000>;
+				interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				gpio-ranges = <&iomuxc 0 45 29>;
+			};
+
+			gpio4: gpio@30230000 {
+				compatible = "fsl,imx7d-gpio", "fsl,imx35-gpio";
+				reg = <0x30230000 0x10000>;
+				interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				gpio-ranges = <&iomuxc 0 74 24>;
+			};
+
+			gpio5: gpio@30240000 {
+				compatible = "fsl,imx7d-gpio", "fsl,imx35-gpio";
+				reg = <0x30240000 0x10000>;
+				interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				gpio-ranges = <&iomuxc 0 98 18>;
+			};
+
+			gpio6: gpio@30250000 {
+				compatible = "fsl,imx7d-gpio", "fsl,imx35-gpio";
+				reg = <0x30250000 0x10000>;
+				interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				gpio-ranges = <&iomuxc 0 116 23>;
+			};
+
+			gpio7: gpio@30260000 {
+				compatible = "fsl,imx7d-gpio", "fsl,imx35-gpio";
+				reg = <0x30260000 0x10000>;
+				interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				gpio-ranges = <&iomuxc 0 139 16>;
+			};
+
+			wdog1: watchdog@30280000 {
+				compatible = "fsl,imx7d-wdt", "fsl,imx21-wdt";
+				reg = <0x30280000 0x10000>;
+				interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_WDOG1_ROOT_CLK>;
+			};
+
+			wdog2: watchdog@30290000 {
+				compatible = "fsl,imx7d-wdt", "fsl,imx21-wdt";
+				reg = <0x30290000 0x10000>;
+				interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_WDOG2_ROOT_CLK>;
+				status = "disabled";
+			};
+
+			wdog3: watchdog@302a0000 {
+				compatible = "fsl,imx7d-wdt", "fsl,imx21-wdt";
+				reg = <0x302a0000 0x10000>;
+				interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_WDOG3_ROOT_CLK>;
+				status = "disabled";
+			};
+
+			wdog4: watchdog@302b0000 {
+				compatible = "fsl,imx7d-wdt", "fsl,imx21-wdt";
+				reg = <0x302b0000 0x10000>;
+				interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_WDOG4_ROOT_CLK>;
+				status = "disabled";
+			};
+
+			iomuxc_lpsr: pinctrl@302c0000 {
+				compatible = "fsl,imx7d-iomuxc-lpsr";
+				reg = <0x302c0000 0x10000>;
+				fsl,input-sel = <&iomuxc>;
+			};
+
+			gpt1: timer@302d0000 {
+				compatible = "fsl,imx7d-gpt", "fsl,imx6dl-gpt";
+				reg = <0x302d0000 0x10000>;
+				interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_GPT1_ROOT_CLK>,
+					 <&clks IMX7D_GPT1_ROOT_CLK>;
+				clock-names = "ipg", "per";
+			};
+
+			gpt2: timer@302e0000 {
+				compatible = "fsl,imx7d-gpt", "fsl,imx6dl-gpt";
+				reg = <0x302e0000 0x10000>;
+				interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_GPT2_ROOT_CLK>,
+					 <&clks IMX7D_GPT2_ROOT_CLK>;
+				clock-names = "ipg", "per";
+				status = "disabled";
+			};
+
+			gpt3: timer@302f0000 {
+				compatible = "fsl,imx7d-gpt", "fsl,imx6dl-gpt";
+				reg = <0x302f0000 0x10000>;
+				interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_GPT3_ROOT_CLK>,
+					 <&clks IMX7D_GPT3_ROOT_CLK>;
+				clock-names = "ipg", "per";
+				status = "disabled";
+			};
+
+			gpt4: timer@30300000 {
+				compatible = "fsl,imx7d-gpt", "fsl,imx6dl-gpt";
+				reg = <0x30300000 0x10000>;
+				interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_GPT4_ROOT_CLK>,
+					 <&clks IMX7D_GPT4_ROOT_CLK>;
+				clock-names = "ipg", "per";
+				status = "disabled";
+			};
+
+			kpp: keypad@30320000 {
+				compatible = "fsl,imx7d-kpp", "fsl,imx21-kpp";
+				reg = <0x30320000 0x10000>;
+				interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_KPP_ROOT_CLK>;
+				status = "disabled";
+			};
+
+			iomuxc: pinctrl@30330000 {
+				compatible = "fsl,imx7d-iomuxc";
+				reg = <0x30330000 0x10000>;
+			};
+
+			gpr: iomuxc-gpr@30340000 {
+				compatible = "fsl,imx7d-iomuxc-gpr",
+					"fsl,imx6q-iomuxc-gpr", "syscon",
+					"simple-mfd";
+				reg = <0x30340000 0x10000>;
+
+				mux: mux-controller {
+					compatible = "mmio-mux";
+					#mux-control-cells = <1>;
+					mux-reg-masks = <0x14 0x00000010>;
+				};
+
+				video_mux: csi-mux {
+					compatible = "video-mux";
+					mux-controls = <&mux 0>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+					status = "disabled";
+
+					port@0 {
+						reg = <0>;
+					};
+
+					port@1 {
+						reg = <1>;
+
+						csi_mux_from_mipi_vc0: endpoint {
+							remote-endpoint = <&mipi_vc0_to_csi_mux>;
+						};
+					};
+
+					port@2 {
+						reg = <2>;
+
+						csi_mux_to_csi: endpoint {
+							remote-endpoint = <&csi_from_csi_mux>;
+						};
+					};
+				};
+			};
+
+			ocotp: efuse@30350000 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+				compatible = "fsl,imx7d-ocotp", "syscon";
+				reg = <0x30350000 0x10000>;
+				clocks = <&clks IMX7D_OCOTP_CLK>;
+
+				tempmon_calib: calib@3c {
+					reg = <0x3c 0x4>;
+				};
+
+				fuse_grade: fuse-grade@10 {
+					reg = <0x10 0x4>;
+				};
+			};
+
+			anatop: anatop@30360000 {
+				compatible = "fsl,imx7d-anatop", "fsl,imx6q-anatop",
+					"syscon", "simple-mfd";
+				reg = <0x30360000 0x10000>;
+				interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
+
+				reg_1p0d: regulator-vdd1p0d {
+					compatible = "fsl,anatop-regulator";
+					regulator-name = "vdd1p0d";
+					regulator-min-microvolt = <800000>;
+					regulator-max-microvolt = <1200000>;
+					anatop-reg-offset = <0x210>;
+					anatop-vol-bit-shift = <8>;
+					anatop-vol-bit-width = <5>;
+					anatop-min-bit-val = <8>;
+					anatop-min-voltage = <800000>;
+					anatop-max-voltage = <1200000>;
+					anatop-enable-bit = <0>;
+				};
+
+				reg_1p2: regulator-vdd1p2 {
+					compatible = "fsl,anatop-regulator";
+					regulator-name = "vdd1p2";
+					regulator-min-microvolt = <1100000>;
+					regulator-max-microvolt = <1300000>;
+					anatop-reg-offset = <0x220>;
+					anatop-vol-bit-shift = <8>;
+					anatop-vol-bit-width = <5>;
+					anatop-min-bit-val = <0x14>;
+					anatop-min-voltage = <1100000>;
+					anatop-max-voltage = <1300000>;
+					anatop-enable-bit = <0>;
+				};
+
+				tempmon: tempmon {
+					compatible = "fsl,imx7d-tempmon";
+					interrupt-parent = <&gpc>;
+					interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+					fsl,tempmon = <&anatop>;
+					nvmem-cells = <&tempmon_calib>,	<&fuse_grade>;
+					nvmem-cell-names = "calib", "temp_grade";
+					clocks = <&clks IMX7D_PLL_SYS_MAIN_CLK>;
+				};
+			};
+
+			snvs: snvs@30370000 {
+				compatible = "fsl,sec-v4.0-mon", "syscon", "simple-mfd";
+				reg = <0x30370000 0x10000>;
+
+				snvs_rtc: snvs-rtc-lp {
+					compatible = "fsl,sec-v4.0-mon-rtc-lp";
+					regmap = <&snvs>;
+					offset = <0x34>;
+					interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
+						     <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&clks IMX7D_SNVS_CLK>;
+					clock-names = "snvs-rtc";
+				};
+
+				snvs_pwrkey: snvs-powerkey {
+					compatible = "fsl,sec-v4.0-pwrkey";
+					regmap = <&snvs>;
+					interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&clks IMX7D_SNVS_CLK>;
+					clock-names = "snvs-pwrkey";
+					linux,keycode = <KEY_POWER>;
+					wakeup-source;
+					status = "disabled";
+				};
+			};
+
+			clks: clock-controller@30380000 {
+				compatible = "fsl,imx7d-ccm";
+				reg = <0x30380000 0x10000>;
+				interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+				#clock-cells = <1>;
+				clocks = <&ckil>, <&osc>;
+				clock-names = "ckil", "osc";
+			};
+
+			src: reset-controller@30390000 {
+				compatible = "fsl,imx7d-src", "syscon";
+				reg = <0x30390000 0x10000>;
+				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
+				#reset-cells = <1>;
+			};
+
+			gpc: gpc@303a0000 {
+				compatible = "fsl,imx7d-gpc";
+				reg = <0x303a0000 0x10000>;
+				interrupt-controller;
+				interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+				#interrupt-cells = <3>;
+				interrupt-parent = <&intc>;
+
+				pgc {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					pgc_mipi_phy: power-domain@0 {
+						#power-domain-cells = <0>;
+						reg = <0>;
+						power-supply = <&reg_1p0d>;
+					};
+
+					pgc_pcie_phy: power-domain@1 {
+						#power-domain-cells = <0>;
+						reg = <1>;
+						power-supply = <&reg_1p0d>;
+					};
+
+					pgc_hsic_phy: power-domain@2 {
+						#power-domain-cells = <0>;
+						reg = <2>;
+						power-supply = <&reg_1p2>;
+					};
+				};
+			};
+		};
+
+		aips2: bus@30400000 {
+			compatible = "fsl,aips-bus", "simple-bus";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0x30400000 0x400000>;
+			ranges;
+
+			adc1: adc@30610000 {
+				compatible = "fsl,imx7d-adc";
+				reg = <0x30610000 0x10000>;
+				interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_ADC_ROOT_CLK>;
+				clock-names = "adc";
+				#io-channel-cells = <1>;
+				status = "disabled";
+			};
+
+			adc2: adc@30620000 {
+				compatible = "fsl,imx7d-adc";
+				reg = <0x30620000 0x10000>;
+				interrupts = <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_ADC_ROOT_CLK>;
+				clock-names = "adc";
+				#io-channel-cells = <1>;
+				status = "disabled";
+			};
+
+			ecspi4: spi@30630000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx7d-ecspi", "fsl,imx51-ecspi";
+				reg = <0x30630000 0x10000>;
+				interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_ECSPI4_ROOT_CLK>,
+					<&clks IMX7D_ECSPI4_ROOT_CLK>;
+				clock-names = "ipg", "per";
+				status = "disabled";
+			};
+
+			ftm1: pwm@30640000 {
+				compatible = "fsl,vf610-ftm-pwm";
+				reg = <0x30640000 0x10000>;
+				#pwm-cells = <3>;
+				interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+				clock-names = "ftm_sys", "ftm_ext",
+				"ftm_fix", "ftm_cnt_clk_en";
+				clocks = <&clks IMX7D_FLEXTIMER1_ROOT_CLK>,
+					<&clks IMX7D_FLEXTIMER1_ROOT_CLK>,
+					<&clks IMX7D_FLEXTIMER1_ROOT_CLK>,
+					<&clks IMX7D_FLEXTIMER1_ROOT_CLK>;
+				status = "disabled";
+			};
+
+			ftm2: pwm@30650000 {
+				compatible = "fsl,vf610-ftm-pwm";
+				reg = <0x30650000 0x10000>;
+				#pwm-cells = <3>;
+				interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+				clock-names = "ftm_sys", "ftm_ext",
+				"ftm_fix", "ftm_cnt_clk_en";
+				clocks = <&clks IMX7D_FLEXTIMER2_ROOT_CLK>,
+					<&clks IMX7D_FLEXTIMER2_ROOT_CLK>,
+					<&clks IMX7D_FLEXTIMER2_ROOT_CLK>,
+					<&clks IMX7D_FLEXTIMER2_ROOT_CLK>;
+				status = "disabled";
+			};
+
+			pwm1: pwm@30660000 {
+				compatible = "fsl,imx7d-pwm", "fsl,imx27-pwm";
+				reg = <0x30660000 0x10000>;
+				interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_PWM1_ROOT_CLK>,
+					 <&clks IMX7D_PWM1_ROOT_CLK>;
+				clock-names = "ipg", "per";
+				#pwm-cells = <3>;
+				status = "disabled";
+			};
+
+			pwm2: pwm@30670000 {
+				compatible = "fsl,imx7d-pwm", "fsl,imx27-pwm";
+				reg = <0x30670000 0x10000>;
+				interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_PWM2_ROOT_CLK>,
+					 <&clks IMX7D_PWM2_ROOT_CLK>;
+				clock-names = "ipg", "per";
+				#pwm-cells = <3>;
+				status = "disabled";
+			};
+
+			pwm3: pwm@30680000 {
+				compatible = "fsl,imx7d-pwm", "fsl,imx27-pwm";
+				reg = <0x30680000 0x10000>;
+				interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_PWM3_ROOT_CLK>,
+					 <&clks IMX7D_PWM3_ROOT_CLK>;
+				clock-names = "ipg", "per";
+				#pwm-cells = <3>;
+				status = "disabled";
+			};
+
+			pwm4: pwm@30690000 {
+				compatible = "fsl,imx7d-pwm", "fsl,imx27-pwm";
+				reg = <0x30690000 0x10000>;
+				interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_PWM4_ROOT_CLK>,
+					 <&clks IMX7D_PWM4_ROOT_CLK>;
+				clock-names = "ipg", "per";
+				#pwm-cells = <3>;
+				status = "disabled";
+			};
+
+			csi: csi@30710000 {
+				compatible = "fsl,imx7-csi";
+				reg = <0x30710000 0x10000>;
+				interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_CSI_MCLK_ROOT_CLK>;
+				clock-names = "mclk";
+				status = "disabled";
+
+				port {
+					csi_from_csi_mux: endpoint {
+						remote-endpoint = <&csi_mux_to_csi>;
+					};
+				};
+			};
+
+			lcdif: lcdif@30730000 {
+				compatible = "fsl,imx7d-lcdif", "fsl,imx6sx-lcdif";
+				reg = <0x30730000 0x10000>;
+				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_LCDIF_PIXEL_ROOT_CLK>,
+					<&clks IMX7D_LCDIF_PIXEL_ROOT_CLK>;
+				clock-names = "pix", "axi";
+				status = "disabled";
+
+				port {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					lcdif_out_mipi_dsi: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&mipi_dsi_in_lcdif>;
+					};
+				};
+			};
+
+			mipi_csi: mipi-csi@30750000 {
+				compatible = "fsl,imx7-mipi-csi2";
+				reg = <0x30750000 0x10000>;
+				interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_IPG_ROOT_CLK>,
+					 <&clks IMX7D_MIPI_CSI_ROOT_CLK>,
+					 <&clks IMX7D_MIPI_DPHY_ROOT_CLK>;
+				clock-names = "pclk", "wrap", "phy";
+				power-domains = <&pgc_mipi_phy>;
+				phy-supply = <&reg_1p0d>;
+				resets = <&src IMX7_RESET_MIPI_PHY_MRST>;
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mipi_vc0_to_csi_mux: endpoint {
+							remote-endpoint = <&csi_mux_from_mipi_vc0>;
+						};
+					};
+				};
+			};
+
+			mipi_dsi: dsi@30760000 {
+				compatible = "fsl,imx7d-mipi-dsim", "fsl,imx8mm-mipi-dsim";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0x30760000 0x400>;
+				clocks = <&clks IMX7D_MIPI_DSI_ROOT_CLK>,
+					 <&clks IMX7D_MIPI_DPHY_ROOT_CLK>;
+				clock-names = "bus_clk", "sclk_mipi";
+				assigned-clocks = <&clks IMX7D_MIPI_DSI_ROOT_SRC>,
+						  <&clks IMX7D_PLL_SYS_PFD5_CLK>;
+				assigned-clock-parents = <&clks IMX7D_PLL_SYS_PFD5_CLK>;
+				assigned-clock-rates = <0>, <333000000>;
+				power-domains = <&pgc_mipi_phy>;
+				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+				samsung,burst-clock-frequency = <891000000>;
+				samsung,esc-clock-frequency = <20000000>;
+				samsung,pll-clock-frequency = <24000000>;
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						#address-cells = <1>;
+						#size-cells = <0>;
+
+						mipi_dsi_in_lcdif: endpoint@0 {
+							reg = <0>;
+							remote-endpoint = <&lcdif_out_mipi_dsi>;
+						};
+					};
+				};
+			};
+		};
+
+		aips3: bus@30800000 {
+			compatible = "fsl,aips-bus", "simple-bus";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0x30800000 0x400000>;
+			ranges;
+
+			spba-bus@30800000 {
+				compatible = "fsl,spba-bus", "simple-bus";
+				#address-cells = <1>;
+				#size-cells = <1>;
+				reg = <0x30800000 0x100000>;
+				ranges;
+
+				ecspi1: spi@30820000 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					compatible = "fsl,imx7d-ecspi", "fsl,imx51-ecspi";
+					reg = <0x30820000 0x10000>;
+					interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&clks IMX7D_ECSPI1_ROOT_CLK>,
+						<&clks IMX7D_ECSPI1_ROOT_CLK>;
+					clock-names = "ipg", "per";
+					status = "disabled";
+				};
+
+				ecspi2: spi@30830000 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					compatible = "fsl,imx7d-ecspi", "fsl,imx51-ecspi";
+					reg = <0x30830000 0x10000>;
+					interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&clks IMX7D_ECSPI2_ROOT_CLK>,
+						<&clks IMX7D_ECSPI2_ROOT_CLK>;
+					clock-names = "ipg", "per";
+					status = "disabled";
+				};
+
+				ecspi3: spi@30840000 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					compatible = "fsl,imx7d-ecspi", "fsl,imx51-ecspi";
+					reg = <0x30840000 0x10000>;
+					interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&clks IMX7D_ECSPI3_ROOT_CLK>,
+						<&clks IMX7D_ECSPI3_ROOT_CLK>;
+					clock-names = "ipg", "per";
+					status = "disabled";
+				};
+
+				uart1: serial@30860000 {
+					compatible = "fsl,imx7d-uart",
+						     "fsl,imx6q-uart";
+					reg = <0x30860000 0x10000>;
+					interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&clks IMX7D_UART1_ROOT_CLK>,
+						<&clks IMX7D_UART1_ROOT_CLK>;
+					clock-names = "ipg", "per";
+					status = "disabled";
+				};
+
+				uart2: serial@30890000 {
+					compatible = "fsl,imx7d-uart",
+						     "fsl,imx6q-uart";
+					reg = <0x30890000 0x10000>;
+					interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&clks IMX7D_UART2_ROOT_CLK>,
+						<&clks IMX7D_UART2_ROOT_CLK>;
+					clock-names = "ipg", "per";
+					status = "disabled";
+				};
+
+				uart3: serial@30880000 {
+					compatible = "fsl,imx7d-uart",
+						     "fsl,imx6q-uart";
+					reg = <0x30880000 0x10000>;
+					interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&clks IMX7D_UART3_ROOT_CLK>,
+						<&clks IMX7D_UART3_ROOT_CLK>;
+					clock-names = "ipg", "per";
+					status = "disabled";
+				};
+
+				sai1: sai@308a0000 {
+					#sound-dai-cells = <0>;
+					compatible = "fsl,imx7d-sai", "fsl,imx6sx-sai";
+					reg = <0x308a0000 0x10000>;
+					interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&clks IMX7D_SAI1_IPG_CLK>,
+						 <&clks IMX7D_SAI1_ROOT_CLK>,
+						 <&clks IMX7D_CLK_DUMMY>,
+						 <&clks IMX7D_CLK_DUMMY>;
+					clock-names = "bus", "mclk1", "mclk2", "mclk3";
+					dma-names = "rx", "tx";
+					dmas = <&sdma 8 24 0>, <&sdma 9 24 0>;
+					status = "disabled";
+				};
+
+				sai2: sai@308b0000 {
+					#sound-dai-cells = <0>;
+					compatible = "fsl,imx7d-sai", "fsl,imx6sx-sai";
+					reg = <0x308b0000 0x10000>;
+					interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&clks IMX7D_SAI2_IPG_CLK>,
+						 <&clks IMX7D_SAI2_ROOT_CLK>,
+						 <&clks IMX7D_CLK_DUMMY>,
+						 <&clks IMX7D_CLK_DUMMY>;
+					clock-names = "bus", "mclk1", "mclk2", "mclk3";
+					dma-names = "rx", "tx";
+					dmas = <&sdma 10 24 0>, <&sdma 11 24 0>;
+					status = "disabled";
+				};
+
+				sai3: sai@308c0000 {
+					#sound-dai-cells = <0>;
+					compatible = "fsl,imx7d-sai", "fsl,imx6sx-sai";
+					reg = <0x308c0000 0x10000>;
+					interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&clks IMX7D_SAI3_IPG_CLK>,
+						 <&clks IMX7D_SAI3_ROOT_CLK>,
+						 <&clks IMX7D_CLK_DUMMY>,
+						 <&clks IMX7D_CLK_DUMMY>;
+					clock-names = "bus", "mclk1", "mclk2", "mclk3";
+					dma-names = "rx", "tx";
+					dmas = <&sdma 12 24 0>, <&sdma 13 24 0>;
+					status = "disabled";
+				};
+			};
+
+			crypto: crypto@30900000 {
+				compatible = "fsl,sec-v4.0";
+				#address-cells = <1>;
+				#size-cells = <1>;
+				reg = <0x30900000 0x40000>;
+				ranges = <0 0x30900000 0x40000>;
+				interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_CAAM_CLK>,
+					 <&clks IMX7D_AHB_CHANNEL_ROOT_CLK>;
+				clock-names = "ipg", "aclk";
+
+				sec_jr0: jr@1000 {
+					compatible = "fsl,sec-v4.0-job-ring";
+					reg = <0x1000 0x1000>;
+					interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
+				};
+
+				sec_jr1: jr@2000 {
+					compatible = "fsl,sec-v4.0-job-ring";
+					reg = <0x2000 0x1000>;
+					interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+				};
+
+				sec_jr2: jr@3000 {
+					compatible = "fsl,sec-v4.0-job-ring";
+					reg = <0x3000 0x1000>;
+					interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
+				};
+			};
+
+			flexcan1: can@30a00000 {
+				compatible = "fsl,imx7d-flexcan", "fsl,imx6q-flexcan";
+				reg = <0x30a00000 0x10000>;
+				interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_CLK_DUMMY>,
+					<&clks IMX7D_CAN1_ROOT_CLK>;
+				clock-names = "ipg", "per";
+				fsl,stop-mode = <&gpr 0x10 1>;
+				status = "disabled";
+			};
+
+			flexcan2: can@30a10000 {
+				compatible = "fsl,imx7d-flexcan", "fsl,imx6q-flexcan";
+				reg = <0x30a10000 0x10000>;
+				interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_CLK_DUMMY>,
+					<&clks IMX7D_CAN2_ROOT_CLK>;
+				clock-names = "ipg", "per";
+				fsl,stop-mode = <&gpr 0x10 2>;
+				status = "disabled";
+			};
+
+			i2c1: i2c@30a20000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx7d-i2c", "fsl,imx21-i2c";
+				reg = <0x30a20000 0x10000>;
+				interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_I2C1_ROOT_CLK>;
+				status = "disabled";
+			};
+
+			i2c2: i2c@30a30000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx7d-i2c", "fsl,imx21-i2c";
+				reg = <0x30a30000 0x10000>;
+				interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_I2C2_ROOT_CLK>;
+				status = "disabled";
+			};
+
+			i2c3: i2c@30a40000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx7d-i2c", "fsl,imx21-i2c";
+				reg = <0x30a40000 0x10000>;
+				interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_I2C3_ROOT_CLK>;
+				status = "disabled";
+			};
+
+			i2c4: i2c@30a50000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx7d-i2c", "fsl,imx21-i2c";
+				reg = <0x30a50000 0x10000>;
+				interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_I2C4_ROOT_CLK>;
+				status = "disabled";
+			};
+
+			uart4: serial@30a60000 {
+				compatible = "fsl,imx7d-uart",
+					     "fsl,imx6q-uart";
+				reg = <0x30a60000 0x10000>;
+				interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_UART4_ROOT_CLK>,
+					<&clks IMX7D_UART4_ROOT_CLK>;
+				clock-names = "ipg", "per";
+				status = "disabled";
+			};
+
+			uart5: serial@30a70000 {
+				compatible = "fsl,imx7d-uart",
+					     "fsl,imx6q-uart";
+				reg = <0x30a70000 0x10000>;
+				interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_UART5_ROOT_CLK>,
+					<&clks IMX7D_UART5_ROOT_CLK>;
+				clock-names = "ipg", "per";
+				status = "disabled";
+			};
+
+			uart6: serial@30a80000 {
+				compatible = "fsl,imx7d-uart",
+					     "fsl,imx6q-uart";
+				reg = <0x30a80000 0x10000>;
+				interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_UART6_ROOT_CLK>,
+					<&clks IMX7D_UART6_ROOT_CLK>;
+				clock-names = "ipg", "per";
+				status = "disabled";
+			};
+
+			uart7: serial@30a90000 {
+				compatible = "fsl,imx7d-uart",
+					     "fsl,imx6q-uart";
+				reg = <0x30a90000 0x10000>;
+				interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_UART7_ROOT_CLK>,
+					<&clks IMX7D_UART7_ROOT_CLK>;
+				clock-names = "ipg", "per";
+				status = "disabled";
+			};
+
+			mu0a: mailbox@30aa0000 {
+				compatible = "fsl,imx7s-mu", "fsl,imx6sx-mu";
+				reg = <0x30aa0000 0x10000>;
+				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_MU_ROOT_CLK>;
+				#mbox-cells = <2>;
+				status = "disabled";
+			};
+
+			mu0b: mailbox@30ab0000 {
+				compatible = "fsl,imx7s-mu", "fsl,imx6sx-mu";
+				reg = <0x30ab0000 0x10000>;
+				interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_MU_ROOT_CLK>;
+				#mbox-cells = <2>;
+				fsl,mu-side-b;
+				status = "disabled";
+			};
+
+			usbotg1: usb@30b10000 {
+				compatible = "fsl,imx7d-usb", "fsl,imx27-usb";
+				reg = <0x30b10000 0x200>;
+				interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_USB_CTRL_CLK>;
+				fsl,usbphy = <&usbphynop1>;
+				fsl,usbmisc = <&usbmisc1 0>;
+				phy-clkgate-delay-us = <400>;
+				status = "disabled";
+			};
+
+			usbh: usb@30b30000 {
+				compatible = "fsl,imx7d-usb", "fsl,imx27-usb";
+				reg = <0x30b30000 0x200>;
+				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_USB_CTRL_CLK>;
+				fsl,usbphy = <&usbphynop3>;
+				fsl,usbmisc = <&usbmisc3 0>;
+				phy_type = "hsic";
+				dr_mode = "host";
+				phy-clkgate-delay-us = <400>;
+				status = "disabled";
+			};
+
+			usbmisc1: usbmisc@30b10200 {
+				#index-cells = <1>;
+				compatible = "fsl,imx7d-usbmisc", "fsl,imx6q-usbmisc";
+				reg = <0x30b10200 0x200>;
+			};
+
+			usbmisc3: usbmisc@30b30200 {
+				#index-cells = <1>;
+				compatible = "fsl,imx7d-usbmisc", "fsl,imx6q-usbmisc";
+				reg = <0x30b30200 0x200>;
+			};
+
+			usdhc1: mmc@30b40000 {
+				compatible = "fsl,imx7d-usdhc", "fsl,imx6sl-usdhc";
+				reg = <0x30b40000 0x10000>;
+				interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_IPG_ROOT_CLK>,
+					<&clks IMX7D_NAND_USDHC_BUS_ROOT_CLK>,
+					<&clks IMX7D_USDHC1_ROOT_CLK>;
+				clock-names = "ipg", "ahb", "per";
+				bus-width = <4>;
+				fsl,tuning-step = <2>;
+				fsl,tuning-start-tap = <20>;
+				status = "disabled";
+			};
+
+			usdhc2: mmc@30b50000 {
+				compatible = "fsl,imx7d-usdhc", "fsl,imx6sl-usdhc";
+				reg = <0x30b50000 0x10000>;
+				interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_IPG_ROOT_CLK>,
+					<&clks IMX7D_NAND_USDHC_BUS_ROOT_CLK>,
+					<&clks IMX7D_USDHC2_ROOT_CLK>;
+				clock-names = "ipg", "ahb", "per";
+				bus-width = <4>;
+				fsl,tuning-step = <2>;
+				fsl,tuning-start-tap = <20>;
+				status = "disabled";
+			};
+
+			usdhc3: mmc@30b60000 {
+				compatible = "fsl,imx7d-usdhc", "fsl,imx6sl-usdhc";
+				reg = <0x30b60000 0x10000>;
+				interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_IPG_ROOT_CLK>,
+					<&clks IMX7D_NAND_USDHC_BUS_ROOT_CLK>,
+					<&clks IMX7D_USDHC3_ROOT_CLK>;
+				clock-names = "ipg", "ahb", "per";
+				bus-width = <4>;
+				fsl,tuning-step = <2>;
+				fsl,tuning-start-tap = <20>;
+				status = "disabled";
+			};
+
+			qspi: spi@30bb0000 {
+				compatible = "fsl,imx7d-qspi";
+				reg = <0x30bb0000 0x10000>, <0x60000000 0x10000000>;
+				reg-names = "QuadSPI", "QuadSPI-memory";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_QSPI_ROOT_CLK>,
+					<&clks IMX7D_QSPI_ROOT_CLK>;
+				clock-names = "qspi_en", "qspi";
+				status = "disabled";
+			};
+
+			sdma: dma-controller@30bd0000 {
+				compatible = "fsl,imx7d-sdma", "fsl,imx35-sdma";
+				reg = <0x30bd0000 0x10000>;
+				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_IPG_ROOT_CLK>,
+					 <&clks IMX7D_SDMA_CORE_CLK>;
+				clock-names = "ipg", "ahb";
+				#dma-cells = <3>;
+				fsl,sdma-ram-script-name = "imx/sdma/sdma-imx7d.bin";
+			};
+
+			fec1: ethernet@30be0000 {
+				compatible = "fsl,imx7d-fec", "fsl,imx6sx-fec";
+				reg = <0x30be0000 0x10000>;
+				interrupt-names = "int0", "int1", "int2", "pps";
+				interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
+					<GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clks IMX7D_ENET1_IPG_ROOT_CLK>,
+					<&clks IMX7D_ENET_AXI_ROOT_CLK>,
+					<&clks IMX7D_ENET1_TIME_ROOT_CLK>,
+					<&clks IMX7D_PLL_ENET_MAIN_125M_CLK>,
+					<&clks IMX7D_ENET_PHY_REF_ROOT_CLK>;
+				clock-names = "ipg", "ahb", "ptp",
+					"enet_clk_ref", "enet_out";
+				fsl,num-tx-queues = <3>;
+				fsl,num-rx-queues = <3>;
+				fsl,stop-mode = <&gpr 0x10 3>;
+				status = "disabled";
+			};
+		};
+
+		dma_apbh: dma-controller@33000000 {
+			compatible = "fsl,imx7d-dma-apbh", "fsl,imx28-dma-apbh";
+			reg = <0x33000000 0x2000>;
+			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			dma-channels = <4>;
+			clocks = <&clks IMX7D_NAND_USDHC_BUS_RAWNAND_CLK>;
+		};
+
+		gpmi: nand-controller@33002000{
+			compatible = "fsl,imx7d-gpmi-nand";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x33002000 0x2000>, <0x33004000 0x4000>;
+			reg-names = "gpmi-nand", "bch";
+			interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "bch";
+			clocks = <&clks IMX7D_NAND_RAWNAND_CLK>,
+				<&clks IMX7D_NAND_USDHC_BUS_RAWNAND_CLK>;
+			clock-names = "gpmi_io", "gpmi_bch_apb";
+			dmas = <&dma_apbh 0>;
+			dma-names = "rx-tx";
+			status = "disabled";
+			assigned-clocks = <&clks IMX7D_NAND_ROOT_SRC>;
+			assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_500M_CLK>;
+		};
+	};
+};
-- 
2.39.2



