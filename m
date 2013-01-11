Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtebB-0000qg-6S
 for barebox@lists.infradead.org; Fri, 11 Jan 2013 13:24:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jan 2013 14:24:34 +0100
Message-Id: <1357910676-4231-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1357910676-4231-1-git-send-email-s.hauer@pengutronix.de>
References: <1357910676-4231-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 14/16] of: rename new_device_node to of_new_node and export it
To: barebox@lists.infradead.org

of_new_node now takes the parent node and the name as argument and
creates a new node. This simplifies the caller and also makes the
function useful for others, so export it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   24 +++++++++++++++++-------
 include/of.h      |    1 +
 2 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 5910b40..c9e93f6 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -585,18 +585,33 @@ void of_print_nodes(struct device_node *node, int indent)
 	printf("};\n");
 }
 
-static struct device_node *new_device_node(struct device_node *parent)
+struct device_node *of_new_node(struct device_node *parent, const char *name)
 {
 	struct device_node *node;
 
+	if (!parent && root_node)
+		return NULL;
+
 	node = xzalloc(sizeof(*node));
 	node->parent = parent;
 	if (parent)
 		list_add_tail(&node->parent_list, &parent->children);
+	else
+		root_node = node;
 
 	INIT_LIST_HEAD(&node->children);
 	INIT_LIST_HEAD(&node->properties);
 
+	if (parent) {
+		node->name = xstrdup(name);
+		node->full_name = asprintf("%s/%s", node->parent->full_name, name);
+	} else {
+		node->name = xstrdup("");
+		node->full_name = xstrdup("");
+	}
+
+	list_add_tail(&node->list, &allnodes);
+
 	return node;
 }
 
@@ -886,12 +901,7 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 			if (n) {
 				node = n;
 			} else {
-				node = new_device_node(node);
-				if (!node->parent)
-					root_node = node;
-				node->full_name = xstrdup(buf);
-				node->name = xstrdup(pathp);
-				list_add_tail(&node->list, &allnodes);
+				node = of_new_node(node, pathp);
 			}
 			break;
 		case FDT_END_NODE:
diff --git a/include/of.h b/include/of.h
index e53f94c..ea23d85 100644
--- a/include/of.h
+++ b/include/of.h
@@ -108,6 +108,7 @@ int of_parse_dtb(struct fdt_header *fdt);
 void of_free(struct device_node *node);
 int of_unflatten_dtb(struct fdt_header *fdt);
 void *of_flatten_dtb(void);
+struct device_node *of_new_node(struct device_node *parent, const char *name);
 struct property *of_new_property(struct device_node *node, const char *name,
 		const void *data, int len);
 void of_delete_property(struct property *pp);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
