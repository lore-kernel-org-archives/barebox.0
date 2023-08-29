Delivery-date: Tue, 29 Aug 2023 14:45:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qay63-00DKek-2y
	for lore@lore.pengutronix.de; Tue, 29 Aug 2023 14:45:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qay60-0004nU-BU
	for lore@pengutronix.de; Tue, 29 Aug 2023 14:45:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/rz00piBaEwenPE5UNIKZBwhUXK2B5PWDqIeWYqY8T8=; b=tkXTxhBJgRs16CnaKoeKREmXND
	COTsy2QLb2eeV4XfSw1HJCgYPwEN45G1U9tAQBQZW4iEliML3FBb9Ogs5rsommdOQN7iZfuq2EKgi
	aRvVfbr2od+bDraOcPaUIg36VsTzAOMeGHDS99dNRuc64oOJF3L0VFg2SXHsRoz4kbh3eu9cVfSVl
	mcK9Bmzb3qgYZUJ3PgXmykKZRP77tAo/K72wQ47YyX/xEE16Cj9vLyHAChVPowEXB2e03dQI8KA3F
	aTKXkbqEjzi23U02oPazZjr8nsMvT0pDcgvqH7k3eGlK69TeaNWLeJKraEurFKQyU8Wud+8vspS67
	frQlC/5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qay4l-00BWVh-0A;
	Tue, 29 Aug 2023 12:44:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qay4f-00BWTA-0C
	for barebox@lists.infradead.org;
	Tue, 29 Aug 2023 12:44:04 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qay4c-0004QT-49
	for barebox@lists.infradead.org; Tue, 29 Aug 2023 14:43:58 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 29 Aug 2023 14:43:56 +0200
Message-Id: <20230829124356.4178308-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230829124356.4178308-1-m.felsch@pengutronix.de>
References: <20230829124356.4178308-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_054401_256975_4EDFDB7E 
X-CRM114-Status: GOOD (  13.69  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] ARM: dts: imx8mp-debix-som-a-bmb-08-upstream: sync with mainlined kernel version
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Sync the *-upstream.dts(i) versions with the mainlined kernel version [1]
available with v6.6.

[1] https://lore.kernel.org/all/20230809071026.3546605-4-m.felsch@pengutronix.de/

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 .../imx8mp-debix-som-a-bmb-08-upstream.dts    | 126 ++++++++----------
 arch/arm/dts/imx8mp-debix-som-a-upstream.dtsi |  36 +++--
 2 files changed, 85 insertions(+), 77 deletions(-)

