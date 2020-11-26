Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiNCr-0004Wk-AX
 for barebox@lists.infradead.org; Thu, 26 Nov 2020 19:45:30 +0000
Date: Thu, 26 Nov 2020 20:45:22 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20201126194522.ahfjztpv6ewzrawd@pengutronix.de>
References: <20201126175553.16934-1-a.fatoum@pengutronix.de>
 <20201126175553.16934-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20201126175553.16934-3-a.fatoum@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3192174174717630285=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 3/4] LICENSES: exceptions: factor out
 eCos-exception-2.0 for GPL
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rhi@pengutronix.de


--===============3192174174717630285==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y5smja3fbujp63ps"
Content-Disposition: inline


--y5smja3fbujp63ps
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 26, 2020 at 06:55:52PM +0100, Ahmad Fatoum wrote:
> We have code imported from eCos that's licensed with this exception.
> Replace instances of the exceptions with a SPDX-License-Identifier
> referencing the exception in our LICENSES directory.
>=20
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I assume you didn't add Roland's Review tag by mistake?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--y5smja3fbujp63ps
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/ABc8ACgkQwfwUeK3K
7AlULAf/ZPTZszfpolhg0inrc4rKlymsffj7iuWdd96CzUeQQQ4d8+Gcfipia4CI
xGVB3Gkn8/PWz/u6ELDVNpxLbU/5nJ+RhiXJbmjeJ27tWFYtTNE8MtfgM0Ydzi7+
hc0qcslW2D3M+FXYns0zyxKQmAI6JDd3wcXXVpZAoDdKHuUZKjseycSZzLSzzbHh
3xsuALPZwjLwgv2902NbLXL7tJ4ICXDCfpvx8Rg7ytNotoOH/DCB2yqbGiuaY4mH
/+6O6xHE/BJG7/Rl3j4BzKGcCEnmiAIma+vjgY8G2DVph9X3zMQUxOlE8iySvyvz
/8dZjKEBNxUig9V/VQVi2r/R/mbxzA==
=jFky
-----END PGP SIGNATURE-----

--y5smja3fbujp63ps--


--===============3192174174717630285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3192174174717630285==--
