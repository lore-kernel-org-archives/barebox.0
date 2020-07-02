Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jr0G1-0001lC-Bl
 for barebox@lists.infradead.org; Thu, 02 Jul 2020 14:32:10 +0000
Date: Thu, 2 Jul 2020 16:32:07 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20200702143207.ue3ik57g6lr3tnre@pengutronix.de>
References: <20200701201121.19225-1-u.kleine-koenig@pengutronix.de>
 <20200701201121.19225-2-u.kleine-koenig@pengutronix.de>
 <ebf09a24-5432-16b3-b644-96e4b5ad8dae@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <ebf09a24-5432-16b3-b644-96e4b5ad8dae@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5974105360326595984=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] arm/cpu: Replace license and copyright boilerplate
 by SPDX identfiers
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============5974105360326595984==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lmgowmp4i3x2jmeu"
Content-Disposition: inline


--lmgowmp4i3x2jmeu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Ahmad,

On Thu, Jul 02, 2020 at 10:23:16AM +0200, Ahmad Fatoum wrote:
> On 7/1/20 10:11 PM, Uwe Kleine-K=F6nig wrote:
> > diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
> > index 703a5a3ba706..a1728eb353c8 100644
> > --- a/arch/arm/cpu/interrupts.c
> > +++ b/arch/arm/cpu/interrupts.c
> > @@ -1,18 +1,5 @@
> > -/*
> > - * interrupts.c - Interrupt Support Routines
>=20
> I don't care much either way, but in the other files you moved this header
> line into a new comment block, here it's deleted.

I deleted this one because the file continues with:

/**
 * @file
 * @brief Interrupt Support Routines
 */

> > - *
> > - * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutron=
ix
> > - *
> > - * This program is free software; you can redistribute it and/or modify
> > - * it under the terms of the GNU General Public License version 2
> > - * as published by the Free Software Foundation.
> > - *
> > - * This program is distributed in the hope that it will be useful,
> > - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > - * GNU General Public License for more details.
> > - *
> > - */
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +// SPDX-FileCopyrightText: 2007 Sascha Hauer <s.hauer@pengutronix.de>,=
 Pengutronix
> > =20
> >  /**
> >   * @file
> > [...]
> > diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> > index 2aa53229b323..1e42ec63c0ef 100644
> > --- a/arch/arm/cpu/mmu.c
> > +++ b/arch/arm/cpu/mmu.c
> > @@ -1,16 +1,5 @@
> > -/*
> > - * Copyright (c) 2009-2013 Sascha Hauer <s.hauer@pengutronix.de>, Peng=
utronix
> > - *
> > - * This program is free software; you can redistribute it and/or modify
> > - * it under the terms of the GNU General Public License version 2
> > - * as published by the Free Software Foundation.
> > - *
> > - * This program is distributed in the hope that it will be useful,
> > - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > - * GNU General Public License for more details.
> > - *
> > - */
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +// SPDX-FileCopyrightText: /* 2009-2013 Sascha Hauer <s.hauer@pengutro=
nix.de>, Pengutronix
>=20
> Remove the /*

Oh, indeed.

> >  #define pr_fmt(fmt)	"mmu: " fmt
> > =20
> > diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> > index 8324cedb25ad..ee4543b3c074 100644
> > --- a/arch/arm/cpu/mmu_64.c
> > +++ b/arch/arm/cpu/mmu_64.c
> > @@ -1,17 +1,6 @@
> > -/*
> > - * Copyright (c) 2009-2013 Sascha Hauer <s.hauer@pengutronix.de>, Peng=
utronix
> > - * Copyright (c) 2016 Rapha=EBl Poggi <poggi.raph@gmail.com>
> > - *
> > - * This program is free software; you can redistribute it and/or modify
> > - * it under the terms of the GNU General Public License version 2
> > - * as published by the Free Software Foundation.
> > - *
> > - * This program is distributed in the hope that it will be useful,
> > - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > - * GNU General Public License for more details.
> > - *
> > - */
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +// SPDX-FileCopyrightText: 009-2013 Sascha Hauer <s.hauer@pengutronix.=
de>, Pengutronix
>=20
> s/009/2009/

huh.

thanks for your review, will send a v2.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--lmgowmp4i3x2jmeu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl797+QACgkQwfwUeK3K
7Akz4Qf+MjQSlHKmEYPJpMFfPY25nPMJrHVDrHj8NDHcPzcFYBSL3PWeixcFt8iC
minw8TvVp1lWzNfiIDHgD/316QVHOsTy2MqKrhce2imzhVh//bJKi5/LuV7AyVaa
zf9byXIFb3B79rPJG0zOv5v3ikLlevOrZc1q5YPR+1xxb5gqKJXaUEf3XfKk6gTq
rXzu8t5KXp3XYMfPSbc0k5Agxa+f9piV8hPy56sOiHGdH5vC1o78UTRBrG8aDL9w
/7YEou+IM/7ndsWXmpvPXRSFxITl2pMkiHLewyoc1lPPuR18EVuO3MJCKXra5csD
MKoJECFPB3gMGN4IIYgjhtOW/5EIKA==
=Htfn
-----END PGP SIGNATURE-----

--lmgowmp4i3x2jmeu--


--===============5974105360326595984==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5974105360326595984==--
