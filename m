Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OoWzn-0000UP-Sv
	for barebox@lists.infradead.org; Thu, 26 Aug 2010 07:35:36 +0000
Message-ID: <4C761942.1020800@pengutronix.de>
Date: Thu, 26 Aug 2010 09:35:30 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <AANLkTimM6xAp48S98Ob1eRwks+AKa6OR++ufO30wZNFH@mail.gmail.com>
In-Reply-To: <AANLkTimM6xAp48S98Ob1eRwks+AKa6OR++ufO30wZNFH@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1040801573=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox and setenv
To: Nataraj S Narayan <natarajsn@gmail.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1040801573==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigCA577CE3D7F014E2C91D9171"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigCA577CE3D7F014E2C91D9171
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Nataraj S Narayan wrote:
> Hi
>=20
> How do I  "setenv bootargs mem=3D64M console=3DttyS0,115200 root=3D/dev=
/mtdblock0
> rw rootfstype=3Djffs2" in barebox?
>=20
> export seems not to work for me.

the barebox shell is "sh" like, so use

bootargs=3D"mem=3D64M console=3DttyS0,115200 root=3D/dev/mtdblock0 rw roo=
tfstype=3Djffs2"

BTW: barebox comes with a default environment for all board. Adopt it to
your needs.

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigCA577CE3D7F014E2C91D9171
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkx2GUYACgkQjTAFq1RaXHMzaACfZSn5qnNlYVXXdOSnz8+wm38J
NC8AnRv67y7/PxABRpYBhP+ymO96ULBq
=utUW
-----END PGP SIGNATURE-----

--------------enigCA577CE3D7F014E2C91D9171--


--===============1040801573==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1040801573==--
