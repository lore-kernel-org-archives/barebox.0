Delivery-date: Mon, 19 Jan 2026 16:39:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhrM1-0034cu-1C
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 16:39:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhrLz-0005yO-Mq
	for lore@pengutronix.de; Mon, 19 Jan 2026 16:39:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=obg9FDxZyPFwkysJfo2N886/CQe6RSTA7ve3111cxQ4=; b=Es10T3W3VnzrWVfJxhDlZXZss6
	RrnX9w+S3vfK0VXtZUMnYQMIhlTnbeMHZiHTN2UgxKCC194unqtgeQ/8JN4YXaR7vLzJUoI6ilr6R
	ZLakE50tf9wCN714ZxCcgSnX5WWgwF1A2zAd9xLfLzxOCa7M9Fc66W0IlgtBMC/oeVTay1IeOhfTb
	HZdfgYZDxgROJ4vH2peFuTyarnq6T2YL9Z/x8pAPi9sflmkGtX/S2+Nn0vJKq0ftxd5SYFICFhOyP
	gUtIT8PWpjsTlFg6RV8C5+4d2zUWEZOS5mHjUvCCh42/87+g/esoF5BS16/BK7P5V0pjxDRufO1dS
	t3h1M2VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhrL1-00000002N1b-3dQU;
	Mon, 19 Jan 2026 15:38:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhrKZ-00000002N0N-3ZmL
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 15:38:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhrKY-0005dn-7G; Mon, 19 Jan 2026 16:38:14 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhrKY-001RJ1-2G;
	Mon, 19 Jan 2026 16:38:14 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhrKX-003QEN-32;
	Mon, 19 Jan 2026 16:38:13 +0100
Date: Mon, 19 Jan 2026 16:38:13 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Message-ID: <20260119153813.ipdm7asoox6vkif6@pengutronix.de>
References: <20260119-fpf-imx8mp-frdm-v1-0-13fac69eda23@pengutronix.de>
 <20260119-fpf-imx8mp-frdm-v1-3-13fac69eda23@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119-fpf-imx8mp-frdm-v1-3-13fac69eda23@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_073816_289222_6FB71A3C 
X-CRM114-Status: GOOD (  25.48  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] dts: imx8mp-frdm: import downstream changes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Fabian,

thanks for the patch, please see below.

On 26-01-19, Fabian Pfitzner wrote:
> Import NXP downstream dts [1] changes needed for Barebox.
> These changes integrate support for
> 
> - SD Card
> - Ethernet(FEC + EQOS)
> - USB
> 
> [1] https://github.com/nxp-imx/linux-imx
> 
> Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
> ---
>  arch/arm/dts/imx8mp-frdm.dts | 427 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 427 insertions(+)
> 
> diff --git a/arch/arm/dts/imx8mp-frdm.dts b/arch/arm/dts/imx8mp-frdm.dts
> index 1a41c60b22159f51f56af67f03bb8409b11a7080..4d0baa908767fd794610de831f10a7a48492cef1 100644
> --- a/arch/arm/dts/imx8mp-frdm.dts
> +++ b/arch/arm/dts/imx8mp-frdm.dts
> @@ -5,6 +5,8 @@
>  
>  /dts-v1/;
>  
> +#include <dt-bindings/phy/phy-imx8-pcie.h>
> +#include <dt-bindings/usb/pd.h>
>  #include <arm64/freescale/imx8mp.dtsi>
>  
>  #include "imx8mp.dtsi"
> @@ -44,6 +46,59 @@ memory@40000000 {
>  		reg = <0x0 0x40000000 0 0xc0000000>,
>  		      <0x1 0x00000000 0 0x40000000>;
>  	};
> +
> +	pcie0_refclk: pcie0-refclk {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <100000000>;
> +	};

Was there are reason for porting the PCIe nodes too? If not, please drop
them.

