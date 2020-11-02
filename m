Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZV4j-0004K7-D1
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 08:20:26 +0000
Date: Mon, 2 Nov 2020 09:20:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201102082023.GS26805@pengutronix.de>
References: <20201030071350.9691-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201030071350.9691-1-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: dts: imx6qdl: pfla02: Remove eeprom node
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Oct 30, 2020 at 10:13:50AM +0300, Alexander Shiyan wrote:
> The upstream dtsi now has a eeprom node, so no need to duplicate
> anymore. Let's keep the "page_size" property for a while.

Patch looks good, so applied, thanks

I just wonder why the pagesize isn't included in the upstream dts.
Shouldn't it be there as well?

Sascha

> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> index b83511cb0..d0b056b2f 100644
> --- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> @@ -155,6 +155,10 @@
>  	barebox,provide-mac-address = <&fec 0x620>;
>  };
>  
> +&som_eeprom {
> +	pagesize = <32>;
> +};
> +
>  &usdhc3 {
>  	#address-cells = <1>;
>  	#size-cells = <1>;
> @@ -175,12 +179,6 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> -	eeprom: eeprom@50 {
> -		compatible = "atmel,24c32";
> -		pagesize = <32>;
> -		reg = <0x50>;
> -	};
> -
>  	pmic@58 {
>  		watchdog-priority = <500>;
>  		restart-priority = <500>;
> -- 
> 2.26.2
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
