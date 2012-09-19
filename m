Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEHqm-0004sH-Hw
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 10:49:49 +0000
Message-ID: <5059A33F.7080905@pengutronix.de>
Date: Wed, 19 Sep 2012 12:49:35 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <n> <1348000210-21686-1-git-send-email-carlo.caione@gmail.com>
 <1348045844.3397.8.camel@coredoba.hi.pengutronix.de>
 <505997B7.9040306@gmail.com>
 <1348049328.3397.10.camel@coredoba.hi.pengutronix.de>
In-Reply-To: <1348049328.3397.10.camel@coredoba.hi.pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5939324397624669164=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] Add bcm2835/Raspberry-Pi support
To: =?ISO-8859-1?Q?Jan_L=FCbbe?= <jlu@pengutronix.de>
Cc: Michael Olbrich <mol@pengutronix.de>, barebox-request <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============5939324397624669164==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig7360F51689330056D2CD18A6"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig7360F51689330056D2CD18A6
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 09/19/2012 12:08 PM, Jan L=FCbbe wrote:
> Hi,
>=20
> On Wed, 2012-09-19 at 12:00 +0200, Carlo Caione wrote:
>> You need an sd card with a single partition fat32 with inside=20
>> bootcode.bin, loader.bin and start.elf (you can find the files here=20
>> https://github.com/raspberrypi/firmware/tree/master/boot)
>> Then just copy barebox.bin on the card and rename it kernel.img.
>=20
> Ok, I'll try that later today.
>=20
> What are your next plans? The USB or SD controllers?

IIRC our colleague Michael (mol) said it's another incarnation of the
chipidea IP core, which also in the imx28, imx53, etc...

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig7360F51689330056D2CD18A6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://www.enigmail.net/

iEYEARECAAYFAlBZo0kACgkQjTAFq1RaXHNYiQCdG6o3djjfzDxCn48VTEwCxmIQ
NIgAn3ECzJm8Jvo3oYJMjINlaQNo0O1B
=fuYu
-----END PGP SIGNATURE-----

--------------enig7360F51689330056D2CD18A6--


--===============5939324397624669164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5939324397624669164==--
