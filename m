Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBtDt-00047v-B7
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 20:07:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2012 22:06:38 +0200
Message-Id: <1347480407-16865-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
References: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/15] ARM i.MX: Use platform_device_id for gpio driver
To: barebox@lists.infradead.org

So we get the type of the gpio controller from the device

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/gpio.c  |   72 +++++++++++++++++++++++++++++----------------
 arch/arm/mach-imx/imx1.c  |    8 ++---
 arch/arm/mach-imx/imx21.c |   12 ++++----
 arch/arm/mach-imx/imx25.c |    8 ++---
 arch/arm/mach-imx/imx27.c |   15 +++++-----
 arch/arm/mach-imx/imx31.c |    6 ++--
 arch/arm/mach-imx/imx35.c |    6 ++--
 arch/arm/mach-imx/imx51.c |    8 ++---
 arch/arm/mach-imx/imx53.c |   14 ++++-----
 arch/arm/mach-imx/imx6.c  |   14 ++++-----
 10 files changed, 91 insertions(+), 72 deletions(-)

diff --git a/arch/arm/mach-imx/gpio.c b/arch/arm/mach-imx/gpio.c
index 8d5d4ce..b7426fe 100644
--- a/arch/arm/mach-imx/gpio.c
+++ b/arch/arm/mach-imx/gpio.c
@@ -30,28 +30,28 @@
 #include <gpio.h>
 #include <init.h>
 
-#if defined CONFIG_ARCH_IMX1 || defined CONFIG_ARCH_IMX21 || defined CONFIG_ARCH_IMX27
-#define GPIO_DR		0x1c
-#define GPIO_GDIR	0x00
-#define GPIO_PSR	0x24
-#define GPIO_ICR1	0x28
-#define GPIO_ICR2	0x2C
-#define GPIO_IMR	0x30
-#define GPIO_ISR	0x34
-#else
-#define GPIO_DR		0x00
-#define GPIO_GDIR	0x04
-#define GPIO_PSR	0x08
-#define GPIO_ICR1	0x0C
-#define GPIO_ICR2	0x10
-#define GPIO_IMR	0x14
-#define GPIO_ISR	0x18
-#define GPIO_ISR	0x18
-#endif
-
 struct imx_gpio_chip {
 	void __iomem *base;
 	struct gpio_chip chip;
+	struct imx_gpio_regs *regs;
+};
+
+struct imx_gpio_regs {
+	unsigned int dr;
+	unsigned int gdir;
+	unsigned int psr;
+};
+
+static struct imx_gpio_regs regs_imx1 = {
+	.dr = 0x1c,
+	.gdir = 0x00,
+	.psr = 0x24,
+};
+
+static struct imx_gpio_regs regs_imx31 = {
+	.dr = 0x00,
+	.gdir = 0x04,
+	.psr = 0x08,
 };
 
 static void imx_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
@@ -63,14 +63,14 @@ static void imx_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
 	if (!base)
 		return;
 
-	val = readl(base + GPIO_DR);
+	val = readl(base + imxgpio->regs->dr);
 
 	if (value)
 		val |= 1 << gpio;
 	else
 		val &= ~(1 << gpio);
 
-	writel(val, base + GPIO_DR);
+	writel(val, base + imxgpio->regs->dr);
 }
 
 static int imx_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
@@ -82,9 +82,9 @@ static int imx_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
 	if (!base)
 		return -EINVAL;
 
-	val = readl(base + GPIO_GDIR);
+	val = readl(base + imxgpio->regs->gdir);
 	val &= ~(1 << gpio);
-	writel(val, base + GPIO_GDIR);
+	writel(val, base + imxgpio->regs->gdir);
 
 	return 0;
 }
@@ -98,9 +98,9 @@ static int imx_gpio_direction_output(struct gpio_chip *chip, unsigned gpio, int
 
 	gpio_set_value(gpio + chip->base, value);
 
-	val = readl(base + GPIO_GDIR);
+	val = readl(base + imxgpio->regs->gdir);
 	val |= 1 << gpio;
-	writel(val, base + GPIO_GDIR);
+	writel(val, base + imxgpio->regs->gdir);
 
 	return 0;
 }
