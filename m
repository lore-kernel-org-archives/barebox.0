Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NhU9Q-0004pI-87
	for barebox@lists.infradead.org; Tue, 16 Feb 2010 20:36:12 +0000
Message-ID: <4B7B019C.60601@pengutronix.de>
Date: Tue, 16 Feb 2010 21:35:40 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1266331586-11253-1-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-2-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-3-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-4-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-5-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-6-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1266331586-11253-6-git-send-email-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1654053326=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 05/11] drivers/video/Makefile: cleanup propper indention
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1654053326==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig5BE87F15CBAFB5ED0021BA72"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig5BE87F15CBAFB5ED0021BA72
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Marc Kleine-Budde wrote:
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  drivers/video/Makefile |    7 ++++---
>  1 files changed, 4 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/video/Makefile b/drivers/video/Makefile
> index 1e0d1b9..45ee09e 100644
> --- a/drivers/video/Makefile
> +++ b/drivers/video/Makefile
> @@ -1,3 +1,4 @@
> -obj-$(CONFIG_VIDEO)	+=3D fb.o
> -obj-$(CONFIG_DRIVER_VIDEO_IMX)	+=3D imx.o
> -obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) +=3D imx-ipu-fb.o
> +obj-$(CONFIG_VIDEO)			+=3D fb.o
> +
> +obj-$(CONFIG_DRIVER_VIDEO_IMX)		+=3D imx.o
> +obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU)	+=3D imx-ipu-fb.o

As Uwe pointed out indention with tabs isn't good in the long term. As
soon as a longer config option occurs the whole indention is broken again=
=2E

I'll convert the two files into a "just one space" style.

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig5BE87F15CBAFB5ED0021BA72
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkt7AaAACgkQjTAFq1RaXHN0wQCfS47UqPzDx0dw4aqW5zCwdkwS
TCsAoJbYJladoZVPXM7r56Itm2rAXlZ8
=nuzv
-----END PGP SIGNATURE-----

--------------enig5BE87F15CBAFB5ED0021BA72--


--===============1654053326==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1654053326==--
