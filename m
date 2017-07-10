Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUUoU-0001mb-Ei
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 09:17:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dUUo9-0006rk-Gb
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 11:16:45 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 10 Jul 2017 11:16:45 +0200
Message-Id: <20170710091645.7141-1-l.stach@pengutronix.de>
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
Subject: [PATCH] gpio: move active state function stubs to GPIOLIB
To: barebox@lists.infradead.org

Those are only implemented by GPIOLIB, not by GENERIC_GPIO.
Fixes like failure on old platforms, that aren't converted to
gpiolib, yet.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/gpio.h | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/include/gpio.h b/include/gpio.h
index 56aae2223669..f5262aac423e 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -6,11 +6,6 @@ void gpio_set_value(unsigned gpio, int value);
 int gpio_get_value(unsigned gpio);
 int gpio_direction_output(unsigned gpio, int value);
 int gpio_direction_input(unsigned gpio);
-
-void gpio_set_active(unsigned gpio, bool state);
-int gpio_is_active(unsigned gpio);
-int gpio_direction_active(unsigned gpio, bool state);
-
 #else
 static inline void gpio_set_value(unsigned gpio, int value)
 {
@@ -27,7 +22,13 @@ static inline int gpio_direction_input(unsigned gpio)
 {
 	return -EINVAL;
 }
+#endif
 
+#ifdef CONFIG_GPIOLIB
+void gpio_set_active(unsigned gpio, bool state);
+int gpio_is_active(unsigned gpio);
+int gpio_direction_active(unsigned gpio, bool state);
+#else
 static inline void gpio_set_active(unsigned gpio, int value)
 {
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
