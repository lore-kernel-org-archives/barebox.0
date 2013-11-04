Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x229.google.com ([2a00:1450:4013:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdT9V-0000qZ-Fj
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 23:01:47 +0000
Received: by mail-ea0-f169.google.com with SMTP id k11so3794735eaj.14
 for <barebox@lists.infradead.org>; Mon, 04 Nov 2013 15:01:23 -0800 (PST)
Received: from mamamia.internal (a89-182-17-100.net-htp.de. [89.182.17.100])
 by mx.google.com with ESMTPSA id s3sm52362808eeo.3.2013.11.04.15.01.22
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Mon, 04 Nov 2013 15:01:22 -0800 (PST)
From: Andre Heider <a.heider@gmail.com>
Date: Tue,  5 Nov 2013 00:01:04 +0100
Message-Id: <1383606064-30494-7-git-send-email-a.heider@gmail.com>
In-Reply-To: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
References: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH v2 6/6] video: set up the kernel's simple framebuffer driver
To: barebox@lists.infradead.org

Add support to configure the active framebuffer for the kernel through
device tree.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 drivers/video/Kconfig    |   8 +++
 drivers/video/Makefile   |   1 +
 drivers/video/simplefb.c | 171 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 180 insertions(+)
 create mode 100644 drivers/video/simplefb.c

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index b532e7d..ccfaba8 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -77,4 +77,12 @@ config DRIVER_VIDEO_BCM2835
 	help
 	  Add support for the BCM2835/VideoCore frame buffer device.
 
+config DRIVER_VIDEO_SIMPLEFB
+	bool "Simple framebuffer support"
+	depends on OFTREE
+	depends on DRIVER_VIDEO_BCM2835
+	help
+	  Add support for setting up the kernel's simple framebuffer driver
+	  based on the active barebox framebuffer.
+
 endif
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 244feab..31edfca 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -10,3 +10,4 @@ obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
 obj-$(CONFIG_DRIVER_VIDEO_SDL) += sdl.o
 obj-$(CONFIG_DRIVER_VIDEO_OMAP) += omap.o
 obj-$(CONFIG_DRIVER_VIDEO_BCM2835) += bcm2835.o
+obj-$(CONFIG_DRIVER_VIDEO_SIMPLEFB) += simplefb.o
diff --git a/drivers/video/simplefb.c b/drivers/video/simplefb.c
new file mode 100644
index 0000000..3ea4ad4
--- /dev/null
+++ b/drivers/video/simplefb.c
@@ -0,0 +1,171 @@
+/*
+ * SimpleFB driver
+ *
+ * Copyright (C) 2013 Andre Heider
+ *
+ * SPDX-License-Identifier:	GPL-2.0+
+ */
+
+#define pr_fmt(fmt) "simplefb: " fmt
+
+#include <common.h>
+#include <errno.h>
+#include <fb.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <init.h>
+#include <xfuncs.h>
+
+struct simplefb_mode {
+	const char *format;
+	u32 bpp;
+	struct fb_bitfield red;
+	struct fb_bitfield green;
+	struct fb_bitfield blue;
+	struct fb_bitfield transp;
+};
+
+/*
+ * These values have to match the kernel's simplefb driver.
+ * See Documentation/devicetree/bindings/video/simple-framebuffer.txt
+ */
+static const struct simplefb_mode simplefb_modes[] = {
+	{
+		.format	= "r5g6b5",
+		.bpp	= 16,
+		.red	= { .length = 5, .offset = 11 },
+		.green	= { .length = 6, .offset = 5 },
+		.blue	= { .length = 5, .offset = 0 },
+		.transp	= { .length = 0, .offset = 0 },
+	},
+};
+
+static bool simplefb_bitfield_cmp(const struct fb_bitfield *a,
+					const struct fb_bitfield *b)
+{
+	if (a->offset != b->offset)
+		return false;
+	if (a->length != b->length)
+		return false;
+	if (a->msb_right != b->msb_right)
+		return false;
+
+	return true;
+}
+
+static const struct simplefb_mode *simplefb_find_mode(const struct fb_info *fbi)
+{
+	const struct simplefb_mode *mode;
+	u32 i;
+
+	for (i = 0; i < ARRAY_SIZE(simplefb_modes); ++i) {
+		mode = &simplefb_modes[i];
+
+		if (fbi->bits_per_pixel != mode->bpp)
+			continue;
+		if (!simplefb_bitfield_cmp(&fbi->red, &mode->red))
+			continue;
+		if (!simplefb_bitfield_cmp(&fbi->green, &mode->green))
+			continue;
+		if (!simplefb_bitfield_cmp(&fbi->blue, &mode->blue))
+			continue;
+		if (!simplefb_bitfield_cmp(&fbi->transp, &mode->transp))
+			continue;
+
+		return mode;
+	}
+
+	return NULL;
+}
+
+static int simplefb_create_node(struct device_node *root,
+				const struct fb_info *fbi, const char *format)
+{
+	const char *compat = "simple-framebuffer";
+	const char *disabled = "disabled";
+	const char *okay = "okay";
+	struct device_node *node;
+	u32 cells[2];
+	int ret;
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
+	ret = of_set_property(node, "compatible", compat, strlen(compat) + 1, 1);
+	if (ret)
+		return ret;
+
+	cells[0] = cpu_to_be32((u32)fbi->screen_base);
+	cells[1] = cpu_to_be32(fbi->line_length * fbi->yres);
+	ret = of_set_property(node, "reg", cells, sizeof(cells[0]) * 2, 1);
+	if (ret < 0)
+		return ret;
+
+	cells[0] = cpu_to_be32(fbi->xres);
+	ret = of_set_property(node, "width", cells, sizeof(cells[0]), 1);
+	if (ret < 0)
+		return ret;
+
+	cells[0] = cpu_to_be32(fbi->yres);
+	ret = of_set_property(node, "height", cells, sizeof(cells[0]), 1);
+	if (ret < 0)
+		return ret;
+
+	cells[0] = cpu_to_be32(fbi->line_length);
+	ret = of_set_property(node, "stride", cells, sizeof(cells[0]), 1);
+	if (ret < 0)
+		return ret;
+
+	ret = of_set_property(node, "format", format, strlen(format) + 1, 1);
+	if (ret < 0)
+		return ret;
+
+	return of_set_property(node, "status", okay, strlen(okay) + 1, 1);
+}
+
+static int simplefb_of_fixup(struct device_node *root)
+{
+	struct fb_info fbi;
+	const struct simplefb_mode *mode;
+	int fd, ret;
+
+	fd = open("/dev/fb0", O_RDONLY);
+	if (fd < 0) {
+		pr_err("failed to open /dev/fb0: %d\n", fd);
+		return fd;
+	}
+
+	ret = ioctl(fd, FBIOGET_SCREENINFO, &fbi);
+	close(fd);
+
+	if (ret) {
+		pr_err("failed to get the framebuffer info: %d\n", ret);
+		return ret;
+	}
+
+	mode = simplefb_find_mode(&fbi);
+	if (!mode) {
+		pr_err("the framebuffer format is incompatible\n");
+		return -EINVAL;
+	}
+
+	ret = simplefb_create_node(root, &fbi, mode->format);
+	if (ret)
+		pr_err("failed to create node: %d\n", ret);
+	else
+		pr_info("created %s node\n", mode->format);
+
+	return ret;
+}
+
+static int simplefb_init(void) {
+	of_register_fixup(simplefb_of_fixup);
+	return 0;
+}
+late_initcall(simplefb_init);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
