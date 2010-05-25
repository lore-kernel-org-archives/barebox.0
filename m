Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OGqjx-0001D6-5l
	for barebox@lists.infradead.org; Tue, 25 May 2010 09:48:02 +0000
Message-ID: <4BFB9CCA.1060403@pengutronix.de>
Date: Tue, 25 May 2010 11:47:54 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1274776657-6117-1-git-send-email-eric@eukrea.com>	<1274776657-6117-2-git-send-email-eric@eukrea.com>
	<1274776657-6117-3-git-send-email-eric@eukrea.com>
	<4BFB9224.9030507@pengutronix.de> <4BFB95C3.5090802@eukrea.com>
	<4BFB9938.5020001@pengutronix.de> <4BFB9BCE.7090609@eukrea.com>
In-Reply-To: <4BFB9BCE.7090609@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0037087634=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v4 3/6] commands: add i2c commands
To: =?UTF-8?B?RXJpYyBCw6luYXJk?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0037087634==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigED71EFB4A9A49BAE2CB5EE9C"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigED71EFB4A9A49BAE2CB5EE9C
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Eric B=C3=A9nard wrote:
> Hi,
>=20
> Le 25/05/2010 11:32, Marc Kleine-Budde a =C3=A9crit :
>>
>> adapter =3D i2c_get_adapter(adapter_number);
>> if (!adapter) {
>>     printf("adapter %d not found\n", adapter_number);
>>     return -ENODEV
>> }
>>
> I did that without the log after sending the email (should have think a=

> little bit more before sending the mail) : is a v6 necessary for this l=
og ?

I think sha would be happier if he can just apply your patch series (or
even pull it) without the need to modify it.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigED71EFB4A9A49BAE2CB5EE9C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkv7nM0ACgkQjTAFq1RaXHNDoACdHdYQXnVD0wSaAjkv8ATCTcxY
dBkAn24D3M+B8lUVZgVDmm0M8HZmXtdT
=c8QK
-----END PGP SIGNATURE-----

--------------enigED71EFB4A9A49BAE2CB5EE9C--


--===============0037087634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0037087634==--
