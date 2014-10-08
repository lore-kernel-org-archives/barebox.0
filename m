Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xbrrq-0006xO-VL
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 14:05:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Oct 2014 16:05:04 +0200
Message-Id: <1412777104-19569-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412777104-19569-1-git-send-email-s.hauer@pengutronix.de>
References: <1412777104-19569-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] led: trigger: Turn of flashing leds only once
To: barebox@lists.infradead.org

The current code continuously turns leds off. Preserve the current
led status so that we only turn it off once.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/led/led-triggers.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/led/led-triggers.c b/drivers/led/led-triggers.c
index adcb9e0..dee9367 100644
--- a/drivers/led/led-triggers.c
+++ b/drivers/led/led-triggers.c
@@ -49,6 +49,7 @@
 struct led_trigger_struct {
 	struct led *led;
 	uint64_t flash_start;
+	int flash;
 };
 
 static struct led_trigger_struct triggers[LED_TRIGGER_MAX];
@@ -59,9 +60,10 @@ static void trigger_func(struct poller_struct *poller)
 
 	for (i = 0; i < LED_TRIGGER_MAX; i++) {
 		if (triggers[i].led &&
-		    triggers[i].flash_start &&
+		    triggers[i].flash &&
 		    is_timeout(triggers[i].flash_start, 200 * MSECOND)) {
 			led_set(triggers[i].led, 0);
+			triggers[i].flash = 0;
 		}
 	}
 
@@ -92,6 +94,7 @@ void led_trigger(enum led_trigger trigger, enum trigger_type type)
 		if (is_timeout(triggers[trigger].flash_start, 400 * MSECOND)) {
 			led_set(triggers[trigger].led, triggers[trigger].led->max_value);
 			triggers[trigger].flash_start = get_time_ns();
+			triggers[trigger].flash = 1;
 		}
 		return;
 	}
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
