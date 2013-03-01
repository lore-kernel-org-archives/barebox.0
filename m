Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBPpB-0005oa-LJ
 for barebox@lists.infradead.org; Fri, 01 Mar 2013 13:16:35 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 4C74BDC3762
 for <barebox@lists.infradead.org>; Fri,  1 Mar 2013 14:27:26 +0100 (CET)
Date: Fri, 1 Mar 2013 14:15:34 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130301131534.GC23022@game.jcrosoft.org>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362129773-4579-8-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362129773-4579-8-git-send-email-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 7/7] tegra: add power management controller driver
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On 10:22 Fri 01 Mar     , Lucas Stach wrote:
> Currently only implements system wide reset functionality.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
you work for pengu I expect the proper e-mail here and in the author
> ---
>  arch/arm/mach-tegra/Makefile      |  2 +-
>  arch/arm/mach-tegra/reset.c       | 39 -----------------
>  arch/arm/mach-tegra/tegra20-pmc.c | 89 +++++++++++++++++++++++++++++++++++++++
>  arch/arm/mach-tegra/tegra20.c     |  4 ++
>  4 files changed, 94 insertions(+), 40 deletions(-)
>  delete mode 100644 arch/arm/mach-tegra/reset.c
>  create mode 100644 arch/arm/mach-tegra/tegra20-pmc.c
> 
> diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
> index 6aa219c..bcc0cd4 100644
> --- a/arch/arm/mach-tegra/Makefile
> +++ b/arch/arm/mach-tegra/Makefile
> @@ -1,4 +1,4 @@
> -obj-y += reset.o
>  obj-y += tegra20.o
>  obj-y += tegra20-car.o
> +obj-y += tegra20-pmc.o
>  obj-y += tegra20-timer.o
> diff --git a/arch/arm/mach-tegra/reset.c b/arch/arm/mach-tegra/reset.c
> deleted file mode 100644
> index 73d7ca2..0000000
> --- a/arch/arm/mach-tegra/reset.c
> +++ /dev/null
> @@ -1,39 +0,0 @@
> -/*
> - * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - * See file CREDITS for list of people who contributed to this project.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2
> - * as published by the Free Software Foundation.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - */
> -
> -/**
> - * @file
> - * @brief Resetting an malta board
> - */
> -
> -#include <common.h>
> -#include <asm/io.h>
> -#include <mach/tegra20-silicon.h>
> -
> -#define PRM_RSTCTRL		TEGRA_PMC_BASE
> -
> -void __noreturn reset_cpu(ulong addr)
> -{
> -	int rstctrl;
> -
> -	rstctrl = __raw_readl((char *)PRM_RSTCTRL);
> -	rstctrl |= 0x10;
> -	__raw_writel(rstctrl, (char *)PRM_RSTCTRL);
> -
> -	unreachable();
> -}
> -EXPORT_SYMBOL(reset_cpu);
> diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
> new file mode 100644
> index 0000000..ed765f5
> --- /dev/null
> +++ b/arch/arm/mach-tegra/tegra20-pmc.c
> @@ -0,0 +1,89 @@
> +/*
> + * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify it
> + * under the terms and conditions of the GNU General Public License,
> + * version 2, as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope it will be useful, but WITHOUT
> + * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> + * more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +/**
> + * @file
> + * @brief Device driver for the Tegra 20 power management controller.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +
> +/* register definitions */
> +#define PMC_CNTRL			0x00
> +#define PMC_CNTRL_FUSE_OVERRIDE		(1 << 18)
> +#define PMC_CNTRL_INTR_POLARITY		(1 << 17)
> +#define PMC_CNTRL_CPUPWRREQ_OE		(1 << 16)
> +#define PMC_CNTRL_CPUPWRREQ_POLARITY	(1 << 15)
> +#define PMC_CNTRL_SIDE_EFFECT_LP0	(1 << 14)
> +#define PMC_CNTRL_AOINIT		(1 << 13)
> +#define PMC_CNTRL_PWRGATE_DIS		(1 << 12)
> +#define PMC_CNTRL_SYSCLK_OE		(1 << 11)
> +#define PMC_CNTRL_SYSCLK_POLARITY	(1 << 10)
> +#define PMC_CNTRL_PWRREQ_OE		(1 << 9)
> +#define PMC_CNTRL_PWRREQ_POLARITY	(1 << 8)
> +#define PMC_CNTRL_BLINK_EN		(1 << 7)
> +#define PMC_CNTRL_GLITCHDET_DIS		(1 << 6)
> +#define PMC_CNTRL_LATCHWAKE_EN		(1 << 5)
> +#define PMC_CNTRL_MAIN_RST		(1 << 4)
> +#define PMC_CNTRL_KBC_RST		(1 << 3)
> +#define PMC_CNTRL_RTC_RST		(1 << 2)
> +#define PMC_CNTRL_RTC_CLK_DIS		(1 << 1)
> +#define PMC_CNTRL_KBC_CLK_DIS		(1 << 0)
> +
> +static void __iomem *pmc_base;
> +
> +/* main SoC reset trigger */
> +void __noreturn reset_cpu(ulong addr)
> +{
> +	writel(PMC_CNTRL_MAIN_RST, pmc_base + PMC_CNTRL);
> +
> +	unreachable();
> +}
> +EXPORT_SYMBOL(reset_cpu);
> +
> +static int tegra20_pmc_probe(struct device_d *dev)
> +{
> +	pmc_base = dev_request_mem_region(dev, 0);
> +	if (!pmc_base) {
> +		dev_err(dev, "could not get memory region\n");
> +		return -ENODEV;
> +	}
> +
> +	return 0;
> +}
> +
> +static __maybe_unused struct of_device_id tegra20_pmc_dt_ids[] = {
> +	{
> +		.compatible = "nvidia,tegra20-pmc",
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
> +static struct driver_d tegra20_pmc_driver = {
> +	.probe	= tegra20_pmc_probe,
> +	.name	= "tegra20-pmc",
> +	.of_compatible = DRV_OF_COMPAT(tegra20_pmc_dt_ids),
> +};
> +
> +static int tegra20_pmc_init(void)
> +{
> +	return platform_driver_register(&tegra20_pmc_driver);
> +}
> +
> +coredevice_initcall(tegra20_pmc_init);
> diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.c
> index eccc7b8..54e8819 100644
> --- a/arch/arm/mach-tegra/tegra20.c
> +++ b/arch/arm/mach-tegra/tegra20.c
> @@ -28,6 +28,10 @@ static int tegra20_init(void)
>  			   TEGRA_TMR1_BASE, TEGRA_TMR1_SIZE,
>  			   IORESOURCE_MEM, NULL);
>  
> +	add_generic_device("tegra20-pmc", DEVICE_ID_SINGLE, NULL,
> +			   TEGRA_PMC_BASE, TEGRA_PMC_SIZE,
> +			   IORESOURCE_MEM, NULL);
> +
>  	return 0;
>  }
>  
> -- 
> 1.8.1.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
