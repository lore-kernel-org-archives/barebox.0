Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6MQS-0004Vy-Dm
	for barebox@lists.infradead.org; Sun, 03 Apr 2011 12:29:06 +0000
Message-ID: <4D98680C.9060904@pengutronix.de>
Date: Sun, 03 Apr 2011 14:29:00 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1301826331-18875-1-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1301826331-18875-1-git-send-email-franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0841876282=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Nios2: Add Altera UART driver
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0841876282==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigE8E369DEFE710118EDDE9B3C"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigE8E369DEFE710118EDDE9B3C
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/03/2011 12:25 PM, franck.jullien@gmail.com wrote:
> From: Franck JULLIEN <franck.jullien@gmail.com>

Please add your S-o-b to the driver. See Documentation/SubmittingPatches
in a Linux-kernel tree.

See comments inline.
>=20
> ---
>  drivers/serial/Kconfig         |    5 ++
>  drivers/serial/Makefile        |   25 +++++-----
>  drivers/serial/serial_altera.c |   97 ++++++++++++++++++++++++++++++++=
++++++++
>  3 files changed, 115 insertions(+), 12 deletions(-)
>  create mode 100644 drivers/serial/serial_altera.c
>=20
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index ffd877a..9e05f4b 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -43,6 +43,11 @@ config DRIVER_SERIAL_BLACKFIN
>  	default y
>  	bool "Blackfin serial driver"
> =20
> +config DRIVER_SERIAL_ALTERA
> +	depends on NIOS2
> +	default y
> +	bool "Altera serial driver"
> +
>  config DRIVER_SERIAL_NS16550
>  	default n
>  	bool "NS16550 serial driver"
> diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> index 9f0e12b..8067b74 100644
> --- a/drivers/serial/Makefile
> +++ b/drivers/serial/Makefile
> @@ -4,15 +4,16 @@
>  # serial_max3100.o
>  # serial_pl010.o
>  # serial_xuartlite.o
> -obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC)		+=3D arm_dcc.o
> -obj-$(CONFIG_SERIAL_AMBA_PL011) +=3D amba-pl011.o
> -obj-$(CONFIG_DRIVER_SERIAL_IMX)			+=3D serial_imx.o
> -obj-$(CONFIG_DRIVER_SERIAL_STM378X)		+=3D stm-serial.o
> -obj-$(CONFIG_DRIVER_SERIAL_ATMEL)		+=3D atmel.o
> -obj-$(CONFIG_DRIVER_SERIAL_NETX)		+=3D serial_netx.o
> -obj-$(CONFIG_DRIVER_SERIAL_LINUX_COMSOLE)	+=3D linux_console.o
> -obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)		+=3D serial_mpc5xxx.o
> -obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)		+=3D serial_blackfin.o
> -obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+=3D serial_ns16550.o
> -obj-$(CONFIG_DRIVER_SERIAL_PL010)		+=3D serial_pl010.o
> -obj-$(CONFIG_DRIVER_SERIAL_S3C24X0)		+=3D serial_s3c24x0.o
> +obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC)             +=3D arm_dcc.o
> +obj-$(CONFIG_SERIAL_AMBA_PL011)                 +=3D amba-pl011.o
> +obj-$(CONFIG_DRIVER_SERIAL_IMX)                 +=3D serial_imx.o
> +obj-$(CONFIG_DRIVER_SERIAL_STM378X)             +=3D stm-serial.o
> +obj-$(CONFIG_DRIVER_SERIAL_ATMEL)               +=3D atmel.o
> +obj-$(CONFIG_DRIVER_SERIAL_NETX)                +=3D serial_netx.o
> +obj-$(CONFIG_DRIVER_SERIAL_LINUX_COMSOLE)       +=3D linux_console.o
> +obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)             +=3D serial_mpc5xxx.o
> +obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)            +=3D serial_blackfin.o=

