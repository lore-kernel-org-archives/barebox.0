Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVArY-0001z5-2x
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 09:56:57 +0000
Date: Wed, 21 Oct 2020 11:56:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201021095652.GW13710@pengutronix.de>
References: <20201020111208.14216-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201020111208.14216-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] mfd: mc34704: fix register reading
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 20, 2020 at 01:12:08PM +0200, Uwe Kleine-K=F6nig wrote:
> According to the data sheet (MC34704 Rev. 8.0, 12/2014) must always have
> the MSB set in the "Sub-address" byte for reads.
> =

> This fixes reading out registers on a MC34704AEP chip.
> =

> Fixes: 514387711f2d ("i2c: add driver for the MC34704 PMIC")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/mfd/mc34704.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
> index 4aa02b74ff20..29071c5ccfce 100644
> --- a/drivers/mfd/mc34704.c
> +++ b/drivers/mfd/mc34704.c
> @@ -43,7 +43,7 @@ int mc34704_reg_read(struct mc34704 *mc34704, u8 reg, u=
8 *val)
>  {
>  	int ret;
>  =

> -	ret =3D i2c_read_reg(mc34704->client, reg, val, 1);
> +	ret =3D i2c_read_reg(mc34704->client, 1 << 7 | reg, val, 1);
>  =

>  	return ret =3D=3D 1 ? 0 : ret;
>  }
> @@ -112,7 +112,7 @@ static int mc34704_probe(struct device_d *dev)
>  	mc34704_dev =3D xzalloc(sizeof(struct mc34704));
>  	mc34704_dev->cdev.name =3D DRIVERNAME;
>  	mc34704_dev->client =3D to_i2c_client(dev);
> -	mc34704_dev->cdev.size =3D 256;
> +	mc34704_dev->cdev.size =3D 128;
>  	mc34704_dev->cdev.dev =3D dev;
>  	mc34704_dev->cdev.ops =3D &mc34704_fops;
>  =

> -- =

> 2.28.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
