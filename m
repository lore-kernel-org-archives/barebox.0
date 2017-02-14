Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdeNT-0007QZ-Vf
 for barebox@lists.infradead.org; Tue, 14 Feb 2017 14:46:50 +0000
Received: from [192.168.1.100] ([31.18.251.158]) by mail.gmx.com (mrgmx003
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0M3j17-1cLz3w0zS5-00rL8R for
 <barebox@lists.infradead.org>; Tue, 14 Feb 2017 15:46:25 +0100
References: <3c0aa707-bb93-df05-e9e2-a3810995ad1f@rempel-privat.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <dd56e2f0-52ee-e4b1-02cb-15f30d1d53d0@rempel-privat.de>
Date: Tue, 14 Feb 2017 15:46:24 +0100
MIME-Version: 1.0
In-Reply-To: <3c0aa707-bb93-df05-e9e2-a3810995ad1f@rempel-privat.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7002295063066371080=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: problems with ext4
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7002295063066371080==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="ggkD2w8PGgxFilLBlxNBQAQIt1SCcJKcD"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ggkD2w8PGgxFilLBlxNBQAQIt1SCcJKcD
Content-Type: multipart/mixed; boundary="uHG8vQPeBRkrcoXCt8TEWvMJaxmObgjxk";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: barebox@lists.infradead.org
Message-ID: <dd56e2f0-52ee-e4b1-02cb-15f30d1d53d0@rempel-privat.de>
Subject: Re: problems with ext4
References: <3c0aa707-bb93-df05-e9e2-a3810995ad1f@rempel-privat.de>
In-Reply-To: <3c0aa707-bb93-df05-e9e2-a3810995ad1f@rempel-privat.de>

--uHG8vQPeBRkrcoXCt8TEWvMJaxmObgjxk
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Am 14.02.2017 um 15:22 schrieb Oleksij Rempel:
> Hallo all,
>=20
> i'm trying to use Barebox on BeagleBone Black with plain debian sid
> installation. Most of it seems to work fine, except that i can't boot
> from ext4 boot partition. The reason is that some files and folders are=

> not readable. For example /boot/dtbs should contain another folder, but=

> barebox recognize it as file.
> If i mount same partition from linux, same path is accessible including=

> content of the folder.

I tried same device with ext2 for /boot. In this case all files reeded
properly.

--=20
Regards,
Oleksij


--uHG8vQPeBRkrcoXCt8TEWvMJaxmObgjxk--

--ggkD2w8PGgxFilLBlxNBQAQIt1SCcJKcD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iF4EAREIAAYFAlijGEAACgkQHwImuRkmbWm8JgD/YmrwPPD36MkGGZfM8elwJBVY
KcDz9gjgJG6AY4SAE10A/2FIQ3ZJMSByVSxN3PmtTTH/wSF0VYzX/gDODfHgIxp+
=Tpo4
-----END PGP SIGNATURE-----

--ggkD2w8PGgxFilLBlxNBQAQIt1SCcJKcD--


--===============7002295063066371080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7002295063066371080==--
