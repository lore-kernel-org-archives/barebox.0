Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dYHhs-0003UB-DO
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 20:06:00 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Thu, 20 Jul 2017 22:05:21 +0200
Message-Id: <20170720200526.19523-1-sam@ravnborg.org>
In-Reply-To: <20170720200103.GA16205@ravnborg.org>
References: <20170720200103.GA16205@ravnborg.org>
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
Subject: [PATCH 1/6] at91_udc: add DT support
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Based on the linux kernel version of the same driver.
Needs to adjust clock names as the clock names used in the device tree
does not match the clocknames used in platform_data.
The clocknames in the device tree are not unique, so it was
not an option to rename the clocks.

It boots and the driver is discovered - no further testing done.

$ devinfo fff78000.gadget
Resources:
  num: 0
  name: /ahb/apb/gadget@fff78000
  start: 0xfff78000
  size: 0x00004000
Driver: at91_udc
Bus: platform
Parameters:
  vbus: 1 (type: bool)
Device node: /ahb/apb/gadget@fff78000
gadget@fff78000 {
        compatible = "atmel,at91sam9263-udc";
        reg = <0xfff78000 0x4000>;
        interrupts = <0x18 0x4 0x2>;
        clocks = <0x26 0x27>;
        clock-names = "pclk", "hclk";
        status = "okay";
        atmel,vbus-gpio = <0x28 0x19 0x0>;
};

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/usb/gadget/at91_udc.c | 56 ++++++++++++++++++++++++++++++++++---------
 1 file changed, 45 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 5f6bebc73..18427114d 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -21,7 +21,7 @@
 #include <clock.h>
 #include <usb/ch9.h>
 #include <usb/gadget.h>
-#include <gpio.h>
+#include <of_gpio.h>
 
 #include <linux/list.h>
 #include <linux/clk.h>
@@ -1375,6 +1375,22 @@ static void at91_udc_gadget_poll(struct usb_gadget *gadget)
 		at91_udc_irq(udc);
 }
 
+static void __init at91udc_of_init(struct at91_udc *udc, struct device_node *np)
+{
+	enum of_gpio_flags flags;
+	struct at91_udc_data *board;
+
+	board = &udc->board;
+
+	board->vbus_pin = of_get_named_gpio_flags(np, "atmel,vbus-gpio", 0,
+						&flags);
+	board->vbus_active_low = (flags & OF_GPIO_ACTIVE_LOW) ? 1 : 0;
+
+	board->pullup_pin = of_get_named_gpio_flags(np, "atmel,pullup-gpio", 0,
+						  &flags);
+	board->pullup_active_low = (flags & OF_GPIO_ACTIVE_LOW) ? 1 : 0;
+}
+
 /*-------------------------------------------------------------------------*/
 
 static int __init at91udc_probe(struct device_d *dev)
@@ -1382,18 +1398,29 @@ static int __init at91udc_probe(struct device_d *dev)
 	struct resource *iores;
 	struct at91_udc	*udc = &controller;
 	int		retval;
-
-	if (!dev->platform_data) {
-		/* small (so we copy it) but critical! */
-		DBG(udc, "missing platform_data\n");
-		return -ENODEV;
-	}
+	const char *iclk_name;
+	const char *fclk_name;
 
 	/* init software state */
 	udc->dev = dev;
-	udc->board = *(struct at91_udc_data *) dev->platform_data;
 	udc->enabled = 0;
 
+	if (dev->platform_data) {
+		/* small (so we copy it) */
+		udc->board = *(struct at91_udc_data *)dev->platform_data;
+		iclk_name = "udc_clk";
+		fclk_name = "udpck";
+	} else {
+		if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->device_node) {
+			dev_err(dev, "no DT and no platform_data\n");
+			return -ENODEV;
+		}
+
+		at91udc_of_init(udc, dev->device_node);
+		iclk_name = "pclk";
+		fclk_name = "hclk";
+	}
+
 	/* rm9200 needs manual D+ pullup; off by default */
 	if (cpu_is_at91rm9200()) {
 		if (udc->board.pullup_pin <= 0) {
@@ -1435,8 +1462,8 @@ static int __init at91udc_probe(struct device_d *dev)
 	udc_reinit(udc);
 
 	/* get interface and function clocks */
-	udc->iclk = clk_get(dev, "udc_clk");
-	udc->fclk = clk_get(dev, "udpck");
+	udc->iclk = clk_get(dev, iclk_name);
+	udc->fclk = clk_get(dev, fclk_name);
 	if (IS_ERR(udc->iclk) || IS_ERR(udc->fclk)) {
 		DBG(udc, "clocks missing\n");
 		retval = -ENODEV;
@@ -1491,10 +1518,17 @@ fail0:
 	DBG(udc, "%s probe failed, %d\n", driver_name, retval);
 	return retval;
 }
-
+static const struct of_device_id at91_udc_dt_ids[] = {
+	{ .compatible = "atmel,at91rm9200-udc" },
+	{ .compatible = "atmel,at91sam9260-udc" },
+	{ .compatible = "atmel,at91sam9261-udc" },
+	{ .compatible = "atmel,at91sam9263-udc" },
+	{ /* sentinel */ }
+};
 
 static struct driver_d at91_udc_driver = {
 	.name	= driver_name,
 	.probe	= at91udc_probe,
+	.of_compatible = DRV_OF_COMPAT(at91_udc_dt_ids),
 };
 device_platform_driver(at91_udc_driver);
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
