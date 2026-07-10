Delivery-date: Fri, 10 Jul 2026 08:43:31 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wi4xP-002Ael-1K
	for lore@lore.pengutronix.de;
	Fri, 10 Jul 2026 08:43:31 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 743D5201FD4
	for <lore@pengutronix.de>; Fri, 10 Jul 2026 08:43:30 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=st1Z9+Yy;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YfgVx43y8Vxku+vq7hNgEK808UJWxRxqiHKOQznxzKo=; b=st1Z9+Yy6NTKJIkos9EreS7Q2U
	76U0WRd/k5POKK4dwvwVAWKR0TkOimgG5Anyc95umZBhZrgmG0sMLoF4oBPZqTEdO1g3JF84XIHTc
	kPp1s6iKR/gTd0ecwwWBFMDT5YFJJDN0n22npuoJPjZD/YY1ahloLq6xfbyYUmoQfekNRHCs0WlR9
	8bBros1dIWRSDb+Jzo3LiMq9PS4tvvanOkjdwsYHby9eUh6Nm5x+mG59g2YpuSA2Z5PLp04iCs+//
	4mtsC0cAYCScwJMs0mwjeura3gqW/KZoDb20v81NmBhg71xlx7bff3QqaesRPAD+D4+qLfA3We82C
	xBRCcjpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi3mg-00000004CMJ-0qFG;
	Fri, 10 Jul 2026 05:28:22 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi3mc-00000004CLj-1OLf
	for barebox@lists.infradead.org;
	Fri, 10 Jul 2026 05:28:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 420D3201FD4;
	Fri, 10 Jul 2026 07:28:15 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wi3mZ-0011x1-0Z;
	Fri, 10 Jul 2026 07:28:15 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wi3mZ-00000002Xvi-0EMh;
	Fri, 10 Jul 2026 07:28:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] ARM: dts: imx8mp-debix: use upstream dts files directly
