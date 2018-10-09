Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9vy8-0002mK-TM
 for barebox@lists.infradead.org; Tue, 09 Oct 2018 17:39:11 +0000
Received: by mail-pg1-x542.google.com with SMTP id r9-v6so1160203pgv.6
 for <barebox@lists.infradead.org>; Tue, 09 Oct 2018 10:38:42 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  9 Oct 2018 10:38:02 -0700
Message-Id: <20181009173805.26181-15-andrew.smirnov@gmail.com>
In-Reply-To: <20181009173805.26181-1-andrew.smirnov@gmail.com>
References: <20181009173805.26181-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 14/17] mdio_bus: Allow for non PHY-devices on MDIO buses
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Instead of just creating a simple PHY device for every child of MDIO
bus node, add code to check if any of them have "compatible" property
set as well as code to create a proper platform device for such cases.

This change is useful for when MDIO bus and some of Ethernet ports are
connected to a switch or some other MDIO device that doesn't behave
like a generic PHY and can't be probed via its PHY ID.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/phy/mdio_bus.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index d7d6d8940..cda05afae 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -26,6 +26,7 @@
 #include <errno.h>
 #include <linux/phy.h>
 #include <linux/err.h>
+#include <of_device.h>
 
 #define DEFAULT_GPIO_RESET_ASSERT       1000      /* us */
 #define DEFAULT_GPIO_RESET_DEASSERT     1000      /* us */
@@ -179,8 +180,19 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
 
 	/* Loop over the child nodes and register a phy_device for each one */
 	for_each_available_child_of_node(np, child) {
-		if (!of_mdiobus_child_is_phy(child))
+		if (!of_mdiobus_child_is_phy(child)) {
+			if (of_get_property(child, "compatible", NULL)) {
+				if (!of_platform_device_create(child,
+							       &mdio->dev)) {
+					dev_err(&mdio->dev,
+						"Failed to create device "
+						"for %s\n",
+						child->full_name);
+				}
+			}
+
 			continue;
+		}
 
 		ret = of_property_read_u32(child, "reg", &addr);
 		if (ret) {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
