Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmhbs-0006UB-Gi
 for barebox@lists.infradead.org; Sat, 11 Mar 2017 14:03:10 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sat, 11 Mar 2017 15:02:36 +0100
Message-Id: <20170311140237.6958-3-o.rempel@pengutronix.de>
In-Reply-To: <20170311140237.6958-1-o.rempel@pengutronix.de>
References: <20170311140237.6958-1-o.rempel@pengutronix.de>
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
Subject: [PATCH 3/4] led: trigger: Use led triggers
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Since the LED framework now supports blinking/flashing, use this
functionality in the LED triggers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/led/led-triggers.c | 40 +++++-----------------------------------
 1 file changed, 5 insertions(+), 35 deletions(-)

diff --git a/drivers/led/led-triggers.c b/drivers/led/led-triggers.c
index dee9367..6c05cc5 100644
--- a/drivers/led/led-triggers.c
+++ b/drivers/led/led-triggers.c
@@ -48,34 +48,12 @@
 
 struct led_trigger_struct {
 	struct led *led;
-	uint64_t flash_start;
-	int flash;
+	struct list_head list;
+	enum led_trigger trigger;
 };
 
 static struct led_trigger_struct triggers[LED_TRIGGER_MAX];
 
-static void trigger_func(struct poller_struct *poller)
-{
-	int i;
-
-	for (i = 0; i < LED_TRIGGER_MAX; i++) {
-		if (triggers[i].led &&
-		    triggers[i].flash &&
-		    is_timeout(triggers[i].flash_start, 200 * MSECOND)) {
-			led_set(triggers[i].led, 0);
-			triggers[i].flash = 0;
-		}
-	}
-
-	if (triggers[LED_TRIGGER_HEARTBEAT].led &&
-			is_timeout(triggers[LED_TRIGGER_HEARTBEAT].flash_start, SECOND))
-		led_trigger(LED_TRIGGER_HEARTBEAT, TRIGGER_FLASH);
-}
-
-static struct poller_struct trigger_poller = {
-	.func = trigger_func,
-};
-
 /**
  * led_trigger - triggers a trigger
  * @param trigger	The trigger to enable/disable
@@ -91,11 +69,7 @@ void led_trigger(enum led_trigger trigger, enum trigger_type type)
 		return;
 
 	if (type == TRIGGER_FLASH) {
-		if (is_timeout(triggers[trigger].flash_start, 400 * MSECOND)) {
-			led_set(triggers[trigger].led, triggers[trigger].led->max_value);
-			triggers[trigger].flash_start = get_time_ns();
-			triggers[trigger].flash = 1;
-		}
+		led_flash(triggers[trigger].led, 200);
 		return;
 	}
 
@@ -129,6 +103,8 @@ int led_set_trigger(enum led_trigger trigger, struct led *led)
 
 	if (led && trigger == LED_TRIGGER_DEFAULT_ON)
 		led_set(triggers[trigger].led, triggers[trigger].led->max_value);
+	if (led && trigger == LED_TRIGGER_HEARTBEAT)
+		led_blink(led, 200, 1000);
 
 	return 0;
 }
@@ -147,9 +123,3 @@ int led_get_trigger(enum led_trigger trigger)
 		return -ENODEV;
 	return led_get_number(triggers[trigger].led);
 }
-
-static int trigger_init(void)
-{
-	return poller_register(&trigger_poller);
-}
-late_initcall(trigger_init);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
