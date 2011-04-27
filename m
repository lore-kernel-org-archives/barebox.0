Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QF0pl-0001Ai-2d
	for barebox@lists.infradead.org; Wed, 27 Apr 2011 09:15:02 +0000
Message-ID: <4DB7DE8E.6070100@pengutronix.de>
Date: Wed, 27 Apr 2011 11:14:54 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <201104261430.01267.roman.fietze@telemotive.de>	<20110426215630.GL14770@pengutronix.de>
	<201104271038.46439.roman.fietze@telemotive.de>
In-Reply-To: <201104271038.46439.roman.fietze@telemotive.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0867958415=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] freescale-mx35-3-stack: support 256 MiB RAM
To: Roman Fietze <roman.fietze@telemotive.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0867958415==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig4DA6995214B9402CAF7CFD22"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig4DA6995214B9402CAF7CFD22
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/27/2011 10:38 AM, Roman Fietze wrote:
> Hallo,
>=20
> On Tuesday, 26.April.2011 23:56:30 Sascha Hauer wrote:
>=20
>> There are at least two bugs in your flash header, see below.
>=20
> I think I will need reading glasses pretty soon. :(
>=20
> Here are the updated patches. And they seem to work on our two boards.
>=20
> As far as I know there are different variants of the Freescale i.MX35
> 3-stack out there. It would be great if somebody using one of those
> boards could double check the patches.
>=20
> Here's the updated patch:
>=20
> From ee2ed245651363f6cd6f1d5ad00e7a88c206b5b4 Mon Sep 17 00:00:00 2001
> From: Roman Fietze <roman.fietze@telemotive.de>
> Date: Wed, 27 Apr 2011 07:13:12 +0200
> Subject: [PATCH] freescale-mx35-3-stack: support 256 MiB RAM
>=20
> Extend DCD table and low level init routines. Add barebox SDRAM
> device.
>=20
> Signed-off-by: Roman Fietze <roman.fietze@telemotive.de>
> ---
>  arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   25 ++++++++++++=
+++----
>  .../boards/freescale-mx35-3-stack/flash_header.c   |   26 ++++++++++++=
+++++++-
>  .../boards/freescale-mx35-3-stack/lowlevel_init.S  |   17 +++++++-----=

>  3 files changed, 55 insertions(+), 13 deletions(-)
>=20
> diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm=
/boards/freescale-mx35-3-stack/3stack.c
> index 7b61a24..2a12aaa 100644
> --- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> +++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> @@ -71,17 +71,30 @@ static struct fec_platform_data fec_info =3D {
>  	.phy_addr	=3D 0x1F,
>  };
> =20
> -static struct memory_platform_data sdram_pdata =3D {
> +static struct memory_platform_data sdram0_pdata =3D {
>  	.name	=3D "ram0",
>  	.flags	=3D DEVFS_RDWR,
>  };
> =20
> -static struct device_d sdram_dev =3D {
> +static struct device_d sdram0_dev =3D {
>  	.id		=3D -1,
                        ^^^^^
Have a look at the /dev folder, do you have two "/dev/mem*"? If not you
should make the .id unique, i.e. should be "0" here.

>  	.name		=3D "mem",
>  	.map_base	=3D IMX_SDRAM_CS0,
>  	.size		=3D 128 * 1024 * 1024,
> -	.platform_data	=3D &sdram_pdata,
> +	.platform_data	=3D &sdram0_pdata,
> +};
> +
> +static struct memory_platform_data sdram1_pdata =3D {
> +	.name	=3D "ram1",
> +	.flags	=3D DEVFS_RDWR,
> +};
> +
> +static struct device_d sdram1_dev =3D {
> +	.id		=3D -1,
                        ^^^^^
here "1"

> +	.name		=3D "mem",
> +	.map_base	=3D IMX_SDRAM_CS1,
> +	.size		=3D 128 * 1024 * 1024,
> +	.platform_data	=3D &sdram1_pdata,
>  };
> =20
>  struct imx_nand_platform_data nand_info =3D {
> @@ -209,10 +222,12 @@ static int f3s_devices_init(void)
> =20
>  	imx35_add_mmc0(NULL);
> =20
> -	register_device(&sdram_dev);
> +	register_device(&sdram0_dev);
> +	register_device(&sdram1_dev);
>  	imx35_add_fb(&ipu_fb_data);
> =20
> -	armlinux_add_dram(&sdram_dev);
> +	armlinux_add_dram(&sdram0_dev);
> +	armlinux_add_dram(&sdram1_dev);
>  	armlinux_set_bootparams((void *)0x80000100);
>  	armlinux_set_architecture(MACH_TYPE_MX35_3DS);
> =20
> diff --git a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c b/ar=
ch/arm/boards/freescale-mx35-3-stack/flash_header.c
> index 4bee797..92f2142 100644
> --- a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
> +++ b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
> @@ -13,23 +13,47 @@ struct imx_dcd_entry __dcd_entry_section dcd_entry[=
] =3D {
>  	{ .ptr_type =3D 4, .addr =3D 0xb8002050, .val =3D 0x0000d843, },
>  	{ .ptr_type =3D 4, .addr =3D 0xB8002054, .val =3D 0x22252521, },
>  	{ .ptr_type =3D 4, .addr =3D 0xB8002058, .val =3D 0x22220a00, },
> +
>  	{ .ptr_type =3D 4, .addr =3D 0xB8001010, .val =3D 0x00000304, },
>  	{ .ptr_type =3D 4, .addr =3D 0xB8001010, .val =3D 0x0000030C, },
> +
>  	{ .ptr_type =3D 4, .addr =3D 0xB8001004, .val =3D 0x007ffc3f, },
> +	{ .ptr_type =3D 4, .addr =3D 0xB800100C, .val =3D 0x007ffc3f, },
> +
>  	{ .ptr_type =3D 4, .addr =3D 0xB8001000, .val =3D 0x92220000, },
> +	{ .ptr_type =3D 4, .addr =3D 0xB8001008, .val =3D 0x92220000, },
> +
>  	{ .ptr_type =3D 4, .addr =3D 0x80000400, .val =3D 0x12345678, },
> +	{ .ptr_type =3D 4, .addr =3D 0x90000400, .val =3D 0x12345678, },
> +
>  	{ .ptr_type =3D 4, .addr =3D 0xB8001000, .val =3D 0xA2220000, },
> +	{ .ptr_type =3D 4, .addr =3D 0xB8001008, .val =3D 0xA2220000, },
> +
>  	{ .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x87654321, },
> +	{ .ptr_type =3D 4, .addr =3D 0x90000000, .val =3D 0x87654321, },
> +
>  	{ .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x87654321, },
> +	{ .ptr_type =3D 4, .addr =3D 0x90000000, .val =3D 0x87654321, },
> +
>  	{ .ptr_type =3D 4, .addr =3D 0xB8001000, .val =3D 0xB2220000, },
> +	{ .ptr_type =3D 4, .addr =3D 0xB8001008, .val =3D 0xB2220000, },
> +
>  	{ .ptr_type =3D 1, .addr =3D 0x80000233, .val =3D 0xda, },
> +	{ .ptr_type =3D 1, .addr =3D 0x90000233, .val =3D 0xda, },
> +
>  	{ .ptr_type =3D 1, .addr =3D 0x82000780, .val =3D 0xda, },
> +	{ .ptr_type =3D 1, .addr =3D 0x92000780, .val =3D 0xda, },
> +
>  	{ .ptr_type =3D 1, .addr =3D 0x82000400, .val =3D 0xda, },
> +	{ .ptr_type =3D 1, .addr =3D 0x92000400, .val =3D 0xda, },
> +
>  	{ .ptr_type =3D 4, .addr =3D 0xB8001000, .val =3D 0x82226080, },
> +	{ .ptr_type =3D 4, .addr =3D 0xB8001008, .val =3D 0x82226080, },
> +
>  	{ .ptr_type =3D 4, .addr =3D 0xB8001004, .val =3D 0x007ffc3f, },
>  	{ .ptr_type =3D 4, .addr =3D 0xB800100C, .val =3D 0x007ffc3f, },
> +
>  	{ .ptr_type =3D 4, .addr =3D 0xB8001010, .val =3D 0x00000304, },
> -	{ .ptr_type =3D 4, .addr =3D 0xB8001008, .val =3D 0x00002000, },
>  };
> =20
> =20
> diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/a=
rch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
> index 1680579..413e04a 100644
> --- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
> +++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
> @@ -28,8 +28,8 @@
>  #include "board-mx35_3stack.h"
> =20
>  #define CSD0_BASE_ADDR		0x80000000
> -#define ESDCTL_BASE_ADDR	0xB8001000
>  #define CSD1_BASE_ADDR		0x90000000
> +#define ESDCTL_BASE_ADDR	0xB8001000
> =20
>  #define writel(val, reg) \
>  	ldr		r0,	=3Dreg;	\
> @@ -122,9 +122,9 @@ board_init_lowlevel:
>  	str	r1, [r0, #CCM_CGR1]
> =20
>  	/* Skip SDRAM initialization if we run from RAM */
> -	cmp	pc, #0x80000000
> +	cmp	pc, #CSD0_BASE_ADDR
>  	bls	1f
> -	cmp	pc, #0x90000000
> +	cmp	pc, #CSD1_BASE_ADDR
>  	bhi	1f
> =20
>  	mov	pc, r10
> @@ -138,14 +138,17 @@ board_init_lowlevel:
>  	/* ip(r12) has used to save lr register in upper calling */
>  	mov	fp, lr
> =20
> +	/* setup bank 0 */
>  	mov	r5, #0x00
>  	mov	r2, #0x00
>  	mov	r1, #CSD0_BASE_ADDR
>  	bl	setup_sdram_bank
> -	cmp	r3, #0x0
> -	orreq	r5, r5, #1
> -	eorne	r2, r2, #0x1
> -	blne	setup_sdram_bank
> +
> +	/* setup bank 1 */
> +	mov	r5, #0x00
> +	mov	r2, #0x00
> +	mov	r1, #CSD1_BASE_ADDR
> +	bl	setup_sdram_bank
> =20
>  	mov	lr, fp
> =20
>=20
>=20
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig4DA6995214B9402CAF7CFD22
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk233o4ACgkQjTAFq1RaXHN6UACeLm39Gc4rt5rGlepzoshpC5UK
JLIAn1iWsKrTkiOEZcTYQJfCzTX4avKz
=5mee
-----END PGP SIGNATURE-----

--------------enig4DA6995214B9402CAF7CFD22--


--===============0867958415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0867958415==--
