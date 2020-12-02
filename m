Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kkQrV-0000bb-LS
 for barebox@lists.infradead.org; Wed, 02 Dec 2020 12:03:58 +0000
Date: Wed, 2 Dec 2020 12:40:25 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20201202114025.nzozbdusfby4spn5@pengutronix.de>
References: <20201201131758.18769-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20201201131758.18769-1-a.fatoum@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6081007907794722365=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb: host: ehci: fix mismatch in format string
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============6081007907794722365==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nqjq2krlujv7lgyr"
Content-Disposition: inline


--nqjq2krlujv7lgyr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 01, 2020 at 02:17:59PM +0100, Ahmad Fatoum wrote:
> sz is of type size_t. Use the appropriate format string specifier for
> print it.

I'd say this must either read "Use ... to print it" or "Use .. for
printing it".

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--nqjq2krlujv7lgyr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/HfSYACgkQwfwUeK3K
7Am4Vwf9FT9RqmDD0deGwk179BC3iq7urCKn8HMITRtEI0ioPbmZZqfiGZjs1+6I
NKAUsymZXy9XgHtO27OC9Io2vowKNC5m6sdY9P4cLr0610ucvCcJsScyTmzTUrqV
XVmyRS0raWwlprXY5atqOVmpwkmIA4k6QyjdXB+l/VIjHRWwL6aMEONEQkGRdist
latmZnECZh+H+4bVG7Hx8Hf11f1J0bXx8bAxJu6guauQIMTI4TYXhSU3NH4+rUeQ
lzBXO9KIgQaFGAbRWf3Kb7ehYHBdf/lUxXUZEQ9LLuW3cIN7YPrO9OM8cAdUVwT6
5zONTumgfI2ICbdiALFtRgZIESelVw==
=N4oN
-----END PGP SIGNATURE-----

--nqjq2krlujv7lgyr--


--===============6081007907794722365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6081007907794722365==--
