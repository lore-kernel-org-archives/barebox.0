Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22d.google.com ([2a00:1450:400c:c09::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYyD3-0005Qs-Uv
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 15:52:10 +0000
Received: by mail-wm0-x22d.google.com with SMTP id g62so37574710wme.0
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2016 07:51:49 -0800 (PST)
From: Philippe Leduc <ledphilippe@gmail.com>
Date: Thu, 25 Feb 2016 17:01:20 +0100
Message-Id: <1456416080-486-1-git-send-email-ledphilippe@gmail.com>
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
Subject: [RFC 1/1] i.MX: IPUv3: Add parallel display support
To: barebox@lists.infradead.org
Cc: Philippe Leduc <ledphilippe@gmail.com>

Add a driver compatible with "fsl,imx-parallel-display" in order
to enable parallel display with the i.MX IPUv3.

Signed-off-by: Philippe Leduc<ledphilippe@gmail.com>
--
diff --git a/drivers/video/imx-ipu-v3/Kconfig b/drivers/video/imx-ipu-v3/Kconfig
index b5ee4ef..5ec8031 100644
--- a/drivers/video/imx-ipu-v3/Kconfig
+++ b/drivers/video/imx-ipu-v3/Kconfig
@@ -15,5 +15,9 @@ config DRIVER_VIDEO_IMX_IPUV3_HDMI
 	bool "IPUv3 HDMI support"
 	depends on DRIVER_VIDEO_EDID
 	select OFDEVICE
+
+config DRIVER_VIDEO_IMX_IPUV3_PARALLEL
+	bool "IPUv3 parallel display support"
+	select OFDEVICE
 
 endif
diff --git a/drivers/video/imx-ipu-v3/Makefile b/drivers/video/imx-ipu-v3/Makefile
index 2bc0aec..1f68120 100644
--- a/drivers/video/imx-ipu-v3/Makefile
+++ b/drivers/video/imx-ipu-v3/Makefile
@@ -3,3 +3,4 @@ obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3) += ipu-dp.o ipuv3-plane.o ipufb.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3) += ipu-dc.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3_LVDS) += imx-ldb.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3_HDMI) += imx-hdmi.o
+obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3_PARALLEL) += imx-pd.o
diff --git a/drivers/video/imx-ipu-v3/imx-pd.c b/drivers/video/imx-ipu-v3/imx-pd.c
new file mode 100644
index 0000000..acfeed2
--- /dev/null
+++ b/drivers/video/imx-ipu-v3/imx-pd.c
@@ -0,0 +1,111 @@
+/*
+ * i.MX drm driver - parallel display implementation
+ *
+ * Copyright (C) 2016 Philippe Leduc
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <fb.h>
+#include <io.h>
+#include <of_graph.h>
+#include <driver.h>
+#include <malloc.h>
+#include <errno.h>
+#include <init.h>
+#include <video/vpl.h>
+#include <linux/err.h>
+
+#include "imx-ipu-v3.h"
+
+struct imx_pd {
+	struct device_d *dev;
+	struct display_timings *timings;
+	u32 interface_pix_fmt;
+	struct vpl vpl;
+};
+
+
+
+static int imx_pd_ioctl(struct vpl *vpl, unsigned int port,
+		unsigned int cmd, void *data)
+{
+	struct imx_pd *imx_pd = container_of(vpl, struct imx_pd, vpl);
+	struct ipu_di_mode *mode;
+	struct display_timings *timings;
+
+	switch (cmd) {
+	case IMX_IPU_VPL_DI_MODE:
+		mode = data;
+
+		mode->di_clkflags = IPU_DI_CLKMODE_SYNC;
+		mode->interface_pix_fmt = imx_pd->interface_pix_fmt;
+		return 0;
+
+	case VPL_GET_VIDEOMODES:
+		timings = data;
+
+		timings->num_modes   = imx_pd->timings->num_modes;
+		timings->native_mode = imx_pd->timings->native_mode;
+		timings->modes       = imx_pd->timings->modes;
+		timings->edid        = NULL;
+		return 0;
+	}
+
+	return 0;
+}
+
+static int imx_pd_probe(struct device_d *dev)
+{
+	struct device_node *node = dev->device_node;
+	struct imx_pd *imx_pd;
+	const char *fmt;
+	int ret;
+
+	imx_pd = xzalloc(sizeof(*imx_pd));
+	imx_pd->dev = dev;
+
+	ret = of_property_read_string(node, "interface-pix-fmt", &fmt);
+	if (!ret) {
+		if (!strcmp(fmt, "rgb24"))
+			imx_pd->interface_pix_fmt = V4L2_PIX_FMT_RGB24;
+		else if (!strcmp(fmt, "rgb565"))
+			imx_pd->interface_pix_fmt = V4L2_PIX_FMT_RGB565;
+		else if (!strcmp(fmt, "bgr666"))
+			imx_pd->interface_pix_fmt = V4L2_PIX_FMT_BGR666;
+	}
+
+	imx_pd->timings = of_get_display_timings(node);
+
+	imx_pd->vpl.node = node;
+	imx_pd->vpl.ioctl = &imx_pd_ioctl;
+	ret = vpl_register(&imx_pd->vpl);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static struct of_device_id imx_pd_dt_ids[] = {
+	{ .compatible = "fsl,imx-parallel-display", },
+	{ /* sentinel */ }
+};
+
+static struct driver_d imx_pd_driver = {
+	.probe			  = imx_pd_probe,
+	.of_compatible	= imx_pd_dt_ids,
+	.name				= "imx-parallel-display",
+};
+device_platform_driver(imx_pd_driver);
+
+MODULE_DESCRIPTION("i.MX Parallel display driver");
+MODULE_AUTHOR("Philippe Leduc");
+MODULE_LICENSE("GPL");

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