@@ -111,7 +111,7 @@ static int imx_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
 	void __iomem *base = imxgpio->base;
 	u32 val;
 
-	val = readl(base + GPIO_PSR);
+	val = readl(base + imxgpio->regs->psr);
 
 	return val & (1 << gpio) ? 1 : 0;
 }
@@ -126,6 +126,12 @@ static struct gpio_ops imx_gpio_ops = {
 static int imx_gpio_probe(struct device_d *dev)
 {
 	struct imx_gpio_chip *imxgpio;
+	struct imx_gpio_regs *regs;
+	int ret;
+
+	ret = dev_get_drvdata(dev, (unsigned long *)&regs);
+	if (ret)
+		return ret;
 
 	imxgpio = xzalloc(sizeof(*imxgpio));
 	imxgpio->base = dev_request_mem_region(dev, 0);
@@ -133,6 +139,7 @@ static int imx_gpio_probe(struct device_d *dev)
 	imxgpio->chip.base = -1;
 	imxgpio->chip.ngpio = 32;
 	imxgpio->chip.dev = dev;
+	imxgpio->regs = regs;
 	gpiochip_add(&imxgpio->chip);
 
 	dev_info(dev, "probed gpiochip%d with base %d\n", dev->id, imxgpio->chip.base);
@@ -140,9 +147,22 @@ static int imx_gpio_probe(struct device_d *dev)
 	return 0;
 }
 
+static struct platform_device_id imx_gpio_ids[] = {
+	{
+		.name = "imx1-gpio",
+		.driver_data = (unsigned long)&regs_imx1,
+	}, {
+		.name = "imx31-gpio",
+		.driver_data = (unsigned long)&regs_imx31,
+	}, {
+		/* sentinel */
+	},
+};
+
 static struct driver_d imx_gpio_driver = {
 	.name = "imx-gpio",
 	.probe = imx_gpio_probe,
+	.id_table = imx_gpio_ids,
 };
 
 static int imx_gpio_add(void)
diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index 5a000bc..a81b244 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -20,10 +20,10 @@
 
 static int imx1_init(void)
 {
-	add_generic_device("imx-gpio", 0, NULL, 0x0021c000, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 1, NULL, 0x0021c100, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 2, NULL, 0x0021c200, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 3, NULL, 0x0021c300, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 0, NULL, 0x0021c000, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 1, NULL, 0x0021c100, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 2, NULL, 0x0021c200, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 3, NULL, 0x0021c300, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/imx21.c b/arch/arm/mach-imx/imx21.c
index 85590ee..619a826 100644
--- a/arch/arm/mach-imx/imx21.c
+++ b/arch/arm/mach-imx/imx21.c
@@ -28,12 +28,12 @@ int imx_silicon_revision(void)
 
 static int imx21_init(void)
 {
-	add_generic_device("imx-gpio", 0, NULL, 0x10015000, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 1, NULL, 0x10015100, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 2, NULL, 0x10015200, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 3, NULL, 0x10015300, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 4, NULL, 0x10015400, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 5, NULL, 0x10015500, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 0, NULL, 0x10015000, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 1, NULL, 0x10015100, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 2, NULL, 0x10015200, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 3, NULL, 0x10015300, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 4, NULL, 0x10015400, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 5, NULL, 0x10015500, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index d605022..183a492 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -48,10 +48,10 @@ static int imx25_init(void)
 	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
 			IORESOURCE_MEM, &imx25_iim_pdata);
 
-	add_generic_device("imx-gpio", 0, NULL, 0x53fcc000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 1, NULL, 0x53fd0000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 2, NULL, 0x53fa4000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 3, NULL, 0x53f9c000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 0, NULL, 0x53fcc000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 1, NULL, 0x53fd0000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 2, NULL, 0x53fa4000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 3, NULL, 0x53f9c000, 0x1000, IORESOURCE_MEM, NULL);
 	return 0;
 }
 coredevice_initcall(imx25_init);
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index c6e6942..8f0461d 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -72,13 +72,12 @@ static int imx27_init(void)
 			IORESOURCE_MEM, NULL);
 
 	imx27_init_max();
-
-	add_generic_device("imx-gpio", 0, NULL, 0x10015000, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 1, NULL, 0x10015100, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 2, NULL, 0x10015200, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 3, NULL, 0x10015300, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 4, NULL, 0x10015400, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 5, NULL, 0x10015500, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 0, NULL, 0x10015000, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 1, NULL, 0x10015100, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 2, NULL, 0x10015200, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 3, NULL, 0x10015300, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 4, NULL, 0x10015400, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx1-gpio", 5, NULL, 0x10015500, 0x100, IORESOURCE_MEM, NULL);
 	return 0;
 }
-coredevice_initcall(imx27_init);
+console_initcall(imx27_init);
diff --git a/arch/arm/mach-imx/imx31.c b/arch/arm/mach-imx/imx31.c
index 90dc4e3..faad11e 100644
--- a/arch/arm/mach-imx/imx31.c
+++ b/arch/arm/mach-imx/imx31.c
@@ -25,9 +25,9 @@ static int imx31_init(void)
 	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
-	add_generic_device("imx-gpio", 0, NULL, 0x53fcc000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 1, NULL, 0x53fd0000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 2, NULL, 0x53fa4000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 0, NULL, 0x53fcc000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 1, NULL, 0x53fd0000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 2, NULL, 0x53fa4000, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index efbee98..6952219 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -56,9 +56,9 @@ static int imx35_init(void)
 	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
-	add_generic_device("imx-gpio", 0, NULL, 0x53fcc000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 1, NULL, 0x53fd0000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 2, NULL, 0x53fa4000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 0, NULL, 0x53fcc000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 1, NULL, 0x53fd0000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 2, NULL, 0x53fa4000, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index e43cc65..6a394bf 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -78,10 +78,10 @@ static int imx51_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX51_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
-	add_generic_device("imx-gpio", 0, NULL, 0x73f84000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 1, NULL, 0x73f88000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 2, NULL, 0x73f8c000, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 3, NULL, 0x73f90000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 0, NULL, 0x73f84000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 1, NULL, 0x73f88000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 2, NULL, 0x73f8c000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 3, NULL, 0x73f90000, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index cb94575..228e47d 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -74,13 +74,13 @@ static int imx53_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX53_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
-	add_generic_device("imx-gpio", 0, NULL, MX53_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 1, NULL, MX53_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 2, NULL, MX53_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 3, NULL, MX53_GPIO4_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 4, NULL, MX53_GPIO5_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 5, NULL, MX53_GPIO6_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 6, NULL, MX53_GPIO7_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 0, NULL, MX53_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 1, NULL, MX53_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 2, NULL, MX53_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 3, NULL, MX53_GPIO4_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 4, NULL, MX53_GPIO5_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 5, NULL, MX53_GPIO6_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 6, NULL, MX53_GPIO7_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	return 0;
 }
 coredevice_initcall(imx53_init);
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index c693724..085b5c8 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -58,13 +58,13 @@ void imx6_init_lowlevel(void)
 
 static int imx6_init(void)
 {
-	add_generic_device("imx-gpio", 0, NULL, MX6_GPIO1_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 1, NULL, MX6_GPIO2_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 2, NULL, MX6_GPIO3_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 3, NULL, MX6_GPIO4_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 4, NULL, MX6_GPIO5_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 5, NULL, MX6_GPIO6_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx-gpio", 6, NULL, MX6_GPIO7_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 0, NULL, MX6_GPIO1_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 1, NULL, MX6_GPIO2_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 2, NULL, MX6_GPIO3_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 3, NULL, MX6_GPIO4_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 4, NULL, MX6_GPIO5_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 5, NULL, MX6_GPIO6_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-gpio", 6, NULL, MX6_GPIO7_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
