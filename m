Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJONM-0006Tf-Mh
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 14:25:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2014 15:24:54 +0100
Message-Id: <1393597495-13896-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393597495-13896-1-git-send-email-s.hauer@pengutronix.de>
References: <1393597495-13896-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] led: Add pwm-led driver
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/led/Kconfig   |  4 +++
 drivers/led/Makefile  |  1 +
 drivers/led/led-pwm.c | 93 +++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 98 insertions(+)
 create mode 100644 drivers/led/led-pwm.c

diff --git a/drivers/led/Kconfig b/drivers/led/Kconfig
index 3ead82e..155a78a 100644
--- a/drivers/led/Kconfig
+++ b/drivers/led/Kconfig
@@ -7,6 +7,10 @@ config LED_GPIO
 	bool "gpio LED support"
 	depends on GENERIC_GPIO
 
+config LED_PWM
+	bool "PWM LED support"
+	depends on PWM
+
 config LED_GPIO_OF
 	bool "support parsing gpio LEDs from device tree"
 	depends on LED_GPIO && OFTREE
diff --git a/drivers/led/Makefile b/drivers/led/Makefile
index 6aafa6d..619bbcf 100644
--- a/drivers/led/Makefile
+++ b/drivers/led/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_LED) += core.o
 obj-$(CONFIG_LED_GPIO) += led-gpio.o
+obj-$(CONFIG_LED_PWM) += led-pwm.o
 obj-$(CONFIG_LED_TRIGGERS) += led-triggers.o
diff --git a/drivers/led/led-pwm.c b/drivers/led/led-pwm.c
new file mode 100644
index 0000000..16d22b5
--- /dev/null
+++ b/drivers/led/led-pwm.c
@@ -0,0 +1,93 @@
+/*
+ * pwm LED support for barebox
+ *
+ * (C) Copyright 2010 Sascha Hauer, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+#include <init.h>
+#include <led.h>
+#include <pwm.h>
+#include <of.h>
+#include <asm-generic/div64.h>
+
+struct pwmled {
+	bool active_low;
+	struct led led;
+	struct pwm_device *pwm;
+	uint32_t period;
+};
+
+static void led_pwm_set(struct led *led, unsigned int brightness)
+{
+	struct pwmled *pwmled = container_of(led, struct pwmled, led);
+	unsigned long long duty =  pwmled->period;
+	unsigned int max = pwmled->led.max_value;
+
+        duty *= brightness;
+        do_div(duty, max);
+
+	pwm_config(pwmled->pwm, duty, pwmled->period);
+}
+
+static int led_pwm_of_probe(struct device_d *dev)
+{
+	struct device_node *child;
+	int ret;
+
+	for_each_child_of_node(dev->device_node, child) {
+		struct pwmled *pwmled;
+		struct pwm_device *pwm;
+
+		pwm = of_pwm_request(child, NULL);
+		if (pwm < 0)
+			continue;
+
+		pwmled = xzalloc(sizeof(*pwmled));
+		pwmled->led.name = xstrdup(child->name);
+		pwmled->pwm = pwm;
+
+		of_property_read_u32(child, "max-brightness", &pwmled->led.max_value);
+
+		pwmled->period = pwm_get_period(pwmled->pwm);
+
+		pwmled->led.set = led_pwm_set;
+
+		pwm_config(pwmled->pwm, 0, pwmled->period);
+		pwm_enable(pwmled->pwm);
+
+		ret = led_register(&pwmled->led);
+		if (ret)
+			return ret;
+
+		led_of_parse_trigger(&pwmled->led, child);
+	}
+
+	return 0;
+}
+
+static struct of_device_id led_pwm_of_ids[] = {
+	{ .compatible = "pwm-leds", },
+	{ }
+};
+
+static struct driver_d led_pwm_of_driver = {
+	.name  = "pwm-leds",
+	.probe = led_pwm_of_probe,
+	.of_compatible = DRV_OF_COMPAT(led_pwm_of_ids),
+};
+device_platform_driver(led_pwm_of_driver);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
