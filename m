Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z9px3-0003t3-TU
 for barebox@lists.infradead.org; Tue, 30 Jun 2015 07:27:31 +0000
References: <1434613424-19989-1-git-send-email-s.hauer@pengutronix.de>
 <1434613424-19989-7-git-send-email-s.hauer@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <559244C2.80500@pengutronix.de>
Date: Tue, 30 Jun 2015 09:26:58 +0200
MIME-Version: 1.0
In-Reply-To: <1434613424-19989-7-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2488398886135259260=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/6] blspec: Automatically append rootarg
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2488398886135259260==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="RwqPxrAM9xfxud2V2HBGbfnCh9TdVL8iA"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--RwqPxrAM9xfxud2V2HBGbfnCh9TdVL8iA
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 06/18/2015 09:43 AM, Sascha Hauer wrote:
> This patch makes it possible to automatically add a suitable root=3D op=
tion
> for booting Linux from the same filesystem on which the bootspec entry
> has been found. This adds an additional 'linux-appendroot' option to
> bootspec which if set to 'true' will cause barebox to automatically
> add a root=3D option. This currently works for NFS, UBIFS and regular
> block devices like ATA, SD/MMC using the root=3DPARTUUID=3D mechanism.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  Documentation/user/booting-linux.rst |  7 +++++++
>  common/blspec.c                      | 29 ++++++++++++++++++++++++++++=
-
>  2 files changed, 35 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/=
booting-linux.rst
> index 6e7d155..39084e5 100644
> --- a/Documentation/user/booting-linux.rst
> +++ b/Documentation/user/booting-linux.rst
> @@ -205,6 +205,13 @@ compatible NFS URI string must be passed to the bo=
ot command:
> =20
>    boot nfs://nfshost//path/
> =20
> +Additionally to the options defined in the original spec barebox under=
stands the
> +``linux-appendroot`` option. This is a boolean value and if set to ``t=
rue`` barebox
> +will automatically append a ``root=3D`` string to the Linux commandlin=
e based on the
> +device where the entry is found on. This makes it possible to use the =
same rootfs
> +image on different devices without having to specify a different root=3D=
 option each
> +time.
> +
>  Network boot
>  ------------
> =20
> diff --git a/common/blspec.c b/common/blspec.c
> index 3506388..742065e 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -601,6 +601,29 @@ int blspec_scan_devicename(struct blspec *blspec, =
const char *devname)
>  	return blspec_scan_device(blspec, dev);
>  }
> =20
> +static int blspec_append_root(struct blspec_entry *entry)
> +{
> +	const char *appendroot;
> +	char *rootarg;
> +
> +	appendroot =3D blspec_entry_var_get(entry, "linux-appendroot");
> +	if (!appendroot || strcmp(appendroot, "true"))
> +		return 0;
> +

Can you move the following into a separate function outside of blspec.c
so that it can be used somewhere else, too?

> +	rootarg =3D path_get_linux_rootarg(entry->rootpath);
> +	if (IS_ERR(rootarg)) {
> +		pr_err("Getting root argument for %s failed with: %s\n",
> +				entry->rootpath, strerror(-PTR_ERR(rootarg)));
> +		return PTR_ERR(rootarg);
> +	}
> +
> +	globalvar_add_simple("linux.bootargs.dyn.blspec.appendroot", rootarg)=
;
> +
> +	free(rootarg);
> +
> +	return 0;
> +}
> +
>  /*
>   * blspec_boot - boot an entry
>   *
> @@ -650,6 +673,10 @@ int blspec_boot(struct blspec_entry *entry, int ve=
rbose, int dryrun)
> =20
>  	globalvar_add_simple("linux.bootargs.dyn.blspec", options);
> =20
> +	ret =3D blspec_append_root(entry);
> +	if (ret)
> +		goto err_out;
> +
>  	pr_info("booting %s from %s\n", blspec_entry_var_get(entry, "title"),=

>  			entry->cdev ? dev_name(entry->cdev->dev) : "none");
> =20
> @@ -668,7 +695,7 @@ int blspec_boot(struct blspec_entry *entry, int ver=
bose, int dryrun)
>  	ret =3D bootm_boot(&data);
>  	if (ret)
>  		pr_err("Booting failed\n");
> -
> +err_out:
>  	free((char *)data.oftree_file);
>  	free((char *)data.initrd_file);
>  	free((char *)data.os_file);
>=20

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--RwqPxrAM9xfxud2V2HBGbfnCh9TdVL8iA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVkkTDAAoJEP5prqPJtc/HoOgH/jxbzrGai8tyPeteeGNsfrMp
qJsYe+uAvan6Uyx9TvG1yJDsxwrLkPHShjrPsCu83/kT2qnukrs4Lodrf0+zae2x
w/ml9GqjF/7mQTyuiW7ykOMTbFVND3GDMIpKePbmbV0W4nIrmevlV0zLxuZth62V
u8LXk5cBpJzokqkPwCkS5BTtPcCISZhpHk4/d9aOnywzYCABA3Ex8ACenT4HHIxB
/L0f8rqDNuFRZdL8e3FBZyoLtQ068Am91Oljz+JyjTz744/BKw5Ko1GIuIO73kq0
ZxJtPEDTULJHho24M2qVTfHI0bHlINmGbRyiy9AdnyVP2n67WVz7BdfLQei1qgA=
=ga9x
-----END PGP SIGNATURE-----

--RwqPxrAM9xfxud2V2HBGbfnCh9TdVL8iA--


--===============2488398886135259260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2488398886135259260==--
