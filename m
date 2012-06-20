Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShMNu-0006c5-TT
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 14:59:56 +0000
Message-ID: <4FE1E562.7050706@pengutronix.de>
Date: Wed, 20 Jun 2012 16:59:46 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1340202731-30831-1-git-send-email-jbe@pengutronix.de>
 <1340202731-30831-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1340202731-30831-3-git-send-email-jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3901218284459375288=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] Add two architectures which can detect the reset
 source
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============3901218284459375288==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigAF131431E9359CA65EC7CEE5"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigAF131431E9359CA65EC7CEE5
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 06/20/2012 04:32 PM, Juergen Beisert wrote:
> These are examples how to provide the reset source. Not really tested o=
n
> the corresponding hardware yet.
>=20
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  arch/arm/mach-imx/Makefile           |    1 +
>  arch/arm/mach-imx/reset_source.c     |   59 ++++++++++++++++++++++++++=
++++++++
>  arch/arm/mach-samsung/Makefile       |    1 +
>  arch/arm/mach-samsung/reset_source.c |   56 ++++++++++++++++++++++++++=
++++++
>  4 files changed, 117 insertions(+)
>  create mode 100644 arch/arm/mach-imx/reset_source.c
>  create mode 100644 arch/arm/mach-samsung/reset_source.c
>=20
> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> index 03e2421..7da8cec 100644
> --- a/arch/arm/mach-imx/Makefile
> +++ b/arch/arm/mach-imx/Makefile
> @@ -1,4 +1,5 @@
>  obj-y +=3D clocksource.o gpio.o
> +obj-$(CONFIG_GLOBALVAR) +=3D reset_source.o
>  obj-$(CONFIG_ARCH_IMX1)  +=3D speed-imx1.o  imx1.o  iomux-v1.o
>  obj-$(CONFIG_ARCH_IMX25) +=3D speed-imx25.o imx25.o iomux-v3.o
>  obj-$(CONFIG_ARCH_IMX21) +=3D speed-imx21.o imx21.o iomux-v1.o
> diff --git a/arch/arm/mach-imx/reset_source.c b/arch/arm/mach-imx/reset=
_source.c
> new file mode 100644
> index 0000000..79e5337
> --- /dev/null
> +++ b/arch/arm/mach-imx/reset_source.c
> @@ -0,0 +1,59 @@
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
> +#include <io.h>
> +#include <reset_source.h>
> +#include <mach/imx-regs.h>
> +
> +#ifdef CONFIG_ARCH_IMX1
> +# define WDOG_WRSR 0x08
> +#  define WDOG_WRSR_TOUT (1 << 0)
> +/* let the compiler sort out useless code on this arch */
> +#  define WDOG_WRSR_SFTW 0
> +#  define WDOG_WRSR_EXT 0
> +#  define WDOG_WRSR_PWR 0
> +#else
> +# define WDOG_WRSR 0x04
> +#  define WDOG_WRSR_SFTW (1 << 0)
> +#  define WDOG_WRSR_TOUT (1 << 1)
> +#  define WDOG_WRSR_EXT (1 << 2)
> +#  define WDOG_WRSR_PWR (1 << 3)
> +#endif
> +
> +static int imx_detect_reset_source(void)
> +{
> +	u16 reg =3D readw(IMX_WDT_BASE + WDOG_WRSR);
> +
> +	if (reg & WDOG_WRSR_PWR) {
> +		set_reset_source(RESET_POR);
> +		return 0;
> +	}
> +
> +	if (reg & (WDOG_WRSR_EXT | WDOG_WRSR_SFTW)) {
> +		set_reset_source(RESET_RST);
> +		return 0;
> +	}
> +
> +	if (reg & WDOG_WRSR_TOUT) {
> +		set_reset_source(RESET_WDG);
> +		return 0;
> +	}
> +
> +	/* else keep the default 'unknown' state */
> +	return 0;
> +}
> +
> +device_initcall(imx_detect_reset_source);
> diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Mak=
efile
> index d7344c8..74799c5 100644
> --- a/arch/arm/mach-samsung/Makefile
> +++ b/arch/arm/mach-samsung/Makefile
> @@ -1,4 +1,5 @@
>  obj-y +=3D s3c-timer.o generic.o
> +obj-$(CONFIG_GLOBALVAR) +=3D reset_source.o
>  obj-lowlevel-$(CONFIG_ARCH_S3C24xx) +=3D lowlevel-s3c24x0.o
>  obj-lowlevel-$(CONFIG_ARCH_S5PCxx) +=3D lowlevel-s5pcxx.o
>  obj-$(CONFIG_ARCH_S3C24xx) +=3D gpio-s3c24x0.o s3c24xx-clocks.o mem-s3=
c24x0.o
> diff --git a/arch/arm/mach-samsung/reset_source.c b/arch/arm/mach-samsu=
ng/reset_source.c
> new file mode 100644
> index 0000000..2456e3f
> --- /dev/null
> +++ b/arch/arm/mach-samsung/reset_source.c
> @@ -0,0 +1,56 @@
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
> +#include <io.h>
> +#include <reset_source.h>
> +#include <mach/s3c-iomap.h>
> +
> +/* S3C2440 relevant */
> +#define S3C2440_GSTATUS2 0xb4
> +# define S3C2440_GSTATUS2_PWRST (1 << 0)
> +# define S3C2440_GSTATUS2_SLEEPRST (1 << 1)
> +# define S3C2440_GSTATUS2_WDRST (1 << 2)
> +
> +static int s3c_detect_reset_source(void)
> +{
> +	u32 reg =3D readl(S3C_GPIO_BASE + S3C2440_GSTATUS2);
> +
> +	if (reg & S3C2440_GSTATUS2_PWRST) {
> +		set_reset_source(RESET_POR);
> +		writel(S3C2440_GSTATUS2_PWRST,
> +					S3C_GPIO_BASE + S3C2440_GSTATUS2);
> +		return 0;
> +	}
> +
> +	if (reg & S3C2440_GSTATUS2_SLEEPRST) {
> +		set_reset_source(RESET_WKE);
> +		writel(S3C2440_GSTATUS2_SLEEPRST,
> +					S3C_GPIO_BASE + S3C2440_GSTATUS2);
> +		return 0;
> +	}
> +
> +	if (reg & S3C2440_GSTATUS2_WDRST) {
> +		set_reset_source(RESET_WDG);
> +		writel(S3C2440_GSTATUS2_WDRST,
> +					S3C_GPIO_BASE + S3C2440_GSTATUS2);
> +		return 0;
> +	}

That "writel(S3C2440_GSTATUS2_WDRST...)" is the same in each line, isn't =
it?

What about this:

	if (reg & S3C2440_GSTATUS2_PWRST)
		set_reset_source(RESET_POR);
	else if (...)
	else if (..)
	else
		return 0;

	writel(S3C2440_GSTATUS2_WDRST,
	       S3C_GPIO_BASE +S3C2440_GSTATUS2);

	return 0;
}

(If you convert the imx into "if else if" the function will be a
shorter, because you don't need any return 0 and "{ }")

> +
> +	/* else keep the default 'unknown' state */
> +	return 0;
> +}
> +
> +device_initcall(s3c_detect_reset_source);

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigAF131431E9359CA65EC7CEE5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk/h5WUACgkQjTAFq1RaXHNhOQCfXGaNwtlUO7E53aZCH24eP+ry
ZfkAn3SEXfFPgApEDYwtIe2wdWlY5+Y7
=kGcM
-----END PGP SIGNATURE-----

--------------enigAF131431E9359CA65EC7CEE5--


--===============3901218284459375288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3901218284459375288==--
