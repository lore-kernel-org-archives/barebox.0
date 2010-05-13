Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OCWVg-0000F5-OT
	for barebox@lists.infradead.org; Thu, 13 May 2010 11:23:25 +0000
Message-ID: <4BEBE12A.6020306@pengutronix.de>
Date: Thu, 13 May 2010 13:23:22 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1273718822-16800-1-git-send-email-marc@cpdesign.com.au>	<1273718822-16800-2-git-send-email-marc@cpdesign.com.au>	<1273718822-16800-3-git-send-email-marc@cpdesign.com.au>	<1273718822-16800-4-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-5-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1273718822-16800-5-git-send-email-marc@cpdesign.com.au>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1890672428=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/6] imx35pdk: correct mode for display contrast pin
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1890672428==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig18971E0C974E6FCE97AB670A"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig18971E0C974E6FCE97AB670A
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Marc Reilly wrote:

Please don't forget to add you'r S-o-b.

Cheers, Marc

> ---
>  board/freescale-mx35-3-stack/3stack.c |    7 +++----
>  1 files changed, 3 insertions(+), 4 deletions(-)
>=20
> diff --git a/board/freescale-mx35-3-stack/3stack.c b/board/freescale-mx=
35-3-stack/3stack.c
> index fcb87cf..d09de65 100644
> --- a/board/freescale-mx35-3-stack/3stack.c
> +++ b/board/freescale-mx35-3-stack/3stack.c
> @@ -201,10 +201,8 @@ device_initcall(f3s_devices_init);
> =20
>  static int f3s_enable_display(void)
>  {
> -	gpio_direction_output(1, 1);
> -
>  	/* Enable power to the LCD. (bit 6 hi.) */
> -	mc9sdz60_set_bits( mc9sdz60_get(), MC9SDZ60_REG_GPIO_1, 0x40, 0x40);
> +	mc9sdz60_set_bits(mc9sdz60_get(), MC9SDZ60_REG_GPIO_1, 0x40, 0x40);
> =20
>  	return 0;
>  }
> @@ -270,10 +268,11 @@ static struct pad_desc f3s_pads[] =3D {
>  	MX35_PAD_D3_HSYNC__IPU_DISPB_D3_HSYNC,
>  	MX35_PAD_D3_FPSHIFT__IPU_DISPB_D3_CLK,
>  	MX35_PAD_D3_DRDY__IPU_DISPB_D3_DRDY,
> -	MX35_PAD_CONTRAST__GPIO1_1,
> +	MX35_PAD_CONTRAST__IPU_DISPB_CONTR,
>  	MX35_PAD_D3_VSYNC__IPU_DISPB_D3_VSYNC,
>  	MX35_PAD_D3_REV__IPU_DISPB_D3_REV,
>  	MX35_PAD_D3_CLS__IPU_DISPB_D3_CLS,
> +=09

IMHO no need for this line, please remove.

>  };
> =20
>  static int f3s_console_init(void)


--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig18971E0C974E6FCE97AB670A
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkvr4SoACgkQjTAFq1RaXHN9PwCfXzjkj26HdgJlThQN4Beb6xKk
wooAmwaT7HIkzxOQ1OfnN7XyyHteLsYT
=VM7u
-----END PGP SIGNATURE-----

--------------enig18971E0C974E6FCE97AB670A--


--===============1890672428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1890672428==--
