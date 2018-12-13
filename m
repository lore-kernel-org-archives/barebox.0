Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXTIr-0005k4-6c
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 15:53:34 +0000
References: <20181213074430.25614-1-r.czerwinski@pengutronix.de>
 <20181213074430.25614-6-r.czerwinski@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <0382ad69-dd98-44e3-5f3f-aaf525b1e57b@rempel-privat.de>
Date: Thu, 13 Dec 2018 16:53:09 +0100
MIME-Version: 1.0
In-Reply-To: <20181213074430.25614-6-r.czerwinski@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7057084584562682989=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 5/8] serial_ns16550: add raspberry pi compatible and
 init
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7057084584562682989==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="OcMG0Q1tO21UcLJMvFWkFzmrgdgYyBrSA"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--OcMG0Q1tO21UcLJMvFWkFzmrgdgYyBrSA
Content-Type: multipart/mixed; boundary="4LM4gVtR2dmUAY0DomQNxTJKHL06kqIVT";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
Message-ID: <0382ad69-dd98-44e3-5f3f-aaf525b1e57b@rempel-privat.de>
Subject: Re: [PATCH v2 5/8] serial_ns16550: add raspberry pi compatible and
 init
References: <20181213074430.25614-1-r.czerwinski@pengutronix.de>
 <20181213074430.25614-6-r.czerwinski@pengutronix.de>
In-Reply-To: <20181213074430.25614-6-r.czerwinski@pengutronix.de>

--4LM4gVtR2dmUAY0DomQNxTJKHL06kqIVT
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Hi Rouven,

Am 13.12.18 um 08:44 schrieb Rouven Czerwinski:
> Add the compatible for the Raspberry Pi AUX UART and an init function w=
hich
> enables it via the aux register and configures the correct shift value.=

>=20
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/serial/serial_ns16550.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>=20
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns=
16550.c
> index 8ddcfdbef..7a4054a67 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -253,6 +253,20 @@ static void ns16550_jz_init_port(struct console_de=
vice *cdev)
>  	ns16550_serial_init_port(cdev);
>  }
> =20
> +static void rpi_init_port(struct console_device *cdev)
> +{
> +  struct ns16550_priv *priv =3D to_ns16550_priv(cdev);
> +
> +  writeb(0x01, 0x3f215004);
> +  priv->plat.shift =3D 2;
> +  /*
> +   * We double the clock rate since the 16550 will divide by 16
> +   * (instead of 8 required by the BCM2835 peripheral manual)
> +   */
> +  priv->plat.clock =3D priv->plat.clock*2;
> +  ns16550_serial_init_port(cdev);
> +}

Formatting is broken here, you are using spaces instead of tabs.
Probably using checkpatch will show it.

>  /*********** Exposed Functions **********************************/
> =20
>  /**
> @@ -353,6 +367,11 @@ static __maybe_unused struct ns16550_drvdata tegra=
_drvdata =3D {
>  	.linux_console_name =3D "ttyS",
>  };
> =20
> +static struct ns16550_drvdata rpi_drvdata =3D {
> +  .init_port =3D rpi_init_port,
> +  .linux_console_name =3D "ttyS",
> +};

same here.

>  static int ns16550_init_iomem(struct device_d *dev, struct ns16550_pri=
v *priv)
>  {
>  	struct resource *iores;
> @@ -527,6 +546,12 @@ static struct of_device_id ns16550_serial_dt_ids[]=
 =3D {
>  		.compatible =3D "ingenic,jz4740-uart",
>  		.data =3D &jz_drvdata,
>  	},
> +#endif
> +#if IS_ENABLED(CONFIG_MACH_RPI_COMMON)
> +	{
> +	  .compatible =3D "brcm,bcm2835-aux-uart",
> +	  .data =3D &rpi_drvdata,
> +	},
>  #endif
>  	{
>  		/* sentinel */
>=20


--=20
Regards,
Oleksij


--4LM4gVtR2dmUAY0DomQNxTJKHL06kqIVT--

--OcMG0Q1tO21UcLJMvFWkFzmrgdgYyBrSA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAlwSgGUACgkQ4omh9DUa
UbO5bA/+MABozPzRW8MWjXSXZH10Isz3zYDwoELYLUk2i+vU+bCtRPIVbd2EcMC6
K6HH5gFHmRF2O2JgPoNgWexsQ+ZNHfy+NbjDUls1yshHpazfcHEzBh1yUgbSwR6e
CG5PkCWfwRvQt9HCS3tUc3lxwv4WeJWv/RdViQyoU6SPjIJCrjtCxvUzeh5n/3j8
cSN6oMUwmvdyErXglOdY9tOzZ9fUiW1XeiqPFA0TU3tvaW2ZYyEnN+cUgDTQb55I
qwzCCmTH+KEz6CFucZzJ8i6NBTGST3HU6FK6AKEo2rryPVEqxAMvaq52BHk1vzVr
37jYn6F+UrOLHxpoBHvvSazfEs7WOiGcLmFGyVeyw81fQndf8RdNuoVfnhTua1iT
hr9c9EXqAXHZ01OlQU+BGQrrhDRwscZBkjJiBJLxM5WbP5+iM+U7LZt06gaog04X
8K8GwQnCyq68JbMtfkHCIhYQFiwzbFl1aXjGBXpm2SrnW1xbNOrn6/I3We6+eY+p
yf+sSRHt4mXhVLjMyrcWFKwM3pbrUnACpXgg+XsMazPkkGAHe9pDM9Hgn13Grehk
0tA76Y3Z6M81aRxdObD901/vGGwaaAZxmo/TDRILyBVbRxpdLNZng7q3IZUNeRcc
8eUQ1B8LeL2D2PCfNJmiRYPJyOio/qS/ZOq7ph4pGtO8PCipAM0=
=Dcqt
-----END PGP SIGNATURE-----

--OcMG0Q1tO21UcLJMvFWkFzmrgdgYyBrSA--


--===============7057084584562682989==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7057084584562682989==--
