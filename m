Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dCpCb-0008T4-Ke
 for barebox@lists.infradead.org; Mon, 22 May 2017 15:24:59 +0000
Received: by mail-pf0-x244.google.com with SMTP id w69so20721710pfk.1
 for <barebox@lists.infradead.org>; Mon, 22 May 2017 08:24:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 22 May 2017 08:24:19 -0700
Message-Id: <20170522152420.14443-3-andrew.smirnov@gmail.com>
In-Reply-To: <20170522152420.14443-1-andrew.smirnov@gmail.com>
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/4] gpiolib: Add support for GPIO "hog" nodes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Nikita Yushchenko <nikita.yoush@cogentembedded.com>, cphealy@gmail.com

Add code to support 'gpio-hog' nodes used in some .dts files in Linux
kernel.

Cc: cphealy@gmail.com
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/gpio/gpiolib.c | 79 +++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 78 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 9e9df355..959adba 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -5,6 +5,7 @@
 #include <command.h>
 #include <complete.h>
 #include <gpio.h>
+#include <of_gpio.h>
 #include <errno.h>
 #include <malloc.h>
 
@@ -287,6 +288,82 @@ static int gpiochip_find_base(int start, int ngpio)
 	return base;
 }
 
+static int of_hog_gpio(struct device_node *np, struct gpio_chip *chip,
+		       unsigned int idx)
+{
+	struct device_node *chip_np = chip->dev->device_node;
+	unsigned long flags = 0;
+	u32 gpio_cells, gpio_num, gpio_flags;
+	int ret, gpio;
+	const char *name = NULL;
+
+	ret = of_property_read_u32(chip_np, "#gpio-cells", &gpio_cells);
+	if (ret)
+		return ret;
+
+	if (WARN_ON(gpio_cells != 2))
+		return -ENOTSUPP;
+
+	ret = of_property_read_u32_index(np, "gpios", idx * gpio_cells,
+					 &gpio_num);
+	if (ret)
+		return ret;
+
+	ret = of_property_read_u32_index(np, "gpios", idx * gpio_cells + 1,
+					 &gpio_flags);
+	if (ret)
+		return ret;
+
+	if (gpio_flags & OF_GPIO_ACTIVE_LOW)
+		flags |= GPIOF_ACTIVE_LOW;
+
+	gpio = gpio_get_num(chip->dev, gpio_num);
+	if (ret == -EPROBE_DEFER)
+		return ret;
+
+	if (ret < 0) {
+		dev_err(chip->dev, "unable to get gpio %u\n", gpio_num);
+		return ret;
+	}
+
+	if (of_property_read_bool(np, "input"))
+		flags |= GPIOF_DIR_IN;
+	else if (of_property_read_bool(np, "output-low"))
+		flags |= GPIOF_OUT_INIT_LOW;
+	else if (of_property_read_bool(np, "output-high"))
+		flags |= GPIOF_OUT_INIT_HIGH;
+	else
+		return -EINVAL;
+
+	of_property_read_string(np, "line-name", &name);
+
+	return gpio_request_one(gpio, flags, name);
+}
+
+static int of_gpiochip_scan_gpios(struct gpio_chip *chip)
+{
+	struct device_node *np;
+	int ret, i;
+
+	for_each_available_child_of_node(chip->dev->device_node, np) {
+		if (!of_property_read_bool(np, "gpio-hog"))
+			continue;
+
+		for (ret = 0, i = 0;
+		     !ret;
+		     ret = of_hog_gpio(np, chip, i), i++)
+			;
+		/*
+		 * We ignore -EOVERFLOW because it serves us as an
+		 * indicator that there's no more GPIOs to handle.
+		 */
+		if (ret < 0 && ret != -EOVERFLOW)
+			return ret;
+	}
+
+	return 0;
+}
+
 int gpiochip_add(struct gpio_chip *chip)
 {
 	int base, i;
@@ -305,7 +382,7 @@ int gpiochip_add(struct gpio_chip *chip)
 	for (i = chip->base; i < chip->base + chip->ngpio; i++)
 		gpio_desc[i].chip = chip;
 
-	return 0;
+	return of_gpiochip_scan_gpios(chip);
 }
 
 void gpiochip_remove(struct gpio_chip *chip)
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
