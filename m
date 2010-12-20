Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PUcRS-0000M4-R3
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 09:55:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Dec 2010 10:53:47 +0100
Message-Id: <1292838831-25038-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1292838831-25038-1-git-send-email-s.hauer@pengutronix.de>
References: <1292838831-25038-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] LED: Add gpio LED support
To: barebox <barebox@lists.infradead.org>

This patch adds support for registering gpios as LEDs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/led/Kconfig    |    8 ++++
 drivers/led/Makefile   |    1 +
 drivers/led/led-gpio.c |   94 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/led.h          |   43 ++++++++++++++++++++++
 4 files changed, 146 insertions(+), 0 deletions(-)
 create mode 100644 drivers/led/led-gpio.c

diff --git a/drivers/led/Kconfig b/drivers/led/Kconfig
index 964626c..048a0f4 100644
--- a/drivers/led/Kconfig
+++ b/drivers/led/Kconfig
@@ -3,4 +3,12 @@ menuconfig LED
 
 if LED
 
+config LED_GPIO
+	bool "gpio LED support"
+	depends on GENERIC_GPIO
+
+config LED_GPIO_RGB
+	bool "gpio rgb LED support"
+	depends on LED_GPIO
+
 endif
diff --git a/drivers/led/Makefile b/drivers/led/Makefile
index 0c1a6b6..29b9fd5 100644
--- a/drivers/led/Makefile
+++ b/drivers/led/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_LED) += core.o
+obj-$(CONFIG_LED_GPIO) += led-gpio.o
diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
new file mode 100644
index 0000000..10c25c6
--- /dev/null
+++ b/drivers/led/led-gpio.c
@@ -0,0 +1,94 @@
+/*
+ * gpio LED support for barebox
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+#include <common.h>
+#include <led.h>
+#include <asm/gpio.h>
+
+static void led_gpio_set(struct led *led, unsigned int value)
+{
+	struct gpio_led *gpio_led = container_of(led, struct gpio_led, led);
+
+	gpio_direction_output(gpio_led->gpio, !!value ^ gpio_led->active_low);
+}
+
+/**
+ * led_gpio_register - register a gpio controlled LED
+ * @param led	The gpio LED
+ *
+ * This function registers a single gpio as a LED. led->gpio
+ * should be initialized to the gpio to control.
+ */
+int led_gpio_register(struct gpio_led *led)
+{
+	led->led.set = led_gpio_set;
+	led->led.max_value = 1;
+
+	return led_register(&led->led);
+}
+
+/**
+ * led_gpio_unregister - remove a gpio controlled LED from the framework
+ * @param led	The gpio LED
+ */
+void led_gpio_unregister(struct gpio_led *led)
+{
+	led_unregister(&led->led);
+}
+
+#ifdef CONFIG_LED_GPIO_RGB
+
+static void led_gpio_rgb_set(struct led *led, unsigned int value)
+{
+	struct gpio_rgb_led *rgb = container_of(led, struct gpio_rgb_led, led);
+	int al = rgb->active_low;
+
+	gpio_direction_output(rgb->gpio_r, !!(value & 4) ^ al);
+	gpio_direction_output(rgb->gpio_g, !!(value & 2) ^ al);
+	gpio_direction_output(rgb->gpio_b, !!(value & 1) ^ al);
+}
+
+/**
+ * led_gpio_rgb_register - register three gpios as a rgb LED
+ * @param led	The gpio rg LED
+ *
+ * This function registers three gpios as a rgb LED. led->gpio[rgb]
+ * should be initialized to the gpios to control.
+ */
+int led_gpio_rgb_register(struct gpio_rgb_led *led)
+{
+	led->led.set = led_gpio_rgb_set;
+	led->led.max_value = 7;
+
+	return led_register(&led->led);
+}
+
+/**
+ * led_gpio_rgb_unregister - remove a gpio controlled rgb LED from the framework
+ * @param led	The gpio LED
+ */
+void led_gpio_rgb_unregister(struct gpio_led *led)
+{
+	led_unregister(&led->led);
+}
+#endif /* CONFIG_LED_GPIO_RGB */
diff --git a/include/led.h b/include/led.h
index 3e7b1d9..0210897 100644
--- a/include/led.h
+++ b/include/led.h
@@ -1,6 +1,8 @@
 #ifndef __LED_H
 #define __LED_H
 
+#include <errno.h>
+
 struct led {
 	void (*set)(struct led *, unsigned int value);
 	int max_value;
@@ -24,4 +26,45 @@ int led_register(struct led *led);
 void led_unregister(struct led *led);
 void led_unregister(struct led *led);
 
+/* gpio LED support */
+struct gpio_led {
+	int gpio;
+	bool active_low;
+	struct led led;
+};
+
+struct gpio_rgb_led {
+	int gpio_r, gpio_g, gpio_b;
+	bool active_low;
+	struct led led;
+};
+
+#ifdef CONFIG_LED_GPIO
+int led_gpio_register(struct gpio_led *led);
+void led_gpio_unregister(struct gpio_led *led);
+#else
+static inline int led_gpio_register(struct gpio_led *led)
+{
+	return -ENOSYS;
+}
+
+static inline void led_gpio_unregister(struct gpio_led *led)
+{
+}
+#endif
+
+#ifdef CONFIG_LED_GPIO_RGB
+int led_gpio_rgb_register(struct gpio_rgb_led *led);
+void led_gpio_rgb_unregister(struct gpio_led *led);
+#else
+static inline int led_gpio_rgb_register(struct gpio_rgb_led *led)
+{
+	return -ENOSYS;
+}
+
+static inline void led_gpio_rgb_unregister(struct gpio_led *led)
+{
+}
+#endif
+
 #endif /* __LED_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
