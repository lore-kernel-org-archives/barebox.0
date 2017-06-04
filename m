Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dHLy1-0000LQ-2m
 for barebox@lists.infradead.org; Sun, 04 Jun 2017 03:12:38 +0000
Received: by mail-pf0-x243.google.com with SMTP id w69so16855354pfk.1
 for <barebox@lists.infradead.org>; Sat, 03 Jun 2017 20:12:16 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  3 Jun 2017 20:11:52 -0700
Message-Id: <20170604031154.26663-3-andrew.smirnov@gmail.com>
In-Reply-To: <20170604031154.26663-1-andrew.smirnov@gmail.com>
References: <20170604031154.26663-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 2/4] gpiolib: Add code to support "active low" GPIOs
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Nikita Yushchenko <nikita.yoush@cogentembedded.com>, cphealy@gmail.com

So far this particular aspect of various DT-bindings has been handled
on a per-driver basis. With this change, hopefully, we'll have a
single place to handle necessary logic inversions and eventually
would be able to migrate existing users as well as avoiding adding
redundant code to new drivers.

Cc: cphealy@gmail.com
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/gpio/gpiolib.c | 50 ++++++++++++++++++++++++++++++++++++++++++++++----
 include/gpio.h         | 25 +++++++++++++++++++++++++
 2 files changed, 71 insertions(+), 4 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 1f57c76..28f6a5e 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -13,6 +13,7 @@ static LIST_HEAD(chip_list);
 struct gpio_info {
 	struct gpio_chip *chip;
 	bool requested;
+	bool active_low;
 	char *label;
 };
 
@@ -45,6 +46,15 @@ static struct gpio_info *gpio_to_desc(unsigned gpio)
 	return NULL;
 }
 
+static int gpio_adjust_value(struct gpio_info *gi,
+			     int value)
+{
+	if (value < 0)
+		return value;
+
+	return !!value ^ gi->active_low;
+}
+
 int gpio_request(unsigned gpio, const char *label)
 {
 	struct gpio_info *gi = gpio_to_desc(gpio);
@@ -69,6 +79,7 @@ int gpio_request(unsigned gpio, const char *label)
 	}
 
 	gi->requested = true;
+	gi->active_low = false;
 	gi->label = xstrdup(label);
 
 done:
@@ -93,6 +104,7 @@ void gpio_free(unsigned gpio)
 		gi->chip->ops->free(gi->chip, gpio - gi->chip->base);
 
 	gi->requested = false;
+	gi->active_low = false;
 	free(gi->label);
 	gi->label = NULL;
 }
@@ -111,11 +123,20 @@ int gpio_request_one(unsigned gpio, unsigned long flags, const char *label)
 	if (err)
 		return err;
 
-	if (flags & GPIOF_DIR_IN)
+	if (flags & GPIOF_ACTIVE_LOW) {
+		struct gpio_info *gi = gpio_to_desc(gpio);
+		gi->active_low = true;
+	}
+
+	if (flags & GPIOF_DIR_IN) {
 		err = gpio_direction_input(gpio);
-	else
+	} else if (flags & GPIOF_LOGICAL) {
+		err = gpio_direction_active(gpio,
+					    !!(flags & GPIOF_INIT_ACTIVE));
+	} else {
 		err = gpio_direction_output(gpio,
-				(flags & GPIOF_INIT_HIGH) ? 1 : 0);
+					    !!(flags & GPIOF_INIT_HIGH));
+	}
 
 	if (err)
 		goto free_gpio;
@@ -178,6 +199,13 @@ void gpio_set_value(unsigned gpio, int value)
 }
 EXPORT_SYMBOL(gpio_set_value);
 
+void gpio_set_active(unsigned gpio, bool value)
+{
+	struct gpio_info *gi = gpio_to_desc(gpio);
+	gpio_set_value(gpio, gpio_adjust_value(gi, value));
+}
+EXPORT_SYMBOL(gpio_set_active);
+
 int gpio_get_value(unsigned gpio)
 {
 	struct gpio_info *gi = gpio_to_desc(gpio);
@@ -196,6 +224,13 @@ int gpio_get_value(unsigned gpio)
 }
 EXPORT_SYMBOL(gpio_get_value);
 
