Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22b.google.com ([2a00:1450:4008:c01::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uozpp-00077W-8J
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 17:36:55 +0000
Received: by mail-bk0-f43.google.com with SMTP id jm2so1935813bkc.16
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2013 10:36:27 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 18 Jun 2013 19:30:02 +0200
Message-Id: <1371576607-8090-18-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 17/22] OF: base: introduce property write for bool, u8, u16,
 and u64
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This adds functions to set an array of or a single value for bool,
u8, u16, and u64 properties.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |  156 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h      |   82 ++++++++++++++++++++++++----
 2 files changed, 227 insertions(+), 11 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index a3a9aac..4c6f2f4 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -798,6 +798,119 @@ int of_property_count_strings(struct device_node *np, const char *propname)
 EXPORT_SYMBOL_GPL(of_property_count_strings);
 
 /**
+ * of_property_write_bool - Create/Delete empty (bool) property.
+ *
+ * @np:		device node from which the property is to be set.
+ * @propname:	name of the property to be set.
+ *
+ * Search for a property in a device node and create or delete the property.
+ * If the property already exists and write value is false, the property is
+ * deleted. If write value is true and the property does not exist, it is
+ * created. Returns 0 on success, -ENOMEM if the property or array
+ * of elements cannot be created.
+ */
+int of_property_write_bool(struct device_node *np, const char *propname,
+			   const bool value)
+{
+	struct property *prop = of_find_property(np, propname, NULL);
+
+	if (!value) {
+		if (prop)
+			of_delete_property(prop);
+		return 0;
+	}
+
+	if (!prop)
+		prop = of_new_property(np, propname, NULL, 0);
+	if (!prop)
+		return -ENOMEM;
+
+	return 0;
+}
+
+/**
+ * of_property_write_u8_array - Write an array of u8 to a property. If
+ * the property does not exist, it will be created and appended to the given
+ * device node.
+ *
+ * @np:		device node to which the property value is to be written.
+ * @propname:	name of the property to be written.
+ * @values:	pointer to array elements to write.
+ * @sz:		number of array elements to write.
+ *
+ * Search for a property in a device node and write 8-bit value(s) to
+ * it. If the property does not exist, it will be created and appended to
+ * the device node. Returns 0 on success, -ENOMEM if the property or array
+ * of elements cannot be created.
+ */
+int of_property_write_u8_array(struct device_node *np,
+			       const char *propname, const u8 *values,
+			       size_t sz)
+{
+	struct property *prop = of_find_property(np, propname, NULL);
+	u8 *val;
+
+	if (!prop)
+		prop = of_new_property(np, propname, NULL, 0);
+	if (!prop)
+		return -ENOMEM;
+
+	free(prop->value);
+
+	prop->length = sizeof(*val) * sz;
+	prop->value = malloc(prop->length);
+	if (!prop->value)
+		return -ENOMEM;
+
+	val = prop->value;
+	while (sz--)
+		*val++ = *values++;
+
+	return 0;
+}
+
+/**
+ * of_property_write_u16_array - Write an array of u16 to a property. If
+ * the property does not exist, it will be created and appended to the given
+ * device node.
+ *
+ * @np:		device node to which the property value is to be written.
+ * @propname:	name of the property to be written.
+ * @values:	pointer to array elements to write.
+ * @sz:		number of array elements to write.
+ *
+ * Search for a property in a device node and write 16-bit value(s) to
+ * it. If the property does not exist, it will be created and appended to
+ * the device node. Returns 0 on success, -ENOMEM if the property or array
+ * of elements cannot be created.
+ */
+int of_property_write_u16_array(struct device_node *np,
+				const char *propname, const u16 *values,
+				size_t sz)
+{
+	struct property *prop = of_find_property(np, propname, NULL);
+	__be16 *val;
+
+	if (!prop)
+		prop = of_new_property(np, propname, NULL, 0);
+	if (!prop)
+		return -ENOMEM;
+
+	free(prop->value);
+
+	prop->length = sizeof(*val) * sz;
+	prop->value = malloc(prop->length);
+	if (!prop->value)
+		return -ENOMEM;
+
+	val = prop->value;
+	while (sz--)
+		*val++ = cpu_to_be16(*values++);
+
+	return 0;
+}
+
+/**
  * of_property_write_u32_array - Write an array of u32 to a property. If
  * the property does not exist, it will be created and appended to the given
  * device node.
@@ -839,6 +952,49 @@ int of_property_write_u32_array(struct device_node *np,
 }
 
 /**
+ * of_property_write_u64_array - Write an array of u64 to a property. If
+ * the property does not exist, it will be created and appended to the given
+ * device node.
+ *
+ * @np:		device node to which the property value is to be written.
+ * @propname:	name of the property to be written.
+ * @values:	pointer to array elements to write.
+ * @sz:		number of array elements to write.
+ *
+ * Search for a property in a device node and write 64-bit value(s) to
+ * it. If the property does not exist, it will be created and appended to
+ * the device node. Returns 0 on success, -ENOMEM if the property or array
+ * of elements cannot be created.
+ */
+int of_property_write_u64_array(struct device_node *np,
+				const char *propname, const u64 *values,
+				size_t sz)
+{
+	struct property *prop = of_find_property(np, propname, NULL);
+	__be32 *val;
+
+	if (!prop)
+		prop = of_new_property(np, propname, NULL, 0);
+	if (!prop)
+		return -ENOMEM;
+
+	free(prop->value);
+
+	prop->length = 2 * sizeof(*val) * sz;
+	prop->value = malloc(prop->length);
+	if (!prop->value)
+		return -ENOMEM;
+
+	val = prop->value;
+	while (sz--) {
+		of_write_number(val, *values++, 2);
+		val += 2;
+	}
+
+	return 0;
+}
+
+/**
  * of_parse_phandle - Resolve a phandle property to a device_node pointer
  * @np: Pointer to device node holding phandle property
  * @phandle_name: Name of property holding a phandle value
diff --git a/include/of.h b/include/of.h
index 51ecf4d..53a135a 100644
--- a/include/of.h
+++ b/include/of.h
@@ -113,17 +113,6 @@ static inline void of_write_number(void *__cell, u64 val, int size)
 	}
 }
 
-int of_property_write_u32_array(struct device_node *np,
-				const char *propname, const u32 *values,
-				size_t sz);
-
-static inline int of_property_write_u32(struct device_node *np,
-					const char *propname,
-					u32 value)
-{
-	return of_property_write_u32_array(np, propname, &value, 1);
-}
-
 const void *of_get_property(const struct device_node *np, const char *name,
 			 int *lenp);
 
@@ -216,6 +205,21 @@ extern int of_property_match_string(struct device_node *np,
 extern int of_property_count_strings(struct device_node *np,
 				     const char *propname);
 
+extern int of_property_write_bool(struct device_node *np,
+				const char *propname, const bool value);
+extern int of_property_write_u8_array(struct device_node *np,
+				const char *propname, const u8 *values,
+				size_t sz);
+extern int of_property_write_u16_array(struct device_node *np,
+				const char *propname, const u16 *values,
+				size_t sz);
+extern int of_property_write_u32_array(struct device_node *np,
+				const char *propname, const u32 *values,
+				size_t sz);
+extern int of_property_write_u64_array(struct device_node *np,
+				const char *propname, const u64 *values,
+				size_t sz);
+
 extern struct device_node *of_parse_phandle(const struct device_node *np,
 					    const char *phandle_name,
 					    int index);
@@ -353,6 +357,36 @@ static inline int of_property_count_strings(struct device_node *np,
 	return -ENOSYS;
 }
 
+static inline int of_property_write_bool(struct device_node *np,
+				const char *propname, const bool value)
+{
+	return -ENOSYS;
+}
+
+static inline int of_property_write_u8_array(struct device_node *np,
+			const char *propname, const u8 *values, size_t sz)
+{
+	return -ENOSYS;
+}
+
+static inline int of_property_write_u16_array(struct device_node *np,
+			const char *propname, const u16 *values, size_t sz)
+{
+	return -ENOSYS;
+}
+
+static inline int of_property_write_u32_array(struct device_node *np,
+			const char *propname, const u32 *values, size_t sz)
+{
+	return -ENOSYS;
+}
+
+static inline int of_property_write_u64_array(struct device_node *np,
+			const char *propname, const u64 *values, size_t sz)
+{
+	return -ENOSYS;
+}
+
 static inline struct device_node *of_parse_phandle(const struct device_node *np,
 					    const char *phandle_name, int index)
 {
@@ -502,4 +536,30 @@ static inline int of_property_read_u32(const struct device_node *np,
 	return of_property_read_u32_array(np, propname, out_value, 1);
 }
 
+static inline int of_property_write_u8(struct device_node *np,
+				       const char *propname, u8 value)
+{
+	return of_property_write_u8_array(np, propname, &value, 1);
+}
+
+static inline int of_property_write_u16(struct device_node *np,
+					const char *propname, u16 value)
+{
+	return of_property_write_u16_array(np, propname, &value, 1);
+}
+
+static inline int of_property_write_u32(struct device_node *np,
+					const char *propname,
+					u32 value)
+{
+	return of_property_write_u32_array(np, propname, &value, 1);
+}
+
+static inline int of_property_write_u64(struct device_node *np,
+					const char *propname,
+					u64 value)
+{
+	return of_property_write_u64_array(np, propname, &value, 1);
+}
+
 #endif /* __OF_H */
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
