Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SdIl8-0000lm-Qt
 for barebox@lists.infradead.org; Sat, 09 Jun 2012 10:19:09 +0000
Date: Sat, 9 Jun 2012 12:19:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120609101904.GD30400@pengutronix.de>
References: <1339148008-16248-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1339148008-16248-1-git-send-email-shc_work@mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: initial =?iso-8859-15?Q?C?=
 =?iso-8859-15?Q?onnectCore=AE?= i.MX51 board support
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Fri, Jun 08, 2012 at 01:33:28PM +0400, Alexander Shiyan wrote:
> This patch adds support for ConnectCore=AE i.MX51 board from Digi Interna=
tional.
> A separate option includes support for debugging board for this module.
> Some code taken from the bootloader u-boot.
> Working with Ethernet not tested yet.

Looks mostly good, some smal things inline.

Sascha
> =

> barebox 2012.05.0-00316-g4024d9c-dirty #0 Wed Jun 6 13:08:25 MSK 2012
> =

> Board: ConnectCore i.MX51
> Module Variant: i.MX515@600MHz, PHY, Acceleromter (0x0b)
> Module HW Rev : 02
> Module Serial : B111156789
> mc13xxx-spi@mc13xxx-spi0: Found MC13892 ID: 0x0045d0 [Rev: 2.0a]
> NAND device: Manufacturer ID: 0x2c, Chip ID: 0xda (Micron NAND 256MiB 3,3=
V 8-bit)
> Bad block table found at page 131008, version 0x01
> Bad block table found at page 130944, version 0x01
> nand_read_bbt: Bad block at 0x00ce0000
> nand_read_bbt: Bad block at 0x05bc0000
> nand_read_bbt: Bad block at 0x0bc40000
> ehci@ehci0: USB EHCI 1.00
> detected i.MX51 rev 3.0
> imx-esdhc@mci0: registered as mci0
> imx-esdhc@mci1: registered as mci1
> Malloc space: 0x95f00000 -> 0x97efffff (size 32 MB)
> Stack space : 0x95ef8000 -> 0x95f00000 (size 32 kB)
> envfs: wrong magic on /dev/env0
> no valid environment found on /dev/env0. Using default environment
> running /env/bin/init...
> =

> Hit any key to stop autoboot:  3
> barebox@ConnectCore i.MX51:/
> =

> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/Makefile                           |    3 +-
>  arch/arm/boards/ccxmx51/Makefile            |    2 +
>  arch/arm/boards/ccxmx51/ccxmx51.c           |  476 +++++++++++++++++++++=
++++++
>  arch/arm/boards/ccxmx51/ccxmx51.dox         |    7 +
>  arch/arm/boards/ccxmx51/ccxmx51.h           |   35 ++
>  arch/arm/boards/ccxmx51/ccxmx51js.c         |   90 +++++
>  arch/arm/boards/ccxmx51/config.h            |   24 ++
>  arch/arm/boards/ccxmx51/env/config          |   37 ++
>  arch/arm/boards/ccxmx51/flash_header.c      |   84 +++++
>  arch/arm/configs/ccmx51_defconfig           |   56 ++++
>  arch/arm/mach-imx/Kconfig                   |   19 +
>  arch/arm/mach-imx/include/mach/iomux-mx51.h |    4 +-
>  12 files changed, 834 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/boards/ccxmx51/Makefile
>  create mode 100644 arch/arm/boards/ccxmx51/ccxmx51.c
>  create mode 100644 arch/arm/boards/ccxmx51/ccxmx51.dox
>  create mode 100644 arch/arm/boards/ccxmx51/ccxmx51.h
>  create mode 100644 arch/arm/boards/ccxmx51/ccxmx51js.c
>  create mode 100644 arch/arm/boards/ccxmx51/config.h
>  create mode 100644 arch/arm/boards/ccxmx51/env/config
>  create mode 100644 arch/arm/boards/ccxmx51/flash_header.c
>  create mode 100644 arch/arm/configs/ccmx51_defconfig
> =

> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index bd684dc..38c181f 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -20,7 +20,7 @@ comma =3D ,
>  # macro, but instead defines a whole series of macros which makes
>  # testing for a specific architecture or later rather impossible.
>  arch-$(CONFIG_CPU_32v7)		:=3D-D__LINUX_ARM_ARCH__=3D7 $(call cc-option,-=
march=3Darmv7-a,-march=3Darmv5t -Wa$(comma)-march=3Darmv7-a)
> -arch-$(CONFIG_CPU_32v6)            :=3D-D__LINUX_ARM_ARCH__=3D6 $(call c=
c-option,-march=3Darmv6,-march=3Darmv5t -Wa$(comma)-march=3Darmv6)
> +arch-$(CONFIG_CPU_32v6)		:=3D-D__LINUX_ARM_ARCH__=3D6 $(call cc-option,-=
march=3Darmv6,-march=3Darmv5t -Wa$(comma)-march=3Darmv6)

This should not be here.

>  arch-$(CONFIG_CPU_32v5)		:=3D-D__LINUX_ARM_ARCH__=3D5 $(call cc-option,-=
march=3Darmv5te,-march=3Darmv4t)
>  arch-$(CONFIG_CPU_32v4T)	:=3D-D__LINUX_ARM_ARCH__=3D4 -march=3Darmv4t
>  =

