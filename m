Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8oLC-00008E-1Y
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 08:18:35 +0000
Message-ID: <5045B953.6050102@pengutronix.de>
Date: Tue, 04 Sep 2012 10:18:27 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1346670227-1840-1-git-send-email-s.trumtrar@pengutronix.de>
 <1346670227-1840-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1346670227-1840-2-git-send-email-s.trumtrar@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8260469887660963196=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/2] mfd: add stmpe-i2c driver
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============8260469887660963196==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig56969F55D849C41B1729F87A"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig56969F55D849C41B1729F87A
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 09/03/2012 01:03 PM, Steffen Trumtrar wrote:
> The stmpe mfds can be connected via i2c and spi. This driver provides t=
he basic
> infrastructure for the i2c kind. It can be added as a normal i2c-device=
 in the
> board code. To enable functions a platform_data struct has to be provid=
ed, that
> describes what parts of the chip are to be used.
>=20
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/mfd/Kconfig     |    4 ++
>  drivers/mfd/Makefile    |    1 +
>  drivers/mfd/stmpe-i2c.c |  166 +++++++++++++++++++++++++++++++++++++++=
++++++++
>  include/mfd/stmpe-i2c.h |   56 ++++++++++++++++
>  4 files changed, 227 insertions(+)
>  create mode 100644 drivers/mfd/stmpe-i2c.c
>  create mode 100644 include/mfd/stmpe-i2c.h
>=20
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index af67935..20eef86 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -33,4 +33,8 @@ config I2C_TWL6030
>  	select I2C_TWLCORE
>  	bool "TWL6030 driver"
> =20
> +config I2C_STMPE
> +	depends on I2C
> +	bool "STMPE-i2c driver"
> +
>  endmenu
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index e11223b..792ae2d 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -6,3 +6,4 @@ obj-$(CONFIG_I2C_LP3972) +=3D lp3972.o
>  obj-$(CONFIG_I2C_TWLCORE) +=3D twl-core.o
>  obj-$(CONFIG_I2C_TWL4030) +=3D twl4030.o
>  obj-$(CONFIG_I2C_TWL6030) +=3D twl6030.o
> +obj-$(CONFIG_I2C_STMPE) +=3D stmpe-i2c.o
> diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
> new file mode 100644
> index 0000000..a0cfa75
> --- /dev/null
> +++ b/drivers/mfd/stmpe-i2c.c
> @@ -0,0 +1,166 @@
> +/*
> + * Copyright (C) 2012 Pengutronix
> + * Steffen Trumtrar <s.trumtrar@pengutronix.de>
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
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <xfuncs.h>
> +#include <errno.h>
> +
> +#include <i2c/i2c.h>
> +#include <mfd/stmpe-i2c.h>
> +
> +#define DRIVERNAME		"stmpe-i2c"
> +
> +#define to_stmpe(a)		container_of(a, struct stmpe, cdev)
> +
> +static struct stmpe *stmpe_dev;
> +
> +struct stmpe *stmpe_get(void)
> +{
> +	if (!stmpe_dev)
> +		return NULL;

nitpick, you can remove the above return :)
> +
> +	return stmpe_dev;
> +}
> +EXPORT_SYMBOL(stmpe_get);
> +
> +int stmpe_reg_read(struct stmpe *stmpe, u32 reg, u8 *val)
> +{
> +	int ret;
> +
> +	ret =3D i2c_read_reg(stmpe->client, reg, val, 1);
> +
> +	return ret =3D=3D 1 ? 0 : ret;
> +}
> +EXPORT_SYMBOL(stmpe_reg_read)
> +
> +int stmpe_reg_write(struct stmpe *stmpe, u32 reg, u8 val)
> +{
> +	int ret;
> +
> +	ret =3D i2c_write_reg(stmpe->client, reg, &val, 1);
> +
> +	return ret =3D=3D 1 ? 0 : ret;
> +}
> +EXPORT_SYMBOL(stmpe_reg_write)
> +
> +int stmpe_set_bits(struct stmpe *stmpe, u32 reg, u8 mask, u8 val)
> +{
> +	u8 tmp;
> +	int err;
> +
> +	err =3D stmpe_reg_read(stmpe, reg, &tmp);
> +	tmp =3D (tmp & ~mask) | val;
> +
> +	if (!err)
> +		err =3D stmpe_reg_write(stmpe, reg, tmp);
> +
> +	return err;
> +}
> +EXPORT_SYMBOL(stmpe_set_bits);
> +
> +static ssize_t stmpe_read(struct cdev *cdev, void *_buf, size_t count,=
 loff_t offset, ulong flags)
> +{
> +	struct stmpe *stmpe =3D to_stmpe(cdev);
> +	u8 *buf =3D _buf;
> +	size_t i =3D count;
> +	int err;
> +
> +	while (i) {
> +		err =3D stmpe_reg_read(stmpe, offset, buf);
> +		if (err)
> +			return (ssize_t)err;
> +		buf++;
> +		i--;
> +		offset++;
> +	}
> +
> +	return count;
> +}
> +
> +static ssize_t stmpe_write(struct cdev *cdev, const void *_buf, size_t=
 count, loff_t offset, ulong flags)
> +{
> +	struct stmpe *stmpe =3D to_stmpe(cdev);
> +	const u8 *buf =3D _buf;
> +	size_t i =3D count;
> +	int err;
> +
> +	while (i) {
> +		err =3D stmpe_reg_write(stmpe, offset, *buf);
> +		if (err)
> +			return (ssize_t)err;
> +		buf++;
> +		i--;
> +		offset++;
> +	}
> +
> +	return count;
> +}
> +
> +static struct file_operations stmpe_fops =3D {
> +	.lseek	=3D dev_lseek_default,
> +	.read	=3D stmpe_read,
> +	.write	=3D stmpe_write,
> +};
> +
> +static struct stmpe_client_info i2c_ci =3D {
> +	.read_reg =3D stmpe_reg_read,
> +	.write_reg =3D stmpe_reg_write,
> +};
> +
> +static int stmpe_probe(struct device_d *dev)
> +{
> +	struct stmpe_platform_data *pdata =3D dev->platform_data;
> +
> +	if (!pdata) {
> +		dev_dbg(dev, "no platform data\n");
> +		return -ENODEV;
> +	}
> +
> +	if (stmpe_dev)
> +		return -EBUSY;
> +
> +	stmpe_dev =3D xzalloc(sizeof(struct stmpe));
> +	stmpe_dev->cdev.name =3D DRIVERNAME;
> +	stmpe_dev->client =3D to_i2c_client(dev);
> +	stmpe_dev->cdev.size =3D 191;		/* 191 known registers */
> +	stmpe_dev->cdev.dev =3D dev;
> +	stmpe_dev->cdev.ops =3D &stmpe_fops;
> +	stmpe_dev->pdata =3D pdata;
> +	dev->priv =3D stmpe_dev;
> +	i2c_ci.stmpe =3D stmpe_dev;
> +
> +	if (pdata->blocks &=3D STMPE_BLOCK_GPIO)
> +		add_generic_device("stmpe-gpio", 0, NULL, (void __iomem *)pdata->bas=
e, 0x10, IORESOURCE_MEM, &i2c_ci);
                                                          ^^^^^^^^^^^^^^

