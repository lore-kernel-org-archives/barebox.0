Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdzhN-00015i-5z
 for barebox@lists.infradead.org; Wed, 06 Nov 2013 09:46:54 +0000
Date: Wed, 6 Nov 2013 10:46:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131106094628.GH24559@pengutronix.de>
References: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
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
Subject: Re: [PATCH v2 0/6] BCM2835 / simple framebuffer support
To: Andre Heider <a.heider@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andre,

On Tue, Nov 05, 2013 at 12:00:58AM +0100, Andre Heider wrote:
> This is v2 of my patch set posted on 10/24.
> It adds framebuffer support for the RPi and provides an additional config
> knob to set up the kernel's simplefb driver. The active barebox framebuffer
> is basis for that feature, so that other platforms can make use of it.
> 
> This simplefb option depends on the bcm2835 fb driver since drivers need
> to be aware of simplefb: framebuffers need to stay configured and cannot be
> teared down.
> 
> The RPi case is rather simple in this regard. The allocated framebuffer lies
> within the memory range of the VideoCore of the ARM/VC memory split. Hence,
> there is no memory range that needs to be reserved as far as the ARM side
> of things is concerned.
> This likely needs to be added once other fb driver want to use simplefb.
> 
> Changes since v1:
> * renamed "pitch" to "line_length" to match the kernel
> * the bcm2835 framebuffer driver is now standalone
> * configuring simplefb for the kernel is based on the active barebox
>   framebuffer

I applied this series without the simplefb patch.

For the simplefb I'd like to use the following patch instead. It's your
patch with some adjustments:

- add a register_simplefb device parameter to make it configurable
  whether a simplefb node should be created or not.
- register the OF fixup in register_framebuffer(). This way we always
  have a simplefb node once a framebuffer is registered without getting
  spurious warnings when there is no framebuffer present.
- check if the framebuffer is actually enabled. If it's not, we
  shouldn't register a simplefb node.

Are you fine with this and if yes, could you give the patch a test?
It depends on the add-context-pointer-to-of_register_fixup patch I just
posted. Just try the current -next branch, it should contain all you
need for testing.

One oddity I just realized is that my patch will try and create a
/framebuffer node multiple times if multiple framebuffers exist.
I would have to fix this.

Sascha

8<----------------------------------------------------------

From 97607e85cdc44824e9617c74325bc9bc6405c383 Mon Sep 17 00:00:00 2001
From: Andre Heider <a.heider@gmail.com>
Date: Tue, 5 Nov 2013 00:01:04 +0100
Subject: [PATCH] video: set up the kernel's simple framebuffer driver

Add support to configure the active framebuffer for the kernel through
device tree.

Signed-off-by: Andre Heider <a.heider@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/Kconfig    |   7 ++
 drivers/video/Makefile   |   1 +
 drivers/video/fb.c       |   7 ++
 drivers/video/simplefb.c | 167 +++++++++++++++++++++++++++++++++++++++++++++++
 include/fb.h             |   7 ++
 5 files changed, 189 insertions(+)
 create mode 100644 drivers/video/simplefb.c

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index b532e7d..5539266 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -77,4 +77,11 @@ config DRIVER_VIDEO_BCM2835
 	help
 	  Add support for the BCM2835/VideoCore frame buffer device.
 
+config DRIVER_VIDEO_SIMPLEFB
+	bool "Simple framebuffer support"
+	depends on OFTREE
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
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 0159994..4263027 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -163,6 +163,13 @@ int register_framebuffer(struct fb_info *info)
 	if (ret)
 		goto err_unregister;
 
+	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_SIMPLEFB)) {
+		ret = fb_register_simplefb(info);
+		if (ret)
+			dev_err(&info->dev, "failed to register simplefb: %s\n",
+					strerror(-ret));
+	}
+
 	return 0;
 
 err_unregister:
diff --git a/drivers/video/simplefb.c b/drivers/video/simplefb.c
new file mode 100644
index 0000000..834704b
--- /dev/null
+++ b/drivers/video/simplefb.c
@@ -0,0 +1,167 @@
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
+static int simplefb_of_fixup(struct device_node *root, void *ctx)
+{
+	struct fb_info *info = ctx;
+	const struct simplefb_mode *mode;
+	int ret;
+
+	/* only create node if we are requested to */
+	if (!info->register_simplefb)
+		return 0;
+
+	/* do not create node for disabled framebuffers */
+	if (!info->enabled)
+		return 0;
+
+	mode = simplefb_find_mode(info);
+	if (!mode) {
+		dev_err(&info->dev, "fb format is incompatible with simplefb\n");
+		return -EINVAL;
+	}
+
+	ret = simplefb_create_node(root, info, mode->format);
+	if (ret)
+		dev_err(&info->dev, "failed to create node: %d\n", ret);
+	else
+		dev_info(&info->dev, "created %s node\n", mode->format);
+
+	return ret;
+}
+
+int fb_register_simplefb(struct fb_info *info)
+{
+	dev_add_param_bool(&info->dev, "register_simplefb",
+			NULL, NULL, &info->register_simplefb, NULL);
+
+	return of_register_fixup(simplefb_of_fixup, info);
+}
diff --git a/include/fb.h b/include/fb.h
index cf9ffa0..98d5a03 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -105,6 +105,9 @@ struct fb_info {
 
 	int enabled;
 	int p_enable;
+	int register_simplefb;		/* If true a simplefb device node will
+					 * be created.
+					 */
 };
 
 int register_framebuffer(struct fb_info *info);
@@ -115,5 +118,9 @@ int register_framebuffer(struct fb_info *info);
 
 extern struct bus_type fb_bus;
 
+/* fb internal functions */
+
+int fb_register_simplefb(struct fb_info *info);
+
 #endif /* __FB_H */
 
-- 
1.8.4.rc3


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
