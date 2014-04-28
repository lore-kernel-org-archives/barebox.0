Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WeqTZ-0007m6-E5
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 18:40:26 +0000
Date: Mon, 28 Apr 2014 20:40:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140428184003.GV5858@pengutronix.de>
References: <1398671161-29045-12-git-send-email-s.hauer@pengutronix.de>
 <1398706573-12979-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398706573-12979-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH] fixup! ARM: dove: Use upstream dtsi file
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 28, 2014 at 07:36:13PM +0200, Sebastian Hesselbarth wrote:
> Sascha,
> 
> thanks _a lot_ for doing this. It saves me from importing the same
> for the other SoCs. Anyway, I'd even go further and fixup the Dove
> patch with this one here.
> 
> Feel free to squash this into
> 
> 09015ae52c18 ("ARM: dove: Use upstream dtsi file")
> 
> and add my
> 
> Tested-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

I'll do that. Thanks for testing.

Sascha

> 
> ---
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: barebox@lists.infradead.org
> ---
>  arch/arm/dts/dove-cubox-bb.dts |   2 +-
>  arch/arm/dts/dove-cubox.dts    | 136 -----------------------------------------
>  arch/arm/dts/dove.dtsi         |   1 -
>  3 files changed, 1 insertion(+), 138 deletions(-)
>  delete mode 100644 arch/arm/dts/dove-cubox.dts
>  delete mode 100644 arch/arm/dts/dove.dtsi
> 
> diff --git a/arch/arm/dts/dove-cubox-bb.dts b/arch/arm/dts/dove-cubox-bb.dts
> index 3d1e5b4fa622..f7ad55c4e794 100644
> --- a/arch/arm/dts/dove-cubox-bb.dts
> +++ b/arch/arm/dts/dove-cubox-bb.dts
> @@ -3,7 +3,7 @@
>   *   Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>   */
>  
> -#include "dove-cubox.dts"
> +#include "arm/dove-cubox.dts"
>  
>  / {
>  	chosen {
> diff --git a/arch/arm/dts/dove-cubox.dts b/arch/arm/dts/dove-cubox.dts
> deleted file mode 100644
> index 7a70f4ca502a..000000000000
> --- a/arch/arm/dts/dove-cubox.dts
> +++ /dev/null
> @@ -1,136 +0,0 @@
> -/dts-v1/;
> -
> -#include "dove.dtsi"
> -
> -/ {
> -	model = "SolidRun CuBox";
> -	compatible = "solidrun,cubox", "marvell,dove";
> -
> -	memory {
> -		device_type = "memory";
> -		reg = <0x00000000 0x40000000>;
> -	};
> -
> -	chosen {
> -		bootargs = "console=ttyS0,115200n8 earlyprintk";
> -	};
> -
> -	leds {
> -		compatible = "gpio-leds";
> -		pinctrl-0 = <&pmx_gpio_18>;
> -		pinctrl-names = "default";
> -
> -		power {
> -			label = "Power";
> -			gpios = <&gpio0 18 1>;
> -			default-state = "keep";
> -		};
> -	};
> -
> -	regulators {
> -		compatible = "simple-bus";
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		usb_power: regulator@1 {
> -			compatible = "regulator-fixed";
> -			reg = <1>;
> -			regulator-name = "USB Power";
> -			regulator-min-microvolt = <5000000>;
> -			regulator-max-microvolt = <5000000>;
> -			enable-active-high;
> -			regulator-always-on;
> -			regulator-boot-on;
> -			gpio = <&gpio0 1 0>;
> -			pinctrl-0 = <&pmx_gpio_1>;
> -			pinctrl-names = "default";
> -		};
> -	};
> -
> -	clocks {
> -		/* 25MHz reference crystal */
> -		ref25: oscillator {
> -			compatible = "fixed-clock";
> -			#clock-cells = <0>;
> -			clock-frequency = <25000000>;
> -		};
> -	};
> -
> -	ir_recv: ir-receiver {
> -		compatible = "gpio-ir-receiver";
> -		gpios = <&gpio0 19 1>;
> -		pinctrl-0 = <&pmx_gpio_19>;
> -		pinctrl-names = "default";
> -	};
> -};
> -
> -&uart0 { status = "okay"; };
> -&sata0 { status = "okay"; };
> -&mdio { status = "okay"; };
> -&eth { status = "okay"; };
> -
> -&ethphy {
> -	compatible = "marvell,88e1310";
> -	reg = <1>;
> -};
> -
> -&i2c0 {
> -	status = "okay";
> -	clock-frequency = <100000>;
> -
> -	si5351: clock-generator {
> -		compatible = "silabs,si5351a-msop";
> -		reg = <0x60>;
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		#clock-cells = <1>;
> -
> -		/* connect xtal input to 25MHz reference */
> -		clocks = <&ref25>;
> -
> -		/* connect xtal input as source of pll0 and pll1 */
> -		silabs,pll-source = <0 0>, <1 0>;
> -
> -		clkout0 {
> -			reg = <0>;
> -			silabs,drive-strength = <8>;
> -			silabs,multisynth-source = <0>;
> -			silabs,clock-source = <0>;
> -			silabs,pll-master;
> -		};
> -
> -		clkout2 {
> -			reg = <2>;
> -			silabs,drive-strength = <8>;
> -			silabs,multisynth-source = <1>;
> -			silabs,clock-source = <0>;
> -			silabs,pll-master;
> -		};
> -	};
> -};
> -
> -&sdio0 {
> -	status = "okay";
> -	/* sdio0 card detect is connected to wrong pin on CuBox */
> -	cd-gpios = <&gpio0 12 1>;
> -	pinctrl-0 = <&pmx_sdio0 &pmx_gpio_12>;
> -};
> -
> -&spi0 {
> -	status = "okay";
> -
> -	/* spi0.0: 4M Flash Winbond W25Q32BV */
> -	spi-flash@0 {
> -		compatible = "st,w25q32";
> -		spi-max-frequency = <20000000>;
> -		reg = <0>;
> -	};
> -};
> -
> -&audio1 {
> -	status = "okay";
> -	clocks = <&gate_clk 13>, <&si5351 2>;
> -	clock-names = "internal", "extclk";
> -	pinctrl-0 = <&pmx_audio1_i2s1_spdifo &pmx_audio1_extclk>;
> -	pinctrl-names = "default";
> -};
> diff --git a/arch/arm/dts/dove.dtsi b/arch/arm/dts/dove.dtsi
> deleted file mode 100644
> index 2074fc56a3fe..000000000000
> --- a/arch/arm/dts/dove.dtsi
> +++ /dev/null
> @@ -1 +0,0 @@
> -#include <arm/dove.dtsi>
> -- 
> 1.9.1
> 
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
