Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Rrh-0007q2-35
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 08:18:40 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  3 Sep 2012 10:18:08 +0200
Message-Id: <1346660298-18148-2-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 01/11] add gpiolib support
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/Makefile      |    1 +
 drivers/gpio/Kconfig  |    2 +
 drivers/gpio/Makefile |    1 +
 drivers/gpio/gpio.c   |  134 +++++++++++++++++++++++++++++++++++++++++++++++++
 include/gpio.h        |   27 +++++++++-
 5 files changed, 164 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpio/Kconfig
 create mode 100644 drivers/gpio/Makefile
 create mode 100644 drivers/gpio/gpio.c

diff --git a/drivers/Makefile b/drivers/Makefile
index ea3263f..1d14e6c 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -17,3 +17,4 @@ obj-$(CONFIG_PWM) += pwm/
 obj-y	+= input/
 obj-y	+= dma/
 obj-y  += watchdog/
+obj-y	+= gpio/
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
new file mode 100644
index 0000000..a681973
--- /dev/null
+++ b/drivers/gpio/Kconfig
@@ -0,0 +1,2 @@
+config GPIOLIB
+	bool
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
new file mode 100644
index 0000000..7837966
--- /dev/null
+++ b/drivers/gpio/Makefile
@@ -0,0 +1 @@
+obj-y += gpio.o
diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpio.c
new file mode 100644
index 0000000..6ad8d27
--- /dev/null
+++ b/drivers/gpio/gpio.c
@@ -0,0 +1,134 @@
+#include <common.h>
+#include <gpio.h>
+#include <errno.h>
+
+static LIST_HEAD(chip_list);
+
+#define ARCH_NR_GPIOS 256
+
+static struct gpio_chip *gpio_desc[ARCH_NR_GPIOS];
+
+static int gpio_is_valid(unsigned gpio)
+{
+	if (gpio < ARCH_NR_GPIOS)
+		return 1;
+	return 0;
+}
+
+void gpio_set_value(unsigned gpio, int value)
+{
+	struct gpio_chip *chip = gpio_desc[gpio];
+
+	if (!gpio_is_valid(gpio))
+		return;
+	if (!chip)
+		return;
+	if (!chip->ops->set)
+		return;
+	chip->ops->set(chip, gpio - chip->base, value);
+}
+EXPORT_SYMBOL(gpio_set_value);
+
+int gpio_get_value(unsigned gpio)
+{
+	struct gpio_chip *chip = gpio_desc[gpio];
+
+	if (!gpio_is_valid(gpio))
+		return -EINVAL;
+	if (!chip)
+		return -ENODEV;
+	if (!chip->ops->get)
+		return -ENOSYS;
+	return chip->ops->get(chip, gpio - chip->base);
+}
+EXPORT_SYMBOL(gpio_get_value);
+
+int gpio_direction_output(unsigned gpio, int value)
+{
+	struct gpio_chip *chip = gpio_desc[gpio];
+
+	if (!gpio_is_valid(gpio))
+		return -EINVAL;
+	if (!chip)
+		return -ENODEV;
+	if (!chip->ops->direction_output)
+		return -ENOSYS;
+	return chip->ops->direction_output(chip, gpio - chip->base, value);
+}
+EXPORT_SYMBOL(gpio_direction_output);
+
+int gpio_direction_input(unsigned gpio)
+{
+	struct gpio_chip *chip = gpio_desc[gpio];
+
+	if (!gpio_is_valid(gpio))
+		return -EINVAL;
+	if (!chip)
+		return -ENODEV;
+	if (!chip->ops->direction_input)
+		return -ENOSYS;
+	return chip->ops->direction_input(chip, gpio - chip->base);
+}
+EXPORT_SYMBOL(gpio_direction_input);
+
+static int gpiochip_find_base(int start, int ngpio)
+{
+	int i;
+	int spare = 0;
+	int base = -ENOSPC;
+
+	if (start < 0)
+		start = 0;
+
+	for (i = start; i < ARCH_NR_GPIOS; i++) {
+		struct gpio_chip *chip = gpio_desc[i];
+
+		if (!chip) {
+			spare++;
+			if (spare == ngpio) {
+				base = i + 1 - ngpio;
+				break;
+			}
+		} else {
+			spare = 0;
+			i += chip->ngpio - 1;
+		}
+	}
+
+	if (gpio_is_valid(base))
+		debug("%s: found new base at %d\n", __func__, base);
+	return base;
+}
+
+int gpiochip_add(struct gpio_chip *chip)
+{
+	int base, i;
+
+	base = gpiochip_find_base(chip->base, chip->ngpio);
+	if (base < 0)
+		return base;
+
+	if (chip->base >= 0 && chip->base != base)
+		return -EBUSY;
+
+	chip->base = base;
+
+	list_add_tail(&chip->list, &chip_list);
+
+	for (i = chip->base; i < chip->base + chip->ngpio; i++)
+		gpio_desc[i] = chip;
+
+	return 0;
+}
+
+int gpio_get_num(struct device_d *dev, int gpio)
+{
+	struct gpio_chip *chip;
+
+	list_for_each_entry(chip, &chip_list, list) {
+		if (chip->dev == dev)
+			return chip->base + gpio;
+	}
+
+	return -ENODEV;
+}
diff --git a/include/gpio.h b/include/gpio.h
index b7d8402..9fb11c3 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -5,10 +5,35 @@
 
 static inline int gpio_request(unsigned gpio, const char *label)
 {
-	return 0;
+       return 0;
 }
 
 static inline void gpio_free(unsigned gpio)
 {
 }
+
+struct gpio_chip;
+
+struct gpio_ops {
+	int (*direction_input)(struct gpio_chip *chip, unsigned offset);
+	int (*direction_output)(struct gpio_chip *chip, unsigned offset, int value);
+	int (*get)(struct gpio_chip *chip, unsigned offset);
+	void (*set)(struct gpio_chip *chip, unsigned offset, int value);
+};
+
+struct gpio_chip {
+	struct device_d *dev;
+
+	int base;
+	int ngpio;
+
+	struct gpio_ops *ops;
+
+	struct list_head list;
+};
+
+int gpiochip_add(struct gpio_chip *chip);
+
+int gpio_get_num(struct device_d *dev, int gpio);
+
 #endif /* __GPIO_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
