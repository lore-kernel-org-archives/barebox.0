Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PqBk9-0005aM-G4
	for barebox@lists.infradead.org; Thu, 17 Feb 2011 21:50:34 +0000
Message-ID: <4D5D9821.6070500@pengutronix.de>
Date: Thu, 17 Feb 2011 22:50:25 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <AANLkTikb2tgLZhBYbunUG10Sz7FO3Yx_P1+5Fo0GonAD@mail.gmail.com>
	<20110210114858.GC11255@game.jcrosoft.org>
In-Reply-To: <20110210114858.GC11255@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0910329834=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: No NAND access on AT91SAM9G20-EK
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0910329834==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigFBEBDFB20E2FCE84E116891B"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigFBEBDFB20E2FCE84E116891B
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Jean-Christophe,

On 02/10/2011 12:48 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 	which ecc did u use before?

I'm working on a at91sam9m10ek, using latest origin/next.

The ecc-mode is "hardcoded" to NAND_ECC_HW in
arch/arm/mach-at91/at91sam9g45_devices.c. I've got the same -74 problem
when reading from the nand.

Barebox fails to read the environment, even if barebox has written it.
After changing the ecc mode to soft the env can be read and written
without problems.

I ported the atmel nand driver from linux-2.6.37, which had no
significant differences.

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigFBEBDFB20E2FCE84E116891B
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk1dmCUACgkQjTAFq1RaXHMOIQCgi2+k1UTQE72HOQD4EBaLmrIe
qysAn3TffNI/QU7cgdgNONAzHATgidKD
=ejp/
-----END PGP SIGNATURE-----

--------------enigFBEBDFB20E2FCE84E116891B--


--===============0910329834==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0910329834==--
