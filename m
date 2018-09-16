Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1YgC-0005Il-He
 for barebox@lists.infradead.org; Sun, 16 Sep 2018 15:09:46 +0000
Date: Sun, 16 Sep 2018 17:09:13 +0200
From: Alexander Dahl <post@lespocky.de>
Message-ID: <20180916150913.7i53th5b4icju3cq@falbala.home.lespocky.de>
References: <20180326192025.28809-1-l.stach@pengutronix.de>
 <20180326192025.28809-9-l.stach@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20180326192025.28809-9-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8809427604575638808=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 09/10] ARM: rpi: add raspberry pi 3 support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============8809427604575638808==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2h6yd6dspwqlay4d"
Content-Disposition: inline


--2h6yd6dspwqlay4d
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hei hei,

this patch series for RPi3 support was not merged yet. What is the
current status? Would it help if I test it on a raspberry pi 3?

(Background: I have a RPi3 lying around and would like to use
DistroKit on it.)

Greets
Alex

On Mon, Mar 26, 2018 at 09:20:24PM +0200, Lucas Stach wrote:
> This adds basic support at the same feature level as the other
> supported raspberry pi boards.
>=20
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Roland Hieber <r.hieber@pengutronix.de>
> ---
>  arch/arm/boards/raspberry-pi/lowlevel.c | 14 ++++++++++++--
>  arch/arm/configs/rpi_defconfig          |  2 ++
>  arch/arm/dts/Makefile                   |  1 +
>  arch/arm/dts/bcm2837-rpi-3.dts          | 15 +++++++++++++++
>  arch/arm/mach-bcm283x/Kconfig           |  6 ++++++
>  arch/arm/mach-bcm283x/core.c            |  1 +
>  images/Makefile.bcm283x                 |  4 ++++
>  7 files changed, 41 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/dts/bcm2837-rpi-3.dts
>=20
> diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/ra=
spberry-pi/lowlevel.c
> index 4e71e29e0c0b..5ca0d3877069 100644
> --- a/arch/arm/boards/raspberry-pi/lowlevel.c
> +++ b/arch/arm/boards/raspberry-pi/lowlevel.c
> @@ -1,7 +1,7 @@
> +#include <asm/barebox-arm.h>
> +#include <asm/cache.h>
>  #include <common.h>
>  #include <linux/sizes.h>
> -#include <asm/barebox-arm.h>
> -#include <asm/barebox-arm-head.h>
>  #include <mach/platform.h>
> =20
>  extern char __dtb_bcm2835_rpi_start[];
> @@ -23,3 +23,13 @@ ENTRY_FUNCTION(start_raspberry_pi2, r0, r1, r2)
> =20
>  	barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_512M, fdt);
>  }
> +
> +extern char __dtb_bcm2837_rpi_3_start[];
> +ENTRY_FUNCTION(start_raspberry_pi3, r0, r1, r2)
> +{
> +	void *fdt =3D __dtb_bcm2837_rpi_3_start - get_runtime_offset();
> +
> +	arm_cpu_lowlevel_init();
> +
> +	barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_512M, fdt);
> +}
> diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defcon=
fig
> index f3aef4290425..cd88b4ac751c 100644
> --- a/arch/arm/configs/rpi_defconfig
> +++ b/arch/arm/configs/rpi_defconfig
> @@ -1,9 +1,11 @@
>  CONFIG_ARCH_BCM283X=3Dy
>  CONFIG_MACH_RPI=3Dy
>  CONFIG_MACH_RPI2=3Dy
> +CONFIG_MACH_RPI3=3Dy
>  CONFIG_AEABI=3Dy
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=3Dy
>  CONFIG_ARM_UNWIND=3Dy
> +CONFIG_IMAGE_COMPRESSION_NONE=3Dy
>  CONFIG_MMU=3Dy
>  CONFIG_MALLOC_TLSF=3Dy
>  CONFIG_KALLSYMS=3Dy
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 0526a6f40724..0eab313c5011 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -66,6 +66,7 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_RK3288) +=3D rk3288-ph=
ycore-som.dtb.o
>  pbl-dtb-$(CONFIG_MACH_REALQ7) +=3D imx6q-dmo-edmqmx6.dtb.o
>  pbl-dtb-$(CONFIG_MACH_RPI) +=3D bcm2835-rpi.dtb.o
>  pbl-dtb-$(CONFIG_MACH_RPI2) +=3D bcm2836-rpi-2.dtb.o
> +pbl-dtb-$(CONFIG_MACH_RPI3) +=3D bcm2837-rpi-3.dtb.o
>  pbl-dtb-$(CONFIG_MACH_SABRELITE) +=3D imx6q-sabrelite.dtb.o imx6dl-sabre=
lite.dtb.o
>  pbl-dtb-$(CONFIG_MACH_SABRESD) +=3D imx6q-sabresd.dtb.o
>  pbl-dtb-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) +=3D imx6sx-sdb.dtb.o
> diff --git a/arch/arm/dts/bcm2837-rpi-3.dts b/arch/arm/dts/bcm2837-rpi-3.=
dts
> new file mode 100644
> index 000000000000..f8c58c570137
> --- /dev/null
> +++ b/arch/arm/dts/bcm2837-rpi-3.dts
> @@ -0,0 +1,15 @@
> +#include <arm64/broadcom/bcm2837-rpi-3-b.dts>
> +
> +/ {
> +	chosen {
> +		stdout-path =3D &uart0;
> +	};
> +
> +	memory {
> +		reg =3D <0x0 0x0>;
> +	};
> +};
> +
> +&uart0 {
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/mach-bcm283x/Kconfig b/arch/arm/mach-bcm283x/Kconfig
> index 1457f114ccaa..af2f88c47acb 100644
> --- a/arch/arm/mach-bcm283x/Kconfig
> +++ b/arch/arm/mach-bcm283x/Kconfig
> @@ -19,6 +19,12 @@ config MACH_RPI2
>  	select CPU_V7
>  	select MACH_RPI_COMMON
> =20
> +config MACH_RPI3
> +	bool "RaspberryPi 3 (BCM2837/CORTEX-A53)"
> +	select CPU_V7
> +	select MACH_RPI_COMMON
> +	select ARM_SECURE_MONITOR
> +
>  endmenu
> =20
>  config MACH_RPI_DEBUG_UART_BASE
> diff --git a/arch/arm/mach-bcm283x/core.c b/arch/arm/mach-bcm283x/core.c
> index fddcb0d1a1d4..26f0996b1cb8 100644
> --- a/arch/arm/mach-bcm283x/core.c
> +++ b/arch/arm/mach-bcm283x/core.c
> @@ -41,6 +41,7 @@ static int bcm2835_clk_init(void)
>  	clk =3D clk_fixed("uart0-pl0110", 3 * 1000 * 1000);
>  	clk_register_clkdev(clk, NULL, "uart0-pl0110");
>  	clk_register_clkdev(clk, NULL, "20201000.serial");
> +	clk_register_clkdev(clk, NULL, "3f201000.serial");
> =20
>  	clk =3D clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
>  	clk_register_clkdev(clk, NULL, "bcm2835-cs");
> diff --git a/images/Makefile.bcm283x b/images/Makefile.bcm283x
> index d59ef043f05c..d14e648926ac 100644
> --- a/images/Makefile.bcm283x
> +++ b/images/Makefile.bcm283x
> @@ -9,3 +9,7 @@ image-$(CONFIG_MACH_RPI) +=3D barebox-raspberry-pi-1.img
>  pblx-$(CONFIG_MACH_RPI2) +=3D start_raspberry_pi2
>  FILE_barebox-raspberry-pi-2.img =3D start_raspberry_pi2.pblx
>  image-$(CONFIG_MACH_RPI2) +=3D barebox-raspberry-pi-2.img
> +
> +pblx-$(CONFIG_MACH_RPI3) +=3D start_raspberry_pi3
> +FILE_barebox-raspberry-pi-3.img =3D start_raspberry_pi3.pblx
> +image-$(CONFIG_MACH_RPI3) +=3D barebox-raspberry-pi-3.img
> \ No newline at end of file
> --=20
> 2.16.1
>=20
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

--=20
/"\ ASCII RIBBON | =BBWith the first link, the chain is forged. The first
\ / CAMPAIGN     | speech censured, the first thought forbidden, the
 X  AGAINST      | first freedom denied, chains us all irrevocably.=AB
/ \ HTML MAIL    | (Jean-Luc Picard, quoting Judge Aaron Satie)

--2h6yd6dspwqlay4d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEwo7muQJjlc+Prwj6NK3NAHIhXMYFAluechQACgkQNK3NAHIh
XMZvPw//SMlTH0LkVwbNuggsVhR1FYgHQ+LzgC0doiNnBiJHR30vJw3meqPiDv3/
xefv4OLaIhbiS5WX/iyfXL42hZamxSE7oQuvJkT1VeLKTypA4PqnjYeHFEomM1jT
y3s1qMO8mBponCloqgNUq/gkf6i8sj6vu1FmDSyfsTdTHwvYLLBpeLFY7gAaN4pG
2DqPa5Mc03TgTTFkc0ZPhrBxmNU94Hhl5Q46Txi7+MVNrALdz8+BN/HE/fQs9qJV
zfSMk12kQ/kDzjFaNvh4Diw6JKlPztPUYwCnS0KJvVmctS0cgbekWptu0GUImNy9
xujND0dv1eoznivuizStseOTzECWHXzhoUOyhwEX41XC+MNGUqaerVbDyRCfR8eL
ItwE6ynbTfjweeBFvOB5g0CcQNZUk/u6IcC0pqSbsLrLtzAyiGZtFH86uh0WAvIB
BygnkBAnckiSu3GVHvJSOl/PrELZn3F8Mp5TfnnHL4MvLK6mtKJbfF7OFbWxdY9i
cm8w4jP2q57HOCSZ234e5vuiTkFSvZMA9NENLrIFkO9ZVKrjkutfGDbe/onAMGqE
lH9/kT9/OrTbY0FYIv//9VLJwIPVyhvvq7bpgNYn9ZxQvx+fRrhM4GEEIYyMiJLi
79jzZigKu9tJckP6HkeSyKFX4fr+EwqfpyMSSLqFuhSxNVNJEDI=
=WYRT
-----END PGP SIGNATURE-----

--2h6yd6dspwqlay4d--


--===============8809427604575638808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8809427604575638808==--
