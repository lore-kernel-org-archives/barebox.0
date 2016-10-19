Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bwntF-0001VZ-FD
 for barebox@lists.infradead.org; Wed, 19 Oct 2016 10:14:49 +0000
Date: Wed, 19 Oct 2016 12:14:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161019101407.kvibmtez5vnlqoar@pengutronix.de>
References: <20161019073045.15747-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161019073045.15747-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] spi: mvebu: make more than one device on a bus work
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 19, 2016 at 09:30:45AM +0200, Uwe Kleine-K=F6nig wrote:
> The mvebu socs support up to 8 chip selects. Make use of them.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/spi/mvebu_spi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/spi/mvebu_spi.c b/drivers/spi/mvebu_spi.c
> index c679e64c4248..335774d4c609 100644
> --- a/drivers/spi/mvebu_spi.c
> +++ b/drivers/spi/mvebu_spi.c
> @@ -361,7 +361,7 @@ static int mvebu_spi_probe(struct device_d *dev)
>  	master->bus_num =3D dev->id;
>  	master->setup =3D mvebu_spi_setup;
>  	master->transfer =3D mvebu_spi_transfer;
> -	master->num_chipselect =3D 1;
> +	master->num_chipselect =3D 8;
>  =

>  	ret =3D spi_register_master(master);
>  	if (!ret)
> -- =

> 2.9.3
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
