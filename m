Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eebkr-0005RJ-6t
 for barebox@lists.infradead.org; Thu, 25 Jan 2018 07:15:27 +0000
Date: Thu, 25 Jan 2018 08:15:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180125071513.3o27lvaxwtnmph64@pengutronix.de>
References: <20180122105958.15354-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180122105958.15354-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] i2c: read/write_reg: don't assume client->dev to be valid
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 22, 2018 at 11:59:58AM +0100, Uwe Kleine-K=F6nig wrote:
> When using the barebox commands i2c_read or i2c_write the client pointer
> passed to the respective function isn't completely initialized. This
> makes
> =

> 	dev_dbg(&client->dev, ...);
> =

> choke as it dereferences client->dev.driver->name with
> client->dev.driver being a random value.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/i2c/i2c.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index fa2c0cd13697..e9e757558561 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -184,7 +184,7 @@ int i2c_read_reg(struct i2c_client *client, u32 addr,=
 u8 *buf, u16 count)
>  	msg->len =3D i;
>  =

>  	status =3D i2c_transfer(client->adapter, msg, ARRAY_SIZE(msg));
> -	dev_dbg(&client->dev, "%s: %u@%u --> %d\n", __func__,
> +	dev_dbg(&client->adapter->dev, "%s: %u@%u --> %d\n", __func__,
>  		count, addr, status);
>  =

>  	if (status =3D=3D ARRAY_SIZE(msg))
> @@ -217,7 +217,7 @@ int i2c_write_reg(struct i2c_client *client, u32 addr=
, const u8 *buf, u16 count)
>  	memcpy(msg->buf + i, buf, count);
>  =

>  	status =3D i2c_transfer(client->adapter, msg, ARRAY_SIZE(msg));
> -	dev_dbg(&client->dev, "%s: %u@%u --> %d\n", __func__,
> +	dev_dbg(&client->adapter->dev, "%s: %u@%u --> %d\n", __func__,
>  		count, addr, status);
>  =

>  	if (status =3D=3D ARRAY_SIZE(msg))
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
