Delivery-date: Fri, 05 Apr 2024 19:03:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsmyB-00DUbt-0t
	for lore@lore.pengutronix.de;
	Fri, 05 Apr 2024 19:03:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsmy9-0005c3-L4
	for lore@pengutronix.de; Fri, 05 Apr 2024 19:03:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1zQE5LNX8uw4ZmQcj9OVF13UEySaj62VVV9HjeF4f6s=; b=hJbZn8+r8dmreKOJL9WCm3XED+
	zsquR/3oY7CzG69gZbcrWYzyT5MbqKmmbyeou5XtoKgHBsa6zXOs041idfkso8V2R9/xw3EO739yK
	u09xL3IZnwh74N4xEMwviM5ixjw4DHf31F5T5mWftzi+EK3BtTERt+TrxZYAxTRhrLsZtIHGUa+sB
	lO/NTdklsVSbBlV/IB5uoYmY5w/e7PnNMSrtlWiTJrXaPim4hoPHmzkXFRBUHR6hf4/DAU5SmiVpv
	1kDvZvoCazB+t6hxf8HJdrUwySQIjiQbTSl0KXV9YH5fypFngiUTNOTgfPQkPvM086Vy/42lIUVbT
	2zGcGZpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmxQ-000000087lU-3UfH;
	Fri, 05 Apr 2024 17:02:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmxN-000000087kU-2Jal
	for barebox@lists.infradead.org;
	Fri, 05 Apr 2024 17:02:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rsmxL-0004jL-W0; Fri, 05 Apr 2024 19:02:24 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rsmxL-00AaoX-E4; Fri, 05 Apr 2024 19:02:23 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rsmxL-00FjwQ-19;
	Fri, 05 Apr 2024 19:02:23 +0200
Date: Fri, 5 Apr 2024 19:02:23 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20240405170223.k4yijw7wffr3fy4j@pengutronix.de>
References: <20240405-feature-wolfvision-pf5-v1-0-e4a29c0e7fe1@wolfvision.net>
 <20240405-feature-wolfvision-pf5-v1-1-e4a29c0e7fe1@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240405-feature-wolfvision-pf5-v1-1-e4a29c0e7fe1@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_100225_959733_1EB6F0A2 
X-CRM114-Status: GOOD (  16.92  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] DNM: dts: arm64: rockchip: copy pf5 device tree from
 mainline Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Michael,

thanks for your patches.

> DNM: dts: arm64: rockchip: copy pf5 device tree from

I suppose DNM means "do not merge", instead of marking it this way we
put the not yet upstream Linux dts files into arch as well but mark them
as upstream dts file, e.g.:

  - arch/arm/dts/imx8mm-innocomm-wb15-evk-upstream.dts
  - arch/arm/dts/imx8mp-debix-model-a-upstream.dts
  - arch/arm/dts/imx8mp-debix-som-a-bmb-08-upstream.dts
  - arch/arm/dts/imx8mp-debix-som-a-upstream.dtsi

Once the files are usptream we can remove them.

