Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiNMG-00069S-Ro
 for barebox@lists.infradead.org; Thu, 26 Nov 2020 19:55:13 +0000
Date: Thu, 26 Nov 2020 20:55:09 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20201126195509.lclatgmrbo57nzl4@pengutronix.de>
References: <20201126175553.16934-1-a.fatoum@pengutronix.de>
 <20201126175553.16934-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20201126175553.16934-4-a.fatoum@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1314899240910514313=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 4/4] common: replace license statements with
 SPDX-License-Identifiers
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rhi@pengutronix.de


--===============1314899240910514313==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6wasnf72z2aaatdb"
Content-Disposition: inline


--6wasnf72z2aaatdb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 26, 2020 at 06:55:53PM +0100, Ahmad Fatoum wrote:
> For all files in common/ that already have a license text:
>   - Replace with appropriate SPDX-License-Identifier
>   - Remove empty comment lines around replacement
>   - remove comment completely if only thing remaining is name
>     of file without description
>=20
> Reviewed-by: Roland Hieber <rhi@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--6wasnf72z2aaatdb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/ACBoACgkQwfwUeK3K
7Alk3gf/RV+qftCJbjikLV9IP+PDiBh7c4gzjv3ZYBupwgXzaAcTf4RYUMgI0mtv
TL/eroAPSpIDltRBqCMBsMYAJgX8x/QDF0JvgN6c8/8wivFcC66twNgFB2E6y0r2
4CWss34ztjw1O3ChDgvwoxcDRWaYRMW2SJH60/W0T8mNPaFA5CnSTmpQS4ULj6IB
DXQQvWELxdOG1cma9SSvWV7CXWr/0j9Qxyc9lq3dsGvab4Ucs9M1FuoaG+QqjVdC
bgNdJJA9XsjNO6twpLzni/jA5oikpKSi7X9t6mu/orbnJL0kZsjLjgrEOLsZf8SW
cMFS2NvY9g7GkdzmQWKrpqGQ0QbROQ==
=klZj
-----END PGP SIGNATURE-----

--6wasnf72z2aaatdb--


--===============1314899240910514313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1314899240910514313==--
