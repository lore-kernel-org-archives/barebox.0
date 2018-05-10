Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGnNB-0007mR-RJ
 for barebox@lists.infradead.org; Thu, 10 May 2018 15:20:52 +0000
Received: by mail-wm0-x241.google.com with SMTP id y189-v6so5032961wmc.3
 for <barebox@lists.infradead.org>; Thu, 10 May 2018 08:20:38 -0700 (PDT)
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Date: Thu, 10 May 2018 18:20:18 +0300
Message-Id: <20180510152019.9607-1-nikita.yoush@cogentembedded.com>
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
Subject: [PATCH 1/2] clk: add clk-gpio driver
To: Sascha Hauer <sha@pengutronix.de>
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>, barebox@lists.infradead.org, Chris Healy <cphealy@gmail.com>

This implements support for gpio-gate-clock device tree nodes, that
define clocks that can be enabled or disabled via GPIO line.

Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
---
 drivers/clk/Makefile   |   2 +-
 drivers/clk/clk-gpio.c | 130 +++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 131 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/clk-gpio.c

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 55ac9535a..cd4026c94 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -1,7 +1,7 @@
 obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o \
 				clk-mux.o clk-gate.o clk-composite.o \
 				clk-fractional-divider.o clk-conf.o \
-				clk-gate-shared.o
+				clk-gate-shared.o clk-gpio.o
 obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
 
 obj-$(CONFIG_ARCH_MVEBU)	+= mvebu/
diff --git a/drivers/clk/clk-gpio.c b/drivers/clk/clk-gpio.c
new file mode 100644
index 000000000..352c85dfe
--- /dev/null
+++ b/drivers/clk/clk-gpio.c
@@ -0,0 +1,130 @@
+/*
+ * clk-gpio.c - clock that can be enabled and disabled via GPIO output
+ * Based on Linux clk support
+ *
+ * Copyright (c) 2018 Nikita Yushchenko <nikita.yoush@cogentembedded.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <gpio.h>
+#include <of_gpio.h>
+#include <init.h>
+
+struct clk_gpio {
+	struct clk clk;
+	const char *parent;
+	int gpio;
+};
+#define to_clk_gpio(_clk) container_of(_clk, struct clk_gpio, clk)
+
+static int clk_gpio_enable(struct clk *clk)
+{
+	struct clk_gpio *clk_gpio = to_clk_gpio(clk);
+
+	gpio_set_active(clk_gpio->gpio, true);
+	return 0;
+}
+
+static void clk_gpio_disable(struct clk *clk)
+{
+	struct clk_gpio *clk_gpio = to_clk_gpio(clk);
+
+	gpio_set_active(clk_gpio->gpio, false);
+}
+
+static int clk_gpio_is_enabled(struct clk *clk)
+{
+	struct clk_gpio *clk_gpio = to_clk_gpio(clk);
+
+	return gpio_is_active(clk_gpio->gpio);
+}
+
+static struct clk_ops clk_gpio_ops = {
+	.set_rate = clk_parent_set_rate,
+	.round_rate = clk_parent_round_rate,
+	.enable = clk_gpio_enable,
+	.disable = clk_gpio_disable,
+	.is_enabled = clk_gpio_is_enabled,
+};
+
+static int of_gpio_clk_setup(struct device_node *node)
+{
+	struct clk_gpio *clk_gpio;
+	enum of_gpio_flags of_flags;
+	unsigned long flags;
+	int ret;
+
+	clk_gpio = xzalloc(sizeof(*clk_gpio));
+	if (!clk_gpio)
+		return -ENOMEM;
+
+	clk_gpio->parent = of_clk_get_parent_name(node, 0);
+	if (!clk_gpio->parent) {
+		ret = -EINVAL;
+		goto no_parent;
+	}
+
+	clk_gpio->clk.ops = &clk_gpio_ops;
+	clk_gpio->clk.parent_names = &clk_gpio->parent;
+	clk_gpio->clk.num_parents = 1;
+
+	clk_gpio->clk.name = node->name;
+	of_property_read_string(node, "clock-output-names",
+			&clk_gpio->clk.name);
+
+	ret = of_get_named_gpio_flags(node, "enable-gpios", 0,
+			&of_flags);
+	if (ret >= 0 && !gpio_is_valid(ret))
+		ret = -EINVAL;
+	if (ret < 0)
+		goto no_gpio;
+	clk_gpio->gpio = ret;
+
+	flags = GPIOF_OUT_INIT_ACTIVE;
+	if (of_flags & OF_GPIO_ACTIVE_LOW)
+		flags |= GPIOF_ACTIVE_LOW;
+	ret = gpio_request_one(clk_gpio->gpio, flags, clk_gpio->clk.name);
+	if (ret)
+		goto no_request;
+
+	ret = clk_register(&clk_gpio->clk);
+	if (ret)
+		goto no_register;
+
+	return of_clk_add_provider(node, of_clk_src_simple_get, &clk_gpio->clk);
+
+no_register:
+	gpio_free(clk_gpio->gpio);
+no_request:
+no_gpio:
+no_parent:
+	free(clk_gpio);
+	return ret;
+}
+
+/* Can't use OF_CLK_DECLARE due to need to run after GPIOcontrollers have
+ * registrered */
+
+static const struct of_device_id clk_gpio_device_id[] = {
+	{ .compatible = "gpio-gate-clock", .data = of_gpio_clk_setup, },
+	{}
+};
+
+static int clk_gpio_init(void)
+{
+	return of_clk_init(NULL, clk_gpio_device_id);
+}
+coredevice_initcall(clk_gpio_init);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
