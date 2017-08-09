Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dfK8N-0001HM-Vq
 for barebox@lists.infradead.org; Wed, 09 Aug 2017 06:06:26 +0000
Received: from [192.168.1.100] ([31.18.251.132]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0LeMij-1dILrE3GyD-00qE8Y for
 <barebox@lists.infradead.org>; Wed, 09 Aug 2017 08:05:57 +0200
References: <20170809041320.28874-1-gael.portay@savoirfairelinux.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <0ec3c31c-1ede-6108-28bc-af15ab67d0f9@rempel-privat.de>
Date: Wed, 9 Aug 2017 08:05:57 +0200
MIME-Version: 1.0
In-Reply-To: <20170809041320.28874-1-gael.portay@savoirfairelinux.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8988472822737756451=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/2] readline_simple: return -1 if getc fails
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8988472822737756451==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="lcDG5NIPXIWf0D1uCwDSNDSHDs39U070N"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--lcDG5NIPXIWf0D1uCwDSNDSHDs39U070N
Content-Type: multipart/mixed; boundary="KDxXaIwXwuF3XWF2rXbBnTmgvF23jIiCM";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: barebox@lists.infradead.org
Message-ID: <0ec3c31c-1ede-6108-28bc-af15ab67d0f9@rempel-privat.de>
Subject: Re: [PATCH 0/2] readline_simple: return -1 if getc fails
References: <20170809041320.28874-1-gael.portay@savoirfairelinux.com>
In-Reply-To: <20170809041320.28874-1-gael.portay@savoirfairelinux.com>

--KDxXaIwXwuF3XWF2rXbBnTmgvF23jIiCM
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Am 09.08.2017 um 06:13 schrieb Ga=C3=ABl PORTAY:
> Dear maintainers,
>=20
> I came accross this issue when I was trying to add support for a new MI=
PS
> board.

Just out of curiosity, what MIPS board are you working on? If it is not
a secret :)


--=20
Regards,
Oleksij


--KDxXaIwXwuF3XWF2rXbBnTmgvF23jIiCM--

--lcDG5NIPXIWf0D1uCwDSNDSHDs39U070N
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iF4EAREIAAYFAlmKpkUACgkQHwImuRkmbWld/QD+JL79rM+hOvq4DmlKD9NOuVLt
x4yBbhvjJGF1p1AZ/7oBAJjGzKJFibQFovzbqM0U8XvcOIITcKZhGGrOvhmRxrw3
=sQr9
-----END PGP SIGNATURE-----

--lcDG5NIPXIWf0D1uCwDSNDSHDs39U070N--


--===============8988472822737756451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8988472822737756451==--
