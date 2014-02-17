Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFIwB-0002ha-Qq
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 07:48:25 +0000
Date: Mon, 17 Feb 2014 08:48:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140217074801.GM17250@pengutronix.de>
References: <1392589208-2802-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1392589208-2802-1-git-send-email-poggi.raph@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Adding minimal support for the UDOO board.
To: =?iso-8859-15?Q?Rapha=EBl?= POGGI <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

Hi Rapha=EBl,

On Sun, Feb 16, 2014 at 02:20:08PM -0800, Rapha=EBl POGGI wrote:
> From: Raphael Poggi <poggi.raph@gmail.com>
> =

> For more information about the board: http://www.udoo.org/
> =

> Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>

Your patch contains several coding style issues, most significantly:
Please use tabs for indendation, not spaces. You should run
scripts/checkpatch.pl over your patch next time, it catches most of
the issues.
Otherwise your patch looks fine and I applied it after fixing the coding
style.

Thanks
 Sascha

> ---
>  arch/arm/boards/Makefile                          |   1 +
>  arch/arm/boards/udoo/Makefile                     |   3 +
>  arch/arm/boards/udoo/board.c                      | 204 ++++++++++++++++=
++++++
>  arch/arm/boards/udoo/env/config-board             |   6 +
>  arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg | 104 +++++++++++
>  arch/arm/boards/udoo/lowlevel.c                   |  17 ++
>  arch/arm/configs/imx_v7_defconfig                 |   1 +
>  arch/arm/dts/Makefile                             |   4 +-
>  arch/arm/dts/imx6q-udoo.dts                       |  23 +++
>  arch/arm/dts/imx6qdl-udoo.dtsi                    | 108 ++++++++++++
>  arch/arm/mach-imx/Kconfig                         |   5 +
>  images/Makefile.imx                               |   5 +
>  12 files changed, 480 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boards/udoo/Makefile
>  create mode 100644 arch/arm/boards/udoo/board.c
>  create mode 100644 arch/arm/boards/udoo/env/config-board
>  create mode 100644 arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg
>  create mode 100644 arch/arm/boards/udoo/lowlevel.c
>  create mode 100644 arch/arm/dts/imx6q-udoo.dts
>  create mode 100644 arch/arm/dts/imx6qdl-udoo.dtsi
> =

> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index befddd0..a45adee 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -91,6 +91,7 @@ obj-$(CONFIG_MACH_TX25)				+=3D karo-tx25/
>  obj-$(CONFIG_MACH_TX28)				+=3D karo-tx28/
>  obj-$(CONFIG_MACH_TX51)				+=3D karo-tx51/
>  obj-$(CONFIG_MACH_TX53)				+=3D karo-tx53/
> +obj-$(CONFIG_MACH_UDOO)             +=3D udoo/
>  obj-$(CONFIG_MACH_USB_A9260)			+=3D usb-a926x/
>  obj-$(CONFIG_MACH_USB_A9263)			+=3D usb-a926x/
>  obj-$(CONFIG_MACH_USB_A9G20)			+=3D usb-a926x/
> diff --git a/arch/arm/boards/udoo/Makefile b/arch/arm/boards/udoo/Makefile
> new file mode 100644
> index 0000000..ae17789
> --- /dev/null
> +++ b/arch/arm/boards/udoo/Makefile
> @@ -0,0 +1,3 @@
> +obj-y +=3D board.o flash-header-mx6-udoo.dcd.o
> +extra-y +=3D flash-header-mx6-udoo.dcd.S flash-header-mx6-udoo.dcd
> +lwl-y +=3D lowlevel.o
> diff --git a/arch/arm/boards/udoo/board.c b/arch/arm/boards/udoo/board.c
> new file mode 100644
> index 0000000..8302609
> --- /dev/null
> +++ b/arch/arm/boards/udoo/board.c
> @@ -0,0 +1,204 @@
> +/*
> + * Copyright (C) 2014 Rapha=EBl Poggi
> + * Copyright (C) 2012 Steffen Trumtrar, Pengutronix
> + *
> + * based on arch/arm/boards/freescale-mx6-arm2/board.c
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
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <environment.h>
> +#include <mach/imx6-regs.h>
> +#include <fec.h>
> +#include <gpio.h>
> +#include <mach/bbu.h>
> +#include <asm/armlinux.h>
> +#include <generated/mach-types.h>
> +#include <partition.h>
> +#include <linux/phy.h>
> +#include <asm/io.h>
> +#include <asm/mmu.h>
> +#include <mach/generic.h>
> +#include <sizes.h>
> +#include <net.h>
> +#include <linux/micrel_phy.h>
> +#include <mach/imx6.h>
> +#include <mach/devices-imx6.h>
> +#include <mach/iomux-mx6.h>
> +#include <spi/spi.h>
> +#include <mach/spi.h>
> +#include <mach/usb.h>
> +
> +static iomux_v3_cfg_t udoo_enet_gpio_pads_1[] =3D {
> +       MX6Q_PAD_ENET_MDIO__ENET_MDIO           | MUX_PAD_CTRL(MX6Q_ENET_=
PAD_CTRL),
> +       MX6Q_PAD_ENET_MDC__ENET_MDC                     | MUX_PAD_CTRL(MX=
6Q_ENET_PAD_CTRL),
> +       MX6Q_PAD_RGMII_TXC__ENET_RGMII_TXC      | MUX_PAD_CTRL(MX6Q_ENET_=
PAD_CTRL),
> +       MX6Q_PAD_RGMII_TD0__ENET_RGMII_TD0      | MUX_PAD_CTRL(MX6Q_ENET_=
PAD_CTRL),
> +       MX6Q_PAD_RGMII_TD1__ENET_RGMII_TD1      | MUX_PAD_CTRL(MX6Q_ENET_=
PAD_CTRL),
> +       MX6Q_PAD_RGMII_TD2__ENET_RGMII_TD2      | MUX_PAD_CTRL(MX6Q_ENET_=
PAD_CTRL),
> +       MX6Q_PAD_RGMII_TD3__ENET_RGMII_TD3      | MUX_PAD_CTRL(MX6Q_ENET_=
PAD_CTRL),
> +       MX6Q_PAD_RGMII_TX_CTL__ENET_RGMII_TX_CTL        | MUX_PAD_CTRL(MX=
6Q_ENET_PAD_CTRL),
> +       MX6Q_PAD_ENET_REF_CLK__ENET_TX_CLK      | MUX_PAD_CTRL(MX6Q_ENET_=
PAD_CTRL),
> +       MX6Q_PAD_RGMII_RXC__ENET_RGMII_RXC      | MUX_PAD_CTRL(MX6Q_ENET_=
PAD_CTRL),
> +       /* RGMII reset */
> +       /* alimentazione ethernet*/
> +       MX6Q_PAD_EIM_EB3__GPIO_2_31             | MUX_PAD_CTRL(NO_PAD_CTR=
L),
> +       /* pin 32 - 1 - (MODE0) all */
> +       MX6Q_PAD_RGMII_RD0__GPIO_6_25   | MUX_PAD_CTRL(NO_PAD_CTRL),
> +       /* pin 31 - 1 - (MODE1) all */
> +       MX6Q_PAD_RGMII_RD1__GPIO_6_27   | MUX_PAD_CTRL(NO_PAD_CTRL),
> +       /* pin 28 - 1 - (MODE2) all */
> +       MX6Q_PAD_RGMII_RD2__GPIO_6_28   | MUX_PAD_CTRL(NO_PAD_CTRL),
> +       /* pin 27 - 1 - (MODE3) all */
> +       MX6Q_PAD_RGMII_RD3__GPIO_6_29   | MUX_PAD_CTRL(NO_PAD_CTRL),
> +       /* pin 33 - 1 - (CLK125_EN) 125Mhz clockout enabled */
> +};
> +
> +static iomux_v3_cfg_t udoo_enet_gpio_pads_2[] =3D {
> +       /* Ethernet */
> +       MX6Q_PAD_RGMII_RXC__GPIO_6_30,          /* PHYAD */
> +       MX6Q_PAD_RGMII_RD0__GPIO_6_25,          /* MODE0 */
> +       MX6Q_PAD_RGMII_RD1__GPIO_6_27,          /* MODE1 */
> +       MX6Q_PAD_RGMII_RD2__GPIO_6_28,          /* MODE2 */
> +       MX6Q_PAD_RGMII_RD3__GPIO_6_29,          /* MODE3 */
> +       MX6Q_PAD_RGMII_RX_CTL__GPIO_6_24,
> +};
> +
> +static int ksz9021rn_phy_fixup(struct phy_device *dev)
> +{
> +
> +       phy_write(dev, 0x09, 0x1c00);
> +       phy_write(dev, 0x4, 0x0000);
> +       phy_write(dev, 0x5, 0x0000);
> +       phy_write(dev, 0x6, 0x0000);
> +       phy_write(dev, 0x8, 0x03ff);
> +
> +       /* do same as linux kernel */
> +       /* min rx data delay */
> +       phy_write(dev, 0x0b, 0x8105);
> +       phy_write(dev, 0x0c, 0x0000);
> +
> +       /* max rx/tx clock delay, min rx/tx control delay */
> +       phy_write(dev, 0x0b, 0x8104);
> +       phy_write(dev, 0x0c, 0xf0f0);
> +       phy_write(dev, 0x0b, 0x104);
> +
> +       return 0;
> +}
> +
> +static int udoo_ksz9021rn_setup(void)
> +{
> +       mxc_iomux_v3_setup_multiple_pads(udoo_enet_gpio_pads_1,
> +                       ARRAY_SIZE(udoo_enet_gpio_pads_1));
> +
> +       gpio_direction_output( IMX_GPIO_NR( 2 , 31 ) , 1 ); /* Power on e=
net */
> +
> +       /* MODE strap-in pins: advertise all capabilities */
> +       gpio_direction_output(185, 1); /* GPIO 6-25 */
> +       gpio_direction_output(187, 1); /* GPIO 6-27 */
> +       gpio_direction_output(188, 1); /* GPIO 6-28*/
> +       gpio_direction_output(189, 1); /* GPIO 6-29 */
> +
> +       mdelay(10);
> +
> +       /* Enable 125 MHz clock output */
> +	   gpio_direction_output(184, 1); /* GPIO 6-24 */
> +
> +       mdelay( 100 );
> +
> +       gpio_free(IMX_GPIO_NR(6, 24));
> +       gpio_free(IMX_GPIO_NR(6, 25));
> +       gpio_free(IMX_GPIO_NR(6, 27));
> +       gpio_free(IMX_GPIO_NR(6, 28));
> +       gpio_free(IMX_GPIO_NR(6, 29));
> +
> +       mxc_iomux_v3_setup_multiple_pads(udoo_enet_gpio_pads_2, ARRAY_SIZ=
E(udoo_enet_gpio_pads_2));
> +
> +       return 0;
> +}
> +/*
> + * Do this before the fec initializes but after our
> + * gpios are available.
> + */
> +fs_initcall(udoo_ksz9021rn_setup);
> +
> +static void udoo_ehci_init(void)
> +{
> +       /* hub reset */
> +       gpio_direction_output(204, 0);
> +       udelay(2000);
> +       gpio_set_value(204, 1);
> +}
> +
> +static iomux_v3_cfg_t const wdog_pads[] =3D {
> +       MX6Q_PAD_EIM_A24__GPIO_5_4 | MUX_PAD_CTRL(NO_PAD_CTRL),
> +       MX6Q_PAD_EIM_D19__EPIT1_EPITO,
> +};
> +
> +#define WDT_EN      IMX_GPIO_NR(5, 4)
> +#define WDT_TRG     IMX_GPIO_NR(3, 19)
> +static void setup_iomux_wdog(void)
> +{
> +       mxc_iomux_v3_setup_multiple_pads(wdog_pads, ARRAY_SIZE(wdog_pads)=
);
> +       gpio_direction_output(WDT_TRG, 0);
> +       gpio_direction_output(WDT_EN, 1);
> +       gpio_direction_input(WDT_TRG);
> +}
> +
> +static void udoo_epit_init( void )
> +{
> +
> +       writel(0x0000000, 0x20D0000);
> +       writel(0x142000F, 0x20D0000);
> +       writel(0x10000, 0x20D0008);
> +       writel(0x0, 0x20D000C);
> +}
> +
> +static int udoo_devices_init(void)
> +{
> +       if (!of_machine_is_compatible("fsl,imx6q-udoo"))
> +               return 0;
> +
> +       setup_iomux_wdog();
> +       udoo_ehci_init();
> +       udoo_epit_init();
> +
> +       armlinux_set_bootparams((void *)0x10000100);
> +
> +       return 0;
> +}
> +device_initcall(udoo_devices_init);
> +
> +static int udoo_coredevices_init(void)
> +{
> +       if (!of_machine_is_compatible("fsl,imx6q-udoo"))
> +               return 0;
> +
> +       phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
> +                                          ksz9021rn_phy_fixup);
> +       return 0;
> +}
> +coredevice_initcall(udoo_coredevices_init);
> +
> +static int udoo_postcore_init(void)
> +{
> +       if (!of_machine_is_compatible("fsl,imx6q-udoo"))
> +               return 0;
> +
> +       imx6_init_lowlevel();
> +
> +       barebox_set_hostname("udoo");
> +
> +       return 0;
> +}
> +postcore_initcall(udoo_postcore_init);
> diff --git a/arch/arm/boards/udoo/env/config-board b/arch/arm/boards/udoo=
/env/config-board
> new file mode 100644
> index 0000000..4cabac6
> --- /dev/null
> +++ b/arch/arm/boards/udoo/env/config-board
> @@ -0,0 +1,6 @@
> +#!/bin/sh
> +
> +# board defaults, do not change in running system. Change /env/config
> +# instead
> +
> +global.linux.bootargs.base=3D"console=3Dttymxc1,115200"
> diff --git a/arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg b/arch/arm=
/boards/udoo/flash-header-mx6-udoo.imxcfg
> new file mode 100644
> index 0000000..b142f59
> --- /dev/null
> +++ b/arch/arm/boards/udoo/flash-header-mx6-udoo.imxcfg
> @@ -0,0 +1,104 @@
> +soc imx6
> +loadaddr 0x20000000
> +dcdofs 0x400
> +
> +
> +/* MX6_IOM_DRAM_SDQS0 -> MX6_IOM_DRAM_SDQS7 */
> +wm 32 0x020e05a8 0x00000030
> +wm 32 0x020e05b0 0x00000030
> +wm 32 0x020e0524 0x00000030
> +wm 32 0x020e051c 0x00000030
> +wm 32 0x020e0518 0x00000030
> +wm 32 0x020e050c 0x00000030
> +wm 32 0x020e05b8 0x00000030
> +wm 32 0x020e05c0 0x00000030
> +/********************************************/
> +
> +/* MX6_IOM_DRAM_DQM0 -> MX6_IOM_DRAM_DQM7 */
> +wm 32 0x020e05ac 0x00020030
> +wm 32 0x020e05b4 0x00020030
> +wm 32 0x020e0528 0x00020030
> +wm 32 0x020e0520 0x00020030
> +wm 32 0x020e0514 0x00020030
> +wm 32 0x020e0510 0x00020030
> +wm 32 0x020e05bc 0x00020030
> +wm 32 0x020e05c4 0x00020030
> +/******************************************/
> +
> +wm 32 0x020e056c 0x00020030 /* MX6_IOM_DRAM_CAS */
> +wm 32 0x020e0578 0x00020030 /* MX6_IOM_DRAM_RAS */
> +wm 32 0x020e0588 0x00020030 /* MX6_IOM_DRAM_SDCLK_0 */
> +wm 32 0x020e0594 0x00020030    /* MX6_IOM_DRAM_SDCLK_1 */
> +wm 32 0x020e057c 0x00020030 /* MX6_IOM_DRAM_RESET */
> +wm 32 0x020e0590 0x00003000
> +wm 32 0x020e0598 0x00003000
> +wm 32 0x020e058c 0x00000000
> +wm 32 0x020e059c 0x00003030
> +wm 32 0x020e05a0 0x00003030
> +
> +/* MX6_IOM_GRP_B0DS -> MX6_IOM_GRP_B7DS */
> +wm 32 0x020e0784 0x00000030
> +wm 32 0x020e0788 0x00000030
> +wm 32 0x020e0794 0x00000030
> +wm 32 0x020e079c 0x00000030
> +wm 32 0x020e07a0 0x00000030
> +wm 32 0x020e07a4 0x00000030
> +wm 32 0x020e07a8 0x00000030
> +wm 32 0x020e0748 0x00000030
> +/***************************************/
> +
> +wm 32 0x020e074c 0x00000030 /* MX6_IOM_GRP_ADDDS */
> +wm 32 0x020e0750 0x00020000
> +wm 32 0x020e0758 0x00000000
> +wm 32 0x020e0774 0x00020000
> +wm 32 0x020e078c 0x00000030 /* MX6_IOM_GRP_CTLDS */
> +wm 32 0x020e0798 0x000c0000
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
> +wm 32 0x021b0004 0x00020036
> +wm 32 0x021b0008 0x09444040
> +wm 32 0x021b000c 0x54597955
> +wm 32 0x021b0010 0xFF328F64
> +wm 32 0x021b0014 0x01FF00DB
> +wm 32 0x021b0018 0x00001740
> +wm 32 0x021b001c 0x00008000
> +wm 32 0x021b002c 0x000026D2
> +wm 32 0x021b0030 0x00591023
> +wm 32 0x021b0040 0x00000027
> +wm 32 0x021b0000 0x831A0000
> +wm 32 0x021b001c 0x04088032
> +wm 32 0x021b001c 0x00008033
> +wm 32 0x021b001c 0x00048031
> +wm 32 0x021b001c 0x09408030
> +wm 32 0x021b001c 0x04008040
> +wm 32 0x021b0800 0xA1380003
> +wm 32 0x021b4800 0xA1380003
> +wm 32 0x021b0020 0x00005800
> +wm 32 0x021b0818 0x00011117
> +wm 32 0x021b4818 0x00011117
> +wm 32 0x021b083c 0x43510360
> +wm 32 0x021b0840 0x0342033F
> +wm 32 0x021b483c 0x033F033F
> +wm 32 0x021b4840 0x03290266
> +wm 32 0x021b0848 0x4B3E4141
> +wm 32 0x021b4848 0x47413B4A
> +wm 32 0x021b0850 0x42404843
> +wm 32 0x021b4850 0x4C3F4C45
> +wm 32 0x021b080c 0x00350035
> +wm 32 0x021b0810 0x001F001F
> +wm 32 0x021b480c 0x00010001
> +wm 32 0x021b4810 0x00010001
> +wm 32 0x021b08b8 0x00000800
> +wm 32 0x021b48b8 0x00000800
> +wm 32 0x021b0004 0x00025576
> +wm 32 0x021b0404 0x00011006
> +wm 32 0x021b001c 0x00000000
> +
> diff --git a/arch/arm/boards/udoo/lowlevel.c b/arch/arm/boards/udoo/lowle=
vel.c
> new file mode 100644
> index 0000000..68b261d
> --- /dev/null
> +++ b/arch/arm/boards/udoo/lowlevel.c
> @@ -0,0 +1,17 @@
> +#include <common.h>
> +#include <sizes.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +
> +extern char __dtb_imx6q_udoo_start[];
> +
> +ENTRY_FUNCTION(start_imx6_udoo, r0, r1, r2)
> +{
> +       uint32_t fdt;
> +
> +       arm_cpu_lowlevel_init();
> +
> +       fdt =3D (uint32_t)__dtb_imx6q_udoo_start - get_runtime_offset();
> +
> +       barebox_arm_entry(0x10000000, SZ_1G, fdt);
> +}
> diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_=
defconfig
> index 0f8b3ef..9634615 100644
> --- a/arch/arm/configs/imx_v7_defconfig
> +++ b/arch/arm/configs/imx_v7_defconfig
> @@ -13,6 +13,7 @@ CONFIG_MACH_TQMA6X=3Dy
>  CONFIG_MACH_SABRELITE=3Dy
>  CONFIG_MACH_NITROGEN6X=3Dy
>  CONFIG_MACH_SOLIDRUN_HUMMINGBOARD=3Dy
> +CONFIG_MACH_UDOO=3Dy
>  CONFIG_IMX_IIM=3Dy
>  CONFIG_IMX_IIM_FUSE_BLOW=3Dy
>  CONFIG_IMX_OCOTP=3Dy
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 07508e3..45b4b54 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -23,7 +23,8 @@ dtb-$(CONFIG_ARCH_IMX6) +=3D imx6q-gk802.dtb \
>  	imx6q-phytec-pbab01.dtb \
>  	imx6dl-hummingboard.dtb \
>  	imx6q-nitrogen6x.dtb \
> -	imx6dl-nitrogen6x.dtb
> +	imx6dl-nitrogen6x.dtb \
> +    imx6q-udoo.dtb
>  dtb-$(CONFIG_ARCH_MVEBU) +=3D dove-cubox.dtb
>  dtb-$(CONFIG_ARCH_SOCFPGA) +=3D socfpga_cyclone5_sockit.dtb \
>  	socfpga_cyclone5_socrates.dtb
> @@ -55,6 +56,7 @@ pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) +=3D socfpga_=
cyclone5_sockit.dtb.o
>  pbl-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD) +=3D imx6dl-hummingboard.dtb.o
>  pbl-$(CONFIG_MACH_SABRELITE) +=3D imx6q-sabrelite.dtb.o imx6dl-sabrelite=
.dtb.o
>  pbl-$(CONFIG_MACH_NITROGEN6X) +=3D imx6q-nitrogen6x.dtb.o imx6dl-nitroge=
n6x.dtb.o
> +pbl-$(CONFIG_MACH_UDOO) +=3D imx6q-udoo.dtb.o
>  =

