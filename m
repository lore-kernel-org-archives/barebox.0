Delivery-date: Mon, 16 Jan 2023 14:41:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPkH-00Dbho-6u
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 14:41:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPkE-0007Vf-7C
	for lore@pengutronix.de; Mon, 16 Jan 2023 14:41:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BoUmONsQJglufw2ezFSG7xwrklh4QaitOwiOjxu/ehs=; b=2aiMm7CCa29Py0c5X5wo9taHuK
	RzfRse72vcTHZrPPUBfzPPs+spSR1Oh7YHTMRbfuF0hrwxKtheujvBSvhpK7PazPcQ7a3pKKnX4Co
	nlHGSFi1Aksi2QYcAudoK2cv5suCtRA0/8MNDNwCLrNBZf19lym/41xkCM3TmKoh97BmVmMGDnEPg
	aW6J9dm4XwVC4EQttM8vSfBDTdc2PxQ4H+vww9wZA5HIp3MOLBYawDt7J5oaF6u7xkGKtCgHRzsrX
	+8bnxSd1WUTjm6BKhQUA4Pfb+CoLCJGS3OESrFv4CFIyw2KSX9tYAmTGhjb6X5EyLMJFNbBrd0sca
	ZWB0TJMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPic-00AVjc-K8; Mon, 16 Jan 2023 13:40:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPYC-00AQsu-BJ
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 13:29:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPYA-000564-Lm; Mon, 16 Jan 2023 14:29:22 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPY9-006SEO-Qs; Mon, 16 Jan 2023 14:29:21 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPY8-008MDP-VT; Mon, 16 Jan 2023 14:29:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Jan 2023 14:29:11 +0100
Message-Id: <20230116132911.1991963-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_052924_598204_A1918D08 
X-CRM114-Status: GOOD (  16.14  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFT PATCH] ARM: stm32mp: odyssey-som: use upstream device trees
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When board support was first added, it used a version of the device tree
of the Linux kernel mailing list. The device tree is now upstream, so
replace the copy we have with the version already existing in dts/.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
I don't have the hardware, Cc'ing Xogium, who has this board and may be
able to test this patch.
---
 arch/arm/dts/stm32mp157c-odyssey-som.dtsi | 294 ----------------------
 arch/arm/dts/stm32mp157c-odyssey.dts      |   6 +-
 arch/arm/dts/stm32mp157c-odyssey.dtsi     |  72 ------
 3 files changed, 1 insertion(+), 371 deletions(-)
 delete mode 100644 arch/arm/dts/stm32mp157c-odyssey-som.dtsi
 delete mode 100644 arch/arm/dts/stm32mp157c-odyssey.dtsi

