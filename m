Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6RZe-00060X-6a
	for barebox@lists.infradead.org; Sun, 03 Apr 2011 17:58:56 +0000
Message-ID: <4D98B55B.9090609@pengutronix.de>
Date: Sun, 03 Apr 2011 19:58:51 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1301826331-18875-1-git-send-email-franck.jullien@gmail.com>	<4D98680C.9060904@pengutronix.de>
	<BANLkTikRtzECN15bjo249gOEYE8KA+7ZqA@mail.gmail.com>
In-Reply-To: <BANLkTikRtzECN15bjo249gOEYE8KA+7ZqA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0857801404=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Nios2: Add Altera UART driver
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0857801404==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig061B95EEAC08DB13CED35303"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig061B95EEAC08DB13CED35303
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/03/2011 04:02 PM, Franck JULLIEN wrote:

[...]

>>> index 9f0e12b..8067b74 100644
>>> --- a/drivers/serial/Makefile
>>> +++ b/drivers/serial/Makefile
>>> @@ -4,15 +4,16 @@
>>>  # serial_max3100.o
>>>  # serial_pl010.o
>>>  # serial_xuartlite.o
>>> -obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC)          +=3D arm_dcc.o
>>> -obj-$(CONFIG_SERIAL_AMBA_PL011) +=3D amba-pl011.o
>>> -obj-$(CONFIG_DRIVER_SERIAL_IMX)                      +=3D serial_imx=
=2Eo
>>> -obj-$(CONFIG_DRIVER_SERIAL_STM378X)          +=3D stm-serial.o
>>> -obj-$(CONFIG_DRIVER_SERIAL_ATMEL)            +=3D atmel.o
>>> -obj-$(CONFIG_DRIVER_SERIAL_NETX)             +=3D serial_netx.o
>>> -obj-$(CONFIG_DRIVER_SERIAL_LINUX_COMSOLE)    +=3D linux_console.o
>>> -obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)          +=3D serial_mpc5xxx.o
>>> -obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)         +=3D serial_blackfin.o
>>> -obj-$(CONFIG_DRIVER_SERIAL_NS16550)          +=3D serial_ns16550.o
>>> -obj-$(CONFIG_DRIVER_SERIAL_PL010)            +=3D serial_pl010.o
>>> -obj-$(CONFIG_DRIVER_SERIAL_S3C24X0)          +=3D serial_s3c24x0.o
>>> +obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC)             +=3D arm_dcc.o
>>> +obj-$(CONFIG_SERIAL_AMBA_PL011)                 +=3D amba-pl011.o
>>> +obj-$(CONFIG_DRIVER_SERIAL_IMX)                 +=3D serial_imx.o
>>> +obj-$(CONFIG_DRIVER_SERIAL_STM378X)             +=3D stm-serial.o
>>> +obj-$(CONFIG_DRIVER_SERIAL_ATMEL)               +=3D atmel.o
>>> +obj-$(CONFIG_DRIVER_SERIAL_NETX)                +=3D serial_netx.o
>>> +obj-$(CONFIG_DRIVER_SERIAL_LINUX_COMSOLE)       +=3D linux_console.o=

>>> +obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)             +=3D serial_mpc5xxx.=
o
>>> +obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)            +=3D serial_blackfin=
=2Eo
>>> +obj-$(CONFIG_DRIVER_SERIAL_NS16550)             +=3D serial_ns16550.=
o
>>> +obj-$(CONFIG_DRIVER_SERIAL_PL010)               +=3D serial_pl010.o
>>> +obj-$(CONFIG_DRIVER_SERIAL_S3C24X0)             +=3D serial_s3c24x0.=
o
>>> +obj-$(CONFIG_DRIVER_SERIAL_ALTERA)              +=3D serial_altera.o=

>>
>> Why do you reformat the whole file? Please don't do that.
>>
>=20
>=20
> Because there is a mix between tabs and spaces before the "+=3D ....". =
I think
> it's better to have spaces here in order
> to maintain alignment no matter what the tab size is. Tell me if you're=

> agree, if not, I'll just put my new line at the bottom..... :)

The tab size is 8 by definition. I see that AMBA_PL011 does it
different, but the other indent with tabs.

