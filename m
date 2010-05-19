Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OEh1h-00043A-QR
	for barebox@lists.infradead.org; Wed, 19 May 2010 11:01:28 +0000
Date: Wed, 19 May 2010 13:01:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100519110124.GM31199@pengutronix.de>
References: <1274174808-9516-1-git-send-email-eric@eukrea.com>
	<1274174808-9516-2-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1274174808-9516-2-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 2/3] i2c: add i2cdev driver
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Tue, May 18, 2010 at 11:26:47AM +0200, Eric B=E9nard wrote:
> this driver is needed to introduce i2c commands

This approach limits the i2cdev support to exactly one bus which is not
good. What we can do here is:

- collect all available adapters in a list in drivers/i2c/i2c.c
- implement i2c_get_adapter(int busnum) to get an adapter from its
  busnum
- then you can add a -b busnum argument to the i2c_read/i2c_write commands
  and use i2c_get_adapter() there. You don't need this file anymore then.

Sascha

> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  drivers/i2c/Kconfig  |    3 ++
>  drivers/i2c/Makefile |    1 +
>  drivers/i2c/i2cdev.c |   83 ++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 87 insertions(+), 0 deletions(-)
>  create mode 100644 drivers/i2c/i2cdev.c
> =

> diff --git a/drivers/i2c/Kconfig b/drivers/i2c/Kconfig
> index f1b2949..cbd2464 100644
> --- a/drivers/i2c/Kconfig
> +++ b/drivers/i2c/Kconfig
> @@ -16,4 +16,7 @@ config DRIVER_I2C_MC9SDZ60
>  config DRIVER_I2C_LP3972
>  	bool "LP3972 driver"
>  =

> +config DRIVER_I2C_I2CDEV
> +	bool "I2CDEV driver"
> +
>  endif
> diff --git a/drivers/i2c/Makefile b/drivers/i2c/Makefile
> index 62d030b..a193f9c 100644
> --- a/drivers/i2c/Makefile
> +++ b/drivers/i2c/Makefile
> @@ -5,3 +5,4 @@ obj-$(CONFIG_DRIVER_I2C_IMX) +=3D i2c-imx.o
>  obj-$(CONFIG_DRIVER_I2C_MC13892) +=3D mc13892.o
>  obj-$(CONFIG_DRIVER_I2C_MC9SDZ60) +=3D mc9sdz60.o
>  obj-$(CONFIG_DRIVER_I2C_LP3972) +=3D lp3972.o
> +obj-$(CONFIG_DRIVER_I2C_I2CDEV) +=3D i2cdev.o
> diff --git a/drivers/i2c/i2cdev.c b/drivers/i2c/i2cdev.c
> new file mode 100644
> index 0000000..194db6c
> --- /dev/null
> +++ b/drivers/i2c/i2cdev.c
> @@ -0,0 +1,83 @@
> +/*
> + * Copyright (C) 2007 Sascha Hauer, Pengutronix
> + *               2009 Marc Kleine-Budde <mkl@pengutronix.de>
> + *               2009 Eric Benard <eric@eukrea.com>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <xfuncs.h>
> +#include <errno.h>
> +
> +#include <i2c/i2c.h>
> +
> +#include <asm/byteorder.h>
> +
> +#define DRIVERNAME		"i2cdev"
> +
> +struct i2cdev_priv {
> +	struct cdev		cdev;
> +	struct i2c_client	*client;
> +};
> +
> +#define to_i2cdev_priv(a)	container_of(a, struct i2cdev_priv, cdev)
> +
> +static struct i2cdev_priv *i2cdev_dev;
> +
> +struct i2c_client *i2cdev_get_client(void)
> +{
> +	if (!i2cdev_dev)
> +		return NULL;
> +
> +	return i2cdev_dev->client;
> +}
> +
> +static struct file_operations i2cdev_fops =3D {
> +};
> +
> +static int i2cdev_probe(struct device_d *dev)
> +{
> +	if (i2cdev_dev)
> +		return -EBUSY;
> +
> +	i2cdev_dev =3D xzalloc(sizeof(struct i2cdev_priv));
> +	i2cdev_dev->cdev.name =3D DRIVERNAME;
> +	i2cdev_dev->client =3D to_i2c_client(dev);
> +	i2cdev_dev->cdev.size =3D 256;
> +	i2cdev_dev->cdev.dev =3D dev;
> +	i2cdev_dev->cdev.ops =3D &i2cdev_fops;
> +
> +	devfs_create(&i2cdev_dev->cdev);
> +
> +	return 0;
> +}
> +
> +static struct driver_d i2cdev_driver =3D {
> +	.name  =3D DRIVERNAME,
> +	.probe =3D i2cdev_probe,
> +};
> +
> +static int i2cdev_init(void)
> +{
> +	register_driver(&i2cdev_driver);
> +	return 0;
> +}
> +
> +device_initcall(i2cdev_init);
> -- =

> 1.6.3.3
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
