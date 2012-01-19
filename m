Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rnte9-0008E9-KP
 for barebox@lists.infradead.org; Thu, 19 Jan 2012 15:11:27 +0000
Message-ID: <4F18328E.9080404@pengutronix.de>
Date: Thu, 19 Jan 2012 16:11:10 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <20120118225638.GJ25622@game.jcrosoft.org>
 <1326972208-438-1-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1326972208-438-1-git-send-email-robert.jarzmik@free.fr>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7846020606533409838=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH V2] usb/gadget: fix poller NPE in early polling
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============7846020606533409838==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig35A6EAA21299AA8AFF979304"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig35A6EAA21299AA8AFF979304
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 01/19/2012 12:23 PM, Robert Jarzmik wrote:
> The timings of the poller calling have changed, digging out
> a latent bug in pxa27x udc controller.
> The polling routine is called before the probe function is
> called, and the driver internal are not initialized at that
> time. This triggers a NULL pointer exception.
>=20
> Fix it by moving poller registration after driver probe.
>=20
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
>=20
> ---
> Since V1: Review by Jean-Christophe
> ---
>  drivers/usb/gadget/pxa27x_udc.c |   19 ++++++++++---------
>  1 files changed, 10 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27=
x_udc.c
> index d0dbee9..10483c5 100644
> --- a/drivers/usb/gadget/pxa27x_udc.c
> +++ b/drivers/usb/gadget/pxa27x_udc.c
> @@ -1473,6 +1473,14 @@ static struct pxa_udc memory =3D {
>  	}
>  };
> =20
> +static int pxa27x_udc_poller(struct poller_struct *poller)
> +{
> +		return usb_gadget_poll();

one tab should be enough.

> +}
> +static struct poller_struct poller =3D {
> +	.func		=3D pxa27x_udc_poller
> +};
> +
>  static int __init pxa_udc_probe(struct device_d *dev)
>  {
>  	struct pxa_udc *udc =3D &memory;
> @@ -1496,6 +1504,8 @@ static int __init pxa_udc_probe(struct device_d *=
dev)
>  	the_controller =3D udc;
>  	udc_init_data(udc);
>  	pxa_eps_setup(udc);
> +	poller_register(&poller);
> +
>  	return 0;
>  }
> =20
> @@ -1506,18 +1516,9 @@ static struct driver_d udc_driver =3D {
>  	.probe		=3D pxa_udc_probe,
>  };
> =20
> -static int pxa27x_udc_poller(struct poller_struct *poller)
> -{
> -	return usb_gadget_poll();
> -}
> -static struct poller_struct poller =3D {
> -	.func		=3D pxa27x_udc_poller
> -};
> -
>  static int __init pxa27x_udc_init(void)
>  {
>  	register_driver(&udc_driver);
> -	poller_register(&poller);
>  	return 0;
>  }
> =20

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig35A6EAA21299AA8AFF979304
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk8YMo4ACgkQjTAFq1RaXHPfcgCcCguUroWJ9awp05shu7kbBcCD
LG4Ani1l5VqcoY6QMEx0ngq+aRgpf+M3
=UF8C
-----END PGP SIGNATURE-----

--------------enig35A6EAA21299AA8AFF979304--


--===============7846020606533409838==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7846020606533409838==--
