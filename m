Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSCwF-0004T1-VX
 for barebox@lists.infradead.org; Sat, 27 Oct 2012 20:25:00 +0000
Received: from mail611.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 3358FDC0F6E
 for <barebox@lists.infradead.org>; Sat, 27 Oct 2012 22:31:58 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 27 Oct 2012 22:22:45 +0200
Message-Id: <1351369365-21395-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351368639-20174-1-git-send-email-plagnioj@jcrosoft.com>
References: <1351368639-20174-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1 v2] gpio: move gpio_is_valid to gpio.h
To: barebox@lists.infradead.org

gpio < 0 means invalid too

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
send right version

Best Regards,
J.
 drivers/gpio/gpio.c        |    9 ---------
 include/asm-generic/gpio.h |   11 +++++++++++
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpio.c
index 6ad8d27..042a062 100644
--- a/drivers/gpio/gpio.c
+++ b/drivers/gpio/gpio.c
@@ -4,17 +4,8 @@
 
 static LIST_HEAD(chip_list);
 
-#define ARCH_NR_GPIOS 256
-
 static struct gpio_chip *gpio_desc[ARCH_NR_GPIOS];
 
-static int gpio_is_valid(unsigned gpio)
-{
-	if (gpio < ARCH_NR_GPIOS)
-		return 1;
-	return 0;
-}
-
 void gpio_set_value(unsigned gpio, int value)
 {
 	struct gpio_chip *chip = gpio_desc[gpio];
diff --git a/include/asm-generic/gpio.h b/include/asm-generic/gpio.h
index 1997888..c2e7a5d 100644
--- a/include/asm-generic/gpio.h
+++ b/include/asm-generic/gpio.h
@@ -1,6 +1,17 @@
 #ifndef __ASM_GENERIC_GPIO_H
 #define __ASM_GENERIC_GPIO_H
 
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
 void gpio_set_value(unsigned gpio, int value);
 int gpio_get_value(unsigned gpio);
 int gpio_direction_output(unsigned gpio, int value);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
