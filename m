Delivery-date: Sun, 21 Aug 2022 12:08:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oPhsY-006Atu-Q8
	for lore@lore.pengutronix.de; Sun, 21 Aug 2022 12:08:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oPhsW-0004NY-06
	for lore@pengutronix.de; Sun, 21 Aug 2022 12:08:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6eXQYOIP4t+VqSK3vX5nI2l6WeOR6gTxaoLNOOUj6H0=; b=3Jq59KIyFmIJxMpFbSmPIvh6nL
	KsHct4xcPb/mw9araAyNpNYi7sgModhjgUM6jx1RsJ19t3StLhIrRhGOR6Lf3OAchkCHuzYTMK0Lb
	kGQN4ptP9pVyM7iWwKb2BmUosT3EOU2A6MJOOSuhSM4mOQ/wIyjJBCVBqWnpsZWgbKykMd+sLSkIC
	9vZ3BWf7fg+ID0OCLGTMY5Rz7ruEtXBDrs6QcY3t+mSMKTnkkJZq9i50yxOKn08cuN1MS4vcDrzRB
	G7MdSneRE0p5Oky8yOSqCyw57U3qGNhcNi8b1oWeWUwph2NdiPKMTfagLqIg4FusGwbBzm8awS5h3
	5aLNLyxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPhr0-0091MB-Ni; Sun, 21 Aug 2022 10:06:50 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPhqv-0091Jg-5W
	for barebox@lists.infradead.org; Sun, 21 Aug 2022 10:06:47 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
	by mxout4.routing.net (Postfix) with ESMTP id EA6C6100617;
	Sun, 21 Aug 2022 10:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1661076403;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=6eXQYOIP4t+VqSK3vX5nI2l6WeOR6gTxaoLNOOUj6H0=;
	b=C714yXF7vtSYvQ95Euv9f/NtH+iJ8ZvpAVNGcY0z9HKJmQUSxtbZKqsiI6h1HJw9FB4N42
	ShbMqPP68XoSfA1wDN8yBnqNqEQxgrefap+exe436OjXkeOOdZY8JMIznIUXCFlGPsOQw4
	75EnRWBhtX9evhJomeN6nfn5AxZYK8Y=
Received: from frank-G5.. (fttx-pool-80.245.78.134.bambit.de [80.245.78.134])
	by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 8EA55405D6;
	Sun, 21 Aug 2022 10:06:42 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>
Date: Sun, 21 Aug 2022 12:06:40 +0200
Message-Id: <20220821100640.75008-1-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mail-ID: d4c0dcab-82d3-4bc4-807d-dc2c679af3a1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220821_030645_557064_C8197E41 
X-CRM114-Status: GOOD (  10.91  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3] arm: rockchip: switch to mainline dts for bpi-r2-pro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Frank Wunderlich <frank-w@public-files.de>

Use mainline DTS for Bananapi R2 Pro like the other rk356x devices.

Xhci0 has to be set to host again, as board has no id-pin to switch between
otg and hostmode.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
v3:
- accidentally squashed raminit-bins, buildscript and my defconfig from test

v2:
- fixed patch to apply on master
---
 .../boards/rockchip-rk3568-bpi-r2pro/board.c  |   5 +-
 arch/arm/dts/rk3568-bpi-r2-pro.dts            | 522 +-----------------
 2 files changed, 4 insertions(+), 523 deletions(-)

diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
index 1a5faa8afb12..b5d406576f89 100644
--- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
@@ -28,8 +28,9 @@ static int rk3568_bpi_r2pro_probe(struct device_d *dev)
 	else
 		of_device_enable_path("/chosen/environment-emmc");
 
-	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/emmc");
-	rk3568_bbu_mmc_register("sd", 0, "/dev/sd");
+	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc0");
+	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT,
+				"/dev/mmc1");
 
 	return 0;
 }
