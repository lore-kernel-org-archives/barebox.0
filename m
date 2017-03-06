Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wy-0007my-Ck
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:55:13 +0000
Received: by mail-pf0-x244.google.com with SMTP id 67so14532774pfg.2
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:43 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:46 -0800
Message-Id: <20170306225356.31475-36-andrew.smirnov@gmail.com>
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 35/45] usb: ohci-at91: Add DT support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-at91/include/mach/board.h |  6 ++-
 drivers/usb/host/ohci-at91.c            | 84 ++++++++++++++++++++++++++++++++-
 2 files changed, 86 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 491b220..5d76e00 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -32,11 +32,13 @@
 
 void at91_set_main_clock(unsigned long rate);
 
+#define AT91_MAX_USBH_PORTS	3
+
  /* USB Host */
 struct at91_usbh_data {
 	u8		ports;		/* number of ports on root hub */
-	int		vbus_pin[2];	/* port power-control pin */
-	u8	vbus_pin_active_low[2];	/* vbus polarity */
+	int		vbus_pin[AT91_MAX_USBH_PORTS];	/* port power-control pin */
+	u8	vbus_pin_active_low[AT91_MAX_USBH_PORTS];	/* vbus polarity */
 };
 extern void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data);
 extern void __init at91_add_device_usbh_ehci(struct at91_usbh_data *data);
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index f413616..54fe45f 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -23,10 +23,18 @@
 #include <usb/usb.h>
 #include <usb/usb_defs.h>
 #include <errno.h>
+#include <gpio.h>
+#include <of_gpio.h>
 #include <io.h>
 
+#include <mach/board.h>
+
 #include "ohci.h"
 
+#define at91_for_each_port(index)					\
+	for ((index) = 0; (index) < AT91_MAX_USBH_PORTS; (index)++)
+
+
 struct ohci_at91_priv {
 	struct device_d *dev;
 	struct clk *iclk;
@@ -59,6 +67,53 @@ static void at91_stop_clock(struct ohci_at91_priv *ohci_at91)
 	clk_disable(ohci_at91->iclk);
 }
 
+static void at91_ohci_probe_dt(struct device_d *dev)
+{
+	u32 ports;
+	int i, ret, gpio;
+	enum of_gpio_flags flags;
+	struct at91_usbh_data *pdata;
+	struct device_node *np = dev->device_node;
+
+	pdata = xzalloc(sizeof(*pdata));
+	dev->platform_data = pdata;
+
+	if (!of_property_read_u32(np, "num-ports", &ports))
+		pdata->ports = ports;
+
+	at91_for_each_port(i) {
+		/*
+		 * do not configure PIO if not in relation with
+		 * real USB port on board
+		 */
+		if (i >= pdata->ports) {
+			pdata->vbus_pin[i] = -EINVAL;
+			continue;
+		}
+
+		gpio = of_get_named_gpio_flags(np, "atmel,vbus-gpio", i,
+					       &flags);
+		pdata->vbus_pin[i] = gpio;
+		if (!gpio_is_valid(gpio))
+			continue;
+		pdata->vbus_pin_active_low[i] = flags & OF_GPIO_ACTIVE_LOW;
+
+		ret = gpio_request(gpio, "ohci_vbus");
+		if (ret) {
+			dev_err(dev, "can't request vbus gpio %d\n", gpio);
+			continue;
+		}
+		ret = gpio_direction_output(gpio,
+					    !pdata->vbus_pin_active_low[i]);
+		if (ret) {
+			dev_err(dev, "can't put vbus gpio %d as output %d\n",
+				gpio, !pdata->vbus_pin_active_low[i]);
+			gpio_free(gpio);
+			continue;
+		}
+	}
+}
+
 static int at91_ohci_probe(struct device_d *dev)
 {
 	int ret;
@@ -68,6 +123,9 @@ static int at91_ohci_probe(struct device_d *dev)
 	dev->priv = ohci_at91;
 	ohci_at91->dev = dev;
 
+	if (dev->device_node)
+		at91_ohci_probe_dt(dev);
+
 	io = dev_get_resource(dev, IORESOURCE_MEM, 0);
 	if (IS_ERR(io)) {
 		dev_err(dev, "Failed to get IORESOURCE_MEM\n");
@@ -75,13 +133,13 @@ static int at91_ohci_probe(struct device_d *dev)
 	}
 	ohci_at91->regs = IOMEM(io->start);
 
-	ohci_at91->iclk = clk_get(NULL, "ohci_clk");
+	ohci_at91->iclk = clk_get(dev, "ohci_clk");
 	if (IS_ERR(ohci_at91->iclk)) {
 		dev_err(dev, "Failed to get 'iclk'\n");
 		return PTR_ERR(ohci_at91->iclk);
 	}
 
-	ohci_at91->fclk = clk_get(NULL, "uhpck");
+	ohci_at91->fclk = clk_get(dev, "uhpck");
 	if (IS_ERR(ohci_at91->fclk)) {
 		dev_err(dev, "Failed to get 'fclk'\n");
 		return PTR_ERR(ohci_at91->fclk);
@@ -107,6 +165,7 @@ static int at91_ohci_probe(struct device_d *dev)
 
 static void at91_ohci_remove(struct device_d *dev)
 {
+	struct at91_usbh_data *pdata = dev->platform_data;
 	struct ohci_at91_priv *ohci_at91 = dev->priv;
 
 	/*
@@ -118,11 +177,32 @@ static void at91_ohci_remove(struct device_d *dev)
 	 * Stop the USB clocks.
 	 */
 	at91_stop_clock(ohci_at91);
+
+	if (pdata) {
+		bool active_low;
+		int  i, gpio;
+
+		at91_for_each_port(i) {
+			gpio = pdata->vbus_pin[i];
+			active_low = pdata->vbus_pin_active_low[i];
+
+			if (gpio_is_valid(gpio)) {
+				gpio_set_value(gpio, active_low);
+				gpio_free(gpio);
+			}
+		}
+	}
 }
 
+static const struct of_device_id at91_ohci_dt_ids[] = {
+	{ .compatible = "atmel,at91rm9200-ohci" },
+	{ /* sentinel */ }
+};
+
 static struct driver_d at91_ohci_driver = {
 	.name = "at91_ohci",
 	.probe = at91_ohci_probe,
 	.remove = at91_ohci_remove,
+	.of_compatible = DRV_OF_COMPAT(at91_ohci_dt_ids),
 };
 device_platform_driver(at91_ohci_driver);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
