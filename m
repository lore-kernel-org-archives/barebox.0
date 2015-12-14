Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8RaW-0003nR-7n
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 11:46:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Dec 2015 12:46:21 +0100
Message-Id: <1450093581-17714-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] input: gpio-keys: implement debouncing
To: Barebox List <barebox@lists.infradead.org>

The gpio-keys driver often generates multiple events on a single buttong
press. Implement debouncing. The default debouncing time is 20ms and can
be configured with the "debounce-interval" device tree property.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/gpio_keys.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index d017594..5b03fd7 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -21,6 +21,9 @@ struct gpio_key {
 	int active_low;
 
 	int previous_state;
+
+	int debounce_interval;
+	u64 debounce_start;
 };
 
 struct gpio_keys {
@@ -60,11 +63,17 @@ static void gpio_key_poller(struct poller_struct *poller)
 		gb = &gk->buttons[i];
 		val = gpio_get_value(gb->gpio);
 
-		if (val != gb->previous_state && val != gb->active_low) {
-			kfifo_put(gk->recv_fifo, (u_char*)&gb->code, sizeof(int));
-			debug("pressed gpio(%d) as %d\n", gb->gpio, gb->code);
+		if (!is_timeout(gb->debounce_start, gb->debounce_interval * MSECOND))
+			continue;
+
+		if (val != gb->previous_state) {
+			gb->debounce_start = get_time_ns();
+			if (val != gb->active_low) {
+				kfifo_put(gk->recv_fifo, (u_char*)&gb->code, sizeof(int));
+				debug("pressed gpio(%d) as %d\n", gb->gpio, gb->code);
+			}
+			gb->previous_state = val;
 		}
-		gb->previous_state = val;
 	}
 }
 
@@ -111,6 +120,7 @@ static int gpio_keys_probe_pdata(struct gpio_keys *gk, struct device_d *dev)
 		gk->buttons[i].gpio = pdata->buttons[i].gpio;
 		gk->buttons[i].code = pdata->buttons[i].code;
 		gk->buttons[i].active_low = pdata->buttons[i].active_low;
+		gk->buttons[i].debounce_interval = 20;
 	}
 
 	return 0;
@@ -142,6 +152,11 @@ static int gpio_keys_probe_dt(struct gpio_keys *gk, struct device_d *dev)
 		if (ret)
 			return ret;
 
+		gk->buttons[i].debounce_interval = 20;
+
+		of_property_read_u32(npkey, "debounce-interval",
+				     &gk->buttons[i].debounce_interval);
+
 		gk->buttons[i].code = keycode;
 
 		i++;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
