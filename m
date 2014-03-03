Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WKNwj-0006PP-B6
 for barebox@lists.infradead.org; Mon, 03 Mar 2014 08:10:00 +0000
Date: Mon, 3 Mar 2014 09:09:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140303080935.GL17250@pengutronix.de>
References: <1393604879-29317-1-git-send-email-philippe.retornaz@epfl.ch>
 <1393604879-29317-2-git-send-email-philippe.retornaz@epfl.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1393604879-29317-2-git-send-email-philippe.retornaz@epfl.ch>
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
Subject: Re: [PATCH 1/1 v2] ARM: i.MX31: Add support for mx31moboard board
To: Philippe =?iso-8859-15?Q?R=E9tornaz?= <philippe.retornaz@epfl.ch>
Cc: barebox@lists.infradead.org

On Fri, Feb 28, 2014 at 05:27:59PM +0100, Philippe R=E9tornaz wrote:
> The mx31moboard is used on the marXbot, Eyebot and Footbot robot.
> =

> Signed-off-by: Philippe R=E9tornaz <philippe.retornaz@epfl.ch>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/Makefile                          |    1 +
>  arch/arm/boards/mx31moboard/Makefile              |   20 ++
>  arch/arm/boards/mx31moboard/env/boot/nor          |    9 +
>  arch/arm/boards/mx31moboard/env/boot/sd           |    8 +
>  arch/arm/boards/mx31moboard/env/boot/usbmsd       |    8 +
>  arch/arm/boards/mx31moboard/env/config-board      |    7 +
>  arch/arm/boards/mx31moboard/env/init/mtdparts-nor |   11 +
>  arch/arm/boards/mx31moboard/lowlevel.c            |  114 +++++++++
>  arch/arm/boards/mx31moboard/mx31moboard.c         |  259 +++++++++++++++=
++++++
>  arch/arm/boards/mx31moboard/mx31moboard.dox       |   10 +
>  arch/arm/mach-imx/Kconfig                         |   11 +
>  11 files changed, 458 insertions(+)
>  create mode 100644 arch/arm/boards/mx31moboard/Makefile
>  create mode 100644 arch/arm/boards/mx31moboard/env/boot/nor
>  create mode 100644 arch/arm/boards/mx31moboard/env/boot/sd
>  create mode 100644 arch/arm/boards/mx31moboard/env/boot/usbmsd
>  create mode 100644 arch/arm/boards/mx31moboard/env/config-board
>  create mode 100644 arch/arm/boards/mx31moboard/env/init/mtdparts-nor
>  create mode 100644 arch/arm/boards/mx31moboard/lowlevel.c
>  create mode 100644 arch/arm/boards/mx31moboard/mx31moboard.c
>  create mode 100644 arch/arm/boards/mx31moboard/mx31moboard.dox
> =

> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index ffd6bb3..0d8c9cf 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -51,6 +51,7 @@ obj-$(CONFIG_MACH_MIOA701)			+=3D mioa701/
>  obj-$(CONFIG_MACH_MMCCPU)			+=3D mmccpu/
>  obj-$(CONFIG_MACH_MX23EVK)			+=3D freescale-mx23-evk/
>  obj-$(CONFIG_MACH_MX28EVK)			+=3D freescale-mx28-evk/
> +obj-$(CONFIG_MACH_MX31MOBOARD)			+=3D mx31moboard/
>  obj-$(CONFIG_MACH_MX6Q_ARM2)			+=3D freescale-mx6-arm2/
>  obj-$(CONFIG_MACH_NESO)				+=3D guf-neso/
>  obj-$(CONFIG_MACH_NOMADIK_8815NHK)		+=3D nhk8815/
> diff --git a/arch/arm/boards/mx31moboard/Makefile b/arch/arm/boards/mx31m=
oboard/Makefile
> new file mode 100644
> index 0000000..83a6016
> --- /dev/null
> +++ b/arch/arm/boards/mx31moboard/Makefile
> @@ -0,0 +1,20 @@
> +#
> +# (C) Copyright 2007 Juergen Beisert <jbe@pengutronix.de>
> +#
> +# See file CREDITS for list of people who contributed to this
> +# project.
> +#
> +# This program is free software; you can redistribute it and/or
> +# modify it under the terms of the GNU General Public License as
> +# published by the Free Software Foundation; either version 2 of
> +# the License, or (at your option) any later version.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +# GNU General Public License for more details.
> +#
> +#
> +
> +lwl-y +=3D lowlevel.o
> +obj-y +=3D mx31moboard.o
> diff --git a/arch/arm/boards/mx31moboard/env/boot/nor b/arch/arm/boards/m=
x31moboard/env/boot/nor
> new file mode 100644
> index 0000000..e36655c
> --- /dev/null
> +++ b/arch/arm/boards/mx31moboard/env/boot/nor
> @@ -0,0 +1,9 @@
> +#!/bin/sh
> +
> +if [ "$1" =3D menu ]; then
> +        boot-menu-add-entry "$0" "NOR Flash"
> +        exit
> +fi
> +
> +global.bootm.image=3D"/dev/nor0.kernel"
> +global.linux.bootargs.dyn.root=3D"root=3D/dev/mtdblock3 ro"
> diff --git a/arch/arm/boards/mx31moboard/env/boot/sd b/arch/arm/boards/mx=
31moboard/env/boot/sd
> new file mode 100644
> index 0000000..16e734d
> --- /dev/null
> +++ b/arch/arm/boards/mx31moboard/env/boot/sd
> @@ -0,0 +1,8 @@
> +#!/bin/sh
> +
> +if [ "$1" =3D menu ]; then
> +        boot-menu-add-entry "$0" "SD Boot"
> +        exit
> +fi
> +
> +boot mci0
> diff --git a/arch/arm/boards/mx31moboard/env/boot/usbmsd b/arch/arm/board=
s/mx31moboard/env/boot/usbmsd
> new file mode 100644
> index 0000000..6a16d3e
> --- /dev/null
> +++ b/arch/arm/boards/mx31moboard/env/boot/usbmsd
> @@ -0,0 +1,8 @@
> +#!/bin/sh
> +
> +if [ "$1" =3D menu ]; then
> +        boot-menu-add-entry "$0" "USB Boot"
> +        exit
> +fi
> +
> +boot ehci0
> diff --git a/arch/arm/boards/mx31moboard/env/config-board b/arch/arm/boar=
ds/mx31moboard/env/config-board
> new file mode 100644
> index 0000000..f67b333
> --- /dev/null
> +++ b/arch/arm/boards/mx31moboard/env/config-board
> @@ -0,0 +1,7 @@
> +#!/bin/sh
> +
> +# board defaults, do not change in running system. Change /env/config
> +# instead
> +
> +global.boot.default=3D"usbmsd sd nor"
> +global.linux.bootargs.base=3D"console=3Dttymxc0,921600"
> diff --git a/arch/arm/boards/mx31moboard/env/init/mtdparts-nor b/arch/arm=
/boards/mx31moboard/env/init/mtdparts-nor
> new file mode 100644
> index 0000000..f09a9cc
> --- /dev/null
> +++ b/arch/arm/boards/mx31moboard/env/init/mtdparts-nor
> @@ -0,0 +1,11 @@
> +#!/bin/sh
> +
> +if [ "$1" =3D menu ]; then
> +	init-menu-add-entry "$0" "NOR partitions"
> +	exit
> +fi
> +
> +mtdparts=3D"512k(nor0.barebox)ro,256k(nor0.bareboxenv),4M(nor0.kernel),-=
(nor0.root)"
> +kernelname=3D"physmap-flash.0"
> +
> +mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
> diff --git a/arch/arm/boards/mx31moboard/lowlevel.c b/arch/arm/boards/mx3=
1moboard/lowlevel.c
> new file mode 100644
> index 0000000..e9ffb74
> --- /dev/null
> +++ b/arch/arm/boards/mx31moboard/lowlevel.c
> @@ -0,0 +1,114 @@
> +/*
> + *
> + * (c) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
> + * (c) 2014 EPFL, Philippe R=E9tornaz <philippe.retornaz@epfl.ch>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
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
> + */
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/system.h>
> +#include <asm-generic/memory_layout.h>
> +#include <asm-generic/sections.h>
> +#include <asm/barebox-arm-head.h>
> +#include <mach/imx31-regs.h>
> +#include <mach/imx-pll.h>
> +#include <asm/barebox-arm-head.h>
> +#include <mach/esdctl.h>
> +
> +static noinline __noreturn void mx31moboard_startup(void)
> +{
> +	uint32_t r;
> +	volatile int c;
> +
> +	/* Enable IPU Display interface */
> +	writel(1 << 6, MX31_IPU_CTRL_BASE_ADDR);
> +
> +	writel(0x074B0BF5, MX31_CCM_BASE_ADDR + MX31_CCM_CCMR);
> +
> +	for (c =3D 0; c < 0x4000; c++) ;
> +
> +	writel(0x074B0BF5 | MX31_CCMR_MPE, MX31_CCM_BASE_ADDR +
> +			MX31_CCM_CCMR);
> +	writel((0x074B0BF5 | MX31_CCMR_MPE) & ~MX31_CCMR_MDS,
> +			MX31_CCM_BASE_ADDR + MX31_CCM_CCMR);
> +
> +	writel(MX31_PDR0_CSI_PODF(0x1ff) | \
> +		MX31_PDR0_PER_PODF(7) | \
> +		MX31_PDR0_HSP_PODF(3) | \
> +		MX31_PDR0_NFC_PODF(5) | \
> +		MX31_PDR0_IPG_PODF(1) | \
> +		MX31_PDR0_MAX_PODF(3) | \
> +		MX31_PDR0_MCU_PODF(0), \
> +		MX31_CCM_BASE_ADDR + MX31_CCM_PDR0);
> +
> +	writel(IMX_PLL_PD(0) | IMX_PLL_MFD(0x33) |
> +			IMX_PLL_MFI(0xa) | IMX_PLL_MFN(0x0C),
> +			MX31_CCM_BASE_ADDR + MX31_CCM_MPCTL);
> +	writel(IMX_PLL_PD(1) | IMX_PLL_MFD(0x43) | IMX_PLL_MFI(12) |
> +			IMX_PLL_MFN(1), MX31_CCM_BASE_ADDR +
> +			MX31_CCM_SPCTL);
> +
> +	/*
> +	 * Configure IOMUXC
> +	 * Clears 0x43fa_c26c - 0x43fa_c2dc with 0,
> +	 * except 0x43fa_c278 (untouched), 0x43fa_c27c (set to 0x1000)
> +	 * and 0x43fa_c280 (untouched)
> +	 * (behaviour copied by sha, source unknown)
> +	 */
> +	writel(0, 0x43fac26c); /* SDCLK */
> +	writel(0, 0x43fac270); /* CAS */
> +	writel(0, 0x43fac274); /* RAS */
> +
> +	writel(0x1000, 0x43fac27c); /* CSD0 */
> +
> +	/* DQM3, DQM2, DQM1, DQM0, SD31-SD0, A25-A0, MA10 */
> +	for (r =3D 0x43fac284; r <=3D 0x43fac2dc; r +=3D 4)
> +		writel(0, r);
> +
> +	/* Skip SDRAM initialization if we run from RAM */
> +	r =3D get_pc();
> +	if (r > 0x80000000 && r < 0xa0000000)
> +		imx31_barebox_entry(0);
> +
> +	writel(0x00000004, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC);
> +	writel(0x00695727, MX31_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
> +	writel(0x92100000, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
> +	writel(0x12344321, MX31_CSD0_BASE_ADDR + 0xf00);
> +	writel(0xa2100000, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
> +	writel(0x12344321, MX31_CSD0_BASE_ADDR);
> +	writel(0x12344321, MX31_CSD0_BASE_ADDR);
> +	writel(0xb2100000, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
> +	writeb(0xda, MX31_CSD0_BASE_ADDR + 0x33);
> +	writeb(0xff, MX31_CSD0_BASE_ADDR + 0x01000000);
> +	writel(0x82226080, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
> +	writel(0xDEADBEEF, MX31_CSD0_BASE_ADDR);
> +	writel(0x0000000c, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC);
> +
> +	imx31_barebox_entry(0);
> +
> +}
> +
> +void __bare_init __naked barebox_arm_reset_vector(void)
> +{
> +	arm_cpu_lowlevel_init();
> +
> +	/* Temporary stack location in internal SRAM */
> +	arm_setup_stack(MX31_IRAM_BASE_ADDR + MX31_IRAM_SIZE - 8);
> +
> +	mx31moboard_startup();
> +}
> diff --git a/arch/arm/boards/mx31moboard/mx31moboard.c b/arch/arm/boards/=
mx31moboard/mx31moboard.c
> new file mode 100644
> index 0000000..2ec1f4f
> --- /dev/null
> +++ b/arch/arm/boards/mx31moboard/mx31moboard.c
> @@ -0,0 +1,259 @@
> +/*
> + * (C) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
> + * (C) 2014 EPFL, Philippe R=E9tornaz <philippe.retornaz@epfl.ch>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
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
> + *
> + * Board support for EPFL's, i.MX31 based CPU card
> + *
> + * Based on:
> + * Board support for Phytec's, i.MX31 based CPU card, called: PCM037
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <fs.h>
> +#include <gpio.h>
> +#include <led.h>
> +#include <environment.h>
> +#include <usb/ulpi.h>
> +#include <mach/imx31-regs.h>
> +#include <mach/iomux-mx31.h>
> +#include <asm/armlinux.h>
> +#include <asm/sections.h>
> +#include <mach/weim.h>
> +#include <io.h>
> +#include <asm/mmu.h>
> +#include <partition.h>
> +#include <generated/mach-types.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/devices-imx31.h>
> +
> +#define USBH2_EN_B	IOMUX_TO_GPIO(MX31_PIN_SCK6)
> +#define USB_RESET_B	IOMUX_TO_GPIO(MX31_PIN_GPIO1_0)
> +
> +static void mx31moboard_usb_init(void)
> +{
> +	u32 tmp;
> +
> +	if (!IS_ENABLED(CONFIG_USB))
> +		return;
> +
> +	/* enable clock */
> +	tmp =3D readl(0x53f80000);
> +	tmp |=3D (1 << 9);
> +	writel(tmp, 0x53f80000);
> +
> +	/* Host 2 */
> +	tmp =3D readl(MX31_IOMUXC_GPR);
> +	tmp |=3D 1 << 11;	/* IOMUX GPR: enable USBH2 signals */
> +	writel(tmp, MX31_IOMUXC_GPR);
> +
> +	imx_iomux_mode(IOMUX_MODE(MX31_PIN_SCK6, IOMUX_CONFIG_GPIO));
> +	imx_iomux_mode(IOMUX_MODE(MX31_PIN_GPIO1_0, IOMUX_CONFIG_GPIO));
> +	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_CLK, IOMUX_CONFIG_FUNC));
> +	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_DIR, IOMUX_CONFIG_FUNC));
> +	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_NXT, IOMUX_CONFIG_FUNC));
> +	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_STP, IOMUX_CONFIG_FUNC));
> +	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_DATA0, IOMUX_CONFIG_FUNC));
> +	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_DATA1, IOMUX_CONFIG_FUNC));
> +	imx_iomux_mode(IOMUX_MODE(MX31_PIN_STXD3, IOMUX_CONFIG_FUNC));
> +	imx_iomux_mode(IOMUX_MODE(MX31_PIN_SRXD3, IOMUX_CONFIG_FUNC));
> +	imx_iomux_mode(IOMUX_MODE(MX31_PIN_SCK3, IOMUX_CONFIG_FUNC));
> +	imx_iomux_mode(IOMUX_MODE(MX31_PIN_SFS3, IOMUX_CONFIG_FUNC));
> +	imx_iomux_mode(IOMUX_MODE(MX31_PIN_STXD6, IOMUX_CONFIG_FUNC));
> +	imx_iomux_mode(IOMUX_MODE(MX31_PIN_SRXD6, IOMUX_CONFIG_FUNC));
> +
> +#define H2_PAD_CFG (PAD_CTL_DRV_MAX | PAD_CTL_SRE_FAST | PAD_CTL_HYS_CMO=
S \
> +			| PAD_CTL_ODE_CMOS)
> +	imx_iomux_set_pad(MX31_PIN_USBH2_CLK, H2_PAD_CFG | PAD_CTL_100K_PU);
> +	imx_iomux_set_pad(MX31_PIN_USBH2_DIR, H2_PAD_CFG | PAD_CTL_100K_PU);
> +	imx_iomux_set_pad(MX31_PIN_USBH2_NXT, H2_PAD_CFG | PAD_CTL_100K_PU);
> +	imx_iomux_set_pad(MX31_PIN_USBH2_STP, H2_PAD_CFG | PAD_CTL_100K_PU);
> +	imx_iomux_set_pad(MX31_PIN_USBH2_DATA0, H2_PAD_CFG); /* USBH2_DATA0 */
> +	imx_iomux_set_pad(MX31_PIN_USBH2_DATA1, H2_PAD_CFG); /* USBH2_DATA1 */
> +	imx_iomux_set_pad(MX31_PIN_SRXD6, H2_PAD_CFG);	/* USBH2_DATA2 */
> +	imx_iomux_set_pad(MX31_PIN_STXD6, H2_PAD_CFG);	/* USBH2_DATA3 */
> +	imx_iomux_set_pad(MX31_PIN_SFS3, H2_PAD_CFG);	/* USBH2_DATA4 */
> +	imx_iomux_set_pad(MX31_PIN_SCK3, H2_PAD_CFG);	/* USBH2_DATA5 */
> +	imx_iomux_set_pad(MX31_PIN_SRXD3, H2_PAD_CFG);	/* USBH2_DATA6 */
> +	imx_iomux_set_pad(MX31_PIN_STXD3, H2_PAD_CFG);	/* USBH2_DATA7 */
> +
> +
> +	gpio_request(USB_RESET_B, "usb-reset");
> +	gpio_direction_output(USB_RESET_B, 0);
> +	mdelay(5);
> +	gpio_set_value(USB_RESET_B, 1);
> +	mdelay(10);
> +
> +	gpio_request(USBH2_EN_B, "usbh2-en");
> +	gpio_direction_output(USBH2_EN_B, 0);
> +	udelay(900);
> +	gpio_set_value(USBH2_EN_B, 1);
> +	udelay(200);
> +
> +	tmp =3D readl(MX31_USB_OTG_BASE_ADDR + 0x600);
> +	tmp &=3D ~((3 << 21) | 1);
> +	tmp |=3D (1 << 5) | (1 << 16) | (1 << 19) | (1 << 20);
> +	writel(tmp, MX31_USB_OTG_BASE_ADDR + 0x600);
> +
> +	tmp =3D readl(MX31_USB_OTG_BASE_ADDR + 0x584);
> +	tmp &=3D ~(3 << 30);
> +	tmp |=3D 2 << 30;
> +	writel(tmp, MX31_USB_OTG_BASE_ADDR + 0x584);
> +
> +	gpio_set_value(USBH2_EN_B, 0);
> +
> +	mdelay(50);
> +
> +	ulpi_setup((void *)(MX31_USB_OTG_BASE_ADDR + 0x570), 1);
> +
> +	/* Set to Host mode */
> +	tmp =3D readl(MX31_USB_OTG_BASE_ADDR + 0x1a8);
> +	writel(tmp | 0x3, MX31_USB_OTG_BASE_ADDR + 0x1a8);
> +
> +}
> +
> +static struct gpio_led mx31moboard_leds[] =3D {
> +	{
> +		.led =3D {
> +			.name =3D "coreboard-led-0:red:running"
> +		},
> +		.gpio =3D IOMUX_TO_GPIO(MX31_PIN_SVEN0),
> +	}, {
> +		.led =3D {
> +			.name   =3D "coreboard-led-1:red",
> +		},
> +		.gpio =3D IOMUX_TO_GPIO(MX31_PIN_STX0),
> +	}, {
> +		.led =3D {
> +			.name   =3D "coreboard-led-2:red",
> +		},
> +		.gpio   =3D IOMUX_TO_GPIO(MX31_PIN_SRX0),
> +	}, {
> +		.led =3D {
> +			.name   =3D "coreboard-led-3:red",
> +		},
> +		.gpio =3D IOMUX_TO_GPIO(MX31_PIN_SIMPD0),
> +	},
> +};
> +
> +static void mx31moboard_add_leds(void)
> +{
> +	int i;
> +
> +	if (!IS_ENABLED(CONFIG_LED_GPIO))
> +		return;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(mx31moboard_leds); i++) {
> +		led_gpio_register(&mx31moboard_leds[i]);
> +		led_set(&mx31moboard_leds[i].led, 0);
> +	}
> +
> +	led_set_trigger(LED_TRIGGER_HEARTBEAT, &mx31moboard_leds[0].led);
> +}
> +
> +static int mx31moboard_mmu_init(void)
> +{
> +	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
> +
> +	return 0;
> +}
> +postmmu_initcall(mx31moboard_mmu_init);
> +
> +static const struct devfs_partition mx31moboard_nor0_partitions[] =3D {
> +	{
> +		.offset =3D 0,
> +		.size =3D SZ_512K,
> +		.flags =3D DEVFS_PARTITION_FIXED,
> +		.name =3D "self0",
> +	}, {
> +		.offset =3D DEVFS_PARTITION_APPEND,
> +		.size =3D SZ_256K,
> +		.name =3D "env0",
> +	}, {
> +		/* Sentinel */
> +	}
> +};
> +
> +static int mx31moboard_devices_init(void)
> +{
> +	/* CS0: Nor Flash */
> +	imx31_setup_weimcs(0, 0x0000CC03, 0xa0330D01, 0x00220800);
> +
> +	/*
> +	 * Up to 32MiB NOR type flash, connected to
> +	 * CS line 0, data width is 16 bit
> +	 */
> +	add_cfi_flash_device(DEVICE_ID_DYNAMIC, MX31_CS0_BASE_ADDR, SZ_32M, 0);
> +
> +	imx31_add_mmc0(NULL);
> +
> +	/*
> +	 * Create partitions that should be
> +	 * not touched by any regular user
> +	 */
> +	devfs_create_partitions("nor0", mx31moboard_nor0_partitions);
> +	protect_file("/dev/env0", 1);
> +
> +	mx31moboard_usb_init();
> +	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC,
> +					MX31_USB_HS2_BASE_ADDR, NULL);
> +
> +	mx31moboard_add_leds();
> +
> +	armlinux_set_architecture(MACH_TYPE_MX31MOBOARD);
> +
> +	return 0;
> +}
> +
> +device_initcall(mx31moboard_devices_init);
> +
> +static unsigned int mx31moboard_iomux[] =3D {
> +	/* UART1 */
> +	MX31_PIN_RXD1__RXD1,
> +	MX31_PIN_TXD1__TXD1,
> +	MX31_PIN_CTS1__GPIO2_7,
> +	/* SDHC1 */
> +	MX31_PIN_SD1_DATA3__SD1_DATA3,
> +	MX31_PIN_SD1_DATA2__SD1_DATA2,
> +	MX31_PIN_SD1_DATA1__SD1_DATA1,
> +	MX31_PIN_SD1_DATA0__SD1_DATA0,
> +	MX31_PIN_SD1_CLK__SD1_CLK,
> +	MX31_PIN_SD1_CMD__SD1_CMD,
> +	MX31_PIN_ATA_CS0__GPIO3_26, MX31_PIN_ATA_CS1__GPIO3_27,
> +	/* LEDS */
> +	MX31_PIN_SVEN0__GPIO2_0, MX31_PIN_STX0__GPIO2_1,
> +	MX31_PIN_SRX0__GPIO2_2, MX31_PIN_SIMPD0__GPIO2_3,
> +};
> +
> +static int imx31_console_init(void)
> +{
> +	imx_iomux_setup_multiple_pins(mx31moboard_iomux,
> +					ARRAY_SIZE(mx31moboard_iomux));
> +
> +	gpio_request(IOMUX_TO_GPIO(MX31_PIN_CTS1), "uart0-cts-hack");
> +	gpio_direction_output(IOMUX_TO_GPIO(MX31_PIN_CTS1), 0);
> +
> +	barebox_set_model("EPFL mx31moboard");
> +	barebox_set_hostname("mx31moboard");
> +
> +	imx31_add_uart0();
> +
> +	return 0;
> +}
> +
> +console_initcall(imx31_console_init);
> diff --git a/arch/arm/boards/mx31moboard/mx31moboard.dox b/arch/arm/board=
s/mx31moboard/mx31moboard.dox
> new file mode 100644
> index 0000000..41c8bbb
> --- /dev/null
> +++ b/arch/arm/boards/mx31moboard/mx31moboard.dox
> @@ -0,0 +1,10 @@
> +/** @page mx31moboard EPFL mx31moboard
> +
> +This CPU card is based on a Freescale i.MX31 CPU. The card is shipped wi=
th:
> +
> +- 32MiB NOR type Flash Memory
> +- 128MiB LPDDR
> +- A least one SD slot
> +- A least one USB host (H2)
> +
> +*/
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 79ea694..b7e7533 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -14,6 +14,7 @@ config ARCH_TEXT_BASE
>  	default 0xa7f00000 if MACH_PCA100
>  	default 0xa0000000 if MACH_PCM038
>  	default 0x87f00000 if MACH_PCM037
> +	default 0x87f00000 if MACH_MX31MOBOARD
>  	default 0x87f00000 if MACH_PCM043
>  	default 0x08f80000 if MACH_SCB9328
>  	default 0xa7e00000 if MACH_NESO
> @@ -363,6 +364,16 @@ config MACH_PCM037
>  	  Say Y here if you are using Phytec's phyCORE-i.MX31 (pcm037) equipped
>  	  with a Freescale i.MX31 Processor
>  =

> +config MACH_MX31MOBOARD
> +	bool "mx31moboard-i.MX31"
> +	select ARCH_IMX31
> +	select USB_ULPI if USB
> +	select HAVE_DEFAULT_ENVIRONMENT_NEW
> +	select ARCH_HAS_L2X0
> +	help
> +	  Say Y here if you are using EPFL mx31moboard board equipped
> +	  with a Freescale i.MX31 Processor
> +
>  # ----------------------------------------------------------
>  =

>  comment "i.MX35 Boards"
> -- =

> 1.7.9.5
> =

> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
