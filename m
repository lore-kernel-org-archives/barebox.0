Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZYtZ-00061R-N8
 for barebox@lists.infradead.org; Tue, 26 Nov 2019 11:20:39 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Nov 2019 12:20:25 +0100
Message-Id: <20191126112025.13013-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] gpiolib: have gpioinfo show line name if no label was set
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The upstream Linux bindings support an optional gpio-line-names for GPIO
controllers that can assign names to each GPIO of the controller.

In Linux userspace, utilities like gpiofind can be used to reference these
line-names. For barebox development purposes it can be nice to have the
line names printed when running gpioinfo to make finding the GPIO number
needed easier. populate a line_name gpio_desc member and print it when
using gpioinfo.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 47 +++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 46 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index f96009896a41..3c75c560b411 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -16,6 +16,7 @@ struct gpio_info {
 	bool requested;
 	bool active_low;
 	char *label;
+	const char *line_name;
 };
 
 static struct gpio_info *gpio_desc;
@@ -434,6 +435,42 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
 	return 0;
 }
 
+/**
+ * of_gpiochip_set_names - Set GPIO line names using device properties
+ * @chip: GPIO chip whose lines should be named, if possible
+ * @np: device_node containing the gpio-line-names property
+ *
+ * Looks for device property "gpio-line-names" and if it exists assigns
+ * GPIO line names for the chip. The memory allocated for the assigned
+ * names belong to the underlying device tree node and should not be released
+ * by the caller.
+ */
+static void of_gpiochip_set_names(struct gpio_chip *chip,
+				  struct device_node *np)
+{
+	int ret, i;
+	const char *name;
+	int count;
+
+	count = of_property_count_strings(np, "gpio-line-names");
+	if (count < 0)
+		return;
+
+	if (count > chip->ngpio)
+		count = chip->ngpio;
+
+	for (i = 0; i < count; i++) {
+		ret = of_property_read_string_index(np, "gpio-line-names",
+						    i, &name);
+		if (ret < 0) {
+			dev_warn(chip->dev, "failed to read GPIO line names\n");
+			return;
+		}
+
+		gpio_desc[chip->base + i].line_name = name;
+	}
+}
+
 int gpiochip_add(struct gpio_chip *chip)
 {
 	int base, i;
@@ -452,6 +489,8 @@ int gpiochip_add(struct gpio_chip *chip)
 	for (i = chip->base; i < chip->base + chip->ngpio; i++)
 		gpio_desc[i].chip = chip;
 
+	of_gpiochip_set_names(chip, chip->dev->device_node);
+
 	return of_gpiochip_scan_hogs(chip);
 }
 
@@ -490,6 +529,7 @@ static int do_gpiolib(int argc, char *argv[])
 	for (i = 0; i < ARCH_NR_GPIOS; i++) {
 		struct gpio_info *gi = &gpio_desc[i];
 		int val = -1, dir = -1;
+		const char *name = "";
 
 		if (!gi->chip)
 			continue;
@@ -510,11 +550,16 @@ static int do_gpiolib(int argc, char *argv[])
 			val = gi->chip->ops->get(gi->chip,
 						i - gi->chip->base);
 
+		if (gi->requested && gi->label)
+			name = gi->label;
+		else if (gi->line_name)
+			name = gi->line_name;
+
 		printf("  GPIO %*d: %*s %*s %*s  %s\n", 4, i,
 			3, (dir < 0) ? "unk" : ((dir == GPIOF_DIR_IN) ? "in" : "out"),
 			3, (val < 0) ? "unk" : ((val == 0) ? "lo" : "hi"),
 		        12, gi->requested ? (gi->active_low ? "active low" : "true") : "false",
-			(gi->requested && gi->label) ? gi->label : "");
+			name);
 	}
 
 	return 0;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
