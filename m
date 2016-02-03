Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQrzV-0008MT-48
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 07:36:42 +0000
Date: Wed, 3 Feb 2016 08:36:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160203073619.GH4118@pengutronix.de>
References: <1454296213-12734-1-git-send-email-andrew.smirnov@gmail.com>
 <1454296213-12734-8-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1454296213-12734-8-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 7/8] mdio_bus: Change PHY's naming scheme
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 31, 2016 at 07:10:12PM -0800, Andrey Smirnov wrote:
> Change the way PHY devices are named upon creation. This commit replaces
> sequentialy numbered "/dev/phy%d" with "/dev/mdio%d-phy%02x". This way
> it is significanlty easier to identify which PHY in real-life (e.g. on a
> schematic) corresponds to which device in /dev.
> 
> Also, replace asprintf with xasprintf to provide some form of memory
> allocation failure checking.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/net/phy/mdio_bus.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
> index b74b27e..41bf018 100644
> --- a/drivers/net/phy/mdio_bus.c
> +++ b/drivers/net/phy/mdio_bus.c
> @@ -333,7 +333,9 @@ static int mdio_bus_probe(struct device_d *_dev)
>  	dev_add_param_int_ro(&dev->dev, "phy_addr", dev->addr, "%d");
>  	dev_add_param_int_ro(&dev->dev, "phy_id", dev->phy_id, "0x%08x");
>  
> -	dev->cdev.name = asprintf("phy%d", _dev->id);
> +	dev->cdev.name = xasprintf("mdio%d-phy%02x",
> +				   dev->bus->dev.id,
> +				   dev->addr);

While at it we can change the phy device name in the same way to be
consistent:

------------------------------8<--------------------------


From 21eae26cbff053e42375edbe51f800f56173116a Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 3 Feb 2016 08:14:22 +0100
Subject: [PATCH 1/2] fixup! mdio_bus: Change PHY's naming scheme

---
 drivers/net/phy/phy.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 6ddf5d7..be2c68b 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -173,8 +173,10 @@ struct phy_device *phy_device_create(struct mii_bus *bus, int addr, int phy_id)
 	phydev->bus = bus;
 	phydev->dev.bus = &mdio_bus_type;
 
-	strcpy(phydev->dev.name, "phy");
-	phydev->dev.id = DEVICE_ID_DYNAMIC;
+	sprintf(phydev->dev.name, "mdio%d-phy%02x",
+				   phydev->bus->dev.id,
+				   phydev->addr);
+	phydev->dev.id = DEVICE_ID_SINGLE;
 
 	return phydev;
 }
-- 
2.7.0.rc3

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