Date: Fri, 10 Jul 2026 07:28:12 +0200
Message-ID: <20260710052813.607073-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_222818_933086_ED7A0243 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The Debix Model A and SOM A on BMB-08 board files carried
   private copies of the upstream device trees (imx8mp-debix-*-upstream.*) in
    arch/arm/dts. barebox already imports the corresponding kernel devi [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-5.61 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 743D5201FD4
X-Stat-Signature: jraen7k3hypfg69se5hkiwowepz58e93

The Debix Model A and SOM A on BMB-08 board files carried private copies
of the upstream device trees (imx8mp-debix-*-upstream.*) in arch/arm/dts.
barebox already imports the corresponding kernel device trees under
dts/src, so include those directly and drop the stale local copies.

Besides removing the duplication, this pulls in the fixes and additions
that accumulated upstream, most notably:

  - Model A: EQOS PHY moved from MDIO address 0 to 1, HDMI/LCDIF output,
    USB3 host with the on-board hub, and i2c2 left disabled.
  - SOM A: eMMC restricted with no-sd/no-sdio, status LED added.
  - BMB-08: HDMI output and the CSI camera regulators.

Assisted-by: Claude Opus 4.8
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../arm/dts/imx8mp-debix-model-a-upstream.dts | 506 ------------------
 arch/arm/dts/imx8mp-debix-model-a.dts         |   2 +-
 .../imx8mp-debix-som-a-bmb-08-upstream.dts    | 473 ----------------
 arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts    |   2 +-
 arch/arm/dts/imx8mp-debix-som-a-upstream.dtsi | 285 ----------
 5 files changed, 2 insertions(+), 1266 deletions(-)
 delete mode 100644 arch/arm/dts/imx8mp-debix-model-a-upstream.dts
 delete mode 100644 arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts
 delete mode 100644 arch/arm/dts/imx8mp-debix-som-a-upstream.dtsi

diff --git a/arch/arm/dts/imx8mp-debix-model-a-upstream.dts b/arch/arm/dts/imx8mp-debix-model-a-upstream.dts
deleted file mode 100644
index 48014748c5..0000000000
--- a/arch/arm/dts/imx8mp-debix-model-a-upstream.dts
+++ /dev/null
@@ -1,506 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Copyright 2019 NXP
- * Copyright 2022 Ideas on Board Oy
- */
-
-/dts-v1/;
-
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/leds/common.h>
-#include <dt-bindings/usb/pd.h>
-
-#include <arm64/freescale/imx8mp.dtsi>
-
-/ {
-	model = "Polyhex Debix Model A i.MX8MPlus board";
-	compatible = "polyhex,imx8mp-debix-model-a", "polyhex,imx8mp-debix", "fsl,imx8mp";
-
-	chosen {
-		stdout-path = &uart2;
-	};
-
-	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_gpio_led>;
-
-		led-0 {
-			function = LED_FUNCTION_POWER;
-			color = <LED_COLOR_ID_RED>;
-			gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
-			default-state = "on";
-		};
-	};
-
-	reg_usdhc2_vmmc: regulator-usdhc2 {
-		compatible = "regulator-fixed";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
-		regulator-name = "VSD_3V3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-};
-
-&A53_0 {
-	cpu-supply = <&buck2>;
-};
-
-&A53_1 {
-	cpu-supply = <&buck2>;
-};
-
-&A53_2 {
-	cpu-supply = <&buck2>;
-};
-
-&A53_3 {
-	cpu-supply = <&buck2>;
-};
-
-&eqos {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_eqos>;
-	phy-connection-type = "rgmii-id";
-	phy-handle = <&ethphy0>;
-	status = "okay";
-
-	mdio {
-		compatible = "snps,dwmac-mdio";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ethphy0: ethernet-phy@0 { /* RTL8211E */
-			compatible = "ethernet-phy-ieee802.3-c22";
-			reg = <0>;
-			reset-gpios = <&gpio4 18 GPIO_ACTIVE_LOW>;
-			reset-assert-us = <20>;
-			reset-deassert-us = <200000>;
-		};
-	};
-};
-
-&i2c1 {
-	clock-frequency = <400000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c1>;
-	status = "okay";
-
-	pmic@25 {
-		compatible = "nxp,pca9450c";
-		reg = <0x25>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_pmic>;
-		interrupt-parent = <&gpio1>;
-		interrupts = <3 IRQ_TYPE_EDGE_RISING>;
-
-		regulators {
-			buck1: BUCK1 {
-				regulator-name = "BUCK1";
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <2187500>;
-				regulator-boot-on;
-				regulator-always-on;
-				regulator-ramp-delay = <3125>;
-			};
-
-			buck2: BUCK2 {
-				regulator-name = "BUCK2";
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <2187500>;
-				regulator-boot-on;
-				regulator-always-on;
-				regulator-ramp-delay = <3125>;
-				nxp,dvs-run-voltage = <950000>;
-				nxp,dvs-standby-voltage = <850000>;
-			};
-
-			buck4: BUCK4{
-				regulator-name = "BUCK4";
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <3400000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			buck5: BUCK5{
-				regulator-name = "BUCK5";
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <3400000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			buck6: BUCK6 {
-				regulator-name = "BUCK6";
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <3400000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo1: LDO1 {
-				regulator-name = "LDO1";
-				regulator-min-microvolt = <1600000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo2: LDO2 {
-				regulator-name = "LDO2";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <1150000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo3: LDO3 {
-				regulator-name = "LDO3";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo4: LDO4 {
-				regulator-name = "LDO4";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo5: LDO5 {
-				regulator-name = "LDO5";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-		};
-	};
-};
-
-&i2c2 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c2>;
-	status = "okay";
-};
-
-&i2c3 {
-	clock-frequency = <400000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c3>;
-	status = "okay";
-};
-
-&i2c4 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c4>;
-	status = "okay";
-
-	eeprom@50 {
-		compatible = "atmel,24c02";
-		reg = <0x50>;
-		pagesize = <16>;
-	};
-
-	rtc@51 {
-		compatible = "haoyu,hym8563";
-		reg = <0x51>;
-		#clock-cells = <0>;
-		clock-frequency = <32768>;
-		clock-output-names = "xin32k";
-		interrupt-parent = <&gpio2>;
-		interrupts = <11 IRQ_TYPE_EDGE_FALLING>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_rtc_int>;
-	};
-};
-
-&i2c6 {
-	clock-frequency = <400000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c6>;
-	status = "okay";
-};
-
-&snvs_pwrkey {
-	status = "okay";
-};
-
-&uart2 {
-	/* console */
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart2>;
-	status = "okay";
-};
-
-&uart3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart3>;
-	status = "okay";
-};
-
-&uart4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart4>;
-	status = "okay";
-};
-
-/* SD Card */
-&usdhc2 {
-	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
-	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
-	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
-	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
-	vmmc-supply = <&reg_usdhc2_vmmc>;
-	bus-width = <4>;
-	status = "okay";
-};
-
-/* eMMC */
-&usdhc3 {
-	assigned-clocks = <&clk IMX8MP_CLK_USDHC3>;
-	assigned-clock-rates = <400000000>;
-	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-	pinctrl-0 = <&pinctrl_usdhc3>;
-	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
-	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
-	bus-width = <8>;
-	non-removable;
-	status = "okay";
-};
-
-&wdog1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_wdog>;
-	fsl,ext-reset-output;
-	status = "okay";
-};
-
-&iomuxc {
-	pinctrl_eqos: eqosgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC				0x3
-			MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO				0x3
-			MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0			0x91
-			MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1			0x91
-			MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2			0x91
-			MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3			0x91
-			MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x91
-			MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL			0x91
-			MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0			0x1f
-			MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1			0x1f
-			MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2			0x1f
-			MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3			0x1f
-			MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL			0x1f
-			MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x1f
-			MX8MP_IOMUXC_SAI1_RXFS__ENET1_1588_EVENT0_IN			0x1f
-			MX8MP_IOMUXC_SAI1_RXC__ENET1_1588_EVENT0_OUT			0x1f
-			MX8MP_IOMUXC_SAI1_TXD6__GPIO4_IO18				0x19
-		>;
-	};
-
-	pinctrl_fec: fecgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SAI1_RXD2__ENET1_MDC				0x3
-			MX8MP_IOMUXC_SAI1_RXD3__ENET1_MDIO				0x3
-			MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0				0x91
-			MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1				0x91
-			MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2				0x91
-			MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3				0x91
-			MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC				0x91
-			MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL			0x91
-			MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0				0x1f
-			MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1				0x1f
-			MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2				0x1f
-			MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3				0x1f
-			MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL			0x1f
-			MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC				0x1f
-			MX8MP_IOMUXC_SAI1_RXD1__ENET1_1588_EVENT1_OUT			0x1f
-			MX8MP_IOMUXC_SAI1_RXD0__ENET1_1588_EVENT1_IN			0x1f
-			MX8MP_IOMUXC_SAI1_TXD7__GPIO4_IO19				0x19
-		>;
-	};
-
-	pinctrl_gpio_led: gpioledgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_NAND_READY_B__GPIO3_IO16				0x19
-		>;
-	};
-
-	pinctrl_i2c1: i2c1grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL					0x400001c2
-			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA					0x400001c2
-		>;
-	};
-
-	pinctrl_i2c2: i2c2grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL					0x400001c2
-			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA					0x400001c2
-		>;
-	};
-
-	pinctrl_i2c3: i2c3grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL					0x400001c2
-			MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA					0x400001c2
-		>;
-	};
-
-	pinctrl_i2c4: i2c4grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_I2C4_SCL__I2C4_SCL					0x400001c3
-			MX8MP_IOMUXC_I2C4_SDA__I2C4_SDA					0x400001c3
-		>;
-	};
-
-	pinctrl_i2c6: i2c6grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SAI5_RXFS__I2C6_SCL				0x400001c3
-			MX8MP_IOMUXC_SAI5_RXC__I2C6_SDA					0x400001c3
-		>;
-	};
-
-	pinctrl_pmic: pmicirqgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03				0x41
-		>;
-	};
-
-	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19				0x41
-		>;
-	};
-
-	pinctrl_rtc_int: rtcintgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SD1_STROBE__GPIO2_IO11				0x140
-		>;
-	};
-
-	pinctrl_uart2: uart2grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX				0x14f
-			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX				0x14f
-		>;
-	};
-
-	pinctrl_uart3: uart3grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_UART3_RXD__UART3_DCE_RX				0x49
-			MX8MP_IOMUXC_UART3_TXD__UART3_DCE_TX				0x49
-		>;
-	};
-
-	pinctrl_uart4: uart4grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_UART4_RXD__UART4_DCE_RX				0x49
-			MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX				0x49
-		>;
-	};
-
-	pinctrl_usdhc2: usdhc2grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK				0x190
-			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD				0x1d0
-			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0				0x1d0
-			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1				0x1d0
-			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2				0x1d0
-			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3				0x1d0
-		>;
-	};
-
-	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK				0x194
-			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD				0x1d4
-			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0				0x1d4
-			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1				0x1d4
-			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2				0x1d4
-			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3				0x1d4
-		>;
-	};
-
-	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK				0x196
-			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD				0x1d6
-			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0				0x1d6
-			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1				0x1d6
-			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2				0x1d6
-			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3				0x1d6
-		>;
-	};
-
-	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12				0x1c4
-		>;
-	};
-
-	pinctrl_usdhc3: usdhc3grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK				0x190
-			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD				0x1d0
-			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0				0x1d0
-			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1				0x1d0
-			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2				0x1d0
-			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3				0x1d0
-			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4				0x1d0
-			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5				0x1d0
-			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6				0x1d0
-			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7				0x1d0
-			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE				0x190
-		>;
-	};
-
-	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK				0x194
-			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD				0x1d4
-			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0				0x1d4
-			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1				0x1d4
-			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2				0x1d4
-			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3				0x1d4
-			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4				0x1d4
-			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5				0x1d4
-			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6				0x1d4
-			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7				0x1d4
-			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE				0x194
-		>;
-	};
-
-	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK				0x196
-			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD				0x1d6
-			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0				0x1d6
-			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1				0x1d6
-			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2				0x1d6
-			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3				0x1d6
-			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4				0x1d6
-			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5				0x1d6
-			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6				0x1d6
-			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7				0x1d6
-			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE				0x196
-		>;
-	};
-
-	pinctrl_wdog: wdoggrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B				0xc6
-		>;
-	};
-};
diff --git a/arch/arm/dts/imx8mp-debix-model-a.dts b/arch/arm/dts/imx8mp-debix-model-a.dts
index 81596ec7c1..0a3126aacd 100644
--- a/arch/arm/dts/imx8mp-debix-model-a.dts
+++ b/arch/arm/dts/imx8mp-debix-model-a.dts
@@ -2,7 +2,7 @@
 
 /dts-v1/;
 
