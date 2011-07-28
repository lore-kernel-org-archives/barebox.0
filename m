Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmRID-0004fk-Ns
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 14:10:31 +0000
Message-ID: <4E316DCF.80700@pengutronix.de>
Date: Thu, 28 Jul 2011 16:10:23 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1311847560-22946-1-git-send-email-s.hauer@pengutronix.de>
	<1311847560-22946-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311847560-22946-2-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1516244132=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] ARM i.MX IIM: Add a iim read function
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1516244132==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig459D7A68FA572B71B59B6399"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig459D7A68FA572B71B59B6399
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 07/28/2011 12:05 PM, Sascha Hauer wrote:
> To allow reading the iim from code.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-imx/iim.c              |   28 ++++++++++++++++++++++++--=
--
>  arch/arm/mach-imx/include/mach/iim.h |    7 +++++++
>  2 files changed, 31 insertions(+), 4 deletions(-)
>=20
> diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
> index 0774ebb..7a8712b 100644
> --- a/arch/arm/mach-imx/iim.c
> +++ b/arch/arm/mach-imx/iim.c
> @@ -22,6 +22,8 @@
>  #include <xfuncs.h>
>  #include <errno.h>
>  #include <param.h>
> +#include <fcntl.h>
> +#include <malloc.h>
> =20
>  #include <asm/io.h>
> =20
> @@ -73,7 +75,7 @@ static int do_fuse_sense(unsigned long reg_base, unsi=
gned int bank,
>  	return readb(reg_base + IIM_SDAT);
>  }
> =20
> -static ssize_t imx_iim_read(struct cdev *cdev, void *buf, size_t count=
,
> +static ssize_t imx_iim_cdev_read(struct cdev *cdev, void *buf, size_t =
count,
>  		ulong offset, ulong flags)
>  {
>  	ulong size, i;
> @@ -168,7 +170,7 @@ out:
>  }
>  #endif /* CONFIG_IMX_IIM_FUSE_BLOW */
> =20
> -static ssize_t imx_iim_write(struct cdev *cdev, const void *buf, size_=
t count,
> +static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, =
size_t count,
>  		ulong offset, ulong flags)
>  {
>  	ulong size, i;
> @@ -204,8 +206,8 @@ static ssize_t imx_iim_write(struct cdev *cdev, con=
st void *buf, size_t count,
>  }
> =20
>  static struct file_operations imx_iim_ops =3D {
> -	.read	=3D imx_iim_read,
> -	.write	=3D imx_iim_write,
> +	.read	=3D imx_iim_cdev_read,
> +	.write	=3D imx_iim_cdev_write,
>  	.lseek	=3D dev_lseek_default,
>  };
> =20
> @@ -297,6 +299,24 @@ static int imx_iim_init(void)
>  }
>  coredevice_initcall(imx_iim_init);
> =20
> +int imx_iim_read(unsigned int bank, int offset, int count, void *buf)

The order of count and buf is IMHO unintuitive:

       ssize_t read(int fildes, void *buf, size_t nbyte);

Marc

> +{
> +	struct cdev *cdev;
> +	char *name =3D asprintf(DRIVERNAME "_bank%d", bank);
> +	int ret;
> +
> +	cdev =3D cdev_open(name, O_RDONLY);
> +	if (!cdev)
> +		return -ENODEV;
> +
> +	ret =3D cdev_read(cdev, buf, count, offset, 0);
> +
> +	cdev_close(cdev);
> +	free(name);
> +
> +	return ret;
> +}
> +
>  int imx_iim_get_mac(unsigned char *mac)
>  {
>  	int i;
> diff --git a/arch/arm/mach-imx/include/mach/iim.h b/arch/arm/mach-imx/i=
nclude/mach/iim.h
> index 03ff485..9ff44be 100644
> --- a/arch/arm/mach-imx/include/mach/iim.h
> +++ b/arch/arm/mach-imx/include/mach/iim.h
> @@ -46,8 +46,15 @@ struct imx_iim_platform_data {
>  };
> =20
>  #ifdef CONFIG_IMX_IIM
> +int imx_iim_read(unsigned int bank, int offset, int count, void *buf);=

>  int imx_iim_get_mac(unsigned char *mac);
>  #else
> +static inline int imx_iim_read(unsigned int bank, int offset, int coun=
t,
> +		void *buf)
> +{
> +	return -EINVAL;
> +}
> +
>  static inline int imx_iim_get_mac(unsigned char *mac)
>  {
>  	return -EINVAL;


--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig459D7A68FA572B71B59B6399
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk4xbdIACgkQjTAFq1RaXHPdwACfbKPJUIaOMvIqbxl2YFA7frr1
tt8AoIsvSYTvB3yU2T2BD3wH8iZIhve1
=Ep4x
-----END PGP SIGNATURE-----

--------------enig459D7A68FA572B71B59B6399--


--===============1516244132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1516244132==--
