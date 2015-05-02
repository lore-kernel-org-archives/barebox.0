Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-f175.google.com ([209.85.220.175])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yoag4-0006xw-EY
 for barebox@lists.infradead.org; Sat, 02 May 2015 16:54:09 +0000
Received: by qkx62 with SMTP id 62so65666709qkx.0
 for <barebox@lists.infradead.org>; Sat, 02 May 2015 09:53:45 -0700 (PDT)
Message-ID: <55450062.6050205@vanguardiasur.com.ar>
Date: Sat, 02 May 2015 13:50:42 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
MIME-Version: 1.0
References: <1426573554-14478-1-git-send-email-s.hauer@pengutronix.de>
 <1426573554-14478-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1426573554-14478-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Regression on next (Re: [PATCH 3/3] driver: Call bus->remove instead
 of driver->remove)
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

Hi Sascha,

On 03/17/2015 03:25 AM, Sascha Hauer wrote:
> In devices_shutdown we should call the busses remove function
> which in turn calls the drivers remove function. Otherwise for
> example PCI devices never get removed since they do not have
> a remove function but a pcidev->remove function instead.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/base/driver.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 453966b..590c97c 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -399,8 +399,8 @@ void devices_shutdown(void)
>  	struct device_d *dev;
>  
>  	list_for_each_entry(dev, &active, active) {
> -		if (dev->driver->remove)
> -			dev->driver->remove(dev);
> +		if (dev->bus->remove)
> +			dev->bus->remove(dev);
>  	}
>  }
>  
> 

This commit caused a regression on the Openblocks A6 board, which now freezes
when calling devices_shutdown. The problem is that calling bus->remove makes
the remove() of the PHY driver called twice.

This happened because the mdio bus device (mdio-mvebu) was registered first,
and the phy0 device was be registered later, and attached to the mdio bus.

Upon device shutdown, when iterating through the active device list,
the phy0 device is removed before mdio-mvebu. Then, when the mdio bus device
is removed, the phy0 device is removed again, here:

mdio_bus_remove(on mdio-mvebu)
  mvebu_mdio_remove
    mdiobus_unregister
      unregister_device
        mdio_bus_remove(on phy0)
        
This is currently the case for the Kirkwood Openblocks A6 board, where a double
free(dev->cdev.name) in mdio_bus_remove causes a silent freeze when booting
Linux.

I tried something like this:

@@ -446,12 +450,14 @@ const char *dev_id(const struct device_d *dev)
  void devices_shutdown(void)
 {
-	struct device_d *dev;
+	struct device_d *dev, *tmpdev;
+	struct bus_type *bus;
+
+	for_each_bus(bus)
+		list_for_each_entry_safe(dev, tmpdev, &(bus)->device_list, bus_list)
+			if (dev->is_active && dev->bus->remove)
+				dev->bus->remove(dev);
 -	list_for_each_entry(dev, &active, active) {
-		if (dev->bus->remove)
-			dev->bus->remove(dev);
-	}
 }

But then realise this messes the remove order, and so will probably
break some other case :(

--
Ezequiel Garcia, VanguardiaSur
www.vanguardiasur.com.ar

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