-#include "imx8mp-debix-model-a-upstream.dts"
+#include <arm64/freescale/imx8mp-debix-model-a.dts>
 #include "imx8mp.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts b/arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts
deleted file mode 100644
index 1e47499659..0000000000
--- a/arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts
+++ /dev/null
@@ -1,473 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Copyright 2019 NXP
- * Copyright (C) 2023 Pengutronix, Marco Felsch <kernel@pengutronix.de>
- */
-
-/dts-v1/;
-
-#include "imx8mp-debix-som-a-upstream.dtsi"
-
-/ {
-	model = "Polyhex i.MX8MPlus Debix SOM A on BMB-08";
-	compatible = "polyhex,imx8mp-debix-som-a-bmb-08", "polyhex,imx8mp-debix-som-a",
-		     "fsl,imx8mp";
-	barebox,deep-probe;
-
-	aliases {
-		ethernet0 = &eqos;
-		ethernet1 = &fec;
-	};
-
-	chosen {
-		stdout-path = &uart2;
-	};
-
-	reg_baseboard_vdd3v3: regulator-baseboard-vdd3v3 {
-		compatible = "regulator-fixed";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-name = "BB_VDD3V3";
-		/* Required timings for ethernet phy's */
-		startup-delay-us = <50000>;
-		off-on-delay-us = <110000>;
-		gpio = <&expander0 10 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-
-	reg_baseboard_vdd5v0: regulator-baseboard-vdd5v0 {
-		compatible = "regulator-fixed";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		regulator-name = "BB_VDD5V";
-		gpio = <&expander0 9 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-
-	regulator-som-vdd1v8 {
-		compatible = "regulator-fixed";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		regulator-name = "SOM_VDD1V8_SW";
-		gpio = <&expander0 12 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		regulator-always-on;
-	};
-
-	regulator-som-vdd3v3 {
-		compatible = "regulator-fixed";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-name = "SOM_VDD3V3_SW";
-		gpio = <&expander0 11 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		regulator-always-on;
-	};
-
-	regulator-vbus-usb20 {
-		compatible = "regulator-fixed";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		regulator-name = "USB20_5V";
-		gpio = <&expander1 14 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		regulator-always-on;
-		vin-supply = <&reg_baseboard_vdd5v0>;
-	};
-
-	regulator-vbus-usb30 {
-		compatible = "regulator-fixed";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		regulator-name = "USB30_5V";
-		gpio = <&expander1 12 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		regulator-always-on;
-		vin-supply = <&reg_baseboard_vdd5v0>;
-	};
-
-	reg_vdd5v0: regulator-vdd5v0 {
-		compatible = "regulator-fixed";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		regulator-name = "VDD_5V";
-		gpio = <&expander0 8 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-};
-
-&eqos {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_eqos>;
-	nvmem-cells = <&ethmac1>;
-	nvmem-cell-names = "mac-address";
-	phy-supply = <&reg_baseboard_vdd3v3>;
-	phy-handle = <&ethphy0>;
-	phy-mode = "rgmii-id";
-	status = "okay";
-
-	mdio {
-		compatible = "snps,dwmac-mdio";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ethphy0: ethernet-phy@1 {
-			compatible = "ethernet-phy-ieee802.3-c22";
-			reg = <1>;
-			reset-gpios = <&gpio4 18 GPIO_ACTIVE_LOW>;
-			reset-assert-us = <20000>;
-			reset-deassert-us = <150000>;
-			eee-broken-1000t;
-			realtek,clkout-disable;
-		};
-	};
-};
-
-&fec {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_fec>;
-	nvmem-cells = <&ethmac2>;
-	nvmem-cell-names = "mac-address";
-	phy-supply = <&reg_baseboard_vdd3v3>;
-	phy-handle = <&ethphy1>;
-	phy-mode = "rgmii-id";
-	fsl,magic-packet;
-	status = "okay";
-
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ethphy1: ethernet-phy@1 {
-			compatible = "ethernet-phy-ieee802.3-c22";
-			reg = <1>;
-			reset-gpios = <&gpio4 19 GPIO_ACTIVE_LOW>;
-			reset-assert-us = <20000>;
-			reset-deassert-us = <150000>;
-			eee-broken-1000t;
-			realtek,clkout-disable;
-		};
-	};
-};
-
-&flexcan1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexcan1>;
-	xceiver-supply = <&reg_vdd5v0>;
-	status = "okay";
-};
-
-&flexcan2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexcan2>;
-	xceiver-supply = <&reg_vdd5v0>;
-	status = "okay";
-};
-
-&flexspi {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexspi0>;
-	status = "okay";
-
-	flash: flash@0 {
-		compatible = "jedec,spi-nor";
-		reg = <0>;
-		spi-max-frequency = <80000000>;
-		spi-tx-bus-width = <1>;
-		spi-rx-bus-width = <4>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-	};
-};
-
-&i2c4 {
-	expander0: gpio@20 {
-		compatible = "nxp,pca9535";
-		reg = <0x20>;
-		gpio-controller;
-		#gpio-cells = <0x02>;
-	};
-
-	expander1: gpio@23 {
-		compatible = "nxp,pca9535";
-		reg = <0x23>;
-		gpio-controller;
-		#gpio-cells = <0x02>;
-
-		/*
-		 * Since USB1 is bound to peripheral mode we need to ensure
-		 * that VBUS is turned off.
-		 */
-		usb30-otg-hog {
-			gpio-hog;
-			gpios = <13 GPIO_ACTIVE_HIGH>;
-			output-low;
-			line-name = "USB30_OTG_EN";
-		};
-	};
-
-	rtc@51 {
-		compatible = "haoyu,hym8563";
-		reg = <0x51>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_rtc>;
-		interrupt-parent = <&gpio4>;
-		interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
-		#clock-cells = <0>;
-	};
-
-	eeprom@52 {
-		compatible = "atmel,24c02";
-		reg = <0x52>;
-		pagesize = <16>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		/* MACs stored in ASCII */
-		ethmac1: mac-address@0 {
-			reg = <0x0 0xc>;
-		};
-
-		ethmac2: mac-address@c {
-			reg = <0xc 0xc>;
-		};
-	};
-};
-
-&snvs_pwrkey {
-	status = "okay";
-};
-
-/* Debug */
-&uart2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart2>;
-	status = "okay";
-};
-
-&uart3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart3>;
-	status = "okay";
-};
-
-&uart4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart4>;
-	status = "okay";
-};
-
-&usb3_0 {
-	status = "okay";
-};
-
-&usb3_1 {
-	status = "okay";
-};
-
-&usb_dwc3_0 {
-	dr_mode = "peripheral";
-	status = "okay";
-};
-
-&usb_dwc3_1 {
-	dr_mode = "host";
-	#address-cells = <1>;
-	#size-cells = <0>;
-	status = "okay";
-
-	/* 2.x hub on port 1 */
-	usb_hub_2_x: hub@1 {
-		compatible = "usb5e3,610";
-		reg = <1>;
-		reset-gpios = <&expander1 9 GPIO_ACTIVE_LOW>;
-		vdd-supply = <&reg_vdd5v0>;
-		peer-hub = <&usb_hub_3_x>;
-	};
-
-	/* 3.x hub on port 2 */
-	usb_hub_3_x: hub@2 {
-		compatible = "usb5e3,620";
-		reg = <2>;
-		reset-gpios = <&expander1 9 GPIO_ACTIVE_LOW>;
-		vdd-supply = <&reg_vdd5v0>;
-		peer-hub = <&usb_hub_2_x>;
-	};
-};
-
-&usb3_phy0 {
-	status = "okay";
-};
-
-&usb3_phy1 {
-	status = "okay";
-};
-
-/* µSD Card */
-&usdhc2 {
-	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-	pinctrl-0 = <&pinctrl_usdhc2>;
-	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
-	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
-	assigned-clocks = <&clk IMX8MP_CLK_USDHC2>;
-	assigned-clock-rates = <400000000>;
-	vmmc-supply = <&reg_usdhc2_vmmc>;
-	bus-width = <4>;
-	disable-wp;
-	no-sdio;
-	no-mmc;
-	status = "okay";
-};
-
-&iomuxc {
-	pinctrl_eqos: eqosgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC				0x3
-			MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO				0x3
-			MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0			0x91
-			MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1			0x91
-			MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2			0x91
-			MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3			0x91
-			MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x91
-			MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL			0x91
-			MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0			0x1f
-			MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1			0x1f
-			MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2			0x1f
-			MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3			0x1f
-			MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL			0x1f
-			MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x1f
-
-			MX8MP_IOMUXC_SAI1_RXFS__ENET1_1588_EVENT0_IN			0x1f
-			MX8MP_IOMUXC_SAI1_TXD6__GPIO4_IO18				0x19
-		>;
-	};
-
-	pinctrl_fec: fecgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SAI1_RXD2__ENET1_MDC		0x3
-			MX8MP_IOMUXC_SAI1_RXD3__ENET1_MDIO		0x3
-			MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0		0x91
-			MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1		0x91
-			MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2		0x91
-			MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3		0x91
-			MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC		0x91
-			MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL	0x91
-			MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0		0x1f
-			MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1		0x1f
-			MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2		0x1f
-			MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3		0x1f
-			MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL	0x1f
-			MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC		0x1f
-			MX8MP_IOMUXC_SAI1_RXD0__ENET1_1588_EVENT1_IN    0x1f
-			MX8MP_IOMUXC_SAI1_TXD7__GPIO4_IO19		0x19
-		>;
-	};
-
-	pinctrl_flexcan1: flexcan1grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SAI5_RXD2__CAN1_RX			0x154
-			MX8MP_IOMUXC_SAI5_RXD1__CAN1_TX			0x154
-		>;
-	};
-
-	pinctrl_flexcan2: flexcan2grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SAI5_MCLK__CAN2_RX			0x154
-			MX8MP_IOMUXC_SAI5_RXD3__CAN2_TX			0x154
-		>;
-	};
-
-	pinctrl_flexspi0: flexspi0grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_NAND_ALE__FLEXSPI_A_SCLK           0x1c2
-			MX8MP_IOMUXC_NAND_CE0_B__FLEXSPI_A_SS0_B        0x82
-			MX8MP_IOMUXC_NAND_DATA00__FLEXSPI_A_DATA00      0x82
-			MX8MP_IOMUXC_NAND_DATA01__FLEXSPI_A_DATA01      0x82
-			MX8MP_IOMUXC_NAND_DATA02__FLEXSPI_A_DATA02      0x82
-			MX8MP_IOMUXC_NAND_DATA03__FLEXSPI_A_DATA03      0x82
-		>;
-	};
-
-	pinctrl_i2c1: i2c1grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL			0x400001c2
-			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA			0x400001c2
-		>;
-	};
-
-	pinctrl_i2c4: i2c4grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_I2C4_SCL__I2C4_SCL			0x400001c3
-			MX8MP_IOMUXC_I2C4_SDA__I2C4_SDA			0x400001c3
-		>;
-	};
-
-	pinctrl_rtc: rtcgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SAI1_RXD1__GPIO4_IO03		0x140
-		>;
-	};
-
-	pinctrl_pmic: pmicgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03		0x41
-		>;
-	};
-
-	pinctrl_uart2: uart2grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX		0x14f
-			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX		0x14f
-		>;
-	};
-
-	pinctrl_uart3: uart3grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_UART3_RXD__UART3_DCE_RX		0x49
-			MX8MP_IOMUXC_UART3_TXD__UART3_DCE_TX		0x49
-		>;
-	};
-
-	pinctrl_uart4: uart4grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_UART4_RXD__UART4_DCE_RX		0x49
-			MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX		0x49
-		>;
-	};
-
-	pinctrl_usdhc2: usdhc2grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x190
-			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d0
-			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0		0x1d0
-			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1		0x1d0
-			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2		0x1d0
-			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3		0x1d0
-			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT		0xc1
-		>;
-	};
-
-	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x194
-			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d4
-			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0		0x1d4
-			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1		0x1d4
-			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2		0x1d4
-			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3		0x1d4
-			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT		0xc1
-		>;
-	};
-
-	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x196
-			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d6
-			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0		0x1d6
-			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1		0x1d6
-			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2		0x1d6
-			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3		0x1d6
-			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT		0xc1
-		>;
-	};
-};
diff --git a/arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts b/arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts
index 4c66b8a667..dfaf55eee0 100644
--- a/arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts
+++ b/arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts
@@ -2,7 +2,7 @@
 
 /dts-v1/;
 
