Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCs00-0002rM-Q3
 for barebox@lists.infradead.org; Wed, 08 Jul 2015 16:15:05 +0000
References: <1436353060-22497-1-git-send-email-s.hauer@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <559D4C69.8080001@pengutronix.de>
Date: Wed, 8 Jul 2015 18:14:33 +0200
MIME-Version: 1.0
In-Reply-To: <1436353060-22497-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7474980720045476185=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Build with -fno-delete-null-pointer-checks
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7474980720045476185==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="qJ4ksJM8SdgGceAleS2gAdfappNSTg1FO"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--qJ4ksJM8SdgGceAleS2gAdfappNSTg1FO
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 07/08/2015 12:57 PM, Sascha Hauer wrote:
> This becomes important with gcc-4.9. Without this gcc assumes
> that accessing NULL pointers traps and everything that happens
> behind the access is not executed. This recently happened with
> i.MX53 which has:
>=20
> static int imx53_silicon_revision(void)
> {
> 	void __iomem *rom =3D MX53_IROM_BASE_ADDR;
>=20
> 	rev =3D readl(rom + SI_REV);
> 	...
> }
>=20
> This resulted in object code in which the last instruction is
> the readl, the reset of the function is missing because gcc assumes thi=
s
> is never executed.
>=20
> Disable this optimization with -fno-delete-null-pointer-checks since
> in barebox NULL pointers can indeed be valid.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/Makefile b/Makefile
> index e7db67a..0fe9274 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -301,7 +301,8 @@ CPPFLAGS        :=3D -D__KERNEL__ -D__BAREBOX__ $(L=
INUXINCLUDE) -fno-builtin -ffre
> =20
>  CFLAGS          :=3D -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs =
\
>                     -Werror-implicit-function-declaration \
> -                   -fno-strict-aliasing -fno-common -Os -pipe
> +                   -fno-strict-aliasing -fno-common -Os -pipe \
> +                   -fno-delete-null-pointer-checks
The kernel uses:
$(call cc-option,-fno-delete-null-pointer-checks,)

>  AFLAGS          :=3D -D__ASSEMBLY__
> =20
>  LDFLAGS_barebox	:=3D -Map barebox.map
>=20
Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--qJ4ksJM8SdgGceAleS2gAdfappNSTg1FO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVnUxpAAoJEP5prqPJtc/H0KoH/ie2CwL4MyKhT8QNHiR7KCwI
mRmZsYBSzul7FTfjT09IgM6uSWveZf5UYoQdH9g6i5FES31stKk3yI/mKKEbeB9Z
S+v3+Wv8rUGmgkAXIBCdzdjJG2g1xbPKb/EqxO+8UW4MhgdHKDIFy7eg45OMzu8i
PnS47WmBFeu3F/LPsaBbxheAMbxdzVXK3J7/v9V4AuhjMafIyy3Q8bpoayDY8iHW
YtaHcVmXAVJHUyKoRuN0Xpqv++x7SakkebQrrZGQ1RMVZ94SiIna3dK1C0oOLEBO
Rruc/2rHMWeRonbOllMKn+XgTAKHJOuMvMH1WxnEaTYEepDZlLMM2ztpK7VBa50=
=ALz9
-----END PGP SIGNATURE-----

--qJ4ksJM8SdgGceAleS2gAdfappNSTg1FO--


--===============7474980720045476185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7474980720045476185==--
