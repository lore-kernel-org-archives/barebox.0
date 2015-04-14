Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x230.google.com ([2a00:1450:400c:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yi9iH-0007B0-NR
 for barebox@lists.infradead.org; Tue, 14 Apr 2015 22:53:53 +0000
Received: by wgin8 with SMTP id n8so28225281wgi.0
 for <barebox@lists.infradead.org>; Tue, 14 Apr 2015 15:53:28 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 15 Apr 2015 00:53:18 +0200
Message-Id: <1429052000-20647-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1429052000-20647-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1429052000-20647-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 4/6] led: gpio: Properly deal with deferred probing
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

GPIO LEDs can suffer from deferred probing due to failing gpio request.
Instead of registering each gpio led independently, pre-allocate an
array of struct gpio_led for all and tear it down properly if probing
of one leds fails. While at it, silence error messages on -EPROBE_DEFER.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- Drop static registered bitmap as two "gpio-leds" nodes will both
  call led_gpio_of_probe(). The second call will find the static
  variable modified and skip some leds.
- Use a pre-allocated array of struct gpio_led instead that will
  be torn down on failure.

Cc: barebox@lists.infradead.org
---
 drivers/led/led-gpio.c | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index ae3f13f45b6c..807251721fd3 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -20,6 +20,7 @@
 #include <common.h>
 #include <init.h>
 #include <led.h>
+#include <malloc.h>
 #include <gpio.h>
 #include <of_gpio.h>
 
@@ -201,19 +202,32 @@ void led_gpio_rgb_unregister(struct gpio_led *led)
 static int led_gpio_of_probe(struct device_d *dev)
 {
 	struct device_node *child;
+	struct gpio_led *leds;
+	int num_leds;
+	int ret = 0, n = 0;
+
+	num_leds = of_get_child_count(dev->device_node);
+	if (num_leds <= 0)
+		return num_leds;
+
+	leds = xzalloc(num_leds * sizeof(struct gpio_led));
 
 	for_each_child_of_node(dev->device_node, child) {
-		struct gpio_led *gled;
+		struct gpio_led *gled = &leds[n];
 		const char *default_state;
 		enum of_gpio_flags flags;
 		int gpio;
 		const char *label;
 
 		gpio = of_get_named_gpio_flags(child, "gpios", 0, &flags);
-		if (gpio < 0)
-			continue;
+		if (gpio < 0) {
+			if (gpio != -EPROBE_DEFER)
+				dev_err(dev, "failed to get gpio for %s: %d\n",
+					child->full_name, gpio);
+			ret = gpio;
+			goto err;
+		}
 
-		gled = xzalloc(sizeof(*gled));
 		if (of_property_read_string(child, "label", &label))
 			label = child->name;
 		gled->led.name = xstrdup(label);
@@ -233,9 +247,17 @@ static int led_gpio_of_probe(struct device_d *dev)
 			else if (!strcmp(default_state, "off"))
 				led_gpio_set(&gled->led, 0);
 		}
+
+		n++;
 	}
 
 	return 0;
+
+err:
+	for (n = n - 1; n >= 0; n--)
+		led_gpio_unregister(&leds[n]);
+	free(leds);
+	return ret;
 }
 
 static struct of_device_id led_gpio_of_ids[] = {
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
