Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TlhBl-0006kC-SQ
 for barebox@lists.infradead.org; Thu, 20 Dec 2012 14:33:44 +0000
Received: from mail638.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 7CE96104ED21
 for <barebox@lists.infradead.org>; Thu, 20 Dec 2012 15:42:14 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 20 Dec 2012 15:31:49 +0100
Message-Id: <1356013910-30196-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1356013910-30196-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121220142902.GI26483@game.jcrosoft.org>
 <1356013910-30196-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/6] at91: gpio: switch to ops
To: barebox@lists.infradead.org

imported from the kernel

this allow to simplify the mux implemtation and will simplify the gpio support
from bare_init or pbl

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/gpio.c              |  388 +++++++++++++++++++++-----------
 arch/arm/mach-at91/include/mach/gpio.h |   48 +++-
 2 files changed, 293 insertions(+), 143 deletions(-)

diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index acaf740..5962b2a 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -1,6 +1,6 @@
 /*
- *
- * (c) 2008 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
+ * Copyright (C) 2005 HP Labs
+ * Copyright (C) 2011-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  *
  * See file CREDITS for list of people who contributed to this
  * project.
@@ -29,144 +29,248 @@
 #include <init.h>
 #include <driver.h>
 
-#define AT91_PIO3	1
-#define MAX_GPIO_BANKS	5
+#define MAX_GPIO_BANKS		5
+#define MAX_NB_GPIO_PER_BANK	32
 
-static int gpio_banks;
-static int cpu_has_pio3;
+static int gpio_banks = 0;
 
 /*
  * Functionnality can change with newer chips
  */
-
 struct at91_gpio_chip {
+	struct device_d		*dev;
 	void __iomem		*regbase;	/* PIO bank virtual address */
+	struct at91_pinctrl_mux_ops *ops;	/* ops */
 };
 
 static struct at91_gpio_chip gpio_chip[MAX_GPIO_BANKS];
 
-static inline void __iomem *pin_to_controller(unsigned pin)
+static inline unsigned pin_to_bank(unsigned pin)
+{
+	return pin / MAX_NB_GPIO_PER_BANK;
+}
+
+static inline unsigned pin_to_bank_offset(unsigned pin)
 {
-	pin /= 32;
+	return pin % MAX_NB_GPIO_PER_BANK;
+}
+
+static inline struct at91_gpio_chip *pin_to_controller(unsigned pin)
+{
+	pin /= MAX_NB_GPIO_PER_BANK;
 	if (likely(pin < gpio_banks))
-		return gpio_chip[pin].regbase;
+		return &gpio_chip[pin];
 
 	return NULL;
 }
 
 static inline unsigned pin_to_mask(unsigned pin)
 {
-	return 1 << (pin % 32);
+	return 1 << pin_to_bank_offset(pin);
 }
 
-/*
- * mux the pin to the "GPIO" peripheral role.
+/**
+ * struct at91_pinctrl_mux_ops - describes an At91 mux ops group
+ * on new IP with support for periph C and D the way to mux in
+ * periph A and B has changed
+ * So provide the right call back
+ * if not present means the IP does not support it
+ * @mux_A_periph: mux as periph A
+ * @mux_B_periph: mux as periph B
+ * @mux_C_periph: mux as periph C
+ * @mux_D_periph: mux as periph D
+ * @set_deglitch: enable/disable deglitch
+ * @set_debounce: enable/disable debounce
+ * @set_pulldown: enable/disable pulldown
+ * @disable_schmitt_trig: disable schmitt trigger
  */
