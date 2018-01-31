Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egqCD-0002Rh-4K
 for barebox@lists.infradead.org; Wed, 31 Jan 2018 11:04:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 31 Jan 2018 12:04:38 +0100
Message-Id: <20180131110438.22620-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] of: fdt: add of_unflatten_dtb_const
To: Barebox List <barebox@lists.infradead.org>

This adds a variant of of_unflatten_dtb() which uses the property data
directly from the input tree rather than copying it. This is mainly
useful for a single user: FIT images.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/fdt.c | 36 ++++++++++++++++++++++++++++++++++--
 include/of.h     |  1 +
 2 files changed, 35 insertions(+), 2 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 614e136de6..1edb35f3d6 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -117,7 +117,7 @@ static int of_unflatten_reservemap(struct device_node *root,
  * Parse a flat device tree binary blob and return a pointer to the
  * unflattened tree.
  */
-struct device_node *of_unflatten_dtb(const void *infdt)
+struct device_node *__of_unflatten_dtb(const void *infdt, bool constprops)
 {
 	const void *nodep;	/* property node pointer */
 	uint32_t tag;		/* tag */
@@ -221,7 +221,11 @@ struct device_node *of_unflatten_dtb(const void *infdt)
 				goto err;
 			}
 
-			p = of_new_property(node, name, nodep, len);
+			if (constprops)
+				p = of_new_property_const(node, name, nodep, len);
+			else
+				p = of_new_property(node, name, nodep, len);
+
 			if (!strcmp(name, "phandle") && len == 4)
 				node->phandle = be32_to_cpup(p->value);
 
@@ -255,6 +259,34 @@ err:
 	return ERR_PTR(ret);
 }
 
+/**
+ * of_unflatten_dtb - unflatten a dtb binary blob
+ * @infdt - the fdt blob to unflatten
+ *
+ * Parse a flat device tree binary blob and return a pointer to the unflattened
+ * tree. The tree must be freed after use with of_delete_node().
+ */
+struct device_node *of_unflatten_dtb(const void *infdt)
+{
+	return __of_unflatten_dtb(infdt, false);
+}
+
+/**
+ * of_unflatten_dtb_const - unflatten a dtb binary blob
+ * @infdt - the fdt blob to unflatten
+ *
+ * Parse a flat device tree binary blob and return a pointer to the unflattened
+ * tree. The tree must be freed after use with of_delete_node(). Unlike the
+ * above version this function uses the property data directly from the input
+ * flattened tree instead of copying the data, thus @infdt must be valid for the
+ * whole lifetime of the returned tree. This is normally not what you want, so
+ * use of_unflatten_dtb() instead.
+ */
+struct device_node *of_unflatten_dtb_const(const void *infdt)
+{
+	return __of_unflatten_dtb(infdt, true);
+}
+
 struct fdt {
 	void *dt;
 	uint32_t dt_nextofs;
diff --git a/include/of.h b/include/of.h
index d3b92328a5..421e038adb 100644
--- a/include/of.h
+++ b/include/of.h
@@ -101,6 +101,7 @@ void of_print_nodes(struct device_node *node, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
 struct device_node *of_unflatten_dtb(const void *fdt);
+struct device_node *of_unflatten_dtb_const(const void *infdt);
 
 struct cdev;
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
