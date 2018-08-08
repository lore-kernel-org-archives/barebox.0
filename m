Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnIvq-0000c1-8o
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 07:30:59 +0000
Date: Wed, 8 Aug 2018 09:30:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808073046.tm67zlqnp3ymk5yg@pengutronix.de>
References: <20180807141109.25575-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180807141109.25575-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] mci: s3c: fix providing info callback
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 07, 2018 at 04:11:09PM +0200, Uwe Kleine-K=F6nig wrote:
> There is no symbol iCONFIG_MCI_INFO, CONFIG_MCI_INFO makes sense here
> and matches what was added in the same commit to other drivers.
> =

> Fixes: 73b0d228e5b0 ("driver: Attach info callback to device, not to driv=
er")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/mci/s3c.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
> index 86a83b63fa87..489609712cb1 100644
> --- a/drivers/mci/s3c.c
> +++ b/drivers/mci/s3c.c
> @@ -755,7 +755,7 @@ static int s3c_mci_probe(struct device_d *hw_dev)
>  	s3c_host->host.f_min =3D pd->f_min =3D=3D 0 ? s3c_get_pclk() / 256 : pd=
->f_min;
>  	s3c_host->host.f_max =3D pd->f_max =3D=3D 0 ? s3c_get_pclk() / 2 : pd->=
f_max;
>  =

> -	if (IS_ENABLED(iCONFIG_MCI_INFO))
> +	if (IS_ENABLED(CONFIG_MCI_INFO))
>  		hw_dev->info =3D s3c_info;
>  =

>  	/*
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
