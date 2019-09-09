Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Ep0-0004iT-Qn
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 08:14:52 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Sep 2019 10:14:44 +0200
Message-Id: <20190909081444.31077-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2] gpio: iopoll: implement gpio_poll_timeout_us
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Sometimes we need to wait for state change on a GPIO, provide a helper
for future code to do this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
	Add comment describing use of macro
---
 include/gpio.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/include/gpio.h b/include/gpio.h
index 38d6ba2df913..867f3d1dbdc6 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -3,6 +3,7 @@
 
 #include <linux/types.h>
 #include <linux/list.h>
+#include <linux/iopoll.h>
 
 #ifdef CONFIG_GENERIC_GPIO
 void gpio_set_value(unsigned gpio, int value);
@@ -31,6 +32,21 @@ static inline int gpio_direction_input(unsigned gpio)
 void gpio_set_active(unsigned gpio, bool state);
 int gpio_is_active(unsigned gpio);
 int gpio_direction_active(unsigned gpio, bool state);
+
+/**
+ * gpio_poll_timeout_us - Poll till GPIO reaches requested active state
+ * @gpio: gpio to poll
+ * @active: wait till GPIO is active if true, wait till it's inactive if false
+ * @timeout_us: timeout in microseconds
+ *
+ * During the wait barebox pollers are called, if any.
+ */
+#define gpio_poll_timeout_us(gpio, active, timeout_us)			\
+	({								\
+		int __state;						\
+		readx_poll_timeout(gpio_is_active, gpio, __state,	\
+				   __state == (active), timeout_us);	\
+	})
 #else
 static inline void gpio_set_active(unsigned gpio, int value)
 {
@@ -43,6 +59,8 @@ static inline int gpio_direction_active(unsigned gpio, int value)
 {
 	return -EINVAL;
 }
+
+#define gpio_poll_timeout_us(gpio, val, timeout_us) (-ENOSYS)
 #endif
 
 #define ARCH_NR_GPIOS 256
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
