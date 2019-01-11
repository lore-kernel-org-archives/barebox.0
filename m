Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghufK-0008PP-93
 for barebox@lists.infradead.org; Fri, 11 Jan 2019 11:07:55 +0000
Date: Fri, 11 Jan 2019 12:07:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190111110752.2ifaa4otgx7bsevx@pengutronix.de>
References: <20190111021646.19503-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190111021646.19503-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX8MQ: Add alias for ECSPI1
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 10, 2019 at 06:16:46PM -0800, Andrey Smirnov wrote:
> Add alias for ECSPI1. Without it, the driver will fail to probe due
> to:
> 
> c6ded00cbd ("spi: i.MX: Fix wrong bus nubering with devicetree")
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/dts/imx8mq.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
> index 33b2ca2e6c..8b6bdc6711 100644
> --- a/arch/arm/dts/imx8mq.dtsi
> +++ b/arch/arm/dts/imx8mq.dtsi
> @@ -37,6 +37,7 @@
>  		gpio4 = &gpio5;
>  		mmc0 = &usdhc1;
>  		mmc1 = &usdhc2;
> +		spi0 = &ecspi1;
>  	};
>  
>  	ckil: clk-ckil {
> -- 
> 2.20.1
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
