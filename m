Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQAUI-0007Zv-H5
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 08:37:19 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 14 Aug 2015 10:36:45 +0200
Message-Id: <1439541405-15388-4-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1439541405-15388-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1439541405-15388-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 4/4] gpio: dw: implement new bindings
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The gpio-driver was developed when the bindings where not stable.
As these have changed in the meantime, the driver has to be updated to
the status quo.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/gpio/gpio-dw.c | 79 +++++++++++++++++++++++++++++++++++---------------
 1 file changed, 55 insertions(+), 24 deletions(-)

diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index 362f365fa6a1..258e43b84e59 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -33,11 +33,15 @@
 #define DW_GPIO_CONFIG2_WIDTH(val, port)	(((val) >> ((port) * 4) & 0x1f) + 1)
 #define DW_GPIO_CONFIG1_NPORTS(val)		(((val) >> 2 & 0x3) + 1)
 
+struct dw_gpio {
+	void __iomem *regs;
+};
+
 struct dw_gpio_instance {
+	struct dw_gpio *parent;
 	struct gpio_chip chip;
 	u32 gpio_state;		/* GPIO state shadow register */
 	u32 gpio_dir;		/* GPIO direction shadow register */
-	void __iomem *regs;
 };
 
 static inline struct dw_gpio_instance *to_dw_gpio(struct gpio_chip *gc)
@@ -48,29 +52,32 @@ static inline struct dw_gpio_instance *to_dw_gpio(struct gpio_chip *gc)
 static int dw_gpio_get(struct gpio_chip *gc, unsigned offset)
 {
 	struct dw_gpio_instance *chip = to_dw_gpio(gc);
+	struct dw_gpio *parent = chip->parent;
 
-	return (readl(chip->regs + DW_GPIO_EXT) >> offset) & 1;
+	return (readl(parent->regs + DW_GPIO_EXT) >> offset) & 1;
 }
 
 static void dw_gpio_set(struct gpio_chip *gc, unsigned offset, int value)
 {
 	struct dw_gpio_instance *chip = to_dw_gpio(gc);
+	struct dw_gpio *parent = chip->parent;
 	u32 data_reg;
 
-	data_reg = readl(chip->regs + DW_GPIO_DR);
+	data_reg = readl(parent->regs + DW_GPIO_DR);
 	data_reg = (data_reg & ~(1<<offset)) | (value << offset);
-	writel(data_reg, chip->regs + DW_GPIO_DR);
+	writel(data_reg, parent->regs + DW_GPIO_DR);
 }
 
 static int dw_gpio_direction_input(struct gpio_chip *gc, unsigned offset)
 {
 	struct dw_gpio_instance *chip = to_dw_gpio(gc);
+	struct dw_gpio *parent = chip->parent;
 	u32 gpio_ddr;
 
 	/* Set pin as input, assumes software controlled IP */
-	gpio_ddr = readl(chip->regs + DW_GPIO_DDR);
+	gpio_ddr = readl(parent->regs + DW_GPIO_DDR);
 	gpio_ddr &= ~(1 << offset);
-	writel(gpio_ddr, chip->regs + DW_GPIO_DDR);
+	writel(gpio_ddr, parent->regs + DW_GPIO_DDR);
 
 	return 0;
 }
@@ -79,14 +86,15 @@ static int dw_gpio_direction_output(struct gpio_chip *gc,
 		unsigned offset, int value)
 {
 	struct dw_gpio_instance *chip = to_dw_gpio(gc);
+	struct dw_gpio *parent = chip->parent;
 	u32 gpio_ddr;
 
 	dw_gpio_set(gc, offset, value);
 
 	/* Set pin as output, assumes software controlled IP */
-	gpio_ddr = readl(chip->regs + DW_GPIO_DDR);
+	gpio_ddr = readl(parent->regs + DW_GPIO_DDR);
 	gpio_ddr |= (1 << offset);
-	writel(gpio_ddr, chip->regs + DW_GPIO_DDR);
+	writel(gpio_ddr, parent->regs + DW_GPIO_DDR);
 
 	return 0;
 }