-int at91_set_GPIO_periph(unsigned pin, int use_pullup)
-{
-	void __iomem	*pio = pin_to_controller(pin);
-	unsigned	mask = pin_to_mask(pin);
+struct at91_pinctrl_mux_ops {
+	void (*mux_A_periph)(void __iomem *pio, unsigned mask);
+	void (*mux_B_periph)(void __iomem *pio, unsigned mask);
+	void (*mux_C_periph)(void __iomem *pio, unsigned mask);
+	void (*mux_D_periph)(void __iomem *pio, unsigned mask);
+	void (*set_deglitch)(void __iomem *pio, unsigned mask, bool in_on);
+	void (*set_debounce)(void __iomem *pio, unsigned mask, bool in_on, u32 div);
+	void (*set_pulldown)(void __iomem *pio, unsigned mask, bool in_on);
+	void (*disable_schmitt_trig)(void __iomem *pio, unsigned mask);
+};
 
-	if (!pio)
-		return -EINVAL;
+static void at91_mux_disable_interrupt(void __iomem *pio, unsigned mask)
+{
 	__raw_writel(mask, pio + PIO_IDR);
-	__raw_writel(mask, pio + (use_pullup ? PIO_PUER : PIO_PUDR));
-	__raw_writel(mask, pio + PIO_PER);
-	return 0;
 }
-EXPORT_SYMBOL(at91_set_GPIO_periph);
 
-/*
- * mux the pin to the "A" internal peripheral role.
- */
-int at91_set_A_periph(unsigned pin, int use_pullup)
+static void at91_mux_set_pullup(void __iomem *pio, unsigned mask, bool on)
 {
-	void __iomem	*pio = pin_to_controller(pin);
-	unsigned	mask = pin_to_mask(pin);
+	__raw_writel(mask, pio + (on ? PIO_PUER : PIO_PUDR));
+}
 
-	if (!pio)
-		return -EINVAL;
+static void at91_mux_set_multidrive(void __iomem *pio, unsigned mask, bool on)
+{
+	__raw_writel(mask, pio + (on ? PIO_MDER : PIO_MDDR));
+}
 
-	__raw_writel(mask, pio + PIO_IDR);
-	__raw_writel(mask, pio + (use_pullup ? PIO_PUER : PIO_PUDR));
-	if (cpu_has_pio3) {
-		__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask,
-							pio + PIO_ABCDSR1);
-		__raw_writel(__raw_readl(pio + PIO_ABCDSR2) & ~mask,
-							pio + PIO_ABCDSR2);
-	} else {
-		__raw_writel(mask, pio + PIO_ASR);
-	}
-	__raw_writel(mask, pio + PIO_PDR);
-	return 0;
+static void at91_mux_set_A_periph(void __iomem *pio, unsigned mask)
+{
+	__raw_writel(mask, pio + PIO_ASR);
 }
-EXPORT_SYMBOL(at91_set_A_periph);
 
-/*
- * mux the pin to the "B" internal peripheral role.
- */
-int at91_set_B_periph(unsigned pin, int use_pullup)
+static void at91_mux_set_B_periph(void __iomem *pio, unsigned mask)
 {
-	void __iomem	*pio = pin_to_controller(pin);
-	unsigned	mask = pin_to_mask(pin);
+	__raw_writel(mask, pio + PIO_BSR);
+}
 
-	if (!pio)
-		return -EINVAL;
+static void at91_mux_pio3_set_A_periph(void __iomem *pio, unsigned mask)
+{
 
-	__raw_writel(mask, pio + PIO_IDR);
-	__raw_writel(mask, pio + (use_pullup ? PIO_PUER : PIO_PUDR));
-	if (cpu_has_pio3) {
-		__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask,
-							pio + PIO_ABCDSR1);
-		__raw_writel(__raw_readl(pio + PIO_ABCDSR2) & ~mask,
-							pio + PIO_ABCDSR2);
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask,
+						pio + PIO_ABCDSR1);
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) & ~mask,
+						pio + PIO_ABCDSR2);
+}
+
+static void at91_mux_pio3_set_B_periph(void __iomem *pio, unsigned mask)
+{
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask,
+						pio + PIO_ABCDSR1);
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) & ~mask,
+						pio + PIO_ABCDSR2);
+}
+
+static void at91_mux_pio3_set_C_periph(void __iomem *pio, unsigned mask)
+{
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask, pio + PIO_ABCDSR1);
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
+}
+
+static void at91_mux_pio3_set_D_periph(void __iomem *pio, unsigned mask)
+{
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask, pio + PIO_ABCDSR1);
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
+}
+
+static void at91_mux_set_deglitch(void __iomem *pio, unsigned mask, bool is_on)
+{
+	__raw_writel(mask, pio + (is_on ? PIO_IFER : PIO_IFDR));
+}
+
+static void at91_mux_pio3_set_deglitch(void __iomem *pio, unsigned mask, bool is_on)
+{
+	if (is_on)
+		__raw_writel(mask, pio + PIO_IFSCDR);
+	at91_mux_set_deglitch(pio, mask, is_on);
+}
+
+static void at91_mux_pio3_set_debounce(void __iomem *pio, unsigned mask,
+				bool is_on, u32 div)
+{
+	if (is_on) {
+		__raw_writel(mask, pio + PIO_IFSCER);
+		__raw_writel(div & PIO_SCDR_DIV, pio + PIO_SCDR);
+		__raw_writel(mask, pio + PIO_IFER);
 	} else {
-		__raw_writel(mask, pio + PIO_BSR);
+		__raw_writel(mask, pio + PIO_IFDR);
 	}
-	__raw_writel(mask, pio + PIO_PDR);
-	return 0;
 }
