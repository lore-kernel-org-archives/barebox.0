Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek454-0007KX-H5
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 08:30:52 +0000
Date: Fri, 9 Feb 2018 09:30:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180209083038.gv3mafi5pgvpe3hc@pengutronix.de>
References: <20180206211115.25178-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180206211115.25178-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/2] watchdog: implement bcm2835 watchdog
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 06, 2018 at 10:11:14PM +0100, Lucas Stach wrote:
> Move out of architecture code and add some real watchdog functionality.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/mach-bcm283x/Makefile          |   2 +-
>  arch/arm/mach-bcm283x/include/mach/wd.h |  47 -----------
>  arch/arm/mach-bcm283x/wd.c              |  75 -----------------
>  drivers/watchdog/Kconfig                |   6 ++
>  drivers/watchdog/Makefile               |   1 +
>  drivers/watchdog/bcm2835_wdt.c          | 141 ++++++++++++++++++++++++++++++++
>  6 files changed, 149 insertions(+), 123 deletions(-)
>  delete mode 100644 arch/arm/mach-bcm283x/include/mach/wd.h
>  delete mode 100644 arch/arm/mach-bcm283x/wd.c
>  create mode 100644 drivers/watchdog/bcm2835_wdt.c
> 

Applied, thanks

Sascha

