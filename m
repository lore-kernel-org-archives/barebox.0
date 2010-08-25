Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OoFRS-0000Sl-3Z
	for barebox@lists.infradead.org; Wed, 25 Aug 2010 12:51:01 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <mkl@pengutronix.de>) id 1OoFRP-0000CH-OV
	for barebox@lists.infradead.org; Wed, 25 Aug 2010 14:50:55 +0200
Message-ID: <4C7511B1.6030100@pengutronix.de>
Date: Wed, 25 Aug 2010 14:50:57 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1326300947=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: broken quoting
To: barebox mailing list <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1326300947==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig188B66D8A4CEFFC900816B85"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig188B66D8A4CEFFC900816B85
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,

in the latest release the quoting is broken:

barebox:/ echo "\""
\"
barebox:/ echo "\
> "
\

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig188B66D8A4CEFFC900816B85
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkx1EbEACgkQjTAFq1RaXHOHTgCgk+ou6k6pxE1rB2Vv5jbqNIv0
83YAn3y3tOeBSTk8f39TXINo6OuR7YuK
=FxOO
-----END PGP SIGNATURE-----

--------------enig188B66D8A4CEFFC900816B85--


--===============1326300947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1326300947==--