>>> diff --git a/drivers/serial/serial_altera.c
>> b/drivers/serial/serial_altera.c
>>> new file mode 100644
>>> index 0000000..03e48d1
>>> --- /dev/null
>>> +++ b/drivers/serial/serial_altera.c
>>> @@ -0,0 +1,97 @@
>>> +/*
>>> + * (C) Copyright 2011, Franck JULLIEN, <elec4fun@gmail.com>
>>> + *
>>> + * See file CREDITS for list of people who contributed to this
>>> + * project.
>>> + *
>>> + * This program is free software; you can redistribute it and/or
>>> + * modify it under the terms of the GNU General Public License as
>>> + * published by the Free Software Foundation; either version 2 of
>>> + * the License, or (at your option) any later version.
>>> + *
>>> + * This program is distributed in the hope that it will be useful,
>>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>>> + * GNU General Public License for more details.
>>> + *
>>> + * You should have received a copy of the GNU General Public License=

>>> + * along with this program; if not, write to the Free Software
>>> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
>>> + * MA 02111-1307 USA
>>> + */
>>> +
>>> +#include <common.h>
>>> +#include <driver.h>
>>> +#include <init.h>
>>> +#include <malloc.h>
>>> +#include <asm/io.h>
>>> +#include <asm/nios2-io.h>
>>> +
>>> +static int altera_serial_setbaudrate(struct console_device *cdev, in=
t
>> baudrate)
>>> +{
>>> +     volatile struct nios_uart * uart =3D (struct nios_uart
>> *)cdev->dev->map_base;
>>                                    ^
>>
>> please remove this space.
>>
>>
> Damn, I used the checkpatch script though, should have seen it....
>=20
>=20
>> no volatiles please.
>>
>>
>=20
> Yeah I know but last time I removed those volatile, the driver didn't w=
ork
> anymore ?!? I've done a test after I read your reply and it
> works without so I'll remove them.

You've found the answer yourself :) We don't do pointer derefs to iomem
in C but use readl/writel instead.

>=20
>=20
>=20
>>> +     unsigned div;
>>> +
>>> +     div =3D (CPU_FREQ / baudrate) - 1;
>>> +     writel(div, &uart->divisor);
>>> +
>>> +     return 0;
>>> +}
>>> +
>>> +static void altera_serial_putc(struct console_device *cdev, char c)
>>> +{
>>> +     volatile struct nios_uart *uart =3D (struct nios_uart
>> *)cdev->dev->map_base;
>>> +
>>> +     if (c =3D=3D '\n')
>>> +             altera_serial_putc(cdev, '\r');
>>
>> Why this? Only the at91rm9200 driver does this and I don't know why...=
=2E
>>
>>
> Because I copied it from U-Boot :) Removed.
>=20
>=20
>=20
>>> +
>>> +     while ((readl(&uart->status) & NIOS_UART_TRDY) =3D=3D 0);
>>> +     writel(c, &uart->txdata);
>>> +}
>>> +
>>> +static int altera_serial_tstc(struct console_device *cdev)
>>> +{
>>> +     volatile struct nios_uart *uart =3D (struct nios_uart
>> *)cdev->dev->map_base;
>>
>> No volatiles
>>
>>> +
>>> +     return readl(&uart->status) & NIOS_UART_RRDY;
>>> +}
>>> +
>>> +static int altera_serial_getc(struct console_device *cdev)
>>> +{
>>> +     volatile struct nios_uart *uart =3D (struct nios_uart
>> *)cdev->dev->map_base;
>> dito
>>> +
>>> +     while (altera_serial_tstc(cdev) =3D=3D 0);
>> please add a comment, or at least an empty line after while
>>
>>
> Do you guys put the semi colon on the next line also ?

Don't know.

>>> +     return readl(&uart->rxdata) & 0x000000FF;
>>> +}
>>> +
>>> +static int altera_serial_probe(struct device_d *dev)
>>> +{
>>> +     struct console_device *cdev;
>>> +
>>> +     cdev =3D malloc(sizeof(struct console_device));
>>
>> malloc can fail, use xmalloc instead
>>
>>
> Done.
>=20
>=20
>>> +     dev->type_data =3D cdev;
>>> +     cdev->dev =3D dev;
>>> +     cdev->f_caps =3D CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDER=
R;
>>> +     cdev->tstc =3D altera_serial_tstc;
>>> +     cdev->putc =3D altera_serial_putc;
>>> +     cdev->getc =3D altera_serial_getc;
>>> +     cdev->setbrg =3D altera_serial_setbaudrate;
>>> +
>>> +     console_register(cdev);
>>> +
>>> +     return 0;
>>> +}
>>> +
>>> +static struct driver_d altera_serial_driver =3D {
>>> +     .name  =3D "altera_serial",
>>              ^^
>> one space is enough
>>
>>
> Copied from blackfin :) Patch it ?

see below

>=20
>=20
>=20
>>> +     .probe =3D altera_serial_probe,
>>> +};
>>> +
>>> +static int altera_serial_init(void)
>>> +{
>>> +     register_driver(&altera_serial_driver);
>>> +     return 0;
>>
>> I think return register_driver(); is preferred.
>>
>>
>=20
> Copied from blackfin :) Patch it ?

dito
>=20
>=20
>>> +}
>>> +
>>> +console_initcall(altera_serial_init);
>>> +
>>
>> cheers, Marc
>>
>> --
>> Pengutronix e.K.                  | Marc Kleine-Budde           |
>> Industrial Linux Solutions        | Phone: +49-231-2826-924     |
>> Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
>> Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |
>>
>>
> Do you want me to patch files each time I see a wrong coding style in t=
he
> code ? Because I'm so focused
> on that since I'm working on the nios2 port (and since I display tabs a=
nd
> white spaces in my favorite editor :))
> that I can see coding style mistakes in a lot of files :) (for
> example, leading spaces in serial_imx line 222, 228,
> 245, 313,.... checkpatch gives 9 errors and 44 warnings on this file).

Just fixing the coding style because it's bad is usually not done,
because "git blame" will tell you about the coding style fixer not about
the coder of that line.

The rule of thumb is: Don't introduce new code with bad style. If you
touch code fixing the style in a separate patch before you bring in your
changes is usually accepted.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig061B95EEAC08DB13CED35303
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk2YtVsACgkQjTAFq1RaXHPk4ACfZ22xyrffmz1ERy3vHQ+Wes+I
WzQAn2VHKnJf+UjeVXHCByCqu28RTIf/
=VGIV
-----END PGP SIGNATURE-----

--------------enig061B95EEAC08DB13CED35303--


--===============0857801404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0857801404==--