> +obj-$(CONFIG_DRIVER_SERIAL_NS16550)             +=3D serial_ns16550.o
> +obj-$(CONFIG_DRIVER_SERIAL_PL010)               +=3D serial_pl010.o
> +obj-$(CONFIG_DRIVER_SERIAL_S3C24X0)             +=3D serial_s3c24x0.o
> +obj-$(CONFIG_DRIVER_SERIAL_ALTERA)              +=3D serial_altera.o

Why do you reformat the whole file? Please don't do that.

> diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_alt=
era.c
> new file mode 100644
> index 0000000..03e48d1
> --- /dev/null
> +++ b/drivers/serial/serial_altera.c
> @@ -0,0 +1,97 @@
> +/*
> + * (C) Copyright 2011, Franck JULLIEN, <elec4fun@gmail.com>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
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
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <malloc.h>
> +#include <asm/io.h>
> +#include <asm/nios2-io.h>
> +
> +static int altera_serial_setbaudrate(struct console_device *cdev, int =
baudrate)
> +{
> +	volatile struct nios_uart * uart =3D (struct nios_uart *)cdev->dev->m=
ap_base;
                                   ^

please remove this space.

no volatiles please.

> +	unsigned div;
> +
> +	div =3D (CPU_FREQ / baudrate) - 1;
> +	writel(div, &uart->divisor);
> +
> +	return 0;
> +}
> +
> +static void altera_serial_putc(struct console_device *cdev, char c)
> +{
> +	volatile struct nios_uart *uart =3D (struct nios_uart *)cdev->dev->ma=
p_base;
> +
> +	if (c =3D=3D '\n')
> +		altera_serial_putc(cdev, '\r');

Why this? Only the at91rm9200 driver does this and I don't know why....

> +
> +	while ((readl(&uart->status) & NIOS_UART_TRDY) =3D=3D 0);
> +	writel(c, &uart->txdata);
> +}
> +
> +static int altera_serial_tstc(struct console_device *cdev)
> +{
> +	volatile struct nios_uart *uart =3D (struct nios_uart *)cdev->dev->ma=
p_base;

No volatiles

> +
> +	return readl(&uart->status) & NIOS_UART_RRDY;
> +}
> +
> +static int altera_serial_getc(struct console_device *cdev)
> +{
> +	volatile struct nios_uart *uart =3D (struct nios_uart *)cdev->dev->ma=
p_base;
dito
> +
> +	while (altera_serial_tstc(cdev) =3D=3D 0);
please add a comment, or at least an empty line after while

> +	return readl(&uart->rxdata) & 0x000000FF;
> +}
> +
> +static int altera_serial_probe(struct device_d *dev)
> +{
> +	struct console_device *cdev;
> +
> +	cdev =3D malloc(sizeof(struct console_device));

malloc can fail, use xmalloc instead

> +	dev->type_data =3D cdev;
> +	cdev->dev =3D dev;
> +	cdev->f_caps =3D CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
> +	cdev->tstc =3D altera_serial_tstc;
> +	cdev->putc =3D altera_serial_putc;
> +	cdev->getc =3D altera_serial_getc;
> +	cdev->setbrg =3D altera_serial_setbaudrate;
> +
> +	console_register(cdev);
> +
> +	return 0;
> +}
> +
> +static struct driver_d altera_serial_driver =3D {
> +	.name  =3D "altera_serial",
             ^^
one space is enough

> +	.probe =3D altera_serial_probe,
> +};
> +
> +static int altera_serial_init(void)
> +{
> +	register_driver(&altera_serial_driver);
> +	return 0;

I think return register_driver(); is preferred.

> +}
> +
> +console_initcall(altera_serial_init);
> +

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigE8E369DEFE710118EDDE9B3C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEUEARECAAYFAk2YaAwACgkQjTAFq1RaXHMdcQCXcEYna1b/yuBLavROerXnAyM0
zgCcDgMFsXenZ+IpSd+NC3EBKZCIVno=
=jOx3
-----END PGP SIGNATURE-----

--------------enigE8E369DEFE710118EDDE9B3C--


--===============0841876282==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0841876282==--
