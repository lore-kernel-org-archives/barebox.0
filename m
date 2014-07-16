Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X7Kn0-0004Kr-Af
 for barebox@lists.infradead.org; Wed, 16 Jul 2014 08:42:14 +0000
Date: Wed, 16 Jul 2014 10:41:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140716084152.GE23235@pengutronix.de>
References: <1405415171-740-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1405415171-740-1-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH RESEND] i2c: omap: fix typo in dt_ids
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 15, 2014 at 11:06:11AM +0200, Raphael Poggi wrote:
> Fix a typo in dt_ids name.
> =

> Signed-off-by: Rapha=EBl Poggi <poggi.raph@gmail.com>

Applied, thanks. Sorry, I missed this patch the first time you sent it.

Sascha

> ---
>  drivers/i2c/busses/i2c-omap.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
> index f7108c2..adc952b 100644
> --- a/drivers/i2c/busses/i2c-omap.c
> +++ b/drivers/i2c/busses/i2c-omap.c
> @@ -1132,7 +1132,7 @@ static struct platform_device_id omap_i2c_ids[] =3D=
 {
>  	},
>  };
>  =

> -static __maybe_unused struct of_device_id omap_spi_dt_ids[] =3D {
> +static __maybe_unused struct of_device_id omap_i2c_dt_ids[] =3D {
>  	{
>  		.compatible =3D "ti,omap3-i2c",
>  		.data =3D (unsigned long)&omap3_data,
> @@ -1148,7 +1148,7 @@ static struct driver_d omap_i2c_driver =3D {
>  	.probe		=3D i2c_omap_probe,
>  	.name		=3D DRIVER_NAME,
>  	.id_table	=3D omap_i2c_ids,
> -	.of_compatible =3D DRV_OF_COMPAT(omap_spi_dt_ids),
> +	.of_compatible =3D DRV_OF_COMPAT(omap_i2c_dt_ids),
>  };
>  device_platform_driver(omap_i2c_driver);
>  =

> -- =

> 1.7.9.5
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