it's already void __iomem *, isn't it?

> +
> +	devfs_create(&stmpe_dev->cdev);
> +
> +	return 0;
> +}
> +
> +static struct driver_d stmpe_driver =3D {
> +	.name  =3D DRIVERNAME,
> +	.probe =3D stmpe_probe,
> +};
> +
> +static int stmpe_init(void)
> +{
> +        register_driver(&stmpe_driver);
> +        return 0;
> +}
> +
> +device_initcall(stmpe_init);
> diff --git a/include/mfd/stmpe-i2c.h b/include/mfd/stmpe-i2c.h
> new file mode 100644
> index 0000000..c36aed9
> --- /dev/null
> +++ b/include/mfd/stmpe-i2c.h
> @@ -0,0 +1,56 @@
> +/*
> + * Copyright (C) 2012 Pengutronix
> + * Steffen Trumtrar <s.trumtrar@pengutronix.de>
> + *
> + * This file is released under the GPLv2
> + *
> + */
> +
> +#ifndef __ASM_ARCH_STMPE_H
> +#define __ASM_ARCH_STMPE_H
> +
> +enum stmpe_revision {
> +	STMPE610,
> +	STMPE801,
> +	STMPE811,
> +	STMPE1601,
> +	STMPE2401,
> +	STMPE2403,
> +	STMPE_NBR_PARTS
> +};
> +
> +enum stmpe_blocks {
> +	STMPE_BLOCK_GPIO	=3D 1 << 0,
> +	STMPE_BLOCK_KEYPAD      =3D 1 << 1,
> +	STMPE_BLOCK_TOUCHSCREEN =3D 1 << 2,
> +	STMPE_BLOCK_ADC         =3D 1 << 3,
> +	STMPE_BLOCK_PWM         =3D 1 << 4,
> +	STMPE_BLOCK_ROTATOR     =3D 1 << 5,
> +};
> +
> +struct stmpe_platform_data {
> +	enum	stmpe_revision	revision;
> +	enum	stmpe_blocks	blocks;
> +	void	__iomem		*base;
> +	int			gpio_base;
> +};
> +
> +struct stmpe {
> +	struct cdev		cdev;
> +	struct i2c_client	*client;
> +	struct stmpe_platform_data *pdata;
> +};
> +
> +struct stmpe_client_info {
> +	struct stmpe *stmpe;
> +	int (*read_reg)(struct stmpe *stmpe, u32 reg, u8 *val);
> +	int (*write_reg)(struct stmpe *stmpe, u32 reg, u8 val);
> +};
> +
> +extern struct stmpe *stmpe_get(void);
> +
> +extern int stmpe_reg_read(struct stmpe *priv, u32 reg, u8 *val);
> +extern int stmpe_reg_write(struct stmpe *priv, u32 reg, u8 val);
> +extern int stmpe_set_bits(struct stmpe *priv, u32 reg, u8 mask, u8 val=
);
> +
> +#endif /* __ASM_ARCH_STMPE_H */
>=20

Marc


--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig56969F55D849C41B1729F87A
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://www.enigmail.net/

iEYEARECAAYFAlBFuVYACgkQjTAFq1RaXHOKJgCfTM1jirLdHGHRurcreq6IWORk
AO4AniI/mNhEAmVW5o9oF84Upm+EDNrp
=zfSO
-----END PGP SIGNATURE-----

--------------enig56969F55D849C41B1729F87A--


--===============8260469887660963196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8260469887660963196==--
