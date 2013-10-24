Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x235.google.com ([2a00:1450:4013:c01::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZRSE-0004BE-B2
 for barebox@lists.infradead.org; Thu, 24 Oct 2013 20:24:29 +0000
Received: by mail-ea0-f181.google.com with SMTP id d10so21815eaj.26
 for <barebox@lists.infradead.org>; Thu, 24 Oct 2013 13:24:04 -0700 (PDT)
Received: from mamamia.internal (a89-182-11-81.net-htp.de. [89.182.11.81])
 by mx.google.com with ESMTPSA id bn13sm8547646eeb.11.2013.10.24.13.24.02
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Thu, 24 Oct 2013 13:24:03 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Thu, 24 Oct 2013 22:23:44 +0200
Message-Id: <1382646226-24871-5-git-send-email-a.heider@gmail.com>
In-Reply-To: <1382646226-24871-1-git-send-email-a.heider@gmail.com>
References: <1382646226-24871-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH 4/6] video: add a simple framebuffer driver
To: barebox@lists.infradead.org

This architecture independend driver implements a framebuffer driver
based on a raw memory region that may be rendered to.

It is the counterpart of the kernel driver with the same name.

Platforms can configure display devices to scan out from such a memory
region and set it up with a single function call.
Doing so provides a framebuffer driver for barebox and a configuration
of the corresponding kernel driver through device tree.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 drivers/video/Kconfig    |  12 +++
 drivers/video/Makefile   |   1 +
 drivers/video/simplefb.c | 224 +++++++++++++++++++++++++++++++++++++++++++++++
 include/video/simplefb.h |  21 +++++
 4 files changed, 258 insertions(+)
 create mode 100644 drivers/video/simplefb.c
 create mode 100644 include/video/simplefb.h

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 0639d9c..9afa7e8 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -71,4 +71,16 @@ config DRIVER_VIDEO_PXA
 	  Add support for the frame buffer device found on the PXA270
 	  CPU.
 
+config DRIVER_VIDEO_SIMPLEFB
+	bool "Simple framebuffer support"
+	depends on OFTREE
+	depends on ARCH_BCM2835
+	help
+	  Say Y if you want support for a simple frame-buffer.
+
+	  This driver provides the framebuffer configuration to the kernel
+	  through device tree.
+
+	  The corresponding kernel driver has to be enabled to use this feature.
+
 endif
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 67169d1..0da7c2b 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_DRIVER_VIDEO_S3C24XX) += s3c24xx.o
 obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
 obj-$(CONFIG_DRIVER_VIDEO_SDL) += sdl.o
 obj-$(CONFIG_DRIVER_VIDEO_OMAP) += omap.o
+obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB) += simplefb.o
diff --git a/drivers/video/simplefb.c b/drivers/video/simplefb.c
new file mode 100644
index 0000000..f096c36
--- /dev/null
+++ b/drivers/video/simplefb.c
@@ -0,0 +1,224 @@
+/*
+ * SimpleFB driver
+ *
+ * Copyright (C) 2013 Andre Heider
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#include <errno.h>
+#include <malloc.h>
+#include <xfuncs.h>
+#include <common.h>
+#include <init.h>
+#include <stdio.h>
+#include <driver.h>
+#include <fb.h>
+
+#include <video/simplefb.h>
+
+struct simplefb_platform_data {
+	u32 width;
+	u32 height;
+	u32 stride;
+	enum simplefb_format format;
+	struct fb_info fbi;
+	struct fb_videomode mode;
+};
+
+struct device_d *add_simplefb_device(u32 width, u32 height, u32 stride,
+					enum simplefb_format format,
+					resource_size_t start,
+					resource_size_t size)
+{
+	struct simplefb_platform_data *pdata;
+	struct device_d *dev;
+
+	pdata = xzalloc(sizeof *pdata);
+	pdata->width = width;
+	pdata->height = height;
+	pdata->stride = stride;
+	pdata->format = format;
+
+	dev = add_generic_device("simplefb", DEVICE_ID_SINGLE,
+					NULL, start, size,
+					IORESOURCE_MEM, pdata);
+
+	if (!dev)
+		free(pdata);
+
+	return dev;
+}
+
+struct simplefb_info {
+	enum simplefb_format id;
+	const char *compatible;
+	u32 bpp;
+	struct fb_bitfield red;
+	struct fb_bitfield green;
+	struct fb_bitfield blue;
+};
+
+/*
+ * These values have to match the kernel's simplefb driver.
+ * See Documentation/devicetree/bindings/video/simple-framebuffer.txt
+ */
+static const struct simplefb_info simplefb_infos[] = {
+	{
+		.id		= SIMPLEFB_R5G6B5,
+		.compatible	= "r5g6b5",
+		.bpp		= 16,
+		.red		= { .length = 5, .offset = 11 },
+		.green		= { .length = 6, .offset = 5 },
+		.blue		= { .length = 5, .offset = 0 },
+	},
+};
+
+static const struct simplefb_info *simplefb_get_info(enum simplefb_format id)
+{
+	u32 i;
+
+	for (i = 0; i < ARRAY_SIZE(simplefb_infos); ++i)
+		if (simplefb_infos[i].id == id)
+			return &simplefb_infos[i];
+
+	return NULL;
+}
+
+static int simplefb_create_node(struct device_node *root,
+				const struct simplefb_platform_data *pdata,
+				const struct resource *res)
+{
+	const char compat[] = "simple-framebuffer";
+	const char disabled[] = "disabled";
+	const char okay[] = "okay";
+	const struct simplefb_info *info;
+	struct device_node *node;
+	u32 cells[2];
+	int ret;
+
+	info = simplefb_get_info(pdata->format);
+	if (!info)
+		return -EINVAL;
+
+	node = of_create_node(root, "/framebuffer");
+	if (!node)
+		return -ENOMEM;
+
+	ret = of_set_property(node, "status", disabled,
+				strlen(disabled) + 1, 1);
+	if (ret < 0)
+		return ret;
+
+	ret = of_set_property(node, "compatible", compat, sizeof(compat), 1);
+	if (ret)
+		return ret;
+
+	cells[0] = cpu_to_be32(res->start);
+	cells[1] = cpu_to_be32(resource_size(res));
+	ret = of_set_property(node, "reg", cells, sizeof(cells[0]) * 2, 1);
+	if (ret < 0)
+		return ret;
+
+	cells[0] = cpu_to_be32(pdata->width);
+	ret = of_set_property(node, "width", cells, sizeof(cells[0]), 1);
+	if (ret < 0)
+		return ret;
+
+	cells[0] = cpu_to_be32(pdata->height);
+	ret = of_set_property(node, "height", cells, sizeof(cells[0]), 1);
+	if (ret < 0)
+		return ret;
+
+	cells[0] = cpu_to_be32(pdata->stride);
+	ret = of_set_property(node, "stride", cells, sizeof(cells[0]), 1);
+	if (ret < 0)
+		return ret;
+
+	ret = of_set_property(node, "format", info->compatible,
+				strlen(info->compatible) + 1, 1);
+	if (ret < 0)
+		return ret;
+
+	return of_set_property(node, "status", okay, strlen(okay) + 1, 1);
+}
+
+static int simplefb_of_fixup(struct device_node *root)
+{
+	struct device_d *dev;
+	struct simplefb_platform_data *pdata;
+	struct resource *res;
+
+	dev = get_device_by_name("simplefb");
+	if (!dev)
+		return 0;
+
+	pdata = dev->platform_data;
+	if (!pdata)
+		return 0;
+
+	res = dev_get_resource(dev, 0);
+	if (!res)
+		return 0;
+
+	simplefb_create_node(root, pdata, res);
+
+	return 0;
+}
+
+static void simplefb_enable(struct fb_info *info)
+{
+}
+
+static void simplefb_disable(struct fb_info *info)
+{
+}
+
+static struct fb_ops simplefb_ops = {
+	.fb_enable		= simplefb_enable,
+	.fb_disable		= simplefb_disable,
+};
+
+static int simplefb_probe(struct device_d *dev)
+{
+	struct simplefb_platform_data *pdata = dev->platform_data;
+	const struct simplefb_info *info;
+	struct resource *res;
+	int ret;
+
+	info = simplefb_get_info(pdata->format);
+	if (!info)
+		return -EINVAL;
+
+	res = dev_get_resource(dev, 0);
+	if (!res)
+		return -EINVAL;
+
+	pdata->fbi.fbops = &simplefb_ops;
+	pdata->fbi.screen_base = (void *)res->start;
+	pdata->fbi.xres = pdata->width;
+	pdata->fbi.yres = pdata->height;
+	pdata->fbi.bits_per_pixel = info->bpp;
+	pdata->fbi.stride = pdata->stride;
+	pdata->fbi.red = info->red;
+	pdata->fbi.green = info->green;
+	pdata->fbi.blue = info->blue;
+
+	pdata->fbi.mode = &pdata->mode;
+	pdata->fbi.mode->xres = pdata->width;
+	pdata->fbi.mode->yres = pdata->height;
+
+	ret = register_framebuffer(&pdata->fbi);
+	if (ret < 0)
+		return ret;
+
+	of_register_fixup(simplefb_of_fixup);
+
+	return 0;
+}
+
+static struct driver_d simplefb_driver = {
+	.name	= "simplefb",
+	.probe	= simplefb_probe,
+};
+device_platform_driver(simplefb_driver);
diff --git a/include/video/simplefb.h b/include/video/simplefb.h
new file mode 100644
index 0000000..5949046
--- /dev/null
+++ b/include/video/simplefb.h
@@ -0,0 +1,21 @@
+/*
+ * SimpleFB driver
+ *
+ * Copyright (C) 2013 Andre Heider
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#ifndef SIMPLEFB_H
+#define SIMPLEFB_H
+
+enum simplefb_format {
+	SIMPLEFB_R5G6B5
+};
+
+struct device_d *add_simplefb_device(u32 width, u32 height, u32 stride,
+					enum simplefb_format format,
+					resource_size_t start,
+					resource_size_t size);
+
+#endif
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
