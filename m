Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqiqu-0000yy-8U
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 19:57:05 +0000
Date: Wed, 1 Jul 2020 21:56:58 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20200701195658.335aynqq7sssgik2@pengutronix.de>
References: <20200519163733.2836-1-u.kleine-koenig@pengutronix.de>
 <20200519194936.n3ttkn3s7j7ksrm6@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200519194936.n3ttkn3s7j7ksrm6@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0263214131347245856=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] arch/arm/boards: Replace license and copyright
 boilerplate by SPDX identfiers
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org


--===============0263214131347245856==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lxjeq5xsnmjgtmfc"
Content-Disposition: inline


--lxjeq5xsnmjgtmfc
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Andrey,

On Tue, May 19, 2020 at 09:49:36PM +0200, Uwe Kleine-K=F6nig wrote:
> On Tue, May 19, 2020 at 06:37:33PM +0200, Uwe Kleine-K=F6nig wrote:
> > This adapts all files that were identifed by licensecheck
> > (https://salsa.debian.org/build-common-team/licensecheck.git) as
> > licensed under the GPL.
> >=20
> > The advantage is that these specifiers are machine-parseable which helps
> > license conformance, e.g. for packaging barebox in Debian.
> >=20
> > While touching these files also do some minor comment reformatting to
> > get some uniform layout.
>=20
> While going once more through this patch I noticed that there are a few
> hunks that might be questionable and it would be great if you could
> comment:
>=20
> > diff --git a/arch/arm/boards/freescale-mx7-sabresd/board.c b/arch/arm/b=
oards/freescale-mx7-sabresd/board.c
> > index 37941efdbeb4..e41d67017fe5 100644
> > --- a/arch/arm/boards/freescale-mx7-sabresd/board.c
> > +++ b/arch/arm/boards/freescale-mx7-sabresd/board.c
> > @@ -1,17 +1,7 @@
> > -/*
> > - * Copyright (C) 2017 Zodiac Inflight Innovation
> > - * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> > - *
> > - * This program is free software; you can redistribute it and/or
> > - * modify it under the terms of the GNU General Public License as
> > - * published by the Free Software Foundation; either version 2 of
> > - * the License, or (at your option) any later version.
> > - *
> > - * This program is distributed in the hope that it will be useful,
> > - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > - * GNU General Public License for more details.
> > - */
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +// SPDX-FileCopyrightText: 2017 Zodiac Inflight Innovation
> > +
> > +/* Author: Andrey Smirnov <andrew.smirnov@gmail.com> */
> > =20
> >  #include <common.h>
> >  #include <init.h>
>=20
> Is this right? I.e does Zodiac hold the copyright and you are "only" the
> author? Or would
>=20
> 	// SPDX-FileCopyrightText: 2017 Andrey Smirnov <andrew.smirnov@gmail.com=
>, Zodiac Inflight Innovation
>=20
> be more appropriate?
>=20
> Same question for
>=20
> 	arch/arm/boards/zii-imx6q-rdu2/board.c
> 	arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
> 	arch/arm/boards/zii-vf610-dev/board.c
> 	arch/arm/boards/zii-vf610-dev/lowlevel.c

While going further through the barebox source tree there are more files
with this info. Last I found was

	arch/arm/cpu/no-mmu.c

Would be really great to get some input from you on this.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--lxjeq5xsnmjgtmfc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl786ocACgkQwfwUeK3K
7AlhGAf+NJhEfiM1N5rJ//FDEAtyMfri0//irc0tD2B4cOv2Klforfzrtp0SECjP
xotC4pQhWDriT0VuYkAN54L2pMSRGgkKm613uMyPsbGzOMXy+3Yn2bbUBg9G5ULw
UDeuIpB4/DYFOmLFShtKsIVd34Ni03ZKZXls3k3nnO35Fxn/8Spodo6BCeYhiv6w
HxtqOQQxt4m5d6IiqZHAk3gRnbF+GDzKB+z2urk5mQ5W5Hd51z42PGaL+/Bynxe4
EkV8ktfte/RwpC+wIb/RWSl2vkeMxv1pA8SkJMAlG2rR/0Xg9Qaa1ZFTtkqDL3oc
4hA10hsxZViw8zzcQ+muIzwxfqs8bA==
=RQDH
-----END PGP SIGNATURE-----

--lxjeq5xsnmjgtmfc--


--===============0263214131347245856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0263214131347245856==--
