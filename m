Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yp21i-0007tV-LO
 for barebox@lists.infradead.org; Sun, 03 May 2015 22:06:19 +0000
references: <1430690125-2257-1-git-send-email-andrew.smirnov@gmail.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
message-id: <55469BB7.9070708@pengutronix.de>
Date: Mon, 4 May 2015 00:05:43 +0200
mime-version: 1.0
in-reply-to: <1430690125-2257-1-git-send-email-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1039854818804735092=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/8] imx-image: Correctly fill image size in prepended
 header
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1039854818804735092==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="m2UB6qoNcrNEltM4WuCgBB4vrTTNB60Sh"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--m2UB6qoNcrNEltM4WuCgBB4vrTTNB60Sh
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 05/03/2015 11:55 PM, Andrey Smirnov wrote:
> If called with '-b' option 'imx-image' tool prepends barebox header to
> the image, but the tool does not fill the data at image size offset
> correctly. Fix that.
>=20
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>=20
> This patch supercedes the one sent earlier titled:
>  "[PATCH 1/8] Makefile.lib: Fix i.MX image size after generation"
>=20
>  scripts/imx/Makefile    |  2 ++
>  scripts/imx/imx-image.c | 12 ++++++++++--
>  2 files changed, 12 insertions(+), 2 deletions(-)
>=20
> diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
> index be0b490..ee0acc1 100644
> --- a/scripts/imx/Makefile
> +++ b/scripts/imx/Makefile
> @@ -6,5 +6,7 @@ always          :=3D $(hostprogs-y)
>  HOSTCFLAGS_imx-usb-loader.o =3D `pkg-config --cflags libusb-1.0`
>  HOSTLOADLIBES_imx-usb-loader  =3D `pkg-config --libs libusb-1.0`
>=20
> +HOSTCFLAGS_imx-image.o =3D -I$(srctree)
> +
>  imx-usb-loader-objs :=3D imx-usb-loader.o
>  imx-image-objs :=3D imx-image.o
> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index 25ea4d8..c0181df 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -27,6 +27,8 @@
>  #include <fcntl.h>
>  #include <endian.h>
>=20
> +#include <include/filetype.h>
> +
>  #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
>  #define offsetof(TYPE, MEMBER) __builtin_offsetof(TYPE, MEMBER)
>  #define roundup(x, y) ((((x) + ((y) - 1)) / (y)) * (y))
> @@ -92,8 +94,11 @@ static int add_header_v1(void *buf, int offset, uint=
32_t loadaddr, uint32_t imag
>  	struct imx_flash_header *hdr;
>  	int dcdsize =3D curdcd * sizeof(uint32_t);
>=20
> -	if (add_barebox_header)
> +	if (add_barebox_header) {
> +		uint32_t *psize =3D buf + ARM_HEAD_SIZE_OFFSET;
>  		memcpy(buf, bb_header, sizeof(bb_header));
> +		*psize =3D imagesize;
> +	}
>=20
>  	buf +=3D offset;
>  	hdr =3D buf;
> @@ -178,8 +183,11 @@ static int add_header_v2(void *buf, int offset, ui=
nt32_t loadaddr, uint32_t imag
>  	struct imx_flash_header_v2 *hdr;
>  	int dcdsize =3D curdcd * sizeof(uint32_t);
>=20
> -	if (add_barebox_header)
> +	if (add_barebox_header) {
> +		uint32_t *psize =3D buf + ARM_HEAD_SIZE_OFFSET;
>  		memcpy(buf, bb_header, sizeof(bb_header));
> +		*psize =3D imagesize;
> +	}

In the HAB case, the resulting image will be CSF_LEN bytes bigger, see:
"if (prepare_sign)" below. (A signature + padding will be appended to
the barebox image.)

What does the size in the barebox header mean exactly?

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--m2UB6qoNcrNEltM4WuCgBB4vrTTNB60Sh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJVRpu3AAoJECte4hHFiupUJssP/RA/tWd/sOlYD0AEqG0vhZR6
puBe6oZKpe/lcirpHsT1zSxlOpW5HpNL349muVOQ/SGkuRObJCLD3hfQcJuu/tW1
6E1oZN9XSlmykiTwDXjbeR3ePgzqFKmV2+of0V5r+r4IBBmP/vEfxqmxxeuQIaYR
0NuxjezCmSpEwf+IVNGboW9dHu0H4Vtwl/fyWsCzEbGVgimJNXaOmYFwc5Hqz3Bp
RTj6dkxnbMtHXgGATzVB259Cf/7qR9ONhWAPxML0M7LlSromKH6wCbVFhw5WOnMD
SLbP+cIWF5gOmsIBD7bUkobJg5Bm0p4Z9gmEkvNit6hPzC16kF6JZBGwk+j13tG/
0EjIjPOl3omrMeUrQwTyRsxHE5FSU5k7datW7yvmO2swR99oZ+8cWcfrnH7v+nXv
Fh9O37JQe4t4Bb+GaPV597Q7sB4sPAATc/bLFj4PFJfalmuHPStvsx3eMNFVsR1w
HRyDNn6znwHUukVV9MuYA6HpFm93dBQrJ3e6GGMd1V1OnG/OZkPIRZcqJxi1l9V0
Dcv3DUHucNnf54Z7Ln5zpcsy8X3SQ8i+snBZS2mvuqHbcq+VcirecKY5msddzmTi
QzDXElYcQmJPd6E6fi+OARICbNAn2fF8WN2bgW5tLYEDrJXIfbY0l6/yllIatcXE
U07zPL7cTKq8sQjMyRDH
=Izcx
-----END PGP SIGNATURE-----

--m2UB6qoNcrNEltM4WuCgBB4vrTTNB60Sh--


--===============1039854818804735092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1039854818804735092==--
