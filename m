Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NhUHE-0005i5-G5
	for barebox@lists.infradead.org; Tue, 16 Feb 2010 20:44:16 +0000
Message-ID: <4B7B0393.2090907@pengutronix.de>
Date: Tue, 16 Feb 2010 21:44:03 +0100
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
Content-Type: multipart/mixed; boundary="===============1381761666=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: problem with env in NOR
To: barebox mailing list <barebox@lists.infradead.org>
Cc: Sascha Hauer <sha@pengutronix.de>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1381761666==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigFAAC8CC23A4A04967255D0CE"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigFAAC8CC23A4A04967255D0CE
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,

on my PXA270 I put a splash image into the environment. The env image
with the splash image covers more than one flash sector. (The flash
sector size is 256 KiB.)

Loading the environment fails:

uboot:/ loadenv /dev/env0
loading environment from /dev/env0
read: error -262116

(This fails during boot, too.)

[frogger@hardanger:barebox (dev/pxa270)]$ grep CFI .config
CONFIG_HAS_CFI=3Dy
CONFIG_DRIVER_CFI=3Dy
# CONFIG_DRIVER_CFI_NEW is not set
CONFIG_DRIVER_CFI_OLD=3Dy
CONFIG_CFI_BUFFER_WRITE=3Dy

Sascha it's probably the problem we discussed the other day, that the
cfi driver doesn't handle the offset correct. I haven't looked at the
code though.

Cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigFAAC8CC23A4A04967255D0CE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkt7A5gACgkQjTAFq1RaXHPzqwCeN7rppC77D80ABpNAUrmi3NGH
8jsAn2sxas3xVJ3bkg7cHm6Jc7VGr/zD
=YZf+
-----END PGP SIGNATURE-----

--------------enigFAAC8CC23A4A04967255D0CE--


--===============1381761666==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1381761666==--
