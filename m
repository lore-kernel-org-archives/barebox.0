Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmyjJ-0000F3-8Y
 for barebox@lists.infradead.org; Sun, 12 Mar 2017 08:19:55 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sun, 12 Mar 2017 09:19:21 +0100
Message-Id: <20170312081924.10179-2-o.rempel@pengutronix.de>
In-Reply-To: <20170312081924.10179-1-o.rempel@pengutronix.de>
References: <20170311140706.8851-1-o.rempel@pengutronix.de>
 <20170312081924.10179-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 1/4] led: add blinking/flashing and led_blink_pattern
 interface
To: barebox@lists.infradead.org
Cc: Markus Pargmann <mpa@pengutronix.de>, Oleksij Rempel <o.rempel@pengutronix.de>

From: Sascha Hauer <s.hauer@pengutronix.de>

So far blinking/flashing LEDs is only supported on led-trigger level.
Even without triggers it useful to be able to blink/flash LEDs, so
add this functionality to the LED core.

A led_blink_pattern consists of a number of on and off-periods which
are described in an array. Using such an array you can encode nearly
every blink pattern you need.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/led/core.c | 102 ++++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/led.h      |  11 ++++++
 2 files changed, 112 insertions(+), 1 deletion(-)

diff --git a/drivers/led/core.c b/drivers/led/core.c
index 30b016bb3..ab293b562 100644
--- a/drivers/led/core.c
+++ b/drivers/led/core.c
@@ -23,6 +23,7 @@
 #include <linux/list.h>
 #include <errno.h>
 #include <led.h>
+#include <init.h>
 #include <poller.h>
 #include <clock.h>
 #include <linux/ctype.h>
@@ -101,7 +102,7 @@ struct led *led_by_name_or_number(const char *str)
  * @param led	the led
  * @param value	the value of the LED (0 is disabled)
  */
-int led_set(struct led *led, unsigned int value)
+static int __led_set(struct led *led, unsigned int value)
 {
 	if (value > led->max_value)
 		value = led->max_value;
@@ -114,6 +115,105 @@ int led_set(struct led *led, unsigned int value)
 	return 0;
 }
 
+int led_set(struct led *led, unsigned int value)
+{
+	led->blink = 0;
+	led->flash = 0;
+	return __led_set(led, value);
+}
+
+static void led_blink_func(struct poller_struct *poller)
+{
+	struct led *led;
+
+	list_for_each_entry(led, &leds, list) {
+		bool on;
+
+		if (!led->blink && !led->flash)
+			continue;
+
+		if (led->blink_next_event > get_time_ns()) {
+			continue;
+		}
+
+		on = !(led->blink_next_state % 2);
+
+		led->blink_next_event = get_time_ns() +
+			(led->blink_states[led->blink_next_state] * MSECOND);
+		led->blink_next_state = (led->blink_next_state + 1) %
+					led->blink_nr_states;
+
+		if (led->flash && !on)
+			led->flash = 0;
+
+		__led_set(led, on);
+	}
+}
+
+/**
+ * led_blink_pattern - Blink a led with flexible timings.
+ * @led LED used
+ * @pattern Array of millisecond intervals describing the on and off periods of
+ * the pattern. At the end of the array/pattern it is repeated. The array
+ * starts with an on-period. In general every array item with even index
+ * describes an on-period, every item with odd index an off-period.
+ * @pattern_len Length of the pattern array.
+ *
+ * Returns 0 on success.
+ *
+ * Example:
+ * 	pattern = {500, 1000};
+ * 	This will enable the LED for 500ms and disable it for 1000ms after
+ * 	that. This is repeated forever.
+ */
+int led_blink_pattern(struct led *led, const unsigned int *pattern,
+		      unsigned int pattern_len)
+{
+	if (led->blink_states)
+		free(led->blink_states);
+	led->blink_states = xmemdup(pattern,
+				    pattern_len * sizeof(*led->blink_states));
+	led->blink_nr_states = pattern_len;
+	led->blink_next_state = 0;
+	led->blink_next_event = get_time_ns();
+	led->blink = 1;
+	led->flash = 0;
+
+	return 0;
+}
+
+int led_blink(struct led *led, unsigned int on_ms, unsigned int off_ms)
+{
+	unsigned int pattern[] = {on_ms, off_ms};
+
+	return led_blink_pattern(led, pattern, 2);
+}
+
+int led_flash(struct led *led, unsigned int duration_ms)
+{
+	unsigned int pattern[] = {duration_ms, 0};
+	int ret;
+
+	ret = led_blink_pattern(led, pattern, 2);
+	if (ret)
+		return ret;
+
+	led->flash = 1;
+	led->blink = 0;
+
+	return 0;
+}
+
+static struct poller_struct led_poller = {
+	.func = led_blink_func,
+};
+
+static int led_blink_init(void)
+{
+	return poller_register(&led_poller);
+}
+late_initcall(led_blink_init);
+
 /**
  * led_set_num - set the value of a LED
  * @param num	the number of the LED
diff --git a/include/led.h b/include/led.h
index 000267cdc..fb5c48b9e 100644
--- a/include/led.h
+++ b/include/led.h
@@ -12,6 +12,13 @@ struct led {
 	char *name;
 	int num;
 	struct list_head list;
+
+	int blink;
+	int flash;
+	unsigned int *blink_states;
+	int blink_nr_states;
+	int blink_next_state;
+	uint64_t blink_next_event;
 };
 
 struct led *led_by_number(int no);
@@ -25,6 +32,10 @@ static inline int led_get_number(struct led *led)
 
 int led_set_num(int num, unsigned int value);
 int led_set(struct led *led, unsigned int value);
+int led_blink(struct led *led, unsigned int on_ms, unsigned int off_ms);
+int led_blink_pattern(struct led *led, const unsigned int *pattern,
+		      unsigned int pattern_len);
+int led_flash(struct led *led, unsigned int duration_ms);
 int led_register(struct led *led);
 void led_unregister(struct led *led);
 void led_unregister(struct led *led);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
