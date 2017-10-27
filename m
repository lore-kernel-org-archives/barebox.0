Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1e85mA-0006T4-0P
 for barebox@lists.infradead.org; Fri, 27 Oct 2017 14:38:24 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 5345DA009B0
 for <barebox@lists.infradead.org>; Fri, 27 Oct 2017 16:39:35 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 27 Oct 2017 16:37:39 +0200
Message-Id: <1509115061-4385-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 1/3] common: Add autoenable for components
To: barebox@lists.infradead.org

This patch adds an API to automatically enable either hardware components
with existing device drivers or i2c clients. All functions take a device
tree path to find the hardware and will fix up the node status in the
kernel device tree, if it's accessible.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 common/Kconfig       |   9 +++++
 common/Makefile      |   1 +
 common/autoenable.c  | 109 +++++++++++++++++++++++++++++++++++++++++++++++++++
 include/autoenable.h |  21 ++++++++++
 4 files changed, 140 insertions(+)
 create mode 100644 common/autoenable.c
 create mode 100644 include/autoenable.h

diff --git a/common/Kconfig b/common/Kconfig
index 57418ca..8d2a3e6 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -712,6 +712,15 @@ config CONSOLE_NONE
 
 endchoice
 
+config KERNEL_AUTOENABLE
+	bool
+	prompt "Autoenable of components"
+	help
+	  Say Y to unlock an API for automatically enable either hardware
+	  components with existing device drivers or i2c clients. All functions
+	  take a device tree path to find the hardware and will fix up the node
+	  status in the kernel device tree, if it's accessible.
+
 choice
 	prompt "Console activation strategy"
 	depends on CONSOLE_FULL
diff --git a/common/Makefile b/common/Makefile
index 8cd0ab3..4d7b0f9 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -31,6 +31,7 @@ obj-$(CONFIG_FLEXIBLE_BOOTARGS)	+= bootargs.o
 obj-$(CONFIG_GLOBALVAR)		+= globalvar.o
 obj-$(CONFIG_GREGORIAN_CALENDER) += date.o
 obj-$(CONFIG_KALLSYMS)		+= kallsyms.o
+obj-$(CONFIG_KERNEL_AUTOENABLE) += autoenable.o
 obj-$(CONFIG_MALLOC_DLMALLOC)	+= dlmalloc.o
 obj-$(CONFIG_MALLOC_TLSF)	+= tlsf_malloc.o tlsf.o
 obj-$(CONFIG_MALLOC_DUMMY)	+= dummy_malloc.o
diff --git a/common/autoenable.c b/common/autoenable.c
new file mode 100644
index 0000000..be76942
--- /dev/null
+++ b/common/autoenable.c
@@ -0,0 +1,109 @@
+/*
+ * Copyright (C) 2017 PHYTEC Messtechnik GmbH,
+ * Author: Daniel Schultz <d.schultz@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <linux/err.h>
+#include <of.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <i2c/i2c.h>
+
+/**
+ * autoenable_device_by_path() - Autoenable a device by a device tree path
+ * @param path Device tree path up from the root to the device
+ * @return 0 on success, -enodev on failure. If no device found in the device
+ * tree.
+ *
+ * This function will search for a device and will enable it in the kernel
+ * device tree, if it exists and is loaded.
+ */
+int autoenable_device_by_path(char *path)
+{
+	struct device_d *device;
+	struct device_node *node;
+	int ret;
+
+	node = of_find_node_by_name(NULL, path);
+	if (!node)
+		node = of_find_node_by_path(path);
+
+	if (!node)
+		return -ENODEV;
+
+	device = of_find_device_by_node(node);
+	if (!device)
+		return -ENODEV;
+
+	ret = of_register_set_status_fixup(path, 1);
+	if (!ret)
+		printf("autoenabled %s\n", device->name);
+	return ret;
+}
+
+/**
+ * autoenable_i2c_by_path - Autoenable a i2c client by a device tree path
+ * @param path Device tree path up from the root to the i2c client
+ * @return 0 on success, -enodev on failure. If no i2c client found in the i2c
+ * device tree.
+ *
+ * This function will search for a i2c client, tries to write to the client and
+ * will enable it in the kernel device tree, if it exists and is accessible.
+ */
+int autoenable_i2c_by_path(char *path)
+{
+	struct device_node *node;
+	struct i2c_adapter *i2c_adapter;
+	struct i2c_msg msg;
+	char data[1] = {0x0};
+	int addr;
+	const __be32 *ip;
+	int ret;
+
+	node = of_find_node_by_name(NULL, path);
+	if (!node)
+		node = of_find_node_by_path(path);
+	if (!node)
+		return -ENODEV;
+	if (!node->parent)
+		return -ENODEV;
+
+	ip = of_get_property(node, "reg", NULL);
+	if (!ip)
+		return -ENODEV;
+	addr = be32_to_cpup(ip);
+
+	i2c_adapter = of_find_i2c_adapter_by_node(node->parent);
+	if (!i2c_adapter)
+		return -ENODEV;
+
+	msg.buf = data;
+	msg.addr = addr;
+	msg.len = 1;
+
+	/* Try to communicate with the i2c client */
+	ret = i2c_transfer(i2c_adapter, &msg, 1);
+	if (ret == -EREMOTEIO) {
+		return -ENODEV;
+	}
+	if (ret < 1) {
+		printf("failed to autoenable i2c device on address 0x%x with %i\n",
+								addr, ret);
+		return ret;
+	}
+
+	ret = of_register_set_status_fixup(path, 1);
+	if (!ret)
+		printf("autoenabled i2c device %s\n", node->name);
+
+	return ret;
+}
diff --git a/include/autoenable.h b/include/autoenable.h
new file mode 100644
index 0000000..26811b0
--- /dev/null
+++ b/include/autoenable.h
@@ -0,0 +1,21 @@
+#ifndef __AUTOENABLE_H
+#define __AUTOENABLE_H
+
+#include <linux/err.h>
+
+#ifdef CONFIG_KERNEL_AUTOENABLE
+int autoenable_device_by_path(char *path);
+int autoenable_i2c_by_path(char *path);
+#else
+inline int autoenable_device_by_path(char *path)
+{
+	return -EINVAL;
+}
+
+inline int autoenable_i2c_by_path(char *path)
+{
+	return -EINVAL;
+}
+#endif /* CONFIG_KERNEL_AUTOENABLE */
+
+#endif /* __AUTOENABLE_H */
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
