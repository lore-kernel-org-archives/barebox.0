Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gBsWR-00071s-BI
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 02:22:50 +0000
Received: by mail-pf1-x443.google.com with SMTP id f78-v6so3107498pfe.1
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2018 19:22:12 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 14 Oct 2018 19:21:22 -0700
Message-Id: <20181015022125.24020-20-andrew.smirnov@gmail.com>
In-Reply-To: <20181015022125.24020-1-andrew.smirnov@gmail.com>
References: <20181015022125.24020-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 19/22] mdio_bus: Allow for non PHY-devices on MDIO buses
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Instead of just creating a simple PHY device for every child of MDIO
bus node, add code to check if any of them have "compatible" property
set, as well as code to create a proper platform device for such
cases.

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
