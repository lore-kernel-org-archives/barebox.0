Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YWS6d-0007A3-M3
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 16:06:36 +0000
Message-ID: <55030AF3.8050903@pengutronix.de>
Date: Fri, 13 Mar 2015 17:06:11 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-4-git-send-email-jlu@pengutronix.de>
 <20150312181934.GV30554@ns203013.ovh.net>
 <1426238884.13791.85.camel@pengutronix.de>
 <20150313100538.GB20624@ns203013.ovh.net> <5502CB15.4070306@pengutronix.de>
 <20150313155423.GB24510@ns203013.ovh.net>
In-Reply-To: <20150313155423.GB24510@ns203013.ovh.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2291531039400022768=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 3/4] FIT: add FIT image support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2291531039400022768==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="HLmdwnamJJamiDVOVRVVl7P0dNIOMIuA6"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--HLmdwnamJJamiDVOVRVVl7P0dNIOMIuA6
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/13/2015 04:54 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
>>> if you can break rsa4096, the chance you can break ECC are high too
>>
>> If you want to open the box, today you would probably not break
>> rsa2048/sha1 (unless you have huge calculation power) but look for
>> implementation weaknesses, like bugs or side channel attacks.
>=20
> I alredy see it done on rsa1024 few years ago, today rs2048 is supposed=
ly
> secured but as you hw may have to run for 10 years rs2048/sha1 is consi=
dered not
> strong enough

Some thoughts on 2048 vs. 4096:
https://www.yubico.com/2015/02/big-debate-2048-4096-yubicos-stand/

While sha1 is considered broken.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--HLmdwnamJJamiDVOVRVVl7P0dNIOMIuA6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVAwr0AAoJECte4hHFiupUH3MP/ihV5swGZl+k5TE6lg9T2va4
ycQxydYM4wvI2Godv6KNFwUHHGcKdDOVs/ihwhz2oO4pyzfAUoi1ZyGUlUZRKugX
nF3i9p6pdlqmUkAFABS2K5E7Xixby7ZREsGvtkS5C9M7mL42TmvRApZaWmiQ/gVH
tLFucUvx+0OhbQgjsrNYtmEf0PjJGQTDfmf+sWp4fz74tShHlgp0LzDtXASQWv68
SV4vr3U/Jl0Yph2KVgm7AydCgKCTE+wirjQVB6fVRQiKbvuui4ISyQR+qxhH1XPc
GXU9byVuEWC48Ia4oOtpn5PoNdxs25G5llNmYDy0lkM4efkwF9HUfRk/KAf4xkaT
wx9hN3F+0c+iYbHH6YD04V0SNjykfP0rviRkHKb8IkSFn4A9FXNylyNFeXWcuMf5
iRGZlxNPKJr/mHR2mfHI76q2bHW0I0OzDs+ixyBf+CR+Y0utJ53wO0Zdy9+Xhe6M
iANW+9cEWgvKhDlnhqp04HKfrHR8GuW/31BTlI1uQRZQNEABs4fvgHsLDRBq6ppL
Uoa9FZEYkwVg+uAXMx6VzyBBanC6zkZOxxC/cjnUnO3AKzcH4dakU02YGQKZePmI
sJR68BQs/+2spD0SmapwBddgJ6xzkrP36gaDrxztUspbAmK4dhmfzRDs5A22DaW9
fO1/jADCUMUhPixIcAnw
=qvVO
-----END PGP SIGNATURE-----

--HLmdwnamJJamiDVOVRVVl7P0dNIOMIuA6--


--===============2291531039400022768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2291531039400022768==--
