Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Rg-00034M-KR
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:25:33 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 18306104EBF0
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:35:34 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:24:10 +0100
Message-Id: <1359905053-13109-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359905053-13109-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203152218.GF18068@game.jcrosoft.org>
 <1359905053-13109-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/5] at91: gpio: split accessor so we can use them for early
 init
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/gpio.c |  131 ++-------------------------------------
 arch/arm/mach-at91/gpio.h |  148 +++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 154 insertions(+), 125 deletions(-)
 create mode 100644 arch/arm/mach-at91/gpio.h

diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index 10efccf..c2618c7 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -32,8 +32,9 @@
 #include <driver.h>
 #include <getopt.h>
 
+#include "gpio.h"
+
 #define MAX_GPIO_BANKS		5
-#define MAX_NB_GPIO_PER_BANK	32
 
 static int gpio_banks = 0;
 
@@ -50,16 +51,6 @@ struct at91_gpio_chip {
 
 static struct at91_gpio_chip gpio_chip[MAX_GPIO_BANKS];
 
-static inline unsigned pin_to_bank(unsigned pin)
-{
-	return pin / MAX_NB_GPIO_PER_BANK;
-}
-
-static inline unsigned pin_to_bank_offset(unsigned pin)
-{
-	return pin % MAX_NB_GPIO_PER_BANK;
-}
-
 static inline struct at91_gpio_chip *pin_to_controller(unsigned pin)
 {
 	pin /= MAX_NB_GPIO_PER_BANK;
@@ -69,11 +60,6 @@ static inline struct at91_gpio_chip *pin_to_controller(unsigned pin)
 	return NULL;
 }
 
-static inline unsigned pin_to_mask(unsigned pin)
-{
-	return 1 << pin_to_bank_offset(pin);
-}
-
 /**
  * struct at91_pinctrl_mux_ops - describes an At91 mux ops group
  * on new IP with support for periph C and D the way to mux in
@@ -106,94 +92,6 @@ struct at91_pinctrl_mux_ops {
 	void (*disable_schmitt_trig)(void __iomem *pio, unsigned mask);
 };
 
-static void at91_mux_disable_interrupt(void __iomem *pio, unsigned mask)
-{
-	__raw_writel(mask, pio + PIO_IDR);
-}
-
-static void at91_mux_set_pullup(void __iomem *pio, unsigned mask, bool on)
-{
-	__raw_writel(mask, pio + (on ? PIO_PUER : PIO_PUDR));
-}
-
-static void at91_mux_set_multidrive(void __iomem *pio, unsigned mask, bool on)
-{
-	__raw_writel(mask, pio + (on ? PIO_MDER : PIO_MDDR));
-}
-
-static void at91_mux_set_A_periph(void __iomem *pio, unsigned mask)
-{
-	__raw_writel(mask, pio + PIO_ASR);
-}
-
-static void at91_mux_set_B_periph(void __iomem *pio, unsigned mask)
-{
-	__raw_writel(mask, pio + PIO_BSR);
-}
-
-static void at91_mux_pio3_set_A_periph(void __iomem *pio, unsigned mask)
-{
-
-	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask,
-						pio + PIO_ABCDSR1);
-	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) & ~mask,
-						pio + PIO_ABCDSR2);
-}
-
-static void at91_mux_pio3_set_B_periph(void __iomem *pio, unsigned mask)
-{
-	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask,
-						pio + PIO_ABCDSR1);
-	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) & ~mask,
-						pio + PIO_ABCDSR2);
-}
-
-static void at91_mux_pio3_set_C_periph(void __iomem *pio, unsigned mask)
-{
-	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask, pio + PIO_ABCDSR1);
-	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
-}
-
-static void at91_mux_pio3_set_D_periph(void __iomem *pio, unsigned mask)
-{
-	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask, pio + PIO_ABCDSR1);
-	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
-}
-
-static void at91_mux_set_deglitch(void __iomem *pio, unsigned mask, bool is_on)
-{
-	__raw_writel(mask, pio + (is_on ? PIO_IFER : PIO_IFDR));
-}
-
-static void at91_mux_pio3_set_deglitch(void __iomem *pio, unsigned mask, bool is_on)
-{
-	if (is_on)
-		__raw_writel(mask, pio + PIO_IFSCDR);
-	at91_mux_set_deglitch(pio, mask, is_on);
-}
-
-static void at91_mux_pio3_set_debounce(void __iomem *pio, unsigned mask,
-				bool is_on, u32 div)
-{
-	if (is_on) {
-		__raw_writel(mask, pio + PIO_IFSCER);
-		__raw_writel(div & PIO_SCDR_DIV, pio + PIO_SCDR);
-		__raw_writel(mask, pio + PIO_IFER);
-	} else {
-		__raw_writel(mask, pio + PIO_IFDR);
-	}
-}
-
-static void at91_mux_pio3_set_pulldown(void __iomem *pio, unsigned mask, bool is_on)
-{
-	__raw_writel(mask, pio + (is_on ? PIO_PPDER : PIO_PPDDR));
-}
-
-static void at91_mux_pio3_disable_schmitt_trig(void __iomem *pio, unsigned mask)
-{
-	__raw_writel(__raw_readl(pio + PIO_SCHMITT) | mask, pio + PIO_SCHMITT);
-}
-
 #ifdef CONFIG_CMD_AT91MUX
 static unsigned at91_mux_get_pullup(void __iomem *pio, unsigned pin)
 {
@@ -284,21 +182,6 @@ static struct at91_pinctrl_mux_ops at91sam9x5_ops = {
 	.disable_schmitt_trig = at91_mux_pio3_disable_schmitt_trig,
 };
 
-static void at91_mux_gpio_disable(void __iomem *pio, unsigned mask)
-{
-	__raw_writel(mask, pio + PIO_PDR);
-}
-
-static void at91_mux_gpio_enable(void __iomem *pio, unsigned mask)
-{
-	__raw_writel(mask, pio + PIO_PER);
-}
-
-static void at91_mux_gpio_input(void __iomem *pio, unsigned mask, bool input)
-{
-	__raw_writel(mask, pio + (input ? PIO_ODR : PIO_OER));
-}
-
 int at91_mux_pin(unsigned pin, enum at91_mux mux, int use_pullup)
 {
 	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
@@ -398,7 +281,7 @@ int at91_set_gpio_output(unsigned pin, int value)
 		pin_to_bank(pin) + 'A', pin_to_bank_offset(pin), value);
 
 	at91_mux_gpio_input(pio, mask, false);
-	__raw_writel(mask, pio + (value ? PIO_SODR : PIO_CODR));
+	at91_mux_gpio_set(pio, mask, value);
 	return 0;
 }
 EXPORT_SYMBOL(at91_set_gpio_output);
@@ -643,10 +526,8 @@ static int at91_gpio_get(struct gpio_chip *chip, unsigned offset)
 	struct at91_gpio_chip *at91_gpio = to_at91_gpio_chip(chip);
 	void __iomem *pio = at91_gpio->regbase;
 	unsigned mask = 1 << offset;
-	u32 pdsr;
 
-	pdsr = __raw_readl(pio + PIO_PDSR);
-	return (pdsr & mask) != 0;
+	return at91_mux_gpio_get(pio, mask);
 }
 
 static void at91_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
@@ -655,7 +536,7 @@ static void at91_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
 	void __iomem *pio = at91_gpio->regbase;
 	unsigned mask = 1 << offset;
 
-	__raw_writel(mask, pio + (value ? PIO_SODR : PIO_CODR));
+	at91_mux_gpio_set(pio, mask, value);
 }
 
 static int at91_gpio_direction_output(struct gpio_chip *chip, unsigned offset,
@@ -665,7 +546,7 @@ static int at91_gpio_direction_output(struct gpio_chip *chip, unsigned offset,
 	void __iomem *pio = at91_gpio->regbase;
 	unsigned mask = 1 << offset;
 
-	__raw_writel(mask, pio + (value ? PIO_SODR : PIO_CODR));
+	at91_mux_gpio_set(pio, mask, value);
 	__raw_writel(mask, pio + PIO_OER);
 
 	return 0;
diff --git a/arch/arm/mach-at91/gpio.h b/arch/arm/mach-at91/gpio.h
new file mode 100644
index 0000000..d40628b
--- /dev/null
+++ b/arch/arm/mach-at91/gpio.h
@@ -0,0 +1,148 @@
+/*
+ * Copyright (C) 2011-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ */
+
+#ifndef __AT91_GPIO_H__
+#define __AT91_GPIO_H__
+
+#ifndef __gpio_init
+#define __gpio_init
+#endif
+
+#define MAX_NB_GPIO_PER_BANK	32
+
+static inline unsigned pin_to_bank(unsigned pin)
+{
+	return pin / MAX_NB_GPIO_PER_BANK;
+}
+
+static inline unsigned pin_to_bank_offset(unsigned pin)
+{
+	return pin % MAX_NB_GPIO_PER_BANK;
+}
+
+static inline unsigned pin_to_mask(unsigned pin)
+{
+	return 1 << pin_to_bank_offset(pin);
+}
+
+static __gpio_init void at91_mux_disable_interrupt(void __iomem *pio, unsigned mask)
+{
+	__raw_writel(mask, pio + PIO_IDR);
+}
+
+static __gpio_init void at91_mux_set_pullup(void __iomem *pio, unsigned mask, bool on)
+{
+	__raw_writel(mask, pio + (on ? PIO_PUER : PIO_PUDR));
+}
+
+static __gpio_init void at91_mux_set_multidrive(void __iomem *pio, unsigned mask, bool on)
+{
+	__raw_writel(mask, pio + (on ? PIO_MDER : PIO_MDDR));
+}
+
+static __gpio_init void at91_mux_set_A_periph(void __iomem *pio, unsigned mask)
+{
+	__raw_writel(mask, pio + PIO_ASR);
+}
+
+static __gpio_init void at91_mux_set_B_periph(void __iomem *pio, unsigned mask)
+{
+	__raw_writel(mask, pio + PIO_BSR);
+}
+
+static __gpio_init void at91_mux_pio3_set_A_periph(void __iomem *pio, unsigned mask)
+{
+
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask,
+						pio + PIO_ABCDSR1);
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) & ~mask,
+						pio + PIO_ABCDSR2);
+}
+
+static __gpio_init void at91_mux_pio3_set_B_periph(void __iomem *pio, unsigned mask)
+{
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask,
+						pio + PIO_ABCDSR1);
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) & ~mask,
+						pio + PIO_ABCDSR2);
+}
+
+static __gpio_init void at91_mux_pio3_set_C_periph(void __iomem *pio, unsigned mask)
+{
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask, pio + PIO_ABCDSR1);
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
+}
+
+static __gpio_init void at91_mux_pio3_set_D_periph(void __iomem *pio, unsigned mask)
+{
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask, pio + PIO_ABCDSR1);
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
+}
+
+static __gpio_init void at91_mux_set_deglitch(void __iomem *pio, unsigned mask, bool is_on)
+{
+	__raw_writel(mask, pio + (is_on ? PIO_IFER : PIO_IFDR));
+}
+
+static __gpio_init void at91_mux_pio3_set_deglitch(void __iomem *pio, unsigned mask, bool is_on)
+{
+	if (is_on)
+		__raw_writel(mask, pio + PIO_IFSCDR);
+	at91_mux_set_deglitch(pio, mask, is_on);
+}
+
+static __gpio_init void at91_mux_pio3_set_debounce(void __iomem *pio, unsigned mask,
+				bool is_on, u32 div)
+{
+	if (is_on) {
+		__raw_writel(mask, pio + PIO_IFSCER);
+		__raw_writel(div & PIO_SCDR_DIV, pio + PIO_SCDR);
+		__raw_writel(mask, pio + PIO_IFER);
+	} else {
+		__raw_writel(mask, pio + PIO_IFDR);
+	}
+}
+
+static __gpio_init void at91_mux_pio3_set_pulldown(void __iomem *pio, unsigned mask, bool is_on)
+{
+	__raw_writel(mask, pio + (is_on ? PIO_PPDER : PIO_PPDDR));
+}
+
+static __gpio_init void at91_mux_pio3_disable_schmitt_trig(void __iomem *pio, unsigned mask)
+{
+	__raw_writel(__raw_readl(pio + PIO_SCHMITT) | mask, pio + PIO_SCHMITT);
+}
+
+static __gpio_init void at91_mux_gpio_disable(void __iomem *pio, unsigned mask)
+{
+	__raw_writel(mask, pio + PIO_PDR);
+}
+
+static __gpio_init void at91_mux_gpio_enable(void __iomem *pio, unsigned mask)
+{
+	__raw_writel(mask, pio + PIO_PER);
+}
+
+static __gpio_init void at91_mux_gpio_input(void __iomem *pio, unsigned mask, bool input)
+{
+	__raw_writel(mask, pio + (input ? PIO_ODR : PIO_OER));
+}
+
+static __gpio_init void at91_mux_gpio_set(void __iomem *pio, unsigned mask,
+int value)
+{
+	__raw_writel(mask, pio + (value ? PIO_SODR : PIO_CODR));
+}
+
+static __gpio_init int at91_mux_gpio_get(void __iomem *pio, unsigned mask)
+{
+       u32 pdsr;
+
+       pdsr = __raw_readl(pio + PIO_PDSR);
+       return (pdsr & mask) != 0;
+}
+
+#endif /* __AT91_GPIO_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
