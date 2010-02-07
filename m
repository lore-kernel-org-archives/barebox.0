Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Ne4iv-0004ao-2G
	for barebox@lists.infradead.org; Sun, 07 Feb 2010 10:50:45 +0000
Message-ID: <4B6E9AEE.7040506@pengutronix.de>
Date: Sun, 07 Feb 2010 11:50:22 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <m33a1eoz9h.fsf@intrepid.localdomain>
In-Reply-To: <m33a1eoz9h.fsf@intrepid.localdomain>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0469143137=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: IXP4xx support
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0469143137==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigF1CA6F965F35509CBCF229D4"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigF1CA6F965F35509CBCF229D4
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Krzysztof Halasa wrote:
> I'm thinking about adding Barebox support for a certain platform using
> IXP425 (ARM, usually big-endian) CPU. This means the startup code
> (trivial, already got it working in little-endian mode), drivers for
> hardware Queue Manager, Network Processing Engines and built-in Etherne=
t
> interfaces (all of them easy to port from Linux).
>=20
> This also means supporting the NOR flash: the CPU has 16-bit, always
> big-endian, "value-preserving" EXP bus for connecting such devices. In
> LE mode the address has to be XORed with 2, and if it's byte-oriented
> data (i.e. not a command/response), it has to be byte-swapped. Only
> 16-bit writes can be made.
>=20
> Doing the above in the flash driver would complicate things a lot. The
> drivers currently use plain pointers to access the flash. I'm thinking
> about moving the low-level access (R/W) routines to arch code (with a
> generic defaults), and calling them via the NOR flash platform struct
> (which doesn't do anything useful ATM).

have a look at the current uboot cfi flash driver. They have read/write
functions to access the flash. By default they are macros to IIRC
__raw_read,write.

=46rom the first look, the driver looks much cleaner than the "old" one
used in barebox (modulo my bugfix from last week).

Maybe the current uboot driver should be ported to barebox before
starting improving the old one.

> The above would also permit supporting flashes which can't be mapped in=

> normal CPU address space. It would be a bit slower, though.

Sure, the access macros can be mapped to something complete different.

Cheers, Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigF1CA6F965F35509CBCF229D4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAktumvEACgkQjTAFq1RaXHMKjQCaAg8y7o0E8Ar0fVcrS6LxOIhL
7lUAoIsXglbhcTxa6MGFkqCSk3SjF7Gh
=iDPw
-----END PGP SIGNATURE-----

--------------enigF1CA6F965F35509CBCF229D4--


--===============0469143137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0469143137==--
