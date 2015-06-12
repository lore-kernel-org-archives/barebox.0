Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3Lf4-0004aA-3v
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 09:54:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 11:53:37 +0200
Message-Id: <1434102821-10555-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] video: Add backlight support
To: Barebox List <barebox@lists.infradead.org>

This adds a small backlight layer. It provides a backlight device
on which the brightness parameter can be used to adjust the brightness.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/Kconfig     |  4 +++
 drivers/video/Makefile    |  1 +
 drivers/video/backlight.c | 90 +++++++++++++++++++++++++++++++++++++++++++++++
 include/video/backlight.h | 20 +++++++++++
 4 files changed, 115 insertions(+)
 create mode 100644 drivers/video/backlight.c
 create mode 100644 include/video/backlight.h

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index f096a54..e108d8a 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -93,4 +93,8 @@ config DRIVER_VIDEO_EDID
 	  This enabled support for reading and parsing EDID data from an attached
 	  monitor.
 
+config DRIVER_VIDEO_BACKLIGHT
+	bool "Add backlight support"
+	help
+	  Enable this for backlight support.
 endif
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index ae9f6e5..0655b0f 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_VIDEO) += fb.o
 obj-$(CONFIG_DRIVER_VIDEO_EDID) += edid.o
 obj-$(CONFIG_OFDEVICE) += of_display_timing.o
+obj-$(CONFIG_DRIVER_VIDEO_BACKLIGHT) += backlight.o
 
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o atmel_lcdfb_core.o
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL_HLCD) += atmel_hlcdfb.o atmel_lcdfb_core.o
diff --git a/drivers/video/backlight.c b/drivers/video/backlight.c
new file mode 100644
index 0000000..ddde6f8
--- /dev/null
+++ b/drivers/video/backlight.c
@@ -0,0 +1,90 @@
+#include <common.h>
+#include <driver.h>
+#include <linux/list.h>
+#include <video/backlight.h>
+
+static LIST_HEAD(backlights);
+
+int backlight_set_brightness(struct backlight_device *bl, int brightness)
+{
+	int ret, step, i, num_steps;
+
+	if (brightness > bl->brightness_max)
+		brightness = bl->brightness_max;
+
+	if (brightness == bl->brightness_cur)
+		return 0;
+
+	if (brightness > bl->brightness_cur)
+		step = 1;
+	else
+		step = -1;
+
+	i = bl->brightness_cur;
+
+	num_steps = abs(brightness - bl->brightness_cur);
+
+	while (1) {
+		i += step;
+
+		ret = bl->brightness_set(bl, i);
+		if (ret)
+			return ret;
+
+		if (i == brightness)
+			break;
+
+		udelay(100000 / num_steps);
+	}
+
+
+	bl->brightness_cur = bl->brightness = brightness;
+
+	return ret;
+}
+
+int backlight_set_brightness_default(struct backlight_device *bl)
+{
+	int ret;
+
+	ret = backlight_set_brightness(bl, bl->brightness_default);
+
+	return ret;
+}
+
+static int backlight_brightness_set(struct param_d *p, void *priv)
+{
+	struct backlight_device *bl = priv;
+
+	return backlight_set_brightness(bl, bl->brightness);
+}
+
+int backlight_register(struct backlight_device *bl)
+{
+	int ret;
+
+	sprintf(bl->dev.name, "backlight");
+	bl->dev.id = DEVICE_ID_DYNAMIC;
+
+	ret = register_device(&bl->dev);
+	if (ret)
+		return ret;
+
+	dev_add_param_int(&bl->dev, "brightness", backlight_brightness_set,
+			NULL, &bl->brightness, "%d", bl);
+
+	list_add_tail(&bl->list, &backlights);
+
+	return ret;
+}
+
+struct backlight_device *of_backlight_find(struct device_node *node)
+{
+	struct backlight_device *bl;
+
+	list_for_each_entry(bl, &backlights, list)
+		if (bl->node == node)
+			return bl;
+
+	return NULL;
+}
diff --git a/include/video/backlight.h b/include/video/backlight.h
new file mode 100644
index 0000000..56e0341
--- /dev/null
+++ b/include/video/backlight.h
@@ -0,0 +1,20 @@
+#ifndef __VIDEO_BACKLIGHT_H
+#define __VIDEO_BACKLIGHT_H
+
+struct backlight_device {
+	int brightness;
+	int brightness_cur;
+	int brightness_max;
+	int brightness_default;
+	int (*brightness_set)(struct backlight_device *, int brightness);
+	struct list_head list;
+	struct device_d dev;
+	struct device_node *node;
+};
+
+int backlight_set_brightness(struct backlight_device *, int brightness);
+int backlight_set_brightness_default(struct backlight_device *);
+int backlight_register(struct backlight_device *);
+struct backlight_device *of_backlight_find(struct device_node *node);
+
+#endif /* __VIDEO_BACKLIGHT_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
