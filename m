Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1boOwU-0001Yk-Rb
 for barebox@lists.infradead.org; Mon, 26 Sep 2016 05:59:08 +0000
Date: Mon, 26 Sep 2016 07:58:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160926055841.wwyoiagr76fgdb46@pengutronix.de>
References: <1474547628-16751-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1474547628-16751-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/3] reset: import socfpga-reset driver from linux
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 22, 2016 at 02:33:46PM +0200, Steffen Trumtrar wrote:
> Port the linux v4.8-rc1 reset-socfpga driver to barebox.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/reset/Makefile        |   1 +
>  drivers/reset/reset-socfpga.c | 125 ++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 126 insertions(+)
>  create mode 100644 drivers/reset/reset-socfpga.c
> 
> diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> index 1e2d83f2b995..52b10cd48055 100644
> --- a/drivers/reset/Makefile
> +++ b/drivers/reset/Makefile
> @@ -1 +1,2 @@
>  obj-$(CONFIG_RESET_CONTROLLER) += core.o
> +obj-$(CONFIG_ARCH_SOCFPGA) += reset-socfpga.o
> diff --git a/drivers/reset/reset-socfpga.c b/drivers/reset/reset-socfpga.c
> new file mode 100644
> index 000000000000..e30db8134739
> --- /dev/null
> +++ b/drivers/reset/reset-socfpga.c
> @@ -0,0 +1,125 @@
> +/*
> + * Copyright 2014 Steffen Trumtrar <s.trumtrar@pengutronix.de>
> + *
> + * based on
> + * Allwinner SoCs Reset Controller driver
> + *
> + * Copyright 2013 Maxime Ripard
> + *
> + * Maxime Ripard <maxime.ripard@free-electrons.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +#include <linux/err.h>
> +#include <linux/reset-controller.h>
> +#include <linux/spinlock.h>
> +#include <linux/types.h>
> +
> +#define NR_BANKS		4
> +
> +struct socfpga_reset_data {
> +	spinlock_t			lock;
> +	void __iomem			*membase;
> +	u32				modrst_offset;
> +	struct reset_controller_dev	rcdev;
> +};
> +
> +static int socfpga_reset_assert(struct reset_controller_dev *rcdev,
> +				unsigned long id)
> +{
> +	struct socfpga_reset_data *data = container_of(rcdev,
> +						     struct socfpga_reset_data,
> +						     rcdev);
> +	int bank = id / BITS_PER_LONG;
> +	int offset = id % BITS_PER_LONG;
> +	unsigned long flags;
> +	u32 reg;
> +
> +	spin_lock_irqsave(&data->lock, flags);
> +
> +	reg = readl(data->membase + data->modrst_offset + (bank * NR_BANKS));
> +	writel(reg | BIT(offset), data->membase + data->modrst_offset +
> +				 (bank * NR_BANKS));
> +	spin_unlock_irqrestore(&data->lock, flags);
> +
> +	return 0;
> +}
> +
> +static int socfpga_reset_deassert(struct reset_controller_dev *rcdev,
> +				  unsigned long id)
> +{
> +	struct socfpga_reset_data *data = container_of(rcdev,
> +						     struct socfpga_reset_data,
> +						     rcdev);
> +
> +	int bank = id / BITS_PER_LONG;
> +	int offset = id % BITS_PER_LONG;
> +	unsigned long flags;
> +	u32 reg;
> +
> +	spin_lock_irqsave(&data->lock, flags);
> +
> +	reg = readl(data->membase + data->modrst_offset + (bank * NR_BANKS));
> +	writel(reg & ~BIT(offset), data->membase + data->modrst_offset +
> +				  (bank * NR_BANKS));
> +
> +	spin_unlock_irqrestore(&data->lock, flags);
> +
> +	return 0;
> +}
> +
> +static struct reset_control_ops socfpga_reset_ops = {
> +	.assert		= socfpga_reset_assert,
> +	.deassert	= socfpga_reset_deassert,
> +};
> +
> +static int socfpga_reset_probe(struct device_d *dev)
> +{
> +	struct socfpga_reset_data *data;
> +	struct resource *res;
> +	struct device_node *np = dev->device_node;
> +
> +	data = xzalloc(sizeof(*data));
> +
> +	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
> +	if (IS_ERR(res))
> +		return PTR_ERR(res);

You should use dev_request_mem_resource() here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
