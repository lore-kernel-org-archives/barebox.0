Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnh19-0000mn-IB
 for barebox@lists.infradead.org; Tue, 14 Mar 2017 07:37:17 +0000
Date: Tue, 14 Mar 2017 08:36:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170314073653.rgexs6q5wwafl5ys@pengutronix.de>
References: <20170313102207.30590-1-o.rempel@pengutronix.de>
 <20170313102207.30590-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170313102207.30590-3-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 2/2] nvmem: add simple nvstore driver
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Mon, Mar 13, 2017 at 11:22:07AM +0100, Oleksij Rempel wrote:
> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/nvmem/Kconfig   |   8 +++
>  drivers/nvmem/Makefile  |   4 ++
>  drivers/nvmem/nvstore.c | 142 ++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 154 insertions(+)
>  create mode 100644 drivers/nvmem/nvstore.c
> 
> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> index 218be05b2..23ebc1ea7 100644
> --- a/drivers/nvmem/Kconfig
> +++ b/drivers/nvmem/Kconfig
> @@ -6,3 +6,11 @@ menuconfig NVMEM
>  	  This framework is designed to provide a generic interface to NVMEM
>  
>  	  If unsure, say no.
> +
> +if NVMEM
> +
> +config NVMEM_STORE
> +       tristate "NVMEM storage"
> +       help

What is a nvstore?

> +
> +endif
> diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
> index 6df2c6952..34a59c316 100644
> --- a/drivers/nvmem/Makefile
> +++ b/drivers/nvmem/Makefile
> @@ -4,3 +4,7 @@
>  
>  obj-$(CONFIG_NVMEM)		+= nvmem_core.o
>  nvmem_core-y			:= core.o
> +
> +# Devices
> +obj-$(CONFIG_NVMEM_STORE)	+= nvmem_nvstore.o
> +nvmem_nvstore-y			:= nvstore.o
> diff --git a/drivers/nvmem/nvstore.c b/drivers/nvmem/nvstore.c
> new file mode 100644
> index 000000000..c1b256d92
> --- /dev/null
> +++ b/drivers/nvmem/nvstore.c
> @@ -0,0 +1,142 @@
> +/*
> + * Copyright (c) 2015 Pengutronix, Steffen Trumtrar <kernel@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +#include <common.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <io.h>
> +#include <of.h>
> +#include <malloc.h>
> +#include <linux/nvmem-provider.h>
> +
> +struct nvstore_priv {
> +	struct device_d *dev;
> +	void __iomem	*base;
> +};
> +
> +static int nvstore_write(struct device_d *dev, const int reg, const void *val,
> +			 int val_size)
> +{
> +	struct nvstore_priv *priv = dev->parent->priv;
> +	unsigned int offset;
> +
> +	offset = reg;
> +	while (val_size > 0) {

Here val_size looks like it's the number of words (bytes?) to write.

> +		switch (val_size) {
> +		case 1:
> +			writeb(*(u8 *)val, priv->base + offset);
> +			break;
> +		case 2:
> +			writew(*(u16 *)val, priv->base + offset);
> +			break;
> +		case 4:
> +			writel(*(u32 *)val, priv->base + offset);
> +			break;
> +		}

This instead suggests val_size is the width of a single word.

> +		val_size -= 4;
> +		val += 4;
> +		offset += 4;

And this looks like a word width of 4 bytes is the only supported.

This looks wrong. Same for the read function.

> +
> +static struct nvmem_bus nvstore_nvmem_bus = {
> +	.write = nvstore_write,
> +	.read  = nvstore_read,
> +};
> +
> +static struct nvmem_config nvstore_nvmem_config = {
> +	.name = "nvstore",
> +	.stride = 4,
> +	.word_size = 4,
> +};
> +
> +static int nvstore_probe(struct device_d *dev)
> +{
> +	struct nvstore_priv *priv;
> +	struct nvmem_device *nvmem;
> +	struct resource *res;
> +
> +	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
> +	if (IS_ERR(res)) {
> +		res = dev_get_resource(dev->parent, IORESOURCE_MEM, 0);
> +		if (IS_ERR(res)) {
> +			free(priv);
> +			return PTR_ERR(res);
> +		}
> +	}
> +
> +	res = request_iomem_region(dev_name(dev), res->start, res->end);
> +	if (IS_ERR(res)) {
> +		free(priv);
> +		return PTR_ERR(res);
> +	}

dev_request_mem_resource() should do instead of
dev_get_resource()/request_iomem_region()

> +
> +	priv->base = (void __iomem *)res->start;
> +
> +	nvstore_nvmem_config.size = 1;
> +	nvstore_nvmem_config.dev = dev;
> +	nvstore_nvmem_config.bus = &nvstore_nvmem_bus;

Gnagna. This is what happens when the initial driver writer decides that
his device is single instance only. Everyone copies the template and now
we find it in a generic driver which clearly is not necessarily single
instance.

> +
> +	nvmem = nvmem_register(&nvstore_nvmem_config);
> +	if (IS_ERR(nvmem)) {
> +		free(priv);
> +		return PTR_ERR(nvmem);
> +	}
> +
> +	dev->priv = priv;

This should be set before nvmem_register() is called.

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
