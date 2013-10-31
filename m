Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vbn1T-0001VY-RA
 for barebox@lists.infradead.org; Thu, 31 Oct 2013 07:50:32 +0000
Date: Thu, 31 Oct 2013 08:50:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131031075010.GJ24559@pengutronix.de>
References: <1383131188-22043-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383131188-22043-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] pinctrl: don't allow drivers to be selected by
 menuconfig user
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 30, 2013 at 12:06:28PM +0100, Lucas Stach wrote:
> There is no much sense in having the pinctrl drivers be user selectable
> as all arches using on of them already selects the right one.
> =

> So to avoid presenting the user with the choice to enable unrelated
> pinctrl drivers or pushing lots of dependencies into the Kconfig just
> drop the configurability.
> =

> Reported-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks

Sascha

> ---
>  drivers/pinctrl/Kconfig | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
> index 0b859b8..58397a0 100644
> --- a/drivers/pinctrl/Kconfig
> +++ b/drivers/pinctrl/Kconfig
> @@ -1,5 +1,3 @@
> -menu "Pin controllers"
> -
>  config PINCTRL
>  	bool "Pin controller core support"
>  	depends on OFDEVICE
> @@ -10,25 +8,23 @@ config PINCTRL
>  	  support but instead provide their own SoC specific APIs
>  =

>  config PINCTRL_IMX_IOMUX_V1
> -	bool "i.MX iomux v1"
> +	bool
>  	help
>  	  This iomux controller is found on i.MX1,21,27.
>  =

>  config PINCTRL_IMX_IOMUX_V2
> -	bool "i.MX iomux v2"
> +	bool
>  	help
>  	  This iomux controller is found on i.MX31.
>  =

>  config PINCTRL_IMX_IOMUX_V3
>  	select PINCTRL if OFDEVICE
> -	bool "i.MX iomux v3"
> +	bool
>  	help
>  	  This iomux controller is found on i.MX25,35,51,53,6.
>  =

>  config PINCTRL_TEGRA20
>  	select PINCTRL
> -	bool "Tegra 20 pinmux"
> +	bool
>  	help
>  	  The pinmux controller found on the Tegra 20 line of SoCs.
> -
> -endmenu
> -- =

> 1.8.4.rc3
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
