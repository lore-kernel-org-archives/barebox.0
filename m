Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7ddx-0000RZ-43
 for barebox@lists.infradead.org; Tue, 31 May 2016 06:59:13 +0000
Date: Tue, 31 May 2016 08:58:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160531065851.GB31666@pengutronix.de>
References: <1464601193-20832-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464601193-20832-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/3] eeprom: at25: check return value of devfs_create
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 30, 2016 at 11:39:51AM +0200, Uwe Kleine-K=F6nig wrote:
> Also only emit the message that the device was probed when it
> actually was.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

Applied, thanks

Sascha

>  drivers/eeprom/at25.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
> index 9f054d00b459..f7f8368c4b45 100644
> --- a/drivers/eeprom/at25.c
> +++ b/drivers/eeprom/at25.c
> @@ -354,8 +354,11 @@ static int at25_probe(struct device_d *dev)
>  		goto fail;
>  	}
>  =

> +	err =3D devfs_create(&at25->cdev);
> +	if (err)
> +		goto fail;
> +
>  	dev_dbg(dev, "%s probed\n", at25->cdev.name);
> -	devfs_create(&at25->cdev);
>  	of_parse_partitions(&at25->cdev, dev->device_node);
>  	return 0;
>  =

> -- =

> 2.8.1
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
