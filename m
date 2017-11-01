Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e9oe1-00016R-Rx
 for barebox@lists.infradead.org; Wed, 01 Nov 2017 08:45:09 +0000
Date: Wed, 1 Nov 2017 09:44:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171101084442.j64bhc774jpt256m@pengutronix.de>
References: <1509115061-4385-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1509115061-4385-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH 1/3] common: Add autoenable for components
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 27, 2017 at 04:37:39PM +0200, Daniel Schultz wrote:
> This patch adds an API to automatically enable either hardware components
> with existing device drivers or i2c clients. All functions take a device
> tree path to find the hardware and will fix up the node status in the
> kernel device tree, if it's accessible.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  common/Kconfig       |   9 +++++
>  common/Makefile      |   1 +
>  common/autoenable.c  | 109 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/autoenable.h |  21 ++++++++++
>  4 files changed, 140 insertions(+)
>  create mode 100644 common/autoenable.c
>  create mode 100644 include/autoenable.h
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 57418ca..8d2a3e6 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -712,6 +712,15 @@ config CONSOLE_NONE
>  
>  endchoice
>  
> +config KERNEL_AUTOENABLE
> +	bool
> +	prompt "Autoenable of components"
> +	help
> +	  Say Y to unlock an API for automatically enable either hardware
> +	  components with existing device drivers or i2c clients. All functions
> +	  take a device tree path to find the hardware and will fix up the node
> +	  status in the kernel device tree, if it's accessible.

I don't think we need an extra option for this. Just compile it
unconditionally. The code will be dropped if unused anyway, and
if it's used we probably do not want to fall back to the no-op
inline wrappers.

> +
>  choice
>  	prompt "Console activation strategy"
>  	depends on CONSOLE_FULL
> diff --git a/common/Makefile b/common/Makefile
> index 8cd0ab3..4d7b0f9 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -31,6 +31,7 @@ obj-$(CONFIG_FLEXIBLE_BOOTARGS)	+= bootargs.o
>  obj-$(CONFIG_GLOBALVAR)		+= globalvar.o
>  obj-$(CONFIG_GREGORIAN_CALENDER) += date.o
>  obj-$(CONFIG_KALLSYMS)		+= kallsyms.o
> +obj-$(CONFIG_KERNEL_AUTOENABLE) += autoenable.o
>  obj-$(CONFIG_MALLOC_DLMALLOC)	+= dlmalloc.o
>  obj-$(CONFIG_MALLOC_TLSF)	+= tlsf_malloc.o tlsf.o
>  obj-$(CONFIG_MALLOC_DUMMY)	+= dummy_malloc.o
> diff --git a/common/autoenable.c b/common/autoenable.c

common/oftree.c would be a good place for the code.

> new file mode 100644
> index 0000000..be76942
> --- /dev/null
> +++ b/common/autoenable.c
> @@ -0,0 +1,109 @@
> +/*
> + * Copyright (C) 2017 PHYTEC Messtechnik GmbH,
> + * Author: Daniel Schultz <d.schultz@phytec.de>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * version 2 as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <linux/err.h>
> +#include <of.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <i2c/i2c.h>
> +
> +/**
> + * autoenable_device_by_path() - Autoenable a device by a device tree path
> + * @param path Device tree path up from the root to the device
> + * @return 0 on success, -enodev on failure. If no device found in the device
> + * tree.
> + *
> + * This function will search for a device and will enable it in the kernel
> + * device tree, if it exists and is loaded.
> + */
> +int autoenable_device_by_path(char *path)

This function and the other one should get a of_ prefix.

> +{
> +	struct device_d *device;
> +	struct device_node *node;
> +	int ret;
> +
> +	node = of_find_node_by_name(NULL, path);
> +	if (!node)
> +		node = of_find_node_by_path(path);
> +
> +	if (!node)
> +		return -ENODEV;
> +
> +	device = of_find_device_by_node(node);
> +	if (!device)
> +		return -ENODEV;
> +
> +	ret = of_register_set_status_fixup(path, 1);
> +	if (!ret)
> +		printf("autoenabled %s\n", device->name);
> +	return ret;
> +}

I'm not sure this function actually does what you want to archieve. From
the usage of the function in patch 3/3 it seems you want to enable for
example the NAND controller in the kernel device tree if you find a board
with NAND chip equipped, right? To do this you want to have a function
which enables a device in the kernel device tree if it's enabled in the
barebox device tree, but I don't think you want to depend on the driver
actually being enabled in barebox. What if you find a board with NAND
chip equipped but the driver is disabled in barebox to safe some space?


> +
> +/**
> + * autoenable_i2c_by_path - Autoenable a i2c client by a device tree path
> + * @param path Device tree path up from the root to the i2c client
> + * @return 0 on success, -enodev on failure. If no i2c client found in the i2c
> + * device tree.
> + *
> + * This function will search for a i2c client, tries to write to the client and
> + * will enable it in the kernel device tree, if it exists and is accessible.
> + */
> +int autoenable_i2c_by_path(char *path)
> +{

I don't like that this function has the same name pattern as the function
above, but does something different. The above function does something
when it encounters a device which has a driver, but this function
actually checks for physical presence of a device.

> +	struct device_node *node;
> +	struct i2c_adapter *i2c_adapter;
> +	struct i2c_msg msg;
> +	char data[1] = {0x0};
> +	int addr;
> +	const __be32 *ip;
> +	int ret;
> +
> +	node = of_find_node_by_name(NULL, path);
> +	if (!node)
> +		node = of_find_node_by_path(path);
> +	if (!node)
> +		return -ENODEV;
> +	if (!node->parent)
> +		return -ENODEV;
> +
> +	ip = of_get_property(node, "reg", NULL);
> +	if (!ip)
> +		return -ENODEV;
> +	addr = be32_to_cpup(ip);

We have of_property_read_u32() for this.

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
