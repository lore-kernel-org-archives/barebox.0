Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdzun-0005zw-M4
 for barebox@lists.infradead.org; Wed, 15 Feb 2017 13:46:40 +0000
References: <3c0aa707-bb93-df05-e9e2-a3810995ad1f@rempel-privat.de>
 <20170215070343.zzb7njup3opvbsfd@pengutronix.de>
 <0b9cf71c-c86d-29e4-0cb0-0ddba9e43d2a@rempel-privat.de>
 <CAOpc7mFtB7-Qf4pNSCZsYofdAyj=TPRG17J0=rdi3YEBm+qyRg@mail.gmail.com>
 <e0397e97-ddd8-1acc-d139-bf5397c3046a@rempel-privat.de>
From: Oleksij Rempel <fishor@gmx.net>
Message-ID: <6e4fc392-061e-42ab-8cc0-08a645371b5b@gmx.net>
Date: Wed, 15 Feb 2017 14:46:05 +0100
MIME-Version: 1.0
In-Reply-To: <e0397e97-ddd8-1acc-d139-bf5397c3046a@rempel-privat.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5931384687375995776=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: problems with ext4
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5931384687375995776==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="pE0k4a9HjpLgVTTajk1X1BJA1Evtfbrp8"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--pE0k4a9HjpLgVTTajk1X1BJA1Evtfbrp8
Content-Type: multipart/mixed; boundary="ROHxM3ujHRnEkGeomEbfv5sTU63ktJGeg";
 protected-headers="v1"
From: Oleksij Rempel <fishor@gmx.net>
To: Holger Schurig <holgerschurig@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <6e4fc392-061e-42ab-8cc0-08a645371b5b@gmx.net>
Subject: Re: problems with ext4
References: <3c0aa707-bb93-df05-e9e2-a3810995ad1f@rempel-privat.de>
 <20170215070343.zzb7njup3opvbsfd@pengutronix.de>
 <0b9cf71c-c86d-29e4-0cb0-0ddba9e43d2a@rempel-privat.de>
 <CAOpc7mFtB7-Qf4pNSCZsYofdAyj=TPRG17J0=rdi3YEBm+qyRg@mail.gmail.com>
 <e0397e97-ddd8-1acc-d139-bf5397c3046a@rempel-privat.de>
In-Reply-To: <e0397e97-ddd8-1acc-d139-bf5397c3046a@rempel-privat.de>

--ROHxM3ujHRnEkGeomEbfv5sTU63ktJGeg
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Am 15.02.2017 um 14:39 schrieb Oleksij Rempel:
> Am 15.02.2017 um 13:31 schrieb Holger Schurig:
>> For what it's worth, my kernel is also in an ext4 partition (on an
>> SDCARD or eMMC).
>>
>> I format them with "mkfs.ext4 -q -F -D -j /dev/XXXX"
>>
>> Inside the partition, I use /boot/vmlinuz as a symlink to the real fil=
e
>> which is in the same directory.
>> =E2=80=8B
>>
>> I'm however on an older version of barebox, 2016.07.0
>=20
> I reformatted boot partition back to ext4. Now the problem is reproduci=
ble.
> Partition image can be found here
> https://github.com/olerem/beagleboneblack/blob/master/boot.tar.bz2
>=20
> Decompressed it should be:
> md5sum 2f3474d39f1d7893e310b55ea57d87bd
>=20
> the /boot/dtb symlink can't be resolved by barebox. And /boot/dtbs
> folder is broken.

Some more info:
apt-cache policy e2fsprogs
e2fsprogs:
  Installed: 1.43.4-2
  Candidate: 1.43.4-2
  Version table:
 *** 1.43.4-2 500
        500 http://ftp2.de.debian.org/debian stretch/main armhf Packages
        100 /var/lib/dpkg/status


apt-cache policy linux-image-4.9.0-1-armmp
linux-image-4.9.0-1-armmp:
  Installed: 4.9.6-3
  Candidate: 4.9.6-3
  Version table:
 *** 4.9.6-3 500
        500 http://ftp2.de.debian.org/debian stretch/main armhf Packages
        100 /var/lib/dpkg/status





--ROHxM3ujHRnEkGeomEbfv5sTU63ktJGeg--

--pE0k4a9HjpLgVTTajk1X1BJA1Evtfbrp8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iF4EAREIAAYFAlikW50ACgkQHwImuRkmbWlbCQD9GwwISgnLu1StL16Kh0aFSBjm
TcTEXuttJvdzzHGEMZ0A/j6nGtR4Bdqc6cqnpl/J4h+4Ko93M+cyNY/dDaiPmWGT
=LH+r
-----END PGP SIGNATURE-----

--pE0k4a9HjpLgVTTajk1X1BJA1Evtfbrp8--


--===============5931384687375995776==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5931384687375995776==--
