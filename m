Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YKxR5-00021U-87
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 23:08:12 +0000
Message-ID: <54D93DAF.7020903@pengutronix.de>
Date: Tue, 10 Feb 2015 00:07:27 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1423494107-29051-1-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1423494107-29051-1-git-send-email-w.egorov@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8479761549767293547=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH: For next 1/2] ARM: am33xx: Add a function to retrieve
 the reset reason
To: Wadim Egorov <w.egorov@phytec.de>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8479761549767293547==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="lWmC33PMhHh7o8D2C6VfVm8Jl8UgKdfTr"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--lWmC33PMhHh7o8D2C6VfVm8Jl8UgKdfTr
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 02/09/2015 04:01 PM, Wadim Egorov wrote:
> This patch adds a function to retrieve the last occurred reset reason
> on the AM335x.

Please make use of the existing rest_source framework. See
reset_source.h, reset_source_set() and how the tegra code for example:

    1834169f13cc tegra: pmc: add support for reset src detection

regards,
Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--lWmC33PMhHh7o8D2C6VfVm8Jl8UgKdfTr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJU2T3BAAoJECte4hHFiupUDpUP/1fuBxs/OxKk74sLmvbA4Uph
fhswJGaWz7vl/nV0ybg7LyB3GDqX6uJkYU4nrtCXtyMRnua4KVs7DpRoDwyLk8w5
KEhl900pIkI3KACRk8pifiu0rZD2BO0EAHAnoQ0761o9ijMHfNr1CGRXcuOD16Ir
JusyCNHOAs4Keta7MmX9+CwFtiS5ufIKyhrK3UvlpTyBH1XNEvdGeS+sihdP79I7
xD5t46jPIXUstDg2cmmGQVaaXTcKfxJ5lUqbGEk8Y5V6xfRRUwFhGmZ+unxQj0NF
vVQJ4MavmD9Lu+SC7yRzq/0gvNh7J3M9j7Pi7/LTplTZvBp1xSfDaDwkchad2vp3
MKoFjW7RxwoXZuH2slgzpx9eIMtVnPA9ZjhXwO3rXqVHXXsQUGpC1U1q2g3Kd/nr
Gh/nrhwlIbablY6dAutYrsDYZZLEHLpjy852V9mu124koYrSXz+JTsH2jjXEstf1
TTq2KVYhQqRUYkyMwljgHhapwKGq01MmnTASXrR/Z77z+RSWkOVttfmklmdmuFMH
1Oro8q8X6hENFMgGP1k5ykE8edVBVjs1s6Aa6+u5eVDaoUOd6gvaTKBRUZd1pskP
1fY991o70241KE38HM6SVGDTe1ZpqNvKDfPqfpg2SgnPrwxqArCrhuJWnndo2EpH
/pyVIc3EX4uzCKA5T1Xs
=MiYk
-----END PGP SIGNATURE-----

--lWmC33PMhHh7o8D2C6VfVm8Jl8UgKdfTr--


--===============8479761549767293547==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8479761549767293547==--
