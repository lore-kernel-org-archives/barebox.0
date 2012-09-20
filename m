Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TElgU-0002Ck-3g
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 18:41:12 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id AA1D11070012
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2012 20:46:57 +0200 (CEST)
Date: Thu, 20 Sep 2012 20:38:35 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120920183835.GI26553@game.jcrosoft.org>
References: <1348149724-28468-1-git-send-email-t.gamez@phytec.de>
 <1348149724-28468-2-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348149724-28468-2-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] ARM OMAP AM33XX: create new ARCH for AM33xx
To: Teresa =?iso-8859-1?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On 16:02 Thu 20 Sep     , Teresa G=E1mez wrote:
> Created ARCH for AM33xx boards as second stage bootloader.
> This includes:
> - Added dmtimer0
> - Created basic header files
> - Added MMC support for ARCH_AM33XX
> - Added reset function
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  arch/arm/mach-omap/Kconfig                       |   11 +++
>  arch/arm/mach-omap/Makefile                      |    2 +
>  arch/arm/mach-omap/am33xx_generic.c              |   29 +++++++++
>  arch/arm/mach-omap/dmtimer0.c                    |   72 ++++++++++++++++=
++++++
>  arch/arm/mach-omap/gpio.c                        |   29 +++++----
>  arch/arm/mach-omap/include/mach/am33xx-clock.h   |   25 ++++++++
>  arch/arm/mach-omap/include/mach/am33xx-silicon.h |   51 +++++++++++++++
>  arch/arm/mach-omap/include/mach/clocks.h         |    7 ++
>  arch/arm/mach-omap/include/mach/omap3-clock.h    |    3 -
>  arch/arm/mach-omap/include/mach/silicon.h        |    3 +
>  arch/arm/mach-omap/include/mach/timers.h         |   22 +++++++
>  drivers/mci/Kconfig                              |    2 +-
>  12 files changed, 238 insertions(+), 18 deletions(-)
>  create mode 100644 arch/arm/mach-omap/am33xx_generic.c
>  create mode 100644 arch/arm/mach-omap/dmtimer0.c
>  create mode 100644 arch/arm/mach-omap/include/mach/am33xx-clock.h
>  create mode 100644 arch/arm/mach-omap/include/mach/am33xx-silicon.h
> =

> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index d735284..b3f121f 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -50,6 +50,14 @@ config ARCH_OMAP4
>  	help
>  	  Say Y here if you are using Texas Instrument's OMAP4 based platform
>  =

> +config ARCH_AM33XX
> +	bool "AM33xx"
> +	select CPU_V7
> +	select GENERIC_GPIO
> +	select OMAP_CLOCK_SOURCE_DMTIMER0
> +	help
> +	  Say Y here if you are using Texas Instrument's AM33xx based platform
> +
>  endchoice
>  =

>  ### Generic Clock configurations to be enabled by Mach - invisible to en=
able.
> @@ -69,6 +77,9 @@ config OMAP_CLOCK_ALL
>  config OMAP_CLOCK_SOURCE_S32K
>  	bool
>  =

