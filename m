Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e40rt-000597-WE
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 08:35:28 +0000
Date: Mon, 16 Oct 2017 10:35:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171016083504.uzt45ecvirosrxpv@pengutronix.de>
References: <20171006093358.31444-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171006093358.31444-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] ARM: socfpga: dts: sockit: remove upstreamed nodes
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 06, 2017 at 11:33:58AM +0200, Steffen Trumtrar wrote:
> Remove devicetree entries that are already in the upstream devicetree.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/dts/socfpga_cyclone5_sockit.dts | 108 -------------------------------
>  1 file changed, 108 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/socfpga_cyclone5_sockit.dts b/arch/arm/dts/socfpga_cyclone5_sockit.dts
> index 8df5ed477548..7cb9b9600563 100644
> --- a/arch/arm/dts/socfpga_cyclone5_sockit.dts
> +++ b/arch/arm/dts/socfpga_cyclone5_sockit.dts
> @@ -25,112 +25,4 @@
>  	chosen {
>  		stdout-path = &uart0;
>  	};
> -
> -	leds: gpio-leds {
> -	};
> -
> -	buttons: gpio-keys {
> -	};
> -};
> -
> -&gpio1 {
> -	status = "okay";
> -};
> -
> -&gpio2 {
> -	status = "okay";
> -};
> -
> -&leds {
> -	compatible = "gpio-leds";
> -
> -	led@0 {
> -		label = "0";
> -		gpios = <&portb 24 0>;
> -		linux,default-trigger = "heartbeat";
> -	};
> -
> -	led@1 {
> -		label = "1";
> -		gpios = <&portb 25 0>;
> -	};
> -
> -	led@2 {
> -		label = "2";
> -		gpios = <&portb 26 0>;
> -	};
> -
> -	led@3 {
> -		label = "3";
> -		gpios = <&portb 27 0>;
> -	};
> -};
> -
> -&buttons {
> -	compatible = "gpio-keys";
> -
> -        key@0 {
> -		label = "F1";
> -		gpios = <&portc 21 0>;
> -		linux,code = <59>;
> -	};
> -
> -        key@1 {
> -		label = "F2";
> -		gpios = <&portc 22 0>;
> -		linux,code = <60>;
> -	};
> -
> -        key@2 {
> -		label = "F3";
> -		gpios = <&portc 23 0>;
> -		linux,code = <61>;
> -	};
> -
> -        key@3 {
> -		label = "F4";
> -		gpios = <&portc 24 0>;
> -		linux,code = <62>;
> -	};
> -};
> -
> -&i2c0 {
> -	status = "disabled";
> -
> -	eeprom@51 {
> -		compatible = "atmel,24c32";
> -		reg = <0x51>;
> -		pagesize = <0x20>;
> -	};
> -};
> -
> -&i2c1 {
> -	status = "disabled";
> -
> -	adxl345@53 {
> -		compatible = "adi,adxl34x";
> -		reg = <0x53>;
> -		interrupt-parent = <0x2>;
> -		interrupts = <0x0 0xa6 0x4>;
> -	};
> -};
> -
> -&qspi {
> -	status = "okay";
> -
> -	flash: flash@0 {
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -		compatible = "n25q00";
> -		reg = <0>;
> -		spi-max-frequency = <108000000>;
> -		m25p,fast-read;
> -		cdns,page-size = <256>;
> -		cdns,block-size = <16>;
> -		cdns,read-delay = <4>;
> -		cdns,tshsl-ns = <50>;
> -		cdns,tsd2d-ns = <50>;
> -		cdns,tchsh-ns = <4>;
> -		cdns,tslch-ns = <4>;
> -	};
>  };
> -- 
> 2.11.0
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