diff --git a/arch/arm/dts/rk3568-bpi-r2-pro.dts b/arch/arm/dts/rk3568-bpi-r2-pro.dts
index 8c13ddd5c103..58a2bc442fdf 100644
--- a/arch/arm/dts/rk3568-bpi-r2-pro.dts
+++ b/arch/arm/dts/rk3568-bpi-r2-pro.dts
@@ -5,24 +5,9 @@
  */
 
 /dts-v1/;
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/leds/common.h>
-#include <dt-bindings/pinctrl/rockchip.h>
-#include "rk3568.dtsi"
-#include "rk356x.dtsi"
-
+#include "arm64/rockchip/rk3568-bpi-r2-pro.dts"
 / {
-	model = "Bananapi-R2 Pro (RK3568) DDR4 Board";
-	compatible = "rockchip,rk3568-bpi-r2pro", "rockchip,rk3568";
-
-	aliases {
-		emmc = &sdhci;
-		sd = &sdmmc0;
-	};
-
 	chosen {
-		stdout-path = "serial2:1500000n8";
-
 		environment-sd {
 			compatible = "barebox,environment";
 			device-path = &environment_sd;
@@ -40,422 +25,10 @@
 		device_type = "memory";
 		reg = <0x0 0x00a00000 0x0 0x7f600000>;
 	};
-
-	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&blue_led_pin &green_led_pin>;
-
-		blue_led: led-0 {
-			color = <LED_COLOR_ID_BLUE>;
-			default-state = "off";
-			function = LED_FUNCTION_STATUS;
-			gpios = <&gpio0 RK_PD6 GPIO_ACTIVE_HIGH>;
-		};
-
-		green_led: led-1 {
-			color = <LED_COLOR_ID_GREEN>;
-			default-state = "on";
-			function = LED_FUNCTION_POWER;
-			gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
-		};
-	};
-
-	dc_12v: dc-12v {
-		compatible = "regulator-fixed";
-		regulator-name = "dc_12v";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
-	};
-
-	vcc3v3_sys: vcc3v3-sys {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&dc_12v>;
-	};
-
-	vcc5v0_sys: vcc5v0-sys {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&dc_12v>;
-	};
-
-	vcc3v3_lcd0_n: vcc3v3-lcd0-n {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_lcd0_n";
-		regulator-boot-on;
-
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
-
-	vcc3v3_lcd1_n: vcc3v3-lcd1-n {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_lcd1_n";
-		regulator-boot-on;
-
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
-
-	vcc5v0_host: vcc5v0-host-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_host";
-		enable-active-high;
-		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_host_en>;
-		regulator-always-on;
-	};
-};
-
-&gmac1 {
-	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
-	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
-	clock_in_out = "output";
-	phy-handle = <&rgmii_phy1>;
-	phy-mode = "rgmii";
-	pinctrl-names = "default";
-	pinctrl-0 = <&gmac1m1_miim
-		     &gmac1m1_tx_bus2
-		     &gmac1m1_rx_bus2
-		     &gmac1m1_rgmii_clk
-		     &gmac1m1_rgmii_bus>;
-
-	snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	/* Reset time is 20ms, 100ms for rtl8211f */
-	snps,reset-delays-us = <0 20000 100000>;
-	tx_delay = <0x3c>;
-	rx_delay = <0x2f>;
-	status = "okay";
-};
-
-&i2c0 {
-	status = "okay";
-
-	rk809: pmic@20 {
-		compatible = "rockchip,rk809";
-		reg = <0x20>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
-		#clock-cells = <1>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int>;
-
-		clock-output-names = "rk808-clkout1", "rk808-clkout2";
-		/* 1: rst regs (default in codes), 0: rst the pmic */
-		pmic-reset-func = <0>;
-
-		rockchip,system-power-controller;
-		vcc1-supply = <&vcc3v3_sys>;
-		vcc2-supply = <&vcc3v3_sys>;
-		vcc3-supply = <&vcc3v3_sys>;
-		vcc4-supply = <&vcc3v3_sys>;
-		vcc5-supply = <&vcc3v3_sys>;
-		vcc6-supply = <&vcc3v3_sys>;
-		vcc7-supply = <&vcc3v3_sys>;
-		vcc8-supply = <&vcc3v3_sys>;
-		vcc9-supply = <&vcc3v3_sys>;
-		wakeup-source;
-
-		regulators {
-			vdd_logic: DCDC_REG1 {
-				regulator-name = "vdd_logic";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-init-microvolt = <900000>;
-				regulator-initial-mode = <0x2>;
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <6001>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_gpu: DCDC_REG2 {
-				regulator-name = "vdd_gpu";
-				regulator-init-microvolt = <900000>;
-				regulator-initial-mode = <0x2>;
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <6001>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_ddr: DCDC_REG3 {
-				regulator-name = "vcc_ddr";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-initial-mode = <0x2>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-				};
-			};
-
-			vdd_npu: DCDC_REG4 {
-				regulator-name = "vdd_npu";
-				regulator-init-microvolt = <900000>;
-				regulator-initial-mode = <0x2>;
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <6001>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_1v8: DCDC_REG5 {
-				regulator-name = "vcc_1v8";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdda0v9_image: LDO_REG1 {
-				regulator-name = "vdda0v9_image";
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <900000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdda_0v9: LDO_REG2 {
-				regulator-name = "vdda_0v9";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <900000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdda0v9_pmu: LDO_REG3 {
-				regulator-name = "vdda0v9_pmu";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <900000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <900000>;
-				};
-			};
-
-			vccio_acodec: LDO_REG4 {
-				regulator-name = "vccio_acodec";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vccio_sd: LDO_REG5 {
-				regulator-name = "vccio_sd";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc3v3_pmu: LDO_REG6 {
-				regulator-name = "vcc3v3_pmu";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vcca_1v8: LDO_REG7 {
-				regulator-name = "vcca_1v8";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcca1v8_pmu: LDO_REG8 {
-				regulator-name = "vcca1v8_pmu";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vcca1v8_image: LDO_REG9 {
-				regulator-name = "vcca1v8_image";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_3v3: SWITCH_REG1 {
-				regulator-name = "vcc_3v3";
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc3v3_sd: SWITCH_REG2 {
-				regulator-name = "vcc3v3_sd";
-				regulator-always-on;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-		};
-	};
-};
-
-&i2c5 {
-	/* pin 3 (SDA) + 4 (SCL) of header con2 */
-	status = "disabled";
-};
-
-&mdio1 {
-	rgmii_phy1: ethernet-phy@0 {
-		compatible = "ethernet-phy-ieee802.3-c22";
-		reg = <0x0>;
-	};
-};
-
-&pinctrl {
-	leds {
-		blue_led_pin: blue-led-pin {
-			rockchip,pins = <0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-		green_led_pin: green-led-pin {
-			rockchip,pins = <0 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	pmic {
-		pmic_int: pmic_int {
-			rockchip,pins =
-				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-
-	};
-
-	usb {
-		vcc5v0_host_en: vcc5v0-host-en {
-			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-
-&pwm8 {
-	/* fan 5v - gnd - pwm */
-	status = "okay";
-};
-
-&pwm10 {
-	/* pin 7 of header con2 */
-	status = "disabled";
-};
-
-&pwm11 {
-	/* pin 15 of header con2 */
-	status = "disabled";
-};
-
-&pwm12 {
-	/* pin 21 of header con2 */
-	/* shared with uart9 + spi3 */
-	pinctrl-0 = <&pwm12m1_pins>;
-	status = "disabled";
-};
-
-&pwm13 {
-	/* pin 24 of header con2 */
-	/* shared with uart9 */
-	pinctrl-0 = <&pwm13m1_pins>;
-	status = "disabled";
-};
-
-&pwm14 {
-	/* pin 23 of header con2 */
-	/* shared with spi3 */
-	pinctrl-0 = <&pwm14m1_pins>;
-	status = "disabled";
-};
-
-&pwm15 {
-	/* pin 19 of header con2 */
-	/* shared with spi3 */
-	pinctrl-0 = <&pwm15m1_pins>;
-	status = "disabled";
-};
-
-&saradc {
-	vref-supply = <&vcca_1v8>;
-	status = "okay";
 };
 
 &sdhci {
-	bus-width = <8>;
-	max-frequency = <200000000>;
-	non-removable;
 	no-sd;
-	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
-	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -470,18 +43,6 @@
 };
 
 &sdmmc0 {
-	bus-width = <4>;
-	cap-sd-highspeed;
-	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
-	disable-wp;
-	max-frequency = <150000000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
-	sd-uhs-sdr104;
-	vmmc-supply = <&vcc3v3_sd>;
-	vqmmc-supply = <&vccio_sd>;
-	status = "okay";
-
 	partitions {
 		compatible = "fixed-partitions";
 		#address-cells = <2>;
@@ -494,87 +55,6 @@
 	};
 };
 
-&uart0 {
-	/* pin 8 (TX) + 10 (RX) (RTS:16, CTS:18) of header con2 */
-	status = "disabled";
-};
-
-&uart2 {
-	/* debug-uart */
-	status = "okay";
-};
-
-&uart7 {
-	/* pin 11 (TX) + 13 (RX) of header con2 */
-	pinctrl-0 = <&uart7m1_xfer>;
-	status = "disabled";
-};
-
-&uart9 {
-	/* pin 21 (TX) + 24 (RX) of header con2 */
-	/* shared with pwm13 and pwm12/spi3 */
-	pinctrl-0 = <&uart9m1_xfer>;
-	status = "disabled";
-};
-
-&u2phy0_host {
-	phy-supply = <&vcc5v0_host>;
-	status = "okay";
-};
-
-&u2phy0_otg {
-	phy-supply = <&vcc5v0_host>;
-	status = "okay";
-};
-
-&u2phy1_host {
-	phy-supply = <&vcc5v0_host>;
-	status = "okay";
-};
-
-&u2phy1_otg {
-	phy-supply = <&vcc5v0_host>;
-	status = "okay";
-};
-
-&usb2phy0 {
-	status = "okay";
-};
-
-&usb2phy1 {
-	status = "okay";
-};
-
-&usb_host0_ehci {
-	status = "okay";
-};
-
-&usb_host0_ohci {
-	status = "okay";
-};
-
-&usb_host1_ehci {
-	status = "okay";
-};
-
-&usb_host1_ohci {
-	status = "okay";
-};
-
 &usb_host0_xhci {
 	dr_mode = "host";
-	extcon = <&usb2phy0>;
-	status = "okay";
-};
-
-&usb_host1_xhci {
-	status = "okay";
-};
-
-&combphy0_us {
-	status = "okay";
-};
-
-&combphy1_usq {
-	status = "okay";
 };
-- 
2.34.1