On 24-04-05, Michael Riesch wrote:
> The device tree for the WolfVision PF5 mainboard and the overlay for
> the PF5 IO Expander have been accepted for inclusion in Linux v6.10:
> https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=v6.10-armsoc/dts64
> 
> Once the device tree changes are merged and then integrated into
> barebox this commit should vanish.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  .../rk3568-wolfvision-pf5-io-expander.dtso         | 137 ++++++
>  dts/src/arm64/rockchip/rk3568-wolfvision-pf5.dts   | 528 +++++++++++++++++++++
>  2 files changed, 665 insertions(+)
> 
> diff --git a/dts/src/arm64/rockchip/rk3568-wolfvision-pf5-io-expander.dtso b/dts/src/arm64/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
> new file mode 100644
> index 0000000000..ebcaeafc38
> --- /dev/null
> +++ b/dts/src/arm64/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
> @@ -0,0 +1,137 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> +/*
> + * Device tree overlay for the WolfVision PF5 IO Expander board.
> + *
> + * Copyright (C) 2024 WolfVision GmbH.
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/clock/rk3568-cru.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +
> +&{/} {
> +	gmac0_clkin: external-gmac0-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <50000000>;
> +		clock-output-names = "gmac0_clkin";
> +		#clock-cells = <0>;
> +	};
> +
> +	usb_host_vbus: usb-host-vbus-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usb_host_vbus_en>;
> +		regulator-name = "usb_host_vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc5v_in>;
> +	};
> +
> +	vcc1v8_eth: vcc1v8-eth-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc1v8_eth_en>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-name = "1v8_eth";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	vcc3v3_eth: vcc3v3-eth-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-low;
> +		gpio = <&gpio0 RK_PC0 GPIO_ACTIVE_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc3v3_eth_enn>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-name = "3v3_eth";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +};
> +
> +&gmac0 {
> +	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>,
> +			  <&cru SCLK_GMAC0>;
> +	assigned-clock-parents = <&cru SCLK_GMAC0_RMII_SPEED>,
> +				 <&gmac0_clkin>;
> +	clock_in_out = "input";
> +	phy-handle = <&dp83826>;
> +	phy-mode = "rmii";
> +	phy-supply = <&vcc3v3_eth>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac0_miim
> +		     &gmac0_clkinout
> +		     &gmac0_rx_er
> +		     &gmac0_rx_bus2
> +		     &gmac0_tx_bus2>;
> +	status = "okay";
> +};
> +
> +&mdio0 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	dp83826: ethernet-phy@0 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x0>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PD3 IRQ_TYPE_EDGE_FALLING>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&eth_wake_intn &eth_phy_rstn>;
> +		reset-assert-us = <1000>;
> +		reset-deassert-us = <2000>;
> +		reset-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;
> +		wakeup-source;
> +	};
> +};
> +
> +&pinctrl {
> +	ethernet {
> +		eth_wake_intn: eth-wake-intn-pinctrl {
> +			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		eth_phy_rstn: eth-phy-rstn-pinctrl {
> +			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc1v8_eth_en: vcc1v8-eth-en-pinctrl {
> +			rockchip,pins = <0 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc3v3_eth_enn: vcc3v3-eth-enn-pinctrl {
> +			rockchip,pins = <0 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	usb {
> +		usb_host_vbus_en: usb-host-vbus-en-pinctrl {
> +			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +};
> +
> +&usb_host1_xhci {
> +	maximum-speed = "high-speed";
> +	phys = <&usb2phy0_host>;
> +	phy-names = "usb2-phy";
> +	status = "okay";
> +};
> +
> +&usb2phy0_host {
> +	phy-supply = <&usb_host_vbus>;
> +	status = "okay";
> +};
> diff --git a/dts/src/arm64/rockchip/rk3568-wolfvision-pf5.dts b/dts/src/arm64/rockchip/rk3568-wolfvision-pf5.dts
> new file mode 100644
> index 0000000000..170b14f92f
> --- /dev/null
> +++ b/dts/src/arm64/rockchip/rk3568-wolfvision-pf5.dts
> @@ -0,0 +1,528 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> +/*
> + * Device tree for the WolfVision PF5 mainboard.
> + *
> + * Copyright (C) 2024 WolfVision GmbH.
> + */
> +
> +/dts-v1/;
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/regulator/ti,tps62864.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include "rk3568.dtsi"
> +
> +/ {
> +	model = "WolfVision PF5";
> +	compatible = "wolfvision,rk3568-pf5", "rockchip,rk3568";
> +
> +	aliases {
> +		ethernet0 = &gmac0;
> +		mmc0 = &sdhci;
> +		rtc0 = &pcf85623;
> +		rtc1 = &rk809;
> +	};
> +
> +	chosen: chosen {
> +		stdout-path = "serial2:115200n8";
> +	};
> +
> +	hdmi_tx: hdmi-tx-connector {
> +		compatible = "hdmi-connector";
> +		hdmi-pwr-supply = <&hdmi_tx_5v>;
> +		type = "a";
> +
> +		port {
> +			hdmi_tx_in: endpoint {
> +				remote-endpoint = <&hdmi_tx_out>;
> +			};
> +		};
> +	};
> +
> +	hdmi_tx_5v: hdmi-tx-5v-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PC5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hdmi_tx_5v_en>;
> +		regulator-name = "hdmi_tx_5v";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc5v_in>;
> +	};
> +
> +	pdm_codec: pdm-codec {
> +		compatible = "dmic-codec";
> +		num-channels = <1>;
> +		#sound-dai-cells = <0>;
> +	};
> +
> +	pdm_sound: pdm-sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "microphone";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&pdm>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&pdm_codec>;
> +		};
> +	};
> +
> +	vcc12v_cam: vcc12v-cam-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio2 RK_PD1 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc12v_cam_en>;
> +		regulator-name = "12v_cam";
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +		vin-supply = <&vcc12v_in>;
> +	};
> +
> +	vcc12v_in: vcc12v-in-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "12v_in";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
> +
> +	vcc3v8_cam: vcc3v8-cam-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc3v8_cam_en>;
> +		regulator-name = "3v8_cam";
> +		regulator-min-microvolt = <3800000>;
> +		regulator-max-microvolt = <3800000>;
> +		vin-supply = <&vcc5v_in>;
> +	};
> +
> +	vcc3v3_sys: vcc3v3-sys-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3v3_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc5v_in>;
> +	};
> +
> +	vcc5v_in: vcc5v-in-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "5v_in";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc12v_in>;
> +	};
> +};
> +
> +&combphy0 {
> +	status = "okay";
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&vcc0v9_cpu>;
> +};
> +
> +&cpu1 {
> +	cpu-supply = <&vcc0v9_cpu>;
> +};
> +
> +&cpu2 {
> +	cpu-supply = <&vcc0v9_cpu>;
> +};
> +
> +&cpu3 {
> +	cpu-supply = <&vcc0v9_cpu>;
> +};
> +
> +&gpu {
> +	mali-supply = <&vcc0v9_gpu>;
> +	status = "okay";
> +};
> +
> +&hdmi {
> +	avdd-0v9-supply = <&vcc0v9a_image>;
> +	avdd-1v8-supply = <&vcc1v8a_image>;
> +	status = "okay";
> +};
> +
> +&hdmi_in {
> +	hdmi_in_vp0: endpoint {
> +		remote-endpoint = <&vp0_out_hdmi>;
> +	};
> +};
> +
> +&hdmi_out {
> +	hdmi_tx_out: endpoint {
> +		remote-endpoint = <&hdmi_tx_in>;
> +	};
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	rk809: pmic@20 {
> +		compatible = "rockchip,rk809";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
> +		#clock-cells = <0>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int_l>;
> +		rockchip,system-power-controller;
> +		vcc1-supply = <&vcc5v_in>;
> +		vcc2-supply = <&vcc5v_in>;
> +		vcc3-supply = <&vcc5v_in>;
> +		vcc4-supply = <&vcc5v_in>;
> +		vcc5-supply = <&vcc3v3_sys>;
> +		vcc6-supply = <&vcc5v_in>;
> +		vcc7-supply = <&vcc3v3_sys>;
> +		vcc8-supply = <&vcc3v3_sys>;
> +		vcc9-supply = <&vcc3v3_sys>;
> +		wakeup-source;
> +
> +		regulators {
> +			vcc0v9_logic: DCDC_REG1 {
> +				regulator-name = "0v9_logic";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-initial-mode = <0x2>;
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc0v9_gpu: DCDC_REG2 {
> +				regulator-name = "0v9_gpu";
> +				regulator-always-on;
> +				regulator-initial-mode = <0x2>;
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc1v1_ddr4: DCDC_REG3 {
> +				regulator-name = "1v1_ddr4";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-initial-mode = <0x2>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc0v9_npu: DCDC_REG4 {
> +				regulator-name = "0v9_npu";
> +				regulator-always-on;
> +				regulator-initial-mode = <0x2>;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc1v8: DCDC_REG5 {
> +				regulator-name = "1v8";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc0v9a_image: LDO_REG1 {
> +				regulator-name = "0v9a_image";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc0v9a: LDO_REG2 {
> +				regulator-name = "0v9a";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc0v9a_pmu: LDO_REG3 {
> +				regulator-name = "0v9a_pmu";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <900000>;
> +				};
> +			};
> +
> +			vcc3v3_acodec: LDO_REG4 {
> +				regulator-name = "3v3_acodec";
> +				regulator-always-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_sd: LDO_REG5 {
> +				regulator-name = "3v3_sd";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_pmu: LDO_REG6 {
> +				regulator-name = "3v3_pmu";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc1v8a: LDO_REG7 {
> +				regulator-name = "1v8a";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc1v8a_pmu: LDO_REG8 {
> +				regulator-name = "1v8a_pmu";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcc1v8a_image: LDO_REG9 {
> +				regulator-name = "1v8a_image";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_sw: SWITCH_REG1 {
> +				regulator-name = "3v3_sw";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +		};
> +	};
> +
> +	regulator@42 {
> +		compatible = "ti,tps62869";
> +		reg = <0x42>;
> +
> +		regulators {
> +			vcc0v9_cpu: SW {
> +				regulator-name = "0v9_cpu";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-initial-mode = <TPS62864_MODE_FPWM>;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1150000>;
> +				vin-supply = <&vcc5v_in>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +		};
> +	};
> +
> +	pcf85623: rtc@51 {
> +		compatible = "nxp,pcf85263";
> +		reg = <0x51>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&clk32k_in>;
> +		quartz-load-femtofarads = <12500>;
> +	};
> +};
> +
> +&i2c3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c3m0_xfer>;
> +};
> +
> +&i2c4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c4m1_xfer>;
> +};
> +
> +&pdm {
> +	pinctrl-0 = <&pdmm0_clk
> +		     &pdmm0_sdi0>;
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	cam {
> +		vcc12v_cam_en: vcc12v-cam-en-pinctrl {
> +			rockchip,pins = <2 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc3v8_cam_en: vcc3v8-cam-en-pinctrl {
> +			rockchip,pins = <0 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	hdmitx {
> +		hdmi_tx_5v_en: hdmi-tx-5v-en-pinctrl {
> +			rockchip,pins = <4 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pmic {
> +		pmic_int_l: pmic-int-l-pinctrl {
> +			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +};
> +
> +&pmu_io_domains {
> +	pmuio1-supply = <&vcc3v3_pmu>;
> +	pmuio2-supply = <&vcc3v3_pmu>;
> +	vccio1-supply = <&vcc3v3_acodec>;
> +	vccio2-supply = <&vcc1v8>;
> +	vccio3-supply = <&vcc3v3_sd>;
> +	vccio4-supply = <&vcc1v8>;
> +	vccio5-supply = <&vcc1v8>;
> +	vccio6-supply = <&vcc3v3_sw>;
> +	vccio7-supply = <&vcc3v3_sw>;
> +	status = "okay";
> +};
> +
> +&saradc {
> +	vref-supply = <&vcc1v8a>;
> +	status = "okay";
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	max-frequency = <200000000>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
> +	vmmc-supply = <&vcc3v3_sw>;
> +	vqmmc-supply = <&vcc1v8>;
> +	status = "okay";
> +};
> +
> +&tsadc {
> +	rockchip,hw-tshut-mode = <1>;
> +	rockchip,hw-tshut-polarity = <0>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&usb_host0_xhci {
> +	dr_mode = "peripheral";
> +	/* The following quirks are required since the bInterval is 1 and we
> +	 * handle steady ISOC streaming. See Usecase 3 in commit 729dcffd1ed3
> +	 * ("usb: dwc3: gadget: Add support for disabling U1 and U2 entries").
> +	 */
> +	snps,dis-u1-entry-quirk;
> +	snps,dis-u2-entry-quirk;
> +	/*
> +	 * Without this quirk the available fifosize seems to be miscalculated
> +	 * in cases where many endpoints are used. In one particular situation
> +	 * 8 IN EPs and 3 OUT EPs where selected and lead to stalled transfers
> +	 * without the resize quirk.
> +	 */
> +	tx-fifo-resize;
> +
> +	status = "okay";
> +};
> +
> +&usb2phy0 {
> +	status = "okay";
> +};
> +
> +&usb2phy0_otg {
> +	status = "okay";
> +};
> +
> +&vop {
> +	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP2>;
> +	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
> +	status = "okay";
> +};
> +
> +&vop_mmu {
> +	status = "okay";
> +};
> +
> +&vp0 {
> +	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
> +		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
> +		remote-endpoint = <&hdmi_in_vp0>;
> +	};
> +};
> 
> -- 
> 2.34.1
> 
> 
> 


