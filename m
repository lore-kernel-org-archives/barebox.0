Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VjaUc-0005rO-PC
 for barebox@lists.infradead.org; Thu, 21 Nov 2013 20:04:51 +0000
Received: by mail-lb0-f173.google.com with SMTP id u14so201523lbd.32
 for <barebox@lists.infradead.org>; Thu, 21 Nov 2013 12:04:25 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 22 Nov 2013 00:11:23 +0400
Message-Id: <1385064684-28363-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] gpio: unify gpio direction macros names with Linux kernel
To: barebox@lists.infradead.org

See linux.git/include/linux/gpio.h and
linux.git/Documentation/gpio.txt for details.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/gpio/gpio-dw.c | 2 +-
 include/gpio.h         | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index 6577042..e46cc8e 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -95,7 +95,7 @@ static int dw_gpio_get_direction(struct gpio_chip *gc, unsigned offset)
 	struct dw_gpio_instance *chip = to_dw_gpio(gc);
 
 	return (readl(chip->regs + DW_GPIO_DDR) & (1 << offset)) ?
-		GPIO_DIR_OUT : GPIO_DIR_IN;
+		GPIOF_DIR_OUT : GPIOF_DIR_IN;
 }
 
 static struct gpio_ops imx_gpio_ops = {
diff --git a/include/gpio.h b/include/gpio.h
index 708b2aa..f33b435 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -3,8 +3,8 @@
 
 #include <asm/gpio.h>
 
-#define GPIO_DIR_OUT	(0 << 0)
-#define GPIO_DIR_IN	(1 << 0)
+#define GPIOF_DIR_OUT	(0 << 0)
+#define GPIOF_DIR_IN	(1 << 0)
 
 #ifndef CONFIG_GPIOLIB
 static inline int gpio_request(unsigned gpio, const char *label)
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
