Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZD6CW-0000dp-K0
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 07:24:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Jul 2015 09:24:11 +0200
Message-Id: <1436426657-5266-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/13] video: Add Video Pipeline (VPL) support
To: Barebox List <barebox@lists.infradead.org>

Complex video pipelines are modelled with the of_graph bindings in
the devicetree. This patch adds a ioctl infrastructure to issue
commands to the remote endpoint of a of_graph. Currently defined
ioctls are prepare/unprepare, enable/disable and get_modes. This
is enough to control LVDS or HDMI encoder or simple panels.

A device node which contains of_graph endpoints can be registered
as a VPL entity. An entity can receive ioctls via the .ioctl callback
and also issue ioctls by calling vpl_ioctl. The core itself will never
iterate over the entire pipeline. Instead, the different VPL entities
should forward an ioctl to the next instance in the pipeline whenever
necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/Kconfig  |   3 ++
 drivers/video/Makefile |   1 +
 drivers/video/vpl.c    | 115 +++++++++++++++++++++++++++++++++++++++++++++++++
 include/fb.h           |   1 +
 include/video/vpl.h    |  46 ++++++++++++++++++++
 5 files changed, 166 insertions(+)
 create mode 100644 drivers/video/vpl.c
 create mode 100644 include/video/vpl.h

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 8e6ae99..6d540a5 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -5,6 +5,9 @@ menuconfig VIDEO
 
 if VIDEO
 
+config VIDEO_VPL
+	bool
+
 config DRIVER_VIDEO_ATMEL
 	bool "Atmel LCDC framebuffer driver"
 	depends on ARCH_AT91
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 76fad5c..3aa544a 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -3,6 +3,7 @@ obj-$(CONFIG_DRIVER_VIDEO_EDID) += edid.o
 obj-$(CONFIG_OFDEVICE) += of_display_timing.o
 obj-$(CONFIG_DRIVER_VIDEO_BACKLIGHT) += backlight.o
 obj-$(CONFIG_DRIVER_VIDEO_BACKLIGHT_PWM) += backlight-pwm.o
+obj-$(CONFIG_VIDEO_VPL) += vpl.o
 
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o atmel_lcdfb_core.o
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL_HLCD) += atmel_hlcdfb.o atmel_lcdfb_core.o
diff --git a/drivers/video/vpl.c b/drivers/video/vpl.c
new file mode 100644
index 0000000..99ad180
--- /dev/null
+++ b/drivers/video/vpl.c
@@ -0,0 +1,115 @@
+/*
+ * Video pipeline (VPL) support for barebox
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
+#define pr_fmt(fmt) "VPL: " fmt
+
+#include <common.h>
+#include <driver.h>
+#include <of_graph.h>
+#include <linux/list.h>
+#include <video/vpl.h>
+
+static LIST_HEAD(vpls);
+
+int vpl_register(struct vpl *vpl)
+{
+	list_add_tail(&vpl->list, &vpls);
+
+	pr_debug("%s: %s\n", __func__, vpl->node->full_name);
+
+	return 0;
+}
+
+struct vpl *of_find_vpl(struct device_node *node)
+{
+	struct vpl *vpl;
+
+	list_for_each_entry(vpl, &vpls, list)
+		if (vpl->node == node)
+			return vpl;
+
+	return NULL;
+}
+
+struct vpl *of_vpl_get(struct device_node *node, int port)
+{
+	node = of_graph_get_port_by_id(node, port);
+	if (!node)
+		return NULL;
+
+	pr_debug("%s: port: %s\n", __func__, node->full_name);
+
+	node = of_graph_get_remote_port_parent(node);
+	if (!node)
+		return NULL;
+
+	pr_debug("%s: remote port parent: %s\n", __func__, node->full_name);
+
+	return of_find_vpl(node);
+}
+
+int vpl_ioctl(struct vpl *vpl, unsigned int port,
+		unsigned int cmd, void *ptr)
+{
+	struct device_node *node, *endpoint;
+	int ret;
+
+	pr_debug("%s: %s port %d\n", __func__, vpl->node->full_name, port);
+
+	node = of_graph_get_port_by_id(vpl->node, port);
+	if (!node) {
+		pr_err("%s: no port %d on %s\n", __func__, port, vpl->node->full_name);
+		return -ENODEV;
+	}
+
+	for_each_child_of_node(node, endpoint) {
+		struct device_node *remote, *remote_parent;
+		struct vpl *remote_vpl;
+		u32 remote_port_id;
+
+		remote = of_graph_get_remote_port(endpoint);
+		if (!remote) {
+			pr_debug("%s: no remote for endpoint %s\n", __func__, endpoint->full_name);
+			continue;
+		}
+
+		of_property_read_u32(remote, "reg", &remote_port_id);
+
+		remote_parent = of_graph_get_remote_port_parent(endpoint);
+		if (!remote_parent) {
+			pr_debug("%s: no remote_parent\n", __func__);
+			return -ENODEV;
+		}
+
+		if (!of_device_is_available(remote_parent))
+			continue;
+
+		remote_vpl = of_find_vpl(remote_parent);
+		if (!remote_vpl) {
+			pr_debug("%s: cannot find remote vpl %s\n", __func__, remote->full_name);
+			continue;
+		}
+
+		ret = remote_vpl->ioctl(remote_vpl, remote_port_id, cmd, ptr);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
diff --git a/include/fb.h b/include/fb.h
index 2db6ad6..9e59b2a 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -99,6 +99,7 @@ struct display_timings {
 
 	unsigned int num_modes;
 	struct fb_videomode *modes;
+	void *edid;
 };
 
 struct i2c_adapter;
diff --git a/include/video/vpl.h b/include/video/vpl.h
new file mode 100644
index 0000000..846007f
--- /dev/null
+++ b/include/video/vpl.h
@@ -0,0 +1,46 @@
+#ifndef __VIDEO_VPL_H
+#define __VIDEO_VPL_H
+
+#include <fb.h>
+
+#define VPL_PREPARE		0x67660001
+#define VPL_UNPREPARE		0x67660002
+#define VPL_ENABLE		0x67660003
+#define VPL_DISABLE		0x67660004
+#define VPL_GET_VIDEOMODES	0x67660005
+
+struct vpl {
+	int (*ioctl)(struct vpl *, unsigned int port,
+			unsigned int cmd, void *ptr);
+	struct device_node *node;
+	struct list_head list;
+};
+
+int vpl_register(struct vpl *);
+int vpl_ioctl(struct vpl *, unsigned int port,
+		unsigned int cmd, void *ptr);
+
+struct vpl *of_vpl_get(struct device_node *node, int port);
+
+static inline int vpl_ioctl_prepare(struct vpl *vpl, unsigned int port,
+		struct fb_videomode *mode)
+{
+	return vpl_ioctl(vpl, port, VPL_PREPARE, mode);
+}
+
+static inline int vpl_ioctl_unprepare(struct vpl *vpl, unsigned int port)
+{
+	return vpl_ioctl(vpl, port, VPL_UNPREPARE, NULL);
+}
+
+static inline int vpl_ioctl_enable(struct vpl *vpl, unsigned int port)
+{
+	return vpl_ioctl(vpl, port, VPL_ENABLE, NULL);
+}
+
+static inline int vpl_ioctl_disable(struct vpl *vpl, unsigned int port)
+{
+	return vpl_ioctl(vpl, port, VPL_DISABLE, NULL);
+}
+
+#endif /* __VIDEO_VPL_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
