Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uz5tg-0005gt-VP
 for barebox@lists.infradead.org; Tue, 16 Jul 2013 14:06:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jul 2013 16:05:58 +0200
Message-Id: <1373983566-27721-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373983566-27721-1-git-send-email-s.hauer@pengutronix.de>
References: <1373983566-27721-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] of: Add convenience functions to en/disable devicenodes
To: barebox@lists.infradead.org

These functions allow to manipulate the "status" property of
devicenodes effectively enabling/disabling devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 65 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h      |  5 +++++
 2 files changed, 70 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 7bee912..9559bff 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1752,3 +1752,68 @@ int of_add_initrd(struct device_node *root, resource_size_t start,
 
 	return 0;
 }
+
+/**
+ * of_device_enable - enable a devicenode device
+ * @node - the node to enable
+ *
+ * This deletes the status property of a devicenode effectively
+ * enabling the device.
+ */
+int of_device_enable(struct device_node *node)
+{
+	struct property *pp;
+
+	pp = of_find_property(node, "status", NULL);
+	if (!pp)
+		return 0;
+
+	of_delete_property(pp);
+
+	return 0;
+}
+
+/**
+ * of_device_enable_path - enable a devicenode
+ * @path - the nodepath to enable
+ *
+ * wrapper around of_device_enable taking the nodepath as argument
+ */
+int of_device_enable_path(const char *path)
+{
+	struct device_node *node;
+
+	node = of_find_node_by_path(path);
+	if (!node)
+		return -ENODEV;
+
+	return of_device_enable(node);
+}
+
+/**
+ * of_device_enable - disable a devicenode device
+ * @node - the node to disable
+ *
+ * This sets the status of a devicenode to "disabled"
+ */
+int of_device_disable(struct device_node *node)
+{
+	return of_set_property(node, "status", "disabled", sizeof("disabled"), 1);
+}
+
+/**
+ * of_device_disable_path - disable a devicenode
+ * @path - the nodepath to disable
+ *
+ * wrapper around of_device_disable taking the nodepath as argument
+ */
+int of_device_disable_path(const char *path)
+{
+	struct device_node *node;
+
+	node = of_find_node_by_path(path);
+	if (!node)
+		return -ENODEV;
+
+	return of_device_disable(node);
+}
diff --git a/include/of.h b/include/of.h
index 710383c..7b600f0 100644
--- a/include/of.h
+++ b/include/of.h
@@ -682,4 +682,9 @@ static inline int of_property_write_u64(struct device_node *np,
 
 extern const struct of_device_id of_default_bus_match_table[];
 
+int of_device_enable(struct device_node *node);
+int of_device_enable_path(const char *path);
+int of_device_disable(struct device_node *node);
+int of_device_disable_path(const char *path);
+
 #endif /* __OF_H */
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
