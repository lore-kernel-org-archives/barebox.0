Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwtFD-0002Jf-K2
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 12:11:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 14:11:06 +0200
Message-Id: <1373458266-10089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] led: gpio: Add trigger support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/devicetree/bindings/leds/common.txt |  8 ++++++
 drivers/led/led-gpio.c                            | 33 +++++++++++++++++++++++
 2 files changed, 41 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/common.txt

diff --git a/Documentation/devicetree/bindings/leds/common.txt b/Documentation/devicetree/bindings/leds/common.txt
new file mode 100644
index 0000000..db264b3
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/common.txt
@@ -0,0 +1,8 @@
+Common leds properties.
+
+- linux,default-trigger barebox,default-trigger:  This parameter, if present, is a
+    string defining the trigger assigned to the LED.  Current triggers are:
+     "heartbeat" - LED flashes at a constant rate
+     "panic" - LED turns on when barebox panics
+     "net" - LED indicates network activity
+
diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index 54f9264..69db70f 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -199,6 +199,38 @@ void led_gpio_rgb_unregister(struct gpio_led *led)
 
 #ifdef CONFIG_LED_GPIO_OF
 
+struct led_trg {
+	const char *str;
+	enum led_trigger trg;
+};
+
+static struct led_trg triggers[] = {
+	{ .str = "heartbeat", LED_TRIGGER_HEARTBEAT, },
+	{ .str = "panic", LED_TRIGGER_PANIC, },
+	{ .str = "net", LED_TRIGGER_NET_TXRX, },
+};
+
+static void led_of_parse_trigger(struct led *led, struct device_node *np)
+{
+	const char *trigger;
+	int i;
+
+	trigger = of_get_property(np, "linux,default-trigger", NULL);
+	if (!trigger)
+		trigger = of_get_property(np, "barebox,default-trigger", NULL);
+
+	if (!trigger)
+		return;
+
+	for (i = 0; i < ARRAY_SIZE(triggers); i++) {
+		struct led_trg *trg = &triggers[i];
+		if (!strcmp(trg->str, trigger)) {
+			led_set_trigger(trg->trg, led);
+			return;
+		}
+	}
+}
+
 static int led_gpio_of_probe(struct device_d *dev)
 {
 	struct device_node *child;
@@ -220,6 +252,7 @@ static int led_gpio_of_probe(struct device_d *dev)
 		dev_dbg(dev, "register led %s on gpio%d, active_low = %d\n",
 			gled->led.name, gled->gpio, gled->active_low);
 
+		led_of_parse_trigger(&gled->led, child);
 		led_gpio_register(gled);
 	}
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