> +config OMAP_CLOCK_SOURCE_DMTIMER0
> +	bool
> +
>  config OMAP3_CLOCK_CONFIG
>  	prompt "Clock Configuration"
>  	bool
> diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> index f087f4b..0f03043 100644
> --- a/arch/arm/mach-omap/Makefile
> +++ b/arch/arm/mach-omap/Makefile
> @@ -22,10 +22,12 @@
>  obj-$(CONFIG_ARCH_OMAP) +=3D syslib.o
>  pbl-$(CONFIG_ARCH_OMAP) +=3D syslib.o
>  obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) +=3D s32k_clksource.o
> +obj-$(CONFIG_OMAP_CLOCK_SOURCE_DMTIMER0) +=3D dmtimer0.o
>  obj-$(CONFIG_ARCH_OMAP3) +=3D omap3_core.o omap3_generic.o auxcr.o
>  pbl-$(CONFIG_ARCH_OMAP3) +=3D omap3_core.o omap3_generic.o auxcr.o
>  obj-$(CONFIG_ARCH_OMAP4) +=3D omap4_generic.o omap4_clock.o
>  pbl-$(CONFIG_ARCH_OMAP4) +=3D omap4_generic.o omap4_clock.o
> +obj-$(CONFIG_ARCH_AM33XX) +=3D am33xx_generic.o
>  obj-$(CONFIG_OMAP3_CLOCK_CONFIG) +=3D omap3_clock.o
>  obj-$(CONFIG_OMAP_GPMC) +=3D gpmc.o devices-gpmc-nand.o
>  obj-$(CONFIG_SHELL_NONE) +=3D xload.o
> diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am3=
3xx_generic.c
> new file mode 100644
> index 0000000..ba08773
> --- /dev/null
> +++ b/arch/arm/mach-omap/am33xx_generic.c
> @@ -0,0 +1,29 @@
> +/*
> + * (C) Copyright 2012 Teresa G=E1mez, Phytec Messtechnik GmbH
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
> +#include <io.h>
> +#include <mach/silicon.h>
> +#include <mach/clocks.h>
> +
> +void __noreturn reset_cpu(unsigned long addr)
> +{
> +	writel(PRM_RSTCTRL_RESET, PRM_REG(RSTCTRL));
> +
> +	while (1);
> +}
> diff --git a/arch/arm/mach-omap/dmtimer0.c b/arch/arm/mach-omap/dmtimer0.c
> new file mode 100644
> index 0000000..b8ec43f
> --- /dev/null
> +++ b/arch/arm/mach-omap/dmtimer0.c
> @@ -0,0 +1,72 @@
> +/**
> + * @file
> + * @brief Support DMTimer0 counter
> + *
> + * FileName: arch/arm/mach-omap/dmtimer0.c
> + */
> +/*
> + * This File is based on arch/arm/mach-omap/s32k_clksource.c
> + * (C) Copyright 2008
> + * Texas Instruments, <www.ti.com>
> + * Nishanth Menon <x0nishan@ti.com>
> + *
> + * (C) Copyright 2012 Teresa G=E1mez, Phytec Messtechnik GmbH
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
> +#include <clock.h>
> +#include <init.h>
> +#include <io.h>
> +#include <mach/silicon.h>
> +#include <mach/timers.h>
> +
> +#define CLK_RC32K	32768
> +
> +/**
> + * @brief Provide a simple counter read
> + *
> + * @return DMTimer0 counter
> + */
> +static uint64_t dmtimer0_read(void)
> +{
> +	return readl(AM33XX_DMTIMER0_BASE + TCRR);
> +}
> +
> +static struct clocksource dmtimer0_cs =3D {
> +	.read	=3D dmtimer0_read,
> +	.mask	=3D CLOCKSOURCE_MASK(32),
> +	.shift	=3D 10,
> +};
> +
> +/**
> + * @brief Initialize the Clock
> + *
> + * Enable dmtimer0.
> + *
> + * @return result of @ref init_clock
> + */
> +static int dmtimer0_init(void)
> +{
> +	dmtimer0_cs.mult =3D clocksource_hz2mult(CLK_RC32K, dmtimer0_cs.shift);
> +	/* Enable counter */
> +	writel(0x3, AM33XX_DMTIMER0_BASE + TCLR);
> +
> +	return init_clock(&dmtimer0_cs);
> +}
> +
> +/* Run me at boot time */
> +core_initcall(dmtimer0_init);
> diff --git a/arch/arm/mach-omap/gpio.c b/arch/arm/mach-omap/gpio.c
> index 142cf52..a908941 100644
> --- a/arch/arm/mach-omap/gpio.c
> +++ b/arch/arm/mach-omap/gpio.c
> @@ -40,14 +40,13 @@
>  #include <io.h>
>  #include <errno.h>
>  =

> -#ifdef CONFIG_ARCH_OMAP3
> -
>  #define OMAP_GPIO_OE		0x0034
>  #define OMAP_GPIO_DATAIN	0x0038
>  #define OMAP_GPIO_DATAOUT	0x003c
>  #define OMAP_GPIO_CLEARDATAOUT	0x0090
>  #define OMAP_GPIO_SETDATAOUT	0x0094
>  =

