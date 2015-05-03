Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yp0Vo-00083Y-6i
 for barebox@lists.infradead.org; Sun, 03 May 2015 20:29:16 +0000
references: <1430683999-5910-1-git-send-email-andrew.smirnov@gmail.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
message-id: <554684FB.9090707@pengutronix.de>
Date: Sun, 3 May 2015 22:28:43 +0200
mime-version: 1.0
in-reply-to: <1430683999-5910-1-git-send-email-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6044390428989652821=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/8] Makefile.lib: Fix i.MX image size after generation
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6044390428989652821==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="3bWDHQBSNGuASitbQfKCP3ge7NxCDcfBj"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--3bWDHQBSNGuASitbQfKCP3ge7NxCDcfBj
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 05/03/2015 10:13 PM, Andrey Smirnov wrote:
> If called with '-b' option 'imx-image' tool prepends barebox header to
> the image, but the tool does not fill the data at image size offset
> correctly. Call 'fix_size', right after 'imx-image' to fix that.

What about fixing the tool instead? The imx-image tool in used
imx-habv4, too, see images/Makefile.imxhabv4.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--3bWDHQBSNGuASitbQfKCP3ge7NxCDcfBj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJVRoT+AAoJECte4hHFiupUUi8P/i4XOeqsSU33HEs+h1qUVg20
C3M1sEyZuqrgbo879Cq/ebodLutNsoalr1XwiEKStC9nGqtbmaXIc+NBbivvBNnG
TTJz8EZUahlNT1dc9hOWb1CixVceJpAdz1cnAv7sjZDh1hYLNYpQN5ZU+3hiyWNw
TqT2Y08FdXdCzDLc+ANXCGCMrLYpdGA2BJhXyYSPDmhKcb2PhJxvq0ilxQcHyUnq
9kU1hBFpEWuI4qbMPkQ2gz4skD+CUxnrDw8EUCedDqnCkXu7+Kf+38ehFzA0mzjW
FBwZYsG/eifr0KLz8g5/KvK5+HM+Z/O7CWO7YNobvK86YsElIoqgIbzyvQmzxpWB
mpSH/FxKP9jprbrYAERX29iDwbW2Uk9OEOkZMLbHtsRWICUtoyTqVrgst+SToxTh
7CtUL2f2IAKCXn+6tArhdA5StAm6fV3DCNASsYg+aNnSYVs4t6LEcMFdBibyv7th
O+xYFbYw8MsdifXBPKTA5KKhdOtGc1MfsiqBJ/KpMHMOuzrPeYAXvxJ8lG0uKMfh
vu75/NHYVkML0I5KudanQ4cBHT0ntj6TRCpvjD0BiTyNid5JosVsrbtTgorOBzqq
Se16KsFL3R+lkclRIInM5/tsHTezXa/1DtI1aFJfNnTrOu+2Dq2wZr5wz29OaPYN
6BdaFTJm+l4zEKJM+Tia
=AUAK
-----END PGP SIGNATURE-----

--3bWDHQBSNGuASitbQfKCP3ge7NxCDcfBj--


--===============6044390428989652821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6044390428989652821==--
