Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIShS-0006oG-SH
 for barebox@lists.infradead.org; Wed, 16 Sep 2020 08:21:59 +0000
References: <20200915205417.15484-1-u.kleine-koenig@pengutronix.de>
 <20200915205417.15484-7-u.kleine-koenig@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <b975f528-f432-4d69-7534-4460f26d2689@pengutronix.de>
Date: Wed, 16 Sep 2020 10:21:47 +0200
MIME-Version: 1.0
In-Reply-To: <20200915205417.15484-7-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4370290560428566460=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/7] scripts/imx-image: relicense to allow distribution of
 binary linked with OpenSSL
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>, barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Andrey Smirnov <andrew.smirnov@gmail.com>, Marcin Niestroj <m.niestroj@grinn-global.com>, =?UTF-8?Q?Eric_B=c3=a9nard?= <eric@eukrea.com>, Rouven Czerwinski <r.czerwinski@pengutronix.de>, Alexander Kurz <akurz@blala.de>, Bastian Krause <bst@pengutronix.de>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4370290560428566460==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="DpULdXivbMf6lXrljHic0XxHFMdrVyHpR"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--DpULdXivbMf6lXrljHic0XxHFMdrVyHpR
Content-Type: multipart/mixed; boundary="4BimIG3d36LOokbc8Mr5eorlrlh2ikw8W";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Alexander Kurz <akurz@blala.de>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Bastian Krause <bst@pengutronix.de>, =?UTF-8?Q?Eric_B=c3=a9nard?=
 <eric@eukrea.com>, Lucas Stach <l.stach@pengutronix.de>,
 Marcin Niestroj <m.niestroj@grinn-global.com>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <b975f528-f432-4d69-7534-4460f26d2689@pengutronix.de>
Subject: Re: [PATCH 6/7] scripts/imx-image: relicense to allow distribution of
 binary linked with OpenSSL
References: <20200915205417.15484-1-u.kleine-koenig@pengutronix.de>
 <20200915205417.15484-7-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20200915205417.15484-7-u.kleine-koenig@pengutronix.de>

--4BimIG3d36LOokbc8Mr5eorlrlh2ikw8W
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

On 9/15/20 10:54 PM, Uwe Kleine-K=C3=B6nig wrote:
> The GPL (both, versions 2 and 3) are incompatible with the OpenSSL lice=
nse.
> According to the Free Software Foundation the copyright holders of GPL
> software have to provide an exception to allow this linkage.
>=20
> This is effectively a license change and so needs confirmation by all
> copyright holders.
>=20
> Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Cc: Alexander Kurz <akurz@blala.de>
> Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Bastian Krause <bst@pengutronix.de>
> Cc: Eric B=C3=A9nard <eric@eukrea.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Marcin Niestroj <m.niestroj@grinn-global.com>
> Cc: Marc Kleine-Budde <mkl@pengutronix.de>

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>

> Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> ---
>  scripts/imx/imx-image.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index f5e89d07a6ee..34bbfc8d8308 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-License-Identifier: GPL-2.0-or-later WITH OpenSSL-exception
>  // SPDX-FileCopyrightText: 2013 Sascha Hauer, Pengutronix
> =20
>  #define _GNU_SOURCE
>=20

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |


--4BimIG3d36LOokbc8Mr5eorlrlh2ikw8W--

--DpULdXivbMf6lXrljHic0XxHFMdrVyHpR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAl9hyxsACgkQqclaivrt
76m5FggArHhmMx39X+n16gxb088Em2mYYFhjS5sa4S67Gs0MUBHRpFOfjpMbv7Iu
0P/xZ8J793Q480sPMJ3ulwwQEvfYXJxHYnEgWPirwaforOncDT3vxORUs2XSkCgS
aoluIUSm6K+n/cVRe3ufFpouEH7MsTDn/t9N0s21qYJuyGNEZaDR4phFdFIIOWtp
60R+6cIxyeKuDZiiiI1W+/hJq08BqAhPemo0ai45YHqldEav479HZ/sj+E9eK6RU
ubDL9LlrPJKRfX60Sm1Macg78AhjJM1puwyvemUNnrJFXcyCRy6p9Wlk4lSkE+sF
Iqvhn35IiFNQkZQaXT201V4VwL9isA==
=b6CM
-----END PGP SIGNATURE-----

--DpULdXivbMf6lXrljHic0XxHFMdrVyHpR--


--===============4370290560428566460==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4370290560428566460==--
