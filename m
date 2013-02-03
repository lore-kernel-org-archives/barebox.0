Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from la-in-x0236.1e100.net ([2a00:1450:4010:c03::236]
 helo=mail-la0-x236.google.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U24rF-0000RL-19
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 19:04:05 +0000
Received: by mail-la0-f54.google.com with SMTP id gw10so4045083lab.27
 for <barebox@lists.infradead.org>; Sun, 03 Feb 2013 11:04:01 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun,  3 Feb 2013 23:16:17 +0400
Message-Id: <1359918977-1932-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC] gpiolib: import gpio_request_array() from linux 3.7
To: barebox@lists.infradead.org

Also import related functions gpio_request_one() and
gpio_free_array().

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/gpio/gpio.c |   66 +++++++++++++++++++++++++++++++++++++++++++++++++++
 include/gpio.h      |   43 +++++++++++++++++++++++++++++++++
 2 files changed, 109 insertions(+)

diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpio.c
index d37f5a0..631168d 100644
--- a/drivers/gpio/gpio.c
+++ b/drivers/gpio/gpio.c
@@ -65,6 +65,72 @@ void gpio_free(unsigned gpio)
 	free(gi->label);
 }
 
+/**
+ * gpio_request_one - request a single GPIO with initial configuration
+ * @gpio:	the GPIO number
+ * @flags:	GPIO configuration as specified by GPIOF_*
+ * @label:	a literal description string of this GPIO
+ */
+int gpio_request_one(unsigned gpio, unsigned long flags, const char *label)
+{
+	int err;
+
+	err = gpio_request(gpio, label);
+	if (err)
+		return err;
+
+	if (flags & GPIOF_DIR_IN)
+		err = gpio_direction_input(gpio);
+	else
+		err = gpio_direction_output(gpio,
+				(flags & GPIOF_INIT_HIGH) ? 1 : 0);
+
+	if (err)
+		goto free_gpio;
+
+	return 0;
+
+free_gpio:
+	gpio_free(gpio);
+	return err;
+}
+EXPORT_SYMBOL(gpio_request_one);
+
+/**
+ * gpio_request_array - request multiple GPIOs in a single call
+ * @array:	array of the 'struct gpio'
+ * @num:	how many GPIOs in the array
+ */
+int gpio_request_array(const struct gpio *array, size_t num)
+{
+	int i, err;
+
+	for (i = 0; i < num; i++, array++) {
+		err = gpio_request_one(array->gpio, array->flags, array->label);
+		if (err)
+			goto err_free;
+	}
+	return 0;
+
+err_free:
+	while (i--)
+		gpio_free((--array)->gpio);
+	return err;
+}
+EXPORT_SYMBOL(gpio_request_array);
+
+/**
+ * gpio_free_array - release multiple GPIOs in a single call
+ * @array:	array of the 'struct gpio'
+ * @num:	how many GPIOs in the array
+ */
+void gpio_free_array(const struct gpio *array, size_t num)
+{
+	while (num--)
+		gpio_free((array++)->gpio);
+}
+EXPORT_SYMBOL(gpio_free_array);
+
 void gpio_set_value(unsigned gpio, int value)
 {
 	struct gpio_info *gi = &gpio_desc[gpio];
diff --git a/include/gpio.h b/include/gpio.h
index eedb980..37c151d 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -3,6 +3,29 @@
 
 #include <asm/gpio.h>
 
+/* make these flag values available regardless of GPIO kconfig options */
+#define GPIOF_DIR_OUT	(0 << 0)
+#define GPIOF_DIR_IN	(1 << 0)
+
+#define GPIOF_INIT_LOW	(0 << 1)
+#define GPIOF_INIT_HIGH	(1 << 1)
+
+#define GPIOF_IN		(GPIOF_DIR_IN)
+#define GPIOF_OUT_INIT_LOW	(GPIOF_DIR_OUT | GPIOF_INIT_LOW)
+#define GPIOF_OUT_INIT_HIGH	(GPIOF_DIR_OUT | GPIOF_INIT_HIGH)
+
+/**
+ * struct gpio - a structure describing a GPIO with configuration
+ * @gpio:	the GPIO number
+ * @flags:	GPIO configuration as specified by GPIOF_*
+ * @label:	a literal description string of this GPIO
+ */
+struct gpio {
+	unsigned	gpio;
+	unsigned long	flags;
+	const char	*label;
+};
+
 #ifndef CONFIG_GPIOLIB
 static inline int gpio_request(unsigned gpio, const char *label)
 {
@@ -12,9 +35,29 @@ static inline int gpio_request(unsigned gpio, const char *label)
 static inline void gpio_free(unsigned gpio)
 {
 }
+
+static inline int gpio_request_one(unsigned gpio,
+					unsigned long flags, const char *label)
+{
+	return 0;
+}
+
+static inline int gpio_request_array(const struct gpio *array, size_t num)
+{
+	return 0;
+}
+
+static inline void gpio_free_array(const struct gpio *array, size_t num)
+{
+	/* GPIO can never have been requested */
+	WARN_ON(1);
+}
 #else
 int gpio_request(unsigned gpio, const char *label);
 void gpio_free(unsigned gpio);
+int gpio_request_one(unsigned gpio, unsigned long flags, const char *label);
+int gpio_request_array(const struct gpio *array, size_t num);
+void gpio_free_array(const struct gpio *array, size_t num);
 #endif
 
 struct gpio_chip;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