-#include "imx8mp-debix-som-a-bmb-08-upstream.dts"
+#include <arm64/freescale/imx8mp-debix-som-a-bmb-08.dts>
 #include "imx8mp.dtsi"
 
 / {
diff --git a/arch/arm/dts/imx8mp-debix-som-a-upstream.dtsi b/arch/arm/dts/imx8mp-debix-som-a-upstream.dtsi
deleted file mode 100644
index 9e0d19a2a7..0000000000
--- a/arch/arm/dts/imx8mp-debix-som-a-upstream.dtsi
+++ /dev/null
@@ -1,285 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Copyright 2019 NXP
- * Copyright (C) 2023 Pengutronix, Marco Felsch <kernel@pengutronix.de>
- */
-
-#include <arm64/freescale/imx8mp.dtsi>
-
-/ {
-	model = "Polyhex i.MX8MPlus Debix SOM A";
-	compatible = "polyhex,imx8mp-debix-som-a", "fsl,imx8mp";
-
-	reg_usdhc2_vmmc: regulator-usdhc2 {
-		compatible = "regulator-fixed";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
-		regulator-name = "VSD_3V3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-};
-
-&A53_0 {
-	cpu-supply = <&buck2>;
-};
-
-&A53_1 {
-	cpu-supply = <&buck2>;
-};
-
-&A53_2 {
-	cpu-supply = <&buck2>;
-};
-
-&A53_3 {
-	cpu-supply = <&buck2>;
-};
-
-&i2c1 {
-	clock-frequency = <400000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c1>;
-	status = "okay";
-
-	pmic@25 {
-		compatible = "nxp,pca9450c";
-		reg = <0x25>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_pmic>;
-		interrupt-parent = <&gpio1>;
-		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
-
-		regulators {
-			buck1: BUCK1 {
-				regulator-name = "BUCK1";
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <2187500>;
-				regulator-boot-on;
-				regulator-always-on;
-				regulator-ramp-delay = <3125>;
-			};
-
-			buck2: BUCK2 {
-				regulator-name = "BUCK2";
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <2187500>;
-				regulator-boot-on;
-				regulator-always-on;
-				regulator-ramp-delay = <3125>;
-				nxp,dvs-run-voltage = <950000>;
-				nxp,dvs-standby-voltage = <850000>;
-			};
-
-			buck4: BUCK4 {
-				regulator-name = "BUCK4";
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <3400000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			buck5: BUCK5 {
-				regulator-name = "BUCK5";
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <3400000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			buck6: BUCK6 {
-				regulator-name = "BUCK6";
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <3400000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo1: LDO1 {
-				regulator-name = "LDO1";
-				regulator-min-microvolt = <1600000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo2: LDO2 {
-				regulator-name = "LDO2";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <1150000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo3: LDO3 {
-				regulator-name = "LDO3";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo4: LDO4 {
-				regulator-name = "LDO4";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo5: LDO5 {
-				regulator-name = "LDO5";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-		};
-	};
-};
-
-&i2c4 {
-	clock-frequency = <400000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c4>;
-	status = "okay";
-
-	adc@48 {
-		 compatible = "ti,ads1115";
-		 reg = <0x48>;
-		 #address-cells = <1>;
-		 #size-cells = <0>;
-
-		 channel@4 {
-			 reg = <4>;
-			 ti,gain = <1>;
-			 ti,datarate = <7>;
-		 };
-
-		 channel@5 {
-			 reg = <5>;
-			 ti,gain = <1>;
-			 ti,datarate = <7>;
-		 };
-
-		 channel@6 {
-			 reg = <6>;
-			 ti,gain = <1>;
-			 ti,datarate = <7>;
-		 };
-
-		 channel@7 {
-			 reg = <7>;
-			 ti,gain = <1>;
-			 ti,datarate = <7>;
-		 };
-	 };
-};
-
-&snvs_pwrkey {
-	status = "okay";
-};
-
-/* eMMC */
-&usdhc3 {
-	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-	pinctrl-0 = <&pinctrl_usdhc3>;
-	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
-	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
-	assigned-clocks = <&clk IMX8MP_CLK_USDHC3>;
-	assigned-clock-rates = <400000000>;
-	bus-width = <8>;
-	non-removable;
-	status = "okay";
-};
-
-&wdog1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_wdog>;
-	fsl,ext-reset-output;
-	status = "okay";
-};
-
-&iomuxc {
-	pinctrl_i2c1: i2c1grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL			0x400001c2
-			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA			0x400001c2
-		>;
-	};
-
-	pinctrl_i2c4: i2c4grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_I2C4_SCL__I2C4_SCL			0x400001c3
-			MX8MP_IOMUXC_I2C4_SDA__I2C4_SDA			0x400001c3
-		>;
-	};
-
-	pinctrl_pmic: pmicgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03		0x41
-		>;
-	};
-
-	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19		0x41
-		>;
-	};
-
-	pinctrl_usdhc3: usdhc3grp {
-		fsl,pins = <
-			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x190
-			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d0
-			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0		0x1d0
-			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1		0x1d0
-			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2		0x1d0
-			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3		0x1d0
-			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4		0x1d0
-			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5		0x1d0
-			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6		0x1d0
-			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d0
-			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE		0x190
-		>;
-	};
-
-	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x194
-			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d4
-			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0		0x1d4
-			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1		0x1d4
-			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2		0x1d4
-			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3		0x1d4
-			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4		0x1d4
-			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5		0x1d4
-			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6		0x1d4
-			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d4
-			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE		0x194
-		>;
-	};
-
-	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x196
-			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d6
-			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0		0x1d6
-			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1		0x1d6
-			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2		0x1d6
-			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3		0x1d6
-			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4		0x1d6
-			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5		0x1d6
-			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6		0x1d6
-			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d6
-			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE		0x196
-		>;
-	};
-
-	pinctrl_wdog: wdoggrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B		0xc6
-		>;
-	};
-};
-- 
2.47.3



