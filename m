Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1extHW-0003I1-Er
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 11:48:56 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1extHK-00042e-79
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 12:48:38 +0100
Received: from mgr by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1extHJ-0001XX-Vd
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 12:48:37 +0100
Date: Mon, 19 Mar 2018 12:48:37 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20180319114837.xobu4rn3r7skzsta@pengutronix.de>
References: <20180319092120.11773-1-m.grzeschik@pengutronix.de>
 <20180319092120.11773-3-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20180319092120.11773-3-m.grzeschik@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============9149112711037686143=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 2/2] boards: samx6: add initial support for kontron
 samx6i
To: barebox@lists.infradead.org


--===============9149112711037686143==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="epnahvzqiwmwdksm"
Content-Disposition: inline


--epnahvzqiwmwdksm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 19, 2018 at 10:21:20AM +0100, Michael Grzeschik wrote:
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
> v1 -> v2:
> 	- dropped SZ_4G
> 	- fixed and clean env prepraration in board.c
> 	- added compatible checks for initcalls
> 	- dropped clock gate in flash headers
> 	- added memory detection in lowlevel
> 	- merged imx6qdl-samx6i with imx6qdl-smarc-samx6i
> 	- fixed dts
> 	- use imx_esdctl_disable instead of dts disable
>=20
>  arch/arm/boards/Makefile                           |   1 +
>  arch/arm/boards/kontron-samx6i/Makefile            |   2 +
>  arch/arm/boards/kontron-samx6i/board.c             | 103 +++++
>  .../flash-header-samx6i-duallite.imxcfg            | 102 +++++
>  .../kontron-samx6i/flash-header-samx6i-quad.imxcfg | 118 +++++
>  arch/arm/boards/kontron-samx6i/lowlevel.c          |  66 +++
>  arch/arm/boards/kontron-samx6i/mem.c               |  85 ++++
>  arch/arm/configs/imx_v7_defconfig                  |   1 +
>  arch/arm/dts/Makefile                              |   2 +
>  arch/arm/dts/imx6dl-samx6i.dts                     |  20 +
>  arch/arm/dts/imx6q-samx6i.dts                      |  20 +
>  arch/arm/dts/imx6qdl-smarc-samx6i.dtsi             | 509 +++++++++++++++=
++++++
>  arch/arm/mach-imx/Kconfig                          |   4 +
>  images/Makefile.imx                                |  10 +
>  14 files changed, 1043 insertions(+)
>  create mode 100644 arch/arm/boards/kontron-samx6i/Makefile
>  create mode 100644 arch/arm/boards/kontron-samx6i/board.c
>  create mode 100644 arch/arm/boards/kontron-samx6i/flash-header-samx6i-du=
allite.imxcfg
>  create mode 100644 arch/arm/boards/kontron-samx6i/flash-header-samx6i-qu=
ad.imxcfg
>  create mode 100644 arch/arm/boards/kontron-samx6i/lowlevel.c
>  create mode 100644 arch/arm/boards/kontron-samx6i/mem.c
>  create mode 100644 arch/arm/dts/imx6dl-samx6i.dts
>  create mode 100644 arch/arm/dts/imx6q-samx6i.dts
>  create mode 100644 arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
>=20
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index ca187ccb89..30f4c299f1 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -61,6 +61,7 @@ obj-$(CONFIG_MACH_IMX21ADS)			+=3D freescale-mx21-ads/
>  obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+=3D imx233-olinuxino/
>  obj-$(CONFIG_MACH_IMX27ADS)			+=3D freescale-mx27-ads/
>  obj-$(CONFIG_MACH_KINDLE3)			+=3D kindle3/
> +obj-$(CONFIG_MACH_KONTRON_SAMX6I)		+=3D kontron-samx6i/
>  obj-$(CONFIG_MACH_LENOVO_IX4_300D)		+=3D lenovo-ix4-300d/
>  obj-$(CONFIG_MACH_LUBBOCK)			+=3D lubbock/
>  obj-$(CONFIG_MACH_MAINSTONE)			+=3D mainstone/
> diff --git a/arch/arm/boards/kontron-samx6i/Makefile b/arch/arm/boards/ko=
ntron-samx6i/Makefile
> new file mode 100644
> index 0000000000..816962241a
> --- /dev/null
> +++ b/arch/arm/boards/kontron-samx6i/Makefile
> @@ -0,0 +1,2 @@
> +obj-y +=3D board.o mem.o
> +lwl-y +=3D lowlevel.o mem.o
> diff --git a/arch/arm/boards/kontron-samx6i/board.c b/arch/arm/boards/kon=
tron-samx6i/board.c
> new file mode 100644
> index 0000000000..01826b67d2
> --- /dev/null
> +++ b/arch/arm/boards/kontron-samx6i/board.c
> @@ -0,0 +1,103 @@
> +/*
> + * Copyright 2018 (C) Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
> + *
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +#define pr_fmt(fmt) "samx6i: " fmt
> +
> +#include <malloc.h>
> +#include <envfs.h>
> +#include <environment.h>
> +#include <bootsource.h>
> +#include <common.h>
> +#include <init.h>
> +#include <of.h>
> +#include <mach/bbu.h>
> +#include <mach/esdctl.h>
> +
> +#include <asm/armlinux.h>
> +
> +resource_size_t samx6i_get_size(void);
> +
> +/*
> + * On this board the SDRAM size is always configured by pin selection.
> + */
> +static int samx6i_sdram_fixup(void)
> +{
> +	if (!(of_machine_is_compatible("kontron,imx6q-samx6i") ||
> +		of_machine_is_compatible("kontron,imx6dl-samx6i")))
> +		return 0;
> +
> +	imx_esdctl_disable();
> +
> +	return 0;
> +}
> +postcore_initcall(samx6i_sdram_fixup);
> +
> +static int samx6i_mem_init(void)
> +{
> +	resource_size_t size =3D 0;
> +
> +	if (!(of_machine_is_compatible("kontron,imx6q-samx6i") ||
> +		of_machine_is_compatible("kontron,imx6dl-samx6i")))
> +		return 0;
> +
> +	size =3D samx6i_get_size();
> +	if (size)
> +		arm_add_mem_device("ram0", 0x10000000, size);
> +
> +	return 0;
> +}
> +mem_initcall(samx6i_mem_init);
> +
> +static int samx6i_devices_init(void)
> +{
> +	int ret;
> +	char *environment_path, *envdev;
> +	int flag_spi =3D 0, flag_mmc =3D 0;
> +
> +	if (!(of_machine_is_compatible("kontron,imx6q-samx6i") ||
> +		of_machine_is_compatible("kontron,imx6dl-samx6i")))
> +		return 0;
> +
> +	barebox_set_hostname("samx6i");
> +
> +	switch (bootsource_get()) {
> +	case BOOTSOURCE_MMC:
> +		environment_path =3D basprintf("/chosen/environment-sd%d",
> +					       bootsource_get_instance() + 1);
> +		envdev =3D "MMC";
> +		flag_mmc =3D BBU_HANDLER_FLAG_DEFAULT;
> +		break;
> +	default:
> +		environment_path =3D basprintf("/chosen/environment-spinor");
> +		envdev =3D "SPI NOR flash";
> +		flag_spi =3D BBU_HANDLER_FLAG_DEFAULT;
> +		break;
> +	}
> +
> +	ret =3D of_device_enable_path(environment_path);
> +	if (ret < 0)
> +		pr_warn("Failed to enable environment partition '%s' (%d)\n",
> +			environment_path, ret);
> +	free(environment_path);
> +
> +	pr_notice("Using environment in %s\n", envdev);
> +
> +	imx6_bbu_internal_spi_i2c_register_handler("m25p80",
> +					"/dev/m25p0.bootloader",
> +					flag_spi);
> +
> +	imx6_bbu_internal_mmc_register_handler("mmc3",
> +					"/dev/mmc3.bootloader",
> +					flag_mmc);
> +
> +	return 0;
> +}
> +device_initcall(samx6i_devices_init);
> diff --git a/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.=
imxcfg b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
> new file mode 100644
> index 0000000000..9906617083
> --- /dev/null
> +++ b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
> @@ -0,0 +1,102 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +wm 32 0x020e0774 0x000c0000
> +wm 32 0x020e0754 0x00000000
> +
> +wm 32 0x020e04ac 0x00000030
> +wm 32 0x020e04b0 0x00000030
> +
> +wm 32 0x020e0464 0x00000030
> +wm 32 0x020e0490 0x00000030
> +wm 32 0x020e074c 0x00000030
> +
> +wm 32 0x020e0494 0x000c0030
> +wm 32 0x020e04a4 0x00003000
> +wm 32 0x020e04a8 0x00003000
> +wm 32 0x020e04a0 0x00000000
> +wm 32 0x020e04b4 0x00003030
> +wm 32 0x020e04b8 0x00003030
> +wm 32 0x020e076c 0x00000030
> +
> +wm 32 0x020e0750 0x00020000
> +wm 32 0x020e04bc 0x00000038
> +wm 32 0x020e04c0 0x00000038
> +wm 32 0x020e04c4 0x00000038
> +wm 32 0x020e04c8 0x00000038
> +wm 32 0x020e04cc 0x00000038
> +wm 32 0x020e04d0 0x00000038
> +wm 32 0x020e04d4 0x00000038
> +wm 32 0x020e04d8 0x00000038
> +
> +wm 32 0x020e0760 0x00020000
> +wm 32 0x020e0764 0x00000030
> +wm 32 0x020e0770 0x00000030
> +wm 32 0x020e0778 0x00000030
> +wm 32 0x020e077c 0x00000030
> +wm 32 0x020e0780 0x00000030
> +wm 32 0x020e0784 0x00000030
> +wm 32 0x020e078c 0x00000030
> +wm 32 0x020e0748 0x00000030
> +
> +wm 32 0x020e0470 0x00000030
> +wm 32 0x020e0474 0x00000030
> +wm 32 0x020e0478 0x00000030
> +wm 32 0x020e047c 0x00000030
> +wm 32 0x020e0480 0x00000030
> +wm 32 0x020e0484 0x00000030
> +wm 32 0x020e0488 0x00000030
> +wm 32 0x020e048c 0x000C0030
> +
> +wm 32 0x021b0800 0xa1390003
> +wm 32 0x021b4800 0xa1390003
> +
> +wm 32 0x021b080c 0x0040003c
> +wm 32 0x021b0810 0x0032003e
> +
> +wm 32 0x021b083c 0x42350231
> +wm 32 0x021b0840 0x021a0218
> +wm 32 0x021b0848 0x4b4b4e49
> +wm 32 0x021b0850 0x3f3f3035
> +
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +
> +wm 32 0x021b08b8 0x00000800
> +wm 32 0x021b48b8 0x00000800
> +
> +wm 32 0x021b0004 0x0002002d
> +wm 32 0x021b0008 0x00333030
> +wm 32 0x021b000c 0x696d5323
> +wm 32 0x021b0010 0xb66e8c63
> +wm 32 0x021b0014 0x01ff00db
> +wm 32 0x021b0018 0x00001740
> +wm 32 0x021b001c 0x00008000
> +wm 32 0x021b002c 0x000026d2
> +wm 32 0x021b0030 0x006d0e21
> +wm 32 0x021b0040 0x00000027
> +wm 32 0x021b0000 0x84190000
> +wm 32 0x021b001c 0x04008032
> +wm 32 0x021b001c 0x00008033
> +wm 32 0x021b001c 0x00048031
> +wm 32 0x021b001c 0x07208030
> +wm 32 0x021b001c 0x04008040
> +wm 32 0x021b0020 0x00005800
> +wm 32 0x021b0818 0x00022227
> +wm 32 0x021b4818 0x00022227
> +wm 32 0x021b0004 0x0002556d
> +wm 32 0x021b4004 0x00011006
> +wm 32 0x021b001c 0x00000000
> +
> +wm 32 0x020e0010 0xf00000ff
> +
> +wm 32 0x020e0018 0x00070007
> +wm 32 0x020e001c 0x00070007
> diff --git a/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxc=
fg b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg
> new file mode 100644
> index 0000000000..7e6ffd7983
> --- /dev/null
> +++ b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg
> @@ -0,0 +1,118 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +wm 32 0x020e05a8 0x00000030
> +wm 32 0x020e05b0 0x00000030
> +wm 32 0x020e0524 0x00000030
> +wm 32 0x020e051c 0x00000030
> +
> +wm 32 0x020e0518 0x00000030
> +wm 32 0x020e050c 0x00000030
> +wm 32 0x020e05b8 0x00000030
> +wm 32 0x020e05c0 0x00000030
> +
> +wm 32 0x020e05ac 0x00020030
> +wm 32 0x020e05b4 0x00020030
> +wm 32 0x020e0528 0x00020030
> +wm 32 0x020e0520 0x00020030
> +
> +wm 32 0x020e0514 0x00020030
> +wm 32 0x020e0510 0x00020030
> +wm 32 0x020e05bc 0x00020030
> +wm 32 0x020e05c4 0x00020030
> +
> +wm 32 0x020e056c 0x00020030
> +wm 32 0x020e0578 0x00020030
> +wm 32 0x020e0588 0x00020030
> +wm 32 0x020e0594 0x00020030
> +
> +wm 32 0x020e057c 0x00020030
> +wm 32 0x020e0590 0x00003000
> +wm 32 0x020e0598 0x00003000
> +wm 32 0x020e058c 0x00000000
> +
> +wm 32 0x020e059c 0x00003030
> +wm 32 0x020e05a0 0x00003030
> +wm 32 0x020e0784 0x00000030
> +wm 32 0x020e0788 0x00000030
> +
> +wm 32 0x020e0794 0x00000030
> +wm 32 0x020e079c 0x00000030
> +wm 32 0x020e07a0 0x00000030
> +wm 32 0x020e07a4 0x00000030
> +
> +wm 32 0x020e07a8 0x00000030
> +wm 32 0x020e0748 0x00000030
> +wm 32 0x020e074c 0x00000030
> +wm 32 0x020e0750 0x00020000
> +
> +wm 32 0x020e0758 0x00000000
> +wm 32 0x020e0774 0x00020000
> +wm 32 0x020e078c 0x00000030
> +wm 32 0x020e0798 0x000C0000
> +
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +wm 32 0x021b0018 0x00081740
> +
> +wm 32 0x021b001c 0x00008000
> +wm 32 0x021b000c 0x898E7975
> +wm 32 0x021b0010 0xFF538E64
> +wm 32 0x021b0014 0x01FF00DD
> +wm 32 0x021b002c 0x000026D2
> +
> +wm 32 0x021b0030 0x005B0E21
> +wm 32 0x021b0008 0x09444040
> +wm 32 0x021b0004 0x00025576
> +/*  CS0_END =3D 4GB */
> +wm 32 0x021b0040 0x0000007F
> +
> +wm 32 0x021b0000 0x841A0000
> +
> +wm 32 0x021b001c 0x04088032
> +wm 32 0x021b001c 0x00008033
> +wm 32 0x021b001c 0x00428031
> +wm 32 0x021b001c 0x09408030
> +
> +wm 32 0x021b001c 0x04008040
> +wm 32 0x021b0800 0xA1390003
> +wm 32 0x021b4800 0xA1390003
> +wm 32 0x021b0020 0x00007800
> +wm 32 0x021b0818 0x00022227
> +wm 32 0x021b4818 0x00022227
> +
> +wm 32 0x021b083c 0x42740304
> +wm 32 0x021b0840 0x026e0265
> +wm 32 0x021b483c 0x02750306
> +wm 32 0x021b4840 0x02720244
> +wm 32 0x021b0848 0x463d4041
> +wm 32 0x021b4848 0x42413c47
> +wm 32 0x021b0850 0x37414441
> +wm 32 0x021b4850 0x4633473b
> +
> +wm 32 0x021b080c 0x0025001f
> +wm 32 0x021b0810 0x00290027
> +
> +wm 32 0x021b480c 0x001f002b
> +wm 32 0x021b4810 0x000f0029
> +
> +wm 32 0x021b08b8 0x00000800
> +wm 32 0x021b48b8 0x00000800
> +
> +wm 32 0x021b001c 0x00000000
> +wm 32 0x021b0404 0x00011006
> +
> +/* enable AXI cache for VDOA/VPU/IPU */
> +wm 32 0x020e0010 0xF00000FF
> +/* set IPU AXI-id0 Qos=3D0xf(bypass) AXI-id1 Qos=3D0x7 */
> +wm 32 0x020e0018 0x007F007F
> +wm 32 0x020e001c 0x007F007F
> diff --git a/arch/arm/boards/kontron-samx6i/lowlevel.c b/arch/arm/boards/=
kontron-samx6i/lowlevel.c
> new file mode 100644
> index 0000000000..4113ddbb40
> --- /dev/null
> +++ b/arch/arm/boards/kontron-samx6i/lowlevel.c
> @@ -0,0 +1,66 @@
> +/*
> + * Copyright 2018 (C) Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
> + *
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +#include <debug_ll.h>
> +#include <common.h>
> +#include <io.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/sections.h>
> +#include <asm/cache.h>
> +#include <asm/mmu.h>
> +#include <mach/imx6.h>
> +#include <mach/esdctl.h>
> +
> +resource_size_t samx6i_get_size(void);
> +
> +static inline void setup_uart(void)
> +{
> +	void __iomem *iomuxbase =3D (void *)MX6_IOMUXC_BASE_ADDR;
> +
> +	writel(0x4, iomuxbase + 0x016c);
> +
> +	imx6_ungate_all_peripherals();
> +	imx6_uart_setup_ll();
> +
> +	putc_ll('>');
> +}
> +
> +static void __noreturn start_imx6_samx6i_common(void *fdt_blob_fixed_off=
set)
> +{
> +	void *fdt;
> +	resource_size_t size =3D 0;
> +
> +	size =3D samx6i_get_size();
> +
> +	imx6_cpu_lowlevel_init();
> +	arm_setup_stack(0x00920000 - 8);
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		setup_uart();
> +
> +	fdt =3D fdt_blob_fixed_offset - get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, size, fdt);
> +}
> +
> +extern char __dtb_imx6dl_samx6i_start[];
> +extern char __dtb_imx6q_samx6i_start[];
> +
> +ENTRY_FUNCTION(start_imx6q_samx6i, r0, r1, r2)
> +{
> +	start_imx6_samx6i_common(__dtb_imx6q_samx6i_start);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_samx6i, r0, r1, r2)
> +{
> +	start_imx6_samx6i_common(__dtb_imx6dl_samx6i_start);
> +}
> diff --git a/arch/arm/boards/kontron-samx6i/mem.c b/arch/arm/boards/kontr=
on-samx6i/mem.c
> new file mode 100644
> index 0000000000..ab9969e32c
> --- /dev/null
> +++ b/arch/arm/boards/kontron-samx6i/mem.c
> @@ -0,0 +1,85 @@
> +/*
> + * Copyright 2018 (C) Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
> + *
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +#include <linux/sizes.h>
> +#include <common.h>
> +#include <mach/iomux-mx6.h>
> +#include <mach/imx-gpio.h>
> +#include <mach/imx6.h>
> +
> +#define PCBVERSION_PIN IMX_GPIO_NR(2, 2)
> +#define PCBID0_PIN IMX_GPIO_NR(6, 7)
> +#define PCBID1_PIN IMX_GPIO_NR(6, 9)
> +
> +#define MX6S_PAD_NANDF_CLE__GPIO_6_7 \
> +	IOMUX_PAD(0x0658, 0x0270, 5, 0x0000, 0, 0)
> +#define MX6S_PAD_NANDF_WP_B__GPIO_6_9 \
> +	IOMUX_PAD(0x0690, 0x02A8, 5, 0x0000, 0, 0)
> +#define MX6S_PAD_NANDF_D2__GPIO_2_2 \
> +	IOMUX_PAD(0x028c, 0x0674, 5, 0x0000, 0, 0)
> +
> +resource_size_t samx6i_get_size(void)
> +{
> +	resource_size_t size =3D 0;
> +	int ver, id0, id1;
> +	int cpu_type =3D __imx6_cpu_type();
> +	void __iomem *iomuxbase =3D IOMEM(MX6_IOMUXC_BASE_ADDR);
> +	void __iomem *gpio6 =3D IOMEM(MX6_GPIO6_BASE_ADDR);
> +	void __iomem *gpio2 =3D IOMEM(MX6_GPIO2_BASE_ADDR);
> +
> +	if (cpu_type =3D=3D IMX6_CPUTYPE_IMX6D ||
> +			cpu_type =3D=3D IMX6_CPUTYPE_IMX6Q) {
> +		imx_setup_pad(iomuxbase, MX6Q_PAD_NANDF_CLE__GPIO_6_7);
> +		imx_setup_pad(iomuxbase, MX6Q_PAD_NANDF_WP_B__GPIO_6_9);
> +		imx_setup_pad(iomuxbase, MX6Q_PAD_NANDF_D2__GPIO_2_2);
> +	} else if (cpu_type =3D=3D IMX6_CPUTYPE_IMX6S ||
> +			cpu_type =3D=3D IMX6_CPUTYPE_IMX6DL) {
> +		imx_setup_pad(iomuxbase, MX6S_PAD_NANDF_CLE__GPIO_6_7);
> +		imx_setup_pad(iomuxbase, MX6S_PAD_NANDF_WP_B__GPIO_6_9);
> +		imx_setup_pad(iomuxbase, MX6S_PAD_NANDF_D2__GPIO_2_2);
> +	};
> +
> +	imx6_gpio_direction_input(gpio6, 6);
> +	imx6_gpio_direction_input(gpio6, 9);
> +	imx6_gpio_direction_input(gpio2, 2);
> +
> +	ver =3D imx6_gpio_val(gpio2, 2);
> +	id0 =3D imx6_gpio_val(gpio6, 7);
> +	id1 =3D imx6_gpio_val(gpio6, 9);
> +
> +	if (cpu_type =3D=3D IMX6_CPUTYPE_IMX6D ||
> +			cpu_type =3D=3D IMX6_CPUTYPE_IMX6Q) {
> +		if (ver)
> +			size =3D SZ_1G;
> +		else if (id0 && id1)
> +			size =3D SZ_2G;
> +		else if (id0)
> +			size =3D SZ_2G;
> +		else if (id1)
> +			size =3D SZ_1G;
> +		else
> +			size =3D SZ_512M;
> +	} else if (cpu_type =3D=3D IMX6_CPUTYPE_IMX6S ||
> +			cpu_type =3D=3D IMX6_CPUTYPE_IMX6DL) {
> +		if (ver)
> +			size =3D SZ_512M;
> +		if (id0 && id1)
> +			size =3D SZ_2G;
> +		else if (id0)
> +			size =3D SZ_1G;
> +		else if (id1)
> +			size =3D SZ_512M;
> +		else
> +			size =3D SZ_128M;
> +	}
> +
> +	return size;
> +}
> diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_=
defconfig
> index 62d623806c..08ec6eb862 100644
> --- a/arch/arm/configs/imx_v7_defconfig
> +++ b/arch/arm/configs/imx_v7_defconfig
> @@ -11,6 +11,7 @@ CONFIG_MACH_GUF_VINCELL_XLOAD=3Dy
>  CONFIG_MACH_TQMA53=3Dy
>  CONFIG_MACH_FREESCALE_MX53_VMX53=3Dy
>  CONFIG_MACH_PHYTEC_SOM_IMX6=3Dy
> +CONFIG_MACH_KONTRON_SAMX6I=3Dy
>  CONFIG_MACH_DFI_FS700_M60=3Dy
>  CONFIG_MACH_GUF_SANTARO=3Dy
>  CONFIG_MACH_REALQ7=3Dy
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 0526a6f407..db703c1e0f 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -28,6 +28,8 @@ pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) +=3D armada-=
370-mirabox-bb.dtb.o
>  pbl-dtb-$(CONFIG_MACH_GUF_SANTARO) +=3D imx6q-guf-santaro.dtb.o
>  pbl-dtb-$(CONFIG_MACH_GUF_VINCELL) +=3D imx53-guf-vincell.dtb.o imx53-gu=
f-vincell-lt.dtb.o
>  pbl-dtb-$(CONFIG_MACH_GW_VENTANA) +=3D imx6q-gw54xx.dtb.o
> +pbl-dtb-$(CONFIG_MACH_KONTRON_SAMX6I) +=3D imx6q-samx6i.dtb.o \
> +					imx6dl-samx6i.dtb.o
>  pbl-dtb-$(CONFIG_MACH_LENOVO_IX4_300D) +=3D armada-xp-lenovo-ix4-300d-bb=
=2Edtb.o
>  pbl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) +=3D armada-xp-gp-bb.dtb.o
>  pbl-dtb-$(CONFIG_MACH_NETGEAR_RN104) +=3D armada-370-rn104-bb.dtb.o
> diff --git a/arch/arm/dts/imx6dl-samx6i.dts b/arch/arm/dts/imx6dl-samx6i.=
dts
> new file mode 100644
> index 0000000000..d688b9c6ca
> --- /dev/null
> +++ b/arch/arm/dts/imx6dl-samx6i.dts
> @@ -0,0 +1,20 @@
> +/*
> + * Copyright 2018 (C) Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
> + *
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6dl.dtsi>
> +#include "imx6dl.dtsi"
> +#include "imx6qdl-smarc-samx6i.dtsi"
> +
> +/ {
> +	model =3D "Kontron sAMX6i";
> +	compatible =3D "kontron,imx6dl-samx6i", "fsl,imx6dl";
> +};
> diff --git a/arch/arm/dts/imx6q-samx6i.dts b/arch/arm/dts/imx6q-samx6i.dts
> new file mode 100644
> index 0000000000..83f19bcaf8
> --- /dev/null
> +++ b/arch/arm/dts/imx6q-samx6i.dts
> @@ -0,0 +1,20 @@
> +/*
> + * Copyright 2018 (C) Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
> + *
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6q.dtsi>
> +#include "imx6q.dtsi"
> +#include "imx6qdl-smarc-samx6i.dtsi"
> +
> +/ {
> +	model =3D "Kontron sAMX6i";
> +	compatible =3D "kontron,imx6q-samx6i", "fsl,imx6q";
> +};
> diff --git a/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi b/arch/arm/dts/imx6qd=
l-smarc-samx6i.dtsi
> new file mode 100644
> index 0000000000..3cbf11672d
> --- /dev/null
> +++ b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
> @@ -0,0 +1,509 @@
> +/*
> + * Copyright 2017 (C) Priit Laes <plaes@plaes.org>
> + * Copyright 2018 (C) Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
> + *
> + * Based on initial work by Nikita Yushchenko <nyushchenko at dev.rtsoft=
=2Eru>
> + *
> + * This file is dual-licensed: you can use it either under the terms
> + * of the GPL or the X11 license, at your option. Note that this dual
> + * licensing only applies to this file, and not this project as a
> + * whole.
> + *
> + *  a) This file is free software; you can redistribute it and/or
> + *     modify it under the terms of the GNU General Public License as
> + *     published by the Free Software Foundation; either version 2 of
> + *     the License, or (at your option) any later version.
> + *
> + *     This file is distributed in the hope that it will be useful,
> + *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> + *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + *     GNU General Public License for more details.
> + *
> + * Or, alternatively,
> + *
> + *  b) Permission is hereby granted, free of charge, to any person
> + *     obtaining a copy of this software and associated documentation
> + *     files (the "Software"), to deal in the Software without
> + *     restriction, including without limitation the rights to use,
> + *     copy, modify, merge, publish, distribute, sublicense, and/or
> + *     sell copies of the Software, and to permit persons to whom the
> + *     Software is furnished to do so, subject to the following
> + *     conditions:
> + *
> + *     The above copyright notice and this permission notice shall be
> + *     included in all copies or substantial portions of the Software.
> + *
> + *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> + *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> + *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> + *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> + *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> + *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> + *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> + *     OTHER DEALINGS IN THE SOFTWARE.
> + *
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	chosen {
> +		linux,stdout-path =3D &uart2;
> +
> +		environment-spinor {
> +			compatible =3D "barebox,environment";
> +			device-path =3D &flash_bareboxenv;
> +			status =3D "disabled";
> +		};
> +
> +		environment-sd4 {
> +			compatible =3D "barebox,environment";
> +			device-path =3D &usdhc4_bareboxenv;
> +			status =3D "disabled";
> +		};
> +	};
> +
> +	reg_3v3_s5: regulator@0 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "V_3V3_S5";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	reg_1v8_s5: regulator@1 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "V_1V8_S5";
> +		regulator-min-microvolt =3D <1800000>;
> +		regulator-max-microvolt =3D <1800000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	reg_3v3_s0: regulator@2 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "V_3V3_S0";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	reg_1v0_s0: regulator@3 {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "V_1V0_S0";
> +		regulator-min-microvolt =3D <1000000>;
> +		regulator-max-microvolt =3D <1000000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	i2c_pfuze: i2c-gpio-0 {
> +		compatible =3D "i2c-gpio";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_i2c_gpio_0>;
> +		sda-gpios =3D <&gpio1 28 0>;
> +		scl-gpios =3D <&gpio1 30 0>;
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +		i2c-gpio,delay-us =3D <2>;
> +	};
> +};
> +
> +&can1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_flexcan1>;
> +};
> +
> +&can2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_flexcan2>;
> +};
> +
> +&fec {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_enet_smarc>;
> +	phy-reset-gpios =3D <&gpio1 25 GPIO_ACTIVE_LOW>;
> +	phy-mode =3D "rgmii";
> +	status =3D "okay";
> +};
> +
> +&i2c_pfuze {
> +	pfuze100@08 {
> +		compatible =3D "fsl,pfuze100";
> +		reg =3D <0x08>;
> +
> +		/* Looks unused by pfuze100 driver */
> +		interrupt-parent =3D <&gpio7>;
> +		interrupts =3D <13 IRQ_TYPE_LEVEL_LOW>;
> +
> +		regulators {
> +			reg_v_core_s0: sw1ab {
> +				regulator-name =3D "V_CORE_S0";
> +				regulator-min-microvolt =3D <300000>;
> +				regulator-max-microvolt =3D <1875000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			reg_vddsoc_s0: sw1c {
> +				regulator-name =3D "V_VDDSOC_S0";
> +				regulator-min-microvolt =3D <300000>;
> +				regulator-max-microvolt =3D <1875000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			reg_3v15_s0: sw2 {
> +				regulator-name =3D "V_3V15_S0";
> +				regulator-min-microvolt =3D <800000>;
> +				regulator-max-microvolt =3D <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			/* sw3a/b is used in dual mode, but driver does not
> +			 * support it? Although, there's no need to control
> +			 * DDR power - so just leaving dummy entries for sw3a
> +			 * and sw3b for now.
> +			 */
> +			sw3a {
> +				regulator-min-microvolt =3D <400000>;
> +				regulator-max-microvolt =3D <1975000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			sw3b {
> +				regulator-min-microvolt =3D <400000>;
> +				regulator-max-microvolt =3D <1975000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			reg_1v8_s0: sw4 {
> +				regulator-name =3D "V_1V8_S0";
> +				regulator-min-microvolt =3D <800000>;
> +				regulator-max-microvolt =3D <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			/* Regulator for USB */
> +			reg_5v0_s0: swbst {
> +				regulator-name =3D "V_5V0_S0";
> +				regulator-min-microvolt =3D <5000000>;
> +				regulator-max-microvolt =3D <5150000>;
> +				regulator-boot-on;
> +			};
> +
> +			reg_vsnvs: vsnvs {
> +				regulator-min-microvolt =3D <1000000>;
> +				regulator-max-microvolt =3D <3000000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			reg_vrefddr: vrefddr {
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			/* Per schematics, of all VGEN's, only VGEN5 has some
> +			 * usage ... but even that - over DNI resistor
> +			 */
> +			vgen1 {
> +				regulator-min-microvolt =3D <800000>;
> +				regulator-max-microvolt =3D <1550000>;
> +			};
> +
> +			vgen2 {
> +				regulator-min-microvolt =3D <800000>;
> +				regulator-max-microvolt =3D <1550000>;
> +			};
> +
> +			vgen3 {
> +				regulator-min-microvolt =3D <1800000>;
> +				regulator-max-microvolt =3D <3300000>;
> +			};
> +
> +			vgen4 {
> +				regulator-min-microvolt =3D <1800000>;
> +				regulator-max-microvolt =3D <3300000>;
> +			};
> +
> +			reg_2v5_s0: vgen5 {
> +				regulator-name =3D "V_2V5_S0";
> +				regulator-min-microvolt =3D <1800000>;
> +				regulator-max-microvolt =3D <3300000>;
> +			};
> +
> +			vgen6 {
> +				regulator-min-microvolt =3D <1800000>;
> +				regulator-max-microvolt =3D <3300000>;
> +			};
> +		};
> +	};
> +};
> +
> +&ecspi4 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_ecspi4>;
> +	fsl,spi-num-chipselects =3D <3>;
> +	cs-gpios =3D <&gpio3 24 0>, <&gpio3 29 0>, <&gpio3 25 0>;
> +	status =3D "okay";
> +
> +	flash: m25p80@0 {
> +		compatible =3D "winbond,w25q16dw", "jedec,spi-nor";
> +		spi-max-frequency =3D <20000000>;
> +		reg =3D <0>;
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +
> +		partition@0 {
> +			label =3D "bootloader";
> +			reg =3D <0x000000 0x0c0000>;
> +		};
> +
> +		flash_bareboxenv: partition@c0000 {
> +			label =3D "environment";
> +			reg =3D <0x0c0000 0x010000>;
> +		};
> +
> +		partition@d0000 {
> +			label =3D "user";
> +			reg =3D <0x0d0000 0x130000>;
> +		};
> +	};
> +};
> +
> +&i2c3 {
> +	clock-frequency =3D <100000>;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_i2c3>;
> +};
> +
> +&pcie {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_pcie>;
> +	wake-up-gpio =3D <&gpio6 18 GPIO_ACTIVE_HIGH>;
> +	reset-gpio =3D <&gpio3 13 GPIO_ACTIVE_HIGH>;
> +};
> +
> +&uart1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart1_smarc>;
> +	fsl,uart-has-rtscts;
> +};
> +
> +&uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart2_smarc>;
> +	status =3D "okay";
> +};
> +
> +&uart4 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart4_smarc>;
> +	fsl,uart-has-rtscts;
> +};
> +
> +&uart5 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart5_smarc>;
> +};
> +
> +&usbotg {
> +	/*
> +	 * no 'imx6-usb-charger-detection'
> +	 * since USB_OTG_CHD_B pin is not wired
> +	 */
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_usbotg>;
> +	status =3D "okay";
> +};
> +
> +&usbh1 {
> +	vbus-supply =3D <&reg_5v0_s0>;
> +	status =3D "okay";
> +};
> +
> +&usdhc4 {
> +	/* Internal eMMC, optional on some boards */
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_usdhc4>;
> +	bus-width =3D <8>;
> +	no-1-8-v;
> +	non-removable;
> +	status =3D "okay";
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
> +	partition@0 {
> +		label =3D "bootloader";
> +		reg =3D <0x0 0xe0000>;
> +	};
> +
> +	usdhc4_bareboxenv: partition@e0000 {
> +		label =3D "environment";
> +		reg =3D <0xe0000 0x20000>;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_boot>;
> +
> +	pinctrl_boot: boot {
> +		fsl,pins =3D <
> +			/* GPIOS for version and id detection */
> +			MX6QDL_PAD_NANDF_CLE__GPIO6_IO07	0x80000000
> +			MX6QDL_PAD_NANDF_WP_B__GPIO6_IO09	0x80000000
> +			MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x80000000
> +		>;
> +	};
> +
> +	pinctrl_flexcan1: flexcan1-smarc {
> +		fsl,pins =3D <
> +			MX6QDL_PAD_GPIO_7__FLEXCAN1_TX 0x80000000
> +			MX6QDL_PAD_GPIO_8__FLEXCAN1_RX 0x80000000
> +		>;
> +	};
> +
> +	pinctrl_flexcan2: flexcan2-smarc {
> +		fsl,pins =3D <
> +			MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX 0x80000000
> +			MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX 0x80000000
> +		>;
> +	};
> +
> +	pinctrl_enet_smarc: fecgrp-smarc {
> +		fsl,pins =3D <
> +			MX6QDL_PAD_ENET_MDIO__ENET_MDIO       0x1b0b0
> +			MX6QDL_PAD_ENET_MDC__ENET_MDC         0x1b0b0
> +			MX6QDL_PAD_RGMII_TXC__RGMII_TXC       0x1b0b0
> +			MX6QDL_PAD_RGMII_TD0__RGMII_TD0       0x1b0b0
> +			MX6QDL_PAD_RGMII_TD1__RGMII_TD1       0x1b0b0
> +			MX6QDL_PAD_RGMII_TD2__RGMII_TD2       0x1b0b0
> +			MX6QDL_PAD_RGMII_TD3__RGMII_TD3       0x1b0b0
> +			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL 0x1b0b0
> +			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK  0x1b0b0
> +			MX6QDL_PAD_RGMII_RXC__RGMII_RXC       0x1b0b0
> +			MX6QDL_PAD_RGMII_RD0__RGMII_RD0       0x1b0b0
> +			MX6QDL_PAD_RGMII_RD1__RGMII_RD1       0x1b0b0
> +			MX6QDL_PAD_RGMII_RD2__RGMII_RD2       0x1b0b0
> +			MX6QDL_PAD_RGMII_RD3__RGMII_RD3       0x1b0b0
> +			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL 0x1b0b0
> +			MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25    0x80000000
> +		>;
> +	};
> +
> +	pinctrl_i2c_gpio_0: i2c-gpio-0-smarc {
> +		fsl,pins =3D <
> +			/* SCL GPIO */
> +			MX6QDL_PAD_ENET_TXD0__GPIO1_IO30  0x80000000
> +			/* SDA GPIO */
> +			MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28 0x80000000
> +		>;
> +	};
> +
> +	pinctrl_i2c3: i2c3-smarc {
> +		fsl,pins =3D <
> +			MX6QDL_PAD_EIM_D17__I2C3_SCL		0x4001b8b1
> +			MX6QDL_PAD_EIM_D18__I2C3_SDA		0x4001b8b1
> +		>;
> +	};
> +
> +	pinctrl_ecspi4: ecspi4-smarc {
> +		fsl,pins =3D <
> +			MX6QDL_PAD_EIM_D21__ECSPI4_SCLK 0x80000000
> +			MX6QDL_PAD_EIM_D28__ECSPI4_MOSI 0x80000000
> +			MX6QDL_PAD_EIM_D22__ECSPI4_MISO 0x80000000
> +                        MX6QDL_PAD_EIM_D29__ECSPI4_SS0  0x80000000

Just found this wrong indentation. If more work appears I will resend.
Otherwise, please fix on commit.

> +
> +			/* In hardware, ECSPI4's SS0,SS1,SS3 are wired.
> +			   But spi-imx driver support only continuous
> +			   numbering, and only can use GPIOs (and not
> +			   ECSPI's hardware SS) for CS. So linux view
> +			   of CS numbers differs from hw view, and
> +			   pins are configured as GPIOs */
> +
> +			/* physical - CS2, in linux - CS0, either internal flash or SMARC CS0=
 */
> +			MX6QDL_PAD_EIM_D24__GPIO3_IO24 0x80000000
> +			/* physical - CS0, in linux - CS1, either SMARC CS0 or not-connected =
*/
> +			MX6QDL_PAD_EIM_D29__GPIO3_IO29 0x80000000
> +			/* physical - CS3, in linux - CS2, SMARC CS1 */
> +			MX6QDL_PAD_EIM_D25__GPIO3_IO25 0x80000000
> +		>;
> +	};
> +
> +	pinctrl_pcie: pcie-smarc {
> +		fsl,pins =3D <
> +			/* RST_PCIE_A# */
> +			MX6QDL_PAD_EIM_DA13__GPIO3_IO13 0x80000000
> +			/* PCIE_WAKE# */
> +			MX6QDL_PAD_SD3_DAT6__GPIO6_IO18 0x80000000
> +		>;
> +	};
> +
> +	pinctrl_uart1_smarc: uart1grp-smarc {
> +		fsl,pins =3D <
> +			MX6QDL_PAD_CSI0_DAT11__UART1_RX_DATA 0x1b0b1
> +			MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA 0x1b0b1
> +			MX6QDL_PAD_EIM_D20__UART1_RTS_B 0x1b0b1
> +			MX6QDL_PAD_EIM_D19__UART1_CTS_B 0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_uart2_smarc: uart2grp-smarc {
> +		fsl,pins =3D <
> +			MX6QDL_PAD_EIM_D27__UART2_RX_DATA 0x1b0b1
> +			MX6QDL_PAD_EIM_D26__UART2_TX_DATA 0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_uart4_smarc: uart4grp-smarc {
> +		fsl,pins =3D <
> +			MX6QDL_PAD_CSI0_DAT13__UART4_RX_DATA 0x1b0b1
> +			MX6QDL_PAD_CSI0_DAT12__UART4_TX_DATA 0x1b0b1
> +			MX6QDL_PAD_CSI0_DAT16__UART4_RTS_B 0x1b0b1
> +			MX6QDL_PAD_CSI0_DAT17__UART4_CTS_B 0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_uart5_smarc: uart5grp-smarc {
> +		fsl,pins =3D <
> +			MX6QDL_PAD_CSI0_DAT15__UART5_RX_DATA 0x1b0b1
> +			MX6QDL_PAD_CSI0_DAT14__UART5_TX_DATA 0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_usbotg: usbotg-grp-smarc {
> +		fsl,pins =3D <
> +			MX6QDL_PAD_GPIO_1__USB_OTG_ID 0x1f8b0
> +			/* TODO: Comment out power and OC gpio's for now, since
> +			 * these are not used by driver
> +			 */
> +			/* USB power */
> +			// MX6QDL_PAD_CSI0_PIXCLK__GPIO5_IO18 0x80000000
> +			/* USB OC */
> +			// MX6QDL_PAD_CSI0_DATA_EN__GPIO5_IO20 0x80000000
> +		>;
> +	};
> +
> +	pinctrl_usdhc4: usdhc4grp-smarc {
> +		fsl,pins =3D <
> +			MX6QDL_PAD_SD4_CLK__SD4_CLK 0x17059
> +			MX6QDL_PAD_SD4_CMD__SD4_CMD 0x17059
> +			MX6QDL_PAD_SD4_DAT0__SD4_DATA0 0x17059
> +			MX6QDL_PAD_SD4_DAT1__SD4_DATA1 0x17059
> +			MX6QDL_PAD_SD4_DAT2__SD4_DATA2 0x17059
> +			MX6QDL_PAD_SD4_DAT3__SD4_DATA3 0x17059
> +			MX6QDL_PAD_SD4_DAT4__SD4_DATA4 0x17059
> +			MX6QDL_PAD_SD4_DAT5__SD4_DATA5 0x17059
> +			MX6QDL_PAD_SD4_DAT6__SD4_DATA6 0x17059
> +			MX6QDL_PAD_SD4_DAT7__SD4_DATA7 0x17059
> +		>;
> +	};
> +};
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index eb135c3f53..cf5338e5fa 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -294,6 +294,10 @@ config MACH_PHYTEC_SOM_IMX6
>          select ARCH_IMX6
>  	select ARCH_IMX6UL
> =20
> +config MACH_KONTRON_SAMX6I
> +        bool "Kontron sAMX6i"
> +        select ARCH_IMX6
> +
>  config MACH_DFI_FS700_M60
>  	bool "DFI i.MX6 FS700 M60 Q7 Board"
>  	select ARCH_IMX6
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 5e0043f1f0..0428c48ade 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -455,6 +455,16 @@ CFG_start_phytec_phycore_imx6ull_som_256mb.pblx.imxi=
mg =3D $(board)/phytec-som-imx
>  FILE_barebox-phytec-phycore-imx6ull-256mb.img =3D start_phytec_phycore_i=
mx6ull_som_256mb.pblx.imximg
>  image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) +=3D barebox-phytec-phycore-imx6ull=
-256mb.img
> =20
> +pblx-$(CONFIG_MACH_KONTRON_SAMX6I) +=3D start_imx6q_samx6i
> +CFG_start_imx6q_samx6i.pblx.imximg =3D $(board)/kontron-samx6i/flash-hea=
der-samx6i-quad.imxcfg
> +FILE_barebox-imx6q-samx6i.img =3D start_imx6q_samx6i.pblx.imximg
> +image-$(CONFIG_MACH_KONTRON_SAMX6I) +=3D barebox-imx6q-samx6i.img
> +
> +pblx-$(CONFIG_MACH_KONTRON_SAMX6I) +=3D start_imx6dl_samx6i
> +CFG_start_imx6dl_samx6i.pblx.imximg =3D $(board)/kontron-samx6i/flash-he=
ader-samx6i-duallite.imxcfg
> +FILE_barebox-imx6dl-samx6i.img =3D start_imx6dl_samx6i.pblx.imximg
> +image-$(CONFIG_MACH_KONTRON_SAMX6I) +=3D barebox-imx6dl-samx6i.img
> +
>  pblx-$(CONFIG_MACH_GW_VENTANA) +=3D start_imx6q_gw54xx_1gx64
>  CFG_start_imx6q_gw54xx_1gx64.pblx.imximg =3D $(board)/gateworks-ventana/=
flash-header-ventana-quad-1gx64.imxcfg
>  FILE_barebox-gateworks-imx6q-ventana-1gx64.img =3D start_imx6q_gw54xx_1g=
x64.pblx.imximg
> --=20
> 2.16.1
>=20
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--epnahvzqiwmwdksm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAlqvo48ACgkQC+njFXoe
LGT2vxAA0Bl07lrDAWK9ux08N5ELzUDsQxQL0tksNENu2hpmOvd3X5ZNm46HzjuX
oF0TybH3/+jXhrQOmyrE/1t3gWPWSEBS7mY3o1F9CDW8Mnh7QfPMqpFsxPOtDFNw
mxGtXRKzZTwphS/W7RAyogK4c6DfRH3wrbnD1x0aLzm/ZJ3Vupm/A42Yr0vv6BaP
jkdZcfPlZNdQpIHVyremeNOK1ayeONCekbIEkfTwq+deIR9m3NUgEheEtnzXoO1z
PNNIb1qoJWue4j+fE7VpETWQLuIdN8wNqdV6cMJ7jc2gJD5V6FZHsENMbknN5fFp
bUGnKJE+KvFBpXuhRdwhwDqeA3ys+MgAzlY4T8g877SKjD+Px3gmsSd6j3fTylUl
tTzeIdDr+jD1EVvyHojS8ufGyjNaa7yEkCo3yrRRjDfLQJS71tmFxvo3TcxECMim
k2WQbN0E3x7L+G7qxA1UNVoLsZKN+DEObTOPOcN+VTTfS/4Zc2WuIdivYemy/KB/
zTqaRUAqeqL1kZjOL00/f8hLRDmyTkZp6fSAvxbMhSiY+9zwpL09IGEaVi1CJszt
7wHylYHWL6/V9o55ZoCL6vAlRdl2Sk66uyEhInIO3mF2cX3SbFZU5vvDjnBjg7Lj
PKYLrCoWJcfJESBCvNadsdNb/bV1KOiqdVV+mRe+j2Pb3eoPdIQ=
=IP8J
-----END PGP SIGNATURE-----

--epnahvzqiwmwdksm--


--===============9149112711037686143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9149112711037686143==--
