Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jbb-0002C3-U6
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:14:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:13:56 +0200
Message-Id: <1301922843-12118-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
References: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] ARM omap: rework gpio support
To: barebox@lists.infradead.org

The current gpio support is derived from the kernel which allows
for support for omap2/3/4 in a single kernel. We do not need this
here, so make it more simple to be able to add omap4 support later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/gpio.c              |  111 ++++++++++++--------------------
 arch/arm/mach-omap/include/mach/gpio.h |   42 ------------
 2 files changed, 42 insertions(+), 111 deletions(-)

diff --git a/arch/arm/mach-omap/gpio.c b/arch/arm/mach-omap/gpio.c
index 240ac8e..6b06a73 100644
--- a/arch/arm/mach-omap/gpio.c
+++ b/arch/arm/mach-omap/gpio.c
@@ -40,20 +40,27 @@
 #include <asm/io.h>
 #include <errno.h>
 
-static struct gpio_bank gpio_bank_34xx[6] = {
-	{ (void *)OMAP34XX_GPIO1_BASE, METHOD_GPIO_24XX },
-	{ (void *)OMAP34XX_GPIO2_BASE, METHOD_GPIO_24XX },
-	{ (void *)OMAP34XX_GPIO3_BASE, METHOD_GPIO_24XX },
-	{ (void *)OMAP34XX_GPIO4_BASE, METHOD_GPIO_24XX },
-	{ (void *)OMAP34XX_GPIO5_BASE, METHOD_GPIO_24XX },
-	{ (void *)OMAP34XX_GPIO6_BASE, METHOD_GPIO_24XX },
+#ifdef CONFIG_ARCH_OMAP3
+
+#define OMAP_GPIO_OE		0x0034
+#define OMAP_GPIO_DATAIN	0x0038
+#define OMAP_GPIO_DATAOUT	0x003c
+#define OMAP_GPIO_CLEARDATAOUT	0x0090
+#define OMAP_GPIO_SETDATAOUT	0x0094
+
+static void __iomem *gpio_bank[] = {
+	(void *)0x48310000,
+	(void *)0x49050000,
+	(void *)0x49052000,
+	(void *)0x49054000,
+	(void *)0x49056000,
+	(void *)0x49058000,
 };
+#endif
 
-static struct gpio_bank *gpio_bank = &gpio_bank_34xx[0];
-
-static inline struct gpio_bank *get_gpio_bank(int gpio)
+static inline void __iomem *get_gpio_base(int gpio)
 {
-	return &gpio_bank[gpio >> 5];
+	return gpio_bank[gpio >> 5];
 }
 
 static inline int get_gpio_index(int gpio)
@@ -65,7 +72,7 @@ static inline int gpio_valid(int gpio)
 {
 	if (gpio < 0)
 		return -1;
-	if (gpio < 192)
+	if (gpio / 32 < ARRAY_SIZE(gpio_bank))
 		return 0;
 	return -1;
 }
@@ -81,50 +88,35 @@ static int check_gpio(int gpio)
 
 void gpio_set_value(unsigned gpio, int value)
 {
-	struct gpio_bank *bank;
-	void *reg;
+	void __iomem *reg;
 	u32 l = 0;
 
 	if (check_gpio(gpio) < 0)
 		return;
-	bank = get_gpio_bank(gpio);
-	reg = bank->base;
-
-	switch (bank->method) {
-	case METHOD_GPIO_24XX:
-		if (value)
-			reg += OMAP24XX_GPIO_SETDATAOUT;
-		else
-			reg += OMAP24XX_GPIO_CLEARDATAOUT;
-		l = 1 << get_gpio_index(gpio);
-		break;
-	default:
-		printf("omap3-gpio unknown bank method %s %d\n",
-		       __FILE__, __LINE__);
-		return;
-	}
+
+	reg = get_gpio_base(gpio);
+
+	if (value)
+		reg += OMAP_GPIO_SETDATAOUT;
+	else
+		reg += OMAP_GPIO_CLEARDATAOUT;
+	l = 1 << get_gpio_index(gpio);
+
 	__raw_writel(l, reg);
 }
 
 int gpio_direction_input(unsigned gpio)
 {
-	struct gpio_bank *bank;
-	void *reg;
+	void __iomem *reg;
 	u32 val;
 
 	if (check_gpio(gpio) < 0)
 		return -EINVAL;
-	bank = get_gpio_bank(gpio);
 
-	reg = bank->base;
+	reg = get_gpio_base(gpio);
+
+	reg += OMAP_GPIO_OE;
 
-	switch (bank->method) {
-	case METHOD_GPIO_24XX:
-		reg += OMAP24XX_GPIO_OE;
-		break;
-	default:
-		return -EINVAL;
-	}
 	val = __raw_readl(reg);
 	val |= 1 << get_gpio_index(gpio);
 	__raw_writel(val, reg);
@@ -134,25 +126,16 @@ int gpio_direction_input(unsigned gpio)
 
 int gpio_direction_output(unsigned gpio, int value)
 {
-	struct gpio_bank *bank;
-	void *reg;
+	void __iomem *reg;
 	u32 val;
 
 	if (check_gpio(gpio) < 0)
 		return -EINVAL;
-	bank = get_gpio_bank(gpio);
-
-	reg = bank->base;
+	reg = get_gpio_base(gpio);
 
 	gpio_set_value(gpio, value);
 
-	switch (bank->method) {
-	case METHOD_GPIO_24XX:
-		reg += OMAP24XX_GPIO_OE;
-		break;
-	default:
-		return -EINVAL;
-	}
+	reg += OMAP_GPIO_OE;
 
 	val = __raw_readl(reg);
 	val &= ~(1 << get_gpio_index(gpio));
@@ -163,22 +146,15 @@ int gpio_direction_output(unsigned gpio, int value)
 
 int gpio_get_value(unsigned gpio)
 {
-	struct gpio_bank *bank;
-	void *reg;
+	void __iomem *reg;
 
 	if (check_gpio(gpio) < 0)
 		return -EINVAL;
-	bank = get_gpio_bank(gpio);
-	reg = bank->base;
-	switch (bank->method) {
-	case METHOD_GPIO_24XX:
-		reg += OMAP24XX_GPIO_DATAIN;
-		break;
-	default:
-		return -EINVAL;
-	}
-	return (__raw_readl(reg)
-			& (1 << get_gpio_index(gpio))) != 0;
+	reg = get_gpio_base(gpio);
+
+	reg += OMAP_GPIO_DATAIN;
+
+	return (__raw_readl(reg) & (1 << get_gpio_index(gpio))) != 0;
 }
 
 static void _reset_gpio(int gpio)
@@ -196,11 +172,8 @@ int omap_request_gpio(int gpio)
 
 void omap_free_gpio(int gpio)
 {
-	struct gpio_bank *bank;
-
 	if (check_gpio(gpio) < 0)
 		return;
-	bank = get_gpio_bank(gpio);
 
 	_reset_gpio(gpio);
 }
diff --git a/arch/arm/mach-omap/include/mach/gpio.h b/arch/arm/mach-omap/include/mach/gpio.h
index 9840b6e..6758f9c 100644
--- a/arch/arm/mach-omap/include/mach/gpio.h
+++ b/arch/arm/mach-omap/include/mach/gpio.h
@@ -38,48 +38,6 @@
 #ifndef _GPIO_H
 #define _GPIO_H
 
-#define OMAP24XX_GPIO_REVISION		0x0000
-#define OMAP24XX_GPIO_SYSCONFIG		0x0010
-#define OMAP24XX_GPIO_SYSSTATUS		0x0014
-#define OMAP24XX_GPIO_IRQSTATUS1	0x0018
-#define OMAP24XX_GPIO_IRQSTATUS2	0x0028
-#define OMAP24XX_GPIO_IRQENABLE2	0x002c
-#define OMAP24XX_GPIO_IRQENABLE1	0x001c
-#define OMAP24XX_GPIO_WAKE_EN		0x0020
-#define OMAP24XX_GPIO_CTRL		0x0030
-#define OMAP24XX_GPIO_OE		0x0034
-#define OMAP24XX_GPIO_DATAIN		0x0038
-#define OMAP24XX_GPIO_DATAOUT		0x003c
-#define OMAP24XX_GPIO_LEVELDETECT0	0x0040
-#define OMAP24XX_GPIO_LEVELDETECT1	0x0044
-#define OMAP24XX_GPIO_RISINGDETECT	0x0048
-#define OMAP24XX_GPIO_FALLINGDETECT	0x004c
-#define OMAP24XX_GPIO_DEBOUNCE_EN	0x0050
-#define OMAP24XX_GPIO_DEBOUNCE_VAL	0x0054
-#define OMAP24XX_GPIO_CLEARIRQENABLE1	0x0060
-#define OMAP24XX_GPIO_SETIRQENABLE1	0x0064
-#define OMAP24XX_GPIO_CLEARWKUENA	0x0080
-#define OMAP24XX_GPIO_SETWKUENA		0x0084
-#define OMAP24XX_GPIO_CLEARDATAOUT	0x0090
-#define OMAP24XX_GPIO_SETDATAOUT	0x0094
-
-struct gpio_bank {
-	void *base;
-	int method;
-};
-
-/* OMAP3 GPIO registers */
-#define OMAP34XX_GPIO1_BASE		0x48310000
-#define OMAP34XX_GPIO2_BASE		0x49050000
-#define OMAP34XX_GPIO3_BASE		0x49052000
-#define OMAP34XX_GPIO4_BASE		0x49054000
-#define OMAP34XX_GPIO5_BASE		0x49056000
-#define OMAP34XX_GPIO6_BASE		0x49058000
-
-#define METHOD_GPIO_24XX	4
-
-/* This is the interface */
-
 /* Request a gpio before using it */
 int omap_request_gpio(int gpio);
 /* Reset and free a gpio after using it */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