> +
> +	reg_pcie0: regulator-pcie {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pcie0_reg>;
> +		regulator-name = "MPCIE_3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio2 6 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +	};
> +
> +	reg_usdhc2_vmmc: regulator-usdhc2 {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
> +		regulator-name = "VSD_3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	reg_usb_vbus: regulator-vbus {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		regulator-name = "USB_VBUS";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&pcal6416_1 5 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +	};
> +
> +	cbtl04gp {
> +		compatible = "nxp,cbtl04gp";
> +		pinctrl-names = "default";
> +		switch-gpios = <&pcal6416_1 4 GPIO_ACTIVE_LOW>;
> +		orientation-switch;
> +
> +		port {
> +			usb3_data_ss: endpoint {
> +				remote-endpoint = <&typec_con_ss>;
> +			};
> +		};
> +	};

I've checked the NXP cbtl04gp and NXP used the wrong driver to drive the
orientation mux. So IMHO this node can be dropped since it will never
make it upstream. Instead the sbu-gpio-mux should be used which covers
all the requirements needed by the cbtl04gp device.

>  };
>  
>  &A53_0 {
> @@ -204,6 +259,46 @@ pcal6416_1: gpio@21 {
>  			"KEYM_PCIE_nWAKE",
>  			"P1_7";
>  	};
> +
> +	ptn5110: tcpc@50 {
> +		compatible = "nxp,ptn5110";

We have no ptn5110 driver yet. Adding it now explicit would be odd,
therefore please drop the node.

> +		pinctrl-names = "default";
> +		reg = <0x50>;
> +		pinctrl-0 = <&pinctrl_typec>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <19 8>;
> +
> +		port {
> +			typec_dr_sw: endpoint {
> +				remote-endpoint = <&usb3_drd_sw>;
> +			};
> +		};
> +
> +		usb_con: connector {
> +			compatible = "usb-c-connector";
> +			label = "USB-C";
> +			power-role = "dual";
> +			data-role = "dual";
> +			try-power-role = "sink";
> +			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
> +			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
> +					 PDO_VAR(5000, 20000, 3000)>;
> +			op-sink-microwatt = <15000000>;
> +			self-powered;
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@1 {
> +					reg = <1>;
> +					typec_con_ss: endpoint {
> +						remote-endpoint = <&usb3_data_ss>;
> +					};
> +				};
> +			};
> +		};
> +	};
>  };
>  
>  &i2c2 {
> @@ -220,6 +315,54 @@ &i2c3 {
>  	status = "okay";
>  };
>  
> +&usb3_phy0 {
> +	fsl,phy-tx-vref-tune-percent = <122>;
> +	fsl,phy-tx-preemp-amp-tune-microamp = <1800>;
> +	fsl,phy-tx-vboost-level-microvolt = <1156>;
> +	fsl,phy-comp-dis-tune-percent = <115>;
> +	fsl,phy-pcs-tx-deemph-3p5db-attenuation-db = <33>;
> +	fsl,phy-pcs-tx-swing-full-percent = <100>;
> +	status = "okay";
> +};
> +
> +&usb3_0 {
> +	status = "okay";
> +};
> +
> +&usb_dwc3_0 {
> +	dr_mode = "otg";

Snce we don't have the required CC-Controller driver yet I would set
the mode to device. For host mode you have the usb3_1 port.

> +	hnp-disable;
> +	srp-disable;
> +	adp-disable;
> +	usb-role-switch;
> +	role-switch-default-mode = "none";
> +	snps,dis-u1-entry-quirk;
> +	snps,dis-u2-entry-quirk;
> +	status = "okay";
> +
> +	port {
> +		usb3_drd_sw: endpoint {
> +			remote-endpoint = <&typec_dr_sw>;
> +		};
> +	};

The port can be dropped to since we don't have the DRD support yet.

> +};
> +
> +&usb3_phy1 {
> +	fsl,phy-tx-preemp-amp-tune-microamp = <1800>;
> +	fsl,phy-tx-vref-tune-percent = <116>;
> +	status = "okay";
> +};
> +
> +&usb3_1 {
> +	status = "okay";
> +};
> +
> +&usb_dwc3_1 {
> +	vbus-supply = <&reg_usb_vbus>;
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
>  &snvs_pwrkey {
>  	status = "okay";
>  };
> @@ -239,6 +382,19 @@ &uart3 {
>  	status = "okay";
>  };
>  
> +&usdhc2 {
> +	assigned-clocks = <&clk IMX8MP_CLK_USDHC2>;
> +	assigned-clock-rates = <400000000>;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> +	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
> +	vmmc-supply = <&reg_usdhc2_vmmc>;
> +	bus-width = <4>;
> +	status = "okay";
> +};
> +
>  &usdhc3 {
>  	assigned-clocks = <&clk IMX8MP_CLK_USDHC3>;
>  	assigned-clock-rates = <400000000>;
> @@ -251,7 +407,208 @@ &usdhc3 {
>  	status = "okay";
>  };
>  
> +&eqos {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_eqos>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy0>;
> +	snps,force_thresh_dma_mode;
> +	snps,mtl-tx-config = <&mtl_tx_setup>;
> +	snps,mtl-rx-config = <&mtl_rx_setup>;

Can we please drop the snps,force_thresh_dma_mode, snps,mtl-tx-config,
snps,mtl-rx-config. It is fine if these properties are coming from a
upstream dts but here we add it explicit to a barebox dts. Therefore I
would like to drop it and the related queue node as well.

> +	status = "okay";
> +
> +	mdio {
> +		compatible = "snps,dwmac-mdio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@2 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <2>;
> +			reset-gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
> +			reset-assert-us = <10000>;
> +			reset-deassert-us = <80000>;
> +			realtek,clkout-disable;
> +		};
> +	};
> +
> +	mtl_tx_setup: tx-queues-config {
> +		snps,tx-queues-to-use = <5>;
> +		snps,tx-sched-sp;
> +
> +		queue0 {
> +			snps,dcb-algorithm;
> +			snps,priority = <0x1>;
> +		};
> +
> +		queue1 {
> +			snps,dcb-algorithm;
> +			snps,priority = <0x2>;
> +		};
> +
> +		queue2 {
> +			snps,dcb-algorithm;
> +			snps,priority = <0x4>;
> +		};
> +
> +		queue3 {
> +			snps,dcb-algorithm;
> +			snps,priority = <0x8>;
> +		};
> +
> +		queue4 {
> +			snps,dcb-algorithm;
> +			snps,priority = <0xf0>;
> +		};
> +	};
> +
> +	mtl_rx_setup: rx-queues-config {
> +		snps,rx-queues-to-use = <5>;
> +		snps,rx-sched-sp;
> +
> +		queue0 {
> +			snps,dcb-algorithm;
> +			snps,priority = <0x1>;
> +			snps,map-to-dma-channel = <0>;
> +		};
> +
> +		queue1 {
> +			snps,dcb-algorithm;
> +			snps,priority = <0x2>;
> +			snps,map-to-dma-channel = <1>;
> +		};
> +
> +		queue2 {
> +			snps,dcb-algorithm;
> +			snps,priority = <0x4>;
> +			snps,map-to-dma-channel = <2>;
> +		};
> +
> +		queue3 {
> +			snps,dcb-algorithm;
> +			snps,priority = <0x8>;
> +			snps,map-to-dma-channel = <3>;
> +		};
> +
> +		queue4 {
> +			snps,dcb-algorithm;
> +			snps,priority = <0xf0>;
> +			snps,map-to-dma-channel = <4>;
> +		};
> +	};
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy1>;
> +	fsl,magic-packet;

Please drop the fsl,magic-packet too.

> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy1: ethernet-phy@1 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <1>;
> +			eee-broken-1000t;
> +			reset-gpios = <&gpio4 2 GPIO_ACTIVE_LOW>;
> +			reset-assert-us = <10000>;
> +			reset-deassert-us = <80000>;
> +			realtek,aldps-enable;
> +			realtek,clkout-disable;
> +		};
> +	};
> +};
> +
> +&pcie_phy {
> +	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
> +	clocks = <&pcie0_refclk>;
> +	clock-names = "ref";
> +	status = "okay";
> +};
> +
> +&pcie {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pcie0>;
> +	reset-gpio = <&gpio2 7 GPIO_ACTIVE_LOW>;
> +	host-wake-gpio = <&gpio5 21 GPIO_ACTIVE_LOW>;
> +	vpcie-supply = <&reg_pcie0>;
> +	status = "okay";
> +};

