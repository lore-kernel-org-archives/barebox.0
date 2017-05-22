Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dCpCZ-0008T2-N7
 for barebox@lists.infradead.org; Mon, 22 May 2017 15:24:57 +0000
Received: by mail-pf0-x243.google.com with SMTP id f27so20740210pfe.0
 for <barebox@lists.infradead.org>; Mon, 22 May 2017 08:24:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 22 May 2017 08:24:18 -0700
Message-Id: <20170522152420.14443-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/4] gpiolib: Add code to support "active low" GPIOs
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
 drivers/gpio/gpiolib.c | 37 +++++++++++++++++++++++++++++++------
 include/gpio.h         |  3 +++
 2 files changed, 34 insertions(+), 6 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 1f57c76..9e9df355 100644
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
@@ -111,6 +123,11 @@ int gpio_request_one(unsigned gpio, unsigned long flags, const char *label)
 	if (err)
 		return err;
 
+	if (flags & GPIOF_ACTIVE_LOW) {
+		struct gpio_info *gi = gpio_to_desc(gpio);
+		gi->active_low = true;
+	}
+
 	if (flags & GPIOF_DIR_IN)
 		err = gpio_direction_input(gpio);
 	else
@@ -173,8 +190,10 @@ void gpio_set_value(unsigned gpio, int value)
 	if (gpio_ensure_requested(gi, gpio))
 		return;
 
-	if (gi->chip->ops->set)
-		gi->chip->ops->set(gi->chip, gpio - gi->chip->base, value);
+	if (gi->chip->ops->set) {
+		gi->chip->ops->set(gi->chip, gpio - gi->chip->base,
+				   gpio_adjust_value(gi, value));
+	}
 }
 EXPORT_SYMBOL(gpio_set_value);
 
@@ -192,7 +211,10 @@ int gpio_get_value(unsigned gpio)
 
 	if (!gi->chip->ops->get)
 		return -ENOSYS;
-	return gi->chip->ops->get(gi->chip, gpio - gi->chip->base);
+
+	ret = gi->chip->ops->get(gi->chip, gpio - gi->chip->base);
+
+	return gpio_adjust_value(gi, ret);
 }
 EXPORT_SYMBOL(gpio_get_value);
 
@@ -211,7 +233,7 @@ int gpio_direction_output(unsigned gpio, int value)
 	if (!gi->chip->ops->direction_output)
 		return -ENOSYS;
 	return gi->chip->ops->direction_output(gi->chip, gpio - gi->chip->base,
-					       value);
+					       gpio_adjust_value(gi, value));
 }
 EXPORT_SYMBOL(gpio_direction_output);
 
@@ -229,7 +251,10 @@ int gpio_direction_input(unsigned gpio)
 
 	if (!gi->chip->ops->direction_input)
 		return -ENOSYS;
-	return gi->chip->ops->direction_input(gi->chip, gpio - gi->chip->base);
+
+	ret = gi->chip->ops->direction_input(gi->chip, gpio - gi->chip->base);
+
+	return gpio_adjust_value(gi, ret);
 }
 EXPORT_SYMBOL(gpio_direction_input);
 
@@ -334,7 +359,7 @@ static int do_gpiolib(int argc, char *argv[])
 		printf("  GPIO %*d: %*s %*s %*s  %s\n", 4, i,
 			3, (dir < 0) ? "unk" : ((dir == GPIOF_DIR_IN) ? "in" : "out"),
 			3, (val < 0) ? "unk" : ((val == 0) ? "lo" : "hi"),
-			9, gi->requested ? "true" : "false",
+		        12, gi->requested ? (gi->active_low ? "active low" : "true") : "false",
 			(gi->requested && gi->label) ? gi->label : "");
 	}
 
diff --git a/include/gpio.h b/include/gpio.h
index 7b3f512..9432543 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -41,6 +41,9 @@ static inline int gpio_is_valid(int gpio)
 #define GPIOF_INIT_LOW	(0 << 1)
 #define GPIOF_INIT_HIGH	(1 << 1)
 
+#define GPIOF_ACTIVE_HIGH	(0 << 2)
+#define GPIOF_ACTIVE_LOW	(1 << 2)
+
 #define GPIOF_IN		(GPIOF_DIR_IN)
 #define GPIOF_OUT_INIT_LOW	(GPIOF_DIR_OUT | GPIOF_INIT_LOW)
 #define GPIOF_OUT_INIT_HIGH	(GPIOF_DIR_OUT | GPIOF_INIT_HIGH)
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
