Delivery-date: Mon, 20 Apr 2026 14:45:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEo0T-00ELVy-2g
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 14:45:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEo0S-0000DF-An
	for lore@pengutronix.de; Mon, 20 Apr 2026 14:45:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0ICUZWsmtqyY1cac2PWMbID/XBNCa4YdczefmOJMJEQ=; b=PSm9Ynykb1y5FN7CxcXk5qGiXP
	URTanim6zlBCvKSBqEnohUnRGmrpD90YzSclScBVulIvMXauxrAaZgKA+qyn5/EbPG9Zqfm28nzoy
	U0lgcbpRQiSx3R1229j7SNHB7wcYtiA0Vp+HBZF9wRzy7NGTbxpAm3xDTtBX1HnrcRSpNQtNxmE3V
	AH9Zmg3ud5dWDHvXpXa1QdDHwwPmq5kOMQzGYCvK7DNW2QnhTQx58a1I51n6Zg3rarzoHyCYAk0XF
	NlW2QTNACwANXXaXIV1pveMSb6ZC71zq0zqMsJo71/tHuUMDzA2oLTTVhi27E9AWpb9KFH1mZu8FH
	oDbM+hHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEnzt-00000006u4y-2sZz;
	Mon, 20 Apr 2026 12:45:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEnzq-00000006u33-1UvS
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 12:45:03 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pfitzner@pengutronix.de>)
	id 1wEnzn-0008Ta-ED; Mon, 20 Apr 2026 14:44:59 +0200
From: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Date: Mon, 20 Apr 2026 14:44:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260420-fpf-imx8mp-frdm-v2-1-5107d1976d4e@pengutronix.de>
References: <20260420-fpf-imx8mp-frdm-v2-0-5107d1976d4e@pengutronix.de>
In-Reply-To: <20260420-fpf-imx8mp-frdm-v2-0-5107d1976d4e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_054502_714487_08735923 
X-CRM114-Status: GOOD (  12.22  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] DONT MERGE: dts: backport NXP i.MX8MP FRDM board
 dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Backport the NXP i.MX8MP FRDM DT temporarily from the Linux kernel [1].
The commit was merged into the master branch, but is not yet
included in any release.

This patch can be dropped after v7.1-rc1 was merged into Barebox.

[1] 95d7d7d2ad27d ("arm64: dts: imx8mp-frdm: add sd, ethernet, wifi, usb and hdmi support")

Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
---
 dts/src/arm64/freescale/imx8mp-frdm.dts | 538 +++++++++++++++++++++++++++++---
 1 file changed, 490 insertions(+), 48 deletions(-)

diff --git a/dts/src/arm64/freescale/imx8mp-frdm.dts b/dts/src/arm64/freescale/imx8mp-frdm.dts
index 55690f5e53d7e1fbf7eae8a1f31eb064465ccb6c..5fb9714215bfe69946843b658b595e9982eab38c 100644
--- a/dts/src/arm64/freescale/imx8mp-frdm.dts
+++ b/dts/src/arm64/freescale/imx8mp-frdm.dts
@@ -42,6 +42,67 @@ memory@40000000 {
 		reg = <0x0 0x40000000 0 0xc0000000>,
 		      <0x1 0x00000000 0 0x40000000>;
 	};
