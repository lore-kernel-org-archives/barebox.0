Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeQrK-0001R8-S9
 for barebox@lists.infradead.org; Mon, 20 May 2013 14:14:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 May 2013 16:14:20 +0200
Message-Id: <1369059260-28872-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369059260-28872-1-git-send-email-s.hauer@pengutronix.de>
References: <1369059260-28872-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] of: populate devices based on "simple-bus" property
To: barebox@lists.infradead.org

We used to populate the devices from the devicetree based on the
presence of the 'reg' property. This is incorrect since this only
allows us to probe devices with resources.
Instead use the 'simple-bus' property to see if we have iterate
deeper. This also registers devices with their buses as parents.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 47 +++++++++++++++++++++++++++++++++--------------
 1 file changed, 33 insertions(+), 14 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 85d9dc0..3b9cc65 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -825,13 +825,16 @@ static struct device_d *add_of_amba_device(struct device_node *node)
 	return &dev->dev;
 }
 
-static struct device_d *add_of_platform_device(struct device_node *node)
+static struct device_d *add_of_platform_device(struct device_node *node,
+		struct device_d *parent)
 {
 	struct device_d *dev;
 	char *name, *at;
 
 	dev = xzalloc(sizeof(*dev));
 
+	dev->parent = parent;
+
 	name = xstrdup(node->name);
 	at = strchr(name, '@');
 	if (at) {
@@ -856,7 +859,8 @@ static struct device_d *add_of_platform_device(struct device_node *node)
 	return dev;
 }
 
-static struct device_d *add_of_device(struct device_node *node)
+static struct device_d *add_of_device(struct device_node *node,
+		struct device_d *parent)
 {
 	const struct property *cp;
 
@@ -871,7 +875,7 @@ static struct device_d *add_of_device(struct device_node *node)
 	    of_device_is_compatible(node, "arm,primecell") == 1)
 		return add_of_amba_device(node);
 	else
-		return add_of_platform_device(node);
+		return add_of_platform_device(node, parent);
 }
 EXPORT_SYMBOL(add_of_device);
 
@@ -928,7 +932,8 @@ int of_add_memory(struct device_node *node, bool dump)
 	return 0;
 }
 
-static int add_of_device_resource(struct device_node *node)
+static struct device_d *add_of_device_resource(struct device_node *node,
+		struct device_d *parent)
 {
 	u64 address = 0, size;
 	struct resource *res, *resp;
@@ -940,7 +945,7 @@ static int add_of_device_resource(struct device_node *node)
 
 	reg = of_get_property(node, "reg", &len);
 	if (!reg)
-		return -EINVAL;
+		return add_of_device(node, parent);
 
 	of_bus_count_cells(node, &na, &nc);
 
@@ -995,14 +1000,12 @@ static int add_of_device_resource(struct device_node *node)
 	node->resource = res;
 	node->num_resource = n_resources;
 
-	add_of_device(node);
-
-	return 0;
+	return add_of_device(node, parent);
 
 err_free:
 	free(res);
 
-	return ret;
+	return NULL;
 }
 
 void of_free(struct device_node *node)
@@ -1042,17 +1045,23 @@ void of_free(struct device_node *node)
 		of_set_root_node(NULL);
 }
 
-static void __of_probe(struct device_node *node)
+static void __of_probe(struct device_node *node,
+		const struct of_device_id *matches,
+		struct device_d *parent)
 {
 	struct device_node *n;
+	struct device_d *dev;
 
 	if (node->device)
 		return;
 
-	add_of_device_resource(node);
+	dev = add_of_device_resource(node, parent);
+
+	if (!of_match_node(matches, node))
+		return;
 
 	list_for_each_entry(n, &node->children, parent_list)
-		__of_probe(n);
+		__of_probe(n, matches, dev);
 }
 
 static void __of_parse_phandles(struct device_node *node)
@@ -1079,9 +1088,17 @@ const char *of_get_model(void)
 	return of_model;
 }
 
+const struct of_device_id of_default_bus_match_table[] = {
+	{
+		.compatible = "simple-bus",
+	}, {
+		/* sentinel */
+	}
+};
+
 int of_probe(void)
 {
-	struct device_node *memory;
+	struct device_node *memory, *n;
 
 	if(!root_node)
 		return -ENODEV;
@@ -1090,12 +1107,14 @@ int of_probe(void)
 	of_property_read_string(root_node, "model", &of_model);
 
 	__of_parse_phandles(root_node);
-	__of_probe(root_node);
 
 	memory = of_find_node_by_path(root_node, "/memory");
 	if (memory)
 		of_add_memory(memory, false);
 
+	list_for_each_entry(n, &root_node->children, parent_list)
+		__of_probe(n, of_default_bus_match_table, NULL);
+
 	return 0;
 }
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
