Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ceGKC-0000xv-1N
 for barebox@lists.infradead.org; Thu, 16 Feb 2017 07:17:57 +0000
Date: Thu, 16 Feb 2017 08:17:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170216071734.hpgtbbtc3migudlg@pengutronix.de>
References: <20170214110312.16748-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170214110312.16748-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] arm: imx: don't let MACH_SABRELITE select
 HAVE_PBL_MULTI_IMAGES
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 14, 2017 at 12:03:12PM +0100, Uwe Kleine-K=F6nig wrote:
> MACH_SABRELITE is only selectable if IMX_MULTI_BOARDS is enabled. The lat=
ter
> already selects HAVE_PBL_MULTI_IMAGES.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index f83aedc0b9fa..36d110758f7d 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -309,7 +309,6 @@ config MACH_TX6X
>  config MACH_SABRELITE
>  	bool "Freescale i.MX6 Sabre Lite"
>  	select ARCH_IMX6
> -	select HAVE_PBL_MULTI_IMAGES
>  =

>  config MACH_SABRESD
>  	bool "Freescale i.MX6 SabreSD"
> -- =

> 2.11.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
