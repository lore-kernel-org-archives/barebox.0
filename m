Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHZdZ-0000AJ-Fj
 for barebox@lists.infradead.ORg; Fri, 08 Jan 2016 16:12:35 +0000
References: <1452259447-32006-1-git-send-email-yegorslists@googlemail.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <568FDF95.2080302@pengutronix.de>
Date: Fri, 8 Jan 2016 17:11:01 +0100
MIME-Version: 1.0
In-Reply-To: <1452259447-32006-1-git-send-email-yegorslists@googlemail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7414916042201075500=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] FIT: make RSA signature verification configurable
To: yegorslists@googlemail.com, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7414916042201075500==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="ieU85bPnb0xHS2CPLppHcJ3CL2jkfw32d"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ieU85bPnb0xHS2CPLppHcJ3CL2jkfw32d
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 01/08/2016 02:24 PM, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
>=20
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  commands/Kconfig   | 10 ++++++++++
>  common/image-fit.c | 15 +++++++++++++--
>  2 files changed, 23 insertions(+), 2 deletions(-)
>=20
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 3e4a32a..2fe37b9 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -428,6 +428,16 @@ config CMD_BOOTM_FITIMAGE
>  	  tree in the "doc/uImage.FIT" folder for more information:
>  	  http://git.denx.de/?p=3Du-boot.git;a=3Dtree;f=3Ddoc/uImage.FIT
> =20
> +config CMD_BOOTM_FITIMAGE_SIGNATURE
> +	bool
> +	prompt "Enable signature verification of FIT images"

Make signature verification mandatory.

> +	depends on CMD_BOOTM_FITIMAGE
> +	help
> +	  This option enables signature verification of FIT uImages,
> +	  using a hash signed and verified using RSA. If
> +	  CONFIG_SHA_PROG_HW_ACCEL is defined, i.e support for progressive
> +	  hashing is available using hardware, RSA library will use it.
> +
>  config CMD_BOOTU
>  	tristate
>  	default y
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 296285b..96cc3e2 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -40,6 +40,7 @@
>  #define CHECK_LEVEL_SIG 2
>  #define CHECK_LEVEL_MAX 3
> =20
> +#ifdef CONFIG_CMD_BOOTM_FITIMAGE_SIGNATURE
>  static uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, i=
nt size)

remove the ifdef.

>  {
>  	dt +=3D size;
> @@ -342,6 +343,7 @@ static int fit_verify_signature(struct device_node =
*sig_node, void *fit)
>   out:
>  	return ret;
>  }
> +#endif
> =20
>  static int fit_verify_hash(struct device_node *hash, const void *data,=
 int data_len)
>  {
> @@ -453,10 +455,13 @@ static int fit_open_image(struct fit_handle *hand=
le, const char* unit)
> =20
>  static int fit_open_configuration(struct fit_handle *handle, int num)
>  {
> -	struct device_node *conf_node =3D NULL, *sig_node;
> +	struct device_node *conf_node =3D NULL;
>  	char unit_name[10];
>  	const char *unit, *desc;
> -	int ret, level;
> +	int level;
> +#ifdef CONFIG_CMD_BOOTM_FITIMAGE_SIGNATURE
> +	struct device_node *sig_node;
> +#endif

please remove the ifdef

> =20
>  	conf_node =3D of_get_child_by_name(handle->root, "configurations");
>  	if (!conf_node)
> @@ -482,7 +487,10 @@ static int fit_open_configuration(struct fit_handl=
e *handle, int num)
>  	}
> =20
>  	level =3D CHECK_LEVEL_MAX;
> +
> +#ifdef CONFIG_CMD_BOOTM_FITIMAGE_SIGNATURE

please replace the ifdef by

if (IS_ENABLED(CONFIG_CMD_BOOTM_FITIMAGE_SIGNATURE))

>  	for_each_child_of_node(conf_node, sig_node) {
> +		int ret;
>  		if (handle->verbose)
>  			of_print_nodes(sig_node, 0);
>  		ret =3D fit_verify_signature(sig_node, handle->fit);
> @@ -495,6 +503,9 @@ static int fit_open_configuration(struct fit_handle=
 *handle, int num)
> =20
>  	if (level !=3D CHECK_LEVEL_SIG)
>  		return -EINVAL;
> +#else
> +	level =3D CHECK_LEVEL_SIG;
> +#endif
> =20
>  	if (of_property_read_string(conf_node, "kernel", &unit) =3D=3D 0)
>  		level =3D min(level, fit_open_image(handle, unit));
>=20

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--ieU85bPnb0xHS2CPLppHcJ3CL2jkfw32d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWj9+ZAAoJEP5prqPJtc/HhT0H/3MkI7Tj/uqo+u3akP/i4rJ/
fzrQ414Ij5QxbVklHTzj/TemM1jMhlGcj8nUsCBDjZh9GO5cCFg01V97mOiu2yEV
UprmehI95S9z9fkCqXqF0Mtf0DJC5D1AcOzUV8G7GTsmrHkWPPHQI/jZfXAWcTbr
IU6JmgYXrwJ5i0kIPmF+6OeWZoOZ0GKTwLcbSr6gpjS3zWyWoLssJ7OIwlQHMO+f
yDb57zATijmCETMSimyRL3m1Z2h+ic9iHBWVkOP5gT4XHkO4T86xises5m9P+ZbO
mvqwa42rhxIxHdUizrF+DNSi427ioMBuW3UlA+jr/Xvp1pvHl8nPNPXJSp2ge2k=
=sjdQ
-----END PGP SIGNATURE-----

--ieU85bPnb0xHS2CPLppHcJ3CL2jkfw32d--


--===============7414916042201075500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7414916042201075500==--
