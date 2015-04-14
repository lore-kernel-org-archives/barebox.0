Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x233.google.com ([2a00:1450:400c:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yi9iK-0007BJ-Og
 for barebox@lists.infradead.org; Tue, 14 Apr 2015 22:53:54 +0000
Received: by wgso17 with SMTP id o17so28395626wgs.1
 for <barebox@lists.infradead.org>; Tue, 14 Apr 2015 15:53:29 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 15 Apr 2015 00:53:19 +0200
Message-Id: <1429052000-20647-6-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 5/6] led: gpio: Free GPIOs on unregister()
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Free requested GPIOs on unregistration of mono-, bi-, and tri-color
GPIO leds.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- new patch

Cc: barebox@lists.infradead.org
---
 drivers/led/led-gpio.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index 807251721fd3..74be2304e868 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -64,6 +64,7 @@ int led_gpio_register(struct gpio_led *led)
 void led_gpio_unregister(struct gpio_led *led)
 {
 	led_unregister(&led->led);
+	gpio_free(led->gpio);
 }
 
 #ifdef CONFIG_LED_GPIO_BICOLOR
@@ -131,6 +132,8 @@ err_gpio_c0:
 void led_gpio_bicolor_unregister(struct gpio_bicolor_led *led)
 {
 	led_unregister(&led->led);
+	gpio_free(led->gpio_c1);
+	gpio_free(led->gpio_c0);
 }
 #endif
 
@@ -195,6 +198,9 @@ err_gpio_r:
 void led_gpio_rgb_unregister(struct gpio_led *led)
 {
 	led_unregister(&led->led);
+	gpio_free(led->gpio_b);
+	gpio_free(led->gpio_g);
+	gpio_free(led->gpio_r);
 }
 #endif /* CONFIG_LED_GPIO_RGB */
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