@@ -94,8 +102,9 @@ static int dw_gpio_direction_output(struct gpio_chip *gc,
 static int dw_gpio_get_direction(struct gpio_chip *gc, unsigned offset)
 {
 	struct dw_gpio_instance *chip = to_dw_gpio(gc);
+	struct dw_gpio *parent = chip->parent;
 
-	return (readl(chip->regs + DW_GPIO_DDR) & (1 << offset)) ?
+	return (readl(parent->regs + DW_GPIO_DDR) & (1 << offset)) ?
 		GPIOF_DIR_OUT : GPIOF_DIR_IN;
 }
 
@@ -107,47 +116,69 @@ static struct gpio_ops dw_gpio_ops = {
 	.set = dw_gpio_set,
 };
 
-static int dw_gpio_probe(struct device_d *dev)
+static int dw_gpio_add_port(struct device_d *dev, struct device_node *node,
+			    struct dw_gpio *parent)
 {
 	struct dw_gpio_instance *chip;
 	uint32_t config1, config2;
 	int ngpio, ret;
 
 	chip = xzalloc(sizeof(*chip));
-	chip->regs = dev_request_mem_region(dev, 0);
-	if (IS_ERR(chip->regs))
-		return PTR_ERR(chip->regs);
 
 	chip->chip.ops = &dw_gpio_ops;
-	if (dev->id < 0) {
-		chip->chip.base = of_alias_get_id(dev->device_node, "gpio");
-		if (chip->chip.base < 0)
-			return chip->chip.base;
-		chip->chip.base *= 32;
-	} else {
+	if (dev->id < 0)
+		chip->chip.base = DEVICE_ID_DYNAMIC;
+	else
 		chip->chip.base = dev->id * 32;
-	}
 
-	config2 = readl(chip->regs + DW_GPIO_CONFIG2);
-	config1 = readl(chip->regs + DW_GPIO_CONFIG1);
+	config2 = readl(parent->regs + DW_GPIO_CONFIG2);
+	config1 = readl(parent->regs + DW_GPIO_CONFIG1);
 	ngpio = DW_GPIO_CONFIG2_WIDTH(config2, 0);
 
 	if (DW_GPIO_CONFIG1_NPORTS(config1) > 1)
 		dev_info(dev, "ignoring ports B-D\n");
 
+	chip->parent = parent;
 	chip->chip.ngpio = ngpio;
-	chip->chip.dev = dev;
+	chip->chip.dev = add_generic_device("dw-port", DEVICE_ID_DYNAMIC, NULL,
+					    dev->resource[0].start,
+					    resource_size(&dev->resource[0]),
+					    IORESOURCE_MEM, NULL);
+
+	if (!chip->chip.dev) {
+		dev_err(dev, "unable to add device\n");
+		return -ENODEV;
+	}
+
+	chip->chip.dev->device_node = node;
 
 	ret = gpiochip_add(&chip->chip);
 	if (ret)
 		return ret;
 
-	dev_dbg(dev, "probed gpiochip with %d gpios, base %d\n",
+	dev_dbg(chip->chip.dev, "probed gpiochip with %d gpios, base %d\n",
 			chip->chip.ngpio, chip->chip.base);
 
 	return 0;
 }
 
+static int dw_gpio_probe(struct device_d *dev)
+{
+	struct dw_gpio *gpio;
+	struct device_node *node;
+
+	gpio = xzalloc(sizeof(*gpio));
+
+	gpio->regs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(gpio->regs))
+		return PTR_ERR(gpio->regs);
+
+	for_each_child_of_node(dev->device_node, node)
+		dw_gpio_add_port(dev, node, gpio);
+
+	return 0;
+}
+
 static __maybe_unused struct of_device_id dwgpio_match[] = {
 	{
 		.compatible = "snps,dw-apb-gpio",
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
