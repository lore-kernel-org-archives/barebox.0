Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUB9q-0008Cj-G0
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 07:27:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Apr 2013 09:27:19 +0200
Message-Id: <1366615643-22213-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366615643-22213-1-git-send-email-s.hauer@pengutronix.de>
References: <1366615643-22213-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] of: Add of_property_read_string_index()
To: barebox@lists.infradead.org

Directly imported from the Kernel

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 46 ++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h      |  2 ++
 2 files changed, 48 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 65d8171..c086f7e 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -579,6 +579,52 @@ int of_property_read_string(struct device_node *np, const char *propname,
 }
 EXPORT_SYMBOL_GPL(of_property_read_string);
 
+/**
+ * of_property_read_string_index - Find and read a string from a multiple
+ * strings property.
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @index:	index of the string in the list of strings
+ * @out_string:	pointer to null terminated return string, modified only if
+ *		return value is 0.
+ *
+ * Search for a property in a device tree node and retrieve a null
+ * terminated string value (pointer to data, not a copy) in the list of strings
+ * contained in that property.
+ * Returns 0 on success, -EINVAL if the property does not exist, -ENODATA if
+ * property does not have a value, and -EILSEQ if the string is not
+ * null-terminated within the length of the property data.
+ *
+ * The out_string pointer is modified only if a valid string can be decoded.
+ */
+int of_property_read_string_index(struct device_node *np, const char *propname,
+				  int index, const char **output)
+{
+	struct property *prop = of_find_property(np, propname);
+	int i = 0;
+	size_t l = 0, total = 0;
+	const char *p;
+
+	if (!prop)
+		return -EINVAL;
+	if (!prop->value)
+		return -ENODATA;
+	if (strnlen(prop->value, prop->length) >= prop->length)
+		return -EILSEQ;
+
+	p = prop->value;
+
+	for (i = 0; total < prop->length; total += l, p += l) {
+		l = strlen(p) + 1;
+		if (i++ == index) {
+			*output = p;
+			return 0;
+		}
+	}
+	return -ENODATA;
+}
+EXPORT_SYMBOL_GPL(of_property_read_string_index);
+
 struct device_node *of_get_root_node(void)
 {
 	return root_node;
diff --git a/include/of.h b/include/of.h
index 94ccfd8..852231e 100644
--- a/include/of.h
+++ b/include/of.h
@@ -160,6 +160,8 @@ void of_delete_property(struct property *pp);
 
 int of_property_read_string(struct device_node *np, const char *propname,
 				const char **out_string);
+int of_property_read_string_index(struct device_node *np, const char *propname,
+				  int index, const char **output);
 int of_set_property(struct device_node *node, const char *p, const void *val, int len,
 		int create);
 struct device_node *of_create_node(struct device_node *root, const char *path);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
