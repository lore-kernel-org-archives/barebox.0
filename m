Delivery-date: Tue, 20 Feb 2024 13:33:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcPIz-00G0rz-0p
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 13:33:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcPIx-0002Kx-UQ
	for lore@pengutronix.de; Tue, 20 Feb 2024 13:33:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yXqBL5q6d44qE1/+yjOHQ/iHCnpFkh1c1k018MRGph0=; b=fSoajotuPZCrPhJFRvlVjyu4F1
	xcmrKf5ebbxL7y3Ud0qJvnRiI2+kt5doFHzu9buyO3rL10f3X0wAJ3egEsE96ab8Ja1pyuvFVvxlL
	mD5+moD+fnQK4fQ8jv8aXlyPIjv3tH4WPDFCLP/9l/NVvyLCUTvHFfTHZUoP1y/bMoRXLnPU5PZh/
	qP6aSCYLMhzPd9dWb+Z5eTyszlCfo8Ue8cPXeJq6VGv6RcGKlTUWcuqJd8tr/qbOnKa80iRbBS1Fq
	BTOFAGuAHtT1a1VqiUV7zZShVzp3mesin6omfkaumDJxFaQbWAp0J4uDymXMmHbOAPBpqvAg3xmT+
	U2GTyp/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcPIO-0000000Ei70-3v74;
	Tue, 20 Feb 2024 12:32:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcPII-0000000Ei3G-11zC
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 12:32:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcPIG-0002AH-VM; Tue, 20 Feb 2024 13:32:16 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcPIG-001qH8-J0; Tue, 20 Feb 2024 13:32:16 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcPIG-00Flow-1Z;
	Tue, 20 Feb 2024 13:32:16 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Feb 2024 13:32:15 +0100
