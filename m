Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1eAIXF-0002K5-5q
 for barebox@lists.infradead.org; Thu, 02 Nov 2017 16:40:10 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 9A59DA00543
 for <barebox@lists.infradead.org>; Thu,  2 Nov 2017 17:41:38 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Thu, 2 Nov 2017 17:39:41 +0100
Message-Id: <1509640782-8765-2-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1509640782-8765-1-git-send-email-d.schultz@phytec.de>
References: <1509640782-8765-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v2 2/3] common: oftree: Add autoenable functionality
To: barebox@lists.infradead.org

This patch adds an API to automatically enable either hardware components
with existing device drivers or i2c clients. All functions take a device
tree path to find the hardware and will fix up the node status in the
kernel device tree, if it's accessible.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
Changes:
	v2: Moved from standalone file to oftree.c
	    Added of_device_is_available, if a driver is disabled
	    Added of_property_read_u32
	    Removed Kconfig
	    Added of_ prefix to function names
	    Renamed of_autoenable_i2c_by_path to of_autoenable_i2c_by_component

 common/oftree.c | 92 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h    | 14 +++++++++
 2 files changed, 106 insertions(+)

diff --git a/common/oftree.c b/common/oftree.c
index 09a4455..3b77a7e 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -11,6 +11,7 @@
 #include <getopt.h>
 #include <init.h>
 #include <boot.h>
+#include <i2c/i2c.h>
 
 #define MAX_LEVEL	32		/* how deeply nested we will go */
 
@@ -260,3 +261,94 @@ struct fdt_header *of_get_fixed_tree(struct device_node *node)
 
 	return fdt;
 }
+
+/**
+ * of_autoenable_device_by_path() - Autoenable a device by a device tree path
+ * @param path Device tree path up from the root to the device
+ * @return 0 on success, -enodev on failure. If no device found in the device
+ * tree.
+ *
+ * This function will search for a device and will enable it in the kernel
+ * device tree, if it exists and is loaded.
+ */
+int of_autoenable_device_by_path(char *path)
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
+		if (!of_device_is_available(node))
+			return -ENODEV;
+
+	ret = of_register_set_status_fixup(path, 1);
+	if (!ret)
+		printf("autoenabled %s\n", node->name);
+	return ret;
+}
+
+/**
+ * of_autoenable_i2c_by_component - Autoenable a i2c client by a device tree path
+ * @param path Device tree path up from the root to the i2c client
+ * @return 0 on success, -enodev on failure. If no i2c client found in the i2c
+ * device tree.
+ *
+ * This function will search for a i2c client, tries to write to the client and
+ * will enable it in the kernel device tree, if it exists and is accessible.
+ */
+int of_autoenable_i2c_by_component(char *path)
+{
+	struct device_node *node;
+	struct i2c_adapter *i2c_adapter;
+	struct i2c_msg msg;
+	char data[1] = {0x0};
+	int ret;
+	uint32_t addr;
+
+	if (!IS_ENABLED(CONFIG_I2C))
+		return -ENODEV;
+
+	node = of_find_node_by_name(NULL, path);
+	if (!node)
+		node = of_find_node_by_path(path);
+	if (!node)
+		return -ENODEV;
+	if (!node->parent)
+		return -ENODEV;
+
+	ret = of_property_read_u32(node, "reg", &addr);
+	if (ret)
+		return -ENODEV;
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
+	if (ret == -EREMOTEIO)
+		return -ENODEV;
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
diff --git a/include/of.h b/include/of.h
index 18a4232..9bdbbb5e 100644
--- a/include/of.h
+++ b/include/of.h
@@ -262,6 +262,8 @@ struct device_node *of_find_node_by_alias(struct device_node *root,
 		const char *alias);
 struct device_node *of_find_node_by_path_or_alias(struct device_node *root,
 		const char *str);
+int of_autoenable_device_by_path(char *path);
+int of_autoenable_i2c_by_component(char *path);
 #else
 static inline int of_parse_partitions(struct cdev *cdev,
 					  struct device_node *node)
@@ -664,6 +666,18 @@ static inline struct device_node *of_find_node_by_path_or_alias(
 {
 	return NULL;
 }
+
+static inline int of_autoenable_i2c_by_path(char *path)
+{
+	return -ENODEV;
+}
+
+static inline int of_autoenable_i2c_by_component(char *path)
+{
+	return -ENODEV;
+}
+
+
 #endif
 
 #define for_each_node_by_name(dn, name) \
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
