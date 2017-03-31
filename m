Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpC4-0005GW-57
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 05:33:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 07:33:10 +0200
Message-Id: <20170331053323.17821-2-s.hauer@pengutronix.de>
In-Reply-To: <20170331053323.17821-1-s.hauer@pengutronix.de>
References: <20170331053323.17821-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/14] of: Add of_property_write_string()
To: Barebox List <barebox@lists.infradead.org>

Setting a property to a string is used many times. Create a convenience
function for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 22 ++++++++++++++++++++++
 include/of.h      |  8 ++++++++
 2 files changed, 30 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index bef8f1de1a..01ab38907d 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1217,6 +1217,28 @@ int of_property_write_u64_array(struct device_node *np,
 }
 
 /**
+ * of_property_write_string - Write a string to a property. If
+ * the property does not exist, it will be created and appended to the given
+ * device node.
+ *
+ * @np:		device node to which the property value is to be written.
+ * @propname:	name of the property to be written.
+ * value:	pointer to the string to write
+ *
+ * Search for a property in a device node and write a string to
+ * it. If the property does not exist, it will be created and appended to
+ * the device node. Returns 0 on success, -ENOMEM if the property or array
+ * of elements cannot be created.
+ */
+int of_property_write_string(struct device_node *np,
+			     const char *propname, const char *value)
+{
+	size_t len = strlen(value);
+
+	return of_set_property(np, propname, value, len + 1, 1);
+}
+
+/**
  * of_parse_phandle_from - Resolve a phandle property to a device_node pointer from
  * a given root node
  * @np: Pointer to device node holding phandle property
diff --git a/include/of.h b/include/of.h
index e3bb452b86..6bff13388d 100644
--- a/include/of.h
+++ b/include/of.h
@@ -205,6 +205,8 @@ extern int of_property_write_u32_array(struct device_node *np,
 extern int of_property_write_u64_array(struct device_node *np,
 				const char *propname, const u64 *values,
 				size_t sz);
+extern int of_property_write_string(struct device_node *np, const char *propname,
+				    const char *value);
 
 extern struct device_node *of_parse_phandle(const struct device_node *np,
 					    const char *phandle_name,
@@ -466,6 +468,12 @@ static inline int of_property_write_u64_array(struct device_node *np,
 	return -ENOSYS;
 }
 
+static inline int of_property_write_string(struct device_node *np, const char *propname,
+				    const char *value)
+{
+	return -ENOSYS;
+}
+
 static inline struct device_node *of_parse_phandle(const struct device_node *np,
 					    const char *phandle_name, int index)
 {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
