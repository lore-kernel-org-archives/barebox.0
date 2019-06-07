Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8tD-0004Wb-Ao
 for barebox@lists.infradead.org; Fri, 07 Jun 2019 07:02:17 +0000
Date: Fri, 7 Jun 2019 09:02:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190607070213.doc42skp6ya7iajd@pengutronix.de>
References: <20190605151328.29932-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605151328.29932-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH] ARM: udoo-neo: add ocotp and environment nodes
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 05, 2019 at 05:13:28PM +0200, Rouven Czerwinski wrote:
> Add the ocotp node to retrieve the MAC address from the fuses and enable
> environment storage on the SD-card.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/dts/imx6sx-udoo-neo-full.dts | 27 ++++++++++++++++++++++++++-
>  1 file changed, 26 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6sx-udoo-neo-full.dts b/arch/arm/dts/imx6sx-udoo-neo-full.dts
> index 9203d40207..1609781b7f 100644
> --- a/arch/arm/dts/imx6sx-udoo-neo-full.dts
> +++ b/arch/arm/dts/imx6sx-udoo-neo-full.dts
> @@ -1,4 +1,29 @@
>  #include <arm/imx6sx-udoo-neo-full.dts>
>  
> -/{
> +/ {
> +	chosen {
> +		environment {
> +			compatible = "barebox,environment";
> +			device-path = &environment_usdhc2;
> +		};
> +	};
> +};
> +
> +&usdhc2 {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	partition@0 {
> +		label = "barebox";
> +		reg = <0x0 0xe0000>;
> +	};
> +
> +	environment_usdhc2: partition@e0000 {
> +		label = "barebox-environment";
> +		reg = <0xe0000 0x20000>;
> +	};
> +};
> +
> +&ocotp {
> +	barebox,provide-mac-address = <&fec1 0x620>;
>  };
> -- 
> 2.21.0
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
