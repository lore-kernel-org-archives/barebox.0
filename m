Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKyv1-0006Qv-1P
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 22:01:53 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so2100962wgb.18
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2012 15:01:50 -0700 (PDT)
From: Vicente <vicencb@gmail.com>
Date: Mon,  8 Oct 2012 00:01:18 +0200
Message-Id: <1349647287-28224-5-git-send-email-vicencb@gmail.com>
In-Reply-To: <1349647287-28224-1-git-send-email-vicencb@gmail.com>
References: <1349647287-28224-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 04/13] omap: revert gpiolib
To: barebox@lists.infradead.org
Cc: Vicente <vicencb@gmail.com>


Signed-off-by: Vicente <vicencb@gmail.com>
---
 arch/arm/Kconfig                   |   1 -
 arch/arm/mach-omap/gpio.c          | 170 ++++++++++++++++++++-----------------
 arch/arm/mach-omap/omap3_generic.c |  19 -----
 arch/arm/mach-omap/omap4_generic.c |  19 -----
 4 files changed, 93 insertions(+), 116 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8278c82..1cb56c5 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -60,7 +60,6 @@ config ARCH_NOMADIK
 config ARCH_OMAP
 	bool "TI OMAP"
 	select HAS_DEBUG_LL
-	select GPIOLIB
 
 config ARCH_PXA
 	bool "Intel/Marvell PXA based"
diff --git a/arch/arm/mach-omap/gpio.c b/arch/arm/mach-omap/gpio.c
index 376e9a7..bb5f30f 100644
--- a/arch/arm/mach-omap/gpio.c
+++ b/arch/arm/mach-omap/gpio.c
@@ -32,10 +32,11 @@
  * published by the Free Software Foundation.
  */
 #include <common.h>
+#include <mach/gpio.h>
 #include <io.h>
 #include <errno.h>
-#include <gpio.h>
-#include <init.h>
+
+#ifdef CONFIG_ARCH_OMAP3
 
 #define OMAP_GPIO_OE		0x0034
 #define OMAP_GPIO_DATAIN	0x0038
@@ -43,114 +44,129 @@
 #define OMAP_GPIO_CLEARDATAOUT	0x0090
 #define OMAP_GPIO_SETDATAOUT	0x0094
 