>  .SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
>  .SECONDARY: $(patsubst %,$(obj)/%.S,$(dtb-y))
> diff --git a/arch/arm/dts/imx6q-udoo.dts b/arch/arm/dts/imx6q-udoo.dts
> new file mode 100644
> index 0000000..a74048f
> --- /dev/null
> +++ b/arch/arm/dts/imx6q-udoo.dts
> @@ -0,0 +1,23 @@
> +/*
> + * Copyright 2014 Rapha=EBl Poggi
> + * Copyright 2012 Freescale Semiconductor, Inc.
> + * Copyright 2011 Linaro Ltd.
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
> +
> +#include "imx6q.dtsi"
> +#include "imx6qdl-udoo.dtsi"
> +
> +/ {
> +       model =3D "Freescale i.MX6 Quad UDOO Board";
> +       compatible =3D "fsl,imx6q-udoo", "fsl,imx6q";
> +};
> +
> diff --git a/arch/arm/dts/imx6qdl-udoo.dtsi b/arch/arm/dts/imx6qdl-udoo.d=
tsi
> new file mode 100644
> index 0000000..c705684
> --- /dev/null
> +++ b/arch/arm/dts/imx6qdl-udoo.dtsi
> @@ -0,0 +1,108 @@
> +/*
> + * Copyright 2014 Rapha=EBl Poggi
> + * Copyright 2011 Freescale Semiconductor, Inc.
> + * Copyright 2011 Linaro Ltd.
> + *
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +       chosen {
> +               linux,stdout-path =3D &uart2;
> +
> +       };
> +
> +       memory {
> +               reg =3D <0x10000000 0x40000000>;
> +       };
> +
> +       regulators {
> +               compatible =3D "simple-bus";
> +               #address-cells =3D <1>;
> +               #size-cells =3D <0>;
> +
> +               reg_2p5v: regulator@0 {
> +                       compatible =3D "regulator-fixed";
> +                       reg =3D <0>;
> +                       regulator-name =3D "2P5V";
> +                       regulator-min-microvolt =3D <2500000>;
> +                       regulator-max-microvolt =3D <2500000>;
> +                       regulator-always-on;
> +               };
> +
> +               reg_3p3v: regulator@1 {
> +                       compatible =3D "regulator-fixed";
> +                       reg =3D <1>;
> +                       regulator-name =3D "3P3V";
> +                       regulator-min-microvolt =3D <3300000>;
> +                       regulator-max-microvolt =3D <3300000>;
> +                       regulator-always-on;
> +               };
> +
> +               reg_usb_otg_vbus: regulator@2 {
> +                       compatible =3D "regulator-fixed";
> +                       reg =3D <2>;
> +                       regulator-name =3D "usb_otg_vbus";
> +                       regulator-min-microvolt =3D <5000000>;
> +                       regulator-max-microvolt =3D <5000000>;
> +                       gpio =3D <&gpio3 22 0>;
> +                       enable-active-high;
> +               };
> +       };
> +};
> +
> +&i2c1 {
> +       clock-frequency =3D <100000>;
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_i2c1>;
> +       status =3D "okay";
> +
> +};
> +
> +&iomuxc {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_hog>;
> +
> +       imx6q-udoo {
> +               pinctrl_hog: hoggrp {
> +                       fsl,pins =3D <
> +                               /* SGTL5000 sys_mclk */
> +                               MX6QDL_PAD_GPIO_0__CCM_CLKO1    0x030b0
> +                       >;
> +               };
> +
> +               pinctrl_i2c1: i2c1grp {
> +                       fsl,pins =3D <MX6QDL_I2C1_PINGRP1>;
> +               };
> +
> +               pinctrl_uart2: uart2grp {
> +                       fsl,pins =3D <MX6QDL_UART2_PINGRP1>;
> +               };
> +
> +               pinctrl_usdhc3: usdhc3grp {
> +                       fsl,pins =3D <
> +                               MX6QDL_USDHC3_PINGRP_D4
> +                       >;
> +               };
> +
> +       };
> +};
> +
> +&uart2 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_uart2>;
> +       status =3D "okay";
> +};
> +
> +&usdhc3 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&pinctrl_usdhc3>;
> +       status =3D "okay";
> +};
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 5933f81..28d1990 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -37,6 +37,7 @@ config ARCH_TEXT_BASE
>  	default 0x2fc00000 if MACH_TQMA6X
>  	default 0x4fc00000 if MACH_PHYTEC_PFLA02
>  	default 0x4fc00000 if MACH_DFI_FS700_M60
> +    default 0x4fc00000 if MACH_UDOO
>  =

