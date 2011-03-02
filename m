Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PuiO8-00026Q-5z
	for barebox@lists.infradead.org; Wed, 02 Mar 2011 09:30:33 +0000
Message-ID: <4D6E0E35.5000503@pengutronix.de>
Date: Wed, 02 Mar 2011 10:30:29 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00DD7@SRV-VS06.TELEVIC.COM>	<4D6BC8C7.9090309@pengutronix.de>
	<4D6BC95B.5030505@pengutronix.de>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00E08@SRV-VS06.TELEVIC.COM>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00E7D@SRV-VS06.TELEVIC.COM>
	<4D6CFE93.40508@pengutronix.de>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00ED6@SRV-VS06.TELEVIC.COM>
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00ED6@SRV-VS06.TELEVIC.COM>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1103727820=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: scripts
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1103727820==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigE69E93F7F05023362FF3D913"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigE69E93F7F05023362FF3D913
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 03/02/2011 09:36 AM, Vanalme Filip wrote:
>> -----Original Message----- From: Marc Kleine-Budde
>> [mailto:mkl@pengutronix.de] Sent: dinsdag 1 maart 2011 15:12 To:
>> Vanalme Filip Cc: barebox@lists.infradead.org Subject: Re: scripts
>>=20
>> On 03/01/2011 03:06 PM, Vanalme Filip wrote: [...]
>>=20
>>> One more question about barebox scripts (I guess even scripts in=20
>>> general...). This is part of a script from another board (that I
>>> took over for my own board):
>>=20
>>> #!/bin/sh
>>>=20
>>> . /env/config
>>>=20
>>> If [ x$1 =3D xflash ]; then root=3Dflash kernel=3Dflash fi
>>>=20
>>> if [ x$1 =3D xnet ]; then root=3Dnet kernel=3Dnet fi
>>>=20
>>> why the scripts are using i.e. [ x$1 =3D xflash ] instead of just
>>> simply [ $1 =3D flash ] ?
>> Both are doing the same, no ?
>>=20
>> The shell is quite old and doesn't support that. But you're right
>> for modern shells like bash or dash.
>=20
> [Filip] When I do : barebox:/ echo "this is \"quoted text\""
>=20
> I get : barebox:/ this is \"quoted text\"
>=20
> I would have expected this : barebox:/ this is "quoted text"

Yeah, that's a known problem.......feel free to fix.
>=20
> It looks like the escape character is not working as expected. When I
> have this in my boot script : bootargs=3D"$bootargs
> mtdparts=3D\"physmap-flash.0:$nor_parts;mxc_nand:$nand_parts\""

You can remove the \". They were needed some time ago, when "mcx_nand"
needed to be the name of the Flash Chip, which contained spaces.

> Will this work correctly ? Will the mtdparts be passed correctly to=20
> the kernel ? (I guess the escape character will remain, so I think
> it might be an problem, no?)

I once, or rather the kernel I used, had problems with the \"...

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigE69E93F7F05023362FF3D913
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk1uDjUACgkQjTAFq1RaXHOBkgCfalfN/+V7WnDV24oKZVqa7aam
Sv0AoJa8xBAeXvL0KpO1dEGGCZ6k0oQN
=m47j
-----END PGP SIGNATURE-----

--------------enigE69E93F7F05023362FF3D913--


--===============1103727820==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1103727820==--
