Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QusMv-00045j-HU
	for barebox@lists.infradead.org; Sat, 20 Aug 2011 20:42:14 +0000
Message-ID: <4E501C1A.5090003@pengutronix.de>
Date: Sat, 20 Aug 2011 22:42:02 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <CAK8HZOLNN4pdfbHXq40-Zngz3Dnx6hfUkW3n92jxhOHS0DbOaA@mail.gmail.com>
In-Reply-To: <CAK8HZOLNN4pdfbHXq40-Zngz3Dnx6hfUkW3n92jxhOHS0DbOaA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1519057803=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: tftp or nfs?
To: Nataraj S Narayan <natarajsn@gmail.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1519057803==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig28F7907B917BE8CBD78FE1D1"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig28F7907B917BE8CBD78FE1D1
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 08/20/2011 12:08 PM, Nataraj S Narayan wrote:
> Unable to download and write a 30Mb ubifs file over tftp.  Any other
> preferred method of writing to ubi volume?
>=20
> Usb mass store doesn't mount.
>=20
> regards
>=20
> Nataraj
>=20
> barebox@Atmel at91sam9263-ek:/ tftp rootfs.ubifs /dev/ubi0.root
> warning: No MAC address set. Using random address 4A:01:CD:DA:A9:3C
> phy0: Link is up - 100/Full
> TFTP from server 192.168.0.110 ('rootfs.ubifs' -> '/dev/ubi0.root')
>         #################################################UBI error: ubi=
_io_writs
> UBI warning: ubi_eba_write_leb: failed to write data to PEB 603189552

your PED (physical erase block) 603189552 seems to have a problem....
Although the number itself is quite big: 603.189.552.

Boot Linux and reformat the ubi.

> UBI warning: ubi_ro_mode: switch to read-only mode
> Couldnt or partially wrote data
> write: Invalid argument
>=20
> tftp failed: error -22

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig28F7907B917BE8CBD78FE1D1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk5QHB4ACgkQjTAFq1RaXHNpOgCffptE3LrEGEJdjXl+yJve9r/6
v0gAnifpp1iDuFz4ghxhKvyCe36e0B+x
=zIFE
-----END PGP SIGNATURE-----

--------------enig28F7907B917BE8CBD78FE1D1--


--===============1519057803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1519057803==--
