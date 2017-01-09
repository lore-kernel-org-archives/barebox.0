Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQVYf-00073e-Qz
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 08:44:05 +0000
Date: Mon, 9 Jan 2017 09:43:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109084339.ayyjysadnmu4vspu@pengutronix.de>
References: <20161223094549.3311-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161223094549.3311-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] ata: pata-imx: simplify assignment of device name
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 23, 2016 at 10:45:49AM +0100, Uwe Kleine-K=F6nig wrote:
> If OF_DEVICE isn't enabled, of_alias_get returns NULL. Also xstrdup
> returns NULL when NULL is passed as argument. This allows to simplify
> accordingly.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

Applied, thanks

Sascha

>  drivers/ata/pata-imx.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
> =

> diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
> index c8098a537fe5..4f75048c12ce 100644
> --- a/drivers/ata/pata-imx.c
> +++ b/drivers/ata/pata-imx.c
> @@ -158,7 +158,6 @@ static int imx_pata_probe(struct device_d *dev)
>  	struct clk *clk;
>  	void __iomem *base;
>  	int ret;
> -	const char *devname =3D NULL;
>  =

>  	ide =3D xzalloc(sizeof(*ide));
>  	iores =3D dev_request_mem_resource(dev, 0);
> @@ -182,14 +181,9 @@ static int imx_pata_probe(struct device_d *dev)
>  =

>  	pata_imx_set_bus_timing(base, clk_get_rate(clk), 4);
>  =

> -	if (IS_ENABLED(CONFIG_OFDEVICE)) {
> -		devname =3D of_alias_get(dev->device_node);
> -		if (devname)
> -			devname =3D xstrdup(devname);
> -	}
>  =

>  	ide->port.dev =3D dev;
> -	ide->port.devname =3D devname;
> +	ide->port.devname =3D xstrdup(of_alias_get(dev->device_node));
>  =

>  	dev->priv =3D ide;
>  	dev->detect =3D pata_imx_detect;
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
