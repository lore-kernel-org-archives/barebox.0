Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZVw7-0005ZB-5z
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 09:15:36 +0000
Date: Mon, 2 Nov 2020 10:15:30 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20201102091530.ter5kzga53zfcjig@pengutronix.de>
References: <20201029213815.109183-1-u.kleine-koenig@pengutronix.de>
 <20201029213815.109183-2-u.kleine-koenig@pengutronix.de>
 <20201102080639.GR26805@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20201102080639.GR26805@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7348949064059310930=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] arm: imx: Convert mach headers to SPDX
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>, Roland Hieber <rhi@pengutronix.de>


--===============7348949064059310930==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="twkhpmewjyqzihq6"
Content-Disposition: inline


--twkhpmewjyqzihq6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 02, 2020 at 09:06:39AM +0100, Sascha Hauer wrote:
> On Thu, Oct 29, 2020 at 10:38:15PM +0100, Uwe Kleine-K=F6nig wrote:
> > Replace license and copyright boilerplate by SPDX identfiers for files
> > identified as GPL-2.0-only or GPL-2.0-or-later by licensecheck.
> >=20
> > diff --git a/arch/arm/mach-imx/include/mach/iomux-mx35.h b/arch/arm/mac=
h-imx/include/mach/iomux-mx35.h
> > index 30b94e3b0034..6f4753b1e447 100644
> > --- a/arch/arm/mach-imx/include/mach/iomux-mx35.h
> > +++ b/arch/arm/mach-imx/include/mach/iomux-mx35.h
> > @@ -1,16 +1,5 @@
> > -/*
> > - * Copyright (C, NO_PAD_CTRL) 2009 by Jan Weitzel Phytec Messtechnik G=
mbH <armlinux@phytec.de>
> > - *
> > - * This program is free software; you can redistribute it and/or
> > - * modify it under the terms of the GNU General Public License
> > - * as published by the Free Software Foundation; either version 2
> > - * of the License, or (at your option, NO_PAD_CTRL) any later version.
> > - * This program is distributed in the hope that it will be useful,
> > - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > - * GNU General Public License for more details.
> > - *
> > - */
> > +/* SPDX-License-Identifier: GPL-2.0-only */
>=20
> This should be GPL-2.0-or-later. Fixed while applying.

	$ git checkout -f origin/master
	HEAD is now at ca4292daf6a4 ARM: bootm: Add lower bound check of kernel in=
 SDRAM
	$ licensecheck arch/arm/mach-imx/include/mach/iomux-mx35.h
	arch/arm/mach-imx/include/mach/iomux-mx35.h: GNU General Public License, V=
ersion 2
	$ head arch/arm/mach-imx/include/mach/iomux-mx35.h
	/*
	 * Copyright (C, NO_PAD_CTRL) 2009 by Jan Weitzel Phytec Messtechnik GmbH =
<armlinux@phytec.de>
	 *
	 * This program is free software; you can redistribute it and/or
	 * modify it under the terms of the GNU General Public License
	 * as published by the Free Software Foundation; either version 2
	 * of the License, or (at your option, NO_PAD_CTRL) any later version.
	 * This program is distributed in the hope that it will be useful,
	 * but WITHOUT ANY WARRANTY; without even the implied warranty of
	 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the

good catch. I'll contact the author of licensecheck if he considers it
worth to address this problem.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--twkhpmewjyqzihq6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl+fzi4ACgkQwfwUeK3K
7AnnHQf/Zi4IyLa4uQmjS17IpAYz8FMLOLdOOZlUmRAqm7cYXe4Cmj+Fst9NrdlS
Ee/2Jw2bIwO9wa2Gemim8UfNcGs49OOCi23CNU81rVEVQ6IFnuhk1yCabJsd4iho
x4V+mtyZTqZnwZy0NDM6QOyNIb5AGBCXZRRNFqEgtJ4ZutgV1gvyf04EgGLWb9MF
INgHzn+jvj2PLLw2iSk0aWnfnKw/jXNrO2E+saG569Q+dWLw+khzrJRA384kMY9/
WTYc/Ju+iYc5vRgCUmzMV4lX6Yd54x7Rqvsu/M+C4u0r1XeZOpcH/HizVFROQe9s
ILgEXFsbVEsz2hSpZXzpj8NthMMgwA==
=BZkY
-----END PGP SIGNATURE-----

--twkhpmewjyqzihq6--


--===============7348949064059310930==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7348949064059310930==--