As said above the PCIe nodes can be removed if not required in barebox.

Regards,
  Marco

> +
>  &iomuxc {
> +	pinctrl-0 = <&pinctrl_hog>;
> +
> +	pinctrl_eqos: eqosgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC				0x2
> +			MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO				0x2
> +			MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0			0x90
> +			MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1			0x90
> +			MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2			0x90
> +			MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3			0x90
> +			MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x90
> +			MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL			0x90
> +			MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0			0x16
> +			MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1			0x16
> +			MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2			0x16
> +			MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3			0x16
> +			MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL			0x16
> +			MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x16
> +			MX8MP_IOMUXC_SAI2_RXC__GPIO4_IO22				0x10
> +		>;
> +	};
> +
> +	pinctrl_fec: fecgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI1_RXD2__ENET1_MDC		0x2
> +			MX8MP_IOMUXC_SAI1_RXD3__ENET1_MDIO		0x2
> +			MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0		0x90
> +			MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1		0x90
> +			MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2		0x90
> +			MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3		0x90
> +			MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC		0x90
> +			MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL	0x90
> +			MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0		0x16
> +			MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1		0x16
> +			MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2		0x16
> +			MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3		0x16
> +			MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL	0x16
> +			MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC		0x16
> +			MX8MP_IOMUXC_SAI1_RXD0__GPIO4_IO02		0x10
> +		>;
> +	};
> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL		0x400001c2
> +			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA		0x400001c2
> +		>;
> +	};
> +
> +	pinctrl_typec: typec1grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI1_TXD7__GPIO4_IO19	0x1c4
> +		>;
> +	};
> +
> +	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	0x40
> +		>;
> +	};
> +
> +	pinctrl_pcie0: pcie0grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C4_SCL__PCIE_CLKREQ_B	0x60 /* open drain, pull up */
> +			MX8MP_IOMUXC_SD1_DATA5__GPIO2_IO07	0x40
> +			MX8MP_IOMUXC_I2C4_SDA__GPIO5_IO21	0x1c4
> +		>;
> +	};
> +
>  	pinctrl_i2c1: i2c1grp {
>  		fsl,pins = <
>  			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL	0x400001c2
> @@ -307,6 +664,76 @@ MX8MP_IOMUXC_ECSPI1_MISO__UART3_DCE_CTS	0x140
>  		>;
>  	};
>  
> +	pinctrl_hog: hoggrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL	0x400001c2
> +			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA	0x400001c2
> +			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD		0x40000010
> +			MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC		0x40000010
> +
> +			/*
> +			 * M.2 pin20 & pin21 need to be set to 11 for 88W9098 to select the
> +			 * default Reference Clock Frequency
> +			 */
> +			MX8MP_IOMUXC_SD1_DATA7__GPIO2_IO09		0x1c4
> +		>;
> +	};
> +
> +	pinctrl_pcie0_reg: pcie0reggrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD1_DATA4__GPIO2_IO06	0x40
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX	0x140
> +			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX	0x140
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x190
> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d0
> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d0
> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d0
> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d0
> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d0
> +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc0
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x194
> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d4
> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d4
> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d4
> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d4
> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d4
> +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT 0xc0
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x196
> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d6
> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d6
> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d6
> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d6
> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d6
> +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT 0xc0
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12	0x1c4
> +		>;
> +	};
> +
>  	pinctrl_usdhc3: usdhc3grp {
>  		fsl,pins = <
>  			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x190
> 
> -- 
> 2.47.3
> 
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


