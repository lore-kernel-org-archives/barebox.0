Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pu5hl-0003qy-7Z
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 16:12:13 +0000
Message-ID: <4D6BC95B.5030505@pengutronix.de>
Date: Mon, 28 Feb 2011 17:12:11 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00DD7@SRV-VS06.TELEVIC.COM>
	<4D6BC8C7.9090309@pengutronix.de>
In-Reply-To: <4D6BC8C7.9090309@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2118448172=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: scripts
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============2118448172==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigFA09A092365F35F9572DE8BC"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigFA09A092365F35F9572DE8BC
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 02/28/2011 05:09 PM, Marc Kleine-Budde wrote:
> On 02/28/2011 05:03 PM, Vanalme Filip wrote:
>> I'm currently studying some Barebox scripts (i.e. init, boot) and I ha=
ve noticed something strange with scripts :
>>
>> barebox:/env/bin echo $bootfile
>> zImage
>> barebox:/env/bin echo $eth0.serverip
>> 10.0.48.80
>> barebox:/env/bin cat test
>> #!/bin/sh
>>
>> echo --$eth0.serverip--
>> echo --$bootfile--
>=20
> try:
>=20
> echo --${bootfile}--

If that doesn't make a difference, try to "source" the config file in
your script, e.g.:

source /env/config

cheers, Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigFA09A092365F35F9572DE8BC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk1ryVsACgkQjTAFq1RaXHMN0ACeKKmZcWy2TJq7djO1C6KCwT/u
2P4An3h9kdyX/g5g7II2lLYjZETRq70z
=xUU6
-----END PGP SIGNATURE-----

--------------enigFA09A092365F35F9572DE8BC--


--===============2118448172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2118448172==--
