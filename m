Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiNB9-000454-79
 for barebox@lists.infradead.org; Thu, 26 Nov 2020 19:43:44 +0000
Date: Thu, 26 Nov 2020 20:43:38 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20201126194338.54v7ys7wgp5e23wy@pengutronix.de>
References: <20201126175553.16934-1-a.fatoum@pengutronix.de>
 <20201126175553.16934-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20201126175553.16934-2-a.fatoum@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3194963916127348717=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 2/4] common: dummy_malloc: remove unintended GPL2
 eCos-exception-2.0
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rhi@pengutronix.de


--===============3194963916127348717==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5k26ogid7t3tv3cm"
Content-Disposition: inline


--5k26ogid7t3tv3cm
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 26, 2020 at 06:55:51PM +0100, Ahmad Fatoum wrote:
> Apparently, the file should be GPL-2.0-only without exceptions:
>=20
> On 24.11.20 09:44, Sascha Hauer wrote[1]:
> > This looks like I accidently copied the wrong header. I don't think I
> > did this on purpose. It doesn't make much sense to me when compiling
> > against dummy malloc is different than compiling against tlsf malloc
> > or dlmalloc.
>=20
> Ase dropping exceptions is no relicense, it's ok to do here without

s/Ase/As/

Other than that looks good.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--5k26ogid7t3tv3cm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/ABWgACgkQwfwUeK3K
7AlsPggAkjJOvoGd3tKsUN+7szAudUuxW4NU1PbYdbrZhQlQxnBgVBIsGdnSce81
Hrgjg8qTfgPld6A1NkCSStfPO82QgpE4baDMWVfP1FvFY5+AaipJRlTxFYTR4oWD
EhjfZKNXsYfEFq41x/zXXQKWTh8qEiMmEqSeGR4a8lwmr4VITFAF2UtlOQ6/+F1Z
e1JMsJrTynIvnqdYWQvLfkuYVeY2LQjOp/eVw9RfUpXxgMykfGFgcHCggBZ56DWs
Wsr+Su660LyV4/u2+4dhIVbJzMl7JFo4GUJTO5XsdqGOW1QNh3Hmssacpry/X/kG
vVQwMCJyGzpK1zyeT7Kxw4R0RHkmTw==
=Ry6n
-----END PGP SIGNATURE-----

--5k26ogid7t3tv3cm--


--===============3194963916127348717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3194963916127348717==--
