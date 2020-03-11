Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2us-0006CY-Sx
 for barebox@lists.infradead.org; Wed, 11 Mar 2020 15:05:05 +0000
Date: Wed, 11 Mar 2020 16:05:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200311150500.GD3335@pengutronix.de>
References: <b2db7e05d21f4e164862a52e2bee358ebf8a618b.camel@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2db7e05d21f4e164862a52e2bee358ebf8a618b.camel@googlemail.com>
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
Subject: Re: [PATCH 1/2] ARM: dts: advantech-rom-7421: fix sd-card cd pin
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 09, 2020 at 07:50:12PM +0100, Christoph Fritz wrote:
> Enable possibility to auto detect sd-card insertion on Advantech
> ROM-7421, this patch sets a necessary gpio to active-low.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---
>  arch/arm/dts/imx6dl-advantech-rom-7421.dts | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6dl-advantech-rom-7421.dts b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
> index cdf378114a..22ce744307 100755
> --- a/arch/arm/dts/imx6dl-advantech-rom-7421.dts
> +++ b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
> @@ -100,7 +100,7 @@
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_usdhc2>;
>  	bus-width = <8>;
> -	cd-gpios = <&gpio2 0 0>;
> +	cd-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
>  	status = "okay";
>  
>  	#address-cells = <1>;
> @@ -121,9 +121,9 @@
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_usdhc3>;
>  	bus-width = <4>;
> -	cd-gpios = <&gpio2 1 0>;
> -	en-gpios = <&gpio2 2 0>;
> -	wp-gpios = <&gpio2 3 0>;
> +	cd-gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
> +	en-gpios = <&gpio2 2 GPIO_ACTIVE_HIGH>;
> +	wp-gpios = <&gpio2 3 GPIO_ACTIVE_HIGH>;
>  	status = "okay";
>  };
>  
> -- 
> 2.20.1
> 
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
