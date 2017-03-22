Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqamr-0002LS-QZ
 for barebox@lists.infradead.org; Wed, 22 Mar 2017 07:34:32 +0000
Date: Wed, 22 Mar 2017 08:34:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170322073408.ws5l274eisikkg5t@pengutronix.de>
References: <20170321140025.25784-1-o.rempel@pengutronix.de>
 <20170321140025.25784-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170321140025.25784-3-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v6 2/8] drivers: add simple hw_random implementation
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Tue, Mar 21, 2017 at 03:00:19PM +0100, Oleksij Rempel wrote:
> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> Add a simple hw_random implementation based on code from
> Linux v4.5-rc5.
> 
> All the entropypool initialization stuff is left out and
> the obsolete data_read/data_present calls are omitted.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/Kconfig            |   1 +
>  drivers/Makefile           |   1 +
>  drivers/hw_random/Kconfig  |   6 +++
>  drivers/hw_random/Makefile |   1 +
>  drivers/hw_random/core.c   | 108 +++++++++++++++++++++++++++++++++++++++++++++
>  include/linux/hw_random.h  |  43 ++++++++++++++++++
>  6 files changed, 160 insertions(+)
>  create mode 100644 drivers/hw_random/Kconfig
>  create mode 100644 drivers/hw_random/Makefile
>  create mode 100644 drivers/hw_random/core.c
>  create mode 100644 include/linux/hw_random.h
> 
> diff --git a/drivers/Kconfig b/drivers/Kconfig
> index cc086ac2d..2f5784a4d 100644
> --- a/drivers/Kconfig
> +++ b/drivers/Kconfig
> @@ -21,6 +21,7 @@ source "drivers/eeprom/Kconfig"
>  source "drivers/input/Kconfig"
>  source "drivers/watchdog/Kconfig"
>  source "drivers/pwm/Kconfig"
> +source "drivers/hw_random/Kconfig"
>  source "drivers/dma/Kconfig"
>  source "drivers/gpio/Kconfig"
>  source "drivers/w1/Kconfig"
> diff --git a/drivers/Makefile b/drivers/Makefile
> index 6a70f6ee1..7e9b80e59 100644
> --- a/drivers/Makefile
> +++ b/drivers/Makefile
> @@ -20,6 +20,7 @@ obj-y	+= misc/
>  obj-y	+= dma/
>  obj-y  += watchdog/
>  obj-y	+= gpio/
> +obj-$(CONFIG_HWRNG) += hw_random/
>  obj-$(CONFIG_OFTREE) += of/
>  obj-$(CONFIG_W1) += w1/
>  obj-y += pinctrl/
> diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
> new file mode 100644
> index 000000000..807fcadd3
> --- /dev/null
> +++ b/drivers/hw_random/Kconfig
> @@ -0,0 +1,6 @@
> +menuconfig HWRNG
> +	bool "HWRNG Support"
> +	help
> +	  Support for HWRNG(Hardware Random Number Generator) devices.
> +
> +	  If unsure, say no.
> diff --git a/drivers/hw_random/Makefile b/drivers/hw_random/Makefile
> new file mode 100644
> index 000000000..15307b100
> --- /dev/null
> +++ b/drivers/hw_random/Makefile
> @@ -0,0 +1 @@
> +obj-$(CONFIG_HWRNG)		+= core.o
> diff --git a/drivers/hw_random/core.c b/drivers/hw_random/core.c
> new file mode 100644
> index 000000000..2991f58c3
> --- /dev/null
> +++ b/drivers/hw_random/core.c
> @@ -0,0 +1,108 @@
> +/*
> + * Copyright (c) 2016 Pengutronix, Steffen Trumtrar <kernel@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * derived from Linux kernel drivers/char/hw_random/core.c
> + */
> +
> +#include <common.h>
> +#include <linux/hw_random.h>
> +#include <malloc.h>
> +
> +static LIST_HEAD(hwrngs);
> +
> +#define RNG_BUFFER_SIZE		32
> +
> +int hwrng_get_data(struct hwrng *rng, void *buffer, size_t size, int wait)
> +{
> +	return rng->read(rng, buffer, size, wait);
> +}
> +
> +static int hwrng_init(struct hwrng *rng)
> +{
> +	int ret = 0;
> +
> +	if (rng->init)
> +		ret = rng->init(rng);
> +
> +	if (!ret)
> +		list_add_tail(&rng->list, &hwrngs);
> +
> +	return ret;
> +}
> +
> +static ssize_t rng_dev_read(struct cdev *cdev, void *buf, size_t size,
> +			    loff_t offset, unsigned long flags)
> +{
> +	struct hwrng *rng = container_of(cdev, struct hwrng, cdev);
> +	size_t count = size;
> +	ssize_t cur = 0;
> +	int len;
> +
> +	memset(buf, 0, size);
> +
> +	while (count) {
> +		int max = min(count, (size_t)RNG_BUFFER_SIZE);
> +		len = hwrng_get_data(rng, rng->buf, max, true);
> +		if (len < 0) {
> +			cur = len;
> +			break;
> +		}
> +
> +		memcpy(buf + cur, rng->buf, len);
> +
> +		count -= len;
> +		cur += len;
> +	}
> +
> +	return cur;
> +}
> +
> +static struct file_operations rng_chrdev_ops = {
> +	.read  = rng_dev_read,
> +	.lseek = dev_lseek_default,
> +};
> +
> +static int hwrng_register_cdev(struct hwrng *rng)
> +{
> +	rng->cdev.name = "hwrng";
> +	rng->cdev.flags = DEVFS_IS_CHARACTER_DEV;
> +	rng->cdev.ops = &rng_chrdev_ops;
> +	rng->cdev.dev = rng->dev;
> +
> +	return devfs_create(&rng->cdev);
> +}
> +
> +struct hwrng *hwrng_get_first(void)
> +{
> +	if (list_empty(&hwrngs))
> +		return ERR_PTR(-ENODEV);
> +	else
> +		return list_first_entry(&hwrngs, struct hwrng, list);
> +}
> +
> +int hwrng_register(struct device_d *dev, struct hwrng *rng)
> +{
> +	int err;
> +
> +	if (rng->name == NULL || rng->read == NULL)
> +		return -EINVAL;
> +
> +	rng->buf = xzalloc(RNG_BUFFER_SIZE);
> +	rng->dev = dev;
> +
> +	err = hwrng_init(rng);
> +	if (err) {
> +		free(rng->buf);
> +		return err;
> +	}
> +
> +	err = hwrng_register_cdev(rng);
> +	if (err)
> +		free(rng->buf);
> +
> +	return err;
> +}
> diff --git a/include/linux/hw_random.h b/include/linux/hw_random.h
> new file mode 100644
> index 000000000..299a717dd
> --- /dev/null
> +++ b/include/linux/hw_random.h
> @@ -0,0 +1,43 @@
> +/*
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> +
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#ifndef LINUX_HWRANDOM_H_
> +#define LINUX_HWRANDOM_H_
> +
> +#include <linux/list.h>
> +
> +/**
> + * struct hwrng - Hardware Random Number Generator driver
> + * @name:		Unique RNG name.
> + * @init:		Initialization callback (can be NULL).
> + * @read:		New API. drivers can fill up to max bytes of data
> + *			into the buffer. The buffer is aligned for any type.
> + * @priv:		Private data, for use by the RNG driver.

This field no longer exists, please drop the comment.

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
