Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rql1p-0006pJ-U3
 for barebox@lists.infradead.org; Fri, 27 Jan 2012 12:35:44 +0000
Message-ID: <4F229A11.8020102@pengutronix.de>
Date: Fri, 27 Jan 2012 13:35:29 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7535059434175942735=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: mx35-3stack 124MiByte RAM
To: barebox mailing list <barebox@lists.infradead.org>
Cc: Sascha Hauer <sha@pengutronix.de>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============7535059434175942735==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig255A2534A9E2BEEDB346EB8E"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig255A2534A9E2BEEDB346EB8E
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,

I just stumbled over this patch:

git show f928efa8 arch/arm/boards/freescale-mx35-3-stack/3stack.c
> commit f928efa818adfe56a08350569a9b0f3c2fb791d2
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Tue Jul 19 09:58:32 2011 +0200
>=20
>     add a add_mem_device function
>    =20
>     Add a helper function for boards to register their memory
>     devices. This makes the board code smaller and also helps
>     getting rid of map_base and struct memory_platform_data.
>    =20
>     And switch all of the memory to it
>    =20
>     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>     Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.=
com>
>=20
> diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm=
/boards/freescale-mx35-3-stack/3stack.c
> index 0c54337..b3a03cc 100644
> --- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> +++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> @@ -71,19 +71,6 @@ static struct fec_platform_data fec_info =3D {
>  	.phy_addr	=3D 0x1F,
>  };
> =20
> -static struct memory_platform_data sdram_pdata =3D {
> -	.name	=3D "ram0",
> -	.flags	=3D IORESOURCE_MEM_WRITEABLE,
> -};
> -
> -static struct device_d sdram_dev =3D {
> -	.id		=3D -1,
> -	.name		=3D "mem",
> -	.map_base	=3D IMX_SDRAM_CS0,
> -	.size		=3D 128 * 1024 * 1024,
                          ^^^
> -	.platform_data	=3D &sdram_pdata,
> -};
> -
>  struct imx_nand_platform_data nand_info =3D {
>  	.hw_ecc		=3D 1,
>  	.flash_bbt	=3D 1,
> @@ -165,6 +152,7 @@ static void set_board_rev(int rev)
>  static int f3s_devices_init(void)
>  {
>  	uint32_t reg;
> +	struct device_d *sdram_dev;
> =20
>  	/* CS0: Nor Flash */
>  	writel(0x0000cf03, CSCR_U(0));
> @@ -209,10 +197,11 @@ static int f3s_devices_init(void)
> =20
>  	imx35_add_mmc0(NULL);
> =20
> -	register_device(&sdram_dev);
> +	sdram_dev =3D add_mem_device("ram0", IMX_SDRAM_CS0, 124 * 1024 * 1024=
,
                                                          ^^^

What happened to the upper 4 MiByte?

> +				   IORESOURCE_MEM_WRITEABLE);
> +	armlinux_add_dram(sdram_dev);
>  	imx35_add_fb(&ipu_fb_data);
> =20
> -	armlinux_add_dram(&sdram_dev);
>  	armlinux_set_bootparams((void *)0x80000100);
>  	armlinux_set_architecture(MACH_TYPE_MX35_3DS);
> =20

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig255A2534A9E2BEEDB346EB8E
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk8imhQACgkQjTAFq1RaXHOhhQCeI+8ArGr7J7WQqIh7rYdEW2IT
u6AAoI4DNiaMOJYpd5QDYbIEMmPgPiP7
=iPz2
-----END PGP SIGNATURE-----

--------------enig255A2534A9E2BEEDB346EB8E--


--===============7535059434175942735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7535059434175942735==--
