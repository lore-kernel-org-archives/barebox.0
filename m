Delivery-date: Wed, 29 Jul 2026 15:49:58 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wp4fV-0049oe-19
	for lore@lore.pengutronix.de;
	Wed, 29 Jul 2026 15:49:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 35815202C5C
	for <lore@pengutronix.de>; Wed, 29 Jul 2026 15:49:53 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=i0jsvkOP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ce2PrgSb/Ba3xM4vTmuIsREzMlU9k+DrfQzuJeuFwhg=; b=i0jsvkOP0JaQR5SbgHcM5fXBbU
	bFLNSQO84RWpueC/TT7nvZcNVvWN21LbBqQfu3jjf9isYI+bTH3ymX3ACOljt7g6/nD1ORYYChGY8
	v8LcUMn3eV3NPcLNga+s4jzbxNmR9RSG18iNbRpe+lCb1gk73ZIVYpTRBo/I0M11L5wiZmqB20Q5p
	yYcz1K9lo/I1PeSsC8vF7PxKSdU1HPEY9rMxSOTRvohMI0kt+t//JGyVrVCwnqhQ6/QrpXk+j+wBx
	WqoIUURXtnfOn5UVV+PBA4jP3kx1hjhT3Mo8bxmr7gSnH9MhQmqRiOSeFwJTOuu05bPK0eKXgunGS
	mJMlfD0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4dt-00000008B1o-2tbc;
	Wed, 29 Jul 2026 13:48:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4dq-00000008B1T-1prK
	for barebox@lists.infradead.org;
	Wed, 29 Jul 2026 13:48:16 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wp4dm-0001fd-C4; Wed, 29 Jul 2026 15:48:10 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Subject: [PATCH] ARM: boards: i.MX93: use kernel dts
Date: Wed, 29 Jul 2026 15:47:57 +0200
Message-ID: <20260729134757.2694248-1-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::5c
X-SA-Exim-Mail-From: f.pflug@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_064814_794969_ABC8FE3D 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  All the information are in the kernel dts now and can be included
    from there. Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de> --- arch/arm/dts/imx93-frdm.dts
    | 531 + 1 file changed, 1 insertion(+), 530 deletions(-) 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: m79o74fyxzgg7cwjcabfums5axzdgmh4
