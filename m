Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XuMY8-0000VJ-2w
 for barebox@lists.infradead.org; Fri, 28 Nov 2014 14:29:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Nov 2014 15:29:03 +0100
Message-Id: <1417184946-16128-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
References: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/14] gpio: move gpio_is_valid to include/gpio.h
To: barebox@lists.infradead.org

No architectue implements its own gpio_is_valid() function, so move
the only existing implementation to include/gpio.h where it's available
for all users.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/asm-generic/gpio.h | 11 -----------
 include/gpio.h             | 11 +++++++++++
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/include/asm-generic/gpio.h b/include/asm-generic/gpio.h
index 95fdd05..7674970 100644
--- a/include/asm-generic/gpio.h
+++ b/include/asm-generic/gpio.h
@@ -1,17 +1,6 @@
 #ifndef __ASM_GENERIC_GPIO_H
 #define __ASM_GENERIC_GPIO_H
 
-#define ARCH_NR_GPIOS 256
-
-static inline int gpio_is_valid(int gpio)
-{
-	if (gpio < 0)
-		return 0;
-	if (gpio < ARCH_NR_GPIOS)
-		return 1;
-	return 0;
-}
-
 void gpio_set_value(unsigned gpio, int value);
 int gpio_get_value(unsigned gpio);
 int gpio_direction_output(unsigned gpio, int value);
diff --git a/include/gpio.h b/include/gpio.h
index 4a97521..f116ea6 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -3,6 +3,17 @@
 
 #include <asm/gpio.h>
 
+#define ARCH_NR_GPIOS 256
+
+static inline int gpio_is_valid(int gpio)
+{
+	if (gpio < 0)
+		return 0;
+	if (gpio < ARCH_NR_GPIOS)
+		return 1;
+	return 0;
+}
+
 #define GPIOF_DIR_OUT	(0 << 0)
 #define GPIOF_DIR_IN	(1 << 0)
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
