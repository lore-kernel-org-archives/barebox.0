Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3Lf4-0004aC-3w
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 09:54:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 11:53:38 +0200
Message-Id: <1434102821-10555-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434102821-10555-1-git-send-email-s.hauer@pengutronix.de>
References: <1434102821-10555-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] video: Add PWM backlight support
To: Barebox List <barebox@lists.infradead.org>

This adds a backlight driver for backlights controlled by a PWM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/Kconfig         |   8 ++
 drivers/video/Makefile        |   1 +
 drivers/video/backlight-pwm.c | 199 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 208 insertions(+)
 create mode 100644 drivers/video/backlight-pwm.c

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index e108d8a..8e6ae99 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -97,4 +97,12 @@ config DRIVER_VIDEO_BACKLIGHT
 	bool "Add backlight support"
 	help
 	  Enable this for backlight support.
+
+config DRIVER_VIDEO_BACKLIGHT_PWM
+	bool "PWM backlight support"
+	depends on PWM
+	depends on DRIVER_VIDEO_BACKLIGHT
+	help
+	  Enable this to get support for backlight devices driven by a PWM.
+
 endif
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 0655b0f..76fad5c 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -2,6 +2,7 @@ obj-$(CONFIG_VIDEO) += fb.o
 obj-$(CONFIG_DRIVER_VIDEO_EDID) += edid.o
 obj-$(CONFIG_OFDEVICE) += of_display_timing.o
 obj-$(CONFIG_DRIVER_VIDEO_BACKLIGHT) += backlight.o
+obj-$(CONFIG_DRIVER_VIDEO_BACKLIGHT_PWM) += backlight-pwm.o
 
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o atmel_lcdfb_core.o
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL_HLCD) += atmel_hlcdfb.o atmel_lcdfb_core.o
diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
new file mode 100644
index 0000000..ae0b0ca
--- /dev/null
+++ b/drivers/video/backlight-pwm.c
@@ -0,0 +1,199 @@
+/*
+ * pwm backlight support for barebox
+ *
+ * (C) Copyright 2014 Sascha Hauer, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <malloc.h>
+#include <init.h>
+#include <video/backlight.h>
+#include <pwm.h>
+#include <linux/err.h>
+#include <of.h>
+#include <gpio.h>
+#include <of_gpio.h>
+#include <asm-generic/div64.h>
+
+struct pwm_backlight {
+	struct backlight_device backlight;
+	struct pwm_device *pwm;
+	uint32_t period;
+	unsigned int *levels;
+	int enable_gpio;
+	int enable_active_high;
+	int max_value;
+	int enabled;
+};
+
+static int backlight_pwm_enable(struct pwm_backlight *pwm_backlight)
+{
+	int ret;
+
+	if (pwm_backlight->enabled)
+		return 0;
+
+	ret = pwm_enable(pwm_backlight->pwm);
+	if (ret)
+		return ret;
+
+	if (gpio_is_valid(pwm_backlight->enable_gpio)) {
+		gpio_direction_output(pwm_backlight->enable_gpio,
+				pwm_backlight->enable_active_high);
+	}
+
+	pwm_backlight->enabled = 1;
+
+	return 0;
+}
+
+static int backlight_pwm_disable(struct pwm_backlight *pwm_backlight)
+{
+	if (!pwm_backlight->enabled)
+		return 0;
+
+	if (gpio_is_valid(pwm_backlight->enable_gpio)) {
+		gpio_direction_output(pwm_backlight->enable_gpio,
+				!pwm_backlight->enable_active_high);
+		/*
+		 * Only disable PWM when an enable gpio is present.
+		 * The output of the PWM is undefined when the PWM
+		 * is disabled.
+		 */
+		pwm_disable(pwm_backlight->pwm);
+		pwm_backlight->enabled = 0;
+	}
+
+	return 0;
+}
+
+static int backlight_pwm_set(struct backlight_device *backlight,
+		int brightness)
+{
+	struct pwm_backlight *pwm_backlight = container_of(backlight,
+			struct pwm_backlight, backlight);
+	unsigned long long duty =  pwm_backlight->period;
+	unsigned int max = pwm_backlight->backlight.brightness_max;
+
+        duty *= brightness;
+        do_div(duty, max);
+
+	pwm_config(pwm_backlight->pwm, duty, pwm_backlight->period);
+
+	if (brightness)
+		return backlight_pwm_enable(pwm_backlight);
+	else
+		return backlight_pwm_disable(pwm_backlight);
+}
+
+static int pwm_backlight_parse_dt(struct device_d *dev,
+		struct pwm_backlight *pwm_backlight)
+{
+	struct device_node *node = dev->device_node;
+	struct property *prop;
+	int length;
+	u32 value;
+	int ret;
+	enum of_gpio_flags flags;
+
+	if (!node)
+		return -ENODEV;
+
+	/* determine the number of brightness levels */
+	prop = of_find_property(node, "brightness-levels", &length);
+	if (!prop)
+		return -EINVAL;
+
+	pwm_backlight->backlight.brightness_max = length / sizeof(u32);
+
+	/* read brightness levels from DT property */
+	if (pwm_backlight->backlight.brightness_max > 0) {
+		size_t size = sizeof(*pwm_backlight->levels) *
+			pwm_backlight->backlight.brightness_max;
+
+		pwm_backlight->levels = xzalloc(size);
+		if (!pwm_backlight->levels)
+			return -ENOMEM;
+
+		ret = of_property_read_u32_array(node, "brightness-levels",
+						 pwm_backlight->levels,
+						 pwm_backlight->backlight.brightness_max);
+		if (ret < 0)
+			return ret;
+
+		ret = of_property_read_u32(node, "default-brightness-level",
+					   &value);
+		if (ret < 0)
+			return ret;
+
+		pwm_backlight->backlight.brightness_default = value;
+		pwm_backlight->backlight.brightness_max--;
+	}
+
+	pwm_backlight->enable_gpio = of_get_named_gpio_flags(node, "enable-gpios", 0, &flags);
+
+	if (gpio_is_valid(pwm_backlight->enable_gpio)) {
+		if (!(flags & OF_GPIO_ACTIVE_LOW))
+			pwm_backlight->enable_active_high = 1;
+	}
+
+	return 0;
+}
+
+static int backlight_pwm_of_probe(struct device_d *dev)
+{
+	int ret;
+	struct pwm_backlight *pwm_backlight;
+	struct pwm_device *pwm;
+
+	pwm = of_pwm_request(dev->device_node, NULL);
+	if (IS_ERR(pwm))
+		return PTR_ERR(pwm);
+
+	pwm_backlight = xzalloc(sizeof(*pwm_backlight));
+	pwm_backlight->pwm = pwm;
+	pwm_backlight->period = pwm_get_period(pwm);
+
+	ret = pwm_backlight_parse_dt(dev, pwm_backlight);
+	if (ret)
+		return ret;
+
+	pwm_backlight->period = pwm_get_period(pwm_backlight->pwm);
+
+	pwm_backlight->backlight.brightness_set = backlight_pwm_set;
+	pwm_backlight->backlight.node = dev->device_node;
+
+	ret = backlight_register(&pwm_backlight->backlight);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static struct of_device_id backlight_pwm_of_ids[] = {
+	{
+		.compatible = "pwm-backlight",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d backlight_pwm_of_driver = {
+	.name  = "pwm-backlight",
+	.probe = backlight_pwm_of_probe,
+	.of_compatible = DRV_OF_COMPAT(backlight_pwm_of_ids),
+};
+device_platform_driver(backlight_pwm_of_driver);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