-EXPORT_SYMBOL(at91_set_B_periph);
 
-/*
- * mux the pin to the "C" internal peripheral role.
- */
-int at91_set_C_periph(unsigned pin, int use_pullup)
+static void at91_mux_pio3_set_pulldown(void __iomem *pio, unsigned mask, bool is_on)
 {
-	void __iomem	*pio = pin_to_controller(pin);
-	unsigned	mask = pin_to_mask(pin);
+	__raw_writel(mask, pio + (is_on ? PIO_PPDER : PIO_PPDDR));
+}
 
-	if (!pio || !cpu_has_pio3)
-		return -EINVAL;
+static void at91_mux_pio3_disable_schmitt_trig(void __iomem *pio, unsigned mask)
+{
+	__raw_writel(__raw_readl(pio + PIO_SCHMITT) | mask, pio + PIO_SCHMITT);
+}
 
-	__raw_writel(mask, pio + PIO_IDR);
-	__raw_writel(mask, pio + (use_pullup ? PIO_PUER : PIO_PUDR));
-	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask, pio + PIO_ABCDSR1);
-	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
+static struct at91_pinctrl_mux_ops at91rm9200_ops = {
+	.mux_A_periph	= at91_mux_set_A_periph,
+	.mux_B_periph	= at91_mux_set_B_periph,
+	.set_deglitch	= at91_mux_set_deglitch,
+};
+
+static struct at91_pinctrl_mux_ops at91sam9x5_ops = {
+	.mux_A_periph	= at91_mux_pio3_set_A_periph,
+	.mux_B_periph	= at91_mux_pio3_set_B_periph,
+	.mux_C_periph	= at91_mux_pio3_set_C_periph,
+	.mux_D_periph	= at91_mux_pio3_set_D_periph,
+	.set_deglitch	= at91_mux_pio3_set_deglitch,
+	.set_debounce	= at91_mux_pio3_set_debounce,
+	.set_pulldown	= at91_mux_pio3_set_pulldown,
+	.disable_schmitt_trig = at91_mux_pio3_disable_schmitt_trig,
+};
+
+static void at91_mux_gpio_disable(void __iomem *pio, unsigned mask)
+{
 	__raw_writel(mask, pio + PIO_PDR);
-	return 0;
 }
-EXPORT_SYMBOL(at91_set_C_periph);
 
-/*
- * mux the pin to the "C" internal peripheral role.
- */
-int at91_set_D_periph(unsigned pin, int use_pullup)
+static void at91_mux_gpio_enable(void __iomem *pio, unsigned mask)
 {
-	void __iomem	*pio = pin_to_controller(pin);
-	unsigned	mask = pin_to_mask(pin);
+	__raw_writel(mask, pio + PIO_PER);
+}
 
