Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmkCr-0005xi-QP
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 10:22:14 +0000
Message-ID: <4E3289D0.6010706@pengutronix.de>
Date: Fri, 29 Jul 2011 12:22:08 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1311918777-26719-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311918777-26719-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0406802805=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/7] generic_memmap_ro/rw: switch to resource
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0406802805==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigB0B0480C5ECE582D04A4BD6F"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigB0B0480C5ECE582D04A4BD6F
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 07/29/2011 07:52 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>=

> ---
>  drivers/base/driver.c |    5 +++--
>  1 files changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index b5166c8..3efb538 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -263,7 +263,7 @@ int generic_memmap_ro(struct cdev *cdev, void **map=
, int flags)
> =20
>  	if (flags & PROT_WRITE)
>  		return -EACCES;
> -	*map =3D (void *)cdev->dev->map_base;
> +	*map =3D dev_get_mem_region(cdev->dev, 0);
>  	return 0;
>  }
> =20
> @@ -272,7 +272,8 @@ int generic_memmap_rw(struct cdev *cdev, void **map=
, int flags)
>  	if (!cdev->dev)
>  		return -EINVAL;
> =20
> -	*map =3D (void *)cdev->dev->map_base;
> +	*map =3D dev_get_mem_region(cdev->dev, 0);
> +	return 0;
>  	return 0;

one return should be enough
>  }
> =20

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigB0B0480C5ECE582D04A4BD6F
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk4yidMACgkQjTAFq1RaXHPy5QCfRVW5eNsSnTI0JelWLz4JHkks
ksEAn2IxHUzKA46Y+zebzamzzL+8sgMA
=GZH8
-----END PGP SIGNATURE-----

--------------enigB0B0480C5ECE582D04A4BD6F--


--===============0406802805==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0406802805==--