> diff --git a/arch/arm/mach-bcm283x/Makefile b/arch/arm/mach-bcm283x/Makefile
> index 96ea69365..940f98cbc 100644
> --- a/arch/arm/mach-bcm283x/Makefile
> +++ b/arch/arm/mach-bcm283x/Makefile
> @@ -1 +1 @@
> -obj-y += core.o mbox.o wd.o
> +obj-y += core.o mbox.o
> diff --git a/arch/arm/mach-bcm283x/include/mach/wd.h b/arch/arm/mach-bcm283x/include/mach/wd.h
> deleted file mode 100644
> index cdd22d48c..000000000
> --- a/arch/arm/mach-bcm283x/include/mach/wd.h
> +++ /dev/null
> @@ -1,47 +0,0 @@
> -/*
> - * Extract from arch/arm/mach-bcm2708/include/mach/platform.h
> - *
> - * Copyright (C) 2010 Broadcom
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - */
> -
> -#ifndef _WD_H
> -#define _WD_H
> -
> -/*
> - * Watchdog
> - */
> -#define PM_RSTC		0x1c
> -#define PM_RSTS		0x20
> -#define PM_WDOG		0x24
> -
> -#define PM_WDOG_RESET				0000000000
> -#define PM_PASSWORD				0x5a000000
> -#define PM_WDOG_TIME_SET			0x000fffff
> -#define PM_RSTC_WRCFG_CLR			0xffffffcf
> -#define PM_RSTC_WRCFG_SET			0x00000030
> -#define PM_RSTC_WRCFG_FULL_RESET		0x00000020
> -#define PM_RSTC_RESET				0x00000102
> -
> -#define PM_RSTS_HADPOR_SET			0x00001000
> -#define PM_RSTS_HADSRH_SET			0x00000400
> -#define PM_RSTS_HADSRF_SET			0x00000200
> -#define PM_RSTS_HADSRQ_SET			0x00000100
> -#define PM_RSTS_HADWRH_SET			0x00000040
> -#define PM_RSTS_HADWRF_SET			0x00000020
> -#define PM_RSTS_HADWRQ_SET			0x00000010
> -#define PM_RSTS_HADDRH_SET			0x00000004
> -#define PM_RSTS_HADDRF_SET			0x00000002
> -#define PM_RSTS_HADDRQ_SET			0x00000001
> -
> -#endif
> diff --git a/arch/arm/mach-bcm283x/wd.c b/arch/arm/mach-bcm283x/wd.c
> deleted file mode 100644
> index 5a5188fd2..000000000
> --- a/arch/arm/mach-bcm283x/wd.c
> +++ /dev/null
> @@ -1,75 +0,0 @@
> -/*
> - * Copyright (C) 2017 Pengutronix, Lucas Stach <l.stach@pengutronix.de>
> - *
> - * Based on code from  Carlo Caione <carlo@carlocaione.org>
> - *
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
> -#include <common.h>
> -#include <init.h>
> -#include <io.h>
> -#include <restart.h>
> -
> -#include <mach/wd.h>
> -
> -static void __iomem *wd_base;
> -
> -#define RESET_TIMEOUT 10
> -
> -static void __noreturn bcm2835_restart_soc(struct restart_handler *rst)
> -{
> -	uint32_t rstc;
> -
> -	rstc = readl(wd_base + PM_RSTC);
> -	rstc &= ~PM_RSTC_WRCFG_SET;
> -	rstc |= PM_RSTC_WRCFG_FULL_RESET;
> -	writel(PM_PASSWORD | RESET_TIMEOUT, wd_base +  PM_WDOG);
> -	writel(PM_PASSWORD | rstc, wd_base + PM_RSTC);
> -
> -	hang();
> -}
> -
> -static int bcm2835_wd_probe(struct device_d *dev)
> -{
> -	struct resource *iores;
> -
> -	iores = dev_request_mem_resource(dev, 0);
> -	if (IS_ERR(iores)) {
> -		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(iores);
> -	}
> -	wd_base = IOMEM(iores->start);
> -
> -	restart_handler_register_fn(bcm2835_restart_soc);
> -
> -	return 0;
> -}
> -
> -static __maybe_unused struct of_device_id bcm2835_wd_dt_ids[] = {
> -	{
> -		.compatible = "brcm,bcm2835-pm-wdt",
> -	}, {
> -		/* sentinel */
> -	},
> -};
> -
> -static struct driver_d bcm2835_wd_driver = {
> -	.name		= "bcm2835_wd",
> -	.of_compatible	= DRV_OF_COMPAT(bcm2835_wd_dt_ids),
> -	.probe		= bcm2835_wd_probe,
> -};
> -
> -static int __init bcm2835_wd_init(void)
> -{
> -	return platform_driver_register(&bcm2835_wd_driver);
> -}
> -device_initcall(bcm2835_wd_init);
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index a8f9492ac..3defb9da6 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -58,4 +58,10 @@ config WATCHDOG_ORION
>  	help
>  	  Add support for watchdog on the Marvall Armada XP
>  
> +config WATCHDOG_BCM2835
> +	bool "Watchdog for BCM283x SoCs"
> +	depends on ARCH_BCM283X
> +	help
> +	  Add support for watchdog on the Broadcom BCM283X SoCs.
> +
>  endif
> diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
> index c607f7509..237640121 100644
> --- a/drivers/watchdog/Makefile
> +++ b/drivers/watchdog/Makefile
> @@ -7,3 +7,4 @@ obj-$(CONFIG_WATCHDOG_DW) += dw_wdt.o
>  obj-$(CONFIG_WATCHDOG_JZ4740) += jz4740.o
>  obj-$(CONFIG_WATCHDOG_IMX_RESET_SOURCE) += imxwd.o
>  obj-$(CONFIG_WATCHDOG_ORION) += orion_wdt.o
> +obj-$(CONFIG_ARCH_BCM283X) += bcm2835_wdt.o
> diff --git a/drivers/watchdog/bcm2835_wdt.c b/drivers/watchdog/bcm2835_wdt.c
> new file mode 100644
> index 000000000..457d86fc0
> --- /dev/null
> +++ b/drivers/watchdog/bcm2835_wdt.c
> @@ -0,0 +1,141 @@
> +/*
> + * Copyright (C) 2017 Pengutronix, Lucas Stach <l.stach@pengutronix.de>
> + *
> + * Based on code from  Carlo Caione <carlo@carlocaione.org>
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
> +#include <restart.h>
> +#include <watchdog.h>
> +
> +#define PM_RSTC		0x1c
> +#define PM_RSTS		0x20
> +#define PM_WDOG		0x24
> +
> +#define PM_WDOG_RESET				0000000000
> +#define PM_PASSWORD				0x5a000000
> +#define PM_WDOG_TIME_SET			0x000fffff
> +#define PM_RSTC_WRCFG_CLR			0xffffffcf
> +#define PM_RSTC_WRCFG_SET			0x00000030
> +#define PM_RSTC_WRCFG_FULL_RESET		0x00000020
> +#define PM_RSTC_RESET				0x00000102
> +
> +#define PM_RSTS_HADPOR_SET			0x00001000
> +#define PM_RSTS_HADSRH_SET			0x00000400
> +#define PM_RSTS_HADSRF_SET			0x00000200
> +#define PM_RSTS_HADSRQ_SET			0x00000100
> +#define PM_RSTS_HADWRH_SET			0x00000040
> +#define PM_RSTS_HADWRF_SET			0x00000020
> +#define PM_RSTS_HADWRQ_SET			0x00000010
> +#define PM_RSTS_HADDRH_SET			0x00000004
> +#define PM_RSTS_HADDRF_SET			0x00000002
> +#define PM_RSTS_HADDRQ_SET			0x00000001
> +
> +#define SECS_TO_WDOG_TICKS(x) ((x) << 16)
> +
> +struct bcm2835_wd {
> +	struct watchdog wd;
> +	void __iomem *base;
> +	struct device_d *dev;
> +	struct restart_handler restart;
> +};
> +
> +#define RESET_TIMEOUT 10
> +
> +static void __noreturn bcm2835_restart_soc(struct restart_handler *rst)
> +{
> +	struct bcm2835_wd *priv = container_of(rst, struct bcm2835_wd, restart);
> +	uint32_t rstc;
> +
> +	rstc = readl(priv->base + PM_RSTC);
> +	rstc &= ~PM_RSTC_WRCFG_SET;
> +	rstc |= PM_RSTC_WRCFG_FULL_RESET;
> +	writel(PM_PASSWORD | RESET_TIMEOUT, priv->base +  PM_WDOG);
> +	writel(PM_PASSWORD | rstc, priv->base + PM_RSTC);
> +
> +	hang();
> +}
> +
> +static int bcm2835_wd_set_timeout(struct watchdog *wd, unsigned timeout)
> +{
> +	struct bcm2835_wd *priv = container_of(wd, struct bcm2835_wd, wd);
> +	u32 val;
> +
> +	if (!timeout) {
> +		writel(PM_PASSWORD | PM_RSTC_RESET, priv->base + PM_RSTC);
> +		return 0;
> +	}
> +
> +	writel(PM_PASSWORD | (SECS_TO_WDOG_TICKS(timeout) & PM_WDOG_TIME_SET),
> +	       priv->base + PM_WDOG);
> +	val = readl(priv->base + PM_RSTC);
> +	writel(PM_PASSWORD | (val & PM_RSTC_WRCFG_CLR) |
> +	       PM_RSTC_WRCFG_FULL_RESET, priv->base + PM_RSTC);
> +
> +	return 0;
> +}
> +
> +static int bcm2835_wd_probe(struct device_d *dev)
> +{
> +	struct resource *iores;
> +	struct bcm2835_wd *priv;
> +	int ret;
> +
> +	priv = xzalloc(sizeof(*priv));
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
> +		dev_err(dev, "could not get memory region\n");
> +		return PTR_ERR(iores);
> +	}
> +	priv->base = IOMEM(iores->start);
> +	priv->wd.set_timeout = bcm2835_wd_set_timeout;
> +	priv->wd.dev = dev;
> +	priv->dev = dev;
> +
> +	if (IS_ENABLED(CONFIG_WATCHDOG_BCM2835)) {
> +		ret = watchdog_register(&priv->wd);
> +		if (ret) {
> +			free(priv);
> +			return ret;
> +		}
> +	}
> +
> +	priv->restart.name = "bcm2835_wd";
> +	priv->restart.restart = bcm2835_restart_soc;
> +
> +	restart_handler_register(&priv->restart);
> +
> +	return 0;
> +}
> +
> +static __maybe_unused struct of_device_id bcm2835_wd_dt_ids[] = {
> +	{
> +		.compatible = "brcm,bcm2835-pm-wdt",
> +	}, {
> +		/* sentinel */
> +	},
> +};
> +
> +static struct driver_d bcm2835_wd_driver = {
> +	.name		= "bcm2835_wd",
> +	.of_compatible	= DRV_OF_COMPAT(bcm2835_wd_dt_ids),
> +	.probe		= bcm2835_wd_probe,
> +};
> +
> +static int __init bcm2835_wd_init(void)
> +{
> +	return platform_driver_register(&bcm2835_wd_driver);
> +}
> +device_initcall(bcm2835_wd_init);
> -- 
> 2.14.3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
