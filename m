Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAMYX-0004nt-NG
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 15:02:46 +0000
Date: Sat, 8 Sep 2012 17:02:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120908150243.GF18243@pengutronix.de>
References: <1347013566-26130-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347013566-26130-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] net: introduce phylib
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 07, 2012 at 12:26:06PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Adapt phylib from linux
> 
> switch all the driver to it
> 
> This will allow to have phy drivers and to only connect the phy at then
> opening of the device. And if the phy is not ready fail on open.
> 
> This is needed by the boot sequence support to do not endup in a loop or spend
> time on bootp when no ethernet cable is connected.

We do not 'need' this for the above reasons, we could also fix the
current code. The above may be an advantage of your code, but the major
selling point is code sharing with Linux (at least that's what you told
me)

> 
> diff --git a/drivers/net/phy/phylib.c b/drivers/net/phy/phylib.c
> new file mode 100644
> index 0000000..c68dbb4
> --- /dev/null
> +++ b/drivers/net/phy/phylib.c
> @@ -0,0 +1,617 @@
> +/*
> + * drivers/net/phy/phylib.c
> + *
> + * Framework for finding and configuring PHYs.
> + * Also contains generic PHY driver
> + *
> + * Copyright (c) 2009-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> + *
> + * Author: Andy Fleming
> + *
> + * Copyright (c) 2004 Freescale Semiconductor, Inc.
> + *
> + * This program is free software; you can redistribute  it and/or modify it
> + * under  the terms of  the GNU General  Public License as published by the
> + * Free Software Foundation;  either version 2 of the  License, or (at your
> + * option) any later version.
> + *
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <net.h>
> +#include <malloc.h>
> +#include <miidev.h>
> +#include <phydev.h>
> +
> +#define PHY_AN_TIMEOUT	10
> +
> +#define to_phy_driver(d)	container_of(d, struct phy_driver, drv)
> +#define to_phy_device(d)	container_of(d, struct phy_device, dev)
> +
> +static int genphy_config_init(struct phy_device *phydev);
> +
> +static int phy_probe(struct device_d *dev)
> +{
> +	return 0;
> +}
> +
> +static int phy_match(struct device_d *dev, struct driver_d *drv)
> +{
> +	struct phy_device *phydev = to_phy_device(dev);
> +	struct phy_driver *phydrv = to_phy_driver(drv);
> +
> +	return phydev->phydrv != phydrv;
> +}

This function makes no sense. A bus match function is for checking if a
driver matches a device. The driver core uses this to find the correct
driver for a device. So by the time the above is called phydev->phydrv
must be NULL.

> +
> +static void phy_remove(struct device_d *dev)
> +{
> +}
> +
> +struct bus_type phy_bustype = {
> +	.name = "phy",
> +	.match = phy_match,
> +	.probe = phy_probe,
> +	.remove = phy_remove,
> +};
> +
> +static struct phy_device* phy_search(struct mii_device *miidev, unsigned int id)
> +{
> +	struct phy_driver *phydrv;
> +	struct phy_device *phydev;
> +	struct driver_d *drv;
> +
> +	for_each_driver(drv) {
> +		if (drv->bus != &phy_bustype)
> +			continue;
> +
> +		phydrv = to_phy_driver(drv);
> +
> +		if (((id & phydrv->phy_id_mask) ==
> +		     (phydrv->phy_id & phydrv->phy_id_mask)) ||
> +		     (phydrv->phy_id == PHY_ANY_UID)) {
> +			phydev = calloc(1, sizeof(struct phy_device));
> +
> +			if (!phydev)
> +				return NULL;
> +
> +			phydev->phydrv = phydrv;
> +			return phydev;
> +		}
> +	}
> +
> +	return NULL;
> +}

You do the effort of adding a bus type for phys, but leave it unused.
The test if a phy driver matches the phy id should be in phy_match.
phy_match is unused since there are no devices registered on the phy
bus. You have to add a phydev->dev.bus = &phy_bustype; to do this.

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
