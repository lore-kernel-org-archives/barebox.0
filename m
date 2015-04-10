Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22d.google.com ([2a00:1450:400c:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgNLo-0002e7-80
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 01:03:17 +0000
Received: by wgsk9 with SMTP id k9so3341026wgs.3
 for <barebox@lists.infradead.org>; Thu, 09 Apr 2015 18:02:54 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 10 Apr 2015 03:02:46 +0200
Message-Id: <1428627766-17178-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1428627766-17178-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1428627766-17178-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 4/4] led: gpio: Properly deal with deferred probing
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

GPIO LEDs can suffer from deferred probing due to failing gpio request.
If of_get_named_gpio_flags returns -EPROBE_DEFER, skip current LED and
request deferred probing later. Since not all LEDs have to fail, build
a mask of already registered LEDs to be skipped later on deferred probe.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/led/led-gpio.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index ae3f13f45b6c..91e5d5b76085 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -201,6 +201,8 @@ void led_gpio_rgb_unregister(struct gpio_led *led)
 static int led_gpio_of_probe(struct device_d *dev)
 {
 	struct device_node *child;
+	static u32 registered;
+	int ret = 0, n = 0;
 
 	for_each_child_of_node(dev->device_node, child) {
 		struct gpio_led *gled;
@@ -209,7 +211,15 @@ static int led_gpio_of_probe(struct device_d *dev)
 		int gpio;
 		const char *label;
 
+		/* On deferred probing, skip already registered LEDs */
+		if (registered & BIT(n)) {
+			n++;
+			continue;
+		}
+
 		gpio = of_get_named_gpio_flags(child, "gpios", 0, &flags);
+		if (gpio == -EPROBE_DEFER)
+			ret = -EPROBE_DEFER;
 		if (gpio < 0)
 			continue;
 
@@ -233,9 +243,12 @@ static int led_gpio_of_probe(struct device_d *dev)
 			else if (!strcmp(default_state, "off"))
 				led_gpio_set(&gled->led, 0);
 		}
+
+		registered |= BIT(n);
+		n++;
 	}
 
-	return 0;
+	return ret;
 }
 
 static struct of_device_id led_gpio_of_ids[] = {
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
