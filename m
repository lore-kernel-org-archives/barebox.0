Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x235.google.com ([2a00:1450:4008:c01::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu5MN-0003Rm-Tx
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:31:30 +0000
Received: by mail-bk0-f53.google.com with SMTP id e11so2479339bkh.40
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:31:01 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue,  2 Jul 2013 20:30:47 +0200
Message-Id: <1372789849-12194-9-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 08/10] LED: add support for device tree parsing of gpio-leds
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds a driver option to probe GPIO LEDs from device tree compatible
with "gpio-leds" device tree nodes.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 drivers/led/Kconfig    |    4 ++++
 drivers/led/led-gpio.c |   45 +++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 49 insertions(+), 0 deletions(-)

diff --git a/drivers/led/Kconfig b/drivers/led/Kconfig
index 8ca6ab8..3ead82e 100644
--- a/drivers/led/Kconfig
+++ b/drivers/led/Kconfig
@@ -7,6 +7,10 @@ config LED_GPIO
 	bool "gpio LED support"
 	depends on GENERIC_GPIO
 
+config LED_GPIO_OF
+	bool "support parsing gpio LEDs from device tree"
+	depends on LED_GPIO && OFTREE
+
 config LED_GPIO_RGB
 	bool "gpio rgb LED support"
 	depends on LED_GPIO
diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index 08dc9ba..54f9264 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -18,8 +18,10 @@
  *
  */
 #include <common.h>
+#include <init.h>
 #include <led.h>
 #include <gpio.h>
+#include <of_gpio.h>
 
 static void led_gpio_set(struct led *led, unsigned int value)
 {
@@ -194,3 +196,46 @@ void led_gpio_rgb_unregister(struct gpio_led *led)
 	led_unregister(&led->led);
 }
 #endif /* CONFIG_LED_GPIO_RGB */
+
+#ifdef CONFIG_LED_GPIO_OF
+
+static int led_gpio_of_probe(struct device_d *dev)
+{
+	struct device_node *child;
+
+	for_each_child_of_node(dev->device_node, child) {
+		struct gpio_led *gled;
+		enum of_gpio_flags flags;
+		int gpio;
+
+		gpio = of_get_named_gpio_flags(child, "gpios", 0, &flags);
+		if (gpio < 0)
+			continue;
+
+		gled = xzalloc(sizeof(*gled));
+		gled->led.name = xstrdup(child->name);
+		gled->gpio = gpio;
+		gled->active_low = (flags & OF_GPIO_ACTIVE_LOW) ? 1 : 0;
+
+		dev_dbg(dev, "register led %s on gpio%d, active_low = %d\n",
+			gled->led.name, gled->gpio, gled->active_low);
+
+		led_gpio_register(gled);
+	}
+
+	return 0;
+}
+
+static struct of_device_id led_gpio_of_ids[] = {
+	{ .compatible = "gpio-leds", },
+	{ }
+};
+
+static struct driver_d led_gpio_of_driver = {
+	.name  = "gpio-leds",
+	.probe = led_gpio_of_probe,
+	.of_compatible = DRV_OF_COMPAT(led_gpio_of_ids),
+};
+device_platform_driver(led_gpio_of_driver);
+
+#endif /* CONFIG LED_GPIO_OF */
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
