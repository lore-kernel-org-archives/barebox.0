Delivery-date: Wed, 14 Jul 2021 11:16:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m3b0D-0001If-C3
	for lore@lore.pengutronix.de; Wed, 14 Jul 2021 11:16:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m3b0C-0006NZ-9X
	for lore@pengutronix.de; Wed, 14 Jul 2021 11:16:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S4kOaVRDvYI4NFJqR9c1I15A4RUsEOezCdI/LYKThr4=; b=erWG3FLNXwEjS/
	XA5T5Dda85QS2ALWqPoh1LM5bRSiOlgVJ9iXCbsQ3x+NozVgiD9LFCXM/L1bufhLCye54DAi2E56h
	sets66lh8a8ACT86My5yOOoZw1yX5BK7/O7wQmUgZSiGpcpD6KXGN9Lz61kycx4kR9/+bFiI7XeYg
	CuIjbePggd847UQlHxk7QamyFHFd/NWwoEArTSwvxZpJb9k7Z5bLecAfW2dUf7e0PbhaoQv90rSRQ
	tUIwVWW5sOECwXuG90BjCplMMKAdirhP6Go3apHTCBZhdbNTHLKkFnO6KE5Mi1+xq6kPnOfpGkWrV
	XdPLYX20lVJe7Ow9ODIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3ayP-00Cqez-8L; Wed, 14 Jul 2021 09:14:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3ayJ-00Cqbp-FN
 for barebox@lists.infradead.org; Wed, 14 Jul 2021 09:14:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <jbe@pengutronix.de>) id 1m3ayG-0005oM-Eb
 for barebox@lists.infradead.org; Wed, 14 Jul 2021 11:14:24 +0200
Received: from [2a0a:edc0:0:900:2e4d:54ff:fe67:bfa5] (helo=ginster)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <jbe@pengutronix.de>) id 1m3ayF-0007JH-UE
 for barebox@lists.infradead.org; Wed, 14 Jul 2021 11:14:23 +0200
Received: from jbe by ginster with local (Exim 4.92)
 (envelope-from <jbe@pengutronix.de>) id 1m3ayF-0004C7-Tf
 for barebox@lists.infradead.org; Wed, 14 Jul 2021 11:14:23 +0200
From: Juergen Borleis <jbe@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 14 Jul 2021 11:14:23 +0200
Message-Id: <20210714091423.16081-1-jbe@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_021427_568032_A8115C88 
X-CRM114-Status: GOOD (  23.16  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] led: Add a 74273 led driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/led/Kconfig          |   2 +
 drivers/led/Makefile         |   1 +
 drivers/led/led-74273-gpio.c | 176 +++++++++++++++++++++++++++++++++++
 3 files changed, 179 insertions(+)
 create mode 100644 drivers/led/led-74273-gpio.c

diff --git a/drivers/led/Kconfig b/drivers/led/Kconfig
index 2a5920a..876aa31 100644
--- a/drivers/led/Kconfig
+++ b/drivers/led/Kconfig
@@ -39,5 +39,7 @@ config LED_PCA955X
 	  LED driver chips accessed via the I2C bus.  Supported
 	  devices include PCA9550, PCA9551, PCA9552, and PCA9553.
 
+config LED_74273_GPIO
+	bool "Support for LEDs connected through a 74273"
 
 endif
diff --git a/drivers/led/Makefile b/drivers/led/Makefile
index 35693a7..5732f27 100644
--- a/drivers/led/Makefile
+++ b/drivers/led/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_LED) += core.o
 obj-$(CONFIG_LED_GPIO) += led-gpio.o
 obj-$(CONFIG_LED_PWM) += led-pwm.o
+obj-$(CONFIG_LED_74273_GPIO) += led-74273-gpio.o
 obj-$(CONFIG_LED_TRIGGERS) += led-triggers.o
 obj-$(CONFIG_LED_PCA955X) += led-pca955x.o