+
+	native-hdmi-connector {
+		compatible = "hdmi-connector";
+		label = "HDMI OUT";
+		type = "a";
+
+		port {
+			hdmi_in: endpoint {
+				remote-endpoint = <&hdmi_tx_out>;
+			};
+		};
+	};
+
+	reg_usdhc2_vmmc: regulator-sd {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
+		regulator-name = "VSD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_usb_vbus: regulator-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "USB_VBUS";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&pcal6416_1 5 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_usdhc1_vmmc: regulator-wifi-vmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "WLAN_EN";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&pcal6416_1 10 GPIO_ACTIVE_HIGH>;
+		/*
+		 * IW612 wifi chip needs more delay than other wifi chips to complete
+		 * the host interface initialization after power up, otherwise the
+		 * internal state of IW612 may be unstable, resulting in the failure of
+		 * the SDIO3.0 switch voltage.
+		 */
+		enable-active-high;
+		startup-delay-us = <20000>;
+	};
+
+	reg_usdhc1_vqmmc: regulator-wifi-vqmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "regulator-wifi-vqmmc";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		enable-active-high;
+	};
+
+	sdio_pwrseq: usdhc1-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&gpio2 10 GPIO_ACTIVE_LOW>;
+	};
 };
 
 &A53_0 {
@@ -60,6 +121,146 @@ &A53_3 {
 	cpu-supply = <&reg_arm>;
 };
 
+&eqos {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_eqos>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	snps,force_thresh_dma_mode;
+	snps,mtl-tx-config = <&mtl_tx_setup>;
+	snps,mtl-rx-config = <&mtl_rx_setup>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@2 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <2>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_eqos_phy>;
+			reset-gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <80000>;
+		};
+	};
+
+	mtl_tx_setup: tx-queues-config {
+		snps,tx-queues-to-use = <5>;
+
+		queue0 {
+			snps,dcb-algorithm;
+			snps,priority = <0x1>;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+			snps,priority = <0x2>;
+		};
+
+		queue2 {
+			snps,dcb-algorithm;
+			snps,priority = <0x4>;
+		};
+
+		queue3 {
+			snps,dcb-algorithm;
+			snps,priority = <0x8>;
+		};
+
+		queue4 {
+			snps,dcb-algorithm;
+			snps,priority = <0xf0>;
+		};
+	};
+
+	mtl_rx_setup: rx-queues-config {
+		snps,rx-queues-to-use = <5>;
+		snps,rx-sched-sp;
+
+		queue0 {
+			snps,dcb-algorithm;
+			snps,priority = <0x1>;
+			snps,map-to-dma-channel = <0>;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+			snps,priority = <0x2>;
+			snps,map-to-dma-channel = <1>;
+		};
+
+		queue2 {
+			snps,dcb-algorithm;
+			snps,priority = <0x4>;
+			snps,map-to-dma-channel = <2>;
+		};
+
+		queue3 {
+			snps,dcb-algorithm;
+			snps,priority = <0x8>;
+			snps,map-to-dma-channel = <3>;
+		};
+
+		queue4 {
+			snps,dcb-algorithm;
+			snps,priority = <0xf0>;
+			snps,map-to-dma-channel = <4>;
+		};
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy1>;
+	fsl,magic-packet;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy1: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_fec_phy>;
+			eee-broken-1000t;
+			reset-gpios = <&gpio4 2 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <80000>;
+			realtek,aldps-enable;
+			realtek,clkout-disable;
+		};
+	};
+};
+
+&hdmi_pvi {
+	status = "okay";
+};
+
+&hdmi_tx {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hdmi>;
+	status = "okay";
+
+	ports {
+		port@1 {
+			hdmi_tx_out: endpoint {
+				remote-endpoint = <&hdmi_in>;
+			};
+		};
+	};
+};
+
+&hdmi_tx_phy {
+	status = "okay";
+};
+
 &i2c1 {
 	clock-frequency = <400000>;
 	pinctrl-names = "default";
@@ -218,6 +419,10 @@ &i2c3 {
 	status = "okay";
 };
 
+&lcdif3 {
+	status = "okay";
+};
+
 &snvs_pwrkey {
 	status = "okay";
 };
@@ -237,6 +442,58 @@ &uart3 {
 	status = "okay";
 };
 
+&usb3_0 {
+	status = "okay";
+};
+
+&usb3_1 {
+	status = "okay";
+};
+
+&usb3_phy0 {
+	status = "okay";
+};
+
+&usb3_phy1 {
+	vbus-supply = <&reg_usb_vbus>;
+	status = "okay";
+};
+
+&usb_dwc3_1 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usdhc1 {
+	assigned-clocks = <&clk IMX8MP_CLK_USDHC1>;
+	assigned-clock-rates = <200000000>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	vmmc-supply = <&reg_usdhc1_vmmc>;
+	vqmmc-supply = <&reg_usdhc1_vqmmc>;
+	bus-width = <4>;
+	non-removable;
+	no-sd;
+	no-mmc;
+	status = "okay";
+};
+
+&usdhc2 {
+	assigned-clocks = <&clk IMX8MP_CLK_USDHC2>;
+	assigned-clock-rates = <400000000>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &usdhc3 {
 	assigned-clocks = <&clk IMX8MP_CLK_USDHC3>;
 	assigned-clock-rates = <400000000>;
@@ -250,106 +507,291 @@ &usdhc3 {
 };
 
 &iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	pinctrl_eqos: eqosgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC				0x2
+			MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO				0x2
+			MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0			0x90
+			MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1			0x90
+			MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2			0x90
+			MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3			0x90
+			MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x90
+			MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL			0x90
+			MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0			0x16
+			MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1			0x16
+			MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2			0x16
+			MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3			0x16
+			MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL			0x16
+			MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x16
+		>;
+	};
+
+	pinctrl_eqos_phy: eqosphygrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI2_RXC__GPIO4_IO22				0x10
+		>;
+	};
+
+	pinctrl_fec: fecgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI1_RXD2__ENET1_MDC		0x2
+			MX8MP_IOMUXC_SAI1_RXD3__ENET1_MDIO		0x2
+			MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0		0x90
+			MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1		0x90
+			MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2		0x90
+			MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3		0x90
+			MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC		0x90
+			MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL	0x90
+			MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0		0x16
+			MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1		0x16
+			MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2		0x16
+			MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3		0x16
+			MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL	0x16
+			MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC		0x16
+		>;
+	};
+
+	pinctrl_fec_phy: fecphygrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI1_RXD0__GPIO4_IO02		0x10
+		>;
+	};
+
+	pinctrl_hdmi: hdmigrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC		0x10
+		>;
+	};
+
+	pinctrl_hog: hoggrp {
+		fsl,pins = <
+			/* Pin might be required by multiple drivers
+			 * (e. g. HDMI Audio and HDMI TX)
+			 */
+			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD		0x40000010
+		>;
+	};
+
 	pinctrl_i2c1: i2c1grp {
 		fsl,pins = <
-			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL	0x400001c2
-			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA	0x400001c2
+			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL	(MX8MP_DSE_X4 | MX8MP_I2C_DEFAULT)
+			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA	(MX8MP_DSE_X4 | MX8MP_I2C_DEFAULT)
 		>;
 	};
 
 	pinctrl_i2c2: i2c2grp {
 		fsl,pins = <
-			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL	0x400001c2
-			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA	0x400001c2
+			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL	(MX8MP_DSE_X4 | MX8MP_I2C_DEFAULT)
+			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA	(MX8MP_DSE_X4 | MX8MP_I2C_DEFAULT)
 		>;
 	};
 
 	pinctrl_i2c3: i2c3grp {
 		fsl,pins = <
-			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL	0x400001c2
-			MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA	0x400001c2
+			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL	(MX8MP_DSE_X4 | MX8MP_I2C_DEFAULT)
+			MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA	(MX8MP_DSE_X4 | MX8MP_I2C_DEFAULT)
 		>;
 	};
 
 	pinctrl_pmic: pmicgrp {
 		fsl,pins = <
-			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03	0x000001c0
+			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03
+				(MX8MP_PULL_UP | MX8MP_HYS_SCHMITT | MX8MP_PULL_ENABLE)
 		>;
 	};
 
 	pinctrl_pcal6416_0_int: pcal6416-0-int-grp {
 		fsl,pins = <
-			MX8MP_IOMUXC_NAND_READY_B__GPIO3_IO16	0x146
+			MX8MP_IOMUXC_NAND_READY_B__GPIO3_IO16
+				(MX8MP_DSE_X6 | MX8MP_PULL_UP | MX8MP_PULL_ENABLE)
 		>;
 	};
 
 	pinctrl_pcal6416_1_int: pcal6416-1-int-grp {
 		fsl,pins = <
-			MX8MP_IOMUXC_SD1_STROBE__GPIO2_IO11	0x146
+			MX8MP_IOMUXC_SD1_STROBE__GPIO2_IO11
+				(MX8MP_DSE_X6 | MX8MP_PULL_UP | MX8MP_PULL_ENABLE)
+
+		>;
+	};
+
+	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	0x40
 		>;
 	};
 
 	pinctrl_uart2: uart2grp {
 		fsl,pins = <
-			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX	0x140
-			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX	0x140
+			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX	(MX8MP_PULL_UP | MX8MP_PULL_ENABLE)
+			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX	(MX8MP_PULL_UP | MX8MP_PULL_ENABLE)
+
 		>;
 	};
 
 	pinctrl_uart3: uart3grp {
 		fsl,pins = <
-			MX8MP_IOMUXC_ECSPI1_SCLK__UART3_DCE_RX	0x140
-			MX8MP_IOMUXC_ECSPI1_MOSI__UART3_DCE_TX	0x140
-			MX8MP_IOMUXC_ECSPI1_SS0__UART3_DCE_RTS	0x140
-			MX8MP_IOMUXC_ECSPI1_MISO__UART3_DCE_CTS	0x140
+			MX8MP_IOMUXC_ECSPI1_SCLK__UART3_DCE_RX	(MX8MP_PULL_UP | MX8MP_PULL_ENABLE)
+			MX8MP_IOMUXC_ECSPI1_MOSI__UART3_DCE_TX	(MX8MP_PULL_UP | MX8MP_PULL_ENABLE)
+			MX8MP_IOMUXC_ECSPI1_SS0__UART3_DCE_RTS	(MX8MP_PULL_UP | MX8MP_PULL_ENABLE)
+			MX8MP_IOMUXC_ECSPI1_MISO__UART3_DCE_CTS	(MX8MP_PULL_UP | MX8MP_PULL_ENABLE)
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK	0x190
+			MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD	0x1d0
+			MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0	0x1d0
+			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1	0x1d0
+			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2	0x1d0
+			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3	0x1d0
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1-100mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK	0x194
+			MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD	0x1d4
+			MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0	0x1d4
+			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1	0x1d4
+			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2	0x1d4
+			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3	0x1d4
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1-200mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK	0x196
+			MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD	0x1d6
+			MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0	0x1d6
+			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1	0x1d6
+			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2	0x1d6
+			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3	0x1d6
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x190
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d0
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d0
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d0
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d0
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d0
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc0
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x194
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d4
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d4
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d4
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d4
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d4
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT 0xc0
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x196
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d6
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d6
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d6
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d6
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d6
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT 0xc0
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12	0x1c4
 		>;
 	};
 
 	pinctrl_usdhc3: usdhc3grp {
 		fsl,pins = <
-			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x190
-			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d0
-			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d0
-			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d0
-			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d0
-			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d0
-			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d0
-			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d0
-			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d0
-			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d0
-			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x190
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK
+				(MX8MP_FSEL_FAST | MX8MP_HYS_SCHMITT | MX8MP_PULL_ENABLE)
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD
+				(MX8MP_FSEL_FAST | MX8MP_PULL_UP |
+				MX8MP_HYS_SCHMITT | MX8MP_PULL_ENABLE)
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	MX8MP_USDHC_DATA_DEFAULT
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	MX8MP_USDHC_DATA_DEFAULT
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	MX8MP_USDHC_DATA_DEFAULT
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	MX8MP_USDHC_DATA_DEFAULT
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	MX8MP_USDHC_DATA_DEFAULT
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	MX8MP_USDHC_DATA_DEFAULT
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	MX8MP_USDHC_DATA_DEFAULT
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	MX8MP_USDHC_DATA_DEFAULT
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE
+				(MX8MP_FSEL_FAST | MX8MP_HYS_SCHMITT | MX8MP_PULL_ENABLE)
 		>;
 	};
 
 	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
 		fsl,pins = <
