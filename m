Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJHY-0005iF-5j
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:46:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:46:23 +0200
Message-Id: <1349725584-20509-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349725584-20509-1-git-send-email-s.hauer@pengutronix.de>
References: <1349725584-20509-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] of: Add function to get the model name
To: barebox@lists.infradead.org

This is useful for printing it during startup.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   37 +++++++++++++++++++++++++++++++++++++
 include/of.h      |    9 +++++++++
 2 files changed, 46 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 3d26343..5853826 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -490,6 +490,36 @@ struct device_node *of_find_node_by_path(const char *path)
 }
 EXPORT_SYMBOL(of_find_node_by_path);
 
+/**
+ * of_property_read_string - Find and read a string from a property
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @out_string:	pointer to null terminated return string, modified only if
+ *		return value is 0.
+ *
+ * Search for a property in a device tree node and retrieve a null
+ * terminated string value (pointer to data, not a copy). Returns 0 on
+ * success, -EINVAL if the property does not exist, -ENODATA if property
+ * does not have a value, and -EILSEQ if the string is not null-terminated
+ * within the length of the property data.
+ *
+ * The out_string pointer is modified only if a valid string can be decoded.
+ */
+int of_property_read_string(struct device_node *np, const char *propname,
+				const char **out_string)
+{
+	struct property *prop = of_find_property(np, propname);
+	if (!prop)
+		return -EINVAL;
+	if (!prop->value)
+		return -ENODATA;
+	if (strnlen(prop->value, prop->length) >= prop->length)
+		return -EILSEQ;
+	*out_string = prop->value;
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_property_read_string);
+
 struct device_node *of_get_root_node(void)
 {
 	return root_node;
@@ -759,6 +789,12 @@ static void __of_probe(struct device_node *node)
 }
 
 struct device_node *of_chosen;
+const char *of_model;
+
+const char *of_get_model(void)
+{
+	return of_model;
+}
 
 int of_probe(void)
 {
@@ -766,6 +802,7 @@ int of_probe(void)
 		return -ENODEV;
 
 	of_chosen = of_find_node_by_path("/chosen");
+	of_property_read_string(root_node, "model", &of_model);
 
 	__of_probe(root_node);
 
diff --git a/include/of.h b/include/of.h
index e6342b6..58b4590 100644
--- a/include/of.h
+++ b/include/of.h
@@ -108,6 +108,9 @@ void of_print_nodes(struct device_node *node, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
 
+int of_property_read_string(struct device_node *np, const char *propname,
+				const char **out_string);
+
 #ifdef CONFIG_OFDEVICE
 int of_parse_partitions(const char *cdevname,
 			    struct device_node *node);
@@ -115,6 +118,7 @@ int of_parse_partitions(const char *cdevname,
 struct device_node *of_get_root_node(void);
 int of_alias_get_id(struct device_node *np, const char *stem);
 int of_device_is_stdout_path(struct device_d *dev);
+const char *of_get_model(void);
 #else
 static inline int of_parse_partitions(const char *cdevname,
 					  struct device_node *node)
@@ -136,6 +140,11 @@ static inline int of_device_is_stdout_path(struct device_d *dev)
 {
 	return 0;
 }
+
+static inline const char *of_get_model(void)
+{
+	return NULL;
+}
 #endif
 
 #endif /* __OF_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
