Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OCWTv-0005CZ-IE
	for barebox@lists.infradead.org; Thu, 13 May 2010 11:21:36 +0000
Message-ID: <4BEBE0B7.10303@pengutronix.de>
Date: Thu, 13 May 2010 13:21:27 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1273718822-16800-1-git-send-email-marc@cpdesign.com.au>	<1273718822-16800-2-git-send-email-marc@cpdesign.com.au>	<1273718822-16800-3-git-send-email-marc@cpdesign.com.au>	<1273718822-16800-4-git-send-email-marc@cpdesign.com.au>	<1273718822-16800-5-git-send-email-marc@cpdesign.com.au>	<1273718822-16800-6-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-7-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1273718822-16800-7-git-send-email-marc@cpdesign.com.au>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0788202601=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/6] imx35pdk: make COMPARE pad a GPIO1_5 output
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0788202601==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig342902246171F8400383DED0"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig342902246171F8400383DED0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Marc,

Marc Reilly wrote:
> This pad is an interrupt source, active low for one of the external ICs=
=2E

just nitpicking from my side, see comments inline.

Cheers, Marc

> ---
>  board/freescale-mx35-3-stack/3stack.c |    7 ++++++-
>  1 files changed, 6 insertions(+), 1 deletions(-)
>=20
> diff --git a/board/freescale-mx35-3-stack/3stack.c b/board/freescale-mx=
35-3-stack/3stack.c
> index 4dc25e6..797e517 100644
> --- a/board/freescale-mx35-3-stack/3stack.c
> +++ b/board/freescale-mx35-3-stack/3stack.c
> @@ -280,6 +280,8 @@ static struct pad_desc f3s_pads[] =3D {
>  	MX35_PAD_I2C1_DAT__I2C1_SDA,
> =20
>  	MX35_PAD_WDOG_RST__GPIO1_6,
> +	MX35_PAD_COMPARE__GPIO1_5,
> +=09

no trailing whitespace, please

>  	/* Display */
>  	MX35_PAD_LD0__IPU_DISPB_DAT_0,
>  	MX35_PAD_LD1__IPU_DISPB_DAT_1,
> @@ -332,7 +334,7 @@ static int f3s_core_init(void)
>  	reg |=3D 0x3 << CCM_CGR1_FEC_SHIFT;
>  	reg |=3D 0x3 << CCM_CGR1_I2C1_SHIFT;
>  	reg =3D writel(reg, IMX_CCM_BASE + CCM_CGR1);
> -
> +=09

dito

>  	/* AIPS setup - Only setup MPROTx registers. The PACR default values =
are good.*/
>  	/*
>  	 * Set all MPROTx to be non-bufferable, trusted for R/W,
> @@ -414,6 +416,9 @@ static int f3s_pmic_init_v2(struct mc13892 *mc13892=
)
>  {
>  	int err =3D 0;
> =20
> +	/* COMPARE pin (GPIO1_5) as output and set high */
> +	gpio_direction_output( 32*0 + 5 , 1);
> +=09

dito

>  	err |=3D mc13892_set_bits(mc13892, MC13892_REG_SETTING_0, 0x03, 0x03)=
;
>  	err |=3D mc13892_set_bits(mc13892, MC13892_REG_MODE_0, 0x01, 0x01);
>  	if (err)


--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig342902246171F8400383DED0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkvr4LcACgkQjTAFq1RaXHNYlwCePZdH8NVRKpX9Eos/ZtBcA7uc
UJAAn16oAQ494An8y4uBSOEpLCmmlJtj
=dbiY
-----END PGP SIGNATURE-----

--------------enig342902246171F8400383DED0--


--===============0788202601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0788202601==--
