Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baGsj-0002Tw-HR
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 06:32:50 +0000
Date: Thu, 18 Aug 2016 08:32:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160818063227.GE20657@pengutronix.de>
References: <1471383369-23015-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1471383369-23015-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: dts: reuse TP-LINK MR3020 dts file from linux
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 17, 2016 at 12:36:09AM +0300, Antony Pavlov wrote:
> At the moment barebox tplink-mr3020.dts file has almost
> the same content as linux ar9331_tl_mr3020.dts file
> so we can reuse linux dts-file and drop duplicated lines
> from barebox dts-file.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/dts/tplink-mr3020.dts | 68 +----------------------------------------
>  1 file changed, 1 insertion(+), 67 deletions(-)

Applied, thanks

There is no difference between the two patches you sent, right?

Sascha


> 
> diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
> index 831fab8..1e843ee 100644
> --- a/arch/mips/dts/tplink-mr3020.dts
> +++ b/arch/mips/dts/tplink-mr3020.dts
> @@ -1,73 +1,7 @@
> -/dts-v1/;
> -
> -#include <dt-bindings/gpio/gpio.h>
> -
> -#include <mips/qca/ar9331.dtsi>
> +#include <mips/qca/ar9331_tl_mr3020.dts>
>  
>  / {
> -	model = "TP-Link TL-MR3020";
> -	compatible = "tplink,tl-mr3020";
> -
>  	aliases {
>  		spiflash = &spiflash;
>  	};
> -
> -	memory@0 {
> -		device_type = "memory";
> -		reg = <0x00000000 0x2000000>;
> -	};
> -
> -	leds {
> -		compatible = "gpio-leds";
> -
> -		wlan {
> -			label = "tp-link:green:wlan";
> -			gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
> -			default-state = "off";
> -		};
> -
> -		lan {
> -			label = "tp-link:green:lan";
> -			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
> -			default-state = "off";
> -		};
> -
> -		wps {
> -			label = "tp-link:green:wps";
> -			gpios = <&gpio 26 GPIO_ACTIVE_LOW>;
> -			default-state = "off";
> -		};
> -
> -		led3g {
> -			label = "tp-link:green:3g";
> -			gpios = <&gpio 27 GPIO_ACTIVE_LOW>;
> -			default-state = "off";
> -		};
> -	};
> -};
> -
> -&ref {
> -	clock-frequency = <25000000>;
> -};
> -
> -&uart {
> -	status = "okay";
> -};
> -
> -&gpio {
> -	status = "okay";
> -};
> -
> -&spi {
> -	num-chipselects = <1>;
> -	status = "okay";
> -
> -	/* Spansion S25FL032PIF SPI flash */
> -	spiflash: s25sl032p@0 {
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -		compatible = "spansion,s25sl032p", "jedec,spi-nor";
> -		spi-max-frequency = <104000000>;
> -		reg = <0>;
> -	};
>  };
> -- 
> 2.8.1
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
