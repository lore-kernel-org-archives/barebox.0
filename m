Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cTo0O-0005F1-4C
 for barebox@lists.infradead.org; Wed, 18 Jan 2017 11:02:18 +0000
Date: Wed, 18 Jan 2017 12:01:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170118110153.xc76525xzcaw74n7@pengutronix.de>
References: <20161219191845.17226-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161219191845.17226-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] ata: ide-sff: don't call free for ide_port in error path
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 19, 2016 at 08:18:45PM +0100, Uwe Kleine-K=F6nig wrote:
> The ide_port is provided by the caller so it's not in the responsibility
> of this function to free this memory in case of error.
> Actually all callers do the free themselves, too.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/ata/ide-sff.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
> index e32cc3fc24f8..6dc89d79a543 100644
> --- a/drivers/ata/ide-sff.c
> +++ b/drivers/ata/ide-sff.c
> @@ -389,11 +389,10 @@ int ide_port_register(struct ide_port *ide)
>  	ide->port.ops =3D &ide_ops;
>  =

>  	ret =3D ata_port_register(&ide->port);
> -	if (!ret)
> -		ata_port_detect(&ide->port);
> -
>  	if (ret)
> -		free(ide);
> +		return ret;
> +
> +	ata_port_detect(&ide->port);
>  =

> -	return ret;
> +	return 0;
>  }
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
