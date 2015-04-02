Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ydayr-0000Mc-Kx
 for barebox@lists.infradead.org; Thu, 02 Apr 2015 09:00:07 +0000
Message-ID: <551D04FD.9040106@pengutronix.de>
Date: Thu, 02 Apr 2015 10:59:41 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1427841205-9393-1-git-send-email-mkl@pengutronix.de>	
 <20150402083522.GE8125@ns203013.ovh.net>
 <1427964906.24886.14.camel@pengutronix.de>
In-Reply-To: <1427964906.24886.14.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3408389743653656255=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] makfiles: add emacs syntax highlighting hint
To: Lucas Stach <l.stach@pengutronix.de>, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: mol@pengutronix.de, barebox@lists.infradead.org, sha@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3408389743653656255==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="mnGxNN94OV8Ttd41TWC5A72R4LIdoaLCg"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--mnGxNN94OV8Ttd41TWC5A72R4LIdoaLCg
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 04/02/2015 10:55 AM, Lucas Stach wrote:
> Am Donnerstag, den 02.04.2015, 10:35 +0200 schrieb Jean-Christophe
> PLAGNIOL-VILLARD:
>> On 00:33 Wed 01 Apr     , Marc Kleine-Budde wrote:
>>> This patches makes a standard emacs to recognise the files as makefil=
es.
>> not a fan of vi or emacs stuff in file
>>
>> btw I plan to drop the images/ and move them back to the ARCH
>>
> I'm not sure if this is time spent well.
>=20
> Moving the generated images _again_ will get you into some serious
> discussions with the people integrating barebox into BSP builds. We
> finally settled for a single directory going forward and changing this
> is not a good idea.

+1

> Or did you mean just moving the rules out of images/, but keeping the
> generated binaries there? This might in fact be doable.

On the first sight there's some marvell image related
doubling/copy-paste leftovers in ARCH and in images/.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--mnGxNN94OV8Ttd41TWC5A72R4LIdoaLCg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVHQT9AAoJECte4hHFiupUheMP/ieuaFS31ZdHXPL2yP5cMZLF
UQFCiPjNrhTSj43FfhbqFeyP5eaUL8Xik3hbHHt1jA+n4Nu3AyHXip4AZ5fdTVbA
VI613Md6fQljb59bvGaFGpMgG3e3OcBPipCzOs5Jjg39SnoTqjs11NvZmoYBwvUt
NNMCz1yAIk0GOx5ZqI6KWj4XCvh5UyHlLi5wp3aWx9ll+8rmG3kYFFLKmDLm04dX
igfFvNZ05477lfQ8BlBI9A6QXnSchVShcdBCtf6PJvUzGmspWzBLtZ7DZRar+yRd
H+8ju18S0iSrblnFoe4AwVLlJpCgTuH7rMc4Nsjv6kzGp8uPxiOgmSafC0+aivyL
7Ojd33pdlwNKIbE5tKT3OivZ4pITGKF19cdsb8ygS0K5tgWwACymLXl7NFvuF8VP
AOqFJovCSUyiiF/9jM7KAWcC34K1rc6Wt8GxEWHMeb8uDsGKsgskw1L5C6T3mK7M
TELVrFs02ZrqBZ8VC6ohLR5TISlpSWE+pMTpBlZsN48N+PxQrgZY0jT9DBYl14VR
oQQxQfLcwDLMqVwz5wxCCuId9ukg8/Q8uEqIfIrWS6/wrvX6dtTfaobvoQDlP15f
xBeJYWFxGe+PBc304o3sgJ7Wu/KY87YUS/rG19ffl9ZkC33mzNkJM1ZQ2VH8vQ/Y
306xFMc0WoJ4IPCTyX8Q
=CZ2S
-----END PGP SIGNATURE-----

--mnGxNN94OV8Ttd41TWC5A72R4LIdoaLCg--


--===============3408389743653656255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3408389743653656255==--
