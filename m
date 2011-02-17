Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PqCbt-00063W-JU
	for barebox@lists.infradead.org; Thu, 17 Feb 2011 22:46:06 +0000
Message-ID: <4D5DA526.1070801@pengutronix.de>
Date: Thu, 17 Feb 2011 23:45:58 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <AANLkTikb2tgLZhBYbunUG10Sz7FO3Yx_P1+5Fo0GonAD@mail.gmail.com>
	<20110210114858.GC11255@game.jcrosoft.org>
	<4D5D9821.6070500@pengutronix.de>
In-Reply-To: <4D5D9821.6070500@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0538238694=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: No NAND access on AT91SAM9G20-EK
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0538238694==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigC8B227B66406B0F6250A2C42"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigC8B227B66406B0F6250A2C42
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 02/17/2011 10:50 PM, Marc Kleine-Budde wrote:
> Hello Jean-Christophe,
>=20
> On 02/10/2011 12:48 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
>> 	which ecc did u use before?
>=20
> I'm working on a at91sam9m10ek, using latest origin/next.
>=20
> The ecc-mode is "hardcoded" to NAND_ECC_HW in
> arch/arm/mach-at91/at91sam9g45_devices.c. I've got the same -74 problem=

> when reading from the nand.
>=20
> Barebox fails to read the environment, even if barebox has written it.
> After changing the ecc mode to soft the env can be read and written
> without problems.
>=20
> I ported the atmel nand driver from linux-2.6.37, which had no
> significant differences.

I just found in linux Kconfig:

> config MTD_NAND_ATMEL_ECC_HW
> 	bool "Hardware ECC"
> 	depends on ARCH_AT91SAM9263 || ARCH_AT91SAM9260 || AVR32

The sam9g45 is not listed here....Maybe we should hardcode "soft" in
barebox for the 9g45

regards,
Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigC8B227B66406B0F6250A2C42
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk1dpSkACgkQjTAFq1RaXHOFnACfcMcgh/2ENvSuOGserym8PFSM
NkwAoJoCKmDx5EqB+EwAHPLElSHZJd76
=17+h
-----END PGP SIGNATURE-----

--------------enigC8B227B66406B0F6250A2C42--


--===============0538238694==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0538238694==--
