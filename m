Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYmtC-00010x-Gq
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 07:00:35 +0000
Date: Mon, 17 Dec 2018 08:00:16 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20181217070016.setzeqh762wohwhq@pengutronix.de>
References: <20181217055149.15355-1-shc_work@mail.ru>
 <20181217055149.15355-2-shc_work@mail.ru>
MIME-Version: 1.0
In-Reply-To: <20181217055149.15355-2-shc_work@mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3766345304170811441=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH V2 2/2] ARM: CCMX51: Switch to multiimage support
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org


--===============3766345304170811441==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wdq4fylnl52rdzey"
Content-Disposition: inline


--wdq4fylnl52rdzey
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

On Mon, Dec 17, 2018 at 08:51:49AM +0300, Alexander Shiyan wrote:
> This is a cumulative patch for the Digi ConnectCore CCMX51 SOM.
> It includes:
> - Switch board to devicetree probe.
> - Add MMC update handler.
> - Switch to multiimage support.
> - Cleanup and optimize board code.

At least some of this step belong to separate patches and can be really
done.

> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/Makefile                                  |   1 -
>  arch/arm/boards/ccxmx51/Makefile                   |   4 +-
>  arch/arm/boards/ccxmx51/ccxmx51.c                  | 621 +++++++--------=
------
>  arch/arm/boards/ccxmx51/ccxmx51.h                  |  35 --
>  arch/arm/boards/ccxmx51/ccxmx51js.c                | 103 ----
>  .../ccxmx51/{env =3D> defaultenv-ccxmx51}/boot/nand  |   0
>  .../nv/autoboot_timeout                            |   0
>  .../{env =3D> defaultenv-ccxmx51}/nv/boot.default    |   0
>  .../defaultenv-ccxmx51/nv/linux.bootargs.base      |   1 +
>  arch/arm/boards/ccxmx51/env/init/mtdparts-nand     |   6 -
>  arch/arm/boards/ccxmx51/lowlevel.c                 |  12 +-
>  arch/arm/configs/ccmx51_defconfig                  |  60 --
>  arch/arm/configs/imx_v7_defconfig                  |   2 +-
>  arch/arm/dts/Makefile                              |   1 +
>  arch/arm/dts/imx51-ccxmx51.dts                     |  38 ++
>  arch/arm/mach-imx/Kconfig                          |  31 +-
>  images/Makefile.imx                                |   5 +
>  17 files changed, 284 insertions(+), 636 deletions(-)
>  delete mode 100644 arch/arm/boards/ccxmx51/ccxmx51.h
>  delete mode 100644 arch/arm/boards/ccxmx51/ccxmx51js.c
>  rename arch/arm/boards/ccxmx51/{env =3D> defaultenv-ccxmx51}/boot/nand (=
100%)
>  rename arch/arm/boards/ccxmx51/{env =3D> defaultenv-ccxmx51}/nv/autoboot=
_timeout (100%)
>  rename arch/arm/boards/ccxmx51/{env =3D> defaultenv-ccxmx51}/nv/boot.def=
ault (100%)
>  create mode 100644 arch/arm/boards/ccxmx51/defaultenv-ccxmx51/nv/linux.b=
ootargs.base
>  delete mode 100644 arch/arm/boards/ccxmx51/env/init/mtdparts-nand
>  delete mode 100644 arch/arm/configs/ccmx51_defconfig
>  create mode 100644 arch/arm/dts/imx51-ccxmx51.dts
>=20
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 5db67b9db..2d55bc69a 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -246,7 +246,6 @@ barebox.imximg: $(KBUILD_BINARY) FORCE
> =20
>  boarddir =3D $(srctree)/arch/arm/boards
>  imxcfg-$(CONFIG_MACH_FREESCALE_MX53_SMD) +=3D $(boarddir)/freescale-mx53=
-smd/flash-header.imxcfg
> -imxcfg-$(CONFIG_MACH_CCMX51) +=3D $(boarddir)/ccxmx51/flash-header.imxcfg
>  imxcfg-$(CONFIG_MACH_TX51) +=3D $(boarddir)/karo-tx51/flash-header-karo-=
tx51.imxcfg
>  imxcfg-$(CONFIG_MACH_GUF_VINCELL) +=3D $(boarddir)/guf-vincell/flash-hea=
der.imxcfg
>  imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX51SD) +=3D $(boarddir)/eukrea_cpuimx51=
/flash-header.imxcfg
> diff --git a/arch/arm/boards/ccxmx51/Makefile b/arch/arm/boards/ccxmx51/M=
akefile
> index 6ba98b12d..50cf929c5 100644
> --- a/arch/arm/boards/ccxmx51/Makefile
> +++ b/arch/arm/boards/ccxmx51/Makefile
> @@ -1,3 +1,3 @@
>  obj-y					+=3D ccxmx51.o
> -lwl-y				+=3D lowlevel.o
> -obj-$(CONFIG_MACH_CCMX51_BASEBOARD)	+=3D ccxmx51js.o
> +lwl-y					+=3D lowlevel.o
> +bbenv-$(CONFIG_DEFAULT_ENVIRONMENT)	+=3D defaultenv-ccxmx51
> diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/=
ccxmx51.c
> index 71a51e192..308ede2bf 100644
> --- a/arch/arm/boards/ccxmx51/ccxmx51.c
> +++ b/arch/arm/boards/ccxmx51/ccxmx51.c
> @@ -2,476 +2,285 @@
>   * (C) Copyright 2009-2010 Digi International, Inc.
>   * Copyright (C) 2007 Sascha Hauer, Pengutronix
>   * (c) 2011 Eukrea Electromatique, Eric B=E9nard <eric@eukrea.com>
> + * Modified for barebox by Alexander Shiyan <shc_work@mail.ru>
>   *
>   * This program is free software; you can redistribute it and/or
>   * modify it under the terms of the GNU General Public License as
>   * published by the Free Software Foundation; either version 2 of
>   * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */

If you do a clean up of license, please convert it in separate patch to
// SPDX-License-Identifier: GPL-2.0-or-later=20