-			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x194
-			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d4
-			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d4
-			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d4
-			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d4
-			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d4
-			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d4
-			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d4
-			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d4
-			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d4
-			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x194
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK
+				(MX8MP_DSE_X2 | MX8MP_FSEL_FAST |
+				MX8MP_HYS_SCHMITT | MX8MP_PULL_ENABLE)
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD
+				(MX8MP_DSE_X2 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0
+				(MX8MP_DSE_X2 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1
+				(MX8MP_DSE_X2 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2
+				(MX8MP_DSE_X2 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3
+				(MX8MP_DSE_X2 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4
+				(MX8MP_DSE_X2 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5
+				(MX8MP_DSE_X2 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6
+				(MX8MP_DSE_X2 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7
+				(MX8MP_DSE_X2 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE
+				(MX8MP_DSE_X2 | MX8MP_FSEL_FAST |
+				MX8MP_HYS_SCHMITT | MX8MP_PULL_ENABLE)
 		>;
 	};
 
 	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
 		fsl,pins = <
-			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x196
-			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d6
-			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d6
-			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d6
-			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d6
-			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d6
-			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d6
-			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d6
-			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d6
-			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d6
-			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x196
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK
+				(MX8MP_DSE_X6 | MX8MP_FSEL_FAST |
+				MX8MP_HYS_SCHMITT | MX8MP_PULL_ENABLE)
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD
+				(MX8MP_DSE_X6 | MX8MP_FSEL_FAST | MX8MP_PULL_UP |
+				MX8MP_HYS_SCHMITT | MX8MP_PULL_ENABLE)
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0
+				(MX8MP_DSE_X6 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1
+				(MX8MP_DSE_X6 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2
+				(MX8MP_DSE_X6 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3
+				(MX8MP_DSE_X6 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4
+				(MX8MP_DSE_X6 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5
+				(MX8MP_DSE_X6 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6
+				(MX8MP_DSE_X6 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7
+				(MX8MP_DSE_X6 | MX8MP_USDHC_DATA_DEFAULT)
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE
+				(MX8MP_DSE_X6 | MX8MP_FSEL_FAST |
+				MX8MP_HYS_SCHMITT | MX8MP_PULL_ENABLE)
 		>;
 	};
 };

-- 
2.47.3