> @@ -75,6 +75,7 @@ board-$(CONFIG_MACH_AT91SAM9G10EK)		:=3D at91sam9261ek
>  board-$(CONFIG_MACH_AT91SAM9G20EK)		:=3D at91sam9260ek
>  board-$(CONFIG_MACH_AT91SAM9X5EK)		:=3D at91sam9x5ek
>  board-$(CONFIG_MACH_AT91SAM9M10G45EK)		:=3D at91sam9m10g45ek
> +board-$(CONFIG_MACH_CCMX51)			:=3D ccxmx51
>  board-$(CONFIG_MACH_DSS11)			:=3D dss11
>  board-$(CONFIG_MACH_EDB9301)			:=3D edb93xx
>  board-$(CONFIG_MACH_EDB9302)			:=3D edb93xx
> diff --git a/arch/arm/boards/ccxmx51/Makefile b/arch/arm/boards/ccxmx51/M=
akefile
> new file mode 100644
> index 0000000..249927e
> --- /dev/null
> +++ b/arch/arm/boards/ccxmx51/Makefile
> @@ -0,0 +1,2 @@
> +obj-y					+=3D flash_header.o ccxmx51.o
> +obj-$(CONFIG_MACH_CCMX51_BASEBOARD)	+=3D ccxmx51js.o
> diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/=
ccxmx51.c
> new file mode 100644
> index 0000000..2a41e4e
> --- /dev/null
> +++ b/arch/arm/boards/ccxmx51/ccxmx51.c
> @@ -0,0 +1,476 @@
> +/*
> + * (C) Copyright 2009-2010 Digi International, Inc.
> + * Copyright (C) 2007 Sascha Hauer, Pengutronix
> + * (c) 2011 Eukrea Electromatique, Eric B=E9nard <eric@eukrea.com>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <common.h>
> +#include <net.h>
> +#include <init.h>
> +#include <environment.h>
> +#include <mach/imx-regs.h>
> +#include <fec.h>
> +#include <mach/gpio.h>
> +#include <asm/armlinux.h>
> +#include <generated/mach-types.h>
> +#include <partition.h>
> +#include <fs.h>
> +#include <fcntl.h>
> +#include <sizes.h>
> +#include <nand.h>
> +#include <notifier.h>
> +#include <spi/spi.h>
> +#include <mfd/mc13xxx.h>
> +#include <asm/io.h>
> +#include <mach/imx-nand.h>
> +#include <mach/spi.h>
> +#include <mach/generic.h>
> +#include <mach/iomux-mx51.h>
> +#include <mach/devices-imx51.h>
> +#include <mach/iim.h>
> +#include <mach/clock-imx51_53.h>
> +#include <mach/imx5.h>
> +
> +#include "ccxmx51.h"
> +
> +static struct ccxmx51_ident ccxmx51_ids[] =3D {
> +/* 0x00 */	{ "Unknown",						0,       0, 0, 0, 0 },
> +/* 0x01 */	{ "Not supported",					0,       0, 0, 0, 0 },
> +/* 0x02 */	{ "i.MX515@800MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M, =
0, 1, 1, 1 },
> +/* 0x03 */	{ "i.MX515@800MHz, PHY, Ext. Eth, Accel",		SZ_512M, 0, 1, 1, =
0 },
> +/* 0x04 */	{ "i.MX515@600MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M, =
1, 1, 1, 1 },
> +/* 0x05 */	{ "i.MX515@600MHz, PHY, Ext. Eth, Accel",		SZ_512M, 1, 1, 1, =
0 },
> +/* 0x06 */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_512M, 0, 1, 0, =
1 },
> +/* 0x07 */	{ "i.MX515@800MHz, PHY, Acceleromter",			SZ_512M, 0, 1, 0, 0 =
},
> +/* 0x08 */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_256M, 0, 1, 0, =
1 },
> +/* 0x09 */	{ "i.MX515@800MHz, PHY, Acceleromter",			SZ_256M, 0, 1, 0, 0 =
},
> +/* 0x0a */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_256M, 1, 1, 0, =
1 },
> +/* 0x0b */	{ "i.MX515@600MHz, PHY, Acceleromter",			SZ_256M, 1, 1, 0, 0 =
},
> +/* 0x0c */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_128M, 0, 1, 0, =
1 },
> +/* 0x0d */	{ "i.MX512@800MHz",					SZ_128M, 0, 0, 0, 0 },
> +/* 0x0e */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_512M, 0, 1, 0, =
1 },
> +/* 0x0f */	{ "i.MX515@600MHz, PHY, Accel",				SZ_128M, 1, 1, 0, 0 },
> +/* 0x10 */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_128M, 1, 1, 0, =
1 },
> +/* 0x11 */	{ "i.MX515@800MHz, PHY, Accel",				SZ_128M, 0, 1, 0, 0 },
> +/* 0x12 */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_512M, 1, 1, 0, =
1 },
> +/* 0x13 */	{ "i.MX515@800MHz, PHY, Accel",				SZ_512M, 0, 1, 0, 0 },
> +};
> +
> +struct ccxmx51_ident *ccxmx51_id;
> +
> +struct imx_nand_platform_data nand_info =3D {
> +	.width		=3D 1,
> +	.hw_ecc		=3D 1,
> +	.flash_bbt	=3D 1,
> +};
> +
> +#ifdef CONFIG_DRIVER_NET_FEC_IMX
> +static struct fec_platform_data fec_info =3D {
> +	.xcv_type	=3D MII100,
> +	.phy_addr	=3D 7,
> +};
> +#endif
> +
> +static iomux_v3_cfg_t ccxmx51_pads[] =3D {
> +	/* UART1 */
> +	MX51_PAD_UART1_RXD__UART1_RXD,
> +	MX51_PAD_UART1_TXD__UART1_TXD,
> +	/* UART2 */
> +	MX51_PAD_UART2_RXD__UART2_RXD,
> +	MX51_PAD_UART2_TXD__UART2_TXD,
> +	/* UART3 */
> +	MX51_PAD_UART3_RXD__UART3_RXD,
> +	MX51_PAD_UART3_TXD__UART3_TXD,
> +	/* I2C2 */
> +	MX51_PAD_GPIO1_2__I2C2_SCL,
> +	MX51_PAD_GPIO1_3__I2C2_SDA,
> +	/* eCSPI1 */
> +	MX51_PAD_CSPI1_MOSI__ECSPI1_MOSI,
> +	MX51_PAD_CSPI1_MISO__ECSPI1_MISO,
> +	MX51_PAD_CSPI1_SCLK__ECSPI1_SCLK,
> +	MX51_PAD_CSPI1_RDY__ECSPI1_RDY,
> +	MX51_PAD_CSPI1_SS0__ECSPI1_SS0,
> +	MX51_PAD_CSPI1_SS1__ECSPI1_SS1,
> +	/* FEC */
> +	MX51_PAD_DISP2_DAT14__FEC_RDATA0,
> +	MX51_PAD_DI2_DISP_CLK__FEC_RDATA1,
> +	MX51_PAD_DI_GP4__FEC_RDATA2,
> +	MX51_PAD_DISP2_DAT0__FEC_RDATA3,
> +	MX51_PAD_DISP2_DAT15__FEC_TDATA0,
> +	MX51_PAD_DISP2_DAT6__FEC_TDATA1,
> +	MX51_PAD_DISP2_DAT7__FEC_TDATA2,
> +	MX51_PAD_DISP2_DAT8__FEC_TDATA3,
> +	MX51_PAD_DISP2_DAT9__FEC_TX_EN,
> +	MX51_PAD_DISP2_DAT10__FEC_COL,
> +	MX51_PAD_DISP2_DAT11__FEC_RX_CLK,
> +	MX51_PAD_DISP2_DAT12__FEC_RX_DV,
> +	MX51_PAD_DISP2_DAT13__FEC_TX_CLK,
> +	MX51_PAD_DI2_PIN2__FEC_MDC,
> +	MX51_PAD_DI2_PIN4__FEC_CRS,
> +	MX51_PAD_DI2_PIN3__FEC_MDIO,
> +	MX51_PAD_DI_GP3__FEC_TX_ER,
> +	MX51_PAD_DISP2_DAT1__FEC_RX_ER,
> +	/* WEIM */
> +	MX51_PAD_EIM_DA0__EIM_DA0,
> +	MX51_PAD_EIM_DA1__EIM_DA1,
> +	MX51_PAD_EIM_DA2__EIM_DA2,
> +	MX51_PAD_EIM_DA3__EIM_DA3,
> +	MX51_PAD_EIM_DA4__EIM_DA4,
> +	MX51_PAD_EIM_DA5__EIM_DA5,
> +	MX51_PAD_EIM_DA6__EIM_DA6,
> +	MX51_PAD_EIM_DA7__EIM_DA7,
> +	MX51_PAD_EIM_D16__EIM_D16,
> +	MX51_PAD_EIM_D17__EIM_D17,
> +	MX51_PAD_EIM_D18__EIM_D18,
> +	MX51_PAD_EIM_D19__EIM_D19,
> +	MX51_PAD_EIM_D20__EIM_D20,
> +	MX51_PAD_EIM_D21__EIM_D21,
> +	MX51_PAD_EIM_D22__EIM_D22,
> +	MX51_PAD_EIM_D23__EIM_D23,
> +	MX51_PAD_EIM_D24__EIM_D24,
> +	MX51_PAD_EIM_D25__EIM_D25,
> +	MX51_PAD_EIM_D26__EIM_D26,
> +	MX51_PAD_EIM_D27__EIM_D27,
> +	MX51_PAD_EIM_D28__EIM_D28,
> +	MX51_PAD_EIM_D29__EIM_D29,
> +	MX51_PAD_EIM_D30__EIM_D30,
> +	MX51_PAD_EIM_D31__EIM_D31,
> +	MX51_PAD_EIM_OE__EIM_OE,
> +	MX51_PAD_EIM_CS5__EIM_CS5,
> +	/* NAND */
> +	MX51_PAD_NANDF_D0__NANDF_D0,
> +	MX51_PAD_NANDF_D1__NANDF_D1,
> +	MX51_PAD_NANDF_D2__NANDF_D2,
> +	MX51_PAD_NANDF_D3__NANDF_D3,
> +	MX51_PAD_NANDF_D4__NANDF_D4,
> +	MX51_PAD_NANDF_D5__NANDF_D5,
> +	MX51_PAD_NANDF_D6__NANDF_D6,
> +	MX51_PAD_NANDF_D7__NANDF_D7,
> +	MX51_PAD_NANDF_ALE__NANDF_ALE,
> +	MX51_PAD_NANDF_CLE__NANDF_CLE,
> +	MX51_PAD_NANDF_RE_B__NANDF_RE_B,
> +	MX51_PAD_NANDF_WE_B__NANDF_WE_B,
> +	MX51_PAD_NANDF_WP_B__NANDF_WP_B,
> +	MX51_PAD_NANDF_CS0__NANDF_CS0,
> +	MX51_PAD_NANDF_RB0__NANDF_RB0,
> +	/* LAN9221 IRQ (GPIO1.9) */
> +	MX51_PAD_GPIO1_9__GPIO1_9,
> +	/* MC13892 IRQ (GPIO1.5) */
> +	MX51_PAD_GPIO1_5__GPIO1_5,
> +	/* MMA7455LR IRQ1 (GPIO1.7) */
> +	MX51_PAD_GPIO1_7__GPIO1_7,
> +	/* MMA7455LR IRQ2 (GPIO1.6) */
> +	MX51_PAD_GPIO1_6__GPIO1_6,
> +};
> +
> +#define CCXMX51_ECSPI1_CS0	IMX_GPIO_NR(4, 24)
> +#define CCXMX51_ECSPI1_CS1	IMX_GPIO_NR(4, 25)
> +
> +static int ecspi_0_cs[] =3D { CCXMX51_ECSPI1_CS0, CCXMX51_ECSPI1_CS1, };
> +
> +static struct spi_imx_master ecspi_0_data =3D {
> +	.chipselect	=3D ecspi_0_cs,
> +	.num_chipselect	=3D ARRAY_SIZE(ecspi_0_cs),
> +};
> +
> +static const struct spi_board_info ccxmx51_spi_board_info[] =3D {
> +	{
> +		.name		=3D "mc13xxx-spi",
> +		.max_speed_hz	=3D 6000000,
> +		.bus_num	=3D 0,
> +		.chip_select	=3D 0,
> +	},
> +};
> +
> +static int ccxmx51_mem_init(void)
> +{
> +	/* Add minimal SDRAM first */
> +	arm_add_mem_device("ram0", MX51_CSD0_BASE_ADDR, SZ_128M);
> +
> +	return 0;
> +}
> +mem_initcall(ccxmx51_mem_init);
> +
> +static void ccxmx51_otghost_init(void)
> +{
> +#define MX51_USBOTHER_REGS_OFFSET		0x800
> +#define MX51_USBCTRL_OFFSET			0x0                                       =
        =

> +#define MX51_USB_PHY_CTR_FUNC_OFFSET		0x8                               =
              =


Trailing whitespaces here.
 =

> +#define MX51_USB_PHY_CTR_FUNC2_OFFSET		0xc
> +#define MX51_USB_UTMI_PHYCTRL1_PLLDIV_MASK	0x3
> +#define MX51_USB_PLL_DIV_19_2_MHZ		0x00
> +#define MX51_USB_PLL_DIV_24_MHZ			0x01
> +#define MX51_USB_PLL_DIV_26_MHZ			0x02
> +#define MX51_USB_PLL_DIV_27_MHZ			0x03
> +#define MX51_OTG_PHYCTRL_OC_DIS_BIT		(1 << 8)
> +#define MX51_OTG_UCTRL_OWIE_BIT			(1 << 27)
> +#define MX51_OTG_UCTRL_OPM_BIT			(1 << 24)
> +
> +#define USBOTHER_BASE				(MX51_OTG_BASE_ADDR + MX51_USBOTHER_REGS_OFFSET)
> +
> +	u32 reg;
> +
> +	/* Set sysclock to 24 MHz */
> +	reg =3D readl(USBOTHER_BASE + MX51_USB_PHY_CTR_FUNC2_OFFSET);
> +	reg &=3D ~MX51_USB_UTMI_PHYCTRL1_PLLDIV_MASK;
> +	reg |=3D MX51_USB_PLL_DIV_24_MHZ;
> +	writel(reg, USBOTHER_BASE + MX51_USB_PHY_CTR_FUNC2_OFFSET);
> +
> +	/* OC is not used */
> +	reg =3D readl(USBOTHER_BASE + MX51_USB_PHY_CTR_FUNC_OFFSET);
> +	reg |=3D MX51_OTG_PHYCTRL_OC_DIS_BIT;
> +	writel(reg, USBOTHER_BASE + MX51_USB_PHY_CTR_FUNC_OFFSET);
> +
> +	/* Wakeup and power pins enable */
> +	reg =3D readl(USBOTHER_BASE + MX51_USBCTRL_OFFSET);
> +	reg |=3D MX51_OTG_UCTRL_OWIE_BIT | MX51_OTG_UCTRL_OPM_BIT;
> +	writel(reg, USBOTHER_BASE + MX51_USBCTRL_OFFSET);
> +
> +	/* Setup PORTSC */
> +	reg =3D readl(MX51_OTG_BASE_ADDR + 0x184);
> +	reg &=3D ~(3 << 30);
> +	reg |=3D 1 << 28;
> +	writel(reg, MX51_OTG_BASE_ADDR + 0x184);
> +
> +	mdelay(10);
> +
> +	add_generic_usb_ehci_device(0, MX51_OTG_BASE_ADDR, NULL);
> +}
> +
> +static int ccxmx51_power_init(void)
> +{
> +	struct mc13xxx *mc13xxx_dev;
> +	u32 val;
> +
> +	mc13xxx_dev =3D mc13xxx_get();
> +	if (!mc13xxx_dev)
> +		return -1;

-ENODEV?

> +
> +	mc13xxx_reg_read(mc13xxx_dev, 34, &val);
> +	/* Reset devices by clearing GP01-GPO4 */
> +	val &=3D ~((1 << 21) | (3 << 12) | (3 << 10) | (3 << 8) | (3 << 6));
> +	/* Switching off the PWGT1SPIEN */
> +	val |=3D (1 << 15);
> +	/* Switching on the PWGT2SPIEN */
> +	val &=3D ~(1 << 16);
> +	/* Enable short circuit protection */
> +	val |=3D (1 << 0);
> +	mc13xxx_reg_write(mc13xxx_dev, 34, val);
> +
> +	/* Allow charger to charge (4.2V and 560mA) */
> +	val =3D 0x238033;
> +	mc13xxx_reg_write(mc13xxx_dev, 48, val);
> +
> +	/* Set core voltage (SW1) to 1.1V */
> +	mc13xxx_reg_read(mc13xxx_dev, 24, &val);
> +	val &=3D ~0x00001f;
> +	val |=3D  0x000014;
> +	mc13xxx_reg_write(mc13xxx_dev, 24, val);
> +
> +	if (imx_silicon_revision() < IMX_CHIP_REV_3_0) {
> +		/* Setup VCC (SW2) to 1.25 */
> +		mc13xxx_reg_read(mc13xxx_dev, 25, &val);
> +		val &=3D ~0x00001f;
> +		val |=3D  0x00001a;
> +		mc13xxx_reg_write(mc13xxx_dev, 25, val);
> +
> +		/* Setup 1V2_DIG1 (SW3) to 1.25 */
> +		mc13xxx_reg_read(mc13xxx_dev, 26, &val);
> +		val &=3D ~0x00001f;
> +		val |=3D  0x00001a;
> +		mc13xxx_reg_write(mc13xxx_dev, 26, val);
> +	} else {
> +		/* Setup VCC (SW2) to 1.225 */
> +		mc13xxx_reg_read(mc13xxx_dev, 25, &val);
> +		val &=3D ~0x00001f;
> +		val |=3D  0x000019;
> +		mc13xxx_reg_write(mc13xxx_dev, 25, val);
> +
> +		/* Setup 1V2_DIG1 (SW3) to 1.2 */
> +		mc13xxx_reg_read(mc13xxx_dev, 26, &val);
> +		val &=3D ~0x00001f;
> +		val |=3D  0x000018;
> +		mc13xxx_reg_write(mc13xxx_dev, 26, val);
> +	}
> +
> +	if (mc13xxx_dev->revision <=3D MC13892_REVISION_2_0) {
> +		/* Set switchers in PWM mode for Atlas 2.0 and lower */
> +		/* Setup the switcher mode for SW1 & SW2*/
> +		mc13xxx_reg_read(mc13xxx_dev, 28, &val);
> +		val &=3D ~0x003c0f;
> +		val |=3D  0x001405;
> +		mc13xxx_reg_write(mc13xxx_dev, 28, val);
> +
> +		/* Setup the switcher mode for SW3 & SW4 */
> +		mc13xxx_reg_read(mc13xxx_dev, 29, &val);
> +		val &=3D ~0x000f0f;
> +		val |=3D  0x000505;
> +		mc13xxx_reg_write(mc13xxx_dev, 29, val);
> +	} else {
> +		/* Set switchers in Auto in NORMAL mode & STANDBY mode for Atlas 2.0a =
*/
> +		/* Setup the switcher mode for SW1 & SW2*/
> +		mc13xxx_reg_read(mc13xxx_dev, 28, &val);
> +		val &=3D ~0x003c0f;
> +		val |=3D  0x002008;
> +		mc13xxx_reg_write(mc13xxx_dev, 28, val);
> +
> +		/* Setup the switcher mode for SW3 & SW4 */
> +		mc13xxx_reg_read(mc13xxx_dev, 29, &val);
> +		val &=3D ~0x000f0f;
> +		val |=3D  0x000808;
> +		mc13xxx_reg_write(mc13xxx_dev, 29, val);
> +	}
> +
> +	/* Set VVIDEO to 2.775V, VAUDIO to 3V, VSD to 3.15V */
> +	mc13xxx_reg_read(mc13xxx_dev, 31, &val);
> +	val &=3D ~0x0001fc;
> +	val |=3D  0x0001f4;
> +	mc13xxx_reg_write(mc13xxx_dev, 31, val);
> +
> +	/* Configure VGEN3 and VCAM regulators to use external PNP */
> +	val =3D 0x000208;
> +	mc13xxx_reg_write(mc13xxx_dev, 33, val);
> +	udelay(200);
> +
> +	/* Set VGEN3 to 1.8V */
> +	mc13xxx_reg_read(mc13xxx_dev, 30, &val);
> +	val &=3D ~(1 << 14);
> +	mc13xxx_reg_write(mc13xxx_dev, 30, val);
> +
> +	/* Enable VGEN3, VCAM, VAUDIO, VVIDEO, VSD regulators */
> +	val =3D 0x049249;
> +	mc13xxx_reg_write(mc13xxx_dev, 33, val);
> +
> +	/* Enable USB1 charger */
> +	val =3D 0x000409;
> +	mc13xxx_reg_write(mc13xxx_dev, 50, val);
> +
> +	/* Set VCOIN to 3.0V and Enable It */
> +	mc13xxx_reg_read(mc13xxx_dev, 13, &val);
> +	val &=3D ~(7 << 20);
> +	val |=3D (4 << 20) | (1 << 23);
> +	mc13xxx_reg_write(mc13xxx_dev, 13, val);
> +	/* Keeps VSRTC and CLK32KMCU */
> +	val |=3D (1 << 4);
> +	mc13xxx_reg_write(mc13xxx_dev, 13, val);
> +
> +	/* De-assert reset of external devices on GP01, GPO2, GPO3 and GPO4 */
> +	mc13xxx_reg_read(mc13xxx_dev, 34, &val);
> +	/* GPO1 - External */
> +	/* GP02 - LAN9221  */
> +	/* GP03 - FEC      */
> +	/* GP04 - Wireless */
> +	if (IS_ENABLED(CONFIG_DRIVER_NET_SMC911X) && ccxmx51_id->eth0)
> +		val |=3D (1 << 8);
> +	if (IS_ENABLED(CONFIG_DRIVER_NET_FEC_IMX) && ccxmx51_id->eth1)
> +		val |=3D (1 << 10);
> +	if (ccxmx51_id->wless)
> +		val |=3D (1 << 12);
> +	mc13xxx_reg_write(mc13xxx_dev, 34, val);
> +
> +	udelay(100);
> +
> +	return 0;
> +}
> +
> +static int ccxmx51_devices_init(void)
> +{
> +	u8 hwid[6];
	int hwid_len =3D ARRAY_SIZE(hwid);

and use below.

> +	int ret;
> +	char manloc;
> +
> +	if ((imx_iim_read(1, 9, hwid, 6) !=3D 6) || (hwid[0] < 0x02) || (hwid[0=
] > 0x13))

 >=3D ARRAY_SIZE(ccxmx51_ids) instead of hardcoded 0x13 please.


> +		memset(hwid, 0x00, 6);
> +
> +	ccxmx51_id =3D &ccxmx51_ids[hwid[0]];
> +	printf("Module Variant: %s (0x%02x)\n", ccxmx51_id->id_string, hwid[0]);
> +
> +	if (hwid[0]) {
> +		printf("Module HW Rev : %02x\n", hwid[1]);
> +		manloc =3D hwid[2] & 0xc0;
> +		printf("Module Serial : %c%d\n", (manloc =3D=3D 0) ? 'B' : (manloc =3D=
=3D 0x40) ? 'W' : (manloc =3D=3D 0x80) ? 'S' : 'N', ((hwid[2] & 0x3f) << 24=
) | (hwid[3] << 16) | (hwid[4] << 8) | hwid[5]);

I do not insists on 80 character lines, but this one is a bit too long.

> +		if ((ccxmx51_id->mem_sz - SZ_128M) > 0)
> +			arm_add_mem_device("ram1", MX51_CSD0_BASE_ADDR + SZ_128M, ccxmx51_id-=
>mem_sz - SZ_128M);
> +	}
> +
> +	imx51_add_uart1();
> +	imx51_add_uart2();
> +
> +	spi_register_board_info(ccxmx51_spi_board_info, ARRAY_SIZE(ccxmx51_spi_=
board_info));
> +	imx51_add_spi0(&ecspi_0_data);
> +
> +	ret =3D ccxmx51_power_init();
> +	console_flush();
> +	imx51_init_lowlevel((ccxmx51_id->industrial || ret) ? 600 : 800);
> +	clock_notifier_call_chain();
> +	if (ret)
> +		printf("Could not setup PMIC. Clocks not adjusted.\n");
> +
> +	imx51_add_i2c1(NULL);
> +
> +	imx51_add_nand(&nand_info);
> +	devfs_add_partition("nand0", 0x00000, 0x60000, DEVFS_PARTITION_FIXED, "=
self_raw");
> +	dev_add_bb_dev("self_raw", "self0");
> +	devfs_add_partition("nand0", 0x60000, 0x20000, DEVFS_PARTITION_FIXED, "=
env_raw");

I think you should reserve at least two eraseblocks for the environment
in case one of them turns bad.

> +	dev_add_bb_dev("env_raw", "env0");
> +
> +#ifdef CONFIG_DRIVER_NET_FEC_IMX
> +	if (ccxmx51_id->eth0) {
> +		imx51_add_fec(&fec_info);
> +		eth_register_ethaddr(0, hwid);
> +	}
> +#endif
> +
> +#ifdef CONFIG_DRIVER_NET_SMC911X
> +	if (ccxmx51_id->eth1) {
> +		/* Configure the WEIM CS5 timming, bus width, etc */
> +		/* 16 bit on DATA[31..16], not multiplexed, async */
> +		writel(0x00420081, MX51_WEIM_BASE_ADDR + WEIM_CSxGCR1(5));
> +		/* ADH has not effect on non muxed bus */
> +		writel(0, MX51_WEIM_BASE_ADDR + WEIM_CSxGCR2(5));
> +		/* RWSC=3D50, RADVA=3D2, RADVN=3D6, OEA=3D0, OEN=3D0, RCSA=3D0, RCSN=
=3D0 */
> +		writel(0x32260000, MX51_WEIM_BASE_ADDR + WEIM_CSxRCR1(5));
> +		/* APR=3D0 */
> +		writel(0, MX51_WEIM_BASE_ADDR + WEIM_CSxRCR2(5));
> +		/* WAL=3D0, WBED=3D1, WWSC=3D50, WADVA=3D2, WADVN=3D6, WEA=3D0, WEN=3D=
0, WCSA=3D0 */
> +		writel(0x72080f00, MX51_WEIM_BASE_ADDR + WEIM_CSxWCR1(5));
> +
> +		/* LAN9221 network controller */
> +		add_generic_device("smc911x", 1, NULL, MX51_CS5_BASE_ADDR, SZ_4K, IORE=
SOURCE_MEM, NULL);
> +	}
> +#endif
> +
> +	ccxmx51_otghost_init();
> +
> +	armlinux_set_bootparams((void *)(MX51_CSD0_BASE_ADDR + 0x100));
> +
> +	armlinux_set_architecture(ccxmx51_id->wless ? MACH_TYPE_CCWMX51 : MACH_=
TYPE_CCMX51);
> +
> +	return 0;
> +}
> +device_initcall(ccxmx51_devices_init);
> +
> +static int ccxmx51_console_init(void)
> +{
> +	mxc_iomux_v3_setup_multiple_pads(ccxmx51_pads, ARRAY_SIZE(ccxmx51_pads)=
);
> +
> +	imx51_add_uart0();
> +
> +	return 0;
> +}
> +console_initcall(ccxmx51_console_init);
> diff --git a/arch/arm/boards/ccxmx51/ccxmx51.dox b/arch/arm/boards/ccxmx5=
1/ccxmx51.dox
> new file mode 100644
> index 0000000..cc28e8d
> --- /dev/null
> +++ b/arch/arm/boards/ccxmx51/ccxmx51.dox
> @@ -0,0 +1,7 @@
> +/** @page ccxmx51 Digi ConnectCore board
> +
> +This boards is based on a Freescale i.MX51 CPU. The board is shipped wit=
h:
> +- Up to 8 GB NAND Flash.
> +- Up to 512 MB DDR2 RAM.
> +
> +*/
> diff --git a/arch/arm/boards/ccxmx51/ccxmx51.h b/arch/arm/boards/ccxmx51/=
ccxmx51.h
> new file mode 100644
> index 0000000..3feacac
> --- /dev/null
> +++ b/arch/arm/boards/ccxmx51/ccxmx51.h
> @@ -0,0 +1,35 @@
> +/*
> + * Copyright 2010 Digi International Inc. All Rights Reserved.
> + */
> +
> +/*
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +#ifndef _CCXMX51_H_
> +#define _CCXMX51_H_
> +
> +struct ccxmx51_hwid {
> +	u8		variant;
> +	u8		version;
> +	u32		sn;
> +	char		mloc;
> +};
> +
> +struct ccxmx51_ident {
> +	const char	*id_string;
> +	const int	mem_sz;
> +	const char	industrial;
> +	const char	eth0;
> +	const char	eth1;
> +	const char	wless;
> +};
> +
> +extern struct ccxmx51_ident *ccxmx51_id;
> +
> +#endif	/* _CCXMX51_H_ */
> diff --git a/arch/arm/boards/ccxmx51/ccxmx51js.c b/arch/arm/boards/ccxmx5=
1/ccxmx51js.c
> new file mode 100644
> index 0000000..f04615d
> --- /dev/null
> +++ b/arch/arm/boards/ccxmx51/ccxmx51js.c
> @@ -0,0 +1,90 @@
> +/*
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <common.h>
> +#include <io.h>
> +#include <init.h>
> +#include <mci.h>
> +#include <asm/armlinux.h>
> +#include <mach/imx-regs.h>
> +#include <mach/iomux-mx51.h>
> +#include <mach/devices-imx51.h>
> +#include <generated/mach-types.h>
> +
> +#include "ccxmx51.h"
> +
> +static iomux_v3_cfg_t ccxmx51js_pads[] =3D {
> +	/* SD1 */
> +	MX51_PAD_SD1_CLK__SD1_CLK,
> +	MX51_PAD_SD1_CMD__SD1_CMD,
> +	MX51_PAD_SD1_DATA0__SD1_DATA0,
> +	MX51_PAD_SD1_DATA1__SD1_DATA1,
> +	MX51_PAD_SD1_DATA2__SD1_DATA2,
> +	MX51_PAD_SD1_DATA3__SD1_DATA3,
> +	/* SD3 */
> +	MX51_PAD_NANDF_CS7__SD3_CLK,
> +	MX51_PAD_NANDF_RDY_INT__SD3_CMD,
> +	MX51_PAD_NANDF_D8__SD3_DATA0,
> +	MX51_PAD_NANDF_D9__SD3_DATA1,
> +	MX51_PAD_NANDF_D10__SD3_DATA2,
> +	MX51_PAD_NANDF_D11__SD3_DATA3,
> +	MX51_PAD_NANDF_D12__SD3_DAT4,
> +	MX51_PAD_NANDF_D13__SD3_DAT5,
> +	MX51_PAD_NANDF_D14__SD3_DAT6,
> +	MX51_PAD_NANDF_D15__SD3_DAT7,
> +	/* USB HOST1 */
> +	MX51_PAD_USBH1_CLK__USBH1_CLK,
> +	MX51_PAD_USBH1_DIR__USBH1_DIR,
> +	MX51_PAD_USBH1_NXT__USBH1_NXT,
> +	MX51_PAD_USBH1_STP__USBH1_STP,
> +	MX51_PAD_USBH1_DATA0__USBH1_DATA0,
> +	MX51_PAD_USBH1_DATA1__USBH1_DATA1,
> +	MX51_PAD_USBH1_DATA2__USBH1_DATA2,
> +	MX51_PAD_USBH1_DATA3__USBH1_DATA3,
> +	MX51_PAD_USBH1_DATA4__USBH1_DATA4,
> +	MX51_PAD_USBH1_DATA5__USBH1_DATA5,
> +	MX51_PAD_USBH1_DATA6__USBH1_DATA6,
> +	MX51_PAD_USBH1_DATA7__USBH1_DATA7,
> +};
> +
> +static struct esdhc_platform_data sdhc1_pdata =3D {
> +	.cd_type	=3D ESDHC_CD_NONE,
> +	.wp_type	=3D ESDHC_WP_NONE,
> +	.caps		=3D MMC_MODE_4BIT,
> +};
> +
> +static struct esdhc_platform_data sdhc3_pdata =3D {
> +	.cd_type	=3D ESDHC_CD_NONE,
> +	.wp_type	=3D ESDHC_WP_NONE,
> +	.caps		=3D MMC_MODE_4BIT | MMC_MODE_8BIT,
> +};
> +
> +static int ccxmx51js_init(void)
> +{
> +	mxc_iomux_v3_setup_multiple_pads(ccxmx51js_pads, ARRAY_SIZE(ccxmx51js_p=
ads));
> +
> +	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC)) {
> +		imx51_add_mmc0(&sdhc1_pdata);
> +		imx51_add_mmc2(&sdhc3_pdata);
> +	}
> +
> +	armlinux_set_architecture(ccxmx51_id->wless ? MACH_TYPE_CCWMX51JS : MAC=
H_TYPE_CCMX51JS);
> +
> +	return 0;
> +}
> +
> +late_initcall(ccxmx51js_init);
> diff --git a/arch/arm/boards/ccxmx51/config.h b/arch/arm/boards/ccxmx51/c=
onfig.h
> new file mode 100644
> index 0000000..fdf2f81
> --- /dev/null
> +++ b/arch/arm/boards/ccxmx51/config.h
> @@ -0,0 +1,24 @@
> +/**
> + * @file
> + * @brief Global defintions for the ARM i.MX51 based ccmx51 board
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#ifndef __CONFIG_H
> +#define __CONFIG_H
> +
> +#endif	/* __CONFIG_H */
> diff --git a/arch/arm/boards/ccxmx51/env/config b/arch/arm/boards/ccxmx51=
/env/config
> new file mode 100644
> index 0000000..bb25caf
> --- /dev/null
> +++ b/arch/arm/boards/ccxmx51/env/config
> @@ -0,0 +1,37 @@
> +#!/bin/sh
> +
> +machine=3Dccmx51
> +
> +# use 'dhcp' to do dhcp in barebox and in kernel
> +# use 'none' if you want to skip kernel ip autoconfiguration
> +ip=3Dnone
> +
> +# or set your networking parameters here
> +#eth0.ipaddr=3Da.b.c.d
> +#eth0.netmask=3Da.b.c.d
> +#eth0.gateway=3Da.b.c.d
> +#eth0.serverip=3Da.b.c.d
> +
> +# can be either 'nfs', 'tftp' or 'nand'
> +kernel_loc=3Dnand
> +# can be either 'net', 'nand' or 'initrd'
> +rootfs_loc=3Dnand
> +
> +# rootfs
> +rootfs_type=3Dcramfs
> +
> +# kernel
> +kernelimage_type=3Dzimage
> +kernel_img=3D/dev/nand0.kernel
> +
> +autoboot_timeout=3D3
> +
> +bootargs=3D"console=3Dttymxc0,115200"
> +
> +device_type=3D"nand"
> +nand_device=3D"mxc_nand"
> +nand_parts=3D"384k(barebox)ro,128k(bareboxenv),3584k(kernel),-(root)"
> +rootfs_mtdblock_nand=3D3
> +
> +# set a fancy prompt (if support is compiled in)
> +PS1=3D"\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
> diff --git a/arch/arm/boards/ccxmx51/flash_header.c b/arch/arm/boards/ccx=
mx51/flash_header.c
> new file mode 100644
> index 0000000..c148eea
> --- /dev/null
> +++ b/arch/arm/boards/ccxmx51/flash_header.c
> @@ -0,0 +1,84 @@
> +#include <common.h>
> +#include <mach/imx-flash-header.h>
> +#include <asm/barebox-arm-head.h>
> +
> +void __naked __flash_header_start go(void)
> +{
> +	barebox_arm_head();
> +}
> +
> +struct imx_dcd_entry __dcd_entry_section dcd_entry[] =3D {
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa88a0, .val =3D 0x00000200, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa850c, .val =3D 0x000020c5, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa8510, .val =3D 0x000020c5, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa883c, .val =3D 0x00000002, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa8848, .val =3D 0x00000002, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa84b8, .val =3D 0x000000e7, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa84bc, .val =3D 0x00000045, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa84c0, .val =3D 0x00000045, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa84c4, .val =3D 0x00000045, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa84c8, .val =3D 0x00000045, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa8820, .val =3D 0x00000000, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa84a4, .val =3D 0x00000003, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa84a8, .val =3D 0x00000003, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa84ac, .val =3D 0x000000e3, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa84b0, .val =3D 0x000000e3, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa84b4, .val =3D 0x000000e3, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa84cc, .val =3D 0x000000e3, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa84d0, .val =3D 0x000000e2, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa882c, .val =3D 0x00000004, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa88a4, .val =3D 0x00000004, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa88ac, .val =3D 0x00000004, },
> +	{ .ptr_type =3D 4, .addr =3D 0x73fa88b8, .val =3D 0x00000004, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9000, .val =3D 0x82a20000, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9008, .val =3D 0x82a20000, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9010, .val =3D 0x000ad0d0, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9004, .val =3D 0x3f3584ab, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd900c, .val =3D 0x3f3584ab, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x04008008, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x0000801a, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x0000801b, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x00448019, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x07328018, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x04008008, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x00008010, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x00008010, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x06328018, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x03808019, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x00408019, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x00008000, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x0400800c, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x0000801e, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x0000801f, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x0000801d, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x0732801c, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x0400800c, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x00008014, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x00008014, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x0632801c, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x0380801d, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x0040801d, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x00008004, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9000, .val =3D 0xb2a20000, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9008, .val =3D 0xb2a20000, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9010, .val =3D 0x000ad6d0, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9034, .val =3D 0x90000000, },
> +	{ .ptr_type =3D 4, .addr =3D 0x83fd9014, .val =3D 0x00000000, },
> +};
> +
> +#define APP_DEST	0x90000000
> +
> +struct imx_flash_header __flash_header_section flash_header =3D {
> +	.app_code_jump_vector	=3D APP_DEST + 0x1000,
> +	.app_code_barker	=3D APP_CODE_BARKER,
> +	.app_code_csf		=3D 0,
> +	.dcd_ptr_ptr		=3D APP_DEST + 0x400 + offsetof(struct imx_flash_header, =
dcd),
> +	.super_root_key		=3D 0,
> +	.dcd			=3D APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd_bar=
ker),
> +	.app_dest		=3D APP_DEST,
> +	.dcd_barker		=3D DCD_BARKER,
> +	.dcd_block_len		=3D sizeof (dcd_entry),
> +};
> +
> +unsigned long __image_len_section barebox_len =3D DCD_BAREBOX_SIZE;
> +
> diff --git a/arch/arm/configs/ccmx51_defconfig b/arch/arm/configs/ccmx51_=
defconfig
> new file mode 100644
> index 0000000..7158d3c
> --- /dev/null
> +++ b/arch/arm/configs/ccmx51_defconfig
> @@ -0,0 +1,56 @@
> +CONFIG_ARCH_IMX=3Dy
> +CONFIG_ARCH_IMX51=3Dy
> +CONFIG_MACH_CCMX51=3Dy
> +CONFIG_AEABI=3Dy
> +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=3Dy
> +CONFIG_MALLOC_SIZE=3D0x2000000
> +CONFIG_LONGHELP=3Dy
> +CONFIG_GLOB=3Dy
> +CONFIG_HUSH_FANCY_PROMPT=3Dy
> +CONFIG_CMDLINE_EDITING=3Dy
> +CONFIG_AUTO_COMPLETE=3Dy
> +CONFIG_PARTITION=3Dy
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC=3Dy
> +CONFIG_DEFAULT_ENVIRONMENT_PATH=3D"defaultenv arch/arm/boards/ccxmx51/en=
v"
> +CONFIG_CMD_EDIT=3Dy
> +CONFIG_CMD_SLEEP=3Dy
> +CONFIG_CMD_SAVEENV=3Dy
> +CONFIG_CMD_LOADENV=3Dy
> +CONFIG_CMD_EXPORT=3Dy
> +CONFIG_CMD_PRINTENV=3Dy
> +CONFIG_CMD_READLINE=3Dy
> +CONFIG_CMD_ECHO_E=3Dy
> +CONFIG_CMD_MEMINFO=3Dy
> +CONFIG_CMD_MTEST=3Dy
> +CONFIG_CMD_FLASH=3Dy
> +CONFIG_CMD_BOOTM_ZLIB=3Dy
> +CONFIG_CMD_BOOTM_BZLIB=3Dy
> +CONFIG_CMD_BOOTM_SHOW_TYPE=3Dy
> +CONFIG_CMD_RESET=3Dy
> +CONFIG_CMD_GO=3Dy
> +CONFIG_CMD_TIMEOUT=3Dy
> +CONFIG_CMD_PARTITION=3Dy
> +CONFIG_CMD_GPIO=3Dy
> +CONFIG_CMD_UNLZO=3Dy
> +CONFIG_CMD_I2C=3Dy
> +CONFIG_NET=3Dy
> +CONFIG_NET_DHCP=3Dy
> +CONFIG_NET_PING=3Dy
> +CONFIG_NET_TFTP=3Dy
> +CONFIG_DRIVER_NET_SMC911X=3Dy
> +CONFIG_DRIVER_NET_FEC_IMX=3Dy
> +CONFIG_DRIVER_SPI_IMX=3Dy
> +CONFIG_I2C=3Dy
> +CONFIG_I2C_IMX=3Dy
> +CONFIG_MTD=3Dy
> +CONFIG_NAND=3Dy
> +CONFIG_NAND_IMX=3Dy
> +CONFIG_USB=3Dy
> +CONFIG_USB_EHCI=3Dy
> +CONFIG_MCI=3Dy
> +# CONFIG_MCI_WRITE is not set
> +CONFIG_MCI_IMX_ESDHC=3Dy
> +CONFIG_I2C_MC13892=3Dy
> +CONFIG_FS_CRAMFS=3Dy
> +CONFIG_FS_FAT=3Dy
> +CONFIG_FS_FAT_LFN=3Dy
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 564e2fe..15b7bfb 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -26,6 +26,7 @@ config ARCH_TEXT_BASE
>  	default 0x7ff00000 if MACH_TQMA53
>  	default 0x97f00000 if MACH_TX51
>  	default 0x4fc00000 if MACH_MX6Q_ARM2
> +	default 0x97f00000 if MACH_CCMX51
>  =

