Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdtvp-0005rO-MP
 for barebox@lists.infradead.org; Wed, 15 Feb 2017 07:23:20 +0000
References: <3c0aa707-bb93-df05-e9e2-a3810995ad1f@rempel-privat.de>
 <20170215070343.zzb7njup3opvbsfd@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <0b9cf71c-c86d-29e4-0cb0-0ddba9e43d2a@rempel-privat.de>
Date: Wed, 15 Feb 2017 08:22:47 +0100
MIME-Version: 1.0
In-Reply-To: <20170215070343.zzb7njup3opvbsfd@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8435422328942360828=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: problems with ext4
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8435422328942360828==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="RIULQaEpJeliWash1j3IJNWmch1qmKxWV"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--RIULQaEpJeliWash1j3IJNWmch1qmKxWV
Content-Type: multipart/mixed; boundary="ui0dBIvLgtQnmfn7nOCeKRAIEf9Q2U28t";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <0b9cf71c-c86d-29e4-0cb0-0ddba9e43d2a@rempel-privat.de>
Subject: Re: problems with ext4
References: <3c0aa707-bb93-df05-e9e2-a3810995ad1f@rempel-privat.de>
 <20170215070343.zzb7njup3opvbsfd@pengutronix.de>
In-Reply-To: <20170215070343.zzb7njup3opvbsfd@pengutronix.de>

--ui0dBIvLgtQnmfn7nOCeKRAIEf9Q2U28t
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Am 15.02.2017 um 08:03 schrieb Sascha Hauer:
> Hi Oleksij,
>=20
> On Tue, Feb 14, 2017 at 03:22:29PM +0100, Oleksij Rempel wrote:
>> Hallo all,
>>
>> i'm trying to use Barebox on BeagleBone Black with plain debian sid
>> installation. Most of it seems to work fine, except that i can't boot
>> from ext4 boot partition. The reason is that some files and folders ar=
e
>> not readable. For example /boot/dtbs should contain another folder, bu=
t
>> barebox recognize it as file.
>=20
> What should I say, I have seen the code, it doesn't make me wonder. You=

> could look at the U-Boot commit log and see if you find something there=

> that helps


Hm.. this one looks interesting
http://git.denx.de/?p=3Du-boot.git;a=3Dcommit;h=3D66a47ff2d8f037e1e9d6416=
23257894a9975c325


--=20
Regards,
Oleksij


--ui0dBIvLgtQnmfn7nOCeKRAIEf9Q2U28t--

--RIULQaEpJeliWash1j3IJNWmch1qmKxWV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iF4EAREIAAYFAlikAccACgkQHwImuRkmbWl9WAD7Brh9F/A5pMTQyPc7ul+lByOM
J2eLhTFwKVvujRDNscwA/0HEB+cA61kTRExMC911/1qkbrUxLamNmvWD7fsPzadw
=yG8e
-----END PGP SIGNATURE-----

--RIULQaEpJeliWash1j3IJNWmch1qmKxWV--


--===============8435422328942360828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8435422328942360828==--