>  #include <common.h>
> -#include <net.h>
> +#include <envfs.h>
>  #include <init.h>
> -#include <environment.h>
> -#include <mach/imx51-regs.h>
> -#include <platform_data/eth-fec.h>
> +#include <net.h>
> +#include <notifier.h>
>  #include <asm/armlinux.h>
> -#include <generated/mach-types.h>
> -#include <partition.h>
> -#include <fs.h>
> -#include <fcntl.h>
>  #include <linux/sizes.h>
> -#include <nand.h>
> -#include <notifier.h>
> -#include <spi/spi.h>
>  #include <mfd/mc13xxx.h>
> -#include <asm/io.h>
> -#include <mach/imx-nand.h>
> -#include <mach/spi.h>
> -#include <mach/generic.h>
> -#include <mach/iomux-mx51.h>
> -#include <mach/devices-imx51.h>
> +#include <mfd/mc13892.h>
> +
> +#include <mach/bbu.h>
> +#include <mach/esdctl.h>
>  #include <mach/iim.h>
> -#include <mach/clock-imx51_53.h>
>  #include <mach/imx5.h>
> +#include <mach/imx51-regs.h>
>  #include <mach/revision.h>
> -#include <mach/esdctl.h>
> -
> -#include "ccxmx51.h"
> -
> -static struct ccxmx51_ident ccxmx51_ids[] =3D {
> -/* 0x00 */	{ "Unknown",						0,       0, 0, 0, 0 },
> -/* 0x01 */	{ "Not supported",					0,       0, 0, 0, 0 },
> -/* 0x02 */	{ "i.MX515@800MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M, =
0, 1, 1, 1 },
> -/* 0x03 */	{ "i.MX515@800MHz, PHY, Ext. Eth, Accel",		SZ_512M, 0, 1, 1, =
0 },
> -/* 0x04 */	{ "i.MX515@600MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M, =
1, 1, 1, 1 },
> -/* 0x05 */	{ "i.MX515@600MHz, PHY, Ext. Eth, Accel",		SZ_512M, 1, 1, 1, =
0 },
> -/* 0x06 */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_512M, 0, 1, 0, =
1 },
> -/* 0x07 */	{ "i.MX515@800MHz, PHY, Accel",				SZ_512M, 0, 1, 0, 0 },
> -/* 0x08 */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_256M, 0, 1, 0, =
1 },
> -/* 0x09 */	{ "i.MX515@800MHz, PHY, Accel",				SZ_256M, 0, 1, 0, 0 },
> -/* 0x0a */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_256M, 1, 1, 0, =
1 },
> -/* 0x0b */	{ "i.MX515@600MHz, PHY, Accel",				SZ_256M, 1, 1, 0, 0 },
> -/* 0x0c */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_128M, 0, 1, 0, =
1 },
> -/* 0x0d */	{ "i.MX512@800MHz",					SZ_128M, 0, 0, 0, 0 },
> -/* 0x0e */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_512M, 0, 1, 0, =
1 },
> -/* 0x0f */	{ "i.MX515@600MHz, PHY, Accel",				SZ_128M, 1, 1, 0, 0 },
> -/* 0x10 */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_128M, 1, 1, 0, =
1 },
> -/* 0x11 */	{ "i.MX515@800MHz, PHY, Accel",				SZ_128M, 0, 1, 0, 0 },
> -/* 0x12 */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_512M, 1, 1, 0, =
1 },
> -/* 0x13 */	{ "i.MX515@800MHz, PHY, Accel",				SZ_512M, 0, 1, 0, 0 },
> -};
> -
> -struct ccxmx51_ident *ccxmx51_id;
> -
> -struct imx_nand_platform_data nand_info =3D {
> -	.width		=3D 1,
> -	.hw_ecc		=3D 1,
> -	.flash_bbt	=3D 1,
> -};
> -
> -static struct fec_platform_data fec_info =3D {
> -	.xcv_type	=3D PHY_INTERFACE_MODE_MII,
> -	.phy_addr	=3D 7,
> -};
> =20
> -static iomux_v3_cfg_t ccxmx51_pads[] =3D {
> -	/* UART1 */
> -	MX51_PAD_UART1_RXD__UART1_RXD,
> -	MX51_PAD_UART1_TXD__UART1_TXD,
> -	/* UART2 */
> -	MX51_PAD_UART2_RXD__UART2_RXD,
> -	MX51_PAD_UART2_TXD__UART2_TXD,
> -	/* UART3 */
> -	MX51_PAD_UART3_RXD__UART3_RXD,
> -	MX51_PAD_UART3_TXD__UART3_TXD,
> -	/* I2C2 */
> -	MX51_PAD_GPIO1_2__I2C2_SCL,
> -	MX51_PAD_GPIO1_3__I2C2_SDA,
> -	/* eCSPI1 */
> -	MX51_PAD_CSPI1_MOSI__ECSPI1_MOSI,
> -	MX51_PAD_CSPI1_MISO__ECSPI1_MISO,
> -	MX51_PAD_CSPI1_SCLK__ECSPI1_SCLK,
> -	MX51_PAD_CSPI1_RDY__ECSPI1_RDY,
> -	MX51_PAD_CSPI1_SS0__ECSPI1_SS0,
> -	MX51_PAD_CSPI1_SS1__ECSPI1_SS1,
> -	/* FEC */
> -	MX51_PAD_DISP2_DAT14__FEC_RDATA0,
> -	MX51_PAD_DI2_DISP_CLK__FEC_RDATA1,
> -	MX51_PAD_DI_GP4__FEC_RDATA2,
> -	MX51_PAD_DISP2_DAT0__FEC_RDATA3,
> -	MX51_PAD_DISP2_DAT15__FEC_TDATA0,
> -	MX51_PAD_DISP2_DAT6__FEC_TDATA1,
> -	MX51_PAD_DISP2_DAT7__FEC_TDATA2,
> -	MX51_PAD_DISP2_DAT8__FEC_TDATA3,
> -	MX51_PAD_DISP2_DAT9__FEC_TX_EN,
> -	MX51_PAD_DISP2_DAT10__FEC_COL,
> -	MX51_PAD_DISP2_DAT11__FEC_RX_CLK,
> -	MX51_PAD_DISP2_DAT12__FEC_RX_DV,
> -	MX51_PAD_DISP2_DAT13__FEC_TX_CLK,
> -	MX51_PAD_DI2_PIN2__FEC_MDC,
> -	MX51_PAD_DI2_PIN4__FEC_CRS,
> -	MX51_PAD_DI2_PIN3__FEC_MDIO,
> -	MX51_PAD_DI_GP3__FEC_TX_ER,
> -	MX51_PAD_DISP2_DAT1__FEC_RX_ER,
> -	/* WEIM */
> -	MX51_PAD_EIM_DA0__EIM_DA0,
> -	MX51_PAD_EIM_DA1__EIM_DA1,
> -	MX51_PAD_EIM_DA2__EIM_DA2,
> -	MX51_PAD_EIM_DA3__EIM_DA3,
> -	MX51_PAD_EIM_DA4__EIM_DA4,
> -	MX51_PAD_EIM_DA5__EIM_DA5,
> -	MX51_PAD_EIM_DA6__EIM_DA6,
> -	MX51_PAD_EIM_DA7__EIM_DA7,
> -	MX51_PAD_EIM_D16__EIM_D16,
> -	MX51_PAD_EIM_D17__EIM_D17,
> -	MX51_PAD_EIM_D18__EIM_D18,
> -	MX51_PAD_EIM_D19__EIM_D19,
> -	MX51_PAD_EIM_D20__EIM_D20,
> -	MX51_PAD_EIM_D21__EIM_D21,
> -	MX51_PAD_EIM_D22__EIM_D22,
> -	MX51_PAD_EIM_D23__EIM_D23,
> -	MX51_PAD_EIM_D24__EIM_D24,
> -	MX51_PAD_EIM_D25__EIM_D25,
> -	MX51_PAD_EIM_D26__EIM_D26,
> -	MX51_PAD_EIM_D27__EIM_D27,
> -	MX51_PAD_EIM_D28__EIM_D28,
> -	MX51_PAD_EIM_D29__EIM_D29,
> -	MX51_PAD_EIM_D30__EIM_D30,
> -	MX51_PAD_EIM_D31__EIM_D31,
> -	MX51_PAD_EIM_OE__EIM_OE,
> -	MX51_PAD_EIM_CS5__EIM_CS5,
> -	/* NAND */
> -	MX51_PAD_NANDF_D0__NANDF_D0,
> -	MX51_PAD_NANDF_D1__NANDF_D1,
> -	MX51_PAD_NANDF_D2__NANDF_D2,
> -	MX51_PAD_NANDF_D3__NANDF_D3,
> -	MX51_PAD_NANDF_D4__NANDF_D4,
> -	MX51_PAD_NANDF_D5__NANDF_D5,
> -	MX51_PAD_NANDF_D6__NANDF_D6,
> -	MX51_PAD_NANDF_D7__NANDF_D7,
> -	MX51_PAD_NANDF_ALE__NANDF_ALE,
> -	MX51_PAD_NANDF_CLE__NANDF_CLE,
> -	MX51_PAD_NANDF_RE_B__NANDF_RE_B,
> -	MX51_PAD_NANDF_WE_B__NANDF_WE_B,
> -	MX51_PAD_NANDF_WP_B__NANDF_WP_B,
> -	MX51_PAD_NANDF_CS0__NANDF_CS0,
> -	MX51_PAD_NANDF_RB0__NANDF_RB0,
> -	/* LAN9221 IRQ (GPIO1.9) */
> -	MX51_PAD_GPIO1_9__GPIO1_9,
> -	/* MC13892 IRQ (GPIO1.5) */
> -	MX51_PAD_GPIO1_5__GPIO1_5,
> -	/* MMA7455LR IRQ1 (GPIO1.7) */
> -	MX51_PAD_GPIO1_7__GPIO1_7,
> -	/* MMA7455LR IRQ2 (GPIO1.6) */
> -	MX51_PAD_GPIO1_6__GPIO1_6,
> -	/* User GPIOs */
> -	MX51_PAD_GPIO1_0__GPIO1_0,
> -	MX51_PAD_GPIO1_1__GPIO1_1,
> -	MX51_PAD_GPIO1_8__GPIO1_8,
> -	MX51_PAD_DI1_PIN11__GPIO3_0,
> -	MX51_PAD_DI1_PIN12__GPIO3_1,
> -	MX51_PAD_DI1_PIN13__GPIO3_2,
> -	MX51_PAD_DI1_D0_CS__GPIO3_3,
> -	MX51_PAD_DI1_D1_CS__GPIO3_4,
> -	MX51_PAD_DISPB2_SER_DIN__GPIO3_5,
> -	MX51_PAD_DISPB2_SER_DIO__GPIO3_6,
> -	MX51_PAD_DISPB2_SER_CLK__GPIO3_7,
> -	MX51_PAD_DISPB2_SER_RS__GPIO3_8,
> -	MX51_PAD_NANDF_RB1__GPIO3_9,
> -	MX51_PAD_NANDF_RB2__GPIO3_10,
> -	MX51_PAD_NANDF_RB3__GPIO3_11,
> -	MX51_PAD_CSI1_D8__GPIO3_12,
> -	MX51_PAD_CSI1_D9__GPIO3_13,
> -	MX51_PAD_NANDF_CS1__GPIO3_17,
> -	MX51_PAD_NANDF_CS2__GPIO3_18,
> -	MX51_PAD_NANDF_CS3__GPIO3_19,
> -	MX51_PAD_NANDF_CS4__GPIO3_20,
> -	MX51_PAD_NANDF_CS5__GPIO3_21,
> -	MX51_PAD_NANDF_CS6__GPIO3_22,
> +static const struct ccxmx_ident {
> +	char		*id_string;
> +	unsigned int	mem_sz;
> +	unsigned int	cpu_mhz;
> +	unsigned char	eth0:1;
> +	unsigned char	eth1:1;
> +	unsigned char	wless:1;
> +	unsigned char	accel:1;
> +} *ccxmx_id, ccxmx51_ids[] =3D {
> +	[0x00] =3D { NULL /* Unknown */,					0,       0,   0, 0, 0, 0 },
> +	[0x01] =3D { NULL /* Not supported */,				0,       0,   0, 0, 0, 0 },
> +	[0x02] =3D { "i.MX515@800MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M,=
 800, 1, 1, 1, 1 },
> +	[0x03] =3D { "i.MX515@800MHz, PHY, Ext. Eth, Accel",		SZ_512M, 800, 1, =
1, 0, 1 },
> +	[0x04] =3D { "i.MX515@600MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M,=
 600, 1, 1, 1, 1 },
> +	[0x05] =3D { "i.MX515@600MHz, PHY, Ext. Eth, Accel",		SZ_512M, 600, 1, =
1, 0, 1 },
> +	[0x06] =3D { "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_512M, 800, 1, =
0, 1, 1 },
> +	[0x07] =3D { "i.MX515@800MHz, PHY, Accel",			SZ_512M, 800, 1, 0, 0, 1 },
> +	[0x08] =3D { "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_256M, 800, 1, =
0, 1, 1 },
> +	[0x09] =3D { "i.MX515@800MHz, PHY, Accel",			SZ_256M, 800, 1, 0, 0, 1 },
> +	[0x0a] =3D { "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_256M, 600, 1, =
0, 1, 1 },
> +	[0x0b] =3D { "i.MX515@600MHz, PHY, Accel",			SZ_256M, 600, 1, 0, 0, 1 },
> +	[0x0c] =3D { "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_128M, 800, 1, =
0, 1, 1 },
> +	[0x0d] =3D { "i.MX512@800MHz",					SZ_128M, 800, 0, 0, 0, 0 },
> +	[0x0e] =3D { "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_512M, 800, 1, =
0, 1, 1 },
> +	[0x0f] =3D { "i.MX515@600MHz, PHY, Accel",			SZ_128M, 600, 1, 0, 0, 1 },
> +	[0x10] =3D { "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_128M, 600, 1, =
0, 1, 1 },
> +	[0x11] =3D { "i.MX515@800MHz, PHY, Accel",			SZ_128M, 800, 1, 0, 0, 1 },
> +	[0x12] =3D { "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_512M, 600, 1, =
0, 1, 1 },
> +	[0x13] =3D { "i.MX515@800MHz, PHY, Accel",			SZ_512M, 800, 1, 0, 0, 1 },
>  };

It looks like cosmetic code refactoring, please do it in separate patch.

> -#define CCXMX51_ECSPI1_CS0	IMX_GPIO_NR(4, 24)
> -#define CCXMX51_ECSPI1_CS1	IMX_GPIO_NR(4, 25)
> -
> -static int ecspi_0_cs[] =3D { CCXMX51_ECSPI1_CS0, CCXMX51_ECSPI1_CS1, };
> +static u32 boardserial;
> =20
> -static struct spi_imx_master ecspi_0_data =3D {
> -	.chipselect	=3D ecspi_0_cs,
> -	.num_chipselect	=3D ARRAY_SIZE(ecspi_0_cs),
> -};
> -
> -static const struct spi_board_info ccxmx51_spi_board_info[] =3D {
> -	{
> -		.name		=3D "mc13892",
> -		.bus_num	=3D 0,
> -		.chip_select	=3D 0,
> -	},
> -};
> -
> -static struct imxusb_platformdata ccxmx51_otg_pdata =3D {
> -	.flags	=3D MXC_EHCI_MODE_UTMI_16_BIT | MXC_EHCI_POWER_PINS_ENABLED,
> -	.mode	=3D IMX_USB_MODE_HOST,
> -};
> -
> -static int ccxmx51_power_init(void)
> +static void ccxmx51_power_init(struct mc13xxx *mc13xxx)
>  {
> -	struct mc13xxx *mc13xxx_dev;
>  	u32 val;
> =20
> -	mc13xxx_dev =3D mc13xxx_get();
> -	if (!mc13xxx_dev)
> -		return -ENODEV;
> -
> -	mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_POWER_MISC, &val);
> -	/* Reset devices by clearing GP01-GPO4 */
> -	val &=3D ~((1 << 21) | (3 << 12) | (3 << 10) | (3 << 8) | (3 << 6));
> -	/* Switching off the PWGT1SPIEN */
> -	val |=3D (1 << 15);
> -	/* Switching on the PWGT2SPIEN */
> -	val &=3D ~(1 << 16);
> -	/* Enable short circuit protection */
> -	val |=3D (1 << 0);
> -	mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_POWER_MISC, val);
> -
> -	/* Allow charger to charge (4.2V and 560mA) */
> -	val =3D 0x238033;
> -	mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_CHARGE, val);
> -
> -	if (imx_silicon_revision() < IMX_CHIP_REV_3_0) {
> -		/* Set core voltage (SW1) to 1.1V */
> -		mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_SW_0, &val);
> -		val &=3D ~0x00001f;
> -		val |=3D  0x000014;
> -		mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_SW_0, val);
> -
> -		/* Setup VCC (SW2) to 1.25 */
> -		mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_SW_1, &val);
> -		val &=3D ~0x00001f;
> -		val |=3D  0x00001a;
> -		mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_SW_1, val);
> -
> -		/* Setup 1V2_DIG1 (SW3) to 1.25 */
> -		mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_SW_2, &val);
> -		val &=3D ~0x00001f;
> -		val |=3D  0x00001a;
> -		mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_SW_2, val);
> -	} else {
> -		/* Setup VCC (SW2) to 1.225 */
> -		mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_SW_1, &val);
> -		val &=3D ~0x00001f;
> -		val |=3D  0x000019;
> -		mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_SW_1, val);
> -
> -		/* Setup 1V2_DIG1 (SW3) to 1.2 */
> -		mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_SW_2, &val);
> -		val &=3D ~0x00001f;
> -		val |=3D  0x000018;
> -		mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_SW_2, val);
> -	}
> -
> -	if (mc13xxx_revision(mc13xxx_dev) <=3D MC13892_REVISION_2_0) {
> -		/* Set switchers in PWM mode for Atlas 2.0 and lower */
> -		/* Setup the switcher mode for SW1 & SW2*/
> -		mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_SW_4, &val);
> -		val &=3D ~0x003c0f;
> -		val |=3D  0x001405;
> -		mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_SW_4, val);
> -
> -		/* Setup the switcher mode for SW3 & SW4 */
> -		mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_SW_5, &val);
> -		val &=3D ~0x000f0f;
> -		val |=3D  0x000505;
> -		mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_SW_5, val);
> -	} else {
> -		/* Set switchers in Auto in NORMAL mode & STANDBY mode for Atlas 2.0a =
*/
> -		/* Setup the switcher mode for SW1 & SW2*/
> -		mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_SW_4, &val);
> -		val &=3D ~0x003c0f;
> -		val |=3D  0x002008;
> -		mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_SW_4, val);
> -
> -		/* Setup the switcher mode for SW3 & SW4 */
> -		mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_SW_5, &val);
> -		val &=3D ~0x000f0f;
> -		val |=3D  0x000808;
> -		mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_SW_5, val);
> -	}
> -
> -	/* Set VVIDEO to 2.775V, VAUDIO to 3V, VSD to 3.15V */
> -	mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_SETTING_1, &val);
> -	val &=3D ~0x0001fc;
> -	val |=3D  0x0001f4;
> -	mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_SETTING_1, val);
> +	/* Clear GP01-GPO4, enable short circuit protection,  PWGT1SPIEN off */
> +	val =3D MC13892_POWER_MISC_REGSCPEN | MC13892_POWER_MISC_PWGT1SPIEN;
> +	val |=3D MC13892_POWER_MISC_GPO4ADIN;
> +	mc13xxx_reg_write(mc13xxx, MC13892_REG_POWER_MISC, val);
> +
> +	/* Set ICHRG in externally powered mode, 4.2V, Disable thermistor */
> +	mc13xxx_reg_write(mc13xxx, MC13892_REG_CHARGE, 0xa3827b);
> +
> +	/* Set core voltage (SW1) to 1.1V NORMAL, 1.05V STANDBY */
> +	mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_0, &val);
> +	val &=3D ~(MC13892_SWx_SWx_VOLT_MASK << MC13892_SWMODE1_SHIFT);
> +	val |=3D MC13892_SWx_SWx_1_100V << MC13892_SWMODE1_SHIFT;
> +	val &=3D ~(MC13892_SWx_SWx_VOLT_MASK << MC13892_SWMODE2_SHIFT);
> +	val |=3D MC13892_SWx_SWx_1_050V << MC13892_SWMODE2_SHIFT;
> +	mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_0, val);
> +
> +	/* Setup VCC (SW2) to 1.225 NORMAL, 1.175V STANDBY */
> +	mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_1, &val);
> +	val &=3D ~(MC13892_SWx_SWx_VOLT_MASK << MC13892_SWMODE1_SHIFT);
> +	val |=3D MC13892_SWx_SWx_1_225V << MC13892_SWMODE1_SHIFT;
> +	val &=3D ~(MC13892_SWx_SWx_VOLT_MASK << MC13892_SWMODE2_SHIFT);
> +	val |=3D MC13892_SWx_SWx_1_175V << MC13892_SWMODE2_SHIFT;
> +	mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_1, val);
> +
> +	/* Setup 1V2_DIG1 (SW3) to 1.2 NORMAL, 1.15V STANDBY */
> +	mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_2, &val);
> +	val &=3D ~(MC13892_SWx_SWx_VOLT_MASK << MC13892_SWMODE1_SHIFT);
> +	val |=3D MC13892_SWx_SWx_1_200V << MC13892_SWMODE1_SHIFT;
> +	val &=3D ~(MC13892_SWx_SWx_VOLT_MASK << MC13892_SWMODE2_SHIFT);
> +	val |=3D MC13892_SWx_SWx_1_150V << MC13892_SWMODE2_SHIFT;
> +	mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_2, val);
> +
> +	/* Set SW1-SW4 switcher in Auto in NORMAL & STANDBY mode */
> +	mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_4, &val);
> +	val &=3D ~(MC13892_SWMODE_MASK << MC13892_SWMODE1_SHIFT);
> +	val |=3D MC13892_SWMODE_AUTO_AUTO << MC13892_SWMODE1_SHIFT;
> +	val &=3D ~(MC13892_SWMODE_MASK << MC13892_SWMODE2_SHIFT);
> +	val |=3D MC13892_SWMODE_AUTO_AUTO << MC13892_SWMODE2_SHIFT;
> +	/* Disable current limit */
> +	val |=3D 1 << 22;
> +	mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_4, val);
> +
> +	mc13xxx_reg_read(mc13xxx, MC13892_REG_SW_5, &val);
> +	val &=3D ~(MC13892_SWMODE_MASK << MC13892_SWMODE3_SHIFT);
> +	val |=3D MC13892_SWMODE_AUTO_AUTO << MC13892_SWMODE3_SHIFT;
> +	val &=3D ~(MC13892_SWMODE_MASK << MC13892_SWMODE4_SHIFT);
> +	val |=3D MC13892_SWMODE_AUTO_AUTO << MC13892_SWMODE4_SHIFT;
> +	/* Enable SWBST */
> +	val |=3D 1 << 20;
> +	mc13xxx_reg_write(mc13xxx, MC13892_REG_SW_5, val);
> +
> +	/* Set VVIDEO=3D2.775V, VAUDIO=3D3V, VSD=3D3.15V */
> +	val =3D MC13892_SETTING_1_VVIDEO_2_775 | MC13892_SETTING_1_VAUDIO_3_0;
> +	val |=3D MC13892_SETTING_1_VSD_3_15;
> +	mc13xxx_reg_write(mc13xxx, MC13892_REG_SETTING_1, val);
> =20
>  	/* Configure VGEN3 and VCAM regulators to use external PNP */
> -	val =3D 0x000208;
> -	mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_MODE_1, val);
> +	val =3D MC13892_MODE_1_VGEN3CONFIG | MC13892_MODE_1_VCAMCONFIG;
> +	mc13xxx_reg_write(mc13xxx, MC13892_REG_MODE_1, val);
>  	udelay(200);
> =20
> -	/* Set VGEN3 to 1.8V */
> -	mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_SETTING_0, &val);
> -	val &=3D ~(1 << 14);
> -	mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_SETTING_0, val);
> -
> -	/* Enable VGEN3, VCAM, VAUDIO, VVIDEO, VSD regulators */
> -	val =3D 0x049249;
> -	mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_MODE_1, val);
> +	/* Set VGEN2=3D3.15V, VGEN3=3D1.8V, VDIG=3D1.25V, VCAM=3D2.75V */
> +	mc13xxx_reg_read(mc13xxx, MC13892_REG_SETTING_0, &val);
> +	val &=3D ~(MC13892_SETTING_0_VGEN2_MASK | MC13892_SETTING_0_VGEN3_MASK);
> +	val |=3D MC13892_SETTING_0_VGEN2_3_15 | MC13892_SETTING_0_VGEN3_1_8;
> +	val &=3D ~(MC13892_SETTING_0_VDIG_MASK | MC13892_SETTING_0_VCAM_MASK);
> +	val |=3D MC13892_SETTING_0_VDIG_1_25 | MC13892_SETTING_0_VCAM_2_75;
> +	mc13xxx_reg_write(mc13xxx, MC13892_REG_SETTING_0, val);
> =20
> -	/* Enable USB1 charger */
> -	val =3D 0x000409;
> -	mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_USB1, val);
> +	/* Enable OTG function */
> +	mc13xxx_reg_write(mc13xxx, MC13892_REG_USB1, 0x409);
> =20
> -	/* Set VCOIN to 3.0V and Enable It */
> -	mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_POWER_CTL0, &val);
> +	/* Enable VGEN3, VCAM, VAUDIO, VVIDEO, VSD regulators */
> +	val =3D MC13892_MODE_1_VGEN3EN | MC13892_MODE_1_VGEN3CONFIG;
> +	val |=3D MC13892_MODE_1_VCAMEN | MC13892_MODE_1_VCAMCONFIG;
> +	val |=3D MC13892_MODE_1_VVIDEOEN | MC13892_MODE_1_VAUDIOEN;
> +	val |=3D MC13892_MODE_1_VSDEN;
> +	mc13xxx_reg_write(mc13xxx, MC13892_REG_MODE_1, val);
> +
> +	/* Set VCOIN=3D3.0V, Keeps VSRTC and CLK32KMCU */
> +	mc13xxx_reg_read(mc13xxx, MC13892_REG_POWER_CTL0, &val);
>  	val &=3D ~(7 << 20);
> -	val |=3D (4 << 20) | (1 << 23);
> -	mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_POWER_CTL0, val);
> -	/* Keeps VSRTC and CLK32KMCU */
> -	val |=3D (1 << 4);
> -	mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_POWER_CTL0, val);
> -
> -	/* De-assert reset of external devices on GP01, GPO2, GPO3 and GPO4 */
> -	mc13xxx_reg_read(mc13xxx_dev, MC13892_REG_POWER_MISC, &val);
> +	val |=3D (1 << 4) | (4 << 20) | (1 << 23);
> +	mc13xxx_reg_write(mc13xxx, MC13892_REG_POWER_CTL0, val);
> +
> +	/* De-assert reset of external devices on GP01-GPO4 */
> +	mc13xxx_reg_read(mc13xxx, MC13892_REG_POWER_MISC, &val);
>  	/* GPO1 - External */
>  	/* GP02 - LAN9221 Power */
>  	/* GP03 - FEC Reset */
>  	/* GP04 - Wireless Power */
> -	if (IS_ENABLED(CONFIG_DRIVER_NET_SMC911X) && ccxmx51_id->eth1) {
> -		val |=3D (1 << 8);
> -		mdelay(50);
> +	if (ccxmx_id->eth1) {
> +		val |=3D MC13892_POWER_MISC_GPO2EN;
> +		mdelay(100);
>  	}
> -	if (IS_ENABLED(CONFIG_DRIVER_NET_FEC_IMX) && ccxmx51_id->eth0)
> -		val |=3D (1 << 10);
> -	if (ccxmx51_id->wless)
> -		val |=3D (1 << 12);
> -	mc13xxx_reg_write(mc13xxx_dev, MC13892_REG_POWER_MISC, val);
> +	if (ccxmx_id->eth0)
> +		val |=3D MC13892_POWER_MISC_GPO3EN;
> +	if (ccxmx_id->wless)
> +		val |=3D MC13892_POWER_MISC_GPO4EN;
> +	mc13xxx_reg_write(mc13xxx, MC13892_REG_POWER_MISC, val);
> =20
>  	udelay(100);
> =20
> -	return 0;
> +	console_flush();
> +	imx51_init_lowlevel(ccxmx_id->cpu_mhz);
> +	clock_notifier_call_chain();
> +
> +	printf("MC13892 PMIC initialized.\n");

please, use pr_info, or better dev_info() if you wont to print some
thing from the driver.

>  }

