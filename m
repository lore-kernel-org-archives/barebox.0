Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvIu-0003zx-Vq
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:16:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:16:11 +0100
Message-Id: <20191127111613.24173-3-s.hauer@pengutronix.de>
In-Reply-To: <20191127111613.24173-1-s.hauer@pengutronix.de>
References: <20191127111613.24173-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] gpio: Introduce GPIO names
To: Barebox List <barebox@lists.infradead.org>

This introduces GPIO names. So far we only have labels which are given
by the requester. In contrast names are given by the provider and do not
change depending on whoever requests a GPIO. The gpio commands now also
accept to reference a GPIO by name.
The printing of the gpioinfo command is adjusted to nicely print both
the label and the name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/gpio.c        |  4 +++-
 drivers/gpio/gpiolib.c | 31 +++++++++++++++++++++++++------
 include/gpio.h         |  6 ++++++
 3 files changed, 34 insertions(+), 7 deletions(-)

diff --git a/commands/gpio.c b/commands/gpio.c
index 951ad2c285..6d88ab6bbe 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -25,7 +25,9 @@ static int get_gpio_and_value(int argc, char *argv[],
 	if (argc < count)
 		return COMMAND_ERROR_USAGE;
 
-	*gpio = gpio_find_by_label(argv[1]);
+	*gpio = gpio_find_by_name(argv[1]);
+	if (*gpio < 0)
+		*gpio = gpio_find_by_label(argv[1]);
 	if (*gpio < 0) {
 		ret = kstrtoint(argv[1], 0, gpio);
 		if (ret < 0)
diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index f96009896a..057cea43cc 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -16,6 +16,7 @@ struct gpio_info {
 	bool requested;
 	bool active_low;
 	char *label;
+	char *name;
 };
 
 static struct gpio_info *gpio_desc;
@@ -108,6 +109,23 @@ int gpio_find_by_label(const char *label)
 	return -ENOENT;
 }
 
+int gpio_find_by_name(const char *name)
+{
+	int i;
+
+	for (i = 0; i < ARCH_NR_GPIOS; i++) {
+		struct gpio_info *info = &gpio_desc[i];
+
+		if (!info->chip || !info->name)
+			continue;
+
+		if (!strcmp(info->name, name))
+			return i;
+	}
+
+	return -ENOENT;
+}
+
 void gpio_free(unsigned gpio)
 {
 	struct gpio_info *gi = gpio_to_desc(gpio);
@@ -500,7 +518,7 @@ static int do_gpiolib(int argc, char *argv[])
 				gi->chip->base,
 				gi->chip->base + gi->chip->ngpio - 1,
 				gi->chip->dev->name);
-			printf("%*cdir val requested  label\n", 13, ' ');
+			printf("             %-3s %-3s %-9s %-20s %-20s\n", "dir", "val", "requested", "name", "label");
 		}
 
 		if (gi->chip->ops->get_direction)
@@ -510,11 +528,12 @@ static int do_gpiolib(int argc, char *argv[])
 			val = gi->chip->ops->get(gi->chip,
 						i - gi->chip->base);
 
-		printf("  GPIO %*d: %*s %*s %*s  %s\n", 4, i,
-			3, (dir < 0) ? "unk" : ((dir == GPIOF_DIR_IN) ? "in" : "out"),
-			3, (val < 0) ? "unk" : ((val == 0) ? "lo" : "hi"),
-		        12, gi->requested ? (gi->active_low ? "active low" : "true") : "false",
-			(gi->requested && gi->label) ? gi->label : "");
+		printf("  GPIO %4d: %-3s %-3s %-9s %-20s %-20s\n", i,
+			(dir < 0) ? "unk" : ((dir == GPIOF_DIR_IN) ? "in" : "out"),
+			(val < 0) ? "unk" : ((val == 0) ? "lo" : "hi"),
+		        gi->requested ? (gi->active_low ? "active low" : "true") : "false",
+			gi->name ? gi->name : "",
+			gi->label ? gi->label : "");
 	}
 
 	return 0;
diff --git a/include/gpio.h b/include/gpio.h
index 4d5f2c25c7..0c0c0337e0 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -114,6 +114,11 @@ static inline int gpio_request(unsigned gpio, const char *label)
 	return 0;
 }
 
+static inline int gpio_find_by_name(const char *name)
+{
+	return -ENOSYS;
+}
+
 static inline int gpio_find_by_label(const char *label)
 {
 	return -ENOSYS;
@@ -141,6 +146,7 @@ static inline void gpio_free_array(const struct gpio *array, size_t num)
 }
 #else
 int gpio_request(unsigned gpio, const char *label);
+int gpio_find_by_name(const char *name);
 int gpio_find_by_label(const char *label);
 void gpio_free(unsigned gpio);
 int gpio_request_one(unsigned gpio, unsigned long flags, const char *label);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
