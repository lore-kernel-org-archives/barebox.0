Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cprot-0006WL-H4
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 07:33:37 +0000
Date: Mon, 20 Mar 2017 08:33:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170320073313.66bibqorbi35xdgd@pengutronix.de>
References: <1489942930-16229-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1489942930-16229-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] ARM: dts: i.MX7 WaRP7: remove wdog1 pinctrl workaround
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Sun, Mar 19, 2017 at 06:02:10PM +0100, Alexander Kurz wrote:
> The wdog1 pinctrl got fixed with linux upstream commit 213e51ca8df1 ("ARM:
> dts: imx7: Add "LPSR" to LPSR iomux pin names").
> Remove the old workaround, since it triggers a build error.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/dts/imx7s-warp.dts | 17 -----------------
>  1 file changed, 17 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx7s-warp.dts b/arch/arm/dts/imx7s-warp.dts
> index a59823d..c2db0d8 100644
> --- a/arch/arm/dts/imx7s-warp.dts
> +++ b/arch/arm/dts/imx7s-warp.dts
> @@ -43,20 +43,3 @@
>  		};
>  	};
>  };
> -
> -/*
> -/* The watchdog pinctrl is attached to the wrong iomux controller in
> - * the upstream dts file. This can be removed once we pull in the
> - * corresponding fix from the upstream dts files.
> - */
> -&wdog1 {
> -	pinctrl-0 = <&pinctrl_wdog_lpsr>;
> -};
> -
> -&iomuxc_lpsr {
> -	pinctrl_wdog_lpsr: wdoggrp {
> -		fsl,pins = <
> -			MX7D_PAD_GPIO1_IO00__WDOD1_WDOG_B       0x74
> -		>;
> -	};
> -};
> -- 
> 2.1.4
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
