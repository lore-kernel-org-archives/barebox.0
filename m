Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1frlbk-0004dk-Mo
 for barebox@lists.infradead.org; Mon, 20 Aug 2018 14:56:42 +0000
Received: by mail-lj1-x243.google.com with SMTP id j19-v6so11838920ljc.7
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 07:56:35 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon, 20 Aug 2018 16:56:11 +0200
Message-Id: <20180820145612.17576-2-sam@ravnborg.org>
In-Reply-To: <20180820145215.GA22058@ravnborg.org>
References: <20180820145215.GA22058@ravnborg.org>
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
Subject: [PATCH v3 2/3] phylib: add support for reset-gpios
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Add minimal support for reset-gpios in the PHY node.

Example DT that uses this:

	macb0: ethernet@fffbc000 {
		phy-mode = "rmii";
		#address-cells = <1>;
		#size-cells = <0>;

		ethphy0: ethernet-phy@1 {
			reg = <3>;
			reset-gpios = <&pioE 17 GPIO_ACTIVE_LOW>;
			reset-assert-us = <1000>;
			reset-deassert-us = <2000>;
		};
	};

The reset is required to get the Davicom PHY operational on
my proprietary board, and is assumed relavant for other boards too.

The PHY is reset when we read the info from DT,
before the phy_id is retreived.

The bindings are documented in dts/Bindings/net/phy.txt.

A side-effect of this patch is that we may see
phy devices created from the DT due to the extra call to:

    of_mdiobus_register()

with the ethernet node as argument.

The logic to determine if a child node is a PHY node
is a simpler version compared to the one used in the kernel.
The kernel have a whitelist of compatible strings
and will also reconize compatible = ethernet-phy-idAAAA.BBBB.
If these are required then they can be added later.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/net/phy/mdio_bus.c | 82 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index d209716a1..c479c25bd 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -17,14 +17,19 @@
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
 #include <common.h>
+#include <of_gpio.h>
 #include <driver.h>
 #include <init.h>
+#include <gpio.h>
 #include <clock.h>
 #include <net.h>
 #include <errno.h>
 #include <linux/phy.h>
 #include <linux/err.h>
 
+#define DEFAULT_GPIO_RESET_ASSERT       1000      /* us */
+#define DEFAULT_GPIO_RESET_DEASSERT     1000      /* us */
+
 LIST_HEAD(mii_bus_list);
 
 int mdiobus_detect(struct device_d *dev)
@@ -82,6 +87,76 @@ static int of_mdiobus_register_phy(struct mii_bus *mdio, struct device_node *chi
 	return 0;
 }
 
+/*
+ * Node is considered a PHY node if:
+ * o Compatible string of "ethernet-phy-ieee802.3-c45"
+ * o Compatible string of "ethernet-phy-ieee802.3-c22"
+ * o No compatibility string
+ *
+ * A device which is not a phy is expected to have a compatible string
+ * indicating what sort of device it is.
+ */
+static bool of_mdiobus_child_is_phy(struct device_node *np)
+{
+	if (of_device_is_compatible(np, "ethernet-phy-ieee802.3-c45"))
+		return true;
+
+	if (of_device_is_compatible(np, "ethernet-phy-ieee802.3-c22"))
+		return true;
+
+	if (!of_find_property(np, "compatible", NULL))
+		return true;
+
+	return false;
+}
+
+/*
+ * Reset the PHY, based on DT info
+ *
+ * If np is a phy node, and the phy node contains a reset-gpios property
+ * then reset the phy.
+ */
+static void of_reset_phy(struct mii_bus *bus, struct device_node *np)
+{
+	enum of_gpio_flags of_flags;
+	u32 reset_deassert_delay;
+	u32 reset_assert_delay;
+	unsigned long flags;
+	int gpio;
+	int ret;
+
+	if (!of_mdiobus_child_is_phy(np))
+		return;
+
+	gpio = of_get_named_gpio_flags(np, "reset-gpios", 0, &of_flags);
+	if (!gpio_is_valid(gpio))
+		return;
+
+	flags = GPIOF_OUT_INIT_INACTIVE;
+	if (of_flags & OF_GPIO_ACTIVE_LOW)
+		flags |= GPIOF_ACTIVE_LOW;
+
+	ret = gpio_request_one(gpio, flags, np->name);
+	if (ret) {
+		dev_err(&bus->dev, "failed to request reset gpio for: %s\n",
+			np->name);
+		return;
+	}
+
+	reset_assert_delay = DEFAULT_GPIO_RESET_ASSERT;
+	of_property_read_u32(np, "reset-assert-us", &reset_assert_delay);
+
+	reset_deassert_delay = DEFAULT_GPIO_RESET_DEASSERT;
+	of_property_read_u32(np, "reset-deassert-us", &reset_deassert_delay);
+
+	/* reset the PHY */
+	dev_dbg(&bus->dev, "reset PHY with GPIO: %d\n", gpio);
+	gpio_set_active(gpio, 1);
+	udelay(reset_assert_delay);
+	gpio_set_active(gpio, 0);
+	udelay(reset_deassert_delay);
+}
+
 /**
  * of_mdiobus_register - Register mii_bus and create PHYs from the device tree
  * @mdio: pointer to mii_bus structure
@@ -111,6 +186,8 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
 			continue;
 		}
 
+		of_reset_phy(mdio, child);
+
 		of_mdiobus_register_phy(mdio, child, addr);
 	}
 
@@ -154,6 +231,11 @@ int mdiobus_register(struct mii_bus *bus)
 
 	pr_info("%s: probed\n", dev_name(&bus->dev));
 
+	/* register PHY's as child node to the ethernet node */
+	if (bus->parent->device_node)
+		of_mdiobus_register(bus, bus->parent->device_node);
+
+	/* register PHY's as child node to mdio node */
 	if (bus->dev.device_node)
 		of_mdiobus_register(bus, bus->dev.device_node);
 
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