-struct omap_gpio_chip {
-	void __iomem *base;
-	struct gpio_chip chip;
+static void __iomem *gpio_bank[] = {
+	(void *)0x48310000,
+	(void *)0x49050000,
+	(void *)0x49052000,
+	(void *)0x49054000,
+	(void *)0x49056000,
+	(void *)0x49058000,
+};
+#endif
+
+#ifdef CONFIG_ARCH_OMAP4
+
+#define OMAP_GPIO_OE		0x0134
+#define OMAP_GPIO_DATAIN	0x0138
+#define OMAP_GPIO_DATAOUT	0x013c
+#define OMAP_GPIO_CLEARDATAOUT	0x0190
+#define OMAP_GPIO_SETDATAOUT	0x0194
+
+static void __iomem *gpio_bank[] = {
+	(void *)0x4a310000,
+	(void *)0x48055000,
+	(void *)0x48057000,
+	(void *)0x48059000,
+	(void *)0x4805b000,
+	(void *)0x4805d000,
 };
+#endif
 
-static inline int omap_get_gpio_index(int gpio)
+static inline void __iomem *get_gpio_base(int gpio)
 {
-	return gpio & 0x1f;
+	return gpio_bank[gpio >> 5];
 }
 
-static void omap_gpio_set_value(struct gpio_chip *chip,
-					unsigned gpio, int value)
+static inline int get_gpio_index(int gpio)
 {
-	struct omap_gpio_chip *omapgpio =
-			container_of(chip, struct omap_gpio_chip, chip);
-	void __iomem *base = omapgpio->base;
-	u32 l = 0;
-
-	if (value)
-		base += OMAP_GPIO_SETDATAOUT;
-	else
-		base += OMAP_GPIO_CLEARDATAOUT;
+	return gpio & 0x1f;
+}
 
-	l = 1 << omap_get_gpio_index(gpio);
+static inline int gpio_valid(int gpio)
+{
+	if (gpio < 0)
+		return -1;
+	if (gpio / 32 < ARRAY_SIZE(gpio_bank))
+		return 0;
+	return -1;
+}
 
-	writel(l, base);
+static int check_gpio(int gpio)
+{
+	if (gpio_valid(gpio) < 0) {
+		printf("ERROR : check_gpio: invalid GPIO %d\n", gpio);
+		return -1;
+	}
+	return 0;
 }
 
-static int omap_gpio_direction_input(struct gpio_chip *chip,
-					unsigned gpio)
+void gpio_set_value(unsigned gpio, int value)
 {
-	struct omap_gpio_chip *omapgpio =
-			container_of(chip, struct omap_gpio_chip, chip);
-	void __iomem *base = omapgpio->base;
-	u32 val;
+	void __iomem *reg;
+	u32 l = 0;
 
-	base += OMAP_GPIO_OE;
+	if (check_gpio(gpio) < 0)
+		return;
 
-	val = readl(base);
-	val |= 1 << omap_get_gpio_index(gpio);
-	writel(val, base);
+	reg = get_gpio_base(gpio);
 
-	return 0;
+	if (value)
+		reg += OMAP_GPIO_SETDATAOUT;
+	else
+		reg += OMAP_GPIO_CLEARDATAOUT;
+	l = 1 << get_gpio_index(gpio);
+
+	__raw_writel(l, reg);
 }
 
-static int omap_gpio_direction_output(struct gpio_chip *chip,
-					unsigned gpio, int value)
+int gpio_direction_input(unsigned gpio)
 {
-	struct omap_gpio_chip *omapgpio =
-			container_of(chip, struct omap_gpio_chip, chip);
-	void __iomem *base = omapgpio->base;
+	void __iomem *reg;
 	u32 val;
 
-	omap_gpio_set_value(chip, gpio, value);
+	if (check_gpio(gpio) < 0)
+		return -EINVAL;
+
+	reg = get_gpio_base(gpio);
 
-	base += OMAP_GPIO_OE;
+	reg += OMAP_GPIO_OE;
 
-	val = readl(base);
-	val &= ~(1 << omap_get_gpio_index(gpio));
-	writel(val, base);
+	val = __raw_readl(reg);
+	val |= 1 << get_gpio_index(gpio);
+	__raw_writel(val, reg);
 
 	return 0;
 }
 
-static int omap_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
+int gpio_direction_output(unsigned gpio, int value)
 {
-	struct omap_gpio_chip *omapgpio =
-			container_of(chip, struct omap_gpio_chip, chip);
-	void __iomem *base = omapgpio->base;
-
-	base  += OMAP_GPIO_DATAIN;
-
-	return (readl(base) & (1 << omap_get_gpio_index(gpio))) != 0;
-
-}
+	void __iomem *reg;
+	u32 val;
 
-static struct gpio_ops omap_gpio_ops = {
-	.direction_input = omap_gpio_direction_input,
-	.direction_output = omap_gpio_direction_output,
-	.get = omap_gpio_get_value,
-	.set = omap_gpio_set_value,
-};
+	if (check_gpio(gpio) < 0)
+		return -EINVAL;
+	reg = get_gpio_base(gpio);
 
-static int omap_gpio_probe(struct device_d *dev)
-{
-	struct omap_gpio_chip *omapgpio;
+	gpio_set_value(gpio, value);
 
-	omapgpio = xzalloc(sizeof(*omapgpio));
-	omapgpio->base = dev_request_mem_region(dev, 0);
-	omapgpio->chip.ops = &omap_gpio_ops;
-	omapgpio->chip.base = -1;
-	omapgpio->chip.ngpio = 32;
-	omapgpio->chip.dev = dev;
-	gpiochip_add(&omapgpio->chip);
+	reg += OMAP_GPIO_OE;
 
-	dev_dbg(dev, "probed gpiochip%d with base %d\n",
-				dev->id, omapgpio->chip.base);
+	val = __raw_readl(reg);
+	val &= ~(1 << get_gpio_index(gpio));
+	__raw_writel(val, reg);
 
 	return 0;
 }
 
-static struct driver_d omap_gpio_driver = {
-	.name = "omap-gpio",
-	.probe = omap_gpio_probe,
-};
-
-static int omap_gpio_add(void)
+int gpio_get_value(unsigned gpio)
 {
-	return platform_driver_register(&omap_gpio_driver);
+	void __iomem *reg;
+
+	if (check_gpio(gpio) < 0)
+		return -EINVAL;
+	reg = get_gpio_base(gpio);
+
+	reg += OMAP_GPIO_DATAIN;
+
+	return (__raw_readl(reg) & (1 << get_gpio_index(gpio))) != 0;
 }
-coredevice_initcall(omap_gpio_add);
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 5028e9a..af26af4 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -511,22 +511,3 @@ const struct gpmc_config omap3_nand_cfg = {
 	.base = 0x28000000,
 	.size = GPMC_SIZE_16M,
 };
-
-static int omap3_gpio_init(void)
-{
-	add_generic_device("omap-gpio", 0, NULL, 0x48310000,
-					0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("omap-gpio", 1, NULL, 0x49050000,
-					0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("omap-gpio", 2, NULL, 0x49052000,
-					0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("omap-gpio", 3, NULL, 0x49054000,
-					0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("omap-gpio", 4, NULL, 0x49056000,
-					0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("omap-gpio", 5, NULL, 0x49058000,
-					0x100, IORESOURCE_MEM, NULL);
-
-	return 0;
-}
-coredevice_initcall(omap3_gpio_init);
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index a159dfc..617d786 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -572,22 +572,3 @@ const struct gpmc_config omap4_nand_cfg = {
 	.base = 0x28000000,
 	.size = GPMC_SIZE_16M,
 };
-
-static int omap4_gpio_init(void)
-{
-	add_generic_device("omap-gpio", 0, NULL, 0x4a310100,
-				0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("omap-gpio", 1, NULL, 0x48055100,
-				0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("omap-gpio", 2, NULL, 0x48057100,
-				0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("omap-gpio", 3, NULL, 0x48059100,
-				0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("omap-gpio", 4, NULL, 0x4805b100,
-				0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("omap-gpio", 5, NULL, 0x4805d100,
-				0x1000, IORESOURCE_MEM, NULL);
-
-	return 0;
-}
-coredevice_initcall(omap4_gpio_init);
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