>  config ARCH_IMX_INTERNAL_BOOT
>  	bool "support internal boot mode"
> @@ -233,6 +234,10 @@ config MACH_SOLIDRUN_HUMMINGBOARD
>  	bool "SolidRun Hummingboard"
>  	select ARCH_IMX6
>  =

> +config MACH_UDOO
> +	bool "Freescale i.MX6 UDOO Board"
> +	select ARCH_IMX6
> +
>  endif
>  =

>  # ----------------------------------------------------------
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 9aca871..e3b27b7 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -123,3 +123,8 @@ pblx-$(CONFIG_MACH_NITROGEN6X) +=3D start_imx6dl_nitr=
ogen6x_1g
>  CFG_start_imx6dl_nitrogen6x_1g.pblx.imximg =3D $(board)/boundarydevices-=
nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
>  FILE_barebox-boundarydevices-imx6dl-nitrogen6x-1g.img =3D start_imx6dl_n=
itrogen6x_1g.pblx.imximg
>  image-$(CONFIG_MACH_NITROGEN6X) +=3D barebox-boundarydevices-imx6dl-nitr=
ogen6x-1g.img
> +
> +pblx-$(CONFIG_MACH_UDOO) +=3D start_imx6_udoo
> +CFG_start_imx6_udoo.pblx.imximg =3D $(board)/udoo/flash-header-mx6-udoo.=
imxcfg
> +FILE_barebox-freescale-imx6q-udoo.img =3D start_imx6_udoo.pblx.imximg
> +image-$(CONFIG_MACH_UDOO) +=3D barebox-freescale-imx6q-udoo.img
> -- =

> 1.8.3.2
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