-	if (!pio || !cpu_has_pio3)
+static void at91_mux_gpio_input(void __iomem *pio, unsigned mask, bool input)
+{
+	__raw_writel(mask, pio + (input ? PIO_ODR : PIO_OER));
+}
+
+int at91_mux_pin(unsigned pin, enum at91_mux mux, int use_pullup)
+{
+	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
+	void __iomem *pio = at91_gpio->regbase;
+	unsigned mask = pin_to_mask(pin);
+	int bank = pin_to_bank(pin);
+	struct device_d *dev = at91_gpio->dev;
+
+	if (!at91_gpio)
 		return -EINVAL;
 
-	__raw_writel(mask, pio + PIO_IDR);
-	__raw_writel(mask, pio + (use_pullup ? PIO_PUER : PIO_PUDR));
-	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask, pio + PIO_ABCDSR1);
-	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
-	__raw_writel(mask, pio + PIO_PDR);
+	pio = at91_gpio->regbase;
+	if (!pio)
+		return -EINVAL;
+
+	at91_mux_disable_interrupt(pio, mask);
+
+	pin %= MAX_NB_GPIO_PER_BANK;
+	if (mux) {
+		dev_dbg(dev, "pio%c%d configured as periph%c with pullup = %d\n",
+			bank + 'A', pin, mux - 1 + 'A', use_pullup);
+	} else {
+		dev_dbg(dev, "pio%c%d configured as gpio with pullup = %d\n",
+			bank + 'A', pin, use_pullup);
+	}
+
+	switch(mux) {
+	case AT91_MUX_GPIO:
+		at91_mux_gpio_enable(pio, mask);
+		break;
+	case AT91_MUX_PERIPH_A:
+		at91_gpio->ops->mux_A_periph(pio, mask);
+		break;
+	case AT91_MUX_PERIPH_B:
+		at91_gpio->ops->mux_B_periph(pio, mask);
+		break;
+	case AT91_MUX_PERIPH_C:
+		if (!at91_gpio->ops->mux_C_periph)
+			return -EINVAL;
+		at91_gpio->ops->mux_C_periph(pio, mask);
+		break;
+	case AT91_MUX_PERIPH_D:
+		if (!at91_gpio->ops->mux_D_periph)
+			return -EINVAL;
+		at91_gpio->ops->mux_D_periph(pio, mask);
+		break;
+	}
+	if (mux)
+		at91_mux_gpio_disable(pio, mask);
+
+	if (use_pullup >= 0)
+		at91_mux_set_pullup(pio, mask, use_pullup);
+
 	return 0;
 }
-EXPORT_SYMBOL(at91_set_D_periph);
+EXPORT_SYMBOL(at91_mux_pin);
 
 /*
  * mux the pin to the gpio controller (instead of "A" or "B" peripheral), and
@@ -174,19 +278,22 @@ EXPORT_SYMBOL(at91_set_D_periph);
  */
 int at91_set_gpio_input(unsigned pin, int use_pullup)
 {
-	void __iomem	*pio = pin_to_controller(pin);
+	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
+	void __iomem	*pio = at91_gpio->regbase;
 	unsigned	mask = pin_to_mask(pin);
+	int ret;
 
-	if (!pio)
-		return -EINVAL;
+	ret = at91_mux_pin(pin, AT91_MUX_GPIO, use_pullup);
+	if (ret)
+		return ret;
+
+	dev_dbg(at91_gpio->dev, "pio%c%d configured as input\n",
+		pin_to_bank(pin) + 'A', pin_to_bank_offset(pin));
+
+	at91_mux_gpio_input(pio, mask, true);
 
-	__raw_writel(mask, pio + PIO_IDR);
-	__raw_writel(mask, pio + (use_pullup ? PIO_PUER : PIO_PUDR));
-	__raw_writel(mask, pio + PIO_ODR);
-	__raw_writel(mask, pio + PIO_PER);
 	return 0;
 }
