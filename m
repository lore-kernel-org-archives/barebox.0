Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ef9eO-0007sr-AW
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 19:27:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Jan 2018 20:26:43 +0100
Message-Id: <20180126192644.5434-2-s.hauer@pengutronix.de>
In-Reply-To: <20180126192644.5434-1-s.hauer@pengutronix.de>
References: <20180126192644.5434-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] of: Add function to find the same node in another tree
To: Barebox List <barebox@lists.infradead.org>

For our device tree fixups we have to find a node corresponding to
another node in another device tree. We used to use the full name
to match the nodes, but this falls apart when nodes get renamed
or for example a new bus hierarchy is introduced. To make this
more robust we create reproducible names from device nodes which
mostly depend on the address in MMIO space, the reg property and
as a last resort the name of the device node.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 63 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h      |  5 ++++-
 2 files changed, 67 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 6a582177bf..c2c7afff9b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2173,6 +2173,69 @@ int of_device_disable_path(const char *path)
 	return of_device_disable(node);
 }
 
+/**
+ * of_get_reproducible_name() - get a reproducible name of a node
+ * @node: The node to get a name from
+ *
+ * This function constructs a reproducible name for a node. This name can be
+ * used to find the same node in another device tree. The name is constructed
+ * from different patterns which are appended to each other.
+ * - If a node has no "reg" property, the name of the node is used in angle
+ *   brackets, prepended with the result of the parent node
+ * - If the parent node has a "ranges" property then the address in MMIO space
+ *   is used in square brackets
+ * - If a node has a "reg" property, but is not translatable in MMIO space then
+ *   the start address is used in curly brackets, prepended with the result of
+ *   the parent node.
+ *
+ * Returns a dynamically allocated string containing the name
+ */
+char *of_get_reproducible_name(struct device_node *node)
+{
+	const __be32 *reg;
+	u64 addr;
+	u64 offset;
+	int na;
+	char *str, *res;
+
+	if (!node)
+		return 0;
+
+	reg = of_get_property(node, "reg", NULL);
+        if (!reg) {
+		str = of_get_reproducible_name(node->parent);
+		res = basprintf("%s<%s>", str, node->name);
+		free(str);
+		return res;
+	}
+
+	if (node->parent && of_get_property(node->parent, "ranges", NULL)) {
+		addr = of_translate_address(node, reg);
+		return basprintf("[0x%llx]", addr);
+	}
+
+	na = of_n_addr_cells(node);
+
+	offset = of_read_number(reg, na);
+
+	str = of_get_reproducible_name(node->parent);
+	res = basprintf("%s{%llx}", str, offset);
+	free(str);
+
+	return res;
+}
+
+struct device_node *of_find_node_by_reproducible_name(struct device_node *from,
+						      const char *name)
+{
+	struct device_node *np;
+
+	of_tree_for_each_node_from(np, from)
+		if (!of_node_cmp(of_get_reproducible_name(np), name))
+			return np;
+	return NULL;
+}
+
 /**
  * of_graph_parse_endpoint() - parse common endpoint node properties
  * @node: pointer to endpoint device_node
diff --git a/include/of.h b/include/of.h
index 1b9719d603..4564f48514 100644
--- a/include/of.h
+++ b/include/of.h
@@ -164,7 +164,10 @@ extern int of_get_child_count(const struct device_node *parent);
 extern int of_get_available_child_count(const struct device_node *parent);
 extern struct device_node *of_get_child_by_name(const struct device_node *node,
 					const char *name);
-
+extern char *of_get_reproducible_name(struct device_node *node);
+extern struct device_node *of_find_node_by_reproducible_name(struct device_node
+							     *from,
+							     const char *name);
 extern int of_property_read_u32_index(const struct device_node *np,
 				       const char *propname,
 				       u32 index, u32 *out_value);
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
