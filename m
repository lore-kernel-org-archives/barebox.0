Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x231.google.com ([2a00:1450:4008:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrSmw-0007V5-Th
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 12:56:04 +0000
Received: by mail-bk0-f49.google.com with SMTP id mz10so4459261bkb.22
 for <barebox@lists.infradead.org>; Tue, 25 Jun 2013 05:55:41 -0700 (PDT)
Message-ID: <51C99349.1010207@gmail.com>
Date: Tue, 25 Jun 2013 14:55:37 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372152047-28134-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372152047-28134-5-git-send-email-sebastian.hesselbarth@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/9] OF: import bus/device related functions from Linux
 OF API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On 06/25/13 11:20, Sebastian Hesselbarth wrote:
> This imports some bus and device related functions from Linux OF API
> with some modifcations for Barebox.
>
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Cc: barebox@lists.infradead.org
> ---
>   drivers/of/Makefile   |    2 +-
>   drivers/of/platform.c |  294 +++++++++++++++++++++++++++++++++++++++++++++++++
>   include/of.h          |   18 +++
>   3 files changed, 313 insertions(+), 1 deletions(-)
>   create mode 100644 drivers/of/platform.c
[...]
> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> new file mode 100644
> index 0000000..450d770
> --- /dev/null
> +++ b/drivers/of/platform.c
> @@ -0,0 +1,294 @@
> +/*
> + * platform.c - bus/device related devicetree functions
> + *
> + * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + *
> + * based on Linux devicetree support
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
[...]
> +/**
> + * of_platform_device_create - Alloc, initialize and register an of_device
> + * @np: pointer to node to create device for
> + * @parent: device model parent device.
> + *
> + * Returns pointer to created platform device, or NULL if a device was not
> + * registered. Unavailable devices will not get registered.
> + */
> +static struct device_d *of_platform_device_create(struct device_node *np,
> +						struct device_d *parent)
> +{
> +	struct device_d *dev;
> +	struct resource *res, temp_res;
> +	int i, ret, num_reg = 0;
> +
> +	if (!of_device_is_available(np))
> +		return NULL;
> +
> +	dev = xzalloc(sizeof(*dev));
> +
> +	/* setup generic device info */
> +	dev->id = DEVICE_ID_SINGLE;
> +	dev->device_node = np;
> +	dev->parent = parent;
> +	of_device_make_bus_id(dev);
> +
> +	/* count the io resources */
> +	if (of_can_translate_address(np))
> +		while (of_address_to_resource(np, num_reg, &temp_res) == 0)
> +			num_reg++;
> +
> +	/* Populate the resource table */
> +	if (num_reg) {
> +		res = xzalloc(sizeof(*res) * num_reg);
> +
> +		dev->num_resources = num_reg;
> +		dev->resource = res;
> +		for (i = 0; i < num_reg; i++, res++) {
> +			ret = of_address_to_resource(np, i, res);
> +			if (ret)
> +				goto err_free;
> +		}
> +	}
> +
> +	debug("register device 0x%08x\n", (num_reg) ? dev->resource[0].start : (-1));
> +
> +	ret = platform_device_register(dev);
> +	if (ret)
> +		goto err_free;
> +
> +	return dev;
> +
> +err_free:
> +	free(dev);
> +	return NULL;
> +}

of_platform_device_create is missing a check for already existing
devices. I have added a check that tries to match all mem resources
of the node with existing devices.

[...]
> +/**
> + * of_platform_populate() - Populate platform_devices from device tree data
> + * @root: parent of the first level to probe or NULL for the root of the tree
> + * @matches: match table, NULL to use the default
> + * @lookup: auxdata table for matching id and platform_data with device nodes

Removed the line above, as lookup auxdata is not used on barebox.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