-EXPORT_SYMBOL(at91_set_gpio_input);
 
 /*
  * mux the pin to the gpio controller (instead of "A" or "B" peripheral),
@@ -194,17 +301,20 @@ EXPORT_SYMBOL(at91_set_gpio_input);
  */
 int at91_set_gpio_output(unsigned pin, int value)
 {
-	void __iomem	*pio = pin_to_controller(pin);
+	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
+	void __iomem	*pio = at91_gpio->regbase;
 	unsigned	mask = pin_to_mask(pin);
+	int ret;
 
-	if (!pio)
-		return -EINVAL;
+	ret = at91_mux_pin(pin, AT91_MUX_GPIO, -1);
+	if (ret)
+		return ret;
 
-	__raw_writel(mask, pio + PIO_IDR);
-	__raw_writel(mask, pio + PIO_PUDR);
+	dev_dbg(at91_gpio->dev, "pio%c%d configured as output val = %d\n",
+		pin_to_bank(pin) + 'A', pin_to_bank_offset(pin), value);
+
+	at91_mux_gpio_input(pio, mask, false);
 	__raw_writel(mask, pio + (value ? PIO_SODR : PIO_CODR));
-	__raw_writel(mask, pio + PIO_OER);
-	__raw_writel(mask, pio + PIO_PER);
 	return 0;
 }
 EXPORT_SYMBOL(at91_set_gpio_output);
@@ -214,15 +324,14 @@ EXPORT_SYMBOL(at91_set_gpio_output);
  */
 int at91_set_deglitch(unsigned pin, int is_on)
 {
-	void __iomem	*pio = pin_to_controller(pin);
+	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
+	void __iomem	*pio = at91_gpio->regbase;
 	unsigned	mask = pin_to_mask(pin);
 
 	if (!pio)
 		return -EINVAL;
 
-	if (cpu_has_pio3 && is_on)
-		__raw_writel(mask, pio + PIO_IFSCDR);
-	__raw_writel(mask, pio + (is_on ? PIO_IFER : PIO_IFDR));
+	at91_gpio->ops->set_deglitch(pio, mask, is_on);
 	return 0;
 }
 EXPORT_SYMBOL(at91_set_deglitch);
@@ -232,19 +341,14 @@ EXPORT_SYMBOL(at91_set_deglitch);
  */
 int at91_set_debounce(unsigned pin, int is_on, int div)
 {
-	void __iomem	*pio = pin_to_controller(pin);
+	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
+	void __iomem	*pio = at91_gpio->regbase;
 	unsigned	mask = pin_to_mask(pin);
 
-	if (!pio || !cpu_has_pio3)
+	if (!pio || !at91_gpio->ops->set_debounce)
 		return -EINVAL;
 
-	if (is_on) {
-		__raw_writel(mask, pio + PIO_IFSCER);
-		__raw_writel(div & PIO_SCDR_DIV, pio + PIO_SCDR);
-		__raw_writel(mask, pio + PIO_IFER);
-	} else {
-		__raw_writel(mask, pio + PIO_IFDR);
-	}
+	at91_gpio->ops->set_debounce(pio, mask, is_on, div);
 	return 0;
 }
 EXPORT_SYMBOL(at91_set_debounce);
@@ -255,13 +359,14 @@ EXPORT_SYMBOL(at91_set_debounce);
  */
 int at91_set_multi_drive(unsigned pin, int is_on)
 {
-	void __iomem	*pio = pin_to_controller(pin);
+	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
+	void __iomem	*pio = at91_gpio->regbase;
 	unsigned	mask = pin_to_mask(pin);
 
 	if (!pio)
 		return -EINVAL;
 
-	__raw_writel(mask, pio + (is_on ? PIO_MDER : PIO_MDDR));
+	at91_mux_set_multidrive(pio, mask, is_on);
 	return 0;
 }
 EXPORT_SYMBOL(at91_set_multi_drive);
