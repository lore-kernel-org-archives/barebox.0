Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cde0N-0005iE-O7
 for barebox@lists.infradead.org; Tue, 14 Feb 2017 14:22:57 +0000
Received: from [192.168.1.100] ([31.18.251.158]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0Ma1pn-1cxna53M0F-00LpuA for
 <barebox@lists.infradead.org>; Tue, 14 Feb 2017 15:22:30 +0100
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <3c0aa707-bb93-df05-e9e2-a3810995ad1f@rempel-privat.de>
Date: Tue, 14 Feb 2017 15:22:29 +0100
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6599364529665143273=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: problems with ext4
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6599364529665143273==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="KSX9sgNsWLfdP0pjEuhFsGljH0haO3OIe"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--KSX9sgNsWLfdP0pjEuhFsGljH0haO3OIe
Content-Type: multipart/mixed; boundary="ArljTWqGgsPR1g1Xe4xv08qtURkotmpil";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: barebox@lists.infradead.org
Message-ID: <3c0aa707-bb93-df05-e9e2-a3810995ad1f@rempel-privat.de>
Subject: problems with ext4

--ArljTWqGgsPR1g1Xe4xv08qtURkotmpil
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hallo all,

i'm trying to use Barebox on BeagleBone Black with plain debian sid
installation. Most of it seems to work fine, except that i can't boot
from ext4 boot partition. The reason is that some files and folders are
not readable. For example /boot/dtbs should contain another folder, but
barebox recognize it as file.
If i mount same partition from linux, same path is accessible including
content of the folder.


--=20
Regards,
Oleksij


--ArljTWqGgsPR1g1Xe4xv08qtURkotmpil--

--KSX9sgNsWLfdP0pjEuhFsGljH0haO3OIe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iF4EAREIAAYFAlijEqYACgkQHwImuRkmbWlhnAD9F4dLIU7zYcSQ7kYUvIoPGm2W
r5WHmUsxwEP+nejy3FwA/1J+Ff/idow2qrotdgc5Rf7xtIiSxyhupYNPKPAkq2zL
=53kV
-----END PGP SIGNATURE-----

--KSX9sgNsWLfdP0pjEuhFsGljH0haO3OIe--


--===============6599364529665143273==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6599364529665143273==--
