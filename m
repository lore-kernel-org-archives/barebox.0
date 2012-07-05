Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmrrY-0006cy-Qm
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:37:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 21:36:47 +0200
Message-Id: <1341517020-5581-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
References: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/30] gpio: add static inlines for gpio_request/gpio_free
To: barebox@lists.infradead.org

Some drivers use gpio_request/gpio_free. Currently no architecture
has code behind these functions. Provide static inline functions
for these and remvoe the at91 specific inline functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/gpio.h |    9 ---------
 include/gpio.h                         |   13 +++++++++++++
 2 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
index 0f93f8d..3533bf9 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -248,15 +248,6 @@ struct at91_gpio_bank {
 
 extern int at91_gpio_init(struct at91_gpio_bank *data, int nr_banks);
 
-static inline int gpio_request(unsigned gpio, const char *label)
-{
-	return 0;
-}
-
-static inline void gpio_free(unsigned gpio)
-{
-}
-
 extern int gpio_direction_input(unsigned gpio);
 extern int gpio_direction_output(unsigned gpio, int value);
 #define gpio_get_value at91_get_gpio_value
diff --git a/include/gpio.h b/include/gpio.h
index 9fc03a4..b7d8402 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -1 +1,14 @@
+#ifndef __GPIO_H
+#define __GPIO_H
+
 #include <asm/gpio.h>
+
+static inline int gpio_request(unsigned gpio, const char *label)
+{
+	return 0;
+}
+
+static inline void gpio_free(unsigned gpio)
+{
+}
+#endif /* __GPIO_H */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