@@ -272,15 +377,16 @@ EXPORT_SYMBOL(at91_set_multi_drive);
  */
 int at91_set_pulldown(unsigned pin, int is_on)
 {
-	void __iomem	*pio = pin_to_controller(pin);
+	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
+	void __iomem	*pio = at91_gpio->regbase;
 	unsigned	mask = pin_to_mask(pin);
 
-	if (!pio || !cpu_has_pio3)
+	if (!pio || !at91_gpio->ops->set_pulldown)
 		return -EINVAL;
 
 	/* Disable pull-up anyway */
-	__raw_writel(mask, pio + PIO_PUDR);
-	__raw_writel(mask, pio + (is_on ? PIO_PPDER : PIO_PPDDR));
+	at91_mux_set_pullup(pio, mask, 0);
+	at91_gpio->ops->set_pulldown(pio, mask, is_on);
 	return 0;
 }
 EXPORT_SYMBOL(at91_set_pulldown);
@@ -290,13 +396,14 @@ EXPORT_SYMBOL(at91_set_pulldown);
  */
 int at91_disable_schmitt_trig(unsigned pin)
 {
-	void __iomem	*pio = pin_to_controller(pin);
+	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
+	void __iomem	*pio = at91_gpio->regbase;
 	unsigned	mask = pin_to_mask(pin);
 
-	if (!pio || !cpu_has_pio3)
+	if (!pio || !at91_gpio->ops->disable_schmitt_trig)
 		return -EINVAL;
 
-	__raw_writel(__raw_readl(pio + PIO_SCHMITT) | mask, pio + PIO_SCHMITT);
+	at91_gpio->ops->disable_schmitt_trig(pio, mask);
 	return 0;
 }
 EXPORT_SYMBOL(at91_disable_schmitt_trig);
