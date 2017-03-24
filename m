Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1crMPB-0001SA-Fn
 for barebox@lists.infradead.org; Fri, 24 Mar 2017 10:25:15 +0000
Received: from [192.168.1.100] ([31.18.251.158]) by mail.gmx.com (mrgmx103
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MSuYT-1chdXa2J8v-00RsOw for
 <barebox@lists.infradead.org>; Fri, 24 Mar 2017 11:19:47 +0100
References: <20170324090725.22192-1-o.rempel@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <f9037857-f0b7-355e-439f-bc7bad3dfdfb@rempel-privat.de>
Date: Fri, 24 Mar 2017 11:19:46 +0100
MIME-Version: 1.0
In-Reply-To: <20170324090725.22192-1-o.rempel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4213995005384208692=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH 1/2] usb: gadget: start usbgadget automatically
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4213995005384208692==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="aEVGVrRfsXWcXgMxHFxBOSoBJpD600D8i"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--aEVGVrRfsXWcXgMxHFxBOSoBJpD600D8i
Content-Type: multipart/mixed; boundary="6aeuVuudniHq8lqqirdGd97BtWMSbmvaw";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: barebox@lists.infradead.org
Message-ID: <f9037857-f0b7-355e-439f-bc7bad3dfdfb@rempel-privat.de>
Subject: Re: [RFC PATCH 1/2] usb: gadget: start usbgadget automatically
References: <20170324090725.22192-1-o.rempel@pengutronix.de>
In-Reply-To: <20170324090725.22192-1-o.rempel@pengutronix.de>

--6aeuVuudniHq8lqqirdGd97BtWMSbmvaw
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

After personal feedback i'll resend the patches without RFC

Am 24.03.2017 um 10:07 schrieb Oleksij Rempel:
> ... if glocal variable configured to do this.
>=20
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/usb/gadget/Kconfig     |  6 ++++
>  drivers/usb/gadget/Makefile    |  1 +
>  drivers/usb/gadget/autostart.c | 67 ++++++++++++++++++++++++++++++++++=
++++++++
>  3 files changed, 74 insertions(+)
>  create mode 100644 drivers/usb/gadget/autostart.c
>=20
> diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
> index eb279ae8d..dd5d4a75a 100644
> --- a/drivers/usb/gadget/Kconfig
> +++ b/drivers/usb/gadget/Kconfig
> @@ -30,6 +30,12 @@ config USB_GADGET_DRIVER_PXA27X
>  	default y
>  	select USB_GADGET_DUALSPEED
> =20
> +config USB_GADGET_AUTOSTART
> +	bool
> +	default y
> +	select ENVIRONMENT_VARIABLES
> +	prompt "Automatically start usbgadget on boot"
> +
>  comment "USB Gadget drivers"
> =20
>  config USB_GADGET_DFU
> diff --git a/drivers/usb/gadget/Makefile b/drivers/usb/gadget/Makefile
> index 9ef594575..e74cf0266 100644
> --- a/drivers/usb/gadget/Makefile
> +++ b/drivers/usb/gadget/Makefile
> @@ -1,5 +1,6 @@
> =20
>  obj-$(CONFIG_USB_GADGET) +=3D composite.o config.o usbstring.o epautoc=
onf.o udc-core.o functions.o config.o multi.o
> +obj-$(CONFIG_USB_GADGET_AUTOSTART) +=3D autostart.o
>  obj-$(CONFIG_USB_GADGET_SERIAL) +=3D u_serial.o serial.o f_serial.o f_=
acm.o
>  obj-$(CONFIG_USB_GADGET_DFU) +=3D dfu.o
>  obj-$(CONFIG_USB_GADGET_FASTBOOT) +=3D f_fastboot.o
> diff --git a/drivers/usb/gadget/autostart.c b/drivers/usb/gadget/autost=
art.c
> new file mode 100644
> index 000000000..43c2ba23d
> --- /dev/null
> +++ b/drivers/usb/gadget/autostart.c
> @@ -0,0 +1,67 @@
> +/*
> + * Copyright (c) 2017 Oleksij Rempel <o.rempel@pengutronix.de>, Pengut=
ronix
> + *
> + * This program is free software; you can redistribute it and/or modif=
y
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +#include <common.h>
> +#include <command.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <getopt.h>
> +#include <fs.h>
> +#include <xfuncs.h>
> +#include <usb/usbserial.h>
> +#include <usb/dfu.h>
> +#include <usb/gadget-multi.h>
> +#include <globalvar.h>
> +#include <magicvar.h>
> +
> +static int autostart;
> +static int acm;
> +static char *fastboot_function;
> +
> +static int usbgadget_autostart(void)
> +{
> +	struct f_multi_opts opts =3D {};
> +
> +	if (!autostart)
> +		return 0;
> +
> +	if (fastboot_function)
> +		opts.fastboot_opts.files =3D file_list_parse(fastboot_function);
> +
> +	opts.create_acm =3D acm;
> +
> +	return usb_multi_register(&opts);
> +}
> +postenvironment_initcall(usbgadget_autostart);
> +
> +static int usbgadget_globalvars_init(void)
> +{
> +
> +	globalvar_add_simple_bool("usbgadget.autostart", &autostart);
> +	globalvar_add_simple_bool("usbgadget.acm", &acm);
> +	globalvar_add_simple_string("usbgadget.fastboot_function",
> +				    &fastboot_function);
> +
> +	return 0;
> +}
> +device_initcall(usbgadget_globalvars_init);
> +
> +BAREBOX_MAGICVAR_NAMED(global_usbgadget_autostart,
> +		       global.usbgadget.autostart,
> +		       "usbgadget: Automatically start usbgadget on boot");
> +BAREBOX_MAGICVAR_NAMED(global_usbgadget_acm,
> +		       global.usbgadget.acm,
> +		       "usbgadget: Create CDC ACM function");
> +BAREBOX_MAGICVAR_NAMED(global_usbgadget_fastboot_function,
> +		       global.usbgadget.fastboot_function,
> +		       "usbgadget: Create Android Fastboot function");
>=20


--=20
Regards,
Oleksij


--6aeuVuudniHq8lqqirdGd97BtWMSbmvaw--

--aEVGVrRfsXWcXgMxHFxBOSoBJpD600D8i
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iF4EAREIAAYFAljU8sIACgkQHwImuRkmbWn3xwD/fg0dR54m6/OrS1tuk2ep/kWk
u82R8ZHSIACfrwra6HoA/3569o2OwE5nlHj6EkbFkJVoDnq6iFOlmli+BJgSgo0d
=CUMq
-----END PGP SIGNATURE-----

--aEVGVrRfsXWcXgMxHFxBOSoBJpD600D8i--


--===============4213995005384208692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4213995005384208692==--