> +#ifdef CONFIG_ARCH_OMAP3
>  static void __iomem *gpio_bank[] =3D {
>  	(void *)0x48310000,
>  	(void *)0x49050000,
IOMEM

and I do not like this idea to add move array switch to gpiolib make more
sense
> @@ -59,20 +58,22 @@ static void __iomem *gpio_bank[] =3D {
>  #endif
>  =

>  #ifdef CONFIG_ARCH_OMAP4
> +static void __iomem *gpio_bank[] =3D {
> +	(void *)0x4a310100,
> +	(void *)0x48055100,
> +	(void *)0x48057100,
> +	(void *)0x48059100,
> +	(void *)0x4805b100,
> +	(void *)0x4805d100,
> +};
> +#endif
>  =

> -#define OMAP_GPIO_OE		0x0134
> -#define OMAP_GPIO_DATAIN	0x0138
> -#define OMAP_GPIO_DATAOUT	0x013c
> -#define OMAP_GPIO_CLEARDATAOUT	0x0190
> -#define OMAP_GPIO_SETDATAOUT	0x0194
> -
> +#ifdef CONFIG_ARCH_AM33XX
>  static void __iomem *gpio_bank[] =3D {
> -	(void *)0x4a310000,
> -	(void *)0x48055000,
> -	(void *)0x48057000,
> -	(void *)0x48059000,
> -	(void *)0x4805b000,
> -	(void *)0x4805d000,
> +	(void *)0x44e07100,
> +	(void *)0x4804c100,
> +	(void *)0x481ac100,
> +	(void *)0x481ae100,
>  };
>  #endif
> +#endif
> diff --git a/arch/arm/mach-omap/include/mach/clocks.h b/arch/arm/mach-oma=
p/include/mach/clocks.h
> index 3efa057..70dc91f 100644
> --- a/arch/arm/mach-omap/include/mach/clocks.h
> +++ b/arch/arm/mach-omap/include/mach/clocks.h
> @@ -41,6 +41,9 @@
>  #define S26M		26000000
>  #define S38_4M		38400000
>  =

> +#define CM_REG(REGNAME)		(OMAP_CM_BASE + CM_##REGNAME)
> +#define PRM_REG(REGNAME)	(OMAP_PRM_BASE + PRM_##REGNAME)
any cleanup need to be done in a speperate patch
> +
>  #ifdef CONFIG_ARCH_OMAP3
>  #include <mach/omap3-clock.h>
>  #endif
> @@ -48,4 +51,8 @@
>  #include <mach/omap4-clock.h>
>  #endif
>  =

> +#ifdef CONFIG_ARCH_AM33XX
> +#include <mach/am33xx-clock.h>
> +#endif
> +
>  #endif /* __OMAP_CLOCKS_H_ */
> diff --git a/arch/arm/mach-omap/include/mach/omap3-clock.h b/arch/arm/mac=
h-omap/include/mach/omap3-clock.h
> index 67f2673..8a73bff 100644
> --- a/arch/arm/mach-omap/include/mach/omap3-clock.h
> +++ b/arch/arm/mach-omap/include/mach/omap3-clock.h
> @@ -31,8 +31,6 @@
>  #define _OMAP343X_CLOCKS_H_
>  =

>  /** CM Clock Regs Wrapper */
> -#define CM_REG(REGNAME)	(OMAP_CM_BASE + CM_##REGNAME)
> -
>  #define CM_FCLKEN_IVA2		0X0000
>  #define CM_CLKEN_PLL_IVA2	0X0004
>  #define CM_IDLEST_PLL_IVA2	0X0024
> @@ -81,7 +79,6 @@
>  #define CM_CLKSTCTRL_USBH	0x1448
>  =

>  /** PRM Clock Regs */
> -#define PRM_REG(REGNAME)	(OMAP_PRM_BASE + PRM_##REGNAME)
>  #define PRM_CLKSEL		0x0D40
>  #define PRM_RSTCTRL		0x1250
>  #define PRM_CLKSRC_CTRL		0x1270
> diff --git a/arch/arm/mach-omap/include/mach/silicon.h b/arch/arm/mach-om=
ap/include/mach/silicon.h
> index 638d6c4..6c085dc 100644
> --- a/arch/arm/mach-omap/include/mach/silicon.h
> +++ b/arch/arm/mach-omap/include/mach/silicon.h
> @@ -28,6 +28,9 @@
>  #ifdef CONFIG_ARCH_OMAP4
>  #include <mach/omap4-silicon.h>
>  #endif
> +#ifdef CONFIG_ARCH_AM33XX
> +#include <mach/am33xx-silicon.h>
> +#endif
>  =

>  /* If Architecture specific init functions are present */
>  #ifndef __ASSEMBLY__
> diff --git a/arch/arm/mach-omap/include/mach/timers.h b/arch/arm/mach-oma=
p/include/mach/timers.h
> index a938243..c987fbc 100644
> --- a/arch/arm/mach-omap/include/mach/timers.h
> +++ b/arch/arm/mach-omap/include/mach/timers.h
> @@ -34,6 +34,7 @@
>  #ifndef __ASM_ARCH_GPT_H
>  #define __ASM_ARCH_GPT_H
>  =

> +#if defined(CONFIG_ARCH_OMAP3) || defined(CONFIG_ARCH_OMAP4)
>  /** General Purpose timer regs offsets (32 bit regs) */
>  #define TIDR			0x0      /* r */
>  #define TIOCP_CFG		0x10     /* rw */
> @@ -56,5 +57,26 @@
>  /** Sync 32Khz Timer registers */
>  #define S32K_CR			(OMAP_32KTIMER_BASE + 0x10)
>  #define S32K_FREQUENCY		32768
> +#endif
> +
> +#if defined(CONFIG_ARCH_AM33XX)
> +#define TIDR			0x0
> +#define TIOCP_CFG		0x10
> +#define IRQ_EOI			0x20
> +#define IRQSTATUS_RAW		0x24
> +#define IRQSTATUS		0x28
> +#define IRQSTATUS_SET		0x2c
> +#define IRQSTATUS_CLR		0x30
> +#define IRQWAKEEN		0x34
> +#define TCLR			0x38
> +#define TCRR			0x3C
> +#define TLDR			0x40
> +#define TTGR			0x44
> +#define TWPS			0x48
> +#define TMAR			0x4C
> +#define TCAR1			0x50
> +#define TSICR			0x54
> +#define TCAR2			0x58
> +#endif
it's a new timer create a new header
>  =

>  #endif /*__ASM_ARCH_GPT_H */
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index b1a678e..fb95c1e 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -67,7 +67,7 @@ config MCI_IMX_ESDHC_PIO
>  =

>  config MCI_OMAP_HSMMC
>  	bool "OMAP HSMMC"
> -	depends on ARCH_OMAP4 || ARCH_OMAP3
> +	depends on ARCH_OMAP4 || ARCH_OMAP3 || ARCH_AM33XX
>  	help
>  	  Enable this entry to add support to read and write SD cards on
>  	  both OMAP3 and OMAP4 based systems.
> -- =

> 1.7.0.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
