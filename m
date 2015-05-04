Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yp9sy-0006bl-9i
 for barebox@lists.infradead.org; Mon, 04 May 2015 06:29:49 +0000
Date: Mon, 4 May 2015 08:29:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150504062919.GF6325@pengutronix.de>
References: <1426573554-14478-1-git-send-email-s.hauer@pengutronix.de>
 <1426573554-14478-3-git-send-email-s.hauer@pengutronix.de>
 <55450062.6050205@vanguardiasur.com.ar>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55450062.6050205@vanguardiasur.com.ar>
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
Subject: Re: Regression on next (Re: [PATCH 3/3] driver: Call bus->remove
 instead of driver->remove)
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Ezequiel,

On Sat, May 02, 2015 at 01:50:42PM -0300, Ezequiel Garcia wrote:
> Hi Sascha,
> 
> On 03/17/2015 03:25 AM, Sascha Hauer wrote:
> > In devices_shutdown we should call the busses remove function
> > which in turn calls the drivers remove function. Otherwise for
> > example PCI devices never get removed since they do not have
> > a remove function but a pcidev->remove function instead.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/base/driver.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> > index 453966b..590c97c 100644
> > --- a/drivers/base/driver.c
> > +++ b/drivers/base/driver.c
> > @@ -399,8 +399,8 @@ void devices_shutdown(void)
> >  	struct device_d *dev;
> >  
> >  	list_for_each_entry(dev, &active, active) {
> > -		if (dev->driver->remove)
> > -			dev->driver->remove(dev);
> > +		if (dev->bus->remove)
> > +			dev->bus->remove(dev);
> >  	}
> >  }
> >  
> > 
> 
> This commit caused a regression on the Openblocks A6 board, which now freezes
> when calling devices_shutdown. The problem is that calling bus->remove makes
> the remove() of the PHY driver called twice.
> 
> This happened because the mdio bus device (mdio-mvebu) was registered first,
> and the phy0 device was be registered later, and attached to the mdio bus.
> 
> Upon device shutdown, when iterating through the active device list,
> the phy0 device is removed before mdio-mvebu. Then, when the mdio bus device
> is removed, the phy0 device is removed again, here:
> 
> mdio_bus_remove(on mdio-mvebu)
>   mvebu_mdio_remove
>     mdiobus_unregister
>       unregister_device
>         mdio_bus_remove(on phy0)
>         
> This is currently the case for the Kirkwood Openblocks A6 board, where a double
> free(dev->cdev.name) in mdio_bus_remove causes a silent freeze when booting
> Linux.

Too bad that happened. I believe the following fixes this, but I have no
hardware to test this on. Could you give this a test? I'll delay the
outstanding release until this is solved.

Sascha

----------------------------8<---------------------------

From 15422e3435b0151f1b5d753b19a8578210da9d04 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 4 May 2015 08:16:20 +0200
Subject: [PATCH] net: phy: Do not double remove phy device

This fixes: 80264a8 driver: Call bus->remove instead of driver->remove

On mvebu it happens that:

Upon device shutdown, when iterating through the active device list,
the phy0 device is removed before mdio-mvebu. Then, when the mdio bus
device is removed, the phy0 device is removed again, here:

mdio_bus_remove(on mdio-mvebu)
  mvebu_mdio_remove
    mdiobus_unregister
      unregister_device
        mdio_bus_remove(on phy0)

Fix this by setting the mdio busses phy_map[phy->addr] to NULL when
unregistering the phy device, so that mdiobus_unregister no longer
finds a valid phy_device when iterating over the busses device list.

Reported-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index f526cfc..0959c45 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -331,12 +331,14 @@ static void mdio_bus_remove(struct device_d *_dev)
 {
 	struct phy_device *dev = to_phy_device(_dev);
 	struct phy_driver *drv = to_phy_driver(_dev->driver);
+	struct mii_bus *bus = dev->bus;
 
 	if (drv->remove)
 		drv->remove(dev);
 
 	free(dev->cdev.name);
 	devfs_remove(&dev->cdev);
+	bus->phy_map[dev->addr] = NULL;
 }
 
 struct bus_type mdio_bus_type = {
-- 
2.1.4

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