@@ -306,7 +413,8 @@ EXPORT_SYMBOL(at91_disable_schmitt_trig);
  */
 int at91_set_gpio_value(unsigned pin, int value)
 {
-	void __iomem	*pio = pin_to_controller(pin);
+	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
+	void __iomem	*pio = at91_gpio->regbase;
 	unsigned	mask = pin_to_mask(pin);
 
 	if (!pio)
@@ -321,7 +429,8 @@ EXPORT_SYMBOL(at91_set_gpio_value);
  */
 int at91_get_gpio_value(unsigned pin)
 {
-	void __iomem	*pio = pin_to_controller(pin);
+	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
+	void __iomem	*pio = at91_gpio->regbase;
 	unsigned	mask = pin_to_mask(pin);
 	u32		pdsr;
 
@@ -334,25 +443,27 @@ EXPORT_SYMBOL(at91_get_gpio_value);
 
 int gpio_direction_input(unsigned pin)
 {
-	void __iomem	*pio = pin_to_controller(pin);
+	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
+	void __iomem	*pio = at91_gpio->regbase;
 	unsigned	mask = pin_to_mask(pin);
 
 	if (!pio || !(__raw_readl(pio + PIO_PSR) & mask))
 		return -EINVAL;
-	__raw_writel(mask, pio + PIO_ODR);
+	at91_mux_gpio_input(pio, mask, true);
 	return 0;
 }
 EXPORT_SYMBOL(gpio_direction_input);
 
 int gpio_direction_output(unsigned pin, int value)
 {
-	void __iomem	*pio = pin_to_controller(pin);
+	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
+	void __iomem	*pio = at91_gpio->regbase;
 	unsigned	mask = pin_to_mask(pin);
 
 	if (!pio || !(__raw_readl(pio + PIO_PSR) & mask))
 		return -EINVAL;
 	__raw_writel(mask, pio + (value ? PIO_SODR : PIO_CODR));
-	__raw_writel(mask, pio + PIO_OER);
+	at91_mux_gpio_input(pio, mask, false);
 	return 0;
 }
 EXPORT_SYMBOL(gpio_direction_output);
@@ -361,13 +472,15 @@ EXPORT_SYMBOL(gpio_direction_output);
 
 static int at91_gpio_probe(struct device_d *dev)
 {
-	struct at91_gpio_chip *at91_gpio = &gpio_chip[dev->id];
+	struct at91_gpio_chip *at91_gpio;
 	struct clk *clk;
 	int ret;
 
 	BUG_ON(dev->id > MAX_GPIO_BANKS);
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&cpu_has_pio3);
+	at91_gpio = &gpio_chip[dev->id];
+
+	ret = dev_get_drvdata(dev, (unsigned long *)&at91_gpio->ops);
 	if (ret) {
 		dev_err(dev, "dev_get_drvdata failed: %d\n", ret);
 		return ret;
@@ -387,6 +500,7 @@ static int at91_gpio_probe(struct device_d *dev)
 		return ret;
 	}
 
+	at91_gpio->dev = dev;
 	gpio_banks = max(gpio_banks, dev->id + 1);
 	at91_gpio->regbase = dev_request_mem_region(dev, 0);
 
@@ -396,10 +510,10 @@ static int at91_gpio_probe(struct device_d *dev)
 static struct platform_device_id at91_gpio_ids[] = {
 	{
 		.name = "at91rm9200-gpio",
-		.driver_data = (unsigned long)0,
+		.driver_data = (unsigned long)&at91rm9200_ops,
 	}, {
 		.name = "at91sam9x5-gpio",
-		.driver_data = (unsigned long)AT91_PIO3,
+		.driver_data = (unsigned long)&at91sam9x5_ops,
 	}, {
 		/* sentinel */
 	},
diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
index eef7bd2..16060b1 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -194,21 +194,59 @@ static inline int gpio_is_valid(int gpio)
 #define	AT91_PIN_PE30	(0x80 + 30)
 #define	AT91_PIN_PE31	(0x80 + 31)
 
+enum at91_mux {
+	AT91_MUX_GPIO = 0,
+	AT91_MUX_PERIPH_A = 1,
+	AT91_MUX_PERIPH_B = 2,
+	AT91_MUX_PERIPH_C = 3,
+	AT91_MUX_PERIPH_D = 4,
+};
+
 /*
- * mux the pin to the "GPIO" peripheral role.
+ * mux the pin
  */
-int at91_set_GPIO_periph(unsigned pin, int use_pullup);
+int at91_mux_pin(unsigned pin, enum at91_mux mux, int use_pullup);
 
+/*
+ * mux the pin to the "GPIO" peripheral role.
+ */
+static inline int at91_set_GPIO_periph(unsigned pin, int use_pullup)
+{
+	return at91_mux_pin(pin, AT91_MUX_GPIO, use_pullup);
+}
 
 /*
  * mux the pin to the "A" internal peripheral role.
  */
-int at91_set_A_periph(unsigned pin, int use_pullup);
+static inline int at91_set_A_periph(unsigned pin, int use_pullup)
+{
+	return at91_mux_pin(pin, AT91_MUX_PERIPH_A, use_pullup);
+}
 
 /*
  * mux the pin to the "B" internal peripheral role.
  */
-int at91_set_B_periph(unsigned pin, int use_pullup);
+static inline int at91_set_B_periph(unsigned pin, int use_pullup)
+{
+	return at91_mux_pin(pin, AT91_MUX_PERIPH_B, use_pullup);
+}
+
+/*
+ * mux the pin to the "C" internal peripheral role.
+ */
+static inline int at91_set_C_periph(unsigned pin, int use_pullup)
+{
+	return at91_mux_pin(pin, AT91_MUX_PERIPH_C, use_pullup);
+}
+
+/*
+ * mux the pin to the "C" internal peripheral role.
+ */
+static inline int at91_set_D_periph(unsigned pin, int use_pullup)
+{
+	return at91_mux_pin(pin, AT91_MUX_PERIPH_D, use_pullup);
+}
+
 /*
  * mux the pin to the gpio controller (instead of "A" or "B" peripheral), and
  * configure it for an input.
@@ -237,8 +275,6 @@ int at91_set_multi_drive(unsigned pin, int is_on);
  */
 int at91_set_gpio_value(unsigned pin, int value);
 
-extern int at91_set_C_periph(unsigned pin, int use_pullup);
-extern int at91_set_D_periph(unsigned pin, int use_pullup);
 extern int at91_set_debounce(unsigned pin, int is_on, int div);
 extern int at91_set_pulldown(unsigned pin, int is_on);
 extern int at91_disable_schmitt_trig(unsigned pin);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
