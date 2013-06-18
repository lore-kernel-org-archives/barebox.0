Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22d.google.com ([2a00:1450:4008:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UozkJ-0006rC-Dg
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 17:31:15 +0000
Received: by mail-bk0-f45.google.com with SMTP id je9so1911029bkc.18
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2013 10:30:45 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 18 Jun 2013 19:29:59 +0200
Message-Id: <1371576607-8090-15-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 14/22] OF: base: import of_property_read_* helpers from Linux
 OF API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This imports of_property_read_* helpers from Linux OF API to allow
to read all kinds of properties.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |  387 +++++++++++++++++++++++++++++++++++++++++------------
 include/of.h      |  132 ++++++++++++++++--
 2 files changed, 420 insertions(+), 99 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 17364ea..4689f3e 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -467,12 +467,137 @@ int of_match(struct device_d *dev, struct driver_d *drv)
 EXPORT_SYMBOL(of_match);
 
 /**
+ * of_find_property_value_of_size
+ *
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @len:	requested length of property value
+ *
+ * Search for a property in a device node and valid the requested size.
+ * Returns the property value on success, -EINVAL if the property does not
+ *  exist, -ENODATA if property does not have a value, and -EOVERFLOW if the
+ * property data isn't large enough.
+ *
+ */
+static void *of_find_property_value_of_size(const struct device_node *np,
+			const char *propname, u32 len)
+{
+	struct property *prop = of_find_property(np, propname, NULL);
+
+	if (!prop)
+		return ERR_PTR(-EINVAL);
+	if (!prop->value)
+		return ERR_PTR(-ENODATA);
+	if (len > prop->length)
+		return ERR_PTR(-EOVERFLOW);
+
+	return prop->value;
+}
+
+/**
+ * of_property_read_u32_index - Find and read a u32 from a multi-value property.
+ *
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @index:	index of the u32 in the list of values
+ * @out_value:	pointer to return value, modified only if no error.
+ *
+ * Search for a property in a device node and read nth 32-bit value from
+ * it. Returns 0 on success, -EINVAL if the property does not exist,
+ * -ENODATA if property does not have a value, and -EOVERFLOW if the
+ * property data isn't large enough.
+ *
+ * The out_value is modified only if a valid u32 value can be decoded.
+ */
+int of_property_read_u32_index(const struct device_node *np,
+				       const char *propname,
+				       u32 index, u32 *out_value)
+{
+	const u32 *val = of_find_property_value_of_size(np, propname,
+					((index + 1) * sizeof(*out_value)));
+
+	if (IS_ERR(val))
+		return PTR_ERR(val);
+
+	*out_value = be32_to_cpup(((__be32 *)val) + index);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_property_read_u32_index);
+
+/**
+ * of_property_read_u8_array - Find and read an array of u8 from a property.
+ *
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @out_value:	pointer to return value, modified only if return value is 0.
+ * @sz:		number of array elements to read
+ *
+ * Search for a property in a device node and read 8-bit value(s) from
+ * it. Returns 0 on success, -EINVAL if the property does not exist,
+ * -ENODATA if property does not have a value, and -EOVERFLOW if the
+ * property data isn't large enough.
+ *
+ * dts entry of array should be like:
+ *	property = /bits/ 8 <0x50 0x60 0x70>;
+ *
+ * The out_value is modified only if a valid u8 value can be decoded.
+ */
+int of_property_read_u8_array(const struct device_node *np,
+			const char *propname, u8 *out_values, size_t sz)
+{
+	const u8 *val = of_find_property_value_of_size(np, propname,
+						(sz * sizeof(*out_values)));
+
+	if (IS_ERR(val))
+		return PTR_ERR(val);
+
+	while (sz--)
+		*out_values++ = *val++;
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_property_read_u8_array);
+
+/**
+ * of_property_read_u16_array - Find and read an array of u16 from a property.
+ *
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @out_value:	pointer to return value, modified only if return value is 0.
+ * @sz:		number of array elements to read
+ *
+ * Search for a property in a device node and read 16-bit value(s) from
+ * it. Returns 0 on success, -EINVAL if the property does not exist,
+ * -ENODATA if property does not have a value, and -EOVERFLOW if the
+ * property data isn't large enough.
+ *
+ * dts entry of array should be like:
+ *	property = /bits/ 16 <0x5000 0x6000 0x7000>;
+ *
+ * The out_value is modified only if a valid u16 value can be decoded.
+ */
+int of_property_read_u16_array(const struct device_node *np,
+			const char *propname, u16 *out_values, size_t sz)
+{
+	const __be16 *val = of_find_property_value_of_size(np, propname,
+						(sz * sizeof(*out_values)));
+
+	if (IS_ERR(val))
+		return PTR_ERR(val);
+
+	while (sz--)
+		*out_values++ = be16_to_cpup(val++);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_property_read_u16_array);
+
+/**
  * of_property_read_u32_array - Find and read an array of 32 bit integers
  * from a property.
  *
  * @np:		device node from which the property value is to be read.
  * @propname:	name of the property to be searched.
  * @out_value:	pointer to return value, modified only if return value is 0.
+ * @sz:		number of array elements to read
  *
  * Search for a property in a device node and read 32-bit value(s) from
  * it. Returns 0 on success, -EINVAL if the property does not exist,
@@ -485,22 +610,192 @@ int of_property_read_u32_array(const struct device_node *np,
 			       const char *propname, u32 *out_values,
 			       size_t sz)
 {
+	const __be32 *val = of_find_property_value_of_size(np, propname,
+						(sz * sizeof(*out_values)));
+
+	if (IS_ERR(val))
+		return PTR_ERR(val);
+
+	while (sz--)
+		*out_values++ = be32_to_cpup(val++);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_property_read_u32_array);
+
+/**
+ * of_property_read_u64 - Find and read a 64 bit integer from a property
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @out_value:	pointer to return value, modified only if return value is 0.
+ *
+ * Search for a property in a device node and read a 64-bit value from
+ * it. Returns 0 on success, -EINVAL if the property does not exist,
+ * -ENODATA if property does not have a value, and -EOVERFLOW if the
+ * property data isn't large enough.
+ *
+ * The out_value is modified only if a valid u64 value can be decoded.
+ */
+int of_property_read_u64(const struct device_node *np, const char *propname,
+			 u64 *out_value)
+{
+	const __be32 *val = of_find_property_value_of_size(np, propname,
+						sizeof(*out_value));
+
+	if (IS_ERR(val))
+		return PTR_ERR(val);
+
+	*out_value = of_read_number(val, 2);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_property_read_u64);
+
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
 	struct property *prop = of_find_property(np, propname, NULL);
-	const __be32 *val;
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
+	struct property *prop = of_find_property(np, propname, NULL);
+	int i = 0;
+	size_t l = 0, total = 0;
+	const char *p;
 
 	if (!prop)
 		return -EINVAL;
 	if (!prop->value)
 		return -ENODATA;
-	if ((sz * sizeof(*out_values)) > prop->length)
-		return -EOVERFLOW;
+	if (strnlen(prop->value, prop->length) >= prop->length)
+		return -EILSEQ;
 
-	val = prop->value;
-	while (sz--)
-		*out_values++ = be32_to_cpup(val++);
-	return 0;
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
 }
