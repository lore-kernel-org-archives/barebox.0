Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x231.google.com ([2a00:1450:4013:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vf8Wp-0000gP-Vn
 for barebox@lists.infradead.org; Sat, 09 Nov 2013 13:24:45 +0000
Received: by mail-ea0-f177.google.com with SMTP id f15so1663362eak.8
 for <barebox@lists.infradead.org>; Sat, 09 Nov 2013 05:24:19 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat,  9 Nov 2013 14:24:06 +0100
Message-Id: <1384003450-21001-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1384003450-21001-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1384003450-21001-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 1/4] led: trigger: disable LEDs with trigger before installing
 it
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This disables LEDs that have a trigger function assigned right before
the trigger is installed. As the trigger was parsed before the LED has
been registered, also swap LED registration and trigger parsing.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/led/led-gpio.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index 69db70f..7a5ef47 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -225,6 +225,8 @@ static void led_of_parse_trigger(struct led *led, struct device_node *np)
 	for (i = 0; i < ARRAY_SIZE(triggers); i++) {
 		struct led_trg *trg = &triggers[i];
 		if (!strcmp(trg->str, trigger)) {
+			/* disable LED before installing trigger */
+			led_set(led, 0);
 			led_set_trigger(trg->trg, led);
 			return;
 		}
@@ -252,8 +254,8 @@ static int led_gpio_of_probe(struct device_d *dev)
 		dev_dbg(dev, "register led %s on gpio%d, active_low = %d\n",
 			gled->led.name, gled->gpio, gled->active_low);
 
-		led_of_parse_trigger(&gled->led, child);
 		led_gpio_register(gled);
+		led_of_parse_trigger(&gled->led, child);
 	}
 
 	return 0;
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