diff --git a/arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts b/arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts
index 79c505d141c2..59334ce30c8a 100644
--- a/arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts
+++ b/arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts
@@ -11,20 +11,27 @@
 / {
 	model = "Polyhex i.MX8MPlus Debix SOM A on BMB-08";
 	compatible = "polyhex,imx8mp-debix-som-a-bmb-08", "polyhex,imx8mp-debix-som-a",
-		     "polyhex,imx8mp-debix", "fsl,imx8mp";
+		     "fsl,imx8mp";
+
+	aliases {
+		ethernet0 = &eqos;
+		ethernet1 = &fec;
+	};
 
 	chosen {
 		stdout-path = &uart2;
 	};
 
-	regulator-baseboard-vdd3v3 {
+	reg_baseboard_vdd3v3: regulator-baseboard-vdd3v3 {
 		compatible = "regulator-fixed";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		regulator-name = "BB_VDD3V3";
+		/* Required timings for ethernet phy's */
+		startup-delay-us = <50000>;
+		off-on-delay-us = <110000>;
 		gpio = <&expander0 10 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
-		regulator-always-on;
 	};
 
 	reg_baseboard_vdd5v0: regulator-baseboard-vdd5v0 {
@@ -56,17 +63,6 @@ regulator-som-vdd3v3 {
 		regulator-always-on;
 	};
 
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
-
 	regulator-vbus-usb20 {
 		compatible = "regulator-fixed";
 		regulator-min-microvolt = <5000000>;
@@ -102,10 +98,11 @@ reg_vdd5v0: regulator-vdd5v0 {
 &eqos {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_eqos>;
-	phy-mode = "rgmii-id";
+	nvmem-cells = <&ethmac1>;
+	nvmem-cell-names = "mac-address";
+	phy-supply = <&reg_baseboard_vdd3v3>;
 	phy-handle = <&ethphy0>;
-	snps,reset-gpio = <&gpio4 18 GPIO_ACTIVE_LOW>;
-	snps,reset-delays-us = <10 20 200000>;
+	phy-mode = "rgmii-id";
 	status = "okay";
 
 	mdio {
@@ -113,16 +110,14 @@ mdio {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		ethphy0: ethernet-phy@0 {
+		ethphy0: ethernet-phy@1 {
 			compatible = "ethernet-phy-ieee802.3-c22";
-			reg = <0>;
-			qca,disable-smarteee;
-			vddio-supply = <&vddio_phy0>;
-
-			vddio_phy0: vddio-phy0-regulator {
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-			};
+			reg = <1>;
+			reset-gpios = <&gpio4 18 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <20000>;
+			reset-deassert-us = <150000>;
+			eee-broken-1000t;
+			realtek,clkout-disable;
 		};
 	};
 };
@@ -130,28 +125,26 @@ vddio_phy0: vddio-phy0-regulator {
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_fec>;
-	phy-mode = "rgmii-id";
+	nvmem-cells = <&ethmac2>;
+	nvmem-cell-names = "mac-address";
+	phy-supply = <&reg_baseboard_vdd3v3>;
 	phy-handle = <&ethphy1>;
+	phy-mode = "rgmii-id";
 	fsl,magic-packet;
-	phy-reset-gpios = <&gpio4 19 GPIO_ACTIVE_LOW>;
-	phy-reset-duration = <10>;
-	phy-reset-post-delay = <150>;
 	status = "okay";
 
 	mdio {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		ethphy1: ethernet-phy@0 {
+		ethphy1: ethernet-phy@1 {
 			compatible = "ethernet-phy-ieee802.3-c22";
-			reg = <0>;
-			qca,disable-smarteee;
-			vddio-supply = <&vddio_phy1>;
-
-			vddio_phy1: vddio-phy1-regulator {
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-			};
+			reg = <1>;
+			reset-gpios = <&gpio4 19 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <20000>;
+			reset-deassert-us = <150000>;
+			eee-broken-1000t;
+			realtek,clkout-disable;
 		};
 	};
 };
@@ -201,7 +194,7 @@ expander1: gpio@23 {
 		#gpio-cells = <0x02>;
 
 		/*
-		 * Since USB1 is binded to peripheral mode we need to ensure
+		 * Since USB1 is bound to peripheral mode we need to ensure
 		 * that VBUS is turned off.
 		 */
 		usb30-otg-hog {
@@ -212,12 +205,6 @@ usb30-otg-hog {
 		};
 	};
 
-	eeprom@52 {
-		compatible = "atmel,24c02";
-		reg = <0x52>;
-		pagesize = <16>;
-	};
-
 	rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
@@ -227,6 +214,23 @@ rtc@51 {
 		interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
 		#clock-cells = <0>;
 	};
+
+	eeprom@52 {
+		compatible = "atmel,24c02";
+		reg = <0x52>;
+		pagesize = <16>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* MACs stored in ASCII */
+		ethmac1: mac-address@0 {
+			reg = <0x0 0xc>;
+		};
+
+		ethmac2: mac-address@c {
+			reg = <0xc 0xc>;
+		};
+	};
 };
 
 &snvs_pwrkey {
@@ -301,16 +305,16 @@ &usb3_phy1 {
 /* µSD Card */
 &usdhc2 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
-	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
-	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
-	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
-	vmmc-supply = <&reg_usdhc2_vmmc>;
-	bus-width = <4>;
-
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
 	assigned-clocks = <&clk IMX8MP_CLK_USDHC2>;
 	assigned-clock-rates = <400000000>;
-
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	bus-width = <4>;
+	disable-wp;
+	no-sdio;
+	no-mmc;
 	status = "okay";
 };
 
@@ -409,12 +413,6 @@ MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03		0x41
 		>;
 	};
 
-	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19		0x41
-		>;
-	};
-
 	pinctrl_uart2: uart2grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX		0x14f
@@ -468,13 +466,7 @@ MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0		0x1d6
 			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1		0x1d6
 			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2		0x1d6
 			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3		0x1d6
-			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT 	0xc1
-		>;
-	};
-
-	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
-		fsl,pins = <
-			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12		0x1c4
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT		0xc1
 		>;
 	};
 };
diff --git a/arch/arm/dts/imx8mp-debix-som-a-upstream.dtsi b/arch/arm/dts/imx8mp-debix-som-a-upstream.dtsi
index ae12f322bce2..9e0d19a2a72c 100644
--- a/arch/arm/dts/imx8mp-debix-som-a-upstream.dtsi
+++ b/arch/arm/dts/imx8mp-debix-som-a-upstream.dtsi
@@ -8,7 +8,18 @@
 
 / {
 	model = "Polyhex i.MX8MPlus Debix SOM A";
-	compatible = "polyhex,imx8mp-debix-som-a", "polyhex,imx8mp-debix", "fsl,imx8mp";
+	compatible = "polyhex,imx8mp-debix-som-a", "fsl,imx8mp";
+
+	reg_usdhc2_vmmc: regulator-usdhc2 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
+		regulator-name = "VSD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 };
 
 &A53_0 {
@@ -38,9 +49,8 @@ pmic@25 {
 		reg = <0x25>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_pmic>;
-
 		interrupt-parent = <&gpio1>;
-		interrupts = <3 GPIO_ACTIVE_LOW>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
 
 		regulators {
 			buck1: BUCK1 {
@@ -63,7 +73,7 @@ buck2: BUCK2 {
 				nxp,dvs-standby-voltage = <850000>;
 			};
 
-			buck4: BUCK4{
+			buck4: BUCK4 {
 				regulator-name = "BUCK4";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <3400000>;
@@ -71,7 +81,7 @@ buck4: BUCK4{
 				regulator-always-on;
 			};
 
-			buck5: BUCK5{
+			buck5: BUCK5 {
 				regulator-name = "BUCK5";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <3400000>;
@@ -139,7 +149,6 @@ &i2c4 {
 	adc@48 {
 		 compatible = "ti,ads1115";
 		 reg = <0x48>;
-
 		 #address-cells = <1>;
 		 #size-cells = <0>;
 
@@ -148,16 +157,19 @@ channel@4 {
 			 ti,gain = <1>;
 			 ti,datarate = <7>;
 		 };
+
 		 channel@5 {
 			 reg = <5>;
 			 ti,gain = <1>;
 			 ti,datarate = <7>;
 		 };
+
 		 channel@6 {
 			 reg = <6>;
 			 ti,gain = <1>;
 			 ti,datarate = <7>;
 		 };
+
 		 channel@7 {
 			 reg = <7>;
 			 ti,gain = <1>;
@@ -176,12 +188,10 @@ &usdhc3 {
 	pinctrl-0 = <&pinctrl_usdhc3>;
 	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
 	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
-	bus-width = <8>;
-	non-removable;
-
 	assigned-clocks = <&clk IMX8MP_CLK_USDHC3>;
 	assigned-clock-rates = <400000000>;
-
+	bus-width = <8>;
+	non-removable;
 	status = "okay";
 };
 
@@ -213,6 +223,12 @@ MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03		0x41
 		>;
 	};
 
+	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19		0x41
+		>;
+	};
+
 	pinctrl_usdhc3: usdhc3grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x190
-- 
2.39.2



