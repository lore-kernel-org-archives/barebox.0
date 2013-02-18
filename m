Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7Nof-0004rX-3y
 for barebox@lists.infradead.org; Mon, 18 Feb 2013 10:19:22 +0000
Date: Mon, 18 Feb 2013 11:19:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130218101919.GQ1906@pengutronix.de>
References: <1360954167-18993-1-git-send-email-shc_work@mail.ru>
 <20130218100642.GO1906@pengutronix.de>
 <1361182402.423724727@f309.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361182402.423724727@f309.mail.ru>
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
Subject: Re: [RFC] Add Generic GPIO driver
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Feb 18, 2013 at 02:13:22PM +0400, Alexander Shiyan wrote:
> > On Fri, Feb 15, 2013 at 10:49:27PM +0400, Alexander Shiyan wrote:
> > > This patch adds generic memory-mapped GPIO controller support.
> > > Code taken from Linux Kernel and adopted for barebox.
> > 
> > I'm fine with this if you add a user for it. I wonder though if it's
> > worth it to have this driver for barebox. If I have a driver in the
> > kernel that already uses it, then this makes it simple to copy it, but
> > should I have to write a new gpio driver, I'm unsure if it's simpler
> > to write a new gpio driver or to register with the generic gpio
> > driver.
> 
> Here's an example that I'm checking:

Ok, this indeed looks nice and short. You convinced me ;)

As said, I'm fine with the generic gpio driver if you add the below as
first user.

Sascha

> 
> /*
>  * Copyright (C) 2013 Alexander Shiyan <shc_work@mail.ru>
>  *
>  * This program is free software; you can redistribute it and/or
>  * modify it under the terms of the GNU General Public License as
>  * published by the Free Software Foundation; either version 2 of
>  * the License, or (at your option) any later version.
>  */
> 
> #include <init.h>
> #include <common.h>
> #include <malloc.h>
> 
> #include <linux/basic_mmio_gpio.h>
> 
> static int clps711x_gpio_probe(struct device_d *dev)
> {
> 	int err;
> 	void __iomem *dat, *dir, *dir_inv;
> 	struct bgpio_chip *bgc;
> 	struct bgpio_pdata *pdata = dev->platform_data;
> 
> 	if (!pdata)
> 		return -ENODATA;
> 
> 	dat = dev_request_mem_region_by_name(dev, "dat");
> 	dir = dev_request_mem_region_by_name(dev, "dir");
> 	dir_inv = dev_request_mem_region_by_name(dev, "dir_inv");
> 	if (!dat || (!dir && !dir_inv))
> 		return -EINVAL;
> 
> 	bgc = xzalloc(sizeof(struct bgpio_chip));
> 	if (!bgc)
> 		return -ENOMEM;
> 
> 	err = bgpio_init(bgc, dev, 1, dat, NULL, NULL, dir, dir_inv, 0);
> 	if (err) {
> 		free(bgc);
> 		return err;
> 	}
> 
> 	bgc->gc.base = pdata->base;
> 	bgc->gc.ngpio = pdata->ngpio;
> 
> 	return gpiochip_add(&bgc->gc);
> }
> 
> static struct driver_d clps711x_gpio_driver = {
> 	.name	= "clps711x-gpio",
> 	.probe	= clps711x_gpio_probe,
> };
> 
> static __init int clps711x_gpio_register(void)
> {
> 	return platform_driver_register(&clps711x_gpio_driver);
> }
> coredevice_initcall(clps711x_gpio_register);
> 
> ---

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
