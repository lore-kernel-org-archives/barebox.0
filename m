Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRjZb-0004xx-MA
 for barebox@lists.infradead.org; Sun, 11 Oct 2020 22:12:13 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Oct 2020 00:11:51 +0200
Message-Id: <20201011221200.9023-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201011221200.9023-1-a.fatoum@pengutronix.de>
References: <20201011221200.9023-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 02/11] of: implement of_property_read_u64_array
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For reading reg with #address-cells and #size-cells of 2,
an of_property_read_u64_array can be quite convenient.
Add one.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 37 +++++++++++++++++++++++++++++++++++++
 include/of.h      | 42 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 79 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index f5aad268b2d0..5b45c2023f3b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -893,6 +893,43 @@ int of_property_read_u64(const struct device_node *np, const char *propname,
 }
 EXPORT_SYMBOL_GPL(of_property_read_u64);
 
+/**
+ * of_property_read_u64_array - Find and read an array of 64 bit integers
+ * from a property.
+ *
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @out_value:	pointer to return value, modified only if return value is 0.
+ * @sz:		number of array elements to read
+ *
+ * Search for a property in a device node and read 64-bit value(s) from
+ * it. Returns 0 on success, -EINVAL if the property does not exist,
+ * -ENODATA if property does not have a value, and -EOVERFLOW if the
+ * property data isn't large enough.
+ *
+ * The out_value is modified only if a valid u64 value can be decoded.
+ */
+int of_property_read_variable_u64_array(const struct device_node *np,
+			       const char *propname, u64 *out_values,
+			       size_t sz)
+{
+	size_t count;
+	const __be32 *val = of_find_property_value_of_size(np, propname,
+						(sz * sizeof(*out_values)));
+
+	if (IS_ERR(val))
+		return PTR_ERR(val);
+
+	count = sz;
+	while (count--) {
+		*out_values++ = of_read_number(val, 2);
+		val += 2;
+	}
+
+	return sz;
+}
+EXPORT_SYMBOL_GPL(of_property_read_variable_u64_array);
+
 /**
  * of_property_read_string - Find and read a string from a property
  * @np:		device node from which the property value is to be read.
diff --git a/include/of.h b/include/of.h
index d5947fbaab56..d87eeff738e8 100644
--- a/include/of.h
+++ b/include/of.h
@@ -201,6 +201,11 @@ extern int of_property_read_u32_array(const struct device_node *np,
 extern int of_property_read_u64(const struct device_node *np,
 				const char *propname, u64 *out_value);
 
+extern int of_property_read_variable_u64_array(const struct device_node *np,
+					const char *propname,
+					u64 *out_values,
+					size_t sz);
+
 extern int of_property_read_string(struct device_node *np,
 				   const char *propname,
 				   const char **out_string);
@@ -469,6 +474,15 @@ static inline int of_property_read_u64(const struct device_node *np,
 	return -ENOSYS;
 }
 
+static inline int of_property_read_variable_u64_array(const struct device_node *np,
+					const char *propname,
+					u64 *out_values,
+					size_t sz_min,
+					size_t sz_max)
+{
+	return -ENOSYS;
+}
+
 static inline int of_property_read_string(struct device_node *np,
 				const char *propname, const char **out_string)
 {
@@ -881,6 +895,34 @@ static inline int of_property_read_u32(const struct device_node *np,
 	return of_property_read_u32_array(np, propname, out_value, 1);
 }
 
+/**
+ * of_property_read_u64_array - Find and read an array of 64 bit integers
+ * from a property.
+ *
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @out_values:	pointer to return value, modified only if return value is 0.
+ * @sz:		number of array elements to read
+ *
+ * Search for a property in a device node and read 64-bit value(s) from
+ * it. Returns 0 on success, -EINVAL if the property does not exist,
+ * -ENODATA if property does not have a value, and -EOVERFLOW if the
+ * property data isn't large enough.
+ *
+ * The out_values is modified only if a valid u64 value can be decoded.
+ */
+static inline int of_property_read_u64_array(const struct device_node *np,
+					     const char *propname,
+					     u64 *out_values, size_t sz)
+{
+	int ret = of_property_read_variable_u64_array(np, propname, out_values,
+						      sz);
+	if (ret >= 0)
+		return 0;
+	else
+		return ret;
+}
+
 /*
  * struct property *prop;
  * const __be32 *p;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