>  config BOARDINFO
>  	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
> @@ -50,6 +51,7 @@ config BOARDINFO
>  	default "TQ tqma53" if MACH_TQMA53
>  	default "Ka-Ro tx51" if MACH_TX51
>  	default "Freescale i.MX6q armadillo2" if MACH_MX6Q_ARM2
> +	default "ConnectCore i.MX51" if MACH_CCMX51
>  =

>  choice
>  	prompt "Select boot mode"
> @@ -405,6 +407,23 @@ config MACH_TX51
>  	help
>  	  Say Y here if you are using the Ka-Ro tx51 board
>  =

> +config MACH_CCMX51
> +	bool "ConnectCore i.MX51"
> +	select IMX_IIM
> +	select SPI
> +	select DRIVER_SPI_IMX
> +	select MFD_MC13XXX
> +	help
> +	  Say Y here if you are using Digi ConnectCore (W)i-i.MX51
> +	  equipped with a Freescale i.MX51 Processor
> +
> +config MACH_CCMX51_BASEBOARD
> +	bool "Digi development board for CCMX51 module"
> +	depends on MACH_CCMX51
> +	default y
> +	help
> +	  This adds board specific devices that can be found on Digi
> +	  evaluation board for CCMX51 module.
>  =

>  endchoice
>  =

