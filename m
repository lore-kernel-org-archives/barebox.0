Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo4.mail-out.ovh.net ([46.105.57.129]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TlhBl-0006kD-UF
 for barebox@lists.infradead.org; Thu, 20 Dec 2012 14:33:41 +0000
Received: from mail638.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id A08D1104ED4D
 for <barebox@lists.infradead.org>; Thu, 20 Dec 2012 15:42:14 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 20 Dec 2012 15:31:50 +0100
Message-Id: <1356013910-30196-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/6] at91: switch to gpiolib
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig                       |    2 +-
 arch/arm/boards/at91sam9263ek/init.c   |    2 +-
 arch/arm/boards/mmccpu/init.c          |    2 +-
 arch/arm/boards/pm9263/init.c          |    2 +-
 arch/arm/boards/pm9g45/init.c          |    2 +-
 arch/arm/mach-at91/gpio.c              |  118 +++++++++++++++++++-------------
 arch/arm/mach-at91/include/mach/gpio.h |   25 +------
 drivers/usb/gadget/at91_udc.c          |    2 +-
 8 files changed, 78 insertions(+), 77 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 2b5446b..f567531 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -26,7 +26,7 @@ choice
 
 config ARCH_AT91
 	bool "Atmel AT91"
-	select GENERIC_GPIO
+	select GPIOLIB
 	select CLKDEV_LOOKUP
 	select HAS_DEBUG_LL
 	select HAVE_MACH_ARM_HEAD
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 50e4009..7334bae 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -176,7 +176,7 @@ static int at91sam9263ek_devices_init(void)
 	 * 0 - disable
 	 */
 	at91_set_gpio_output(AT91_PIN_PB27, 1);
-	at91_set_gpio_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
+	gpio_set_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
 
 	ek_add_device_nand();
 	at91_add_device_eth(0, &macb_pdata);
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 67bfcea..1e6bbab 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -54,7 +54,7 @@ static int mmccpu_devices_init(void)
 	 * 0 - disable
 	 */
 	at91_set_gpio_output(AT91_PIN_PB27, 1);
-	at91_set_gpio_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
+	gpio_set_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
 
 	at91_add_device_eth(0, &macb_pdata);
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 0, 0);
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 6a92a67..f719c65 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -102,7 +102,7 @@ static void pm9263_phy_init(void)
 	 * 0 - disable
 	 */
 	at91_set_gpio_output(AT91_PIN_PB27, 1);
-	at91_set_gpio_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
+	gpio_set_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
 }
 
 static void pm9263_add_device_eth(void)
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index a974139..fabe97b 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -126,7 +126,7 @@ static void pm9g45_phy_init(void)
 	 * 0 - disable
 	 */
 	at91_set_gpio_output(AT91_PIN_PD2, 1);
-	at91_set_gpio_value(AT91_PIN_PD2, 1);
+	gpio_set_value(AT91_PIN_PD2, 1);
 }
 
 static void pm9g45_add_device_eth(void)
diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index 5962b2a..9e71324 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -38,11 +38,13 @@ static int gpio_banks = 0;
  * Functionnality can change with newer chips
  */
 struct at91_gpio_chip {
-	struct device_d		*dev;
+	struct gpio_chip	chip;
 	void __iomem		*regbase;	/* PIO bank virtual address */
 	struct at91_pinctrl_mux_ops *ops;	/* ops */
 };
 
+#define to_at91_gpio_chip(c) container_of(c, struct at91_gpio_chip, chip)
+
 static struct at91_gpio_chip gpio_chip[MAX_GPIO_BANKS];
 
 static inline unsigned pin_to_bank(unsigned pin)
@@ -221,7 +223,7 @@ int at91_mux_pin(unsigned pin, enum at91_mux mux, int use_pullup)
 	void __iomem *pio = at91_gpio->regbase;
 	unsigned mask = pin_to_mask(pin);
 	int bank = pin_to_bank(pin);
-	struct device_d *dev = at91_gpio->dev;
+	struct device_d *dev = at91_gpio->chip.dev;
 
 	if (!at91_gpio)
 		return -EINVAL;
@@ -287,7 +289,7 @@ int at91_set_gpio_input(unsigned pin, int use_pullup)
 	if (ret)
 		return ret;
 
