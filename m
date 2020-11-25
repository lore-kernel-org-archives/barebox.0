Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khpJ5-0008PE-6f
 for barebox@lists.infradead.org; Wed, 25 Nov 2020 07:33:40 +0000
Date: Wed, 25 Nov 2020 08:33:30 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20201125073330.aviqq4iebhwpdcbg@pengutronix.de>
References: <20201123160128.15947-1-a.fatoum@pengutronix.de>
 <20201123160128.15947-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20201123160128.15947-3-a.fatoum@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7753371598636261152=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] common: replace license statements with
 SPDX-License-Identifiers
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Roland Hieber <rhi@pengutronix.de>


--===============7753371598636261152==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x6vuaitv33vw3lkc"
Content-Disposition: inline


--x6vuaitv33vw3lkc
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Ahmad,

On Mon, Nov 23, 2020 at 05:01:28PM +0100, Ahmad Fatoum wrote:
> For all files in common/ that already have a license text:
>   - Replace with appropriate SPDX-License-Identifier
>   - Remove empty comment lines around replacement
>   - remove comment completely if only thing remaining is name
>     of file without description

Great you continue to drive this forward!

> diff --git a/common/bbu.c b/common/bbu.c
> index f284c341b91b..1279d5615525 100644
> --- a/common/bbu.c
> +++ b/common/bbu.c
> @@ -1,16 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * bbu.c - barebox update functions
>   *

I usually add an empty line after the SPDX stuff, but I admit this is
subjective and in the long run probably nothing we can get for each
source file.

> diff --git a/common/env.c b/common/env.c
> index fbaaac4f2f5c..d5fc98436263 100644
> --- a/common/env.c
> +++ b/common/env.c
> @@ -1,17 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0-o

"nly" is missing

>  /*
>   * env.c - environment variables storage
>   *
>   * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
> =20
>  /**
> diff --git a/common/environment.c b/common/environment.c
> index 6e58f122bad2..038a480e5f92 100644
> --- a/common/environment.c
> +++ b/common/environment.c
> @@ -1,15 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0-o

ditto.

>  /*
>   * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
> =20
>  /**

Other than that the changes look fine.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--x6vuaitv33vw3lkc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl++CMQACgkQwfwUeK3K
7AndjQf/cH+TZ66Cq2PRjR2Z8DqO3e4hrT3e87Y90ivA/ZuPyBKfUZ+6Szss8XGy
b5y2gnpDa6v13c0yGOORhC6rwINudHGyc6d55j46QbmJIjalLmV2A/bhUxYnPHOO
MPMqir2131dbmfW5VwxVWS3ovY/+kQ8z9p/AKGzIw2Qo3p4yIfrI0D72HnePbYN7
tN6gXBLgygSTnnsHC+/9NxhCOgk6xUMKu5YCRxylx8RxKvlAdrRHP3NrZcQ9FgW5
yTCCGgyBwF2hbGD35BcZ6paBn/CUCe7mDEPYaqVwmk7Nfqt1iZx+l7DsbBUYrRCQ
3aGQrMB/BGOwQOio6R1mPlfkQefvNg==
=eZ00
-----END PGP SIGNATURE-----

--x6vuaitv33vw3lkc--


--===============7753371598636261152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7753371598636261152==--
