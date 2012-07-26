Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SuLWL-0001iF-HT
 for barebox@lists.infradead.org; Thu, 26 Jul 2012 10:42:19 +0000
Date: Thu, 26 Jul 2012 12:42:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120726104210.GP30009@pengutronix.de>
References: <1343207114-6238-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343207114-6238-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] i2c: fix printf format specifier
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 25, 2012 at 11:05:14AM +0200, Uwe Kleine-K=F6nig wrote:
> Use %u instead of %d for an u32 variable
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Applied, thanks

  Sascha

> ---
>  drivers/i2c/i2c.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index 9e52b86..b3c3c93 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -181,7 +181,7 @@ int i2c_read_reg(struct i2c_client *client, u32 addr,=
 u8 *buf, u16 count)
>  	msg->len =3D i;
>  =

>  	status =3D i2c_transfer(client->adapter, msg, ARRAY_SIZE(msg));
> -	dev_dbg(&client->dev, "%s: %zu@%d --> %d\n", __func__,
> +	dev_dbg(&client->dev, "%s: %zu@%u --> %d\n", __func__,
>  		count, addr, status);
>  =

>  	if (status =3D=3D ARRAY_SIZE(msg))
> @@ -214,7 +214,7 @@ int i2c_write_reg(struct i2c_client *client, u32 addr=
, const u8 *buf, u16 count)
>  	memcpy(msg->buf + i, buf, count);
>  =

>  	status =3D i2c_transfer(client->adapter, msg, ARRAY_SIZE(msg));
> -	dev_dbg(&client->dev, "%s: %u@%d --> %d\n", __func__,
> +	dev_dbg(&client->dev, "%s: %u@%u --> %d\n", __func__,
>  		count, addr, status);
>  =

>  	if (status =3D=3D ARRAY_SIZE(msg))
> -- =

> 1.7.10.4
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
