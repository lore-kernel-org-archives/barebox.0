Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fn9M8-0002C1-BU
 for barebox@lists.infradead.org; Tue, 07 Aug 2018 21:17:30 +0000
Received: from ravnborg.org (unknown [158.248.196.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id DCCB680301
 for <barebox@lists.infradead.org>; Tue,  7 Aug 2018 23:17:16 +0200 (CEST)
Date: Tue, 7 Aug 2018 23:17:15 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180807211715.GB24765@ravnborg.org>
References: <20180807211449.GA15748@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180807211449.GA15748@ravnborg.org>
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
Subject: [PATCH v1 2/2] phylib: add support for reset-gpios
To: barebox@lists.infradead.org


Add minimal support for reset-gpios.

Example DT that uses this:

	mdio {
		#address-cells = <1>;
		#size-cells = <0>;
		reset-gpios = <&pioE 17 GPIO_ACTIVE_LOW>;
		reset-delay-us = <1000>;
		ethphy0: ethernet-phy@1 {
			reg = <3>;
		};
	};

This was required to get the Davicom PHY operational on
my proprietary board.
I added the minimal mdiobus_reset() calls.
Linux kernel will take care that the PHY is reset upon removal etc.

Another options was to use a bus reset, but then a macb (the
driver used on my board) would be required.
The reset-gpios solution is general and matches phy-bindings-txt

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/net/phy/mdio_bus.c | 58 +++++++++++++++++++++++++++++++++++++++++++---
 include/linux/phy.h        |  5 ++++
 2 files changed, 60 insertions(+), 3 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index d209716a1..85deca869 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -17,6 +17,8 @@
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
 #include <common.h>
+#include <of_gpio.h>
+#include <gpio.h>
 #include <driver.h>
 #include <init.h>
 #include <clock.h>
@@ -25,6 +27,8 @@
 #include <linux/phy.h>
 #include <linux/err.h>
 
+#define DEFAULT_GPIO_RESET_DELAY	10 /* us */
+
 LIST_HEAD(mii_bus_list);
 
 int mdiobus_detect(struct device_d *dev)
@@ -83,6 +87,42 @@ static int of_mdiobus_register_phy(struct mii_bus *mdio, struct device_node *chi
 }
 
 /**
+ * of_mdioibus_register_reset - register optional reset-gpios
+ * @mdio: pointer to mii_bus structure
+ * @np: pointer to device_node of MDIO bus.
+ *
+ * Read optional reset-gpios from mido node in DT
+ */
+static void of_mdiobus_register_reset(struct mii_bus *mdio,
+				      struct device_node *np)
+{
+	enum of_gpio_flags of_flags;
+	u32 reset_delay;
+	int gpio;
+
+	reset_delay = DEFAULT_GPIO_RESET_DELAY;
+	of_property_read_u32(np, "reset-delay-us", &reset_delay);
+
+	gpio = of_get_named_gpio_flags(np, "reset-gpios", 0, &of_flags);
+	if (gpio_is_valid(gpio)) {
+		unsigned long flags;
+		char *name;
+
+		name = basprintf("%s-reset", dev_name(&mdio->dev));
+		flags = GPIOF_OUT_INIT_INACTIVE;
+
+		if (of_flags & OF_GPIO_ACTIVE_LOW)
+			flags |= GPIOF_ACTIVE_LOW;
+
+		if (gpio_request_one(gpio, flags, name) >= 0) {
+			mdio->reset_gpio = gpio;
+			mdio->reset_delay = reset_delay;
+		}
+	}
+
+}
+
+/**
  * of_mdiobus_register - Register mii_bus and create PHYs from the device tree
  * @mdio: pointer to mii_bus structure
  * @np: pointer to device_node of MDIO bus.
@@ -96,6 +136,8 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
 	u32 addr;
 	int ret;
 
+	of_mdiobus_register_reset(mdio, np);
+
 	/* Loop over the child nodes and register a phy_device for each one */
 	for_each_available_child_of_node(np, child) {
 		ret = of_property_read_u32(child, "reg", &addr);
@@ -147,9 +189,6 @@ int mdiobus_register(struct mii_bus *bus)
 		return -EINVAL;
 	}
 
-	if (bus->reset)
-		bus->reset(bus);
-
 	list_add_tail(&bus->list, &mii_bus_list);
 
 	pr_info("%s: probed\n", dev_name(&bus->dev));
@@ -157,6 +196,10 @@ int mdiobus_register(struct mii_bus *bus)
 	if (bus->dev.device_node)
 		of_mdiobus_register(bus, bus->dev.device_node);
 
+	mdiobus_reset(bus);
+	if (bus->reset)
+		bus->reset(bus);
+
 	return 0;
 }
 EXPORT_SYMBOL(mdiobus_register);
@@ -190,6 +233,15 @@ struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr)
 }
 EXPORT_SYMBOL(mdiobus_scan);
 
+void mdiobus_reset(const struct mii_bus *bus)
+{
+	if (bus->reset_gpio) {
+		gpio_set_active(bus->reset_gpio, 1);
+		udelay(bus->reset_delay);
+		gpio_set_active(bus->reset_gpio, 0);
+	}
+}
+EXPORT_SYMBOL(mdiobus_reset);
 
 /**
  *
diff --git a/include/linux/phy.h b/include/linux/phy.h
index ac750f5c3..d5b153d25 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -99,6 +99,10 @@ struct mii_bus {
 	/* PHY addresses to be ignored when probing */
 	u32 phy_mask;
 
+	/* Optional reset of all PHY's on the bus */
+	int reset_gpio;
+	int reset_delay;
+
 	struct list_head list;
 
 	bool is_multiplexed;
@@ -108,6 +112,7 @@ struct mii_bus {
 int mdiobus_register(struct mii_bus *bus);
 void mdiobus_unregister(struct mii_bus *bus);
 struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr);
+void mdiobus_reset(const struct mii_bus *bus);
 
 extern struct list_head mii_bus_list;
 
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
