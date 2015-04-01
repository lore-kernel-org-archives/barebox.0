Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YdLNp-0000vt-KZ
 for barebox@lists.infradead.org; Wed, 01 Apr 2015 16:20:50 +0000
Message-ID: <551C1A0A.20605@pengutronix.de>
Date: Wed, 01 Apr 2015 18:17:14 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
 <1427904855-32548-10-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1427904855-32548-10-git-send-email-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7175557366583380599=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 09/10] images: add HABv4 support for i.MX6
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7175557366583380599==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="80Cw781u2XNfLqFwbDT8gnfUQhI4hm2hg"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--80Cw781u2XNfLqFwbDT8gnfUQhI4hm2hg
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 04/01/2015 06:14 PM, Marc Kleine-Budde wrote:
> This patch adds high assurance boot support (HABv4) image generation to=

> barebox, currently tested on i.MX6 only.
>=20
> In order to build a singed barebox image, add a new image target to
> images/Makefile.imx as illustrated in the diff below:
>=20
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -163,10 +163,14 @@ image-$(CONFIG_MACH_SABRELITE) +=3D barebox-frees=
cale-imx6dl-sabrelite.img
>  pblx-$(CONFIG_MACH_SABRESD) +=3D start_imx6q_sabresd
>  CFG_start_imx6q_sabresd.pblx.imximg =3D $(board)/freescale-mx6-sabresd=
/flash-header-mx6-sabresd.imxcfg
>  FILE_barebox-freescale-imx6q-sabresd.img =3D start_imx6q_sabresd.pblx.=
imximg
>  image-$(CONFIG_MACH_SABRESD) +=3D barebox-freescale-imx6q-sabresd.img
>=20
> +CSF_start_imx6q_sabresd.pblx.imximg =3D $(havb4_imx6csf)
> +FILE_barebox-freescale-imx6q-sabresd-signed.img =3D start_imx6q_sabres=
d.pblx.imximg.signed
> +image-$(CONFIG_MACH_SABRESD) +=3D barebox-freescale-imx6q-sabresd-sign=
ed.img
> +
I hope git will not try to appy this patch in the description :D - I
should have removed the --- and +++.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--80Cw781u2XNfLqFwbDT8gnfUQhI4hm2hg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVHBoNAAoJECte4hHFiupUvLEQAJIiitVckAcL7rJKvd7vX1IC
SyO6Cia+QnIvdgUuWuSEENMZ182P3oTSlvxLUCSmU8KFKxfAsQtWe15WYtzhnSMu
/j8XkumIvbQNLJHtC6RWtYU3F6JDJTxZ3UZXjuozX5xu9x2WF9vONSJ1r7cGWEwE
js4oPxNOzuVeS6jPZSQcQ+cnvA9SHA1EPAgN9dr9qW/nbOkhJY/fl5CGt9cnv3Zz
5jxqIuW9r4paJY8a0sLz0NiwixMMFrvGHBe7JZqLzcfvJIoXpBDRbisSiqDovmrU
5GF1ZACHvG5n0JiPP8X9T+johRPLKML7DfmxsM6qpu4N8E5A4EyJ+t1bRknZ9CUX
gwxLOywyesNBWf4hXzMDJ5Yf7pYhGPIkYsZOad/FeuCCml7ONyb9SZWMTri6dxkH
/QzayqmY1TNIUxneYA8uuvqeya5/sIVOrW3/pxOckzlMYVD/d9nOcBH4BcYWQ2EQ
lc4Kng343gLnDHSFyAHN1Z9ESik/cVAaULOG1aBJBUoTt8lJu18g99V/q0r7jt5s
EY59qYTDsWxPLIRcVzL5wv6/k75IE03BPm5+V1HSCDKQ8F1l27eDoRAttvkle7nY
j7ahANg3WSyGUzehTvStKHLMg0wSfFyNJOtL1Qe8jd1a8Mn7f7btXJnKu0+Xmex6
+IDwrea/GOX6dlIUhx1B
=CR+C
-----END PGP SIGNATURE-----

--80Cw781u2XNfLqFwbDT8gnfUQhI4hm2hg--


--===============7175557366583380599==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7175557366583380599==--
