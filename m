Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLqlv-00045I-Px
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 07:32:04 +0000
Date: Wed, 10 Oct 2012 09:32:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121010073201.GL27665@pengutronix.de>
References: <1349776406-14453-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349776406-14453-1-git-send-email-t.gamez@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] ARM OMAP: gpiolib fix chip.base
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org, vicencb@gmail.com

On Tue, Oct 09, 2012 at 11:53:24AM +0200, Teresa G=E1mez wrote:
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
> @ Vicente: Please check if the patches fix your problem
> =

>  arch/arm/mach-omap/gpio.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)

Applied this series to master.

Sascha

> =

> diff --git a/arch/arm/mach-omap/gpio.c b/arch/arm/mach-omap/gpio.c
> index 376e9a7..49ffbda 100644
> --- a/arch/arm/mach-omap/gpio.c
> +++ b/arch/arm/mach-omap/gpio.c
> @@ -133,7 +133,7 @@ static int omap_gpio_probe(struct device_d *dev)
>  	omapgpio =3D xzalloc(sizeof(*omapgpio));
>  	omapgpio->base =3D dev_request_mem_region(dev, 0);
>  	omapgpio->chip.ops =3D &omap_gpio_ops;
> -	omapgpio->chip.base =3D -1;
> +	omapgpio->chip.base =3D dev->id * 32;
>  	omapgpio->chip.ngpio =3D 32;
>  	omapgpio->chip.dev =3D dev;
>  	gpiochip_add(&omapgpio->chip);
> -- =

> 1.7.0.4
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
