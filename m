Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShMHN-0005te-5x
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 14:53:11 +0000
Message-ID: <4FE1E3CE.8050908@pengutronix.de>
Date: Wed, 20 Jun 2012 16:53:02 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1340202731-30831-1-git-send-email-jbe@pengutronix.de>
 <1340202731-30831-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1340202731-30831-2-git-send-email-jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7684076757378162269=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] Enable a way to provide the reason for "being here"
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============7684076757378162269==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig791E8F67813426F7A1120B2A"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig791E8F67813426F7A1120B2A
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 06/20/2012 04:32 PM, Juergen Beisert wrote:
> Many architectures support a way to detect why the bootloader is runnin=
g.
> This patch adds a global variable to be able to use the cause in some k=
ind of
> shell code to do special things on demand. For example to do an emergen=
cy boot,
> when the last boot fails and the watchdog reactivate the hanging system=
=2E

Good idea, See comments inline.

Marc

> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  common/Makefile        |    2 +-
>  common/reset_source.c  |   62 ++++++++++++++++++++++++++++++++++++++++=
++++++++
>  include/reset_source.h |   26 ++++++++++++++++++++
>  3 files changed, 89 insertions(+), 1 deletion(-)
>  create mode 100644 common/reset_source.c
>  create mode 100644 include/reset_source.h
>=20
> diff --git a/common/Makefile b/common/Makefile
> index a1926d3..61eeb6b 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -29,7 +29,7 @@ obj-$(CONFIG_CMD_BOOTM) +=3D uimage.o
>  obj-y +=3D startup.o
>  obj-y +=3D misc.o
>  obj-y +=3D memsize.o
> -obj-$(CONFIG_GLOBALVAR) +=3D globalvar.o
> +obj-$(CONFIG_GLOBALVAR) +=3D globalvar.o reset_source.o
>  obj-$(CONFIG_FILETYPE) +=3D filetype.o
>  obj-y +=3D resource.o
>  obj-$(CONFIG_MENU) +=3D menu.o
> diff --git a/common/reset_source.c b/common/reset_source.c
> new file mode 100644
> index 0000000..19015b2
> --- /dev/null
> +++ b/common/reset_source.c
> @@ -0,0 +1,62 @@
> +/*
> + * (C) Copyright 2012 Juergen Beisert - <kernel@pengutronix.de>
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
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <environment.h>
> +#include <globalvar.h>
> +#include <reset_source.h>
> +
> +static const char name[] =3D "global.system.reset";
> +static const char unknown_reset[] =3D "unknown";
> +static const char power_on_reset[] =3D "POR";
> +static const char manual_reset[] =3D "RST";
> +static const char watchdog[] =3D "WDG";
> +static const char wake[] =3D "WKE";
> +static const char jtag[] =3D "JTAG";

what about using an array

static cost char *reset_reason_array[] =3D {
	[RESET_UKWN] =3D "unknown",
	...
};

> +
> +void set_reset_source(unsigned source)
                         ^^^^^^^^
enum (see below)

> +{
> +	switch (source) {
> +	case RESET_UKWN:
> +		setenv(name, unknown_reset);
> +		break;
> +	case RESET_POR:
> +		setenv(name, power_on_reset);
> +		break;
> +	case RESET_RST:
> +		setenv(name, manual_reset);
> +		break;
> +	case RESET_WDG:
> +		setenv(name, watchdog);
> +		break;
> +	case RESET_WKE:
> +		setenv(name, wake);
> +		break;
> +	case RESET_JTAG:
> +		setenv(name, jtag);
> +		break;

	if (source >=3D ARRAY_SIZE(reset_reason_array)
		return;

	setenv("global.system.reset", reset_reason_array[source]);

> +	}
> +}
> +EXPORT_SYMBOL(set_reset_source);
> +
> +/* ensure this runs after the 'global' device is already registerd */
> +static int init_reset_source(void)
> +{
> +	globalvar_add_simple(&name[7]);
> +	set_reset_source(RESET_UKWN);
> +	return 0;
> +}
> +
> +coredevice_initcall(init_reset_source);
> diff --git a/include/reset_source.h b/include/reset_source.h
> new file mode 100644
> index 0000000..bc7e736
> --- /dev/null
> +++ b/include/reset_source.h
> @@ -0,0 +1,26 @@
> +/*
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#ifndef __INCLUDE_RESET_SOURCE_H
> +# define __INCLUDE_RESET_SOURCE_H
> +
> +/* possible parameters to set_reset_source() */
> +#define RESET_UKWN 0
> +#define RESET_POR 1	/* Power On Reset */
> +#define RESET_RST 2	/* generic ReST */
> +#define RESET_WDG 3	/* watchdog */
> +#define RESET_WKE 4	/* wake */
> +#define RESET_JTAG 5

use enum here

> +
> +extern void set_reset_source(unsigned);
> +
> +#endif /* __INCLUDE_RESET_SOURCE_H */


--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig791E8F67813426F7A1120B2A
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk/h49EACgkQjTAFq1RaXHMDqQCghAOl9/fddy6r0E1SajgWzZGu
aoMAoJJfUFABZSEML7TOgqxVJwczpv3Q
=UuPg
-----END PGP SIGNATURE-----

--------------enig791E8F67813426F7A1120B2A--


--===============7684076757378162269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7684076757378162269==--
