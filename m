Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8WsE-0002qD-5e
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 14:11:46 +0000
Date: Thu, 21 Feb 2013 15:11:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130221141131.GY1906@pengutronix.de>
References: <1361003085-1372-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361003085-1372-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] Add system controller register driver (SYSCON)
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Feb 16, 2013 at 12:24:45PM +0400, Alexander Shiyan wrote:
> This patch adds support for system controller register driver (SYSCON).
> Code taken from Linux Kernel and adapted for using in barebox.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Looks good to me. If you have a user for it we can apply it.

Sascha

> ---
>  drivers/mfd/Kconfig  |  5 +++
>  drivers/mfd/Makefile |  1 +
>  drivers/mfd/syscon.c | 89 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/mfd/syscon.h | 31 ++++++++++++++++++
>  4 files changed, 126 insertions(+)
>  create mode 100644 drivers/mfd/syscon.c
>  create mode 100644 include/mfd/syscon.h
> 
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index c506d67..afb87db 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -24,6 +24,11 @@ config MFD_STMPE
>  	depends on I2C
>  	bool "STMPE-i2c driver"
>  
> +config MFD_SYSCON
> +	bool "System Controller Register"
> +	help
> +	  Select this option to enable accessing system control registers
> +
>  config MFD_TWLCORE
>  	bool
>  
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index 542fb0f..1afd52b 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -4,6 +4,7 @@ obj-$(CONFIG_MFD_MC34704)	+= mc34704.o
>  obj-$(CONFIG_MFD_MC34708)	+= mc34708.o
>  obj-$(CONFIG_MFD_MC9SDZ60)	+= mc9sdz60.o
>  obj-$(CONFIG_MFD_STMPE)		+= stmpe-i2c.o
> +obj-$(CONFIG_MFD_SYSCON)	+= syscon.o
>  obj-$(CONFIG_MFD_TWLCORE)	+= twl-core.o
>  obj-$(CONFIG_MFD_TWL4030)	+= twl4030.o
>  obj-$(CONFIG_MFD_TWL6030)	+= twl6030.o
> diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
> new file mode 100644
> index 0000000..2cc6a12
> --- /dev/null
> +++ b/drivers/mfd/syscon.c
> @@ -0,0 +1,89 @@
> +/*
> + * System Control Driver
> + *
> + * Based on linux driver by:
> + *  Copyright (C) 2012 Freescale Semiconductor, Inc.
> + *  Copyright (C) 2012 Linaro Ltd.
> + *  Author: Dong Aisheng <dong.aisheng@linaro.org>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + */
> +
> +#include <io.h>
> +#include <init.h>
> +#include <common.h>
> +#include <driver.h>
> +#include <xfuncs.h>
> +
> +#include <mfd/syscon.h>
> +
> +struct syscon {
> +	void __iomem *base;
> +};
> +
> +void __iomem *syscon_base_lookup_by_compatible(const char *s)
> +{
> +	struct syscon *syscon;
> +	struct syscon_pdata *pdata;
> +	struct device_d *dev;
> +
> +	for_each_device(dev) {
> +		if (strncmp(dev_name(dev), "syscon", 6))
> +			continue;
> +
> +		pdata = dev->platform_data;
> +		if (!pdata)
> +			continue;
> +
> +		if (!strcmp(pdata->compatible, s)) {
> +			syscon = dev->priv;
> +			return syscon->base;
> +		}
> +	}
> +
> +	return NULL;
> +}
> +
> +static int syscon_probe(struct device_d *dev)
> +{
> +	struct syscon *syscon;
> +	struct resource *res;
> +
> +	syscon = xzalloc(sizeof(struct syscon));
> +	if (!syscon)
> +		return -ENOMEM;
> +
> +	res = dev_get_resource(dev, 0);
> +	if (!res)
> +		return -ENOENT;
> +
> +	res = request_iomem_region(dev_name(dev), res->start, res->end);
> +	if (!res)
> +		return -EIO;
> +
> +	syscon->base = (void __iomem *)res->start;
> +	dev->priv = syscon;
> +
> +	dev_info(dev, "syscon start 0x%x end 0x%x registered\n",
> +		 res->start, res->end);
> +
> +	return 0;
> +}
> +
> +static struct driver_d syscon_driver = {
> +	.name	= "syscon",
> +	.probe	= syscon_probe,
> +};
> +
> +static int __init syscon_init(void)
> +{
> +	return platform_driver_register(&syscon_driver);
> +}
> +postcore_initcall(syscon_init);
> +
> +MODULE_AUTHOR("Dong Aisheng <dong.aisheng@linaro.org>");
> +MODULE_DESCRIPTION("System Control driver");
> +MODULE_LICENSE("GPL v2");
> diff --git a/include/mfd/syscon.h b/include/mfd/syscon.h
> new file mode 100644
> index 0000000..40a298b
> --- /dev/null
> +++ b/include/mfd/syscon.h
> @@ -0,0 +1,31 @@
> +/*
> + * System Control Driver
> + *
> + * Based on linux driver by:
> + *  Copyright (C) 2012 Freescale Semiconductor, Inc.
> + *  Copyright (C) 2012 Linaro Ltd.
> + *  Author: Dong Aisheng <dong.aisheng@linaro.org>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + */
> +
> +#ifndef __MFD_SYSCON_H__
> +#define __MFD_SYSCON_H__
> +
> +struct syscon_pdata {
> +	const char	*compatible;
> +};
> +
> +#ifdef CONFIG_MFD_SYSCON
> +void __iomem *syscon_base_lookup_by_compatible(const char *);
> +#else
> +static inline void __iomem *syscon_base_lookup_by_compatible(const char *)
> +{
> +	return NULL;
> +}
> +#endif
> +
> +#endif /* __MFD_SYSCON_H__ */
> -- 
> 1.7.12.4
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
