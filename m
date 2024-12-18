Delivery-date: Wed, 18 Dec 2024 07:09:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNnFf-009WS2-39
	for lore@lore.pengutronix.de;
	Wed, 18 Dec 2024 07:09:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNnFf-0003LD-Kg
	for lore@pengutronix.de; Wed, 18 Dec 2024 07:09:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yFZ0pOtTCtl0ClYbMVEdN7WJ/TqoaFshLcrtbA6A43E=; b=WdL9ZB0WWnzoVr8GeZ+RHMzt4k
	9AwlGph9n4n+cwJYg/lgGzRgcHq9X66UR4SkzK58urEjKjWzG6Mo6qTqApq/BS2+NFuShCaew0p10
	eZI/khpcZmyPhui92GShUDST7PMkgLoziExnQD7a0vhwBQUE/PWKQS+2g+lxPgNMPk4jCJTrZPA6x
	3TvPccZEK/w9739hEBO+m33b+tYSUk2vYQlj3nZfsGrqyvCFy2fPUvSpQa7OCHSm/0d28nsv1DmlA
	WKq2HhKi1Vp7aPZQPyyn4y1XSVQNk3ARI4v8udyj59s7xWnrjb76VcFm7S7AwyBfsja30BCbUayOj
	HNTfeusA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNnF5-0000000Fg6T-1WyE;
	Wed, 18 Dec 2024 06:09:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNnF2-0000000Fg5J-2zdF
	for barebox@lists.infradead.org;
	Wed, 18 Dec 2024 06:09:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tNnEz-00036s-Hy; Wed, 18 Dec 2024 07:09:01 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tNnEy-003z4V-1f;
	Wed, 18 Dec 2024 07:09:01 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tNnEz-00FG9K-0m;
	Wed, 18 Dec 2024 07:09:01 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 18 Dec 2024 07:08:58 +0100
Message-Id: <20241218060900.3636980-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241218060900.3636980-1-o.rempel@pengutronix.de>
References: <20241218060900.3636980-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_220904_748066_82582E1F 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: stm32mp151-mecio1: use kernel dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This devicetree is in kernel upstream now. We can drop the barebox
version now.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/stm32mp151-mecio1.dts | 213 +----------------------------
 1 file changed, 2 insertions(+), 211 deletions(-)

diff --git a/arch/arm/dts/stm32mp151-mecio1.dts b/arch/arm/dts/stm32mp151-mecio1.dts
index 6b50bdd4eff2..124f3079f256 100644
--- a/arch/arm/dts/stm32mp151-mecio1.dts
+++ b/arch/arm/dts/stm32mp151-mecio1.dts
@@ -1,214 +1,5 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
-/*
- * Copyright (C) Protonic Holland
- * Author: David Jander <david@protonic.nl>
- */
 /dts-v1/;
 