-	dev_dbg(at91_gpio->dev, "pio%c%d configured as input\n",
+	dev_dbg(at91_gpio->chip.dev, "pio%c%d configured as input\n",
 		pin_to_bank(pin) + 'A', pin_to_bank_offset(pin));
 
 	at91_mux_gpio_input(pio, mask, true);
@@ -310,7 +312,7 @@ int at91_set_gpio_output(unsigned pin, int value)
 	if (ret)
 		return ret;
 
-	dev_dbg(at91_gpio->dev, "pio%c%d configured as output val = %d\n",
+	dev_dbg(at91_gpio->chip.dev, "pio%c%d configured as output val = %d\n",
 		pin_to_bank(pin) + 'A', pin_to_bank_offset(pin), value);
 
 	at91_mux_gpio_input(pio, mask, false);
@@ -408,67 +410,79 @@ int at91_disable_schmitt_trig(unsigned pin)
 }
 EXPORT_SYMBOL(at91_disable_schmitt_trig);
 
-/*
- * assuming the pin is muxed as a gpio output, set its value.
- */
-int at91_set_gpio_value(unsigned pin, int value)
+/*--------------------------------------------------------------------------*/
+
+static int at91_gpio_get(struct gpio_chip *chip, unsigned offset)
 {
-	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
-	void __iomem	*pio = at91_gpio->regbase;
-	unsigned	mask = pin_to_mask(pin);
+	struct at91_gpio_chip *at91_gpio = to_at91_gpio_chip(chip);
+	void __iomem *pio = at91_gpio->regbase;
+	unsigned mask = 1 << offset;
+	u32 pdsr;
+
+	pdsr = __raw_readl(pio + PIO_PDSR);
+	return (pdsr & mask) != 0;
+}
+
+static void at91_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
+{
+	struct at91_gpio_chip *at91_gpio = to_at91_gpio_chip(chip);
+	void __iomem *pio = at91_gpio->regbase;
+	unsigned mask = 1 << offset;
 
-	if (!pio)
-		return -EINVAL;
 	__raw_writel(mask, pio + (value ? PIO_SODR : PIO_CODR));
-	return 0;
 }
-EXPORT_SYMBOL(at91_set_gpio_value);
 
-/*
- * read the pin's value (works even if it's not muxed as a gpio).
- */
-int at91_get_gpio_value(unsigned pin)
+static int at91_gpio_direction_output(struct gpio_chip *chip, unsigned offset,
+		int value)
 {
-	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
-	void __iomem	*pio = at91_gpio->regbase;
-	unsigned	mask = pin_to_mask(pin);
-	u32		pdsr;
+	struct at91_gpio_chip *at91_gpio = to_at91_gpio_chip(chip);
+	void __iomem *pio = at91_gpio->regbase;
+	unsigned mask = 1 << offset;
 
-	if (!pio)
-		return -EINVAL;
-	pdsr = __raw_readl(pio + PIO_PDSR);
-	return (pdsr & mask) != 0;
+	__raw_writel(mask, pio + (value ? PIO_SODR : PIO_CODR));
+	__raw_writel(mask, pio + PIO_OER);
+
+	return 0;
 }
-EXPORT_SYMBOL(at91_get_gpio_value);
 
-int gpio_direction_input(unsigned pin)
+static int at91_gpio_direction_input(struct gpio_chip *chip, unsigned offset)
 {
-	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
-	void __iomem	*pio = at91_gpio->regbase;
-	unsigned	mask = pin_to_mask(pin);
+	struct at91_gpio_chip *at91_gpio = to_at91_gpio_chip(chip);
+	void __iomem *pio = at91_gpio->regbase;
+	unsigned mask = 1 << offset;
+
+	__raw_writel(mask, pio + PIO_ODR);
 
-	if (!pio || !(__raw_readl(pio + PIO_PSR) & mask))
-		return -EINVAL;
-	at91_mux_gpio_input(pio, mask, true);
 	return 0;
 }
-EXPORT_SYMBOL(gpio_direction_input);
 
-int gpio_direction_output(unsigned pin, int value)
+static int at91_gpio_request(struct gpio_chip *chip, unsigned offset)
 {
-	struct at91_gpio_chip *at91_gpio = pin_to_controller(pin);
-	void __iomem	*pio = at91_gpio->regbase;
-	unsigned	mask = pin_to_mask(pin);
+	struct at91_gpio_chip *at91_gpio = to_at91_gpio_chip(chip);
+	void __iomem *pio = at91_gpio->regbase;
+	unsigned mask = 1 << offset;
+
+	dev_dbg(chip->dev, "%s:%d pio%c%d(%d)\n", __func__, __LINE__,
+		 'A' + pin_to_bank(chip->base), offset, chip->base + offset);
+	at91_mux_gpio_enable(pio, mask);
 
-	if (!pio || !(__raw_readl(pio + PIO_PSR) & mask))
-		return -EINVAL;
-	__raw_writel(mask, pio + (value ? PIO_SODR : PIO_CODR));
-	at91_mux_gpio_input(pio, mask, false);
 	return 0;
 }
-EXPORT_SYMBOL(gpio_direction_output);
 
-/*--------------------------------------------------------------------------*/
+static void at91_gpio_free(struct gpio_chip *chip, unsigned offset)
+{
+	dev_dbg(chip->dev, "%s:%d pio%c%d(%d)\n", __func__, __LINE__,
+		 'A' + pin_to_bank(chip->base), offset, chip->base + offset);
+}
+
+static struct gpio_ops at91_gpio_ops = {
+	.request = at91_gpio_request,
+	.free = at91_gpio_free,
+	.direction_input = at91_gpio_direction_input,
+	.direction_output = at91_gpio_direction_output,
+	.get = at91_gpio_get,
+	.set = at91_gpio_set,
+};
 
 static int at91_gpio_probe(struct device_d *dev)
 {
@@ -500,10 +514,20 @@ static int at91_gpio_probe(struct device_d *dev)
 		return ret;
 	}
 
-	at91_gpio->dev = dev;
 	gpio_banks = max(gpio_banks, dev->id + 1);
 	at91_gpio->regbase = dev_request_mem_region(dev, 0);
 
+	at91_gpio->chip.ops = &at91_gpio_ops;
+	at91_gpio->chip.ngpio = MAX_NB_GPIO_PER_BANK;
+	at91_gpio->chip.dev = dev;
+	at91_gpio->chip.base = dev->id * MAX_NB_GPIO_PER_BANK;
+
+	ret = gpiochip_add(&at91_gpio->chip);
+	if (ret) {
+		dev_err(dev, "couldn't add gpiochip, ret = %d\n", ret);
+		return ret;
+	}
+
 	return 0;
 }
 
diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
index 16060b1..eb64bd4 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -17,18 +17,10 @@
 #include <asm-generic/errno.h>
 #include <mach/at91_pio.h>
 #include <mach/hardware.h>
+#include <asm-generic/gpio.h>
 
 #define ARCH_NR_GPIOS 256
 
-static inline int gpio_is_valid(int gpio)
-{
-	if (gpio < 0)
-		return 0;
-	if (gpio < ARCH_NR_GPIOS)
-		return 1;
-	return 0;
-}
-
 #define	AT91_PIN_PA0	(0x00 + 0)
 #define	AT91_PIN_PA1	(0x00 + 1)
 #define	AT91_PIN_PA2	(0x00 + 2)
@@ -270,23 +262,8 @@ int at91_set_deglitch(unsigned pin, int is_on);
  */
 int at91_set_multi_drive(unsigned pin, int is_on);
 
-/*
- * assuming the pin is muxed as a gpio output, set its value.
- */
-int at91_set_gpio_value(unsigned pin, int value);
-
 extern int at91_set_debounce(unsigned pin, int is_on, int div);
 extern int at91_set_pulldown(unsigned pin, int is_on);
 extern int at91_disable_schmitt_trig(unsigned pin);
 
-/*
- * read the pin's value (works even if it's not muxed as a gpio).
- */
-int at91_get_gpio_value(unsigned pin);
-
-extern int gpio_direction_input(unsigned gpio);
-extern int gpio_direction_output(unsigned gpio, int value);
-#define gpio_get_value at91_get_gpio_value
-#define gpio_set_value at91_set_gpio_value
-
 #endif /* __ASM_ARCH_AT91SAM9_GPIO_H */
diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index a2cd99b..8a678f9 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1501,7 +1501,7 @@ static int __init at91udc_probe(struct device_d *dev)
 		 * Get the initial state of VBUS - we cannot expect
 		 * a pending interrupt.
 		 */
-		udc->vbus = at91_get_gpio_value(udc->board.vbus_pin);
+		udc->vbus = gpio_get_value(udc->board.vbus_pin);
 		DBG(udc, "VBUS detection: host:%s \n",
 			udc->vbus ? "present":"absent");
 	} else {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
