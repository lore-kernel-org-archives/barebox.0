Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3Ren-0007Gz-7U
	for barebox@lists.infradead.org; Tue, 13 Sep 2011 12:00:10 +0000
Message-ID: <4E6F45C3.6040803@pengutronix.de>
Date: Tue, 13 Sep 2011 14:00:03 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <4E6E0F25.7060403@wellsense-tech.com>	<4E6F1B57.7060507@wellsense-tech.com>	<4E6F1F11.6070206@pengutronix.de>
	<4E6F270A.2040902@wellsense-tech.com>
	<4E6F3DA8.40904@wellsense-tech.com>
In-Reply-To: <4E6F3DA8.40904@wellsense-tech.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1074651134=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: bareboxenv usage
To: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1074651134==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig20D5BDBCE21319ECC246BABB"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig20D5BDBCE21319ECC246BABB
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 09/13/2011 01:25 PM, Boaz Ben-David wrote:
> There's something I don't get.
>=20
> If loadenv/saveenv are not bad-block aware, why are they used in barebo=
x
> by default?

They operate on bad block aware devices (in barebox) by default.

> When the system boots envfs_load is used to load the environment from
> /dev/env0 or whatever.
>=20
> If /dev/env0 is not bad-block aware device (like the bb devices) this
> means this could fail because of
> a bad block in the env partition. Am I right?

Nope - the raw NAND is usually attached as "/dev/env0_raw" and the bad
block aware device as "/dev/env0".

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig20D5BDBCE21319ECC246BABB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk5vRcMACgkQjTAFq1RaXHPA1gCgj1/n49cU1UZMFvPFcTcKdtV7
HtkAmgM3TLw7eDjwfRSnD8rDzN9e6nwV
=5u3Q
-----END PGP SIGNATURE-----

--------------enig20D5BDBCE21319ECC246BABB--


--===============1074651134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1074651134==--
