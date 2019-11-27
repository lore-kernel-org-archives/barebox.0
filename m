Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvJ1-00043b-Ev
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:16:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:16:10 +0100
Message-Id: <20191127111613.24173-2-s.hauer@pengutronix.de>
In-Reply-To: <20191127111613.24173-1-s.hauer@pengutronix.de>
References: <20191127111613.24173-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 1/4] of: Add of_property_read_string_array()
To: Barebox List <barebox@lists.infradead.org>

of_property_read_string_array() is used to read a multistring device
tree property into an array of strings. This is taken from the kernel.
It is implemented around of_property_read_string_helper() which can be
used to implement of_property_count_strings() and
of_property_read_string_index() as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 122 ++++++++++++++--------------------------------
 include/of.h      |  83 ++++++++++++++++++++++++++-----
 2 files changed, 107 insertions(+), 98 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 98ef5fc0d4..80ceeab13b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -886,54 +886,6 @@ int of_property_read_string(struct device_node *np, const char *propname,
 }
 EXPORT_SYMBOL_GPL(of_property_read_string);
 
-/**
- * of_property_read_string_index - Find and read a string from a multiple
- * strings property.
- * @np:		device node from which the property value is to be read.
- * @propname:	name of the property to be searched.
- * @index:	index of the string in the list of strings
- * @out_string:	pointer to null terminated return string, modified only if
- *		return value is 0.
- *
- * Search for a property in a device tree node and retrieve a null
- * terminated string value (pointer to data, not a copy) in the list of strings
- * contained in that property.
- * Returns 0 on success, -EINVAL if the property does not exist, -ENODATA if
- * property does not have a value, and -EILSEQ if the string is not
- * null-terminated within the length of the property data.
- *
- * The out_string pointer is modified only if a valid string can be decoded.
- */
-int of_property_read_string_index(struct device_node *np, const char *propname,
-				  int index, const char **output)
-{
-	struct property *prop = of_find_property(np, propname, NULL);
-	int i = 0;
-	size_t l = 0, total = 0;
-	const char *p;
-	const void *value;
-
-	if (!prop)
-		return -EINVAL;
-	value = of_property_get_value(prop);
-	if (!value)
-		return -ENODATA;
-	if (strnlen(value, prop->length) >= prop->length)
-		return -EILSEQ;
-
-	p = value;
-
-	for (i = 0; total < prop->length; total += l, p += l) {
-		l = strlen(p) + 1;
-		if (i++ == index) {
-			*output = p;
-			return 0;
-		}
-	}
-	return -ENODATA;
-}
-EXPORT_SYMBOL_GPL(of_property_read_string_index);
-
 /**
  * of_property_match_string() - Find string in a list and return index
  * @np: pointer to node containing string list property
@@ -972,43 +924,6 @@ int of_property_match_string(struct device_node *np, const char *propname,
 }
 EXPORT_SYMBOL_GPL(of_property_match_string);
 
-/**
- * of_property_count_strings - Find and return the number of strings from a
- * multiple strings property.
- * @np:		device node from which the property value is to be read.
- * @propname:	name of the property to be searched.
- *
- * Search for a property in a device tree node and retrieve the number of null
- * terminated string contain in it. Returns the number of strings on
- * success, -EINVAL if the property does not exist, -ENODATA if property
- * does not have a value, and -EILSEQ if the string is not null-terminated
- * within the length of the property data.
- */
-int of_property_count_strings(struct device_node *np, const char *propname)
-{
-	struct property *prop = of_find_property(np, propname, NULL);
-	int i = 0;
-	size_t l = 0, total = 0;
-	const char *p;
-	const void *value;
-
-	if (!prop)
-		return -EINVAL;
-	value = of_property_get_value(prop);
-	if (!value)
-		return -ENODATA;
-	if (strnlen(value, prop->length) >= prop->length)
-		return -EILSEQ;
-
-	p = value;
-
-	for (i = 0; total < prop->length; total += l, p += l, i++)
-		l = strlen(p) + 1;
-
-	return i;
-}
-EXPORT_SYMBOL_GPL(of_property_count_strings);
-
 const __be32 *of_prop_next_u32(struct property *prop, const __be32 *cur,
 			u32 *pu)
 {
@@ -1777,6 +1692,43 @@ struct device_node *of_get_child_by_name(const struct device_node *node,
 }
 EXPORT_SYMBOL(of_get_child_by_name);
 
+/**
+ * of_property_read_string_helper() - Utility helper for parsing string properties
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @out_strs:	output array of string pointers.
+ * @sz:		number of array elements to read.
+ * @skip:	Number of strings to skip over at beginning of list.
+ *
+ * Don't call this function directly. It is a utility helper for the
+ * of_property_read_string*() family of functions.
+ */
+int of_property_read_string_helper(const struct device_node *np,
+				   const char *propname, const char **out_strs,
+				   size_t sz, int skip)
+{
+	const struct property *prop = of_find_property(np, propname, NULL);
+	int l = 0, i = 0;
+	const char *p, *end;
+
+	if (!prop)
+		return -EINVAL;
+	if (!prop->value)
+		return -ENODATA;
+	p = prop->value;
+	end = p + prop->length;
+
+	for (i = 0; p < end && (!out_strs || i < skip + sz); i++, p += l) {
+		l = strnlen(p, end - p) + 1;
+		if (p + l > end)
+			return -EILSEQ;
+		if (out_strs && i >= skip)
+			*out_strs++ = p;
+	}
+	i -= skip;
+	return i <= 0 ? -ENODATA : i;
+}
+
 static void __of_print_nodes(struct device_node *node, int indent, const char *prefix)
 {
 	struct device_node *n;
diff --git a/include/of.h b/include/of.h
index 98ddf795cb..f63a3efe13 100644
--- a/include/of.h
+++ b/include/of.h
@@ -197,14 +197,12 @@ extern int of_property_read_u64(const struct device_node *np,
 extern int of_property_read_string(struct device_node *np,
 				   const char *propname,
 				   const char **out_string);
-extern int of_property_read_string_index(struct device_node *np,
-					 const char *propname,
-					 int index, const char **output);
 extern int of_property_match_string(struct device_node *np,
 				    const char *propname,
 				    const char *string);
-extern int of_property_count_strings(struct device_node *np,
-				     const char *propname);
+extern int of_property_read_string_helper(const struct device_node *np,
+					      const char *propname,
+					      const char **out_strs, size_t sz, int index);
 
 extern const __be32 *of_prop_next_u32(struct property *prop,
 				const __be32 *cur, u32 *pu);
@@ -444,20 +442,15 @@ static inline int of_property_read_string(struct device_node *np,
 	return -ENOSYS;
 }
 
-static inline int of_property_read_string_index(struct device_node *np,
-			 const char *propname, int index, const char **output)
-{
-	return -ENOSYS;
-}
-
 static inline int of_property_match_string(struct device_node *np,
 				const char *propname, const char *string)
 {
 	return -ENOSYS;
 }
 
-static inline int of_property_count_strings(struct device_node *np,
-					const char *propname)
+static inline int of_property_read_string_helper(const struct device_node *np,
+						 const char *propname,
+						 const char **out_strs, size_t sz, int index)
 {
 	return -ENOSYS;
 }
@@ -752,6 +745,70 @@ static inline struct device_node *of_find_matching_node(
 	for (child = of_get_next_available_child(parent, NULL); child != NULL; \
 	     child = of_get_next_available_child(parent, child))
 
+/**
+ * of_property_read_string_array() - Read an array of strings from a multiple
+ * strings property.
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @out_strs:	output array of string pointers.
+ * @sz:		number of array elements to read.
+ *
+ * Search for a property in a device tree node and retrieve a list of
+ * terminated string values (pointer to data, not a copy) in that property.
+ *
+ * If @out_strs is NULL, the number of strings in the property is returned.
+ */
+static inline int of_property_read_string_array(const struct device_node *np,
+						const char *propname, const char **out_strs,
+						size_t sz)
+{
+	return of_property_read_string_helper(np, propname, out_strs, sz, 0);
+}
+
+/**
+ * of_property_count_strings() - Find and return the number of strings from a
+ * multiple strings property.
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ *
+ * Search for a property in a device tree node and retrieve the number of null
+ * terminated string contain in it. Returns the number of strings on
+ * success, -EINVAL if the property does not exist, -ENODATA if property
+ * does not have a value, and -EILSEQ if the string is not null-terminated
+ * within the length of the property data.
+ */
+static inline int of_property_count_strings(const struct device_node *np,
+					    const char *propname)
+{
+	return of_property_read_string_helper(np, propname, NULL, 0, 0);
+}
+
+/**
+ * of_property_read_string_index() - Find and read a string from a multiple
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
+static inline int of_property_read_string_index(const struct device_node *np,
+						const char *propname,
+						int index, const char **output)
+{
+	int rc = of_property_read_string_helper(np, propname, output, 1, index);
+	return rc < 0 ? rc : 0;
+}
+
 /**
  * of_property_read_bool - Findfrom a property
  * @np:		device node from which the property value is to be read.
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
