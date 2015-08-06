Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNJHb-0000CH-19
 for barebox@lists.infradead.org; Thu, 06 Aug 2015 11:24:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Aug 2015 13:23:50 +0200
Message-Id: <1438860232-26898-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: PXA: use generic gpio prototypes
To: Barebox List <barebox@lists.infradead.org>

PXA is the only architecture that uses its own prototypes for
the gpio functions because it uses static inline variants of
these functions. For the sake of streamlining with other architectures
move them to a C file and use the generic gpio prototypes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-pxa/gpio.c              | 32 ++++++++++++++++++++++++++++++++
 arch/arm/mach-pxa/include/mach/gpio.h |  1 +
 arch/arm/mach-pxa/include/plat/gpio.h | 32 --------------------------------
 3 files changed, 33 insertions(+), 32 deletions(-)

diff --git a/arch/arm/mach-pxa/gpio.c b/arch/arm/mach-pxa/gpio.c
index 4e98493..7dd6ac0 100644
--- a/arch/arm/mach-pxa/gpio.c
+++ b/arch/arm/mach-pxa/gpio.c
@@ -66,3 +66,35 @@ int __init pxa_init_gpio(int start, int end)
 
 	return 0;
 }
+
+int gpio_get_value(unsigned gpio)
+{
+	return GPLR(gpio) & GPIO_bit(gpio);
+}
+
+void gpio_set_value(unsigned gpio, int value)
+{
+	if (value)
+		GPSR(gpio) = GPIO_bit(gpio);
+	else
+		GPCR(gpio) = GPIO_bit(gpio);
+}
+
+int gpio_direction_input(unsigned gpio)
+{
+	if (__gpio_is_inverted(gpio))
+		GPDR(gpio) |= GPIO_bit(gpio);
+	else
+		GPDR(gpio) &= ~GPIO_bit(gpio);
+	return 0;
+}
+
+int gpio_direction_output(unsigned gpio, int value)
+{
+	gpio_set_value(gpio, value);
+	if (__gpio_is_inverted(gpio))
+		GPDR(gpio) &= ~GPIO_bit(gpio);
+	else
+		GPDR(gpio) |= GPIO_bit(gpio);
+	return 0;
+}
diff --git a/arch/arm/mach-pxa/include/mach/gpio.h b/arch/arm/mach-pxa/include/mach/gpio.h
index e6724e1..950bb1a 100644
--- a/arch/arm/mach-pxa/include/mach/gpio.h
+++ b/arch/arm/mach-pxa/include/mach/gpio.h
@@ -20,6 +20,7 @@
 #ifndef __ASM_ARCH_PXA_GPIO_H
 #define __ASM_ARCH_PXA_GPIO_H
 
+#include <asm-generic/gpio.h>
 #include <mach/hardware.h>
 
 #define GPIO_REGS_VIRT	(0x40E00000)
diff --git a/arch/arm/mach-pxa/include/plat/gpio.h b/arch/arm/mach-pxa/include/plat/gpio.h
index 4c7b526..35f9071 100644
--- a/arch/arm/mach-pxa/include/plat/gpio.h
+++ b/arch/arm/mach-pxa/include/plat/gpio.h
@@ -31,38 +31,6 @@
 #define GFER_OFFSET	0x3C
 #define GEDR_OFFSET	0x48
 
-static inline int gpio_get_value(unsigned gpio)
-{
-	return GPLR(gpio) & GPIO_bit(gpio);
-}
-
-static inline void gpio_set_value(unsigned gpio, int value)
-{
-	if (value)
-		GPSR(gpio) = GPIO_bit(gpio);
-	else
-		GPCR(gpio) = GPIO_bit(gpio);
-}
-
-static inline int gpio_direction_input(unsigned gpio)
-{
-	if (__gpio_is_inverted(gpio))
-		GPDR(gpio) |= GPIO_bit(gpio);
-	else
-		GPDR(gpio) &= ~GPIO_bit(gpio);
-	return 0;
-}
-
-static inline int gpio_direction_output(unsigned gpio, int value)
-{
-	gpio_set_value(gpio, value);
-	if (__gpio_is_inverted(gpio))
-		GPDR(gpio) &= ~GPIO_bit(gpio);
-	else
-		GPDR(gpio) |= GPIO_bit(gpio);
-	return 0;
-}
-
 /* NOTE: some PXAs have fewer on-chip GPIOs (like PXA255, with 85).
  * Those cases currently cause holes in the GPIO number space, the
  * actual number of the last GPIO is recorded by 'pxa_last_gpio'.
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