Message-Id: <20240220123215.3758465-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_043218_669095_0545C446 
X-CRM114-Status: GOOD (  10.96  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX8MM: innocomm-wb15: switch to upstream DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The same DTs we have in barebox have made it upstream with very minor
differences, so drop the copies inside barebox.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../dts/imx8mm-innocomm-wb15-evk-upstream.dts | 147 ------
 arch/arm/dts/imx8mm-innocomm-wb15-evk.dts     |   2 +-
 arch/arm/dts/imx8mm-innocomm-wb15.dtsi        | 481 ------------------
 3 files changed, 1 insertion(+), 629 deletions(-)
 delete mode 100644 arch/arm/dts/imx8mm-innocomm-wb15-evk-upstream.dts
 delete mode 100644 arch/arm/dts/imx8mm-innocomm-wb15.dtsi

diff --git a/arch/arm/dts/imx8mm-innocomm-wb15-evk-upstream.dts b/arch/arm/dts/imx8mm-innocomm-wb15-evk-upstream.dts
deleted file mode 100644
index 0a28e7ceabbe..000000000000
--- a/arch/arm/dts/imx8mm-innocomm-wb15-evk-upstream.dts
+++ /dev/null
@@ -1,147 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Copyright 2018 Bang & Olufsen
- * Copyright 2022 Pengutronix
- */
-
-/dts-v1/;
-
-#include "imx8mm-innocomm-wb15.dtsi"
-
-/ {
-	model = "InnoComm WB15-EVK";
-	compatible = "innocomm,wb15-evk", "fsl,imx8mm";
-
-	chosen {
-		stdout-path = &uart2;
-	};
-
-	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_gpio_leds>;
-		status = "okay";
-
-		led-0 {
-			label = "debug";
-			gpios = <&gpio4 3 GPIO_ACTIVE_HIGH>;
-			default-state = "off";
-		};
-	};
-
-	reg_vsd_3v3: regulator-vsd-3v3 {
-		compatible = "regulator-fixed";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_reg_vsd_3v3>;
-		regulator-name = "VSD_3V3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-
-	reg_ethphy: regulator-eth-phy {
-		compatible = "regulator-fixed";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_fec_phy_reg>;
-		regulator-name = "PHY_3V3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		gpio = <&gpio1 10 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-};
-
-&fec1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_fec>;
-	phy-mode = "rgmii-id";
-	phy-handle = <&ethphy0>;
-	fsl,magic-packet;
-	status = "okay";
-
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ethphy0: ethernet-phy@1 {
-			compatible = "ethernet-phy-ieee802.3-c22";
-			reg = <0x1>;
-			pinctrl-names = "default";
-			pinctrl-0 = <&pinctrl_fec_phy>;
-			reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
-			phy-supply = <&reg_ethphy>;
-		};
-	};
-};
-
-&uart2 {
-	status = "okay";
-};
-
-&usbotg1 {
-	dr_mode = "otg";
-	samsung,picophy-pre-emp-curr-control = <3>;
-	samsung,picophy-dc-vol-level-adjust = <7>;
-	disable-over-current;
-	status = "okay";
-};
-
-&usbotg2 {
-	dr_mode = "host";
-	samsung,picophy-pre-emp-curr-control = <3>;
-	samsung,picophy-dc-vol-level-adjust = <7>;
-	disable-over-current;
-	status = "okay";
-};
-
-&usdhc2 {
-	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
-	vmmc-supply = <&reg_vsd_3v3>;
-	status = "okay";
-};
-
-&iomuxc {
-	pinctrl_fec: fecgrp {
-		fsl,pins = <
-			MX8MM_IOMUXC_ENET_MDC_ENET1_MDC			0x03
-			MX8MM_IOMUXC_ENET_MDIO_ENET1_MDIO		0x03
-			MX8MM_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
-			MX8MM_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
-			MX8MM_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
-			MX8MM_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
-			MX8MM_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0x91
-			MX8MM_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
-			MX8MM_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
-			MX8MM_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
-			MX8MM_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
-			MX8MM_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x91
-			MX8MM_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
-			MX8MM_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
-		>;
-	};
-
-	pinctrl_fec_phy: fecphygrp {
-		fsl,pins = <
-			MX8MM_IOMUXC_GPIO1_IO09_GPIO1_IO9		0x19
-		>;
-	};
-
-	pinctrl_fec_phy_reg: fecphyreggrp {
-		fsl,pins = <
-			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10		0x16
-		>;
-	};
-
-	pinctrl_gpio_leds: led_grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_SAI1_RXD1_GPIO4_IO3	0xd6
-		>;
-	};
-
-	pinctrl_reg_vsd_3v3: reg-vsd-3v3-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
-		>;
-	};
-};
diff --git a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
index 907d9c96baa6..ac7e5a1cb193 100644
--- a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
+++ b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
@@ -2,7 +2,7 @@
 
 /dts-v1/;
 
