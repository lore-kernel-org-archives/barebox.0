Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aMi-0007qi-Ob
 for barebox@lists.infradead.org; Mon, 17 Aug 2020 08:19:52 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 17 Aug 2020 10:19:24 +0200
Message-Id: <20200817081929.2329-3-o.rempel@pengutronix.de>
In-Reply-To: <20200817081929.2329-1-o.rempel@pengutronix.de>
References: <20200817081929.2329-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v4 2/7] gpiolib: add gpio_array_to_id helper to get ID out of
 GPIO array
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Some boards provide a board version and/or ID coded by pull-up/down
resistors connected to the gpio pins (or pins which can be multiplexed
at some point as gpio). In this case every one implements own gpio id
reader function.

To avoid it, provide the common helper function to extract a value out
of provided gpio array.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 31 +++++++++++++++++++++++++++++++
 include/gpio.h         |  5 +++++
 2 files changed, 36 insertions(+)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 27674af54c..6088cadd8a 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -381,6 +381,37 @@ void gpio_free_array(const struct gpio *array, size_t num)
 }
 EXPORT_SYMBOL_GPL(gpio_free_array);
 
+int gpio_array_to_id(const struct gpio *array, size_t num, u32 *val)
+{
+	u32 id = 0;
+	int ret, i;
+
+	if (num > 32)
+		return -EOVERFLOW;
+
+	ret = gpio_request_array(array, num);
+	if (ret)
+		return ret;
+
+	/* Wait until logic level will be stable */
+	udelay(5);
+	for (i = 0; i < num; i++) {
+		ret = gpio_is_active(array[i].gpio);
+		if (ret < 0)
+			goto free_array;
+		if (ret)
+			id |= 1UL << i;
+	}
+
+	*val = id;
+	ret = 0;
+
+free_array:
+	gpio_free_array(array, num);
+	return ret;
+}
+EXPORT_SYMBOL(gpio_array_to_id);
+
 static int gpiochip_find_base(int start, int ngpio)
 {
 	int i;
diff --git a/include/gpio.h b/include/gpio.h
index 98c5b93ba2..81beb47309 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -145,6 +145,10 @@ static inline void gpio_free_array(const struct gpio *array, size_t num)
 	/* GPIO can never have been requested */
 	WARN_ON(1);
 }
+static inline int gpio_array_to_id(const struct gpio *array, size_t num, u32 *val)
+{
+	return -EINVAL;
+}
 #else
 int gpio_request(unsigned gpio, const char *label);
 int gpio_find_by_name(const char *name);
@@ -153,6 +157,7 @@ void gpio_free(unsigned gpio);
 int gpio_request_one(unsigned gpio, unsigned long flags, const char *label);
 int gpio_request_array(const struct gpio *array, size_t num);
 void gpio_free_array(const struct gpio *array, size_t num);
+int gpio_array_to_id(const struct gpio *array, size_t num, u32 *val);
 #endif
 
 struct gpio_chip;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