diff --git a/arch/arm/dts/stm32mp157c-odyssey-som.dtsi b/arch/arm/dts/stm32mp157c-odyssey-som.dtsi
deleted file mode 100644
index 1e5bd8bccb71..000000000000
--- a/arch/arm/dts/stm32mp157c-odyssey-som.dtsi
+++ /dev/null
@@ -1,294 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
-/*
- * Copyright (C) 2020 Marcin Sloniewski <marcin.sloniewski@gmail.com>.
- */
-
-/dts-v1/;
-
-#include <arm/stm32mp157.dtsi>
-#include <arm/stm32mp15xc.dtsi>
-#include <arm/stm32mp15-pinctrl.dtsi>
-#include <arm/stm32mp15xxac-pinctrl.dtsi>
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/leds/common.h>
-#include <dt-bindings/mfd/st,stpmic1.h>
-
-/ {
-	model = "Seeed Studio Odyssey-STM32MP157C SOM";
-	compatible = "seeed,stm32mp157c-odyssey-som", "st,stm32mp157";
-
-	memory@c0000000 {
-		device_type = "memory";
-		reg = <0xc0000000 0x20000000>;
-	};
-
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
-
-		gpu_reserved: gpu@d4000000 {
-			reg = <0xd4000000 0x4000000>;
-			no-map;
-		};
-	};
-
-	led {
-		compatible = "gpio-leds";
-		led-blue {
-			color = <LED_COLOR_ID_BLUE>;
-			function = LED_FUNCTION_HEARTBEAT;
-			gpios = <&gpiog 3 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "heartbeat";
-		};
-	};
-};
-
-&gpu {
-	contiguous-area = <&gpu_reserved>;
-	status = "okay";
-};
-
-&i2c2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c2_pins_a>;
-	i2c-scl-rising-time-ns = <185>;
-	i2c-scl-falling-time-ns = <20>;
-	status = "okay";
-	/* spare dmas for other usage */
-	/delete-property/dmas;
-	/delete-property/dma-names;
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
-			ldo1-supply = <&v3v3>;
-			ldo3-supply = <&vdd_ddr>;
-			ldo6-supply = <&v3v3>;
-			pwr_sw1-supply = <&bst_out>;
-			pwr_sw2-supply = <&bst_out>;
-
-			vddcore: buck1 {
-				regulator-name = "vddcore";
-				regulator-min-microvolt = <800000>;
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
-			};
-
-			v3v3_hdmi: ldo2 {
-				regulator-name = "v3v3_hdmi";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-				interrupts = <IT_CURLIM_LDO2 0>;
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
-			};
-
-			vref_ddr: vref_ddr {
-				regulator-name = "vref_ddr";
-				regulator-always-on;
-				regulator-over-current-protection;
-			};
-
-			 bst_out: boost {
-				regulator-name = "bst_out";
-				interrupts = <IT_OCP_BOOST 0>;
-			 };
-
-			vbus_otg: pwr_sw1 {
-				regulator-name = "vbus_otg";
-				interrupts = <IT_OCP_OTG 0>;
-			 };
-
-			 vbus_sw: pwr_sw2 {
-				regulator-name = "vbus_sw";
-				interrupts = <IT_OCP_SWOUT 0>;
-				regulator-active-discharge;
-			 };
-		};
-
-		onkey {
-			compatible = "st,stpmic1-onkey";
-			interrupts = <IT_PONKEY_F 0>, <IT_PONKEY_R 0>;
-			interrupt-names = "onkey-falling", "onkey-rising";
-			power-off-time-sec = <10>;
-		};
-
-		watchdog {
-			compatible = "st,stpmic1-wdt";
-			status = "disabled";
-		};
-	};
-};
-
-&ipcc {
-	status = "okay";
-};
-
-&iwdg2 {
-	timeout-sec = <32>;
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
-
-&rtc {
-	status = "okay";
-};
-
-&sdmmc2_d47_pins_a {
-	pins {
-		pinmux = <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
-			 <STM32_PINMUX('A', 9, AF10)>, /* SDMMC2_D5 */
-			 <STM32_PINMUX('E', 5, AF9)>, /* SDMMC2_D6 */
-			 <STM32_PINMUX('C', 7, AF10)>; /* SDMMC2_D7 */
-	};
-};
-
-&sdmmc2_d47_sleep_pins_a {
-	pins {
-		pinmux = <STM32_PINMUX('A', 8, ANALOG)>, /* SDMMC2_D4 */
-			 <STM32_PINMUX('A', 9, ANALOG)>, /* SDMMC2_D5 */
-			 <STM32_PINMUX('E', 5, ANALOG)>, /* SDMMC2_D6 */
-			 <STM32_PINMUX('C', 7, ANALOG)>; /* SDMMC2_D7 */
-	};
-};
-
-&sdmmc2 {
-	pinctrl-names = "default", "opendrain", "sleep";
-	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
-	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_a>;
-	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_a>;
-	non-removable;
-	no-sd;
-	no-sdio;
-	st,neg-edge;
-	bus-width = <8>;
-	vmmc-supply = <&v3v3>;
-	vqmmc-supply = <&v3v3>;
-	mmc-ddr-3_3v;
-	status = "okay";
-};
-
diff --git a/arch/arm/dts/stm32mp157c-odyssey.dts b/arch/arm/dts/stm32mp157c-odyssey.dts
index 0e395bdec961..6ced6363eb0f 100644
--- a/arch/arm/dts/stm32mp157c-odyssey.dts
+++ b/arch/arm/dts/stm32mp157c-odyssey.dts
@@ -3,7 +3,7 @@
  * Copyright (C) 2020 Ahmad Fatoum, Pengutronix
  */
 
-#include "stm32mp157c-odyssey.dtsi"
+#include <arm/stm32mp157c-odyssey.dts>
 #include "stm32mp151.dtsi"
 
 / {
@@ -21,7 +21,3 @@
 		};
 	};
 };
-
-&phy0 {
-	reset-gpios = <&gpiog 0 GPIO_ACTIVE_LOW>;
-};
diff --git a/arch/arm/dts/stm32mp157c-odyssey.dtsi b/arch/arm/dts/stm32mp157c-odyssey.dtsi
deleted file mode 100644
index 85a4f313ae33..000000000000
--- a/arch/arm/dts/stm32mp157c-odyssey.dtsi
+++ /dev/null
@@ -1,72 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
-/*
- * Copyright (C) 2020 Marcin Sloniewski <marcin.sloniewski@gmail.com>.
- */
-
-/dts-v1/;
-
-#include "stm32mp157c-odyssey-som.dtsi"
-
-/ {
-	model = "Seeed Studio Odyssey-STM32MP157C Board";
-	compatible = "seeed,stm32mp157c-odyssey",
-		     "seeed,stm32mp157c-odyssey-som", "st,stm32mp157";
-
-	aliases {
-		ethernet0 = &ethernet0;
-		serial0 = &uart4;
-	};
-
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-};
-
-&ethernet0 {
-	status = "okay";
-	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
-	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_a>;
-	pinctrl-names = "default", "sleep";
-	phy-mode = "rgmii-id";
-	max-speed = <1000>;
-	phy-handle = <&phy0>;
-
-	mdio0 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		compatible = "snps,dwmac-mdio";
-		phy0: ethernet-phy@7 { /* KSZ9031RN */
-			reg = <7>;
-		};
-	};
-};
-
-&i2c1 {
-	pinctrl-names = "default", "sleep";
-	pinctrl-0 = <&i2c1_pins_a>;
-	pinctrl-1 = <&i2c1_sleep_pins_a>;
-	i2c-scl-rising-time-ns = <100>;
-	i2c-scl-falling-time-ns = <7>;
-	status = "okay";
-	/delete-property/dmas;
-	/delete-property/dma-names;
-};
-
-&sdmmc1 {
-	pinctrl-names = "default", "opendrain", "sleep";
-	pinctrl-0 = <&sdmmc1_b4_pins_a>;
-	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
-	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
-	cd-gpios = <&gpiob 7 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
-	disable-wp;
-	st,neg-edge;
-	bus-width = <4>;
-	vmmc-supply = <&v3v3>;
-	status = "okay";
-};
-
-&uart4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart4_pins_a>;
-	status = "okay";
-};
-- 
2.30.2



