Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tm2di-0005hf-JA
 for barebox@lists.infradead.org; Fri, 21 Dec 2012 13:27:51 +0000
Received: from mail607.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 996A6FF97FA
 for <barebox@lists.infradead.org>; Fri, 21 Dec 2012 14:40:10 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 21 Dec 2012 14:26:08 +0100
Message-Id: <1356096369-14523-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121221132530.GB3406@game.jcrosoft.org>
References: <20121221132530.GB3406@game.jcrosoft.org>
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
Subject: [PATCH 1/2 v2] gpiolib: add gpio_request and gpio_free support
To: barebox@lists.infradead.org

as today if no request or free provided do not complain

if the gpio is not request auto requested at first use

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v2:

	introduce gpio_ensure_requested

Best Regards,
J.
 drivers/gpio/gpio.c |   89 +++++++++++++++++++++++++++++++++++++++++++++++----
 include/gpio.h      |    7 ++++
 2 files changed, 89 insertions(+), 7 deletions(-)

diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpio.c
index 042a062..ed9f923 100644
--- a/drivers/gpio/gpio.c
+++ b/drivers/gpio/gpio.c
@@ -1,19 +1,79 @@
 #include <common.h>
 #include <gpio.h>
 #include <errno.h>
+#include <malloc.h>
 
 static LIST_HEAD(chip_list);
 
-static struct gpio_chip *gpio_desc[ARCH_NR_GPIOS];
+struct gpio_info {
+	struct gpio_chip *chip;
+	bool requested;
+	char *label;
+};
+
+static struct gpio_info gpio_desc[ARCH_NR_GPIOS];
+
+static int gpio_ensure_requested(struct gpio_info *gi, int gpio)
+{
+	if (gi->requested)
+		return 0;
+
+	return gpio_request(gpio, "gpio");
+}
+
+int gpio_request(unsigned gpio, const char *label)
+{
+	struct gpio_info *gi = &gpio_desc[gpio];
+	struct gpio_chip *chip = gi->chip;
+	int ret;
+
+	if (!gpio_is_valid(gpio))
+		return -EINVAL;
+	if (!chip)
+		return -EINVAL;
+	if (gi->requested)
+		return -EBUSY;
+	if (chip->ops->request) {
+		ret = chip->ops->request(chip, gpio - chip->base);
+		if (ret)
+			return ret;
+	}
+
+	gi->requested = true;
+	gi->label = xstrdup(label);
+
+	return 0;
+}
+
+void gpio_free(unsigned gpio)
+{
+	struct gpio_info *gi = &gpio_desc[gpio];
+	struct gpio_chip *chip = gi->chip;
+
+	if (!gpio_is_valid(gpio))
+		return;
+	if (!chip)
+		return;
+	if (!gi->requested)
+		return;
+	if (chip->ops->free)
+		chip->ops->free(chip, gpio - chip->base);
+
+	gi->requested = false;
+	free(gi->label);
+}
 
 void gpio_set_value(unsigned gpio, int value)
 {
-	struct gpio_chip *chip = gpio_desc[gpio];
+	struct gpio_info *gi = &gpio_desc[gpio];
+	struct gpio_chip *chip = gi->chip;
 
 	if (!gpio_is_valid(gpio))
 		return;
 	if (!chip)
 		return;
+	if (gpio_ensure_requested(gi, gpio))
+		return;
 	if (!chip->ops->set)
 		return;
 	chip->ops->set(chip, gpio - chip->base, value);
@@ -22,12 +82,17 @@ EXPORT_SYMBOL(gpio_set_value);
 
 int gpio_get_value(unsigned gpio)
 {
-	struct gpio_chip *chip = gpio_desc[gpio];
+	struct gpio_info *gi = &gpio_desc[gpio];
+	struct gpio_chip *chip = gi->chip;
+	int ret;
 
 	if (!gpio_is_valid(gpio))
 		return -EINVAL;
 	if (!chip)
 		return -ENODEV;
+	ret = gpio_ensure_requested(gi, gpio);
+	if (ret)
+		return ret;
 	if (!chip->ops->get)
 		return -ENOSYS;
 	return chip->ops->get(chip, gpio - chip->base);
@@ -36,12 +101,17 @@ EXPORT_SYMBOL(gpio_get_value);
 
 int gpio_direction_output(unsigned gpio, int value)
 {
-	struct gpio_chip *chip = gpio_desc[gpio];
+	struct gpio_info *gi = &gpio_desc[gpio];
+	struct gpio_chip *chip = gi->chip;
+	int ret;
 
 	if (!gpio_is_valid(gpio))
 		return -EINVAL;
 	if (!chip)
 		return -ENODEV;
+	ret = gpio_ensure_requested(gi, gpio);
+	if (ret)
+		return ret;
 	if (!chip->ops->direction_output)
 		return -ENOSYS;
 	return chip->ops->direction_output(chip, gpio - chip->base, value);
@@ -50,12 +120,17 @@ EXPORT_SYMBOL(gpio_direction_output);
 
 int gpio_direction_input(unsigned gpio)
 {
-	struct gpio_chip *chip = gpio_desc[gpio];
+	struct gpio_info *gi = &gpio_desc[gpio];
+	struct gpio_chip *chip = gi->chip;
+	int ret;
 
 	if (!gpio_is_valid(gpio))
 		return -EINVAL;
 	if (!chip)
 		return -ENODEV;
+	ret = gpio_ensure_requested(gi, gpio);
+	if (ret)
+		return ret;
 	if (!chip->ops->direction_input)
 		return -ENOSYS;
 	return chip->ops->direction_input(chip, gpio - chip->base);
@@ -72,7 +147,7 @@ static int gpiochip_find_base(int start, int ngpio)
 		start = 0;
 
 	for (i = start; i < ARCH_NR_GPIOS; i++) {
-		struct gpio_chip *chip = gpio_desc[i];
+		struct gpio_chip *chip = gpio_desc[i].chip;
 
 		if (!chip) {
 			spare++;
@@ -107,7 +182,7 @@ int gpiochip_add(struct gpio_chip *chip)
 	list_add_tail(&chip->list, &chip_list);
 
 	for (i = chip->base; i < chip->base + chip->ngpio; i++)
-		gpio_desc[i] = chip;
+		gpio_desc[i].chip = chip;
 
 	return 0;
 }
diff --git a/include/gpio.h b/include/gpio.h
index 9fb11c3..eedb980 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -3,6 +3,7 @@
 
 #include <asm/gpio.h>
 
+#ifndef CONFIG_GPIOLIB
 static inline int gpio_request(unsigned gpio, const char *label)
 {
        return 0;
@@ -11,10 +12,16 @@ static inline int gpio_request(unsigned gpio, const char *label)
 static inline void gpio_free(unsigned gpio)
 {
 }
+#else
+int gpio_request(unsigned gpio, const char *label);
+void gpio_free(unsigned gpio);
+#endif
 
 struct gpio_chip;
 
 struct gpio_ops {
+	int (*request)(struct gpio_chip *chip, unsigned offset);
+	void (*free)(struct gpio_chip *chip, unsigned offset);
 	int (*direction_input)(struct gpio_chip *chip, unsigned offset);
 	int (*direction_output)(struct gpio_chip *chip, unsigned offset, int value);
 	int (*get)(struct gpio_chip *chip, unsigned offset);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
