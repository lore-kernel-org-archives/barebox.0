Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp37.i.mail.ru ([94.100.177.97])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UTPGg-0001yT-NO
 for barebox@lists.infradead.org; Sat, 20 Apr 2013 04:19:24 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 20 Apr 2013 08:18:50 +0400
Message-Id: <1366431532-29121-4-git-send-email-shc_work@mail.ru>
In-Reply-To: <1366431532-29121-1-git-send-email-shc_work@mail.ru>
References: <1366431532-29121-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/5] GPIO: i.MX: Rewrite driver for using generic GPIO code
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/Kconfig        |   1 -
 drivers/gpio/Kconfig    |   1 +
 drivers/gpio/gpio-imx.c | 125 ++++++++++++------------------------------------
 3 files changed, 31 insertions(+), 96 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index bb9b47b..5607754 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -72,7 +72,6 @@ config ARCH_HIGHBANK
 
 config ARCH_IMX
 	bool "Freescale iMX-based"
-	select GENERIC_GPIO
 	select GPIOLIB
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 74a4baa..5ccd35b 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -29,6 +29,7 @@ config GPIO_GENERIC_PLATFORM
 
 config GPIO_IMX
 	def_bool ARCH_IMX
+	select GPIO_GENERIC
 
 config GPIO_PL061
 	bool "PrimeCell PL061 GPIO support"
diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index 1bf4100..9dcabfc 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -20,17 +20,11 @@
  *
  */
 
-#include <common.h>
-#include <errno.h>
-#include <io.h>
-#include <gpio.h>
 #include <init.h>
+#include <common.h>
+#include <malloc.h>
 
-struct imx_gpio_chip {
-	void __iomem *base;
-	struct gpio_chip chip;
-	struct imx_gpio_regs *regs;
-};
+#include <linux/basic_mmio_gpio.h>
 
 struct imx_gpio_regs {
 	unsigned int dr;
@@ -50,104 +44,45 @@ static struct imx_gpio_regs regs_imx31 = {
 	.psr = 0x08,
 };
 
-static void imx_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
-{
-	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
-	void __iomem *base = imxgpio->base;
-	u32 val;
-
-	if (!base)
-		return;
-
-	val = readl(base + imxgpio->regs->dr);
-
-	if (value)
-		val |= 1 << gpio;
-	else
-		val &= ~(1 << gpio);
-
-	writel(val, base + imxgpio->regs->dr);
-}
-
-static int imx_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
-{
-	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
-	void __iomem *base = imxgpio->base;
-	u32 val;
-
-	if (!base)
-		return -EINVAL;
-
-	val = readl(base + imxgpio->regs->gdir);
-	val &= ~(1 << gpio);
-	writel(val, base + imxgpio->regs->gdir);
-
-	return 0;
-}
-
-
-static int imx_gpio_direction_output(struct gpio_chip *chip, unsigned gpio, int value)
-{
-	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
-	void __iomem *base = imxgpio->base;
-	u32 val;
-
-	gpio_set_value(gpio + chip->base, value);
-
-	val = readl(base + imxgpio->regs->gdir);
-	val |= 1 << gpio;
-	writel(val, base + imxgpio->regs->gdir);
-
-	return 0;
-}
-
-static int imx_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
-{
-	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
-	void __iomem *base = imxgpio->base;
-	u32 val;
-
-	val = readl(base + imxgpio->regs->psr);
-
-	return val & (1 << gpio) ? 1 : 0;
-}
-
-static struct gpio_ops imx_gpio_ops = {
-	.direction_input = imx_gpio_direction_input,
-	.direction_output = imx_gpio_direction_output,
-	.get = imx_gpio_get_value,
-	.set = imx_gpio_set_value,
-};
-
 static int imx_gpio_probe(struct device_d *dev)
 {
-	struct imx_gpio_chip *imxgpio;
 	struct imx_gpio_regs *regs;
+	struct bgpio_chip *bgc;
+	void __iomem *base;
 	int ret;
 
 	ret = dev_get_drvdata(dev, (unsigned long *)&regs);
 	if (ret)
 		return ret;
 
-	imxgpio = xzalloc(sizeof(*imxgpio));
-	imxgpio->base = dev_request_mem_region(dev, 0);
-	imxgpio->chip.ops = &imx_gpio_ops;
-	if (dev->id < 0) {
-		imxgpio->chip.base = of_alias_get_id(dev->device_node, "gpio");
-		if (imxgpio->chip.base < 0)
-			return imxgpio->chip.base;
-		imxgpio->chip.base *= 32;
-	} else {
-		imxgpio->chip.base = dev->id * 32;
+	bgc = xzalloc(sizeof(*bgc));
+	if (!bgc)
+		return -ENOMEM;
+
+	base = dev_request_mem_region(dev, 0);
+	if (!base) {
+		free(bgc);
+		return -EINVAL;
 	}
-	imxgpio->chip.ngpio = 32;
-	imxgpio->chip.dev = dev;
-	imxgpio->regs = regs;
-	gpiochip_add(&imxgpio->chip);
 
-	dev_dbg(dev, "probed gpiochip%d with base %d\n", dev->id, imxgpio->chip.base);
+	ret = bgpio_init(bgc, dev, 4, base + regs->psr, base + regs->dr, NULL,
+			 base + regs->gdir, NULL, 0);
+	if (ret) {
+		free(bgc);
+		return ret;
+	}
 
-	return 0;
+	if (dev->id < 0) {
+		bgc->gc.base = of_alias_get_id(dev->device_node, "gpio");
+		if (bgc->gc.base < 0) {
+			free(bgc);
+			return bgc->gc.base;
+		}
+		bgc->gc.base *= 32;
+	} else
+		bgc->gc.base = dev->id * 32;
+
+	return gpiochip_add(&bgc->gc);
 }
 
 static __maybe_unused struct of_device_id imx_gpio_dt_ids[] = {
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