-#include "imx8mm-innocomm-wb15-evk-upstream.dts"
+#include <arm64/freescale/imx8mm-innocomm-wb15-evk.dts>
 
 / {
 	chosen {
diff --git a/arch/arm/dts/imx8mm-innocomm-wb15.dtsi b/arch/arm/dts/imx8mm-innocomm-wb15.dtsi
deleted file mode 100644
index 7e25450362c4..000000000000
--- a/arch/arm/dts/imx8mm-innocomm-wb15.dtsi
+++ /dev/null
@@ -1,481 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Copyright 2018 Bang & Olufsen
- */
-
-#include <arm64/freescale/imx8mm.dtsi>
-#include "imx8mm.dtsi"
-#include <dt-bindings/phy/phy-imx8-pcie.h>
-
-/ {
-	reg_modem: regulator-modem {
-		compatible = "regulator-fixed";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_modem_regulator>;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-name = "epdev_on";
-		gpio = <&gpio3 16 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		regulator-always-on;
-	};
-
-	reg_3v3_out: regulator-3v3-out {
-		compatible = "regulator-fixed";
-		regulator-name = "3V3_OUT";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-	};
-};
-
-&cpu_alert0 {
-	temperature = <95000>;
-};
-
-&cpu_crit0 {
-	temperature = <105000>;
-};
-
-&ddrc {
-	operating-points-v2 = <&ddrc_opp_table>;
-
-	ddrc_opp_table: opp-table {
-		compatible = "operating-points-v2";
-
-		opp-25000000 {
-			opp-hz = /bits/ 64 <25000000>;
-		};
-
-		opp-100000000 {
-			opp-hz = /bits/ 64 <100000000>;
-		};
-
-		opp-600000000 {
-			opp-hz = /bits/ 64 <600000000>;
-		};
-	};
-};
-
-&i2c1 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default", "gpio";
-	pinctrl-0 = <&pinctrl_i2c1>;
-	pinctrl-1 = <&pinctrl_i2c1_gpio>;
-	scl-gpios = <&gpio5 14 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
-	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
-	status = "okay";
-
-	pmic@4b {
-		compatible = "rohm,bd71847";
-		reg = <0x4b>;
-		pinctrl-0 = <&pinctrl_pmic>;
-		interrupt-parent = <&gpio1>;
-		interrupts = <3 GPIO_ACTIVE_LOW>;
-		rohm,reset-snvs-powered;
-
-		regulators {
-			buck1_reg: BUCK1 {
-				regulator-name = "buck1";
-				regulator-min-microvolt = <700000>;
-				regulator-max-microvolt = <1300000>;
-				regulator-boot-on;
-				regulator-always-on;
-				regulator-ramp-delay = <1250>;
-				rohm,dvs-run-voltage = <850000>;
-				rohm,dvs-idle-voltage = <850000>;
-				rohm,dvs-suspend-voltage = <850000>;
-			};
-
-			buck2_reg: BUCK2 {
-				regulator-name = "buck2";
-				regulator-min-microvolt = <700000>;
-				regulator-max-microvolt = <1300000>;
-				regulator-boot-on;
-				regulator-always-on;
-				regulator-ramp-delay = <1250>;
-				rohm,dvs-run-voltage = <1000000>;
-				rohm,dvs-idle-voltage = <900000>;
-			};
-
-			buck3_reg: BUCK3 {
-				// buck5 in datasheet
-				regulator-name = "buck3";
-				regulator-min-microvolt = <700000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			buck4_reg: BUCK4 {
-				// buck6 in datasheet
-				regulator-name = "buck4";
-				regulator-min-microvolt = <3000000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			buck5_reg: BUCK5 {
-				// buck7 in datasheet
-				regulator-name = "buck5";
-				regulator-min-microvolt = <1605000>;
-				regulator-max-microvolt = <1995000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			buck6_reg: BUCK6 {
-				// buck8 in datasheet
-				regulator-name = "buck6";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <1400000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo1_reg: LDO1 {
-				regulator-name = "ldo1";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo2_reg: LDO2 {
-				regulator-name = "ldo2";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <900000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo3_reg: LDO3 {
-				regulator-name = "ldo3";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo4_reg: LDO4 {
-				regulator-name = "ldo4";
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo5_reg: LDO5 {
-				regulator-name = "ldo5";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-			};
-
-			ldo6_reg: LDO6 {
-				regulator-name = "ldo6";
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-		};
-	};
-};
-
-&i2c2 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default", "gpio";
-	pinctrl-0 = <&pinctrl_i2c2>;
-	pinctrl-1 = <&pinctrl_i2c2_gpio>;
-	scl-gpios = <&gpio5 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
-	sda-gpios = <&gpio5 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
-	status = "okay";
-};
-
-&i2c3 {
-	pinctrl-names = "default", "gpio";
-	pinctrl-0 = <&pinctrl_i2c3>;
-	pinctrl-1 = <&pinctrl_i2c3_gpio>;
-	scl-gpios = <&gpio5 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
-	sda-gpios = <&gpio5 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
-};
-
-&pcie_phy {
-	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_OUTPUT>;
-	fsl,tx-deemph-gen1 = <0x2d>;
-	fsl,tx-deemph-gen2 = <0xf>;
-	status = "okay";
-};
-
-&pcie0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio5 21 GPIO_ACTIVE_LOW>;
-	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&clk IMX8MM_CLK_PCIE1_PHY>,
-		 <&clk IMX8MM_CLK_PCIE1_AUX>;
-	clock-names = "pcie", "pcie_bus", "pcie_aux";
-	fsl,max-link-speed = <1>;
-	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>, <&clk IMX8MM_CLK_PCIE1_CTRL>;
-	assigned-clock-rates = <10000000>, <250000000>;
-	assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_50M>, <&clk IMX8MM_SYS_PLL2_250M>;
-	status = "okay";
-};
-
-&uart1 { /* BT */
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart1>;
-	assigned-clocks = <&clk IMX8MM_CLK_UART1>;
-	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
-	fsl,uart-has-rtscts;
-	status = "okay";
-
-	bluetooth {
-		compatible = "brcm,bcm4349-bt";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_modem_bt>;
-		device-wakeup-gpios = <&gpio3 3 GPIO_ACTIVE_HIGH>;
-		host-wakeup-gpios = <&gpio3 4 GPIO_ACTIVE_HIGH>;
-		shutdown-gpios = <&gpio3 15 GPIO_ACTIVE_HIGH>;
-		vbat-supply = <&reg_3v3_out>;
-		vddio-supply = <&reg_3v3_out>;
-		clocks = <&osc_32k>;
-		max-speed = <3000000>;
-		clock-names = "extclk";
-	};
-};
-
-&uart2 { /* console */
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart2>;
-};
-
-&usdhc1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc1>;
-	bus-width = <8>;
-	no-sd;
-	no-sdio;
-	non-removable;
-	status = "okay";
-};
-
-&usdhc2 {
-	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
-	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
-	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
-	bus-width = <4>;
-};
-
-&wdog1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_wdog>;
-	fsl,ext-reset-output;
-	status = "okay";
-};
-
-&A53_0 {
-	cpu-supply = <&buck2_reg>;
-};
-
-&A53_1 {
-	cpu-supply = <&buck2_reg>;
-};
-
-&A53_2 {
-	cpu-supply = <&buck2_reg>;
-};
-
-&A53_3 {
-	cpu-supply = <&buck2_reg>;
-};
-
-/delete-node/ &sec_jr1; /* Job ring in use by OP-TEE */
-
-&iomuxc {
-	pinctrl_i2c1: i2c1-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL	0x400001c3
-			MX8MM_IOMUXC_I2C1_SDA_I2C1_SDA	0x400001c3
-		>;
-	};
-
-	pinctrl_i2c1_gpio: i2c1-gpio-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_I2C1_SCL_GPIO5_IO14	0x400001c3
-			MX8MM_IOMUXC_I2C1_SDA_GPIO5_IO15	0x400001c3
-		>;
-	};
-
-	pinctrl_i2c2: i2c2-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_I2C2_SCL_I2C2_SCL	0x400001c3
-			MX8MM_IOMUXC_I2C2_SDA_I2C2_SDA	0x400001c3
-		>;
-	};
-
-	pinctrl_i2c2_gpio: i2c2-gpio-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_I2C2_SCL_GPIO5_IO16	0x400001c3
-			MX8MM_IOMUXC_I2C2_SDA_GPIO5_IO17	0x400001c3
-		>;
-	};
-
-	pinctrl_i2c3: i2c3-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_I2C3_SCL_I2C3_SCL		0x400001c3
-			MX8MM_IOMUXC_I2C3_SDA_I2C3_SDA		0x400001c3
-		>;
-	};
-
-	pinctrl_i2c3_gpio: i2c3-gpio-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_I2C3_SCL_GPIO5_IO18	0x400001c3
-			MX8MM_IOMUXC_I2C3_SDA_GPIO5_IO19	0x400001c3
-		>;
-	};
-
-	pinctrl_pcie0: pcie0-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B	0x61
-			MX8MM_IOMUXC_I2C4_SDA_GPIO5_IO21	0x6
-		>;
-	};
-
-	pinctrl_modem_bt: modembt-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_NAND_CLE_GPIO3_IO5			0x19
-			MX8MM_IOMUXC_NAND_CE2_B_GPIO3_IO3		0x19
-			MX8MM_IOMUXC_NAND_CE3_B_GPIO3_IO4		0x19
-			MX8MM_IOMUXC_NAND_RE_B_GPIO3_IO15		0x19
-			MX8MM_IOMUXC_GPIO1_IO00_ANAMIX_REF_CLK_32K	0x141
-		>;
-	};
-
-	pinctrl_modem_regulator: modemreg-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_NAND_READY_B_GPIO3_IO16    0x41
-		>;
-	};
-
-	pinctrl_pmic: pmicirq-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3	0x41
-		>;
-	};
-
-	pinctrl_uart1: uart1-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_UART1_RXD_UART1_DCE_RX	0x140
-			MX8MM_IOMUXC_UART1_TXD_UART1_DCE_TX	0x140
-			MX8MM_IOMUXC_UART3_RXD_UART1_DCE_CTS_B	0x140
-			MX8MM_IOMUXC_UART3_TXD_UART1_DCE_RTS_B	0x140
-		>;
-	};
-
-	pinctrl_uart2: uart2-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX	0x140
-			MX8MM_IOMUXC_UART2_TXD_UART2_DCE_TX	0x140
-		>;
-	};
-
-	pinctrl_usdhc1: usdhc1-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK		0x40000190
-			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD		0x1d0
-			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0	0x1d0
-			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1	0x1d0
-			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2	0x1d0
-			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3	0x1d0
-			MX8MM_IOMUXC_SD1_DATA4_USDHC1_DATA4	0x1d0
-			MX8MM_IOMUXC_SD1_DATA5_USDHC1_DATA5	0x1d0
-			MX8MM_IOMUXC_SD1_DATA6_USDHC1_DATA6	0x1d0
-			MX8MM_IOMUXC_SD1_DATA7_USDHC1_DATA7	0x1d0
-			MX8MM_IOMUXC_SD1_STROBE_USDHC1_STROBE	0x190
-			MX8MM_IOMUXC_SD1_RESET_B_USDHC1_RESET_B	0x1d0
-		>;
-	};
-
-	pinctrl_usdhc1_100mhz: usdhc1-100mhz-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK		0x40000194
-			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD		0x1d4
-			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0	0x1d4
-			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1	0x1d4
-			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2	0x1d4
-			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3	0x1d4
-			MX8MM_IOMUXC_SD1_DATA4_USDHC1_DATA4	0x1d4
-			MX8MM_IOMUXC_SD1_DATA5_USDHC1_DATA5	0x1d4
-			MX8MM_IOMUXC_SD1_DATA6_USDHC1_DATA6	0x1d4
-			MX8MM_IOMUXC_SD1_DATA7_USDHC1_DATA7	0x1d4
-			MX8MM_IOMUXC_SD1_STROBE_USDHC1_STROBE	0x194
-			MX8MM_IOMUXC_SD1_RESET_B_USDHC1_RESET_B	0x1d4
-		>;
-	};
-
-	pinctrl_usdhc1_200mhz: usdhc1-200mhz-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK		0x40000196
-			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD		0x1d6
-			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0	0x1d6
-			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1	0x1d6
-			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2	0x1d6
-			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3	0x1d6
-			MX8MM_IOMUXC_SD1_DATA4_USDHC1_DATA4	0x1d6
-			MX8MM_IOMUXC_SD1_DATA5_USDHC1_DATA5	0x1d6
-			MX8MM_IOMUXC_SD1_DATA6_USDHC1_DATA6	0x1d6
-			MX8MM_IOMUXC_SD1_DATA7_USDHC1_DATA7	0x1d6
-			MX8MM_IOMUXC_SD1_STROBE_USDHC1_STROBE	0x196
-			MX8MM_IOMUXC_SD1_RESET_B_USDHC1_RESET_B	0x1d6
-		>;
-	};
-
-	pinctrl_usdhc2_gpio: usdhc2-gpio-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x1d0
-		>;
-	};
-
-	pinctrl_usdhc2: usdhc2-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x190
-			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d0
-			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d0
-			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d0
-			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d0
-			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d0
-			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
-		>;
-	};
-
-	pinctrl_usdhc2_100mhz: usdhc2-100mhz-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x194
-			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d4
-			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d4
-			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d4
-			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d4
-			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d4
-			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
-		>;
-	};
-
-	pinctrl_usdhc2_200mhz: usdhc2-200mhz-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x196
-			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d6
-			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d6
-			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d6
-			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d6
-			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d6
-			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
-		>;
-	};
-
-	pinctrl_wdog: wdog-grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B	0xc6
-		>;
-	};
-};
-- 
2.39.2



