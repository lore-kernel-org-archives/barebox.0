Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Rrh-0007q6-77
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 08:18:43 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  3 Sep 2012 10:18:09 +0200
Message-Id: <1346660298-18148-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1346660298-18148-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1346660298-18148-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 02/11] ARM i.MX: switch to gpiolib support
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/gpio.c |   94 +++++++++++++++++++++++++++++-----------------
 1 file changed, 59 insertions(+), 35 deletions(-)

diff --git a/arch/arm/mach-imx/gpio.c b/arch/arm/mach-imx/gpio.c
index fdee20b..8d5d4ce 100644
--- a/arch/arm/mach-imx/gpio.c
+++ b/arch/arm/mach-imx/gpio.c
@@ -27,7 +27,8 @@
 #include <errno.h>
 #include <io.h>
 #include <mach/imx-regs.h>
-#include <mach/gpio.h>
+#include <gpio.h>
+#include <init.h>
 
 #if defined CONFIG_ARCH_IMX1 || defined CONFIG_ARCH_IMX21 || defined CONFIG_ARCH_IMX27
 #define GPIO_DR		0x1c
@@ -48,21 +49,15 @@
 #define GPIO_ISR	0x18
 #endif
 
-extern void __iomem *imx_gpio_base[];
-extern int imx_gpio_count;
+struct imx_gpio_chip {
+	void __iomem *base;
+	struct gpio_chip chip;
+};
 
-static void __iomem *gpio_get_base(unsigned gpio)
+static void imx_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
 {
-	if (gpio >= imx_gpio_count)
-		return NULL;
-
-	return imx_gpio_base[gpio / 32];
-}
-
-void gpio_set_value(unsigned gpio, int value)
-{
-	void __iomem *base = gpio_get_base(gpio);
-	int shift = gpio % 32;
+	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
+	void __iomem *base = imxgpio->base;
 	u32 val;
 
 	if (!base)
@@ -71,59 +66,88 @@ void gpio_set_value(unsigned gpio, int value)
 	val = readl(base + GPIO_DR);
 
 	if (value)
-		val |= 1 << shift;
+		val |= 1 << gpio;
 	else
-		val &= ~(1 << shift);
+		val &= ~(1 << gpio);
 
 	writel(val, base + GPIO_DR);
 }
 
-int gpio_direction_input(unsigned gpio)
+static int imx_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
 {
-	void __iomem *base = gpio_get_base(gpio);
-	int shift = gpio % 32;
+	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
+	void __iomem *base = imxgpio->base;
 	u32 val;
 
 	if (!base)
 		return -EINVAL;
 
 	val = readl(base + GPIO_GDIR);
-	val &= ~(1 << shift);
+	val &= ~(1 << gpio);
 	writel(val, base + GPIO_GDIR);
 
 	return 0;
 }
 
 
-int gpio_direction_output(unsigned gpio, int value)
+static int imx_gpio_direction_output(struct gpio_chip *chip, unsigned gpio, int value)
 {
-	void __iomem *base = gpio_get_base(gpio);
-	int shift = gpio % 32;
+	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
+	void __iomem *base = imxgpio->base;
 	u32 val;
 
-	if (!base)
-		return -EINVAL;
-
-	gpio_set_value(gpio, value);
+	gpio_set_value(gpio + chip->base, value);
 
 	val = readl(base + GPIO_GDIR);
-	val |= 1 << shift;
+	val |= 1 << gpio;
 	writel(val, base + GPIO_GDIR);
 
 	return 0;
 }
 
-int gpio_get_value(unsigned gpio)
+static int imx_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
 {
-	void __iomem *base = gpio_get_base(gpio);
-	int shift = gpio % 32;
+	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
+	void __iomem *base = imxgpio->base;
 	u32 val;
 
-	if (!base)
-		return -EINVAL;
-
 	val = readl(base + GPIO_PSR);
 
-	return val & (1 << shift) ? 1 : 0;
+	return val & (1 << gpio) ? 1 : 0;
+}
+
+static struct gpio_ops imx_gpio_ops = {
+	.direction_input = imx_gpio_direction_input,
+	.direction_output = imx_gpio_direction_output,
+	.get = imx_gpio_get_value,
+	.set = imx_gpio_set_value,
+};
+
+static int imx_gpio_probe(struct device_d *dev)
+{
+	struct imx_gpio_chip *imxgpio;
+
+	imxgpio = xzalloc(sizeof(*imxgpio));
+	imxgpio->base = dev_request_mem_region(dev, 0);
+	imxgpio->chip.ops = &imx_gpio_ops;
+	imxgpio->chip.base = -1;
+	imxgpio->chip.ngpio = 32;
+	imxgpio->chip.dev = dev;
+	gpiochip_add(&imxgpio->chip);
+
+	dev_info(dev, "probed gpiochip%d with base %d\n", dev->id, imxgpio->chip.base);
+
+	return 0;
 }
 
+static struct driver_d imx_gpio_driver = {
+	.name = "imx-gpio",
+	.probe = imx_gpio_probe,
+};
+
+static int imx_gpio_add(void)
+{
+	register_driver(&imx_gpio_driver);
+	return 0;
+}
+coredevice_initcall(imx_gpio_add);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