diff --git a/drivers/led/led-74273-gpio.c b/drivers/led/led-74273-gpio.c
new file mode 100644
index 0000000..1d62e32
--- /dev/null
+++ b/drivers/led/led-74273-gpio.c
@@ -0,0 +1,176 @@
+/*
+ * Copyright (c) 2017 Sascha Hauer, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <led.h>
+#include <malloc.h>
+#include <gpio.h>
+#include <of_gpio.h>
+
+struct sn74273;
+
+struct sn74273_led {
+	struct led led;
+	struct sn74273 *sn74273;
+	int port;
+	int pin;
+};
+
+struct sn74273 {
+	struct sn74273_led *leds;
+	int *clk_gpios;
+	int *data_gpios;
+	u8 *shadow;
+	int n_ports;
+	int n_pins;
+	int n_leds;
+};
+
+static void sn74273_led_set(struct led *led, unsigned int brightness)
+{
+	struct sn74273_led *sled = container_of(led, struct sn74273_led, led);
+	struct sn74273 *sn74273 = sled->sn74273;
+	int i, j;
+	u8 val;
+
+	val = sn74273->shadow[sled->port];
+	if (brightness)
+		val |= 1 << sled->pin;
+	else
+		val &= ~(1 << sled->pin);
+	sn74273->shadow[sled->port] = val;
+
+	for (i = 0; i < sn74273->n_ports; i++) {
+		for (j = 0; j < sn74273->n_pins; j++) {
+			gpio_set_active(sn74273->data_gpios[j],
+				sn74273->shadow[i] & (1 << j));
+		}
+
+		gpio_set_active(sn74273->clk_gpios[i], 1);
+		gpio_set_active(sn74273->clk_gpios[i], 0);
+	}
+}
+
+static int sn74273_led_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct sn74273 *sn74273;
+	int i, ret;
+	enum of_gpio_flags flags;
+
+	sn74273 = xzalloc(sizeof(*sn74273));
+
+	sn74273->n_ports = of_gpio_named_count(np, "clk-gpios");
+	if (sn74273->n_ports < 0) {
+		dev_err(dev, "invalid or missing clk-gpios");
+		ret = -EINVAL;
+		goto err_gpio;
+	}
+
+	sn74273->n_pins = of_gpio_named_count(np, "data-gpios");
+	if (sn74273->n_pins < 0) {
+		dev_err(dev, "invalid or missing data-gpios");
+		ret = -EINVAL;
+		goto err_gpio;
+	}
+
+	sn74273->n_leds = sn74273->n_ports * sn74273->n_pins;
+
+	sn74273->clk_gpios = xzalloc(sizeof(int) * sn74273->n_ports);
+	sn74273->data_gpios = xzalloc(sizeof(int) * sn74273->n_pins);
+
+	for (i = 0; i < sn74273->n_ports; i++) {
+		sn74273->clk_gpios[i] = of_get_named_gpio_flags(np, "clk-gpios",
+								i, &flags);
+		ret = gpio_request_one(sn74273->clk_gpios[i],
+				 flags & OF_GPIO_ACTIVE_LOW ? GPIOF_ACTIVE_LOW : 0,
+				 dev_name(dev));
+		if (ret) {
+			dev_err(dev, "Cannot request gpio %d: %s\n", sn74273->clk_gpios[i],
+				strerror(-ret));
+			goto err_gpio;
+		}
+
+		gpio_direction_output(sn74273->clk_gpios[i], 0);
+	}
+
+	for (i = 0; i < sn74273->n_pins; i++) {
+		sn74273->data_gpios[i] = of_get_named_gpio_flags(np, "data-gpios",
+								 i, &flags);
+		ret = gpio_request_one(sn74273->data_gpios[i],
+				 flags & OF_GPIO_ACTIVE_LOW ? GPIOF_ACTIVE_LOW : 0,
+				 dev_name(dev));
+		if (ret) {
+			dev_err(dev, "Cannot request gpio %d: %s\n", sn74273->data_gpios[i],
+				strerror(-ret));
+			goto err_gpio;
+		}
+
+		gpio_direction_output(sn74273->data_gpios[i], 0);
+	}
+
+	sn74273->shadow = xzalloc(sizeof(u8) * sn74273->n_ports);
+	sn74273->leds = xzalloc(sizeof(*sn74273->leds) * sn74273->n_leds);
+
+	for (i = 0; i < sn74273->n_leds; i++) {
+		struct sn74273_led *led = &sn74273->leds[i];
+		const char *name;
+
+		led->port = i / sn74273->n_pins;
+		led->pin = i % sn74273->n_pins;
+
+		ret = of_property_read_string_index(np, "labels", i, &name);
+		if (ret)
+			led->led.name = basprintf("%s-%d", dev_name(dev), i);
+		else
+			led->led.name = xstrdup(name);
+
+		led->led.set = sn74273_led_set;
+		led->led.max_value = 1;
+		led->sn74273 = sn74273;
+
+		ret = led_register(&led->led);
+		if (ret) {
+			dev_err(dev, "Failed to register led %d\n", i);
+			goto err_register;
+		}
+	}
+
+	return 0;
+
+err_register:
+	for (i = i - 1; i >= 0; i--) {
+		struct sn74273_led *led = &sn74273->leds[i];
+
+		led_unregister(&led->led);
+	}
+
+err_gpio:
+	return ret;
+}
+
+static const struct of_device_id of_sn74273_gpio_leds_match[] = {
+	{
+		.compatible = "74273-gpio-leds",
+	}, {
+	},
+};
+
+static struct driver_d sn74273_led_driver = {
+	.name		= "74273-gpio-leds",
+	.of_compatible	= of_sn74273_gpio_leds_match,
+	.probe		= sn74273_led_probe,
+};
+
+device_platform_driver(sn74273_led_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

