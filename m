Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJONM-0006Te-Mk
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 14:25:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2014 15:24:53 +0100
Message-Id: <1393597495-13896-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393597495-13896-1-git-send-email-s.hauer@pengutronix.de>
References: <1393597495-13896-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] led: move led_of_parse_trigger to core
To: barebox@lists.infradead.org

So that other LED drivers can use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/led/core.c     | 35 +++++++++++++++++++++++++++++++++++
 drivers/led/led-gpio.c | 35 -----------------------------------
 include/led.h          |  2 ++
 3 files changed, 37 insertions(+), 35 deletions(-)

diff --git a/drivers/led/core.c b/drivers/led/core.c
index 8537aa1..30b016b 100644
--- a/drivers/led/core.c
+++ b/drivers/led/core.c
@@ -153,3 +153,38 @@ void led_unregister(struct led *led)
 {
 	list_del(&led->list);
 }
+
+struct led_trg {
+	const char *str;
+	enum led_trigger trg;
+};
+
+static struct led_trg triggers[] = {
+	{ .str = "heartbeat", LED_TRIGGER_HEARTBEAT, },
+	{ .str = "panic", LED_TRIGGER_PANIC, },
+	{ .str = "net", LED_TRIGGER_NET_TXRX, },
+	{ .str = "default-on", LED_TRIGGER_DEFAULT_ON, },
+};
+
+void led_of_parse_trigger(struct led *led, struct device_node *np)
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
+			/* disable LED before installing trigger */
+			led_set(led, 0);
+			led_set_trigger(trg->trg, led);
+			return;
+		}
+	}
+}
diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index 7a5ef47..7bb3b49 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -198,41 +198,6 @@ void led_gpio_rgb_unregister(struct gpio_led *led)
 #endif /* CONFIG_LED_GPIO_RGB */
 
 #ifdef CONFIG_LED_GPIO_OF
-
-struct led_trg {
-	const char *str;
-	enum led_trigger trg;
-};
-
-static struct led_trg triggers[] = {
-	{ .str = "heartbeat", LED_TRIGGER_HEARTBEAT, },
-	{ .str = "panic", LED_TRIGGER_PANIC, },
-	{ .str = "net", LED_TRIGGER_NET_TXRX, },
-};
-
-static void led_of_parse_trigger(struct led *led, struct device_node *np)
-{
-	const char *trigger;
-	int i;
-
-	trigger = of_get_property(np, "linux,default-trigger", NULL);
-	if (!trigger)
-		trigger = of_get_property(np, "barebox,default-trigger", NULL);
-
-	if (!trigger)
-		return;
-
-	for (i = 0; i < ARRAY_SIZE(triggers); i++) {
-		struct led_trg *trg = &triggers[i];
-		if (!strcmp(trg->str, trigger)) {
-			/* disable LED before installing trigger */
-			led_set(led, 0);
-			led_set_trigger(trg->trg, led);
-			return;
-		}
-	}
-}
-
 static int led_gpio_of_probe(struct device_d *dev)
 {
 	struct device_node *child;
diff --git a/include/led.h b/include/led.h
index dd551fe..0217f4b 100644
--- a/include/led.h
+++ b/include/led.h
@@ -58,6 +58,8 @@ static inline void led_trigger(enum led_trigger trigger, enum trigger_type type)
 
 int led_get_trigger(enum led_trigger trigger);
 
+void led_of_parse_trigger(struct led *led, struct device_node *np);
+
 /* gpio LED support */
 struct gpio_led {
 	int gpio;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
