Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdzsr-0004LM-1A
 for barebox@lists.infradead.org; Wed, 15 Feb 2017 13:44:39 +0000
References: <3c0aa707-bb93-df05-e9e2-a3810995ad1f@rempel-privat.de>
 <20170215070343.zzb7njup3opvbsfd@pengutronix.de>
 <0b9cf71c-c86d-29e4-0cb0-0ddba9e43d2a@rempel-privat.de>
 <CAOpc7mFtB7-Qf4pNSCZsYofdAyj=TPRG17J0=rdi3YEBm+qyRg@mail.gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <e0397e97-ddd8-1acc-d139-bf5397c3046a@rempel-privat.de>
Date: Wed, 15 Feb 2017 14:39:02 +0100
MIME-Version: 1.0
In-Reply-To: <CAOpc7mFtB7-Qf4pNSCZsYofdAyj=TPRG17J0=rdi3YEBm+qyRg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5192580707132787872=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: problems with ext4
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5192580707132787872==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="abN72eLfmRO6MI3AWJc6PgQtERxpFkxOn"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--abN72eLfmRO6MI3AWJc6PgQtERxpFkxOn
Content-Type: multipart/mixed; boundary="dLcvTpW4DbGKF9G0SaxU7ujBGRcWowfU0";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Holger Schurig <holgerschurig@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <e0397e97-ddd8-1acc-d139-bf5397c3046a@rempel-privat.de>
Subject: Re: problems with ext4
References: <3c0aa707-bb93-df05-e9e2-a3810995ad1f@rempel-privat.de>
 <20170215070343.zzb7njup3opvbsfd@pengutronix.de>
 <0b9cf71c-c86d-29e4-0cb0-0ddba9e43d2a@rempel-privat.de>
 <CAOpc7mFtB7-Qf4pNSCZsYofdAyj=TPRG17J0=rdi3YEBm+qyRg@mail.gmail.com>
In-Reply-To: <CAOpc7mFtB7-Qf4pNSCZsYofdAyj=TPRG17J0=rdi3YEBm+qyRg@mail.gmail.com>

--dLcvTpW4DbGKF9G0SaxU7ujBGRcWowfU0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Am 15.02.2017 um 13:31 schrieb Holger Schurig:
> For what it's worth, my kernel is also in an ext4 partition (on an
> SDCARD or eMMC).
>=20
> I format them with "mkfs.ext4 -q -F -D -j /dev/XXXX"
>=20
> Inside the partition, I use /boot/vmlinuz as a symlink to the real file=

> which is in the same directory.
> =E2=80=8B
>=20
> I'm however on an older version of barebox, 2016.07.0

I reformatted boot partition back to ext4. Now the problem is reproducibl=
e.
Partition image can be found here
https://github.com/olerem/beagleboneblack/blob/master/boot.tar.bz2

Decompressed it should be:
md5sum 2f3474d39f1d7893e310b55ea57d87bd

the /boot/dtb symlink can't be resolved by barebox. And /boot/dtbs
folder is broken.


--=20
Regards,
Oleksij


--dLcvTpW4DbGKF9G0SaxU7ujBGRcWowfU0--

--abN72eLfmRO6MI3AWJc6PgQtERxpFkxOn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iF4EAREIAAYFAlikWfYACgkQHwImuRkmbWlXuwD7BOMq9JBY/9l55g8qJgUdgMvB
rRf43OMp0r6IOFCsMp8A/0HduGZaIxVxT1tkElPNOSUrr8c06Klq8ZTL0KJK69A+
=Dgr4
-----END PGP SIGNATURE-----

--abN72eLfmRO6MI3AWJc6PgQtERxpFkxOn--


--===============5192580707132787872==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5192580707132787872==--
