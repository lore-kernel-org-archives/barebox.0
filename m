Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxS2A-0004FK-8H
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 05:38:41 +0000
Date: Mon, 10 Apr 2017 07:38:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170410053816.j4ydetf7kzbzej4b@pengutronix.de>
References: <20170408150449.22507-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170408150449.22507-1-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: imx6: add Hummingboard2 support
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sat, Apr 08, 2017 at 05:04:49PM +0200, Lucas Stach wrote:
> This adds support for the Hummingboard2 baseboard for the SolidRun
> MicroSOM modules.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---

Applied, thanks

Sascha

>  arch/arm/boards/solidrun-microsom/board.c    |  19 +-
>  arch/arm/boards/solidrun-microsom/lowlevel.c |  42 +++
>  arch/arm/dts/Makefile                        |   4 +-
>  arch/arm/dts/imx6dl-hummingboard2.dts        |  71 ++++
>  arch/arm/dts/imx6q-hummingboard2.dts         |  87 +++++
>  arch/arm/dts/imx6qdl-hummingboard2.dtsi      | 536 +++++++++++++++++++++++++++
>  images/Makefile.imx                          |  30 +-
>  7 files changed, 781 insertions(+), 8 deletions(-)
>  create mode 100644 arch/arm/dts/imx6dl-hummingboard2.dts
>  create mode 100644 arch/arm/dts/imx6q-hummingboard2.dts
>  create mode 100644 arch/arm/dts/imx6qdl-hummingboard2.dtsi
> 
> diff --git a/arch/arm/boards/solidrun-microsom/board.c b/arch/arm/boards/solidrun-microsom/board.c
> index b904168..155199f 100644
> --- a/arch/arm/boards/solidrun-microsom/board.c
> +++ b/arch/arm/boards/solidrun-microsom/board.c
> @@ -78,7 +78,9 @@ static void microsom_eth_init(void)
>  static int hummingboard_device_init(void)
>  {
>  	if (!of_machine_is_compatible("solidrun,hummingboard/dl") &&
> -	    !of_machine_is_compatible("solidrun,hummingboard/q"))
> +	    !of_machine_is_compatible("solidrun,hummingboard/q") &&
> +	    !of_machine_is_compatible("solidrun,hummingboard2/dl") &&
> +	    !of_machine_is_compatible("solidrun,hummingboard2/q"))
>  		return 0;
>  
>  	microsom_eth_init();
> @@ -108,13 +110,26 @@ device_initcall(h100_device_init);
>  
>  static int hummingboard_late_init(void)
>  {
> +	bool emmc_present = false;
> +
>  	if (!of_machine_is_compatible("solidrun,hummingboard/dl") &&
>  	    !of_machine_is_compatible("solidrun,hummingboard/q") &&
> +	    !of_machine_is_compatible("solidrun,hummingboard2/dl") &&
> +	    !of_machine_is_compatible("solidrun,hummingboard2/q") &&
>  	    !of_machine_is_compatible("auvidea,h100"))
>  		return 0;
>  
> +	if (of_machine_is_compatible("solidrun,hummingboard2/dl") ||
> +	    of_machine_is_compatible("solidrun,hummingboard2/q"))
> +		emmc_present = true;
> +
>  	imx6_bbu_internal_mmc_register_handler("sdcard", "/dev/mmc1.barebox",
> -		BBU_HANDLER_FLAG_DEFAULT);
> +		emmc_present ? 0 : BBU_HANDLER_FLAG_DEFAULT);
> +
> +	if (emmc_present) {
> +		imx6_bbu_internal_mmc_register_handler("emmc",
> +			"/dev/mmc2.barebox", BBU_HANDLER_FLAG_DEFAULT);
> +	}
>  
>  	return 0;
>  }
> diff --git a/arch/arm/boards/solidrun-microsom/lowlevel.c b/arch/arm/boards/solidrun-microsom/lowlevel.c
> index 7b97f2e..cc15958 100644
> --- a/arch/arm/boards/solidrun-microsom/lowlevel.c
> +++ b/arch/arm/boards/solidrun-microsom/lowlevel.c
> @@ -5,6 +5,8 @@
>  
>  extern char __dtb_imx6dl_hummingboard_start[];
>  extern char __dtb_imx6q_hummingboard_start[];
> +extern char __dtb_imx6dl_hummingboard2_start[];
> +extern char __dtb_imx6q_hummingboard2_start[];
>  extern char __dtb_imx6q_h100_start[];
>  
>  ENTRY_FUNCTION(start_hummingboard_microsom_i1, r0, r1, r2)
> @@ -47,6 +49,46 @@ ENTRY_FUNCTION(start_hummingboard_microsom_i4, r0, r1, r2)
>  	imx6q_barebox_entry(fdt);
>  }
>  
> +ENTRY_FUNCTION(start_hummingboard2_microsom_i1, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	imx6_cpu_lowlevel_init();
> +
> +	fdt = __dtb_imx6dl_hummingboard2_start - get_runtime_offset();
> +	imx6q_barebox_entry(fdt);
> +}
> +
> +ENTRY_FUNCTION(start_hummingboard2_microsom_i2, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	imx6_cpu_lowlevel_init();
> +
> +	fdt = __dtb_imx6dl_hummingboard2_start - get_runtime_offset();
> +	imx6q_barebox_entry(fdt);
> +}
> +
> +ENTRY_FUNCTION(start_hummingboard2_microsom_i2ex, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	imx6_cpu_lowlevel_init();
> +
> +	fdt = __dtb_imx6q_hummingboard2_start - get_runtime_offset();
> +	imx6q_barebox_entry(fdt);
> +}
> +
> +ENTRY_FUNCTION(start_hummingboard2_microsom_i4, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	imx6_cpu_lowlevel_init();
> +
> +	fdt = __dtb_imx6q_hummingboard2_start - get_runtime_offset();
> +	imx6q_barebox_entry(fdt);
> +}
> +
>  ENTRY_FUNCTION(start_h100_microsom_i2ex, r0, r1, r2)
>  {
>  	void *fdt;
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 0c9e0e8..b822561 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -68,7 +68,9 @@ pbl-dtb-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
>  pbl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += socfpga_cyclone5_de0_nano_soc.dtb.o
>  pbl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
>  pbl-dtb-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
> -pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o imx6q-h100.dtb.o
> +pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o \
> +				imx6dl-hummingboard2.dtb.o imx6q-hummingboard2.dtb.o \
> +				imx6q-h100.dtb.o
>  pbl-dtb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
>  pbl-dtb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
>  pbl-dtb-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
> diff --git a/arch/arm/dts/imx6dl-hummingboard2.dts b/arch/arm/dts/imx6dl-hummingboard2.dts
> new file mode 100644
> index 0000000..40ef174
> --- /dev/null
> +++ b/arch/arm/dts/imx6dl-hummingboard2.dts
> @@ -0,0 +1,71 @@
> +/*
> + * Device Tree file for SolidRun HummingBoard2
> + * Copyright (C) 2015 Rabeeh Khoury <rabeeh@solid-run.com>
> + * Based on work by Russell King
> + *
> + * This file is dual-licensed: you can use it either under the terms
> + * of the GPL or the X11 license, at your option. Note that this dual
> + * licensing only applies to this file, and not this project as a
> + * whole.
> + *
> + *  a) This file is free software; you can redistribute it and/or
> + *     modify it under the terms of the GNU General Public License as
> + *     published by the Free Software Foundation; either version 2 of the
> + *     License.
> + *
> + *     This file is distributed in the hope that it will be useful
> + *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> + *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + *     GNU General Public License for more details.
> + *
> + * Or, alternatively
> + *
> + *  b) Permission is hereby granted, free of charge, to any person
> + *     obtaining a copy of this software and associated documentation
> + *     files (the "Software"), to deal in the Software without
> + *     restriction, including without limitation the rights to use
> + *     copy, modify, merge, publish, distribute, sublicense, and/or
> + *     sell copies of the Software, and to permit persons to whom the
> + *     Software is furnished to do so, subject to the following
> + *     conditions:
> + *
> + *     The above copyright notice and this permission notice shall be
> + *     included in all copies or substantial portions of the Software.
> + *
> + *     THE SOFTWARE IS PROVIDED , WITHOUT WARRANTY OF ANY KIND
> + *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> + *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> + *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> + *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY
> + *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> + *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> + *     OTHER DEALINGS IN THE SOFTWARE.
> + */
> +/dts-v1/;
> +
> +#include <arm/imx6dl.dtsi>
> +#include "imx6qdl-hummingboard2.dtsi"
> +
> +/ {
> +	model = "SolidRun HummingBoard2 Solo/DualLite";
> +	compatible = "solidrun,hummingboard2/dl", "fsl,imx6dl";
> +};
> +
> +&ocotp {
> +	barebox,provide-mac-address = <&fec 0x620>;
> +};
> +
> +&usdhc3 {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	partition@0 {
> +		label = "barebox";
> +		reg = <0x0 0xe0000>;
> +	};
> +
> +	partition@e0000 {
> +		label = "barebox-environment";
> +		reg = <0xe0000 0x20000>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6q-hummingboard2.dts b/arch/arm/dts/imx6q-hummingboard2.dts
> new file mode 100644
> index 0000000..8906558
> --- /dev/null
> +++ b/arch/arm/dts/imx6q-hummingboard2.dts
> @@ -0,0 +1,87 @@
> +/*
> + * Device Tree file for SolidRun HummingBoard2
> + * Copyright (C) 2015 Rabeeh Khoury <rabeeh@solid-run.com>
> + * Based on work by Russell King
> + *
> + * This file is dual-licensed: you can use it either under the terms
> + * of the GPL or the X11 license, at your option. Note that this dual
> + * licensing only applies to this file, and not this project as a
> + * whole.
> + *
> + *  a) This file is free software; you can redistribute it and/or
> + *     modify it under the terms of the GNU General Public License as
> + *     published by the Free Software Foundation; either version 2 of the
> + *     License.
> + *
> + *     This file is distributed in the hope that it will be useful
> + *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> + *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + *     GNU General Public License for more details.
> + *
> + * Or, alternatively
> + *
> + *  b) Permission is hereby granted, free of charge, to any person
> + *     obtaining a copy of this software and associated documentation
> + *     files (the "Software"), to deal in the Software without
> + *     restriction, including without limitation the rights to use
> + *     copy, modify, merge, publish, distribute, sublicense, and/or
> + *     sell copies of the Software, and to permit persons to whom the
> + *     Software is furnished to do so, subject to the following
> + *     conditions:
> + *
> + *     The above copyright notice and this permission notice shall be
> + *     included in all copies or substantial portions of the Software.
> + *
> + *     THE SOFTWARE IS PROVIDED , WITHOUT WARRANTY OF ANY KIND
> + *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> + *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> + *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> + *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY
> + *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> + *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> + *     OTHER DEALINGS IN THE SOFTWARE.
> + */
> +/dts-v1/;
> +
> +#include <arm/imx6q.dtsi>
> +#include "imx6qdl-hummingboard2.dtsi"
> +#include "imx6q.dtsi"
> +
> +/ {
> +	model = "SolidRun HummingBoard2 Dual/Quad";
> +	compatible = "solidrun,hummingboard2/q", "fsl,imx6q";
> +
> +	chosen {
> +		environment@0 {
> +			compatible = "barebox,environment";
> +			device-path = &usdhc3, "partname:barebox-environment";
> +		};
> +	};
> +};
> +
> +&sata {
> +	status = "okay";
> +	fsl,transmit-level-mV = <1104>;
> +	fsl,transmit-boost-mdB = <0>;
> +	fsl,transmit-atten-16ths = <9>;
> +	fsl,no-spread-spectrum;
> +};
> +
> +&ocotp {
> +	barebox,provide-mac-address = <&fec 0x620>;
> +};
> +
> +&usdhc3 {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	partition@0 {
> +		label = "barebox";
> +		reg = <0x0 0xe0000>;
> +	};
> +
> +	partition@e0000 {
> +		label = "barebox-environment";
> +		reg = <0xe0000 0x20000>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6qdl-hummingboard2.dtsi b/arch/arm/dts/imx6qdl-hummingboard2.dtsi
> new file mode 100644
> index 0000000..2a5f389
> --- /dev/null
> +++ b/arch/arm/dts/imx6qdl-hummingboard2.dtsi
> @@ -0,0 +1,536 @@
> +/*
> + * Device Tree file for SolidRun HummingBoard2
> + * Copyright (C) 2015 Rabeeh Khoury <rabeeh@solid-run.com>
> + *
> + * This file is dual-licensed: you can use it either under the terms
> + * of the GPL or the X11 license, at your option. Note that this dual
> + * licensing only applies to this file, and not this project as a
> + * whole.
> + *
> + *  a) This file is free software; you can redistribute it and/or
> + *     modify it under the terms of the GNU General Public License as
> + *     published by the Free Software Foundation; either version 2 of the
> + *     License.
> + *
> + *     This file is distributed in the hope that it will be useful,
> + *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> + *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + *     GNU General Public License for more details.
> + *
> + * Or, alternatively,
> + *
> + *  b) Permission is hereby granted, free of charge, to any person
> + *     obtaining a copy of this software and associated documentation
> + *     files (the "Software"), to deal in the Software without
> + *     restriction, including without limitation the rights to use
> + *     copy, modify, merge, publish, distribute, sublicense, and/or
> + *     sell copies of the Software, and to permit persons to whom the
> + *     Software is furnished to do so, subject to the following
> + *     conditions:
> + *
> + *     The above copyright notice and this permission notice shall be
> + *     included in all copies or substantial portions of the Software.
> + *
> + *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> + *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> + *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> + *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> + *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> + *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> + *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> + *     OTHER DEALINGS IN THE SOFTWARE.
> + */
> +#include <arm/imx6qdl-microsom.dtsi>
> +#include <arm/imx6qdl-microsom-ar8035.dtsi>
> +
> +/ {
> +	chosen {
> +		stdout-path = &uart1;
> +	};
> +
> +	ir_recv: ir-receiver {
> +		compatible = "gpio-ir-receiver";
> +		gpios = <&gpio7 9 GPIO_ACTIVE_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_hummingboard2_gpio7_9>;
> +		linux,rc-map-name = "rc-rc6-mce";
> +	};
> +
> +	reg_3p3v: regulator-3p3v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VCC_3V2";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_1p8v: regulator-1p8v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VCC_1V8";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_usbh2_vbus: regulator-usb-h1-vbus {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 0 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_hummingboard2_usbh1_vbus>;
> +		regulator-name = "V_USB2";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_usbotg_vbus: regulator-usb-otg-vbus {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio3 22 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_hummingboard2_usbotg_vbus>;
> +		regulator-name = "V_USB1";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	reg_usbh3_vbus: regulator-usb-h2-vbus {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		enable-gpio = <&gpio2 13 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_hummingboard2_usbh2_vbus>;
> +		regulator-name = "V_USB3";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_usbh4_vbus: regulator-usb-h3-vbus {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		enable-gpio = <&gpio7 10 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_hummingboard2_usbh3_vbus>;
> +		regulator-name = "V_USB4";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_usdhc2_vmmc: reg-usdhc2-vmmc {
> +		compatible = "regulator-fixed";
> +		gpio = <&gpio4 30 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_hummingboard2_vmmc>;
> +		regulator-boot-on;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "V_SD";
> +		startup-delay-us = <1000>;
> +	};
> +
> +	sound-sgtl5000 {
> +		audio-codec = <&sgtl5000>;
> +		audio-routing =
> +			"MIC_IN", "Mic Jack",
> +			"Mic Jack", "Mic Bias",
> +			"Headphone Jack", "HP_OUT";
> +		compatible = "fsl,imx-audio-sgtl5000";
> +		model = "On-board Codec";
> +		mux-ext-port = <5>;
> +		mux-int-port = <1>;
> +		ssi-controller = <&ssi1>;
> +	};
> +};
> +
> +&audmux {
> +	status = "okay";
> +};
> +
> +&ecspi2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hummingboard2_ecspi2>;
> +	cs-gpios = <&gpio2 26 0>;
> +	status = "okay";
> +};
> +
> +&hdmi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hummingboard2_hdmi>;
> +	ddc-i2c-bus = <&i2c2>;
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hummingboard2_i2c1>;
> +	status = "okay";
> +
> +	pcf8523: rtc@68 {
> +		compatible = "nxp,pcf8523";
> +		reg = <0x68>;
> +	};
> +
> +	sgtl5000: codec@0a {
> +		clocks = <&clks IMX6QDL_CLK_CKO>;
> +		compatible = "fsl,sgtl5000";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_hummingboard2_sgtl5000>;
> +		reg = <0x0a>;
> +		VDDA-supply = <&reg_3p3v>;
> +		VDDIO-supply = <&reg_3p3v>;
> +		VDDD-supply = <&reg_1p8v>;
> +	};
> +};
> +
> +&i2c2 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hummingboard2_i2c2>;
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hummingboard2_i2c3>;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hog>;
> +
> +	hummingboard2 {
> +		pinctrl_hog: hoggrp {
> +		fsl,pins = <
> +				/*
> +				 * 36 pin headers GPIO description. The pins
> +				 * numbering as following -
> +				 *
> +				 * 	3.2v	5v	74	75
> +				 *	73	72	71	70
> +				 *	69	68	67	66
> +				 *
> +				 *	77	78	79	76
> +				 *	65	64	61	60
> +				 *	53	52	51	50
> +				 *	49	48	166	132
> +				 *	95	94	90	91
> +				 *	GND	54	24	204
> +				 *
> +				 * The GPIO numbers can be extracted using
> +				 * signal name from below.
> +				 * Example -
> +				 * MX6QDL_PAD_EIM_DA10__GPIO3_IO10 is
> +				 * GPIO(3,10) which is (3-1)*32+10 = gpio 74
> +				 *
> +				 * i.e. The mapping of GPIO(X,Y) to Linux gpio
> +				 * number is : gpio number = (X-1) * 32 + Y
> +				 */
> +				/* DI1_PIN15 */
> +				MX6QDL_PAD_EIM_DA10__GPIO3_IO10 0x400130b1
> +				/* DI1_PIN02 */
> +				MX6QDL_PAD_EIM_DA11__GPIO3_IO11 0x400130b1
> +				/* DISP1_DATA00 */
> +				MX6QDL_PAD_EIM_DA9__GPIO3_IO09 0x400130b1
> +				/* DISP1_DATA01 */
> +				MX6QDL_PAD_EIM_DA8__GPIO3_IO08 0x400130b1
> +				/* DISP1_DATA02 */
> +				MX6QDL_PAD_EIM_DA7__GPIO3_IO07 0x400130b1
> +				/* DISP1_DATA03 */
> +				MX6QDL_PAD_EIM_DA6__GPIO3_IO06 0x400130b1
> +				/* DISP1_DATA04 */
> +				MX6QDL_PAD_EIM_DA5__GPIO3_IO05 0x400130b1
> +				/* DISP1_DATA05 */
> +				MX6QDL_PAD_EIM_DA4__GPIO3_IO04 0x400130b1
> +				/* DISP1_DATA06 */
> +				MX6QDL_PAD_EIM_DA3__GPIO3_IO03 0x400130b1
> +				/* DISP1_DATA07 */
> +				MX6QDL_PAD_EIM_DA2__GPIO3_IO02 0x400130b1
> +				/* DI1_D0_CS */
> +				MX6QDL_PAD_EIM_DA13__GPIO3_IO13 0x400130b1
> +				/* DI1_D1_CS */
> +				MX6QDL_PAD_EIM_DA14__GPIO3_IO14 0x400130b1
> +				/* DI1_PIN01 */
> +				MX6QDL_PAD_EIM_DA15__GPIO3_IO15 0x400130b1
> +				/* DI1_PIN03 */
> +				MX6QDL_PAD_EIM_DA12__GPIO3_IO12 0x400130b1
> +				/* DISP1_DATA08 */
> +				MX6QDL_PAD_EIM_DA1__GPIO3_IO01 0x400130b1
> +				/* DISP1_DATA09 */
> +				MX6QDL_PAD_EIM_DA0__GPIO3_IO00 0x400130b1
> +				/* DISP1_DATA10 */
> +				MX6QDL_PAD_EIM_EB1__GPIO2_IO29 0x400130b1
> +				/* DISP1_DATA11 */
> +				MX6QDL_PAD_EIM_EB0__GPIO2_IO28 0x400130b1
> +				/* DISP1_DATA12 */
> +				MX6QDL_PAD_EIM_A17__GPIO2_IO21 0x400130b1
> +				/* DISP1_DATA13 */
> +				MX6QDL_PAD_EIM_A18__GPIO2_IO20 0x400130b1
> +				/* DISP1_DATA14 */
> +				MX6QDL_PAD_EIM_A19__GPIO2_IO19 0x400130b1
> +				/* DISP1_DATA15 */
> +				MX6QDL_PAD_EIM_A20__GPIO2_IO18 0x400130b1
> +				/* DISP1_DATA16 */
> +				MX6QDL_PAD_EIM_A21__GPIO2_IO17 0x400130b1
> +				/* DISP1_DATA17 */
> +				MX6QDL_PAD_EIM_A22__GPIO2_IO16 0x400130b1
> +				/* DISP1_DATA18 */
> +				MX6QDL_PAD_EIM_A23__GPIO6_IO06 0x400130b1
> +				/* DISP1_DATA19 */
> +				MX6QDL_PAD_EIM_A24__GPIO5_IO04 0x400130b1
> +				/* DISP1_DATA20 */
> +				MX6QDL_PAD_EIM_D31__GPIO3_IO31 0x400130b1
> +				/* DISP1_DATA21 */
> +				MX6QDL_PAD_EIM_D30__GPIO3_IO30 0x400130b1
> +				/* DISP1_DATA22 */
> +				MX6QDL_PAD_EIM_D26__GPIO3_IO26 0x400130b1
> +				/* DISP1_DATA23 */
> +				MX6QDL_PAD_EIM_D27__GPIO3_IO27 0x400130b1
> +				/* DI1_DISP_CLK */
> +				MX6QDL_PAD_EIM_A16__GPIO2_IO22 0x400130b1
> +				/* SPDIF_IN */
> +				MX6QDL_PAD_ENET_RX_ER__GPIO1_IO24 0x400130b1
> +				/* SPDIF_OUT */
> +				MX6QDL_PAD_GPIO_17__GPIO7_IO12 0x400130b1
> +
> +				/* MikroBUS GPIO pin number 10 */
> +				MX6QDL_PAD_EIM_LBA__GPIO2_IO27 0x400130b1
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_ecspi2: hummingboard2-ecspi2grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_EIM_OE__ECSPI2_MISO	0x100b1
> +				MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI	0x100b1
> +				MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK	0x100b1
> +				MX6QDL_PAD_EIM_RW__GPIO2_IO26	0x000b1 /* CS */
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_gpio7_9: hummingboard2-gpio7_9 {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD4_CMD__GPIO7_IO09 0x80000000
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_hdmi: hummingboard2-hdmi {
> +			fsl,pins = <
> +				MX6QDL_PAD_KEY_ROW2__HDMI_TX_CEC_LINE 0x1f8b0
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_i2c1: hummingboard2-i2c1 {
> +			fsl,pins = <
> +				MX6QDL_PAD_EIM_D21__I2C1_SCL 0x4001b8b1
> +				MX6QDL_PAD_EIM_D28__I2C1_SDA 0x4001b8b1
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_i2c2: hummingboard2-i2c2 {
> +			fsl,pins = <
> +				MX6QDL_PAD_KEY_COL3__I2C2_SCL 0x4001b8b1
> +				MX6QDL_PAD_KEY_ROW3__I2C2_SDA 0x4001b8b1
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_i2c3: hummingboard2-i2c3 {
> +			fsl,pins = <
> +				MX6QDL_PAD_EIM_D17__I2C3_SCL 0x4001b8b1
> +				MX6QDL_PAD_EIM_D18__I2C3_SDA 0x4001b8b1
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_mipi: hummingboard2_mipi {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD4_DAT2__GPIO2_IO10 0x4001b8b1
> +				MX6QDL_PAD_KEY_COL4__GPIO4_IO14 0x4001b8b1
> +				MX6QDL_PAD_NANDF_CS2__CCM_CLKO2 0x130b0
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_pcie_reset: hummingboard2-pcie-reset {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD4_DAT3__GPIO2_IO11 0x1b0b1
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_pwm1: pwm1grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_DISP0_DAT8__PWM1_OUT 0x1b0b1
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_sgtl5000: hummingboard2-sgtl5000 {
> +			fsl,pins = <
> +				MX6QDL_PAD_DISP0_DAT19__AUD5_RXD 0x130b0
> +				MX6QDL_PAD_KEY_COL0__AUD5_TXC 0x130b0
> +				MX6QDL_PAD_KEY_ROW0__AUD5_TXD 0x110b0
> +				MX6QDL_PAD_KEY_COL1__AUD5_TXFS 0x130b0
> +				MX6QDL_PAD_GPIO_5__CCM_CLKO1 0x130b0
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_usbh1_vbus: hummingboard2-usbh1-vbus {
> +			fsl,pins = <MX6QDL_PAD_GPIO_0__GPIO1_IO00 0x1b0b0>;
> +		};
> +
> +		pinctrl_hummingboard2_usbh2_vbus: hummingboard2-usbh2-vbus {
> +			fsl,pins = <MX6QDL_PAD_SD4_DAT5__GPIO2_IO13 0x1b0b0>;
> +		};
> +
> +		pinctrl_hummingboard2_usbh3_vbus: hummingboard2-usbh3-vbus {
> +			fsl,pins = <MX6QDL_PAD_SD4_CLK__GPIO7_IO10 0x1b0b0>;
> +		};
> +
> +		pinctrl_hummingboard2_usbotg_id: hummingboard2-usbotg-id {
> +			/*
> +			 * Similar to pinctrl_usbotg_2, but we want it
> +			 * pulled down for a fixed host connection.
> +			 */
> +			fsl,pins = <MX6QDL_PAD_GPIO_1__USB_OTG_ID 0x13059>;
> +		};
> +
> +		pinctrl_hummingboard2_usbotg_vbus: hummingboard2-usbotg-vbus {
> +			fsl,pins = <MX6QDL_PAD_EIM_D22__GPIO3_IO22 0x1b0b0>;
> +		};
> +
> +		pinctrl_hummingboard2_usdhc2_aux: hummingboard2-usdhc2-aux {
> +			fsl,pins = <
> +				MX6QDL_PAD_GPIO_4__GPIO1_IO04    0x1f071
> +				MX6QDL_PAD_KEY_ROW1__SD2_VSELECT 0x1b071
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_usdhc2: hummingboard2-usdhc2 {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD2_CMD__SD2_CMD    0x17059
> +				MX6QDL_PAD_SD2_CLK__SD2_CLK    0x10059
> +				MX6QDL_PAD_SD2_DAT0__SD2_DATA0 0x17059
> +				MX6QDL_PAD_SD2_DAT1__SD2_DATA1 0x17059
> +				MX6QDL_PAD_SD2_DAT2__SD2_DATA2 0x17059
> +				MX6QDL_PAD_SD2_DAT3__SD2_DATA3 0x13059
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_usdhc2_100mhz: hummingboard2-usdhc2-100mhz {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD2_CMD__SD2_CMD    0x170b9
> +				MX6QDL_PAD_SD2_CLK__SD2_CLK    0x100b9
> +				MX6QDL_PAD_SD2_DAT0__SD2_DATA0 0x170b9
> +				MX6QDL_PAD_SD2_DAT1__SD2_DATA1 0x170b9
> +				MX6QDL_PAD_SD2_DAT2__SD2_DATA2 0x170b9
> +				MX6QDL_PAD_SD2_DAT3__SD2_DATA3 0x130b9
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_usdhc2_200mhz: hummingboard2-usdhc2-200mhz {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD2_CMD__SD2_CMD    0x170f9
> +				MX6QDL_PAD_SD2_CLK__SD2_CLK    0x100f9
> +				MX6QDL_PAD_SD2_DAT0__SD2_DATA0 0x170f9
> +				MX6QDL_PAD_SD2_DAT1__SD2_DATA1 0x170f9
> +				MX6QDL_PAD_SD2_DAT2__SD2_DATA2 0x170f9
> +				MX6QDL_PAD_SD2_DAT3__SD2_DATA3 0x130f9
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_vmmc: hummingboard2-vmmc {
> +			fsl,pins = <
> +				MX6QDL_PAD_DISP0_DAT9__GPIO4_IO30 0x1b0b0
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_usdhc3: hummingboard2-usdhc3 {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD3_CMD__SD3_CMD    0x17059
> +				MX6QDL_PAD_SD3_CLK__SD3_CLK    0x10059
> +				MX6QDL_PAD_SD3_DAT0__SD3_DATA0 0x17059
> +				MX6QDL_PAD_SD3_DAT1__SD3_DATA1 0x17059
> +				MX6QDL_PAD_SD3_DAT2__SD3_DATA2 0x17059
> +				MX6QDL_PAD_SD3_DAT3__SD3_DATA3 0x17059
> +				MX6QDL_PAD_SD3_DAT4__SD3_DATA4 0x17059
> +				MX6QDL_PAD_SD3_DAT5__SD3_DATA5 0x17059
> +				MX6QDL_PAD_SD3_DAT6__SD3_DATA6 0x17059
> +				MX6QDL_PAD_SD3_DAT7__SD3_DATA7 0x17059
> +				MX6QDL_PAD_SD3_RST__SD3_RESET  0x17059
> +			>;
> +		};
> +
> +		pinctrl_hummingboard2_uart3: hummingboard2-uart3 {
> +			fsl,pins = <
> +				MX6QDL_PAD_EIM_D25__UART3_TX_DATA	0x1b0b1
> +				MX6QDL_PAD_EIM_D24__UART3_RX_DATA	0x40013000
> +			>;
> +		};
> +	};
> +};
> +
> +&pcie {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hummingboard2_pcie_reset>;
> +	reset-gpio = <&gpio2 11 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +};
> +
> +&pwm1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hummingboard2_pwm1>;
> +	status = "okay";
> +};
> +
> +&ssi1 {
> +	status = "okay";
> +};
> +
> +&usbh1 {
> +	disable-over-current;
> +	status = "okay";
> +};
> +
> +&usbotg {
> +	disable-over-current;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hummingboard2_usbotg_id>;
> +	vbus-supply = <&reg_usbotg_vbus>;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <
> +		&pinctrl_hummingboard2_usdhc2_aux
> +		&pinctrl_hummingboard2_usdhc2
> +	>;
> +	pinctrl-1 = <
> +		&pinctrl_hummingboard2_usdhc2_aux
> +		&pinctrl_hummingboard2_usdhc2_100mhz
> +	>;
> +	pinctrl-2 = <
> +		&pinctrl_hummingboard2_usdhc2_aux
> +		&pinctrl_hummingboard2_usdhc2_200mhz
> +	>;
> +	vmmc-supply = <&reg_usdhc2_vmmc>;
> +	cd-gpios = <&gpio1 4 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +};
> +
> +&usdhc3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hummingboard2_usdhc3>;
> +	vmmc-supply = <&reg_3p3v>;
> +	vqmmc-supply = <&reg_3p3v>;
> +	bus-width = <8>;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hummingboard2_uart3>;
> +	status = "okay";
> +};
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 2563779..0677cc3 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -249,16 +249,16 @@ CFG_start_imx6sx_sabresdb.pblx.imximg = $(board)/freescale-mx6sx-sabresdb/flash-
>  FILE_barebox-freescale-imx6sx-sabresdb.img = start_imx6sx_sabresdb.pblx.imximg
>  image-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += barebox-freescale-imx6sx-sabresdb.img
>  
> -pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i1
> -CFG_start_hummingboard_microsom_i1.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i1.imxcfg
> -FILE_barebox-solidrun-hummingboard-microsom-i1.img = start_hummingboard_microsom_i1.pblx.imximg
> -image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i1.img
> -
>  pblx-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += start_imx6_wandboard
>  CFG_start_imx6_wandboard.imx-sram-img = $(board)/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
>  FILE_barebox-imx6-wandboard.img = start_imx6_wandboard.imx-sram-img
>  image-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += barebox-imx6-wandboard.img
>  
> +pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i1
> +CFG_start_hummingboard_microsom_i1.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i1.imxcfg
> +FILE_barebox-solidrun-hummingboard-microsom-i1.img = start_hummingboard_microsom_i1.pblx.imximg
> +image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i1.img
> +
>  pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i2
>  CFG_start_hummingboard_microsom_i2.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2.imxcfg
>  FILE_barebox-solidrun-hummingboard-microsom-i2.img = start_hummingboard_microsom_i2.pblx.imximg
> @@ -274,6 +274,26 @@ CFG_start_hummingboard_microsom_i4.pblx.imximg = $(board)/solidrun-microsom/flas
>  FILE_barebox-solidrun-hummingboard-microsom-i4.img = start_hummingboard_microsom_i4.pblx.imximg
>  image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i4.img
>  
> +pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i1
> +CFG_start_hummingboard2_microsom_i1.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i1.imxcfg
> +FILE_barebox-solidrun-hummingboard2-microsom-i1.img = start_hummingboard2_microsom_i1.pblx.imximg
> +image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i1.img
> +
> +pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i2
> +CFG_start_hummingboard2_microsom_i2.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2.imxcfg
> +FILE_barebox-solidrun-hummingboard2-microsom-i2.img = start_hummingboard2_microsom_i2.pblx.imximg
> +image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i2.img
> +
> +pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i2ex
> +CFG_start_hummingboard2_microsom_i2ex.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
> +FILE_barebox-solidrun-hummingboard2-microsom-i2eX.img = start_hummingboard2_microsom_i2ex.pblx.imximg
> +image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i2eX.img
> +
> +pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i4
> +CFG_start_hummingboard2_microsom_i4.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i4.imxcfg
> +FILE_barebox-solidrun-hummingboard2-microsom-i4.img = start_hummingboard2_microsom_i4.pblx.imximg
> +image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i4.img
> +
>  pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_h100_microsom_i2ex
>  CFG_start_h100_microsom_i2ex.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
>  FILE_barebox-auvidea-h100-microsom-i2eX.img = start_h100_microsom_i2ex.pblx.imximg
> -- 
> 2.9.3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