X-Spamd-Result: default: False [-4.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received,2a0a:edc0:0:1101:1d::5c:received];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[f.pflug@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 35815202C5C

All the information are in the kernel dts now and can be included from
there.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/dts/imx93-frdm.dts | 531 +-----------------------------------
 1 file changed, 1 insertion(+), 530 deletions(-)

diff --git a/arch/arm/dts/imx93-frdm.dts b/arch/arm/dts/imx93-frdm.dts
index da828abf22..336ba167b9 100644
--- a/arch/arm/dts/imx93-frdm.dts
+++ b/arch/arm/dts/imx93-frdm.dts
@@ -1,534 +1,5 @@
 // SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
 /dts-v1/;
 
-#include <dt-bindings/usb/pd.h>
-#include <arm64/freescale/imx93.dtsi>
-
-/ {
-	compatible = "fsl,imx93-11x11-frdm", "fsl,imx93";
-	model = "NXP i.MX93 11X11 FRDM board";
-
-	aliases {
-		mmc0 = &usdhc1; /* EMMC */
-		mmc1 = &usdhc2; /* uSD */
-		rtc0 = &pcf2131;
-		serial0 = &lpuart1;
-	};
-
-	chosen {
-		stdout-path = &lpuart1;
-	};
-
-	reg_vref_1v8: regulator-adc-vref {
-		compatible = "regulator-fixed";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		regulator-name = "vref_1v8";
-	};
-
-	reg_can2_standby: regulator-can2-stby {
-		compatible = "regulator-fixed";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-name = "can2-stby";
-		gpio = <&pcal6524 23 GPIO_ACTIVE_LOW>;
-	};
-
-	reg_usdhc2_vmmc: regulator-usdhc2 {
-		compatible = "regulator-fixed";
-		off-on-delay-us = <12000>;
-		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
-		pinctrl-names = "default";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-name = "VSD_3V3";
-		gpio = <&gpio3 7 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-};
-
-&eqos {
-	phy-handle = <&ethphy1>;
-	phy-mode = "rgmii-id";
-	pinctrl-0 = <&pinctrl_eqos>;
-	pinctrl-1 = <&pinctrl_eqos_sleep>;
-	pinctrl-names = "default", "sleep";
-	status = "okay";
-
-	mdio {
-		compatible = "snps,dwmac-mdio";
-		#address-cells = <1>;
-		#size-cells = <0>;
-		clock-frequency = <5000000>;
-
-		ethphy1: ethernet-phy@1 {
-			reg = <1>;
-			reset-assert-us = <10000>;
-			reset-deassert-us = <80000>;
-			reset-gpios = <&pcal6524 15 GPIO_ACTIVE_LOW>;
-		};
-	};
-};
-
-&fec {
-	phy-handle = <&ethphy2>;
-	phy-mode = "rgmii-id";
-	pinctrl-0 = <&pinctrl_fec>;
-	pinctrl-1 = <&pinctrl_fec_sleep>;
-	pinctrl-names = "default", "sleep";
-	fsl,magic-packet;
-	status = "okay";
-
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		clock-frequency = <5000000>;
-
-		ethphy2: ethernet-phy@2 {
-			reg = <2>;
-			eee-broken-1000t;
-			reset-assert-us = <10000>;
-			reset-deassert-us = <80000>;
-			reset-gpios = <&pcal6524 16 GPIO_ACTIVE_LOW>;
-		};
-	};
-};
-
-&lpi2c2 {
-	clock-frequency = <400000>;
-	pinctrl-0 = <&pinctrl_lpi2c2>;
-	pinctrl-names = "default";
-	status = "okay";
-
-	pcal6524: gpio@22 {
-		compatible = "nxp,pcal6524";
-		reg = <0x22>;
-		#interrupt-cells = <2>;
-		interrupt-controller;
-		interrupt-parent = <&gpio3>;
-		interrupts = <27 IRQ_TYPE_LEVEL_LOW>;
-		#gpio-cells = <2>;
-		gpio-controller;
-		pinctrl-0 = <&pinctrl_pcal6524>;
-		pinctrl-names = "default";
-	};
-
-	pmic@25 {
-		compatible = "nxp,pca9451a";
-		reg = <0x25>;
-		interrupt-parent = <&pcal6524>;
-		interrupts = <11 IRQ_TYPE_EDGE_FALLING>;
-
-		regulators {
-
-			buck1: BUCK1 {
-				regulator-name = "BUCK1";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <650000>;
-				regulator-max-microvolt = <2237500>;
-				regulator-ramp-delay = <3125>;
-			};
-
-			buck2: BUCK2 {
-				regulator-name = "BUCK2";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <2187500>;
-				regulator-ramp-delay = <3125>;
-			};
-
-			buck4: BUCK4 {
-				regulator-name = "BUCK4";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <3400000>;
-			};
-
-			buck5: BUCK5 {
-				regulator-name = "BUCK5";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <3400000>;
-			};
-
-			buck6: BUCK6 {
-				regulator-name = "BUCK6";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <600000>;
-				regulator-max-microvolt = <3400000>;
-			};
-
-			ldo1: LDO1 {
-				regulator-name = "LDO1";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1600000>;
-				regulator-max-microvolt = <3300000>;
-			};
-
-			ldo4: LDO4 {
-				regulator-name = "LDO4";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <3300000>;
-			};
-
-			ldo5: LDO5 {
-				regulator-name = "LDO5";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-			};
-		};
-	};
-
-	eeprom: eeprom@50 {
-		compatible = "atmel,24c256";
-		reg = <0x50>;
-		pagesize = <64>;
-	};
-};
-
-&lpi2c3 {
-	#address-cells = <1>;
-	#size-cells = <0>;
-	clock-frequency = <400000>;
-	pinctrl-0 = <&pinctrl_lpi2c3>;
-	pinctrl-names = "default";
-	status = "okay";
-
-	ptn5110: tcpc@50 {
-		compatible = "nxp,ptn5110", "tcpci";
-		reg = <0x50>;
-		interrupt-parent = <&gpio3>;
-		interrupts = <27 IRQ_TYPE_LEVEL_LOW>;
-
-		typec1_con: connector {
-			compatible = "usb-c-connector";
-			data-role = "dual";
-			label = "USB-C";
-			op-sink-microwatt = <15000000>;
-			power-role = "dual";
-			self-powered;
-			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
-				     PDO_VAR(5000, 20000, 3000)>;
-			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
-			try-power-role = "sink";
-
-			ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				port@0 {
-					reg = <0>;
-
-					typec1_dr_sw: endpoint {
-						remote-endpoint = <&usb1_drd_sw>;
-					};
-				};
-			};
-		};
-	};
-
-	pcf2131: rtc@53 {
-		compatible = "nxp,pcf2131";
-		reg = <0x53>;
-		interrupt-parent = <&pcal6524>;
-		interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
-	};
-};
-
-&lpuart1 { /* console */
-	pinctrl-0 = <&pinctrl_uart1>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-&usbotg1 {
-	adp-disable;
-	disable-over-current;
-	dr_mode = "otg";
-	hnp-disable;
-	srp-disable;
-	usb-role-switch;
-	samsung,picophy-dc-vol-level-adjust = <7>;
-	samsung,picophy-pre-emp-curr-control = <3>;
-	status = "okay";
-
-	port {
-
-		usb1_drd_sw: endpoint {
-			remote-endpoint = <&typec1_dr_sw>;
-		};
-	};
-};
-
-&usbotg2 {
-	disable-over-current;
-	dr_mode = "host";
-	samsung,picophy-dc-vol-level-adjust = <7>;
-	samsung,picophy-pre-emp-curr-control = <3>;
-	status = "okay";
-};
-
-&usdhc1 {
-	bus-width = <8>;
-	non-removable;
-	pinctrl-0 = <&pinctrl_usdhc1>;
-	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
-	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
-	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-	status = "okay";
-};
-
-&usdhc2 {
-	bus-width = <4>;
-	cd-gpios = <&gpio3 00 GPIO_ACTIVE_LOW>;
-	no-mmc;
-	no-sdio;
-	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
-	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
-	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
-	pinctrl-3 = <&pinctrl_usdhc2_sleep>, <&pinctrl_usdhc2_gpio_sleep>;
-	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
-	vmmc-supply = <&reg_usdhc2_vmmc>;
-	status = "okay";
-};
-
-&wdog3 {
-	status = "okay";
-};
-
-&iomuxc {
-
-	pinctrl_eqos: eqosgrp {
-		fsl,pins = <
-			MX93_PAD_ENET1_MDC__ENET_QOS_MDC			0x57e
-			MX93_PAD_ENET1_MDIO__ENET_QOS_MDIO			0x57e
-			MX93_PAD_ENET1_RD0__ENET_QOS_RGMII_RD0			0x57e
-			MX93_PAD_ENET1_RD1__ENET_QOS_RGMII_RD1			0x57e
-			MX93_PAD_ENET1_RD2__ENET_QOS_RGMII_RD2			0x57e
-			MX93_PAD_ENET1_RD3__ENET_QOS_RGMII_RD3			0x57e
-			MX93_PAD_ENET1_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x58e
-			MX93_PAD_ENET1_RX_CTL__ENET_QOS_RGMII_RX_CTL		0x57e
-			MX93_PAD_ENET1_TD0__ENET_QOS_RGMII_TD0			0x57e
-			MX93_PAD_ENET1_TD1__ENET_QOS_RGMII_TD1			0x57e
-			MX93_PAD_ENET1_TD2__ENET_QOS_RGMII_TD2			0x57e
-			MX93_PAD_ENET1_TD3__ENET_QOS_RGMII_TD3			0x57e
-			MX93_PAD_ENET1_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x58e
-			MX93_PAD_ENET1_TX_CTL__ENET_QOS_RGMII_TX_CTL		0x57e
-		>;
-	};
-
-	pinctrl_eqos_sleep: eqossleepgrp {
-		fsl,pins = <
-			MX93_PAD_ENET1_MDC__GPIO4_IO00				0x31e
-			MX93_PAD_ENET1_MDIO__GPIO4_IO01				0x31e
-			MX93_PAD_ENET1_RD0__GPIO4_IO10				0x31e
-			MX93_PAD_ENET1_RD1__GPIO4_IO11				0x31e
-			MX93_PAD_ENET1_RD2__GPIO4_IO12				0x31e
-			MX93_PAD_ENET1_RD3__GPIO4_IO13				0x31e
-			MX93_PAD_ENET1_RXC__GPIO4_IO09				0x31e
-			MX93_PAD_ENET1_RX_CTL__GPIO4_IO08			0x31e
-			MX93_PAD_ENET1_TD0__GPIO4_IO05				0x31e
-			MX93_PAD_ENET1_TD1__GPIO4_IO04				0x31e
-			MX93_PAD_ENET1_TD2__GPIO4_IO03				0x31e
-			MX93_PAD_ENET1_TD3__GPIO4_IO02				0x31e
-			MX93_PAD_ENET1_TXC__GPIO4_IO07				0x31e
-			MX93_PAD_ENET1_TX_CTL__GPIO4_IO06			0x31e
-		>;
-	};
-
-	pinctrl_fec: fecgrp {
-		fsl,pins = <
-			MX93_PAD_ENET2_MDC__ENET1_MDC			0x57e
-			MX93_PAD_ENET2_MDIO__ENET1_MDIO			0x57e
-			MX93_PAD_ENET2_RD0__ENET1_RGMII_RD0		0x57e
-			MX93_PAD_ENET2_RD1__ENET1_RGMII_RD1		0x57e
-			MX93_PAD_ENET2_RD2__ENET1_RGMII_RD2		0x57e
-			MX93_PAD_ENET2_RD3__ENET1_RGMII_RD3		0x57e
-			MX93_PAD_ENET2_RXC__ENET1_RGMII_RXC		0x58e
-			MX93_PAD_ENET2_RX_CTL__ENET1_RGMII_RX_CTL	0x57e
-			MX93_PAD_ENET2_TD0__ENET1_RGMII_TD0		0x57e
-			MX93_PAD_ENET2_TD1__ENET1_RGMII_TD1		0x57e
-			MX93_PAD_ENET2_TD2__ENET1_RGMII_TD2		0x57e
-			MX93_PAD_ENET2_TD3__ENET1_RGMII_TD3		0x57e
-			MX93_PAD_ENET2_TXC__ENET1_RGMII_TXC		0x58e
-			MX93_PAD_ENET2_TX_CTL__ENET1_RGMII_TX_CTL	0x57e
-		>;
-	};
-
-	pinctrl_fec_sleep: fecsleepgrp {
-		fsl,pins = <
-			MX93_PAD_ENET2_MDC__GPIO4_IO14			0x51e
-			MX93_PAD_ENET2_MDIO__GPIO4_IO15			0x51e
-			MX93_PAD_ENET2_RD0__GPIO4_IO24			0x51e
-			MX93_PAD_ENET2_RD1__GPIO4_IO25			0x51e
-			MX93_PAD_ENET2_RD2__GPIO4_IO26			0x51e
-			MX93_PAD_ENET2_RD3__GPIO4_IO27			0x51e
-			MX93_PAD_ENET2_RXC__GPIO4_IO23			0x51e
-			MX93_PAD_ENET2_RX_CTL__GPIO4_IO22		0x51e
-			MX93_PAD_ENET2_TD0__GPIO4_IO19			0x51e
-			MX93_PAD_ENET2_TD1__GPIO4_IO18			0x51e
-			MX93_PAD_ENET2_TD2__GPIO4_IO17			0x51e
-			MX93_PAD_ENET2_TD3__GPIO4_IO16			0x51e
-			MX93_PAD_ENET2_TXC__GPIO4_IO21			0x51e
-			MX93_PAD_ENET2_TX_CTL__GPIO4_IO20		0x51e
-		>;
-	};
-
-	pinctrl_lpi2c2: lpi2c2grp {
-		fsl,pins = <
-			MX93_PAD_I2C2_SCL__LPI2C2_SCL			0x40000b9e
-			MX93_PAD_I2C2_SDA__LPI2C2_SDA			0x40000b9e
-		>;
-	};
-
-	pinctrl_lpi2c3: lpi2c3grp {
-		fsl,pins = <
-			MX93_PAD_GPIO_IO28__LPI2C3_SDA			0x40000b9e
-			MX93_PAD_GPIO_IO29__LPI2C3_SCL			0x40000b9e
-		>;
-	};
-
-	pinctrl_pcal6524: pcal6524grp {
-		fsl,pins = <
-			MX93_PAD_CCM_CLKO2__GPIO3_IO27			0x31e
-		>;
-	};
-
-	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
-		fsl,pins = <
-			MX93_PAD_SD2_RESET_B__GPIO3_IO07	0x31e
-		>;
-	};
-
-	pinctrl_uart1: uart1grp {
-		fsl,pins = <
-			MX93_PAD_UART1_RXD__LPUART1_RX			0x31e
-			MX93_PAD_UART1_TXD__LPUART1_TX			0x31e
-		>;
-	};
-
-	/* need to config the SION for data and cmd pad, refer to ERR052021 */
-	pinctrl_usdhc1: usdhc1grp {
-		fsl,pins = <
-			MX93_PAD_SD1_CLK__USDHC1_CLK		0x1582
-			MX93_PAD_SD1_CMD__USDHC1_CMD		0x40001382
-			MX93_PAD_SD1_DATA0__USDHC1_DATA0	0x40001382
-			MX93_PAD_SD1_DATA1__USDHC1_DATA1	0x40001382
-			MX93_PAD_SD1_DATA2__USDHC1_DATA2	0x40001382
-			MX93_PAD_SD1_DATA3__USDHC1_DATA3	0x40001382
-			MX93_PAD_SD1_DATA4__USDHC1_DATA4	0x40001382
-			MX93_PAD_SD1_DATA5__USDHC1_DATA5	0x40001382
-			MX93_PAD_SD1_DATA6__USDHC1_DATA6	0x40001382
-			MX93_PAD_SD1_DATA7__USDHC1_DATA7	0x40001382
-			MX93_PAD_SD1_STROBE__USDHC1_STROBE	0x1582
-		>;
-	};
-
-	/* need to config the SION for data and cmd pad, refer to ERR052021 */
-	pinctrl_usdhc1_100mhz: usdhc1-100mhzgrp {
-		fsl,pins = <
-			MX93_PAD_SD1_CLK__USDHC1_CLK		0x158e
-			MX93_PAD_SD1_CMD__USDHC1_CMD		0x4000138e
-			MX93_PAD_SD1_DATA0__USDHC1_DATA0	0x4000138e
-			MX93_PAD_SD1_DATA1__USDHC1_DATA1	0x4000138e
-			MX93_PAD_SD1_DATA2__USDHC1_DATA2	0x4000138e
-			MX93_PAD_SD1_DATA3__USDHC1_DATA3	0x4000138e
-			MX93_PAD_SD1_DATA4__USDHC1_DATA4	0x4000138e
-			MX93_PAD_SD1_DATA5__USDHC1_DATA5	0x4000138e
-			MX93_PAD_SD1_DATA6__USDHC1_DATA6	0x4000138e
-			MX93_PAD_SD1_DATA7__USDHC1_DATA7	0x4000138e
-			MX93_PAD_SD1_STROBE__USDHC1_STROBE	0x158e
-		>;
-	};
-
-	/* need to config the SION for data and cmd pad, refer to ERR052021 */
-	pinctrl_usdhc1_200mhz: usdhc1-200mhzgrp {
-		fsl,pins = <
-			MX93_PAD_SD1_CLK__USDHC1_CLK		0x15fe
-			MX93_PAD_SD1_CMD__USDHC1_CMD		0x400013fe
-			MX93_PAD_SD1_DATA0__USDHC1_DATA0	0x400013fe
-			MX93_PAD_SD1_DATA1__USDHC1_DATA1	0x400013fe
-			MX93_PAD_SD1_DATA2__USDHC1_DATA2	0x400013fe
-			MX93_PAD_SD1_DATA3__USDHC1_DATA3	0x400013fe
-			MX93_PAD_SD1_DATA4__USDHC1_DATA4	0x400013fe
-			MX93_PAD_SD1_DATA5__USDHC1_DATA5	0x400013fe
-			MX93_PAD_SD1_DATA6__USDHC1_DATA6	0x400013fe
-			MX93_PAD_SD1_DATA7__USDHC1_DATA7	0x400013fe
-			MX93_PAD_SD1_STROBE__USDHC1_STROBE	0x15fe
-		>;
-	};
-
-	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
-		fsl,pins = <
-			MX93_PAD_SD2_CD_B__GPIO3_IO00		0x31e
-		>;
-	};
-
-	pinctrl_usdhc2_gpio_sleep: usdhc2gpiosleepgrp {
-		fsl,pins = <
-			MX93_PAD_SD2_CD_B__GPIO3_IO00		0x51e
-		>;
-	};
-
-	/* need to config the SION for data and cmd pad, refer to ERR052021 */
-	pinctrl_usdhc2: usdhc2grp {
-		fsl,pins = <
-			MX93_PAD_SD2_CLK__USDHC2_CLK		0x1582
-			MX93_PAD_SD2_CMD__USDHC2_CMD		0x40001382
-			MX93_PAD_SD2_DATA0__USDHC2_DATA0	0x40001382
-			MX93_PAD_SD2_DATA1__USDHC2_DATA1	0x40001382
-			MX93_PAD_SD2_DATA2__USDHC2_DATA2	0x40001382
-			MX93_PAD_SD2_DATA3__USDHC2_DATA3	0x40001382
-			MX93_PAD_SD2_VSELECT__USDHC2_VSELECT	0x51e
-		>;
-	};
-
-	/* need to config the SION for data and cmd pad, refer to ERR052021 */
-	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
-		fsl,pins = <
-			MX93_PAD_SD2_CLK__USDHC2_CLK		0x158e
-			MX93_PAD_SD2_CMD__USDHC2_CMD		0x4000138e
-			MX93_PAD_SD2_DATA0__USDHC2_DATA0	0x4000138e
-			MX93_PAD_SD2_DATA1__USDHC2_DATA1	0x4000138e
-			MX93_PAD_SD2_DATA2__USDHC2_DATA2	0x4000138e
-			MX93_PAD_SD2_DATA3__USDHC2_DATA3	0x4000138e
-			MX93_PAD_SD2_VSELECT__USDHC2_VSELECT	0x51e
-		>;
-	};
-
-	/* need to config the SION for data and cmd pad, refer to ERR052021 */
-	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
-		fsl,pins = <
-			MX93_PAD_SD2_CLK__USDHC2_CLK		0x15fe
-			MX93_PAD_SD2_CMD__USDHC2_CMD		0x400013fe
-			MX93_PAD_SD2_DATA0__USDHC2_DATA0	0x400013fe
-			MX93_PAD_SD2_DATA1__USDHC2_DATA1	0x400013fe
-			MX93_PAD_SD2_DATA2__USDHC2_DATA2	0x400013fe
-			MX93_PAD_SD2_DATA3__USDHC2_DATA3	0x400013fe
-			MX93_PAD_SD2_VSELECT__USDHC2_VSELECT	0x51e
-		>;
-	};
-
-	pinctrl_usdhc2_sleep: usdhc2-sleepgrp {
-		fsl,pins = <
-			MX93_PAD_SD2_CLK__GPIO3_IO01		0x51e
-			MX93_PAD_SD2_CMD__GPIO3_IO02		0x51e
-			MX93_PAD_SD2_DATA0__GPIO3_IO03		0x51e
-			MX93_PAD_SD2_DATA1__GPIO3_IO04		0x51e
-			MX93_PAD_SD2_DATA2__GPIO3_IO05		0x51e
-			MX93_PAD_SD2_DATA3__GPIO3_IO06		0x51e
-			MX93_PAD_SD2_VSELECT__GPIO3_IO19	0x51e
-		>;
-	};
-};
+#include <arm64/freescale/imx93-11x11-frdm.dts>
 #include "imx93.dtsi"
-- 
2.47.3



