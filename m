Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QF25B-00025m-Hh
	for barebox@lists.infradead.org; Wed, 27 Apr 2011 10:35:02 +0000
Message-ID: <4DB7F14E.1080404@pengutronix.de>
Date: Wed, 27 Apr 2011 12:34:54 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <201104261430.01267.roman.fietze@telemotive.de>
	<201104271038.46439.roman.fietze@telemotive.de>
	<4DB7DE8E.6070100@pengutronix.de>
	<201104271232.12931.roman.fietze@telemotive.de>
In-Reply-To: <201104271232.12931.roman.fietze@telemotive.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0862229364=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] freescale-mx35-3-stack: support 256 MiB RAM
To: Roman Fietze <roman.fietze@telemotive.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0862229364==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig2DF1BB25300E5D40FC12231C"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig2DF1BB25300E5D40FC12231C
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/27/2011 12:32 PM, Roman Fietze wrote:
> Hello Marc,
>=20
> On Wednesday, 27.April.2011 11:14:54 Marc Kleine-Budde wrote:
>=20
>> Have a look at the /dev folder, do you have two "/dev/mem*"? If not
>> you should make the .id unique, i.e. should be "0" here.
>=20
> Barebox' register_device auto increments the ID if it's below zero,
> and devinfo shows me

Even better!

>=20
> ...
> |----mem2 (ram0)
> |----mem3 (ram1)
> ...
>=20
> "My" code is just borrowed from boards/karo-tx25/board.c. So if it's
> ambiguous, somebody (Sascha? Me?) should fix that there as well.

Marc


--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig2DF1BB25300E5D40FC12231C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk238U4ACgkQjTAFq1RaXHNNUwCdGhqUE5YbYUHkX4TZxMsK8PMw
6jYAoJcgfwJe6uLZfNg6L6/Pm8jacP1+
=sPZt
-----END PGP SIGNATURE-----

--------------enig2DF1BB25300E5D40FC12231C--


--===============0862229364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0862229364==--
