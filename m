Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctEg-0000S7-MJ
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 15:07:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEf-0000j1-6H
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:53 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0002G9-F1
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 17:07:42 +0200
Message-Id: <20190617150751.3421-4-a.fatoum@pengutronix.de>
In-Reply-To: <20190617150751.3421-1-a.fatoum@pengutronix.de>
References: <20190617150751.3421-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v1 03/12] gpiolib: add gpio_get_chip helper
To: barebox@lists.infradead.org

Pinctrl nodes adhering to the generic pinctrl bindings may contain
properties like input-low/input-high, which require pinctrl_ops.set_state
to have a handle on the relevant gpio chip.

Currently this would lead to code duplication: Both the pinctrl driver
and gpiolib will need to store a list of registered gpiochips.

Avoid this by providing a helper to query the registered gpio_chip
given a gpio's number.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 7 +++++++
 include/gpio.h         | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 4c7aee4a0b19..f96009896a41 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -475,6 +475,13 @@ int gpio_get_num(struct device_d *dev, int gpio)
 	return -EPROBE_DEFER;
 }
 
+struct gpio_chip *gpio_get_chip(int gpio)
+{
+	struct gpio_info *gi = gpio_to_desc(gpio);
+
+	return gi ? gi->chip : NULL;
+}
+
 #ifdef CONFIG_CMD_GPIO
 static int do_gpiolib(int argc, char *argv[])
 {
diff --git a/include/gpio.h b/include/gpio.h
index 38d6ba2df913..e822fd53475d 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -153,5 +153,6 @@ int gpiochip_add(struct gpio_chip *chip);
 void gpiochip_remove(struct gpio_chip *chip);
 
 int gpio_get_num(struct device_d *dev, int gpio);
+struct gpio_chip *gpio_get_chip(int gpio);
 
 #endif /* __GPIO_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
