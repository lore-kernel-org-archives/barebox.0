Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PuQIc-0002mm-9h
	for barebox@lists.infradead.org; Tue, 01 Mar 2011 14:11:39 +0000
Message-ID: <4D6CFE93.40508@pengutronix.de>
Date: Tue, 01 Mar 2011 15:11:31 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00DD7@SRV-VS06.TELEVIC.COM>	<4D6BC8C7.9090309@pengutronix.de>
	<4D6BC95B.5030505@pengutronix.de>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00E08@SRV-VS06.TELEVIC.COM>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00E7D@SRV-VS06.TELEVIC.COM>
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00E7D@SRV-VS06.TELEVIC.COM>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1397398483=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: scripts
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1397398483==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig1E54A0892BFD31CEE41B9B76"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig1E54A0892BFD31CEE41B9B76
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 03/01/2011 03:06 PM, Vanalme Filip wrote:
[...]

> One more question about barebox scripts (I guess even scripts in
> general...). This is part of a script from another board (that I took
> over for my own board):

> #!/bin/sh
>=20
> . /env/config
>=20
> If [ x$1 =3D xflash ]; then
> 	root=3Dflash
> 	kernel=3Dflash
> fi
>=20
> if [ x$1 =3D xnet ]; then
> 	root=3Dnet
> 	kernel=3Dnet
> fi
>=20
> why the scripts are using i.e. [ x$1 =3D xflash ] instead of just simpl=
y [ $1 =3D flash ] ? Both are doing the same, no ?

The shell is quite old and doesn't support that. But you're right for
modern shells like bash or dash.

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig1E54A0892BFD31CEE41B9B76
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk1s/pYACgkQjTAFq1RaXHMmAgCbBGDOESZ8G7n7r27CqqgShpWR
oAoAoIzHGslX4UGdfp0/JAyBfAav/cYl
=3aaP
-----END PGP SIGNATURE-----

--------------enig1E54A0892BFD31CEE41B9B76--


--===============1397398483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1397398483==--