-EXPORT_SYMBOL_GPL(of_property_read_u32_array);
+EXPORT_SYMBOL_GPL(of_property_read_string_index);
+
+/**
+ * of_property_match_string() - Find string in a list and return index
+ * @np: pointer to node containing string list property
+ * @propname: string list property name
+ * @string: pointer to string to search for in string list
+ *
+ * This function searches a string list property and returns the index
+ * of a specific string value.
+ */
+int of_property_match_string(struct device_node *np, const char *propname,
+			     const char *string)
+{
+	struct property *prop = of_find_property(np, propname, NULL);
+	size_t l;
+	int i;
+	const char *p, *end;
+
+	if (!prop)
+		return -EINVAL;
+	if (!prop->value)
+		return -ENODATA;
+
+	p = prop->value;
+	end = p + prop->length;
+
+	for (i = 0; p < end; i++, p += l) {
+		l = strlen(p) + 1;
+		if (p + l > end)
+			return -EILSEQ;
+		pr_debug("comparing %s with %s\n", string, p);
+		if (strcmp(string, p) == 0)
+			return i; /* Found it; return index */
+	}
+	return -ENODATA;
+}
+EXPORT_SYMBOL_GPL(of_property_match_string);
+
+/**
+ * of_property_count_strings - Find and return the number of strings from a
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
+int of_property_count_strings(struct device_node *np, const char *propname)
+{
+	struct property *prop = of_find_property(np, propname, NULL);
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
+	for (i = 0; total < prop->length; total += l, p += l, i++)
+		l = strlen(p) + 1;
+
+	return i;
+}
+EXPORT_SYMBOL_GPL(of_property_count_strings);
 
 /**
  * of_property_write_u32_array - Write an array of u32 to a property. If
@@ -717,82 +1012,6 @@ out:
 EXPORT_SYMBOL(of_find_node_by_path);
 
 /**
- * of_property_read_string - Find and read a string from a property
- * @np:		device node from which the property value is to be read.
- * @propname:	name of the property to be searched.
- * @out_string:	pointer to null terminated return string, modified only if
- *		return value is 0.
- *
- * Search for a property in a device tree node and retrieve a null
- * terminated string value (pointer to data, not a copy). Returns 0 on
- * success, -EINVAL if the property does not exist, -ENODATA if property
- * does not have a value, and -EILSEQ if the string is not null-terminated
- * within the length of the property data.
- *
- * The out_string pointer is modified only if a valid string can be decoded.
- */
-int of_property_read_string(struct device_node *np, const char *propname,
-				const char **out_string)
-{
-	struct property *prop = of_find_property(np, propname, NULL);
-	if (!prop)
-		return -EINVAL;
-	if (!prop->value)
-		return -ENODATA;
-	if (strnlen(prop->value, prop->length) >= prop->length)
-		return -EILSEQ;
-	*out_string = prop->value;
-	return 0;
-}
-EXPORT_SYMBOL_GPL(of_property_read_string);
-
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
-
-	if (!prop)
-		return -EINVAL;
-	if (!prop->value)
-		return -ENODATA;
-	if (strnlen(prop->value, prop->length) >= prop->length)
-		return -EILSEQ;
-
-	p = prop->value;
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
-/**
  * of_modalias_node - Lookup appropriate modalias for a device node
  * @node:	pointer to a device tree node
  * @modalias:	Pointer to buffer that modalias value will be copied into
diff --git a/include/of.h b/include/of.h
index c69b9ad..d782eaf 100644
--- a/include/of.h
+++ b/include/of.h
@@ -106,17 +106,6 @@ static inline void of_write_number(void *__cell, u64 val, int size)
 	}
 }
 
-int of_property_read_u32_array(const struct device_node *np,
-			       const char *propname, u32 *out_values,
-			       size_t sz);
-
-static inline int of_property_read_u32(const struct device_node *np,
-				       const char *propname,
-				       u32 *out_value)
-{
-	return of_property_read_u32_array(np, propname, out_value, 1);
-}
-
 int of_property_write_u32_array(struct device_node *np,
 				const char *propname, const u32 *values,
 				size_t sz);
@@ -163,10 +152,6 @@ struct property *of_new_property(struct device_node *node, const char *name,
 		const void *data, int len);
 void of_delete_property(struct property *pp);
 
-int of_property_read_string(struct device_node *np, const char *propname,
-				const char **out_string);
-int of_property_read_string_index(struct device_node *np, const char *propname,
-				  int index, const char **output);
 int of_set_property(struct device_node *node, const char *p, const void *val, int len,
 		int create);
 struct device_node *of_create_node(struct device_node *root, const char *path);
@@ -203,6 +188,32 @@ extern struct device_node *of_get_next_available_child(
 extern struct device_node *of_get_child_by_name(const struct device_node *node,
 					const char *name);
 
+extern int of_property_read_u32_index(const struct device_node *np,
+				       const char *propname,
+				       u32 index, u32 *out_value);
+extern int of_property_read_u8_array(const struct device_node *np,
+			const char *propname, u8 *out_values, size_t sz);
+extern int of_property_read_u16_array(const struct device_node *np,
+			const char *propname, u16 *out_values, size_t sz);
+extern int of_property_read_u32_array(const struct device_node *np,
+				      const char *propname,
+				      u32 *out_values,
+				      size_t sz);
+extern int of_property_read_u64(const struct device_node *np,
+				const char *propname, u64 *out_value);
+
+extern int of_property_read_string(struct device_node *np,
+				   const char *propname,
+				   const char **out_string);
+extern int of_property_read_string_index(struct device_node *np,
+					 const char *propname,
+					 int index, const char **output);
+extern int of_property_match_string(struct device_node *np,
+				    const char *propname,
+				    const char *string);
+extern int of_property_count_strings(struct device_node *np,
+				     const char *propname);
+
 extern void of_alias_scan(void);
 extern int of_alias_get_id(struct device_node *np, const char *stem);
 extern const char *of_alias_get(struct device_node *np);
@@ -277,6 +288,60 @@ static inline struct property *of_find_property(const struct device_node *np,
 	return NULL;
 }
 
+static inline int of_property_read_u32_index(const struct device_node *np,
+				const char *propname, u32 index, u32 *out_value)
+{
+	return -ENOSYS;
+}
+
+static inline int of_property_read_u8_array(const struct device_node *np,
+				const char *propname, u8 *out_values, size_t sz)
+{
+	return -ENOSYS;
+}
+
+static inline int of_property_read_u16_array(const struct device_node *np,
+			const char *propname, u16 *out_values, size_t sz)
+{
+	return -ENOSYS;
+}
+
+static inline int of_property_read_u32_array(const struct device_node *np,
+			const char *propname, u32 *out_values, size_t sz)
+{
+	return -ENOSYS;
+}
+
+static inline int of_property_read_u64(const struct device_node *np,
+				const char *propname, u64 *out_value)
+{
+	return -ENOSYS;
+}
+
+static inline int of_property_read_string(struct device_node *np,
+				const char *propname, const char **out_string)
+{
+	return -ENOSYS;
+}
+
+static inline int of_property_read_string_index(struct device_node *np,
+			 const char *propname, int index, const char **output)
+{
+	return -ENOSYS;
+}
+
+static inline int of_property_match_string(struct device_node *np,
+				const char *propname, const char *string)
+{
+	return -ENOSYS;
+}
+
+static inline int of_property_count_strings(struct device_node *np,
+					const char *propname)
+{
+	return -ENOSYS;
+}
+
 static inline struct device_node *of_find_node_by_path(const char *path)
 {
 	return NULL;
@@ -370,4 +435,41 @@ static inline int of_get_child_count(const struct device_node *np)
 	return num;
 }
 
+/**
+ * of_property_read_bool - Findfrom a property
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ *
+ * Search for a property in a device node.
+ * Returns true if the property exist false otherwise.
+ */
+static inline bool of_property_read_bool(const struct device_node *np,
+					 const char *propname)
+{
+	struct property *prop = of_find_property(np, propname, NULL);
+
+	return prop ? true : false;
+}
+
+static inline int of_property_read_u8(const struct device_node *np,
+				       const char *propname,
+				       u8 *out_value)
+{
+	return of_property_read_u8_array(np, propname, out_value, 1);
+}
+
+static inline int of_property_read_u16(const struct device_node *np,
+				       const char *propname,
+				       u16 *out_value)
+{
+	return of_property_read_u16_array(np, propname, out_value, 1);
+}
+
+static inline int of_property_read_u32(const struct device_node *np,
+				       const char *propname,
+				       u32 *out_value)
+{
+	return of_property_read_u32_array(np, propname, out_value, 1);
+}
+
 #endif /* __OF_H */
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
