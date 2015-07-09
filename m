Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZD6CH-0000de-MI
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 07:24:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Jul 2015 09:24:17 +0200
Message-Id: <1436426657-5266-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1436426657-5266-1-git-send-email-s.hauer@pengutronix.de>
References: <1436426657-5266-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/13] video: Add simple-panel support
To: Barebox List <barebox@lists.infradead.org>

This adds support for simple panels. These are panels which don't need
special handling but can have enable gpios and such. Unlike the Linux
kernel implementation this one is able to understand display-timings
nodes so that it's not necessary to keep a list of all known displays
with their corresponding timings in barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/Kconfig        |   9 +++
 drivers/video/Makefile       |   1 +
 drivers/video/simple-panel.c | 160 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 170 insertions(+)
 create mode 100644 drivers/video/simple-panel.c

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 6637877..323fb77 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -117,4 +117,13 @@ config DRIVER_VIDEO_MTL017
 	  The MTL017 is a parallel to lvds video encoder chip found on the
 	  Efika MX Smartbook.
 
+config DRIVER_VIDEO_SIMPLE_PANEL
+	bool "Simple panel support"
+	select VIDEO_VPL
+	help
+	  This enabled support for simple panels, i.e. panels which consist of
+	  a mode definition and enable gpios in the devicetree. Unlike the
+	  Linux Kernel implementation this one is able to understand display-timings
+	  nodes so that it's not necessary to keep a list of all known displays
+	  with their corresponding timings in barebox.
 endif
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 1e2109e..eab6461 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_DRIVER_VIDEO_BACKLIGHT) += backlight.o
 obj-$(CONFIG_DRIVER_VIDEO_BACKLIGHT_PWM) += backlight-pwm.o
 obj-$(CONFIG_VIDEO_VPL) += vpl.o
 obj-$(CONFIG_DRIVER_VIDEO_MTL017) += mtl017.o
+obj-$(CONFIG_DRIVER_VIDEO_SIMPLE_PANEL) += simple-panel.o
 
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o atmel_lcdfb_core.o
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL_HLCD) += atmel_hlcdfb.o atmel_lcdfb_core.o
diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
new file mode 100644
index 0000000..dceedc6
--- /dev/null
+++ b/drivers/video/simple-panel.c
@@ -0,0 +1,160 @@
+/*
+ * simple panel support for barebox
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
+#include <linux/err.h>
+#include <of.h>
+#include <fb.h>
+#include <gpio.h>
+#include <of_gpio.h>
+#include <video/backlight.h>
+#include <video/vpl.h>
+#include <i2c/i2c.h>
+
+struct simple_panel {
+	struct vpl vpl;
+	int enable_gpio;
+	int enable_active_high;
+	int enabled;
+	struct device_node *backlight_node;
+	struct backlight_device *backlight;
+	struct device_node *ddc_node;
+	int enable_delay;
+};
+
+static int simple_panel_enable(struct simple_panel *panel)
+{
+	int ret;
+
+	if (panel->backlight_node && !panel->backlight) {
+		panel->backlight = of_backlight_find(panel->backlight_node);
+		if (!panel->backlight)
+			return -ENODEV;
+	}
+
+	if (gpio_is_valid(panel->enable_gpio))
+		gpio_direction_output(panel->enable_gpio,
+			panel->enable_active_high);
+
+	if (panel->enable_delay)
+		mdelay(panel->enable_delay);
+
+	if (panel->backlight) {
+		ret = backlight_set_brightness_default(panel->backlight);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int simple_panel_disable(struct simple_panel *panel)
+{
+	if (panel->backlight)
+		backlight_set_brightness(panel->backlight, 0);
+
+	if (gpio_is_valid(panel->enable_gpio))
+		gpio_direction_output(panel->enable_gpio,
+			!panel->enable_active_high);
+
+	return 0;
+}
+
+static int simple_panel_get_modes(struct simple_panel *panel, struct display_timings *timings)
+{
+	int ret = -ENOENT;
+
+	if (panel->ddc_node) {
+		struct i2c_adapter *i2c;
+
+                i2c = of_find_i2c_adapter_by_node(panel->ddc_node);
+		if (!i2c)
+			return -ENODEV;
+		timings->edid = edid_read_i2c(i2c);
+		if (!timings->edid)
+			return -EINVAL;
+
+		ret = edid_to_display_timings(timings, timings->edid);
+	}
+
+	return ret;
+}
+
+static int simple_panel_ioctl(struct vpl *vpl, unsigned int port,
+			unsigned int cmd, void *ptr)
+{
+	struct simple_panel *panel = container_of(vpl,
+			struct simple_panel, vpl);
+
+	switch (cmd) {
+	case VPL_ENABLE:
+		return simple_panel_enable(panel);
+	case VPL_DISABLE:
+		return simple_panel_disable(panel);
+	case VPL_GET_VIDEOMODES:
+		return simple_panel_get_modes(panel, ptr);
+	default:
+		return -ENOSYS;
+	}
+}
+
+static int simple_panel_probe(struct device_d *dev)
+{
+	struct simple_panel *panel;
+	struct device_node *node = dev->device_node;
+	enum of_gpio_flags flags;
+	int ret;
+
+	panel = xzalloc(sizeof(*panel));
+
+	panel->enable_gpio = of_get_named_gpio_flags(node, "enable-gpios", 0, &flags);
+	panel->vpl.node = node;
+	panel->vpl.ioctl = simple_panel_ioctl;
+
+	if (gpio_is_valid(panel->enable_gpio)) {
+		if (!(flags & OF_GPIO_ACTIVE_LOW))
+			panel->enable_active_high = 1;
+	}
+
+	panel->ddc_node = of_parse_phandle(node, "ddc-i2c-bus", 0);
+
+	of_property_read_u32(node, "enable-delay", &panel->enable_delay);
+
+	panel->backlight_node = of_parse_phandle(node, "backlight", 0);
+
+	ret = vpl_register(&panel->vpl);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static struct of_device_id simple_panel_of_ids[] = {
+	{ .compatible = "simple-panel", },
+	{ }
+};
+
+static struct driver_d simple_panel_driver = {
+	.name  = "simple-panel",
+	.probe = simple_panel_probe,
+	.of_compatible = DRV_OF_COMPAT(simple_panel_of_ids),
+};
+device_platform_driver(simple_panel_driver);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
