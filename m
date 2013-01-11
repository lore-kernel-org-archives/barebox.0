Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtebB-0000qd-6M
 for barebox@lists.infradead.org; Fri, 11 Jan 2013 13:24:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jan 2013 14:24:31 +0100
Message-Id: <1357910676-4231-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/16] of: unflatten: allow overlay dtbs
To: barebox@lists.infradead.org

This implements overlaying a currently loaded dtb with another dtb.
We used to return -EBUSY when a oftree is currently loaded. Instead
of doing this, check if a node already exists before creating a new
one. Similarly, if a property already exists, just overwrite the
value instead of creating a new property.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   33 ++++++++++++++++++++++-----------
 1 file changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 3307f41..527121d 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -845,13 +845,11 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 	const struct fdt_property *fdt_prop;
 	const char *pathp;
 	int depth = 10000;
-	struct device_node *node = NULL;
+	struct device_node *node = NULL, *n;
+	struct property *p;
 	char buf[1024];
 	int ret;
 
-	if (root_node)
-		return -EBUSY;
-
 	nodeoffset = fdt_path_offset(fdt, "/");
 	if (nodeoffset < 0) {
 		/*
@@ -875,12 +873,17 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 			if (ret)
 				return -EINVAL;
 
-			node = new_device_node(node);
-			if (!node->parent)
-				root_node = node;
-			node->full_name = xstrdup(buf);
-			node->name = xstrdup(pathp);
-			list_add_tail(&node->list, &allnodes);
+			n = of_find_node_by_path(buf);
+			if (n) {
+				node = n;
+			} else {
+				node = new_device_node(node);
+				if (!node->parent)
+					root_node = node;
+				node->full_name = xstrdup(buf);
+				node->name = xstrdup(pathp);
+				list_add_tail(&node->list, &allnodes);
+			}
 			break;
 		case FDT_END_NODE:
 			node = node->parent;
@@ -892,7 +895,15 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 					fdt32_to_cpu(fdt_prop->nameoff));
 			len      = fdt32_to_cpu(fdt_prop->len);
 			nodep    = fdt_prop->data;
-			new_property(node, pathp, nodep, len);
+
+			p = of_find_property(node, pathp);
+			if (p) {
+				free(p->value);
+				p->value = xzalloc(len);
+				memcpy(p->value, nodep, len);
+			} else {
+				new_property(node, pathp, nodep, len);
+			}
 			break;
 		case FDT_NOP:
 			break;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
