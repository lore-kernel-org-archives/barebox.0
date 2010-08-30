Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OpyvF-0006nr-6L
	for barebox@lists.infradead.org; Mon, 30 Aug 2010 07:36:54 +0000
Message-ID: <4C7B5F91.6010506@pengutronix.de>
Date: Mon, 30 Aug 2010 09:36:49 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1283141106-21671-1-git-send-email-plagnioj@jcrosoft.com>
	<1283141106-21671-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1283141106-21671-2-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1833840853=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] stm8815: fix the uart device clock match
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1833840853==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig6B9351D2C37B2E33B2354D08"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig6B9351D2C37B2E33B2354D08
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Jean-Christophe PLAGNIOL-VILLARD wrote:
> that use the device name + id to found it's clock
> to use the right match as we fix the dev_name macro
>=20
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>=

> ---
>  arch/arm/mach-nomadik/8815.c |    6 ++++--
>  1 files changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.=
c
> index 8598f14..f1d5e8c 100644
> --- a/arch/arm/mach-nomadik/8815.c
> +++ b/arch/arm/mach-nomadik/8815.c
> @@ -50,12 +50,14 @@ void st8815_add_device_sdram(u32 size)
>  }
> =20
>  static struct device_d uart0_serial_device =3D {
> +	id =3D 0,
        ^

you missed a dot, here.
>  	.name =3D "uart-pl011",
>  	.map_base =3D NOMADIK_UART0_BASE,
>  	.size =3D 4096,
>  };
> =20
>  static struct device_d uart1_serial_device =3D {
> +	id =3D 1,
dito
>  	.name =3D "uart-pl011",
>  	.map_base =3D NOMADIK_UART1_BASE,
>  	.size =3D 4096,
> @@ -65,12 +67,12 @@ void st8815_register_uart(unsigned id)
>  {
>  	switch (id) {
>  	case 0:
> -		nmdk_clk_create(&st8815_clk_48, uart0_serial_device.name);
>  		register_device(&uart0_serial_device);
> +		nmdk_clk_create(&st8815_clk_48, dev_name(uart0_serial_device));
>  		break;
>  	case 1:
> -		nmdk_clk_create(&st8815_clk_48, uart1_serial_device.name);
>  		register_device(&uart1_serial_device);
> +		nmdk_clk_create(&st8815_clk_48, dev_name(uart0_serial_device));
>  		break;
>  	}
>  }

cheers, Marc


--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig6B9351D2C37B2E33B2354D08
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkx7X5UACgkQjTAFq1RaXHMovQCeOnSp1WdSm00Tj0IyksLmx+O5
wbYAn1JfbO0erSIULAOPXq4vDVUlUTFj
=cxBz
-----END PGP SIGNATURE-----

--------------enig6B9351D2C37B2E33B2354D08--


--===============1833840853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1833840853==--
