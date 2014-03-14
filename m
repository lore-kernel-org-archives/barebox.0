Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAw-00055o-FQ
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:42 +0100
Message-Id: <1394807569-23620-23-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 22/29] video: Add display timing from devicetree helper
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/Makefile            |   1 +
 drivers/video/of_display_timing.c | 238 ++++++++++++++++++++++++++++++++++++++
 include/fb.h                      |  14 ++-
 3 files changed, 252 insertions(+), 1 deletion(-)
 create mode 100644 drivers/video/of_display_timing.c

diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 31edfca..d36d83d 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_VIDEO) += fb.o
+obj-$(CONFIG_OFDEVICE) += of_display_timing.o
 
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o atmel_lcdfb_core.o
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL_HLCD) += atmel_hlcdfb.o atmel_lcdfb_core.o
diff --git a/drivers/video/of_display_timing.c b/drivers/video/of_display_timing.c
new file mode 100644
index 0000000..5dfd5b3
--- /dev/null
+++ b/drivers/video/of_display_timing.c
@@ -0,0 +1,238 @@
+/*
+ * OF helpers for parsing display timings
+ *
+ * Copyright (c) 2012 Steffen Trumtrar <s.trumtrar@pengutronix.de>, Pengutronix
+ *
+ * based on of_videomode.c by Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ */
+#include <common.h>
+#include <of.h>
+#include <fb.h>
+#include <malloc.h>
+
+void display_timings_release(struct display_timings *disp)
+{
+	free(disp->modes);
+	free(disp);
+}
+EXPORT_SYMBOL_GPL(display_timings_release);
+
+/**
+ * parse_timing_property - parse timing_entry from device_node
+ * @np: device_node with the property
+ * @name: name of the property
+ * @result: will be set to the return value
+ *
+ * DESCRIPTION:
+ * Every display_timing can be specified with either just the typical value or
+ * a range consisting of min/typ/max. This function helps handling this
+ **/
+static int parse_timing_property(const struct device_node *np, const char *name,
+			  u32 *res)
+{
+	struct property *prop;
+	int length, cells, ret;
+
+	prop = of_find_property(np, name, &length);
+	if (!prop) {
+		pr_err("%s: could not find property %s\n",
+			np->full_name, name);
+		return -EINVAL;
+	}
+
+	cells = length / sizeof(u32);
+	if (cells == 1) {
+		ret = of_property_read_u32(np, name, res);
+	} else {
+		pr_err("%s: illegal timing specification in %s\n",
+			np->full_name, name);
+		return -EINVAL;
+	}
+
+	return ret;
+}
+
+/**
+ * of_parse_display_timing - parse display_timing entry from device_node
+ * @np: device_node with the properties
+ **/
+static int of_parse_display_timing(const struct device_node *np,
+		struct fb_videomode *mode)
+{
+	u32 val = 0, pixelclock = 0;
+	int ret = 0;
+
+	memset(mode, 0, sizeof(*mode));
+
+	ret |= parse_timing_property(np, "hback-porch", &mode->left_margin);
+	ret |= parse_timing_property(np, "hfront-porch", &mode->right_margin);
+	ret |= parse_timing_property(np, "hactive", &mode->xres);
+	ret |= parse_timing_property(np, "hsync-len", &mode->hsync_len);
+	ret |= parse_timing_property(np, "vback-porch", &mode->upper_margin);
+	ret |= parse_timing_property(np, "vfront-porch", &mode->lower_margin);
+	ret |= parse_timing_property(np, "vactive", &mode->yres);
+	ret |= parse_timing_property(np, "vsync-len", &mode->vsync_len);
+	ret |= parse_timing_property(np, "clock-frequency", &pixelclock);
+
+	mode->pixclock = pixelclock ? KHZ2PICOS(pixelclock / 1000) : 0;
+
+	if (!of_property_read_u32(np, "vsync-active", &val))
+		mode->sync |= val ? FB_SYNC_VERT_HIGH_ACT : 0;
+	if (!of_property_read_u32(np, "hsync-active", &val))
+		mode->sync |= val ? FB_SYNC_HOR_HIGH_ACT : 0;
+	if (!of_property_read_u32(np, "de-active", &val))
+		mode->display_flags |= val ? DISPLAY_FLAGS_DE_HIGH :
+				DISPLAY_FLAGS_DE_LOW;
+	if (!of_property_read_u32(np, "pixelclk-active", &val))
+		mode->display_flags |= val ? DISPLAY_FLAGS_PIXDATA_POSEDGE :
+				DISPLAY_FLAGS_PIXDATA_NEGEDGE;
+
+	if (ret) {
+		pr_err("%s: error reading timing properties\n",
+			np->full_name);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * of_get_display_timing - parse a display_timing entry
+ * @np: device_node with the timing subnode
+ * @name: name of the timing node
+ * @dt: display_timing struct to fill
+ **/
+int of_get_display_timing(struct device_node *np, const char *name,
+		struct fb_videomode *mode)
+{
+	struct device_node *timing_np;
+
+	if (!np) {
+		pr_err("%s: no devicenode given\n", np->full_name);
+		return -EINVAL;
+	}
+
+	timing_np = of_get_child_by_name(np, name);
+	if (!timing_np) {
+		pr_err("%s: could not find node '%s'\n",
+			np->full_name, name);
+		return -ENOENT;
+	}
+
+	return of_parse_display_timing(timing_np, mode);
+}
+EXPORT_SYMBOL_GPL(of_get_display_timing);
+
+/**
+ * of_get_display_timings - parse all display_timing entries from a device_node
+ * @np: device_node with the subnodes
+ **/
+struct display_timings *of_get_display_timings(struct device_node *np)
+{
+	struct device_node *timings_np;
+	struct device_node *entry;
+	struct device_node *native_mode;
+	struct display_timings *disp;
+
+	if (!np) {
+		pr_err("%s: no device node given\n", np->full_name);
+		return NULL;
+	}
+
+	timings_np = of_get_child_by_name(np, "display-timings");
+	if (!timings_np) {
+		pr_debug("%s: could not find display-timings node\n",
+			np->full_name);
+		return NULL;
+	}
+
+	disp = xzalloc(sizeof(*disp));
+
+	entry = of_parse_phandle(timings_np, "native-mode", 0);
+	/* assume first child as native mode if none provided */
+	if (!entry)
+		entry = of_get_next_available_child(np, NULL);
+	/* if there is no child, it is useless to go on */
+	if (!entry) {
+		pr_err("%s: no timing specifications given\n",
+			np->full_name);
+		goto entryfail;
+	}
+
+	pr_debug("%s: using %s as default timing\n",
+		np->full_name, entry->name);
+
+	native_mode = entry;
+
+	disp->num_modes = of_get_child_count(timings_np);
+	if (disp->num_modes == 0) {
+		/* should never happen, as entry was already found above */
+		pr_err("%s: no timings specified\n", np->full_name);
+		goto entryfail;
+	}
+
+	disp->modes = xzalloc(sizeof(struct fb_videomode) * disp->num_modes);
+
+	disp->num_modes = 0;
+	disp->native_mode = 0;
+
+	for_each_child_of_node(timings_np, entry) {
+		struct fb_videomode *mode;
+		int r;
+
+		mode = &disp->modes[disp->num_modes];
+
+		r = of_parse_display_timing(entry, mode);
+		if (r) {
+			/*
+			 * to not encourage wrong devicetrees, fail in case of
+			 * an error
+			 */
+			pr_err("%s: error in timing %d\n",
+				np->full_name, disp->num_modes + 1);
+			goto timingfail;
+		}
+
+		mode->name = xstrdup(entry->name);
+
+		if (native_mode == entry)
+			disp->native_mode = disp->num_modes;
+
+		disp->num_modes++;
+	}
+
+	pr_debug("%s: got %d timings. Using timing #%d as default\n",
+		np->full_name, disp->num_modes,
+		disp->native_mode + 1);
+
+	return disp;
+
+timingfail:
+	display_timings_release(disp);
+entryfail:
+	free(disp);
+
+	return NULL;
+}
+EXPORT_SYMBOL_GPL(of_get_display_timings);
+
+/**
+ * of_display_timings_exist - check if a display-timings node is provided
+ * @np: device_node with the timing
+ **/
+int of_display_timings_exist(struct device_node *np)
+{
+	struct device_node *timings_np;
+
+	if (!np)
+		return -EINVAL;
+
+	timings_np = of_parse_phandle(np, "display-timings", 0);
+	if (!timings_np)
+		return -EINVAL;
+
+	return 1;
+}
+EXPORT_SYMBOL_GPL(of_display_timings_exist);
diff --git a/include/fb.h b/include/fb.h
index 91d3fe4..8d255c0 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -32,6 +32,16 @@
 #define PICOS2KHZ(a) (1000000000UL/(a))
 #define KHZ2PICOS(a) (1000000000UL/(a))
 
+enum display_flags {
+	/* data enable flag */
+	DISPLAY_FLAGS_DE_LOW		= BIT(4),
+	DISPLAY_FLAGS_DE_HIGH		= BIT(5),
+	/* drive data on pos. edge */
+	DISPLAY_FLAGS_PIXDATA_POSEDGE	= BIT(6),
+	/* drive data on neg. edge */
+	DISPLAY_FLAGS_PIXDATA_NEGEDGE	= BIT(7),
+};
+
 struct fb_videomode {
 	const char *name;	/* optional */
 	u32 refresh;		/* optional */
@@ -46,7 +56,7 @@ struct fb_videomode {
 	u32 vsync_len;
 	u32 sync;
 	u32 vmode;
-	u32 flag;
+	u32 display_flags;
 };
 
 /* Interpretation of offset for color fields: All offsets are from the right,
@@ -125,6 +135,8 @@ struct fb_info {
 					 */
 };
 
+struct display_timings *of_get_display_timings(struct device_node *np);
+
 int register_framebuffer(struct fb_info *info);
 
 #define FBIOGET_SCREENINFO	_IOR('F', 1, loff_t)
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
