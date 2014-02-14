Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEKrG-0004Vq-Ek
 for barebox@lists.infradead.org; Fri, 14 Feb 2014 15:39:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Feb 2014 16:38:54 +0100
Message-Id: <1392392334-20254-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392392334-20254-1-git-send-email-s.hauer@pengutronix.de>
References: <1392392334-20254-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] input: gpio-keys: Add devicetree probe support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/gpio_keys.c | 90 ++++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 77 insertions(+), 13 deletions(-)

diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index 418158f..9486b9a 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -11,6 +11,8 @@
 #include <gpio_keys.h>
 #include <poller.h>
 #include <gpio.h>
+#include <of_gpio.h>
+#include <input/keyboard.h>
 
 struct gpio_key {
 	int code;
@@ -31,6 +33,8 @@ struct gpio_keys {
 	struct kfifo *recv_fifo;
 	struct poller_struct poller;
 	struct console_device cdev;
+
+	int use_keycodes;
 };
 
 static inline struct gpio_keys *
@@ -77,33 +81,29 @@ static int gpio_keys_getc(struct console_device *cdev)
 	struct gpio_keys *gk = cdev_to_gk_pdata(cdev);
 
 	kfifo_get(gk->recv_fifo, (u_char*)&code, sizeof(int));
-	return code;
+
+	if (IS_ENABLED(CONFIG_OFDEVICE) && gk->use_keycodes)
+		return keycode_bb_keys[code];
+	else
+		return code;
 }
 
-static int __init gpio_keys_probe(struct device_d *dev)
+static int gpio_keys_probe_pdata(struct gpio_keys *gk, struct device_d *dev)
 {
-	int ret, i, gpio;
 	struct gpio_keys_platform_data *pdata;
-	struct console_device *cdev;
-	struct gpio_keys *gk;
+	int i;
 
 	pdata = dev->platform_data;
 
 	if (!pdata) {
 		/* small (so we copy it) but critical! */
-		pr_err("missing platform_data\n");
+		dev_err(dev, "missing platform_data\n");
 		return -ENODEV;
 	}
 
-	gk = xzalloc(sizeof(*gk));
-
-	gk->fifo_size = 50;
-
 	if (pdata->fifo_size)
 		gk->fifo_size = pdata->fifo_size;
 
-	gk->recv_fifo = kfifo_alloc(pdata->fifo_size);
-
 	gk->buttons = xzalloc(pdata->nbuttons * sizeof(*gk->buttons));
 	gk->nbuttons = pdata->nbuttons;
 
@@ -113,7 +113,65 @@ static int __init gpio_keys_probe(struct device_d *dev)
 		gk->buttons[i].active_low = pdata->buttons[i].active_low;
 	}
 
-	for (i = 0; i < pdata->nbuttons; i++) {
+	return 0;
+}
+
+static int gpio_keys_probe_dt(struct gpio_keys *gk, struct device_d *dev)
+{
+	struct device_node *npkey, *np = dev->device_node;
+	int i = 0, ret;
+
+	if (!IS_ENABLED(CONFIG_OFDEVICE))
+		return -ENODEV;
+
+	gk->nbuttons = of_get_child_count(np);
+	gk->buttons = xzalloc(gk->nbuttons * sizeof(*gk->buttons));
+
+	for_each_child_of_node(np, npkey) {
+		enum of_gpio_flags gpioflags;
+		uint32_t keycode;
+
+		gk->buttons[i].gpio = of_get_named_gpio_flags(npkey, "gpios", 0, &gpioflags);
+		if (gk->buttons[i].gpio < 0)
+			return gk->buttons[i].gpio;
+
+		if (gpioflags & OF_GPIO_ACTIVE_LOW)
+			gk->buttons[i].active_low = 1;
+
+		ret = of_property_read_u32(npkey, "linux,code", &keycode);
+		if (ret)
+			return ret;
+
+		gk->buttons[i].code = keycode;
+
+		i++;
+	}
+
+	gk->use_keycodes = 1;
+
+	return 0;
+}
+
+static int __init gpio_keys_probe(struct device_d *dev)
+{
+	int ret, i, gpio;
+	struct console_device *cdev;
+	struct gpio_keys *gk;
+
+	gk = xzalloc(sizeof(*gk));
+	gk->fifo_size = 50;
+
+	if (dev->device_node)
+		ret = gpio_keys_probe_dt(gk, dev);
+	else
+		ret = gpio_keys_probe_pdata(gk, dev);
+
+	if (ret)
+		return ret;
+
+	gk->recv_fifo = kfifo_alloc(gk->fifo_size);
+
+	for (i = 0; i < gk->nbuttons; i++) {
 		gpio = gk->buttons[i].gpio;
 		ret = gpio_request(gpio, "gpio_keys");
 		if (ret) {
@@ -137,8 +195,14 @@ static int __init gpio_keys_probe(struct device_d *dev)
 	return poller_register(&gk->poller);
 }
 
+static struct of_device_id key_gpio_of_ids[] = {
+	{ .compatible = "gpio-keys", },
+	{ }
+};
+
 static struct driver_d gpio_keys_driver = {
 	.name	= "gpio_keys",
 	.probe	= gpio_keys_probe,
+	.of_compatible = DRV_OF_COMPAT(key_gpio_of_ids),
 };
 device_platform_driver(gpio_keys_driver);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
