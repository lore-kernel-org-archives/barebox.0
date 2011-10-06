Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RBixH-0002EZ-Vj
	for barebox@lists.infradead.org; Thu, 06 Oct 2011 08:05:25 +0000
Received: from [192.168.0.14] (tra42-5-83-152-246-54.fbx.proxad.net
	[83.152.246.54])
	by mail.free-electrons.com (Postfix) with ESMTPA id 95543289
	for <barebox@lists.infradead.org>;
	Thu,  6 Oct 2011 10:05:11 +0200 (CEST)
Message-ID: <4E8D6138.3090702@free-electrons.com>
Date: Thu, 06 Oct 2011 10:05:12 +0200
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC/PATCH 1/2] backlight: Add backlight framework to support
	backlight driver
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
---
 drivers/video/Kconfig               |    3 +-
 drivers/video/Makefile              |    2 +
 drivers/video/backlight/Kconfig     |    8 +++
 drivers/video/backlight/Makefile    |    1 +
 drivers/video/backlight/backlight.c |   85 +++++++++++++++++++++++++++++++++++
 include/backlight.h                 |   21 +++++++++
 6 files changed, 119 insertions(+), 1 deletions(-)
 create mode 100644 drivers/video/backlight/Kconfig
 create mode 100644 drivers/video/backlight/Makefile
 create mode 100644 drivers/video/backlight/backlight.c
 create mode 100644 include/backlight.h

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 28bcfed..e3e6894 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -39,5 +39,6 @@ config DRIVER_VIDEO_S3C_VERBOSE
 	bool "S3C244x verbose framebuffer info"
 
 endif
-
+source "drivers/video/backlight/Kconfig"
 endif
+
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 66b08d8..a619b09 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -4,3 +4,5 @@ obj-$(CONFIG_DRIVER_VIDEO_STM) += stm.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
 obj-$(CONFIG_DRIVER_VIDEO_S3C) += s3c.o
+
+obj-$(CONFIG_BACKLIGHT) += backlight/
\ No newline at end of file
diff --git a/drivers/video/backlight/Kconfig b/drivers/video/backlight/Kconfig
new file mode 100644
index 0000000..b593a82
--- /dev/null
+++ b/drivers/video/backlight/Kconfig
@@ -0,0 +1,8 @@
+#
+# Backlight configuration
+#
+
+menuconfig BACKLIGHT
+	bool "Backlight support"
+	help
+	  Add support for backlight
diff --git a/drivers/video/backlight/Makefile b/drivers/video/backlight/Makefile
new file mode 100644
index 0000000..3c63230
--- /dev/null
+++ b/drivers/video/backlight/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_BACKLIGHT) += backlight.o
\ No newline at end of file
diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
new file mode 100644
index 0000000..d4161e9
--- /dev/null
+++ b/drivers/video/backlight/backlight.c
@@ -0,0 +1,85 @@
+/*
+ * Copyright (C) 2011 Gregory Clement, Free Electrons
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307,
+ * USA.
+ *
+ */
+#include <common.h>
+#include <backlight.h>
+#include <errno.h>
+#include <init.h>
+
+static int backlight_set_brightness(struct device_d *dev,
+				    struct param_d *param, const char *val)
+{
+	struct backlight_dev *backlight;
+	int percent = 0;
+	unsigned char new[4];
+
+	backlight = (struct backlight_dev *)dev->priv;
+
+	if (!val)
+		return dev_param_set_generic(dev, param, NULL);
+
+	percent = simple_strtoul(val, NULL, 0);
+
+	if (backlight->set_brightness) {
+		percent = backlight->set_brightness(backlight, percent);
+		snprintf(new, 4, "%.3d", percent);
+		dev_param_set_generic(dev, param, new);
+	} else {
+		dev_err(dev, "unsupported function\n");
+	}
+
+	return 0;
+}
+
+int register_backlight(struct backlight_dev *backlight)
+{
+	int id = get_free_deviceid("backlight");
+	struct device_d *dev;
+
+	dev = &backlight->dev;
+
+	dev->priv = backlight;
+	dev->id = id;
+
+	sprintf(dev->name, "backlight");
+
+	register_device(&backlight->dev);
+	dev_add_param(dev, "brightness", backlight_set_brightness, NULL, 0);
+	dev_set_param(dev, "brightness", "0");
+	return 0;
+}
+EXPORT_SYMBOL(register_backlight);
+
+static int backlight_probe(struct device_d *hw_dev)
+{
+	return 0;
+}
+
+static struct driver_d backlight_driver = {
+	.name = "backlight",
+	.probe = backlight_probe,
+};
+
+static int backlight_init_driver(void)
+{
+	register_driver(&backlight_driver);
+	return 0;
+}
+
+device_initcall(backlight_init_driver);
diff --git a/include/backlight.h b/include/backlight.h
new file mode 100644
index 0000000..7785c63
--- /dev/null
+++ b/include/backlight.h
@@ -0,0 +1,21 @@
+/*
+ * backlight.h - definitions for the barebox backlight framework
+ *
+ * Copyright (C) 2011 Gregory Clement, Free Electrons
+ *
+ * This file is released under the GPLv2 or later
+ *
+ */
+
+#ifndef BACKLIGHT_H
+#define BACKLIGHT_H
+
+struct backlight_dev {
+	struct device_d dev;
+	void *priv;
+	int (*set_brightness) (struct backlight_dev *backlight, int percent);
+};
+
+int register_backlight(struct backlight_dev *backlight);
+
+#endif /* BACKLIGHT_H */
-- 
1.7.4.1




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