+int gpio_is_active(unsigned gpio)
+{
+	struct gpio_info *gi = gpio_to_desc(gpio);
+	return gpio_adjust_value(gi, gpio_get_value(gpio));
+}
+EXPORT_SYMBOL(gpio_is_active);
+
 int gpio_direction_output(unsigned gpio, int value)
 {
 	struct gpio_info *gi = gpio_to_desc(gpio);
@@ -215,6 +250,13 @@ int gpio_direction_output(unsigned gpio, int value)
 }
 EXPORT_SYMBOL(gpio_direction_output);
 
+int gpio_direction_active(unsigned gpio, bool value)
+{
+	struct gpio_info *gi = gpio_to_desc(gpio);
+	return gpio_direction_output(gpio, gpio_adjust_value(gi, value));
+}
+EXPORT_SYMBOL(gpio_direction_active);
+
 int gpio_direction_input(unsigned gpio)
 {
 	struct gpio_info *gi = gpio_to_desc(gpio);
@@ -334,7 +376,7 @@ static int do_gpiolib(int argc, char *argv[])
 		printf("  GPIO %*d: %*s %*s %*s  %s\n", 4, i,
 			3, (dir < 0) ? "unk" : ((dir == GPIOF_DIR_IN) ? "in" : "out"),
 			3, (val < 0) ? "unk" : ((val == 0) ? "lo" : "hi"),
-			9, gi->requested ? "true" : "false",
+		        12, gi->requested ? (gi->active_low ? "active low" : "true") : "false",
 			(gi->requested && gi->label) ? gi->label : "");
 	}
 
diff --git a/include/gpio.h b/include/gpio.h
index 7b3f512..56aae22 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -6,6 +6,11 @@ void gpio_set_value(unsigned gpio, int value);
 int gpio_get_value(unsigned gpio);
 int gpio_direction_output(unsigned gpio, int value);
 int gpio_direction_input(unsigned gpio);
+
+void gpio_set_active(unsigned gpio, bool state);
+int gpio_is_active(unsigned gpio);
+int gpio_direction_active(unsigned gpio, bool state);
+
 #else
 static inline void gpio_set_value(unsigned gpio, int value)
 {
@@ -22,6 +27,18 @@ static inline int gpio_direction_input(unsigned gpio)
 {
 	return -EINVAL;
 }
+
+static inline void gpio_set_active(unsigned gpio, int value)
+{
+}
+static inline int gpio_is_active(unsigned gpio)
+{
+	return 0;
+}
+static inline int gpio_direction_active(unsigned gpio, int value)
+{
+	return -EINVAL;
+}
 #endif
 
 #define ARCH_NR_GPIOS 256
@@ -45,6 +62,14 @@ static inline int gpio_is_valid(int gpio)
 #define GPIOF_OUT_INIT_LOW	(GPIOF_DIR_OUT | GPIOF_INIT_LOW)
 #define GPIOF_OUT_INIT_HIGH	(GPIOF_DIR_OUT | GPIOF_INIT_HIGH)
 
+#define GPIOF_LOGICAL		BIT(2)
+#define GPIOF_ACTIVE_HIGH	GPIOF_LOGICAL
+#define GPIOF_ACTIVE_LOW	(BIT(3) | GPIOF_LOGICAL)
+#define GPIOF_INIT_INACTIVE	GPIOF_LOGICAL
+#define GPIOF_INIT_ACTIVE	(GPIOF_LOGICAL | GPIOF_INIT_HIGH)
+#define GPIOF_OUT_INIT_ACTIVE	(GPIOF_DIR_OUT | GPIOF_INIT_ACTIVE)
+#define GPIOF_OUT_INIT_INACTIVE	(GPIOF_DIR_OUT | GPIOF_INIT_INACTIVE)
+
 /**
  * struct gpio - a structure describing a GPIO with configuration
  * @gpio:	the GPIO number
-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
