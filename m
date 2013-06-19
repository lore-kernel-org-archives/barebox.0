Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x236.google.com ([2a00:1450:4008:c01::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEPa-0008L3-Ga
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:10:44 +0000
Received: by mail-bk0-f54.google.com with SMTP id it16so2228504bkc.27
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 02:10:09 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 19 Jun 2013 11:09:47 +0200
Message-Id: <1371632991-1504-19-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 18/22] OF: base: import property iterators from Linux OF API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This imports of_prop_next_u32, of_prop_next_string, and the corresponding
for_property_for_each_ helpers from Linux OF API.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |   41 +++++++++++++++++++++++++++++++++++++++++
 include/of.h      |   43 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 84 insertions(+), 0 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index bf73acb..3e7a488 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -797,6 +797,47 @@ int of_property_count_strings(struct device_node *np, const char *propname)
 }
 EXPORT_SYMBOL_GPL(of_property_count_strings);
 
+const __be32 *of_prop_next_u32(struct property *prop, const __be32 *cur,
+			u32 *pu)
+{
+	const void *curv = cur;
+
+	if (!prop)
+		return NULL;
+
+	if (!cur) {
+		curv = prop->value;
+		goto out_val;
+	}
+
+	curv += sizeof(*cur);
+	if (curv >= prop->value + prop->length)
+		return NULL;
+
+out_val:
+	*pu = be32_to_cpup(curv);
+	return curv;
+}
+EXPORT_SYMBOL_GPL(of_prop_next_u32);
+
+const char *of_prop_next_string(struct property *prop, const char *cur)
+{
+	const void *curv = cur;
+
+	if (!prop)
+		return NULL;
+
+	if (!cur)
+		return prop->value;
+
+	curv += strlen(cur) + 1;
+	if (curv >= prop->value + prop->length)
+		return NULL;
+
+	return curv;
+}
+EXPORT_SYMBOL_GPL(of_prop_next_string);
+
 /**
  * of_property_write_bool - Create/Delete empty (bool) property.
  *
diff --git a/include/of.h b/include/of.h
index 6abd906..30b5be5 100644
--- a/include/of.h
+++ b/include/of.h
@@ -207,6 +207,10 @@ extern int of_property_match_string(struct device_node *np,
 extern int of_property_count_strings(struct device_node *np,
 				     const char *propname);
 
+extern const __be32 *of_prop_next_u32(struct property *prop,
+				const __be32 *cur, u32 *pu);
+extern const char *of_prop_next_string(struct property *prop, const char *cur);
+
 extern int of_property_write_bool(struct device_node *np,
 				const char *propname, const bool value);
 extern int of_property_write_u8_array(struct device_node *np,
@@ -363,6 +367,18 @@ static inline int of_property_count_strings(struct device_node *np,
 	return -ENOSYS;
 }
 
+static inline const __be32 *of_prop_next_u32(struct property *prop,
+					const __be32 *cur, u32 *pu)
+{
+	return 0;
+}
+
+static inline const char *of_prop_next_string(struct property *prop,
+					const char *cur)
+{
+	return NULL;
+}
+
 static inline int of_property_write_bool(struct device_node *np,
 				const char *propname, const bool value)
 {
@@ -536,6 +552,33 @@ static inline int of_property_read_u32(const struct device_node *np,
 	return of_property_read_u32_array(np, propname, out_value, 1);
 }
 
+/*
+ * struct property *prop;
+ * const __be32 *p;
+ * u32 u;
+ *
+ * of_property_for_each_u32(np, "propname", prop, p, u)
+ *         printk("U32 value: %x\n", u);
+ */
+#define of_property_for_each_u32(np, propname, prop, p, u)	\
+	for (prop = of_find_property(np, propname, NULL),	\
+		p = of_prop_next_u32(prop, NULL, &u);		\
+		p;						\
+		p = of_prop_next_u32(prop, p, &u))
+
+/*
+ * struct property *prop;
+ * const char *s;
+ *
+ * of_property_for_each_string(np, "propname", prop, s)
+ *         printk("String value: %s\n", s);
+ */
+#define of_property_for_each_string(np, propname, prop, s)	\
+	for (prop = of_find_property(np, propname, NULL),	\
+		s = of_prop_next_string(prop, NULL);		\
+		s;						\
+		s = of_prop_next_string(prop, s))
+
 static inline int of_property_write_u8(struct device_node *np,
 				       const char *propname, u8 value)
 {
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
