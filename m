Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VjaUg-0005rR-Ax
 for barebox@lists.infradead.org; Thu, 21 Nov 2013 20:04:55 +0000
Received: by mail-lb0-f180.google.com with SMTP id w6so195200lbh.39
 for <barebox@lists.infradead.org>; Thu, 21 Nov 2013 12:04:28 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 22 Nov 2013 00:11:24 +0400
Message-Id: <1385064684-28363-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1385064684-28363-1-git-send-email-antonynpavlov@gmail.com>
References: <1385064684-28363-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] gpiolib: import gpio_request_array() from linux 3.7
To: barebox@lists.infradead.org

Also import related functions gpio_request_one() and
gpio_free_array().

This commit imports code from linux 3.7 as
the more recent linux kernel versions use gpiolib descriptors,
see this commit for details:

  commit 372e722ea4dd4ca11c3d04845e11cbc15f32144c
  Author: Alexandre Courbot <acourbot@nvidia.com>
  Date:   Sun Feb 3 01:29:29 2013 +0900

      gpiolib: use descriptors internally

      Make sure gpiolib works internally with descriptors and (chip, offset)
      pairs instead of using the global integer namespace. This prepares the
      ground for the removal of the global gpio_desc[] array and the
      introduction of the descriptor-based GPIO API.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/gpio/gpiolib.c | 66 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/gpio.h         | 39 +++++++++++++++++++++++++++++
 2 files changed, 105 insertions(+)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index b7db596..8168bd3 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -85,6 +85,72 @@ void gpio_free(unsigned gpio)
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
+ free_gpio:
+	gpio_free(gpio);
+	return err;
+}
+EXPORT_SYMBOL_GPL(gpio_request_one);
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
+EXPORT_SYMBOL_GPL(gpio_request_array);
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
+EXPORT_SYMBOL_GPL(gpio_free_array);
+
 void gpio_set_value(unsigned gpio, int value)
 {
 	struct gpio_info *gi = gpio_to_desc(gpio);
diff --git a/include/gpio.h b/include/gpio.h
index f33b435..b851e85 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -6,6 +6,25 @@
 #define GPIOF_DIR_OUT	(0 << 0)
 #define GPIOF_DIR_IN	(1 << 0)
 
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
@@ -15,9 +34,29 @@ static inline int gpio_request(unsigned gpio, const char *label)
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
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
