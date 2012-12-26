Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tnu3K-0003Tz-QX
 for barebox@lists.infradead.org; Wed, 26 Dec 2012 16:42:00 +0000
Received: from mail177.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 30785104E6AA
 for <barebox@lists.infradead.org>; Wed, 26 Dec 2012 17:44:28 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 26 Dec 2012 17:33:56 +0100
Message-Id: <1356539636-12782-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1356539636-12782-1-git-send-email-plagnioj@jcrosoft.com>
References: <1356539636-12782-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] led-gpio: use gpio_request and gpio_free
To: barebox@lists.infradead.org

So we can ensure a gpio is not used for something else

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/led/led-gpio.c |   67 +++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 63 insertions(+), 4 deletions(-)

diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index c78ef9e..08dc9ba 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -19,7 +19,7 @@
  */
 #include <common.h>
 #include <led.h>
-#include <asm/gpio.h>
+#include <gpio.h>
 
 static void led_gpio_set(struct led *led, unsigned int value)
 {
@@ -37,10 +37,21 @@ static void led_gpio_set(struct led *led, unsigned int value)
  */
 int led_gpio_register(struct gpio_led *led)
 {
+	int ret;
+	char *name = led->led.name;
+
+	ret = gpio_request(led->gpio, name ? name : "led");
+	if (ret)
+		return ret;
+
 	led->led.set = led_gpio_set;
 	led->led.max_value = 1;
 
-	return led_register(&led->led);
+	ret = led_register(&led->led);
+	if (ret)
+		gpio_free(led->gpio);
+
+	return ret;
 }
 
 /**
@@ -83,10 +94,31 @@ static void led_gpio_bicolor_set(struct led *led, unsigned int value)
  */
 int led_gpio_bicolor_register(struct gpio_bicolor_led *led)
 {
+	int ret;
+	char *name = led->led.name;
+
+	ret = gpio_request(led->gpio_c0, name ? name : "led_c0");
+	if (ret)
+		return ret;
+
+	ret = gpio_request(led->gpio_c1, name ? name : "led_c1");
+	if (ret)
+		goto err_gpio_c0;
+
 	led->led.set = led_gpio_bicolor_set;
 	led->led.max_value = 2;
 
-	return led_register(&led->led);
+	ret = led_register(&led->led);
+	if (ret)
+		goto err_gpio_c1;
+
+	return 0;
+
+err_gpio_c1:
+	gpio_free(led->gpio_c1);
+err_gpio_c0:
+	gpio_free(led->gpio_c0);
+	return ret;
 }
 
 /**
@@ -120,10 +152,37 @@ static void led_gpio_rgb_set(struct led *led, unsigned int value)
  */
 int led_gpio_rgb_register(struct gpio_rgb_led *led)
 {
+	int ret;
+	char *name = led->led.name;
+
+	ret = gpio_request(led->gpio_r, name ? name : "led_r");
+	if (ret)
+		return ret;
+
+	ret = gpio_request(led->gpio_g, name ? name : "led_g");
+	if (ret)
+		goto err_gpio_r;
+
+	ret = gpio_request(led->gpio_b, name ? name : "led_b");
+	if (ret)
+		goto err_gpio_g;
+
 	led->led.set = led_gpio_rgb_set;
 	led->led.max_value = 7;
 
-	return led_register(&led->led);
+	ret = led_register(&led->led);
+	if (ret)
+		goto err_gpio_b;
+
+	return 0;
+
+err_gpio_b:
+	gpio_free(led->gpio_b);
+err_gpio_g:
+	gpio_free(led->gpio_g);
+err_gpio_r:
+	gpio_free(led->gpio_r);
+	return ret;
 }
 
 /**
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
