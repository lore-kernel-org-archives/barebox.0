Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout02.posteo.de ([185.67.36.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1wjF-00048Y-J3
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 16:50:31 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id E404021121
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 18:50:02 +0200 (CEST)
References: <df6edf8c-d15a-5e7b-58ad-6fc32ad56590@posteo.de>
 <20180917101143.GE4097@pengutronix.de>
From: Dennis Menschel <menschel-d@posteo.de>
Message-ID: <d21fc7f2-6075-b4a7-ca8f-239ddfbc4d9c@posteo.de>
Date: Mon, 17 Sep 2018 18:50:00 +0200
MIME-Version: 1.0
In-Reply-To: <20180917101143.GE4097@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2988053562314222824=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting AM335x MLO from network no longer works
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2988053562314222824==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="QxxWacXDjDOJsmJFm48yL1tJweol3GE3f"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--QxxWacXDjDOJsmJFm48yL1tJweol3GE3f
Content-Type: multipart/mixed; boundary="MrirQew7qTtWhNYEKdaWQI2WlraPRFmvj";
 protected-headers="v1"
From: Dennis Menschel <menschel-d@posteo.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <d21fc7f2-6075-b4a7-ca8f-239ddfbc4d9c@posteo.de>
Subject: Re: Booting AM335x MLO from network no longer works
References: <df6edf8c-d15a-5e7b-58ad-6fc32ad56590@posteo.de>
 <20180917101143.GE4097@pengutronix.de>
In-Reply-To: <20180917101143.GE4097@pengutronix.de>

--MrirQew7qTtWhNYEKdaWQI2WlraPRFmvj
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Sascha,

Am 17.09.2018 um 12:11 schrieb Sascha Hauer:
> [...]
>=20
> I just sent a fix. I can't test it since our DHCP server does not
> provide a bootfile, but I'm confident that this is the right fix. Could=

> you give it a try?
>=20
> Thanks
>  Sascha
>=20

Thanks for the quick reply.

I've tested the patch today with the aforementioned AM335x board and I
am pleased to announce that it has solved the problem.

Best regards,
Dennis


--MrirQew7qTtWhNYEKdaWQI2WlraPRFmvj--

--QxxWacXDjDOJsmJFm48yL1tJweol3GE3f
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEKwQPicxrN8xaviY2uiJe+Ii1ddAFAluf2zgACgkQuiJe+Ii1
ddCduQ/+MRiLSeXZXvBUGzEqbmoWDvRoMO7nQTNfLCnD1QEZ7rpStZzv17qydwo/
txcBhshRXE978Vt8wpVZa+hKYQy876aEbtju0P++/wbMaYU+QbO1MeA2plqJ1+iV
7eWI8aa8mH7aQrqwgaqTlxvGmjXScws3xdbiQd0P4HQ6CdNXhsIL0bWw/BjjIR3k
iLdaekWomWzfFsUELNCfW6+XZznQHITsc65XHdhtUHRPcMl3NOIyK1bKP+14K0or
L09yKdOsi3Tx76xNjFfXzmMrR9HQ58A7xz4yDLY9wfGCFjgQo8xd/qzFWopjmlYe
jEH4/7kP7WU2zln+ex8+5nh6MRxBfCL+rhxkD91t+qHGhkuqzJKwbiooE50PlEFv
Z3pLJCi9liT2XO2yUJSUsu3t5z49Zao5T6s8ANSFBQOY8Tr2rh1Hz31vZPhPfXLH
aKoIGNtOMKFBQE5IV04WLeT8X1dhcy3hl7sWegsI6u2qk9ao2vU0I2pFdbHqFF3r
6FuCzFayfrPp1IrKg2F2N3/NoivtKIxsMKIizx1jUHYYEKh2HDY8SDAZefpOEvtW
kVyfhoBwOh0FQsO/Ea8NAe2bbsZTd8psX+juFANPDdPxiZ+rqag5+4YOgS6X8JdU
PhUESX8LtGX25jSbBdcTp1rHOs0w/kA7lhw66esu8hdMDZaCw3U=
=r6ZI
-----END PGP SIGNATURE-----

--QxxWacXDjDOJsmJFm48yL1tJweol3GE3f--


--===============2988053562314222824==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2988053562314222824==--
