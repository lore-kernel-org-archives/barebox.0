Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvh9y-0002VO-KJ
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 11:32:41 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1gvh9p-00081l-Ke
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 12:32:21 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Mon, 18 Feb 2019 12:32:16 +0100
Message-Id: <20190218113220.18649-5-tomaz.solc@tablix.org>
In-Reply-To: <20190218113220.18649-1-tomaz.solc@tablix.org>
References: <20190218113220.18649-1-tomaz.solc@tablix.org>
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
Subject: [PATCH v2 4/8] pinctrl: bcm2835: register the pin controller.
To: barebox@lists.infradead.org

This adds hooks for the pin controller driver to the existing
bcm2835_set_function().
---
 drivers/pinctrl/pinctrl-bcm2835.c | 52 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 51 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-bcm2835.c b/drivers/pinctrl/pinctrl-bcm2835.c
index 1802ab7cc..5fd5740e8 100644
--- a/drivers/pinctrl/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/pinctrl-bcm2835.c
@@ -1,7 +1,9 @@
 /*
  * Author: Carlo Caione <carlo@carlocaione.org>
  *
- * Based on linux/arch/arm/mach-bcm2708/bcm2708_gpio.c
+ * GPIO code based on linux/arch/arm/mach-bcm2708/bcm2708_gpio.c
+ *
+ * pinctrl part added by Tomaz Solc <tomaz.solc@tablix.org>
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -21,6 +23,7 @@
 #include <io.h>
 #include <gpio.h>
 #include <init.h>
+#include <pinctrl.h>
 
 #define GPIOFSEL(x)  (0x00+(x)*4)
 #define GPIOSET(x)   (0x1c+(x)*4)
@@ -46,6 +49,7 @@ enum {
 struct bcm2835_gpio_chip {
 	void __iomem *base;
 	struct gpio_chip chip;
+	struct pinctrl_device pctl;
 };
 
 static int bcm2835_set_function(struct gpio_chip *chip, unsigned gpio, int function)
@@ -110,6 +114,39 @@ static struct gpio_ops bcm2835_gpio_ops = {
 	.set = bcm2835_gpio_set_value,
 };
 
+static int bcm2835_pinctrl_set_state(struct pinctrl_device *pdev, struct device_node *np)
+{
+	const __be32 *list;
+	u32 function;
+	int i, size;
+
+	list = of_get_property(np, "brcm,pins", &size);
+	if (!list) {
+		return -EINVAL;
+	}
+
+	size /= sizeof(*list);
+
+	if (of_property_read_u32(np, "brcm,function", &function)) {
+		return -EINVAL;
+	}
+
+	for (i = 0; i < size; i++) {
+		int pin = be32_to_cpu(list[i]);
+		struct bcm2835_gpio_chip *bcmgpio = container_of(pdev, struct bcm2835_gpio_chip, pctl);
+
+		dev_dbg(pdev->dev, "set_state pin %d to function %d\n", pin, function);
+
+		bcm2835_set_function(&bcmgpio->chip, pin, function);
+	}
+
+	return 0;
+}
+
+static struct pinctrl_ops bcm2835_pinctrl_ops = {
+	.set_state = bcm2835_pinctrl_set_state,
+};
+
 static int bcm2835_gpio_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -125,14 +162,27 @@ static int bcm2835_gpio_probe(struct device_d *dev)
 	bcmgpio->chip.base = 0;
 	bcmgpio->chip.ngpio = 54;
 	bcmgpio->chip.dev = dev;
+	bcmgpio->pctl.ops = &bcm2835_pinctrl_ops;
+	bcmgpio->pctl.dev = dev;
 
 	ret = gpiochip_add(&bcmgpio->chip);
 	if (ret) {
 		dev_err(dev, "couldn't add gpiochip, ret = %d\n", ret);
 		goto err;
 	}
+
 	dev_info(dev, "probed gpiochip%d with base %d\n", dev->id, bcmgpio->chip.base);
 
+	if (IS_ENABLED(CONFIG_PINCTRL)) {
+		ret = pinctrl_register(&bcmgpio->pctl);
+		if (ret) {
+			dev_err(dev, "couldn't add pinctrl, ret = %d\n", ret);
+			// don't free bcmgpio, since it's already used by gpiochip.
+		} else {
+			dev_dbg(dev, "bcm283x pinctrl registered\n");
+		}
+	}
+
 	return 0;
 
 err:
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
