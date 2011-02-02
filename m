Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pkl1h-0003Ga-CZ
	for barebox@lists.infradead.org; Wed, 02 Feb 2011 22:18:14 +0000
Message-ID: <4D49D820.9020700@pengutronix.de>
Date: Wed, 02 Feb 2011 23:18:08 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1296684558-16821-1-git-send-email-mkl@pengutronix.de>
	<4D49D730.3040009@eukrea.com>
In-Reply-To: <4D49D730.3040009@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1393529580=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] defaultenv/bin/boot: fix ubi root's name assignment
To: =?UTF-8?B?RXJpYyBCw6luYXJk?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1393529580==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig8DA91A6851990F532E637A78"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig8DA91A6851990F532E637A78
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 02/02/2011 11:14 PM, Eric B=C3=A9nard wrote:
> On 02/02/2011 23:09, Marc Kleine-Budde wrote:
>> This patch fixes a regression introduced in commit
>> d15cfafeef8f99ff1a47e77362d0adf1b07f26ae.
>>
>> While there, use "-z" to check if ubiroot variable is empty.
>>
>> Signed-off-by: Marc Kleine-Budde<mkl@pengutronix.de>
>> Cc: Eric B=EF=BF=BDnard<eric@eukrea.com>
> Acked-By: Eric B=C3=A9nard<eric@eukrea.com>
>=20
> and shame on me for not testing this part ...

Sascha, can you fix Eric's name, I fsck'ed it up :)

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig8DA91A6851990F532E637A78
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk1J2CMACgkQjTAFq1RaXHObjQCgiVPm51w6KvpDexSCXBscbN0h
srsAmweINQ5aWv3ijFUAuGcrHesJxPx5
=l6GU
-----END PGP SIGNATURE-----

--------------enig8DA91A6851990F532E637A78--


--===============1393529580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1393529580==--
