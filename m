Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pu5fR-0003pg-Te
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 16:09:50 +0000
Message-ID: <4D6BC8C7.9090309@pengutronix.de>
Date: Mon, 28 Feb 2011 17:09:43 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00DD7@SRV-VS06.TELEVIC.COM>
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00DD7@SRV-VS06.TELEVIC.COM>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1292679916=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: scripts
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1292679916==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig87F0FCE28B9E20A180515477"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig87F0FCE28B9E20A180515477
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 02/28/2011 05:03 PM, Vanalme Filip wrote:
> I'm currently studying some Barebox scripts (i.e. init, boot) and I hav=
e noticed something strange with scripts :
>=20
> barebox:/env/bin echo $bootfile
> zImage
> barebox:/env/bin echo $eth0.serverip
> 10.0.48.80
> barebox:/env/bin cat test
> #!/bin/sh
>=20
> echo --$eth0.serverip--
> echo --$bootfile--

try:

echo --${bootfile}--

> barebox:/env/bin ./test
> --10.0.48.80--
> ----
> barebox:/env/bin
>=20
> When I do an echo of the two environment variables from the command pro=
mpt, I can see their values. However, when both commands are entered in a=
 simple script, only the serverip address appears. (I created the test sc=
ript with "edit" from within Barebox). Am I doing something wrong ?

cheers, Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig87F0FCE28B9E20A180515477
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk1ryMoACgkQjTAFq1RaXHNojACfaON99zP/XMhsD0xYAUD5amlA
dzEAn0CSR1KFDI+qM+jSzBfALy1iZddt
=A7k1
-----END PGP SIGNATURE-----

--------------enig87F0FCE28B9E20A180515477--


--===============1292679916==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1292679916==--
