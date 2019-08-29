Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Jlp-00016j-UY
 for barebox@lists.infradead.org; Thu, 29 Aug 2019 12:43:23 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 29 Aug 2019 14:43:18 +0200
Message-Id: <20190829124318.30339-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] gpio: iopoll: implement gpio_poll_timeout_us
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Sometimes we need to wait for state change on a GPIO,
provide a helper to do this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/gpio.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/gpio.h b/include/gpio.h
index 1926edeca757..89cb306a195c 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -3,6 +3,7 @@
 
 #include <linux/types.h>
 #include <linux/list.h>
+#include <linux/iopoll.h>
 
 #ifdef CONFIG_GENERIC_GPIO
 void gpio_set_value(unsigned gpio, int value);
@@ -31,6 +32,13 @@ static inline int gpio_direction_input(unsigned gpio)
 void gpio_set_active(unsigned gpio, bool state);
 int gpio_is_active(unsigned gpio);
 int gpio_direction_active(unsigned gpio, bool state);
+
+#define gpio_poll_timeout_us(gpio, active, timeout_us)			\
+	({								\
+		int __state;						\
+		readx_poll_timeout(gpio_is_active, gpio, __state,	\
+				   __state == (active), timeout_us);	\
+	})
 #else
 static inline void gpio_set_active(unsigned gpio, int value)
 {
@@ -43,6 +51,8 @@ static inline int gpio_direction_active(unsigned gpio, int value)
 {
 	return -EINVAL;
 }
+
+#define gpio_poll_timeout_us(gpio, val, timeout_us) (-ENOSYS)
 #endif
 
 #if defined(CONFIG_ARCH_NR_GPIO) && CONFIG_ARCH_NR_GPIO > 0
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
