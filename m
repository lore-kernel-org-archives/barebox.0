Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QtuwC-0002LM-Kw
	for barebox@lists.infradead.org; Thu, 18 Aug 2011 05:14:42 +0000
Date: Thu, 18 Aug 2011 07:14:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110818051436.GO31404@pengutronix.de>
References: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
	<1313472967-19324-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1313472967-19324-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/4] add bus registration support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 16, 2011 at 07:36:05AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/base/Makefile |    1 +
>  drivers/base/bus.c    |   69 +++++++++++++++++++++++++++++++++++++++++++++++++
>  include/driver.h      |   17 ++++++++++++
>  3 files changed, 87 insertions(+), 0 deletions(-)
>  create mode 100644 drivers/base/bus.c
> 
> diff --git a/drivers/base/Makefile b/drivers/base/Makefile
> index 957ca5a..5f19d4d 100644
> --- a/drivers/base/Makefile
> +++ b/drivers/base/Makefile
> @@ -1,3 +1,4 @@
>  obj-y	+= driver.o
> +obj-y	+= bus.o
>  obj-y	+= platform.o
>  obj-y	+= resource.o
> diff --git a/drivers/base/bus.c b/drivers/base/bus.c
> new file mode 100644
> index 0000000..b124ab0
> --- /dev/null
> +++ b/drivers/base/bus.c
> @@ -0,0 +1,69 @@
> +/*
> + * Copyright (c) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
> + */
> +#include <common.h>
> +#include <driver.h>
> +
> +static int bus_match(struct device_d *dev, struct driver_d *drv)
> +{
> +	return strcmp(dev->name, drv->name) ? -1 : 0;
> +}
> +
> +static int bus_probe(struct device_d *dev)
> +{
> +	if (dev->driver->probe)
> +		return dev->driver->probe(dev);
> +	return 0;
> +}
> +
> +static void bus_remove(struct device_d *dev)
> +{
> +	if (dev->driver->remove)
> +		dev->driver->remove(dev);
> +}
> +
> +struct bus_type bus_bus = {
> +	.name = "bus",
> +	.match = bus_match,
> +	.probe = bus_probe,
> +	.remove = bus_remove,
> +};
> +
> +void bus_for_each_device(struct bus_type *bus,
> +			 void (*fn)(struct device_d *dev))
> +{
> +	struct device_d *dev;
> +
> +	for_each_device(dev) {
> +		if (dev->bus == bus)
> +			fn(dev);
> +	}
> +}
> +
> +int register_bus_driver(struct driver_d *drv)
> +{
> +	drv->bus = &bus_bus;
> +	return register_driver(drv);
> +}
> +
> +int register_bus_device(struct device_d *dev)
> +{
> +	dev->bus = &bus_bus;
> +	return register_device(dev);
> +}

This is an absolutely artificial abstraction we do not need. You can
register a device which is really a bus, a usb hub would fall into
this category. But a usb hub is a device of its own which happens
to register other devices. Even the name "struct bus_type bus_bus" shows
that there is something wrong here.

> diff --git a/include/driver.h b/include/driver.h
> index 0b5a652..ab7424e 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -269,6 +269,23 @@ extern struct list_head driver_list;
>   */
>  #define for_each_device(dev) list_for_each_entry(dev, &device_list, list)
>  
> +
> +int register_bus_driver(struct driver_d *drv);
> +int register_bus_device(struct device_d *dev);
> +
> +/* Iterate over all bus device
> + */
> +void bus_for_each_device(struct bus_type *bus,
> +			 void (*fn)(struct device_d *dev));

If you need this it can simply be implemented with a list which collects
all devices on a bus.

> +
> +extern struct bus_type bus_bus;
> +/* Iterate over all bus
> + */
> +static inline void bus_for_each(void (*fn)(struct device_d *dev))
> +{
> +	bus_for_each_device(&bus_bus, fn);
> +}

This function (which would better be named for_each_bus) can also be
implemented with a list when a bus gets registered. The bus_register
function which adds a bus to a list of busses is even already present
in the tree in drivers/base/platform.c

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
