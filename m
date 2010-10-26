Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PAg8W-0003sm-FC
	for barebox@lists.infradead.org; Tue, 26 Oct 2010 09:48:09 +0000
Message-ID: <4CC6A3D1.5050708@pengutronix.de>
Date: Tue, 26 Oct 2010 11:48:01 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
	<201010261120.30875.jbe@pengutronix.de>
In-Reply-To: <201010261120.30875.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1806290365=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: more patches for next
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1806290365==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigC3982F59C5688B6DB48D77F3"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigC3982F59C5688B6DB48D77F3
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 10/26/2010 11:20 AM, Juergen Beisert wrote:

[...]

> BTW: When building the "pcm043_defconfig" I get the following warnings
> multiple times:
>=20
> [...]
>  CC      commands/mem.o
> {standard input}: Assembler messages:
> {standard input}:908: rdhi, rdlo and rm must all be different
> {standard input}:934: rdhi, rdlo and rm must all be different
> {standard input}:976: rdhi, rdlo and rm must all be different
> [...]

use a newer toolchain with newer binutils, e.g.

/opt/OSELAS.Toolchain-1.99.3/arm-1136jfs-linux-gnueabi/gcc-4.3.2-glibc-2.=
8-binutils-2.19-kernel-2.6.27-sanitized/bin/
Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigC3982F59C5688B6DB48D77F3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAkzGo9QACgkQjTAFq1RaXHN+KgCeIvJUrYgYN4PBgbPIDoOzeIpd
uhcAnibA0n/Qdzbi2LmT78hH6iWrQIm0
=wPWO
-----END PGP SIGNATURE-----

--------------enigC3982F59C5688B6DB48D77F3--


--===============1806290365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1806290365==--
