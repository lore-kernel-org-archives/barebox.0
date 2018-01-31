Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egqCD-0002QZ-4G
 for barebox@lists.infradead.org; Wed, 31 Jan 2018 11:04:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 31 Jan 2018 12:04:37 +0100
Message-Id: <20180131110438.22620-3-s.hauer@pengutronix.de>
In-Reply-To: <20180131110438.22620-1-s.hauer@pengutronix.de>
References: <20180131110438.22620-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] of: Allow for const properties
To: Barebox List <barebox@lists.infradead.org>

This adds support for const properties. We add a const void *value_const
to struct property which will not be modified. The value of a property
should no longer be used directly, but with the of_property_get_value()
accessor which picks the right value.
With this we can unflatten dtbs and use the property values directly
from the dtb instead of copying them. This is useful for device trees
which (ab)use properties to store huge data files, aka FIT images.
To create a property whose value is not copied but used from the
original input data we introduce of_new_property_const().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_property.c |   1 +
 drivers/of/base.c      | 107 +++++++++++++++++++++++++++++++++++++++----------
 include/of.h           |   4 ++
 3 files changed, 91 insertions(+), 21 deletions(-)

diff --git a/commands/of_property.c b/commands/of_property.c
index ae6bfd4211..2bc08f2dad 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -278,6 +278,7 @@ static int do_of_property(int argc, char *argv[])
 
 		if (pp) {
 			free(pp->value);
+			pp->value_const = NULL;
 
 			/* limit property data to the actual size */
 			if (len) {
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 10b62890b5..21c51a7122 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -129,6 +129,11 @@ struct property *of_find_property(const struct device_node *np,
 }
 EXPORT_SYMBOL(of_find_property);
 
+const void *of_property_get_value(struct property *pp)
+{
+	return pp->value ? pp->value : pp->value_const;
+}
+
 static void of_alias_add(struct alias_prop *ap, struct device_node *np,
 			 int id, const char *stem, int stem_len)
 {
@@ -178,7 +183,7 @@ void of_alias_scan(void)
 		    !of_prop_cmp(pp->name, "linux,phandle"))
 			continue;
 
-		np = of_find_node_by_path(pp->value);
+		np = of_find_node_by_path(of_property_get_value(pp));
 		if (!np)
 			continue;
 
@@ -374,7 +379,10 @@ const void *of_get_property(const struct device_node *np, const char *name,
 {
 	struct property *pp = of_find_property(np, name, lenp);
 
-	return pp ? pp->value : NULL;
+	if (!pp)
+		return NULL;
+
+	return of_property_get_value(pp);
 }
 EXPORT_SYMBOL(of_get_property);
 
@@ -678,19 +686,21 @@ EXPORT_SYMBOL(of_match);
  * property data isn't large enough.
  *
  */
-static void *of_find_property_value_of_size(const struct device_node *np,
+static const void *of_find_property_value_of_size(const struct device_node *np,
 			const char *propname, u32 len)
 {
 	struct property *prop = of_find_property(np, propname, NULL);
+	const void *value;
 
 	if (!prop)
 		return ERR_PTR(-EINVAL);
-	if (!prop->value)
+	value = of_property_get_value(prop);
+	if (!value)
 		return ERR_PTR(-ENODATA);
 	if (len > prop->length)
 		return ERR_PTR(-EOVERFLOW);
 
-	return prop->value;
+	return value;
 }
 
 /**
@@ -867,13 +877,16 @@ int of_property_read_string(struct device_node *np, const char *propname,
 				const char **out_string)
 {
 	struct property *prop = of_find_property(np, propname, NULL);
+	const void *value;
+
 	if (!prop)
 		return -EINVAL;
-	if (!prop->value)
+	value = of_property_get_value(prop);
+	if (!value)
 		return -ENODATA;
-	if (strnlen(prop->value, prop->length) >= prop->length)
+	if (strnlen(value, prop->length) >= prop->length)
 		return -EILSEQ;
-	*out_string = prop->value;
+	*out_string = value;
 	return 0;
 }
 EXPORT_SYMBOL_GPL(of_property_read_string);
@@ -903,15 +916,17 @@ int of_property_read_string_index(struct device_node *np, const char *propname,
 	int i = 0;
 	size_t l = 0, total = 0;
 	const char *p;
+	const void *value;
 
 	if (!prop)
 		return -EINVAL;
-	if (!prop->value)
+	value = of_property_get_value(prop);
+	if (!value)
 		return -ENODATA;
-	if (strnlen(prop->value, prop->length) >= prop->length)
+	if (strnlen(value, prop->length) >= prop->length)
 		return -EILSEQ;
 
-	p = prop->value;
+	p = value;
 
 	for (i = 0; total < prop->length; total += l, p += l) {
 		l = strlen(p) + 1;
@@ -943,10 +958,11 @@ int of_property_match_string(struct device_node *np, const char *propname,
 
 	if (!prop)
 		return -EINVAL;
-	if (!prop->value)
+
+	p = of_property_get_value(prop);
+	if (!p)
 		return -ENODATA;
 
-	p = prop->value;
 	end = p + prop->length;
 
 	for (i = 0; p < end; i++, p += l) {
@@ -979,15 +995,17 @@ int of_property_count_strings(struct device_node *np, const char *propname)
 	int i = 0;
 	size_t l = 0, total = 0;
 	const char *p;
+	const void *value;
 
 	if (!prop)
 		return -EINVAL;
-	if (!prop->value)
+	value = of_property_get_value(prop);
+	if (!value)
 		return -ENODATA;
-	if (strnlen(prop->value, prop->length) >= prop->length)
+	if (strnlen(value, prop->length) >= prop->length)
 		return -EILSEQ;
 
-	p = prop->value;
+	p = value;
 
 	for (i = 0; total < prop->length; total += l, p += l, i++)
 		l = strlen(p) + 1;
@@ -1000,17 +1018,20 @@ const __be32 *of_prop_next_u32(struct property *prop, const __be32 *cur,
 			u32 *pu)
 {
 	const void *curv = cur;
+	const void *value;
 
 	if (!prop)
 		return NULL;
 
+	value = of_property_get_value(prop);
+
 	if (!cur) {
-		curv = prop->value;
+		curv = value;
 		goto out_val;
 	}
 
 	curv += sizeof(*cur);
-	if (curv >= prop->value + prop->length)
+	if (curv >= value + prop->length)
 		return NULL;
 
 out_val:
@@ -1022,15 +1043,18 @@ EXPORT_SYMBOL_GPL(of_prop_next_u32);
 const char *of_prop_next_string(struct property *prop, const char *cur)
 {
 	const void *curv = cur;
+	const void *value;
 
 	if (!prop)
 		return NULL;
 
+	value = of_property_get_value(prop);
+
 	if (!cur)
-		return prop->value;
+		return value;
 
 	curv += strlen(cur) + 1;
-	if (curv >= prop->value + prop->length)
+	if (curv >= value + prop->length)
 		return NULL;
 
 	return curv;
@@ -1777,7 +1801,7 @@ void of_print_nodes(struct device_node *node, int indent)
 		printf("%s", p->name);
 		if (p->length) {
 			printf(" = ");
-			of_print_property(p->value, p->length);
+			of_print_property(of_property_get_value(p), p->length);
 		}
 		printf(";\n");
 	}
@@ -1817,6 +1841,18 @@ struct device_node *of_new_node(struct device_node *parent, const char *name)
 	return node;
 }
 
+/**
+ * of_new_property - Add a new property to a node
+ * @node:	device node to which the property is added
+ * @name:	Name of the new property
+ * @data:	Value of the property (can be NULL)
+ * @len:	Length of the value
+ *
+ * This adds a new property to a device node. @data is copied and no longer needed
+ * after calling this function.
+ *
+ * Return: A pointer to the new property
+ */
 struct property *of_new_property(struct device_node *node, const char *name,
 		const void *data, int len)
 {
@@ -1835,6 +1871,35 @@ struct property *of_new_property(struct device_node *node, const char *name,
 	return prop;
 }
 
+/**
+ * of_new_property_const - Add a new property to a node
+ * @node:	device node to which the property is added
+ * @name:	Name of the new property
+ * @data:	Value of the property (can be NULL)
+ * @len:	Length of the value
+ *
+ * This adds a new property to a device node. @data is used directly in the
+ * property and must be valid until the property is deleted again or set to
+ * another value. Normally you shouldn't use this function, use of_new_property()
+ * instead.
+ *
+ * Return: A pointer to the new property
+ */
+struct property *of_new_property_const(struct device_node *node, const char *name,
+		const void *data, int len)
+{
+	struct property *prop;
+
+	prop = xzalloc(sizeof(*prop));
+	prop->name = xstrdup(name);
+	prop->length = len;
+	prop->value_const = data;
+
+	list_add_tail(&prop->list, &node->properties);
+
+	return prop;
+}
+
 void of_delete_property(struct property *pp)
 {
 	if (!pp)
diff --git a/include/of.h b/include/of.h
index 1b9719d603..d3b92328a5 100644
--- a/include/of.h
+++ b/include/of.h
@@ -20,6 +20,7 @@ struct property {
 	char *name;
 	int length;
 	void *value;
+	const void *value_const;
 	struct list_head list;
 };
 
@@ -117,6 +118,9 @@ extern int of_set_property(struct device_node *node, const char *p,
 			const void *val, int len, int create);
 extern struct property *of_new_property(struct device_node *node,
 				const char *name, const void *data, int len);
+extern struct property *of_new_property_const(struct device_node *node,
+					      const char *name,
+					      const void *data, int len);
 extern void of_delete_property(struct property *pp);
 
 extern struct device_node *of_find_node_by_name(struct device_node *from,
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