Hm, I assume, PMIC code should be moved to drivers/regulator/..

> -/*
> - * On this board the SDRAM is always configured for 512Mib. The real
> - * size is determined by the board id read from the IIM module.
> - */
> -static int ccxmx51_sdram_fixup(void)
> +static int ccxmx51_is_compatible(void)
>  {
> -	imx_esdctl_disable();
> +	return of_machine_is_compatible("digi,connectcore-ccxmx51-som");
> +}
> +
> +static void ccxmx51_disable_device(struct device_node *root, const char =
*label)
> +{
> +	struct device_node *np =3D of_find_node_by_name(root, label);
> +	if (np)
> +		of_device_disable(np);
> +}
> +
> +static int ccxmx51_board_fixup(struct device_node *root, void *unused)
> +{
> +	char *serial;
> +
> +	if (!ccxmx_id->accel)
> +		ccxmx51_disable_device(root, "mma7455l@1d");
> +
> +	if (!ccxmx_id->eth0)
> +		ccxmx51_disable_device(root, "ethernet@83fec000");
> +
> +	if (!ccxmx_id->eth1)
> +		ccxmx51_disable_device(root, "lan9221@5,0");
> +
> +	if (!ccxmx_id->wless)
> +		ccxmx51_disable_device(root, "esdhc@70008000");
> +
> +	serial =3D basprintf("%08x%08x", 0, boardserial);
> +	of_set_property(root, "serial-number", serial, strlen(serial) + 1, 1);
> +	free(serial);

should it be done by devicetree?

>  	return 0;
>  }
> -postcore_initcall(ccxmx51_sdram_fixup);
> =20
> -static int ccxmx51_memory_init(void)
> +static int ccxmx51_sdram_fixup(void)
>  {
> +	if (!ccxmx51_is_compatible())
> +		return 0;
> +
>  	arm_add_mem_device("ram0", MX51_CSD0_BASE_ADDR, SZ_128M);
> =20
> +	/*
> +	 * On this board the SDRAM is always configured for 512Mib. The real
> +	 * size is determined by the board id read from the IIM module.
> +	 */
> +	imx_esdctl_disable();
> +
> +	of_register_fixup(ccxmx51_board_fixup, NULL);
> +
>  	return 0;
>  }
> -mem_initcall(ccxmx51_memory_init);
> +postcore_initcall(ccxmx51_sdram_fixup);
> =20
> -static int ccxmx51_devices_init(void)
> +static int ccxmx51_init(void)
>  {
> +	char manloc =3D 'N';
>  	u8 hwid[6];
> -	int pwr;
> -	char manloc;
> -
> -	if ((imx_iim_read(1, 9, hwid, sizeof(hwid)) !=3D sizeof(hwid)) || (hwid=
[0] < 0x02) || (hwid[0] >=3D ARRAY_SIZE(ccxmx51_ids)))
> -		memset(hwid, 0x00, sizeof(hwid));
> -
> -	ccxmx51_id =3D &ccxmx51_ids[hwid[0]];
> -	printf("Module Variant: %s (0x%02x)\n", ccxmx51_id->id_string, hwid[0]);
> -
> -	if (hwid[0]) {
> -		printf("Module HW Rev : %02x\n", hwid[1] + 1);
> -		switch (hwid[2] & 0xc0) {
> -		case 0x00:
> -			manloc =3D 'B';
> -			break;
> -		case 0x40:
> -			manloc =3D 'W';
> -			break;
> -		case 0x80:
> -			manloc =3D 'S';
> -			break;
> -		default:
> -			manloc =3D 'N';
> -			break;
> -		}
> -		printf("Module Serial : %c%d\n", manloc, ((hwid[2] & 0x3f) << 24) | (h=
wid[3] << 16) | (hwid[4] << 8) | hwid[5]);
> -		if ((ccxmx51_id->mem_sz - SZ_128M) > 0)
> -			arm_add_mem_device("ram1", MX51_CSD0_BASE_ADDR + SZ_128M, ccxmx51_id-=
>mem_sz - SZ_128M);
> -	} else
> -		return -ENOSYS;
> -
> -	imx51_add_uart1();
> -	imx51_add_uart2();
> -
> -	spi_register_board_info(ccxmx51_spi_board_info, ARRAY_SIZE(ccxmx51_spi_=
board_info));
> -	imx51_add_spi0(&ecspi_0_data);
> -
> -	pwr =3D ccxmx51_power_init();
> -	console_flush();
> -	imx51_init_lowlevel((ccxmx51_id->industrial || pwr) ? 600 : 800);
> -	clock_notifier_call_chain();
> -	if (pwr)
> -		printf("Could not setup PMIC. Clocks not adjusted.\n");
> =20
> -	imx51_add_i2c1(NULL);
> +	if (!ccxmx51_is_compatible())
> +		return 0;
> =20
> -	imx51_add_nand(&nand_info);
> -	devfs_add_partition("nand0", 0x00000, 0x80000, DEVFS_PARTITION_FIXED, "=
self_raw");
> -	dev_add_bb_dev("self_raw", "self0");
> -	devfs_add_partition("nand0", 0x80000, 0x40000, DEVFS_PARTITION_FIXED, "=
env_raw");
> -	dev_add_bb_dev("env_raw", "env0");
> -
> -	if (IS_ENABLED(CONFIG_DRIVER_NET_FEC_IMX) && ccxmx51_id->eth0 && !pwr) {
> -		eth_register_ethaddr(0, hwid);
> -		imx51_add_fec(&fec_info);
> +	if ((imx_iim_read(1, 9, hwid, sizeof(hwid)) !=3D sizeof(hwid)) ||
> +	    (hwid[0] < 0x02) || (hwid[0] >=3D ARRAY_SIZE(ccxmx51_ids))) {
> +		printf("Unknown board variant (0x%02x). System halted.\n", hwid[0]);
> +		hang();
>  	}
> =20
> -	if (IS_ENABLED(CONFIG_DRIVER_NET_SMC911X) && ccxmx51_id->eth1 && !pwr) {
> -		/* Configure the WEIM CS5 timming, bus width, etc */
> -		/* 16 bit on DATA[31..16], not multiplexed, async */
> -		writel(0x00420081, MX51_WEIM_BASE_ADDR + WEIM_CSxGCR1(5));
> -		/* ADH has not effect on non muxed bus */
> -		writel(0, MX51_WEIM_BASE_ADDR + WEIM_CSxGCR2(5));
> -		/* RWSC=3D50, RADVA=3D2, RADVN=3D6, OEA=3D0, OEN=3D0, RCSA=3D0, RCSN=
=3D0 */
> -		writel(0x32260000, MX51_WEIM_BASE_ADDR + WEIM_CSxRCR1(5));
> -		/* APR=3D0 */
> -		writel(0, MX51_WEIM_BASE_ADDR + WEIM_CSxRCR2(5));
> -		/* WAL=3D0, WBED=3D1, WWSC=3D50, WADVA=3D2, WADVN=3D6, WEA=3D0, WEN=3D=
0, WCSA=3D0 */
> -		writel(0x72080f00, MX51_WEIM_BASE_ADDR + WEIM_CSxWCR1(5));
> -
> -		/* LAN9221 network controller */
> -		add_generic_device("smc911x", 1, NULL, MX51_CS5_BASE_ADDR, SZ_4K, IORE=
SOURCE_MEM, NULL);
> +	ccxmx_id =3D &ccxmx51_ids[hwid[0]];
> +
> +	switch (hwid[2] & 0xc0) {
> +	case 0x00:
> +		manloc =3D 'B';
> +		break;
> +	case 0x40:
> +		manloc =3D 'W';
> +		break;
> +	case 0x80:
> +		manloc =3D 'S';
> +		break;
> +	default:
> +		break;
>  	}
> =20
> -	imx51_add_usbotg(&ccxmx51_otg_pdata);
> +	eth_register_ethaddr(0, hwid);
> =20
> -	armlinux_set_architecture(ccxmx51_id->wless ? MACH_TYPE_CCWMX51 : MACH_=
TYPE_CCMX51);
> +	boardserial =3D ((hwid[2] & 0x3f) << 24) | (hwid[3] << 16) | (hwid[4] <=
< 8) | hwid[5];
> =20
> -	return 0;
> -}
> -device_initcall(ccxmx51_devices_init);
> +	printf("Module Variant: %s (0x%02x)\n", ccxmx_id->id_string, hwid[0]);
> +	printf("Module HW Rev : %02x\n", hwid[1] + 1);
> +	printf("Module Serial : %c%d\n", manloc, boardserial);
> =20
> -static int ccxmx51_console_init(void)
> -{
> -	mxc_iomux_v3_setup_multiple_pads(ccxmx51_pads, ARRAY_SIZE(ccxmx51_pads)=
);
> +	if ((ccxmx_id->mem_sz - SZ_128M) > 0)
> +		arm_add_mem_device("ram1", MX51_CSD0_BASE_ADDR + SZ_128M,
> +				   ccxmx_id->mem_sz - SZ_128M);
> +
> +	mc13xxx_register_init_callback(ccxmx51_power_init);
> =20
>  	barebox_set_model("Digi ConnectCore i.MX51");
> -	barebox_set_hostname("ccmx51");
> +	barebox_set_hostname("ccxmx51");

barebox_set_model() and barebox_set_hostname() are not actually needed,
barebox can use devicetree to extract this info.

> +	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/mmc0",
> +						BBU_HANDLER_FLAG_DEFAULT);

this can be done in separate patch.

> -	imx51_add_uart0();
> +	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
> +		defaultenv_append_directory(defaultenv_ccxmx51);

do we really need extra defaultenv_append_directory() for this board?

>  	return 0;
>  }
> -console_initcall(ccxmx51_console_init);
> +fs_initcall(ccxmx51_init);
> diff --git a/arch/arm/boards/ccxmx51/ccxmx51.h b/arch/arm/boards/ccxmx51/=
ccxmx51.h
> deleted file mode 100644
> index 3feacac03..000000000
> --- a/arch/arm/boards/ccxmx51/ccxmx51.h
> +++ /dev/null
> @@ -1,35 +0,0 @@
> -/*
> - * Copyright 2010 Digi International Inc. All Rights Reserved.
> - */
> -
> -/*
> - * The code contained herein is licensed under the GNU General Public
> - * License. You may obtain a copy of the GNU General Public License
> - * Version 2 or later at the following locations:
> - *
> - * http://www.opensource.org/licenses/gpl-license.html
> - * http://www.gnu.org/copyleft/gpl.html
> - */
> -
> -#ifndef _CCXMX51_H_
> -#define _CCXMX51_H_
> -
> -struct ccxmx51_hwid {
> -	u8		variant;
> -	u8		version;
> -	u32		sn;
> -	char		mloc;
> -};
> -
> -struct ccxmx51_ident {
> -	const char	*id_string;
> -	const int	mem_sz;
> -	const char	industrial;
> -	const char	eth0;
> -	const char	eth1;
> -	const char	wless;
> -};
> -
> -extern struct ccxmx51_ident *ccxmx51_id;
> -
> -#endif	/* _CCXMX51_H_ */
> diff --git a/arch/arm/boards/ccxmx51/ccxmx51js.c b/arch/arm/boards/ccxmx5=
1/ccxmx51js.c
> deleted file mode 100644
> index 7f068e239..000000000
> --- a/arch/arm/boards/ccxmx51/ccxmx51js.c
> +++ /dev/null
> @@ -1,103 +0,0 @@
> -/*
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - */
> -
> -#include <common.h>
> -#include <io.h>
> -#include <init.h>
> -#include <gpio.h>
> -#include <mci.h>
> -#include <asm/armlinux.h>
> -#include <mach/generic.h>
> -#include <mach/imx51-regs.h>
> -#include <mach/iomux-mx51.h>
> -#include <mach/devices-imx51.h>
> -#include <generated/mach-types.h>
> -
> -#include "ccxmx51.h"
> -
> -#define CCXMX51JS_USBH1_RESET	IMX_GPIO_NR(3, 8)
> -#define CCXMX51JS_SD3_WP	IMX_GPIO_NR(3, 17)
> -
> -static iomux_v3_cfg_t ccxmx51js_pads[] =3D {
> -	/* SD1 */
> -	MX51_PAD_SD1_CLK__SD1_CLK,
> -	MX51_PAD_SD1_CMD__SD1_CMD,
> -	MX51_PAD_SD1_DATA0__SD1_DATA0,
> -	MX51_PAD_SD1_DATA1__SD1_DATA1,
> -	MX51_PAD_SD1_DATA2__SD1_DATA2,
> -	MX51_PAD_SD1_DATA3__SD1_DATA3,
> -	/* SD3 */
> -	MX51_PAD_NANDF_CS7__SD3_CLK,
> -	MX51_PAD_NANDF_RDY_INT__SD3_CMD,
> -	MX51_PAD_NANDF_D8__SD3_DATA0,
> -	MX51_PAD_NANDF_D9__SD3_DATA1,
> -	MX51_PAD_NANDF_D10__SD3_DATA2,
> -	MX51_PAD_NANDF_D11__SD3_DATA3,
> -	MX51_PAD_NANDF_D12__SD3_DAT4,
> -	MX51_PAD_NANDF_D13__SD3_DAT5,
> -	MX51_PAD_NANDF_D14__SD3_DAT6,
> -	MX51_PAD_NANDF_D15__SD3_DAT7,
> -	/* USB HOST1 */
> -	MX51_PAD_USBH1_CLK__USBH1_CLK,
> -	MX51_PAD_USBH1_DIR__USBH1_DIR,
> -	MX51_PAD_USBH1_NXT__USBH1_NXT,
> -	MX51_PAD_USBH1_STP__USBH1_STP,
> -	MX51_PAD_USBH1_DATA0__USBH1_DATA0,
> -	MX51_PAD_USBH1_DATA1__USBH1_DATA1,
> -	MX51_PAD_USBH1_DATA2__USBH1_DATA2,
> -	MX51_PAD_USBH1_DATA3__USBH1_DATA3,
> -	MX51_PAD_USBH1_DATA4__USBH1_DATA4,
> -	MX51_PAD_USBH1_DATA5__USBH1_DATA5,
> -	MX51_PAD_USBH1_DATA6__USBH1_DATA6,
> -	MX51_PAD_USBH1_DATA7__USBH1_DATA7,
> -};
> -
> -static struct esdhc_platform_data sdhc1_pdata =3D {
> -	.cd_type	=3D ESDHC_CD_NONE,
> -	.wp_type	=3D ESDHC_WP_NONE,
> -	.caps		=3D MMC_CAP_4_BIT_DATA,
> -};
> -
> -static struct esdhc_platform_data sdhc3_pdata =3D {
> -	.cd_type	=3D ESDHC_CD_NONE,
> -	.wp_type	=3D ESDHC_WP_GPIO,
> -	.wp_gpio	=3D CCXMX51JS_SD3_WP,
> -	.caps		=3D MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA,
> -};
> -
> -static struct imxusb_platformdata ccxmx51js_usbhost1_pdata =3D {
> -	.flags	=3D MXC_EHCI_MODE_ULPI | MXC_EHCI_ITC_NO_THRESHOLD,
> -	.mode	=3D IMX_USB_MODE_HOST,
> -};
> -
> -static int ccxmx51js_init(void)
> -{
> -	mxc_iomux_v3_setup_multiple_pads(ccxmx51js_pads, ARRAY_SIZE(ccxmx51js_p=
ads));
> -
> -	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC)) {
> -		imx51_add_mmc0(&sdhc1_pdata);
> -		imx51_add_mmc2(&sdhc3_pdata);
> -	}
> -
> -	gpio_direction_output(CCXMX51JS_USBH1_RESET, 0);
> -	mdelay(10);
> -	gpio_set_value(CCXMX51JS_USBH1_RESET, 1);
> -	mdelay(10);
> -	imx51_add_usbh1(&ccxmx51js_usbhost1_pdata);
> -
> -	armlinux_set_architecture(ccxmx51_id->wless ? MACH_TYPE_CCWMX51JS : MAC=
H_TYPE_CCMX51JS);
> -
> -	return 0;
> -}
> -
> -late_initcall(ccxmx51js_init);
> diff --git a/arch/arm/boards/ccxmx51/env/boot/nand b/arch/arm/boards/ccxm=
x51/defaultenv-ccxmx51/boot/nand
> similarity index 100%
> rename from arch/arm/boards/ccxmx51/env/boot/nand
> rename to arch/arm/boards/ccxmx51/defaultenv-ccxmx51/boot/nand
> diff --git a/arch/arm/boards/ccxmx51/env/nv/autoboot_timeout b/arch/arm/b=
oards/ccxmx51/defaultenv-ccxmx51/nv/autoboot_timeout
> similarity index 100%
> rename from arch/arm/boards/ccxmx51/env/nv/autoboot_timeout
> rename to arch/arm/boards/ccxmx51/defaultenv-ccxmx51/nv/autoboot_timeout
> diff --git a/arch/arm/boards/ccxmx51/env/nv/boot.default b/arch/arm/board=
s/ccxmx51/defaultenv-ccxmx51/nv/boot.default
> similarity index 100%
> rename from arch/arm/boards/ccxmx51/env/nv/boot.default
> rename to arch/arm/boards/ccxmx51/defaultenv-ccxmx51/nv/boot.default
> diff --git a/arch/arm/boards/ccxmx51/defaultenv-ccxmx51/nv/linux.bootargs=
=2Ebase b/arch/arm/boards/ccxmx51/defaultenv-ccxmx51/nv/linux.bootargs.base

I would really prefer to remove board specific env if possible, it is
hard to keep it in sync with real default env.

> new file mode 100644
> index 000000000..7106a19f7
> --- /dev/null
> +++ b/arch/arm/boards/ccxmx51/defaultenv-ccxmx51/nv/linux.bootargs.base
> @@ -0,0 +1 @@
> +earlyprintk
> diff --git a/arch/arm/boards/ccxmx51/env/init/mtdparts-nand b/arch/arm/bo=
ards/ccxmx51/env/init/mtdparts-nand
> deleted file mode 100644
> index 27ed38a88..000000000
> --- a/arch/arm/boards/ccxmx51/env/init/mtdparts-nand
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -#!/bin/sh
> -
> -mtdparts=3D"512k(barebox)ro,256k(bareboxenv),3328k(kernel),-(root)"
> -kernelname=3D"mxc_nand"
> -
> -mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
> diff --git a/arch/arm/boards/ccxmx51/lowlevel.c b/arch/arm/boards/ccxmx51=
/lowlevel.c
> index 2b3dc42e8..207d68dcd 100644
> --- a/arch/arm/boards/ccxmx51/lowlevel.c
> +++ b/arch/arm/boards/ccxmx51/lowlevel.c
> @@ -5,8 +5,16 @@
>  #include <asm/barebox-arm-head.h>
>  #include <mach/imx51-regs.h>
> =20
> -void __naked barebox_arm_reset_vector(void)
> +ENTRY_FUNCTION(start_ccxmx51, r0, r1, r2)
>  {
> +	extern char __dtb_imx51_ccxmx51_start[];
> +	void *fdt;
> +
>  	imx5_cpu_lowlevel_init();
> -	barebox_arm_entry(MX51_CSD0_BASE_ADDR, SZ_128M, NULL);
> +
> +	arm_setup_stack(0x20000000 - 16);
> +
> +	fdt =3D __dtb_imx51_ccxmx51_start + get_runtime_offset();
> +
> +	barebox_arm_entry(MX51_CSD0_BASE_ADDR, SZ_128M, fdt);
>  }
> diff --git a/arch/arm/configs/ccmx51_defconfig b/arch/arm/configs/ccmx51_=
defconfig
> deleted file mode 100644
> index c16f73f7b..000000000
> --- a/arch/arm/configs/ccmx51_defconfig
> +++ /dev/null
> @@ -1,60 +0,0 @@
> -CONFIG_ARCH_IMX=3Dy
> -CONFIG_MACH_CCMX51=3Dy
> -CONFIG_AEABI=3Dy
> -CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=3Dy
> -CONFIG_MMU=3Dy
> -CONFIG_MALLOC_SIZE=3D0x2000000
> -CONFIG_HUSH_FANCY_PROMPT=3Dy
> -CONFIG_CMDLINE_EDITING=3Dy
> -CONFIG_AUTO_COMPLETE=3Dy
> -CONFIG_BOOTM_SHOW_TYPE=3Dy
> -CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
> -CONFIG_DEFAULT_ENVIRONMENT_PATH=3D"arch/arm/boards/ccxmx51/env"
> -CONFIG_LONGHELP=3Dy
> -CONFIG_CMD_MEMINFO=3Dy
> -CONFIG_CMD_ARM_MMUINFO=3Dy
> -CONFIG_CMD_BOOTZ=3Dy
> -CONFIG_CMD_GO=3Dy
> -CONFIG_CMD_RESET=3Dy
> -CONFIG_CMD_PARTITION=3Dy
> -CONFIG_CMD_EXPORT=3Dy
> -CONFIG_CMD_PRINTENV=3Dy
> -CONFIG_CMD_MAGICVAR=3Dy
> -CONFIG_CMD_MAGICVAR_HELP=3Dy
> -CONFIG_CMD_SAVEENV=3Dy
> -CONFIG_CMD_SLEEP=3Dy
> -CONFIG_CMD_DHCP=3Dy
> -CONFIG_CMD_PING=3Dy
> -CONFIG_CMD_ECHO_E=3Dy
> -CONFIG_CMD_EDIT=3Dy
> -CONFIG_CMD_READLINE=3Dy
> -CONFIG_CMD_TIMEOUT=3Dy
> -CONFIG_CMD_CRC=3Dy
> -CONFIG_CMD_CRC_CMP=3Dy
> -CONFIG_CMD_CLK=3Dy
> -CONFIG_CMD_FLASH=3Dy
> -CONFIG_CMD_GPIO=3Dy
> -CONFIG_CMD_I2C=3Dy
> -CONFIG_CMD_NANDTEST=3Dy
> -CONFIG_CMD_SPI=3Dy
> -CONFIG_CMD_OFTREE=3Dy
> -CONFIG_NET=3Dy
> -CONFIG_DRIVER_NET_FEC_IMX=3Dy
> -CONFIG_DRIVER_NET_SMC911X=3Dy
> -CONFIG_I2C=3Dy
> -CONFIG_I2C_IMX=3Dy
> -CONFIG_MTD=3Dy
> -CONFIG_NAND=3Dy
> -CONFIG_NAND_IMX=3Dy
> -CONFIG_USB_HOST=3Dy
> -CONFIG_USB_IMX_CHIPIDEA=3Dy
> -CONFIG_USB_EHCI=3Dy
> -CONFIG_USB_ULPI=3Dy
> -CONFIG_USB_STORAGE=3Dy
> -CONFIG_MCI=3Dy
> -CONFIG_MCI_IMX_ESDHC=3Dy
> -CONFIG_FS_CRAMFS=3Dy
> -CONFIG_FS_FAT=3Dy
> -CONFIG_FS_FAT_WRITE=3Dy
> -CONFIG_FS_FAT_LFN=3Dy
> -CONFIG_LZO_DECOMPRESS=3Dy
> diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_=
defconfig
> index 64b202b9d..2068a6cee 100644
> --- a/arch/arm/configs/imx_v7_defconfig
> +++ b/arch/arm/configs/imx_v7_defconfig
> @@ -1,6 +1,7 @@
>  CONFIG_ARCH_IMX=3Dy
>  CONFIG_IMX_MULTI_BOARDS=3Dy
>  CONFIG_MACH_KINDLE_MX50=3Dy
> +CONFIG_MACH_CCMX51=3Dy
>  CONFIG_MACH_EFIKA_MX_SMARTBOOK=3Dy
>  CONFIG_MACH_EMBEDSKY_E9=3Dy
>  CONFIG_MACH_FREESCALE_MX51_PDK=3Dy
> @@ -41,7 +42,6 @@ CONFIG_MACH_PHYTEC_PHYCORE_IMX7=3Dy
>  CONFIG_MACH_FREESCALE_MX7_SABRESD=3Dy
>  CONFIG_MACH_NXP_IMX6ULL_EVK=3Dy
>  CONFIG_MACH_GRINN_LITEBOARD=3Dy
> -CONFIG_IMX_IIM=3Dy

Why this was silently changed by this patch?

>  CONFIG_IMX_IIM_FUSE_BLOW=3Dy
>  CONFIG_THUMB2_BAREBOX=3Dy
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=3Dy
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index c08b35a10..4af286a11 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -21,6 +21,7 @@ pbl-dtb-$(CONFIG_MACH_EMBEDSKY_E9) +=3D imx6q-embedsky-=
e9.dtb.o
>  pbl-dtb-$(CONFIG_MACH_FREESCALE_MX51_PDK) +=3D imx51-babbage.dtb.o
>  pbl-dtb-$(CONFIG_MACH_FREESCALE_MX53_LOCO) +=3D imx53-qsb.dtb.o imx53-qs=
rb.dtb.o
>  pbl-dtb-$(CONFIG_MACH_TX53) +=3D imx53-tx53-xx30.dtb.o imx53-tx53-1011.d=
tb.o
> +pbl-dtb-$(CONFIG_MACH_CCMX51) +=3D imx51-ccxmx51.dtb.o
>  pbl-dtb-$(CONFIG_MACH_CCMX53) +=3D imx53-ccxmx53.dtb.o
>  pbl-dtb-$(CONFIG_MACH_FREESCALE_MX53_VMX53) +=3D imx53-voipac-bsb.dtb.o
>  pbl-dtb-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) +=3D imx7d-sdb.dtb.o
> diff --git a/arch/arm/dts/imx51-ccxmx51.dts b/arch/arm/dts/imx51-ccxmx51.=
dts
> new file mode 100644
> index 000000000..2d9c7615a
> --- /dev/null
> +++ b/arch/arm/dts/imx51-ccxmx51.dts
> @@ -0,0 +1,38 @@
> +#include <arm/imx51-digi-connectcore-jsk.dts>
> +
> +/ {
> +	chosen {
> +		stdout-path =3D &uart1;
> +
> +		environment {
> +			compatible =3D "barebox,environment";
> +			device-path =3D &nfc, "partname:env";
> +		};
> +	};
> +};
> +
> +&iim {
> +	barebox,provide-mac-address =3D <&fec 1 9>;
> +};
> +
> +&nfc {
> +	partition@0 {
> +		label =3D "boot";
> +		reg =3D <0x00000 0x80000>;
> +	};
> +
> +	partition@80000 {
> +		label =3D "env";
> +		reg =3D <0x80000 0x40000>;
> +	};
> +
> +	partition@c0000 {
> +		label =3D "kernel";
> +		reg =3D <0xc0000 0x340000>;
> +	};
> +
> +	partition@400000 {
> +		label =3D "root";
> +		reg =3D <0x400000 0>;
> +	};
> +};
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index d9b60053d..2eeff5b6b 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -26,7 +26,6 @@ config ARCH_TEXT_BASE
>  	default 0x93d00000 if MACH_TX25
>  	default 0x7ff00000 if MACH_TQMA53
>  	default 0x97f00000 if MACH_TX51
> -	default 0x97f00000 if MACH_CCMX51
>  	default 0x4fc00000 if MACH_SABRELITE
>  	default 0x8fe00000 if MACH_TX53
>  	default 0x97f00000 if MACH_EFIKA_MX_SMARTBOOK
> @@ -246,6 +245,17 @@ config MACH_KINDLE_MX50
>  	  Kindle Model No. D01100 (Kindle Wi-Fi), D01200 (Kindle Touch) or
>  	  EY21 (Kindle Paperwhite).
> =20
> +config MACH_CCMX51
> +	bool "ConnectCore i.MX51"
> +	select ARCH_IMX51
> +	select IMX_IIM
> +	select SPI
> +	select DRIVER_SPI_IMX
> +	select MFD_MC13XXX
> +	help
> +	  Say Y here if you are using Digi ConnectCore (W)i-i.MX51
> +	  equipped with a Freescale i.MX51 Processor
> +
>  config MACH_EFIKA_MX_SMARTBOOK
>  	bool "Efika MX smartbook"
>  	select ARCH_IMX51
> @@ -622,25 +632,6 @@ config MACH_TX51
>  	help
>  	  Say Y here if you are using the Ka-Ro tx51 board
> =20
> -config MACH_CCMX51
> -	bool "ConnectCore i.MX51"
> -	select ARCH_IMX51
> -	select IMX_IIM
> -	select SPI
> -	select DRIVER_SPI_IMX
> -	select MFD_MC13XXX
> -	help
> -	  Say Y here if you are using Digi ConnectCore (W)i-i.MX51
> -	  equipped with a Freescale i.MX51 Processor
> -
> -config MACH_CCMX51_BASEBOARD
> -	bool "Digi development board for CCMX51 module"
> -	depends on MACH_CCMX51
> -	default y
> -	help
> -	  This adds board specific devices that can be found on Digi
> -	  evaluation board for CCMX51 module.
> -
>  # ----------------------------------------------------------
> =20
>  comment "i.MX53 Boards"
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 8b8a5452b..6aa46b835 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -57,6 +57,11 @@ FILE_barebox-kindle-ey21.img =3D start_imx50_kindle_ey=
21.pblb.imximg
>  image-$(CONFIG_MACH_KINDLE_MX50) +=3D barebox-kindle-ey21.img
> =20
>  # ----------------------- i.MX51 based boards ---------------------------
> +pblb-$(CONFIG_MACH_CCMX51) +=3D start_ccxmx51
> +CFG_start_ccxmx51.pblb.imximg =3D $(board)/ccxmx51/flash-header.imxcfg
> +FILE_barebox-imx51-ccxmx51.img =3D start_ccxmx51.pblb.imximg
> +image-$(CONFIG_MACH_CCMX51) +=3D barebox-imx51-ccxmx51.img
> +
>  pblb-$(CONFIG_MACH_FREESCALE_MX51_PDK) +=3D start_imx51_babbage
>  CFG_start_imx51_babbage.pblb.imximg =3D $(board)/freescale-mx51-babbage/=
flash-header-imx51-babbage.imxcfg
>  FILE_barebox-freescale-imx51-babbage.img =3D start_imx51_babbage.pblb.im=
ximg
> --=20
> 2.13.0
>=20
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--wdq4fylnl52rdzey
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAlwXSXkACgkQdQOiSHVI
77QiSwf/UKk7G+AKnLXxvvIN195gbG96a0Ep+EiSYvGl8e4reTLcRm6HBKlnDwkp
FdfKtL10ja384eqySYOv92c1OSO4D7ZS4iA2MP6zsSg8dD1kG6En+ILIaEPmf33j
qGGm2G7/+Ic6NX1887Ee/Tb9At2TqMUg57mdKc61vK6vJDExR8Y5yj53HvtWSBlM
5sXGnsXCZrDCTL7xiBv9RfPFDQj8TXRV8mip8E0pjRlldSDaJuiKBX7zkWj7hqcl
L63aW8idwPraqn2pbtTldgC5J7v5bGqMTdoaopDyA/e0d0xNNTXAgk5gUly0faXy
uVGOqUwtmcS2klJdO5w8Emmr1lUrnw==
=tLQD
-----END PGP SIGNATURE-----

--wdq4fylnl52rdzey--


--===============3766345304170811441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3766345304170811441==--
