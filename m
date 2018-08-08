Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnIy4-0000xg-QX
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 07:33:18 +0000
Date: Wed, 8 Aug 2018 09:33:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808073305.gs2ne6ffwyl76vmf@pengutronix.de>
References: <20180807142116.26093-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180807142116.26093-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] ARM: phytec-som-am335x: make autoenable actually usable
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Daniel Schultz <d.schultz@phytec.de>

On Tue, Aug 07, 2018 at 04:21:16PM +0200, Uwe Kleine-K=F6nig wrote:
> IS_ENABLED has to be passed the full symbol name including the CONFIG_
> prefix. Otherwise IS_ENABLED evaluates to 0.
> =

> Fixes: 2877e08f9e1a ("ARM: phytec-som-am335x: Add autoenable")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> --
> Cc: Daniel Schultz <d.schultz@phytec.de>
> ---
>  arch/arm/boards/phytec-som-am335x/board.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/=
phytec-som-am335x/board.c
> index 0e9bf5fdef88..8c24f2b33249 100644
> --- a/arch/arm/boards/phytec-som-am335x/board.c
> +++ b/arch/arm/boards/phytec-som-am335x/board.c
> @@ -135,7 +135,7 @@ static int physom_devices_init(void)
>  			}
>  	}
>  =

> -	if (IS_ENABLED(PHYTEC_SOM_AM335X_OF_AUTOENABLE)) {
> +	if (IS_ENABLED(CONFIG_PHYTEC_SOM_AM335X_OF_AUTOENABLE)) {
>  		/* Enable NAND */
>  		of_autoenable_device_by_path("/ocp/gpmc@50000000");
>  		/* Enable eMMC */
> -- =

> 2.18.0
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
