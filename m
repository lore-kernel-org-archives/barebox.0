Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnolG-0005ES-K4
 for barebox@lists.infradead.org; Tue, 14 Mar 2017 15:53:26 +0000
Received: by mail-pg0-x243.google.com with SMTP id b5so25326552pgg.1
 for <barebox@lists.infradead.org>; Tue, 14 Mar 2017 08:53:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 14 Mar 2017 08:52:22 -0700
Message-Id: <20170314155222.11657-12-andrew.smirnov@gmail.com>
In-Reply-To: <20170314155222.11657-1-andrew.smirnov@gmail.com>
References: <20170314155222.11657-1-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/11] net: macb: Add DT support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/macb.c | 56 ++++++++++++++++++++++++++++++++++++++++--------------
 1 file changed, 42 insertions(+), 14 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 5f2e5e5..36e49c3 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -48,6 +48,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <linux/phy.h>
+#include <of_net.h>
 
 #include "macb.h"
 
@@ -615,14 +616,8 @@ static int macb_probe(struct device_d *dev)
 	struct resource *iores;
 	struct eth_device *edev;
 	struct macb_device *macb;
+	const char *pclk_name;
 	u32 ncfgr;
-	struct macb_platform_data *pdata;
-
-	if (!dev->platform_data) {
-		dev_err(dev, "macb: no platform_data\n");
-		return -ENODEV;
-	}
-	pdata = dev->platform_data;
 
 	edev = xzalloc(sizeof(struct eth_device) + sizeof(struct macb_device));
 	edev->priv = (struct macb_device *)(edev + 1);
@@ -633,22 +628,49 @@ static int macb_probe(struct device_d *dev)
 	edev->open = macb_open;
 	edev->send = macb_send;
 	edev->halt = macb_halt;
-	edev->get_ethaddr = pdata->get_ethaddr ? pdata->get_ethaddr : macb_get_ethaddr;
+	edev->get_ethaddr = macb_get_ethaddr;
 	edev->set_ethaddr = macb_set_ethaddr;
 	edev->parent = dev;
 
 	macb->miibus.read = macb_phy_read;
 	macb->miibus.write = macb_phy_write;
-	macb->phy_addr = pdata->phy_addr;
 	macb->miibus.priv = macb;
 	macb->miibus.parent = dev;
 
-	if (pdata->phy_interface == PHY_INTERFACE_MODE_NA)
-		macb->interface = PHY_INTERFACE_MODE_MII;
-	else
-		macb->interface = pdata->phy_interface;
+	if (dev->platform_data) {
+		struct macb_platform_data *pdata = dev->platform_data;
+
+		if (pdata->phy_interface == PHY_INTERFACE_MODE_NA)
+			macb->interface = PHY_INTERFACE_MODE_MII;
+		else
+			macb->interface = pdata->phy_interface;
+
+		if (pdata->get_ethaddr)
+			edev->get_ethaddr = pdata->get_ethaddr;
+
+		macb->phy_addr = pdata->phy_addr;
+		macb->phy_flags = pdata->phy_flags;
+		pclk_name = "macb_clk";
+	} else if (dev->device_node) {
+		int ret;
+		struct device_node *mdiobus;
 
-	macb->phy_flags = pdata->phy_flags;
+		ret = of_get_phy_mode(dev->device_node);
+		if (ret < 0)
+			macb->interface = PHY_INTERFACE_MODE_MII;
+		else
+			macb->interface = ret;
+
+		mdiobus = of_get_child_by_name(dev->device_node, "mdio");
+		if (mdiobus)
+			macb->miibus.dev.device_node = mdiobus;
+
+		macb->phy_addr = -1;
+		pclk_name = NULL;
+	} else {
+		dev_err(dev, "macb: no platform_data\n");
+		return -ENODEV;
+	}
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
@@ -698,8 +720,14 @@ static int macb_probe(struct device_d *dev)
 	return 0;
 }
 
+static const struct of_device_id macb_dt_ids[] = {
+	{ .compatible = "cdns,at91sam9260-macb",},
+	{ /* sentinel */ }
+};
+
 static struct driver_d macb_driver = {
 	.name  = "macb",
 	.probe = macb_probe,
+	.of_compatible = DRV_OF_COMPAT(macb_dt_ids),
 };
 device_platform_driver(macb_driver);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
