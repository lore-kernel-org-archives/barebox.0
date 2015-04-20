Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yk7il-0004NV-Fm
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 09:10:28 +0000
Message-ID: <5534C265.3040608@pengutronix.de>
Date: Mon, 20 Apr 2015 11:09:57 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1429520152-27399-1-git-send-email-l.stach@pengutronix.de>
 <1429520152-27399-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1429520152-27399-3-git-send-email-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7647090793299148497=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/5] ARM: omap: move GPMC calls under config define
To: Lucas Stach <l.stach@pengutronix.de>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7647090793299148497==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="uGckcrh6p4cA59qMuA41lGCOA6TFOnTon"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--uGckcrh6p4cA59qMuA41lGCOA6TFOnTon
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 04/20/2015 10:55 AM, Lucas Stach wrote:
> Fixes build failures on a few boards if CONFIG_OMAP_GPMC
> is not set.
>=20
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/beagle/board.c                   |  4 +++-
>  arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c  | 11 +++++++----
>  arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c | 10 +++++++---
>  arch/arm/boards/phytec-phycore-omap4460/board.c  |  9 +++++++--
>  4 files changed, 24 insertions(+), 10 deletions(-)
>=20
> diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/bo=
ard.c
> index 775621069c27..c7fd5a30542e 100644
> --- a/arch/arm/boards/beagle/board.c
> +++ b/arch/arm/boards/beagle/board.c
> @@ -74,11 +74,13 @@ static struct i2c_board_info i2c_devices[] =3D {
>  	},
>  };
> =20
> +#ifdef CONFIG_OMAP_GPMC
>  static struct gpmc_nand_platform_data nand_plat =3D {
>  	.device_width =3D 16,
>  	.ecc_mode =3D OMAP_ECC_HAMMING_CODE_HW_ROMCODE,
>  	.nand_cfg =3D &omap3_nand_cfg,
>  };
> +#endif
> =20
>  static int beagle_mem_init(void)
>  {
> @@ -100,8 +102,8 @@ static int beagle_devices_init(void)
>  #ifdef CONFIG_OMAP_GPMC
>  	/* WP is made high and WAIT1 active Low */
>  	gpmc_generic_init(0x10);
> -#endif
>  	omap_add_gpmc_nand_device(&nand_plat);
> +#endif
> =20
>  	omap3_add_mmc1(NULL);
> =20
> diff --git a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c b/arch/arm=
/boards/phytec-phycard-omap3/pca-a-l1.c
> index 1c2e7f7429a2..0f3b79752d26 100644
> --- a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
> +++ b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
> @@ -77,7 +77,7 @@ static int pcaal1_init_console(void)
>  }
>  console_initcall(pcaal1_init_console);
> =20
> -#ifdef CONFIG_DRIVER_NET_SMC911X
> +#if defined(CONFIG_DRIVER_NET_SMC911X) && defined(CONFIG_OMAP_GPMC)
>  /** GPMC timing for our SMSC9221 device */
>  static struct gpmc_config smsc_cfg =3D {
>  	.cfg =3D {
> @@ -132,23 +132,26 @@ struct omap_hsmmc_platform_data pcaal1_hsmmc_plat=
 =3D {
>  	.f_max =3D 26000000,
>  };
> =20
> +#ifdef CONFIG_OMAP_GPMC
>  static struct gpmc_nand_platform_data nand_plat =3D {
>  	.device_width =3D 16,
>  	.ecc_mode =3D OMAP_ECC_BCH8_CODE_HW,
>  	.nand_cfg =3D &omap3_nand_cfg,
>  };
> +#endif
> =20
>  static int pcaal1_init_devices(void)
>  {
> +#ifdef CONFIG_OMAP_GPMC
>  	omap_add_gpmc_nand_device(&nand_plat);
> -
> -	omap3_add_mmc1(&pcaal1_hsmmc_plat);
> -
>  #ifdef CONFIG_DRIVER_NET_SMC911X
>  	pcaal1_setup_net_chip();
>  	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, SMC911X_BASE, =
SZ_4K,
>  			   IORESOURCE_MEM, NULL);
>  #endif
> +#endif
> +
> +	omap3_add_mmc1(&pcaal1_hsmmc_plat);
> =20
>  	armlinux_set_architecture(MACH_TYPE_PCAAL1);
> =20
> diff --git a/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c b/arch/ar=
m/boards/phytec-phycard-omap4/pca-a-xl2.c
> index 78890ba5a978..e2ce6060e20a 100644
> --- a/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
> +++ b/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
> @@ -60,6 +60,7 @@ static int pcaaxl2_mem_init(void)
>  }
>  mem_initcall(pcaaxl2_mem_init);
> =20
> +#ifdef CONFIG_OMAP_GPMC
>  static struct gpmc_config net_cfg =3D {
>  	.cfg =3D {
>  		0x00001000, /* CONF1 */
> @@ -80,6 +81,7 @@ static void pcaaxl2_network_init(void)
>  	add_ks8851_device(DEVICE_ID_DYNAMIC, net_cfg.base, net_cfg.base + 2,
>  				IORESOURCE_MEM_16BIT, NULL);
>  }
> +#endif
> =20
>  static struct i2c_board_info i2c_devices[] =3D {
>  	{
> @@ -96,11 +98,13 @@ static struct omap_hsmmc_platform_data mmc_device =3D=
 {
>  #define OMAP4_MMC1_PBIASLITE_PWRDNZ		(1<<22)
>  #define OMAP4_MMC1_PWRDNZ			(1<<26)
> =20
> +#ifdef CONFIG_OMAP_GPMC
>  static struct gpmc_nand_platform_data nand_plat =3D {
>  	.device_width =3D 16,
>  	.ecc_mode =3D OMAP_ECC_BCH8_CODE_HW,
>  	.nand_cfg =3D &omap4_nand_cfg,
>  };
> +#endif
> =20
>  static int pcaaxl2_devices_init(void)
>  {
> @@ -116,11 +120,11 @@ static int pcaaxl2_devices_init(void)
> =20
>  	omap44xx_add_mmc1(&mmc_device);
> =20
> +#ifdef CONFIG_OMAP_GPMC
>  	gpmc_generic_init(0x10);
> -
> -	pcaaxl2_network_init();
> -
>  	omap_add_gpmc_nand_device(&nand_plat);
> +	pcaaxl2_network_init();
> +#endif
> =20
>  #ifdef CONFIG_PARTITION
>  	devfs_add_partition("nand0", 0x00000, SZ_128K,
> diff --git a/arch/arm/boards/phytec-phycore-omap4460/board.c b/arch/arm=
/boards/phytec-phycore-omap4460/board.c
> index 6495a6f6ab0a..1cee75ddb946 100644
> --- a/arch/arm/boards/phytec-phycore-omap4460/board.c
> +++ b/arch/arm/boards/phytec-phycore-omap4460/board.c
> @@ -64,6 +64,7 @@ static int pcm049_mem_init(void)
>  }
>  mem_initcall(pcm049_mem_init);
> =20
> +#ifdef CONFIG_OMAP_GPMC
>  static struct gpmc_config net_cfg =3D {
>  	.cfg =3D {
>  		0xc1001000,	/* CONF1 */
> @@ -84,6 +85,7 @@ static void pcm049_network_init(void)
>  	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, 0x2C000000, 0x=
4000,
>  			   IORESOURCE_MEM, NULL);
>  }
> +#endif
> =20
>  static struct i2c_board_info i2c_devices[] =3D {
>  	{
> @@ -91,11 +93,13 @@ static struct i2c_board_info i2c_devices[] =3D {
>  	},
>  };
> =20
> +#ifdef CONFIG_OMAP_GPMC
>  static struct gpmc_nand_platform_data nand_plat =3D {
>  	.wait_mon_pin =3D 1,
>  	.ecc_mode =3D OMAP_ECC_BCH8_CODE_HW,
>  	.nand_cfg =3D &omap4_nand_cfg,
>  };
> +#endif

You can use __maybe_unused to avoid the ifdef.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--uGckcrh6p4cA59qMuA41lGCOA6TFOnTon
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJVNMJlAAoJECte4hHFiupUAKgP/ih+bjVY7YFF9r57+7I+FDAk
Ao6LbRmZOBNVQBwUJXqhm6aOfRPPgUuktaMVPoPLZlYhE9z33Z4C+ncJdEadmurV
ss+8puYiZZ1aiBCWmuezehNudoA6t3MzZFarzrQxkviDowFivzTaROG61Mighy+H
K79TmTB19iC0w/s8a8B4P8tLe6bhUbA35ut+5rl1/Q9rH2FR+5YuCrA/GzbYK95U
XFmFf+uZRB7Q19sEqI6ksf4a1tp7SARfWx6VwKzPj5p1iaqKWxsKOg+6JzRskNsQ
b54S6weW4rgao4s4/eh25y3FkoaD5AtweWnBCYhAIaXNM+Sh1Z9hyikL+HlROBeg
HXVmYHJzKZmI6MdBOdyBYna/M32GhIr+xna5nJDefZItYnqKooqXw1w4hLwCzivP
4aHLZY/rLW4GKLKz84ABZshmZE1Z2dp01b6DwabnBchVFeUuLoKBdOR1gNXuuQ+h
V6IG9tCWx5cQiTMxKvKCBNq9ddvGsTDcVfMjpYIZYjHrZBJV66O766X5vkvvsQ0e
w2StFUGU3jA+tcOCKtj4sVVfUKR4403Uss3cjZIQpkZjdELP4m4n/HqvfICqnWeq
7tnWqWqtVBVBqK3x/nVbRzpeOvDNWGIRvx+DKh6PIbrF4Hzg8Eo2EGPzQTJ/wcu+
fGfNRsA+zyz1jp5pAySr
=vwbt
-----END PGP SIGNATURE-----

--uGckcrh6p4cA59qMuA41lGCOA6TFOnTon--


--===============7647090793299148497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7647090793299148497==--
