Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp48.i.mail.ru ([94.100.177.108])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UanwD-00075k-IG
 for barebox@lists.infradead.org; Fri, 10 May 2013 14:04:47 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 10 May 2013 18:04:18 +0400
Message-Id: <1368194658-2961-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] GPIO: Add gpio_to_desc helper
To: barebox@lists.infradead.org

Patch adds gpio_to_desc helper for validate GPIO.
A bit optimization is performed (about -250 bytes on ARM).

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/gpio/gpiolib.c | 97 ++++++++++++++++++++++++++------------------------
 1 file changed, 51 insertions(+), 46 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 6398268..d7aa094 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -32,20 +32,30 @@ static int gpio_ensure_requested(struct gpio_info *gi, int gpio)
 	return gpio_request(gpio, "gpio");
 }
 
+static struct gpio_info *gpio_to_desc(unsigned gpio)
+{
+	if (!gpio_is_valid(gpio))
+		return NULL;
+
+	if (!gpio_desc[gpio].chip)
+		return NULL;
+
+	return &gpio_desc[gpio];
+}
+
 int gpio_request(unsigned gpio, const char *label)
 {
-	struct gpio_info *gi = &gpio_desc[gpio];
-	struct gpio_chip *chip = gi->chip;
+	struct gpio_info *gi = gpio_to_desc(gpio);
 	int ret;
 
-	if (!gpio_is_valid(gpio))
-		return -EINVAL;
-	if (!chip)
-		return -EINVAL;
+	if (!gi)
+		return -ENODEV;
+
 	if (gi->requested)
 		return -EBUSY;
-	if (chip->ops->request) {
-		ret = chip->ops->request(chip, gpio - chip->base);
+
+	if (gi->chip->ops->request) {
+		ret = gi->chip->ops->request(gi->chip, gpio - gi->chip->base);
 		if (ret)
 			return ret;
 	}
@@ -58,17 +68,16 @@ int gpio_request(unsigned gpio, const char *label)
 
 void gpio_free(unsigned gpio)
 {
-	struct gpio_info *gi = &gpio_desc[gpio];
-	struct gpio_chip *chip = gi->chip;
+	struct gpio_info *gi = gpio_to_desc(gpio);
 
-	if (!gpio_is_valid(gpio))
-		return;
-	if (!chip)
+	if (!gi)
 		return;
+
 	if (!gi->requested)
 		return;
-	if (chip->ops->free)
-		chip->ops->free(chip, gpio - chip->base);
+
+	if (gi->chip->ops->free)
+		gi->chip->ops->free(gi->chip, gpio - gi->chip->base);
 
 	gi->requested = false;
 	free(gi->label);
@@ -76,75 +85,71 @@ void gpio_free(unsigned gpio)
 
 void gpio_set_value(unsigned gpio, int value)
 {
-	struct gpio_info *gi = &gpio_desc[gpio];
-	struct gpio_chip *chip = gi->chip;
+	struct gpio_info *gi = gpio_to_desc(gpio);
 
-	if (!gpio_is_valid(gpio))
-		return;
-	if (!chip)
+	if (!gi)
 		return;
+
 	if (gpio_ensure_requested(gi, gpio))
 		return;
-	if (!chip->ops->set)
-		return;
-	chip->ops->set(chip, gpio - chip->base, value);
+
+	if (gi->chip->ops->set)
+		gi->chip->ops->set(gi->chip, gpio - gi->chip->base, value);
 }
 EXPORT_SYMBOL(gpio_set_value);
 
 int gpio_get_value(unsigned gpio)
 {
-	struct gpio_info *gi = &gpio_desc[gpio];
-	struct gpio_chip *chip = gi->chip;
+	struct gpio_info *gi = gpio_to_desc(gpio);
 	int ret;
 
-	if (!gpio_is_valid(gpio))
-		return -EINVAL;
-	if (!chip)
+	if (!gi)
 		return -ENODEV;
+
 	ret = gpio_ensure_requested(gi, gpio);
 	if (ret)
 		return ret;
-	if (!chip->ops->get)
+
+	if (!gi->chip->ops->get)
 		return -ENOSYS;
-	return chip->ops->get(chip, gpio - chip->base);
+	return gi->chip->ops->get(gi->chip, gpio - gi->chip->base);
 }
 EXPORT_SYMBOL(gpio_get_value);
 
 int gpio_direction_output(unsigned gpio, int value)
 {
-	struct gpio_info *gi = &gpio_desc[gpio];
-	struct gpio_chip *chip = gi->chip;
+	struct gpio_info *gi = gpio_to_desc(gpio);
 	int ret;
 
-	if (!gpio_is_valid(gpio))
-		return -EINVAL;
-	if (!chip)
+	if (!gi)
 		return -ENODEV;
+
 	ret = gpio_ensure_requested(gi, gpio);
 	if (ret)
 		return ret;
-	if (!chip->ops->direction_output)
+
+	if (!gi->chip->ops->direction_output)
 		return -ENOSYS;
-	return chip->ops->direction_output(chip, gpio - chip->base, value);
+	return gi->chip->ops->direction_output(gi->chip, gpio - gi->chip->base,
+					       value);
 }
 EXPORT_SYMBOL(gpio_direction_output);
 
 int gpio_direction_input(unsigned gpio)
 {
-	struct gpio_info *gi = &gpio_desc[gpio];
-	struct gpio_chip *chip = gi->chip;
+	struct gpio_info *gi = gpio_to_desc(gpio);
 	int ret;
 
-	if (!gpio_is_valid(gpio))
-		return -EINVAL;
-	if (!chip)
+	if (!gi)
 		return -ENODEV;
+
 	ret = gpio_ensure_requested(gi, gpio);
 	if (ret)
 		return ret;
-	if (!chip->ops->direction_input)
+
+	if (!gi->chip->ops->direction_input)
 		return -ENOSYS;
-	return chip->ops->direction_input(chip, gpio - chip->base);
+	return gi->chip->ops->direction_input(gi->chip, gpio - gi->chip->base);
 }
 EXPORT_SYMBOL(gpio_direction_input);
 
@@ -224,9 +229,9 @@ static int do_gpiolib(int argc, char *argv[])
 	printf("%*crequested  label\n", 11, ' ');
 
 	for (i = 0; i < ARCH_NR_GPIOS; i++) {
-		struct gpio_info *gi = &gpio_desc[i];
+		struct gpio_info *gi = gpio_to_desc(i);
 
-		if (!gi->chip)
+		if (!gi)
 			continue;
 
 		printf("gpio %*d: %*s  %s\n", 4,
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