-#include "arm/st/stm32mp151.dtsi"
-#include "arm/st/stm32mp15xc.dtsi"
-#include "arm/st/stm32mp15-pinctrl.dtsi"
-#include "arm/st/stm32mp15xxaa-pinctrl.dtsi"
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
-
-/ {
-	model = "Protonic MECIO1";
-	compatible = "prt,mecio1", "st,stm32mp151";
-
-	chosen {
-		stdout-path = "serial0:1500000n8";
-	};
-
-	aliases {
-		serial0 = &uart4;
-		ethernet0 = &ethernet0;
-	};
-
-	v3v3: fixed-regulator-v3v3 {
-		compatible = "regulator-fixed";
-		regulator-name = "v3v3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-	};
-
-	v5v: fixed-regulator-v5v {
-		compatible = "regulator-fixed";
-		regulator-name = "v5v";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		regulator-always-on;
-	};
-
-	led {
-		compatible = "gpio-leds";
-
-		led-0 {
-			label = "debug:red";
-			gpios = <&gpioa 13 GPIO_ACTIVE_HIGH>;
-		};
-
-		led-1 {
-			label = "debug:green";
-			gpios = <&gpioa 14 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "heartbeat";
-		};
-	};
-};
-
-&clk_hse {
-	clock-frequency = <25000000>;
-};
-
-&clk_lse {
-	status = "disabled";
-};
-
-&qspi {
-	pinctrl-names = "default", "sleep";
-	pinctrl-0 = <&qspi_clk_pins_a
-		     &qspi_bk1_pins_a
-		     &qspi_cs1_pins_a>;
-	pinctrl-1 = <&qspi_clk_sleep_pins_a
-		     &qspi_bk1_sleep_pins_a
-		     &qspi_cs1_sleep_pins_a>;
-	status = "okay";
-
-	flash@0 {
-		compatible = "spi-nor";
-		reg = <0>;
-		spi-rx-bus-width = <4>;
-		spi-max-frequency = <104000000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-	};
-};
-
-&qspi_bk1_pins_a {
-	pins1 {
-		bias-pull-up;
-		drive-push-pull;
-		slew-rate = <1>;
-	};
-};
-
-&ethernet0 {
-	status = "okay";
-	pinctrl-0 = <&ethernet0_rgmii_pins_x>;
-	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_x>;
-	pinctrl-names = "default", "sleep";
-	phy-mode = "rgmii-id";
-	phy-handle = <&phy0>;
-	assigned-clocks = <&rcc ETHCK_K>, <&rcc PLL3_Q>;
-	assigned-clock-parents = <&rcc PLL3_Q>;
-	assigned-clock-rates = <125000000>; /* Clock PLL4 to 750Mhz in ATF/U-Boot */
-	st,eth-clk-sel;
-
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		compatible = "snps,dwmac-mdio";
-
-		phy0: ethernet-phy@8 {
-			reg = <8>;
-			interrupts-extended = <&gpiog 7 IRQ_TYPE_LEVEL_LOW>;
-			reset-gpios = <&gpiog 10 GPIO_ACTIVE_LOW>;
-			reset-assert-us = <10>;
-			reset-deassert-us = <35>;
-		};
-	};
-};
-
-&usbotg_hs {
-	dr_mode = "host";
-	pinctrl-0 = <&usbotg_hs_pins_a>;
-	pinctrl-names = "default";
-	phys = <&usbphyc_port1 0>;
-	phy-names = "usb2-phy";
-	vbus-supply = <&v5v>;
-	status = "okay";
-};
-
-&usbphyc {
-	status = "okay";
-};
-
-&usbphyc_port1 {
-	phy-supply = <&v3v3>;
-};
-
-&uart4 {
-	pinctrl-names = "default", "sleep", "idle";
-	pinctrl-0 = <&uart4_pins_a>;
-	pinctrl-1 = <&uart4_sleep_pins_a>;
-	pinctrl-2 = <&uart4_idle_pins_a>;
-	/delete-property/dmas;
-	/delete-property/dma-names;
-	status = "okay";
-};
-
-&uart4_pins_a {
-	pins1 {
-		pinmux = <STM32_PINMUX('B', 9, AF8)>; /* UART4_TX */
-		bias-disable;
-		drive-push-pull;
-		slew-rate = <0>;
-	};
-	pins2 {
-		pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
-		bias-pull-up;
-	};
-};
-
-&pinctrl {
-	ethernet0_rgmii_pins_x: rgmii-0 {
-		pins1 {
-			pinmux = <STM32_PINMUX('G', 5, AF11)>, /* ETH_RGMII_CLK125 */
-				 <STM32_PINMUX('G', 4, AF11)>, /* ETH_RGMII_GTX_CLK */
-				 <STM32_PINMUX('B', 12, AF11)>, /* ETH_RGMII_TXD0 */
-				 <STM32_PINMUX('B', 13, AF11)>, /* ETH_RGMII_TXD1 */
-				 <STM32_PINMUX('C', 2, AF11)>, /* ETH_RGMII_TXD2 */
-				 <STM32_PINMUX('B', 8, AF11)>, /* ETH_RGMII_TXD3 */
-				 <STM32_PINMUX('B', 11, AF11)>, /* ETH_RGMII_TX_CTL */
-				 <STM32_PINMUX('C', 1, AF11)>; /* ETH_MDC */
-			bias-disable;
-			drive-push-pull;
-			slew-rate = <3>;
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
-	ethernet0_rgmii_sleep_pins_x: rgmii-sleep-0 {
-		pins1 {
-			pinmux = <STM32_PINMUX('G', 5, ANALOG)>, /* ETH_RGMII_CLK125 */
-				 <STM32_PINMUX('G', 4, ANALOG)>, /* ETH_RGMII_GTX_CLK */
-				 <STM32_PINMUX('B', 12, ANALOG)>, /* ETH_RGMII_TXD0 */
-				 <STM32_PINMUX('B', 13, ANALOG)>, /* ETH_RGMII_TXD1 */
-				 <STM32_PINMUX('C', 2, ANALOG)>, /* ETH_RGMII_TXD2 */
-				 <STM32_PINMUX('B', 8, ANALOG)>, /* ETH_RGMII_TXD3 */
-				 <STM32_PINMUX('B', 11, ANALOG)>, /* ETH_RGMII_TX_CTL */
-				 <STM32_PINMUX('A', 2, ANALOG)>, /* ETH_MDIO */
-				 <STM32_PINMUX('C', 1, ANALOG)>, /* ETH_MDC */
-				 <STM32_PINMUX('C', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
-				 <STM32_PINMUX('C', 5, ANALOG)>, /* ETH_RGMII_RXD1 */
-				 <STM32_PINMUX('H', 6, ANALOG)>, /* ETH_RGMII_RXD2 */
-				 <STM32_PINMUX('H', 7, ANALOG)>, /* ETH_RGMII_RXD3 */
-				 <STM32_PINMUX('A', 1, ANALOG)>, /* ETH_RGMII_RX_CLK */
-				 <STM32_PINMUX('A', 7, ANALOG)>; /* ETH_RGMII_RX_CTL */
-		};
-	};
-};
+#include <arm/st/stm32mp151c-mecio1r0.dts>
+#include "stm32mp151.dtsi"
-- 
2.39.5