> diff --git a/arch/arm/mach-imx/include/mach/iomux-mx51.h b/arch/arm/mach-=
imx/include/mach/iomux-mx51.h
> index c7f5169..8fbe926 100644
> --- a/arch/arm/mach-imx/include/mach/iomux-mx51.h
> +++ b/arch/arm/mach-imx/include/mach/iomux-mx51.h

Please do not manually update this file. Instead, just copy the
iomux-mx51.h from the kernel. I'd like to keep them in sync. The
things you change here are fixed in the kernel already.


> @@ -256,7 +256,7 @@
>  #define MX51_PAD_NANDF_RB1__GPIO3_9		IOMUX_PAD(0x4fc, 0x120, 3, __NA_, 0=
, MX51_GPIO_PAD_CTRL)
>  #define MX51_PAD_NANDF_RB1__NANDF_RB1		IOMUX_PAD(0x4fc, 0x120, 0, __NA_,=
 0, NO_PAD_CTRL)
>  #define MX51_PAD_NANDF_RB1__PATA_IORDY		IOMUX_PAD(0x4fc, 0x120, 1, __NA_=
, 0, NO_PAD_CTRL)
> -#define MX51_PAD_NANDF_RB1__SD4_CMD		IOMUX_PAD(0x4fc, 0x120, 5, __NA_, 0=
, MX51_SDHCI_PAD_CTRL)
> +#define MX51_PAD_NANDF_RB1__SD4_CMD		IOMUX_PAD(0x4fc, 0x120, 0x15, __NA_=
, 0, MX51_SDHCI_PAD_CTRL)
>  #define MX51_PAD_NANDF_RB2__DISP2_WAIT		IOMUX_PAD(0x500, 0x124, 5, 0x9a8=
, 0, NO_PAD_CTRL)
>  #define MX51_PAD_NANDF_RB2__ECSPI2_SCLK		IOMUX_PAD(0x500, 0x124, 2, __NA=
_, 0, MX51_ECSPI_PAD_CTRL)
>  #define MX51_PAD_NANDF_RB2__FEC_COL		IOMUX_PAD(0x500, 0x124, 1, 0x94c, 0=
, MX51_PAD_CTRL_2)
> @@ -316,7 +316,7 @@
>  #define MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK	IOMUX_PAD(0x538, 0x150, 1, 0x=
974, 0, MX51_PAD_CTRL_4)
>  #define MX51_PAD_NANDF_RDY_INT__GPIO3_24	IOMUX_PAD(0x538, 0x150, 3, __NA=
_, 0, MX51_GPIO_PAD_CTRL)
>  #define MX51_PAD_NANDF_RDY_INT__NANDF_RDY_INT	IOMUX_PAD(0x538, 0x150, 0,=
 0x938, 0, NO_PAD_CTRL)
> -#define MX51_PAD_NANDF_RDY_INT__SD3_CMD		IOMUX_PAD(0x538, 0x150, 5, __NA=
_, 0, MX51_SDHCI_PAD_CTRL)
> +#define MX51_PAD_NANDF_RDY_INT__SD3_CMD		IOMUX_PAD(0x538, 0x150, 0x15, _=
_NA_, 0, MX51_SDHCI_PAD_CTRL)
>  #define MX51_PAD_NANDF_D15__ECSPI2_MOSI		IOMUX_PAD(0x53c, 0x154, 2, __NA=
_, 0, MX51_ECSPI_PAD_CTRL)
>  #define MX51_PAD_NANDF_D15__GPIO3_25		IOMUX_PAD(0x53c, 0x154, 3, __NA_, =
0, MX51_GPIO_PAD_CTRL)
>  #define MX51_PAD_NANDF_D15__NANDF_D15		IOMUX_PAD(0x53c, 0x154, 0, __NA_,=
 0, NO_PAD_CTRL)
> -- =

> 1.7.3.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
