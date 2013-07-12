Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UxgGV-000422-Gb
 for barebox@lists.infradead.org; Fri, 12 Jul 2013 16:32:16 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Fri, 12 Jul 2013 18:32:05 +0200
Message-Id: <1373646725-7258-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] OF: base: call of_parse_phandles() from of_unflatten_dtb()
To: barebox@lists.infradead.org

This allows using node->phandle before a call to of_probe().

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/of/base.c |    6 ++----
 drivers/of/fdt.c  |    1 +
 include/of.h      |    1 +
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 7bee912..075eed9 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1562,7 +1562,7 @@ int of_add_memory(struct device_node *node, bool dump)
 	return 0;
 }
 
-static void __of_parse_phandles(struct device_node *node)
+void of_parse_phandles(struct device_node *node)
 {
 	struct device_node *n;
 	phandle phandle;
@@ -1575,7 +1575,7 @@ static void __of_parse_phandles(struct device_node *node)
 	}
 
 	list_for_each_entry(n, &node->children, parent_list)
-		__of_parse_phandles(n);
+		of_parse_phandles(n);
 }
 
 struct device_node *of_chosen;
@@ -1604,8 +1604,6 @@ int of_probe(void)
 	of_chosen = of_find_node_by_path("/chosen");
 	of_property_read_string(root_node, "model", &of_model);
 
-	__of_parse_phandles(root_node);
-
 	memory = of_find_node_by_path("/memory");
 	if (memory)
 		of_add_memory(memory, false);
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 76d6bb1..1cccd3d 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -202,6 +202,7 @@ struct device_node *of_unflatten_dtb(struct device_node *root, void *infdt)
 			break;
 
 		case FDT_END:
+			of_parse_phandles(root);
 			return root;
 
 		default:
diff --git a/include/of.h b/include/of.h
index ebe8e39..9055625 100644
--- a/include/of.h
+++ b/include/of.h
@@ -199,6 +199,7 @@ extern int of_property_write_u64_array(struct device_node *np,
 				const char *propname, const u64 *values,
 				size_t sz);
 
+extern void of_parse_phandles(struct device_node *node);
 extern struct device_node *of_parse_phandle(const struct device_node *np,
 					    const char *phandle_name,
 					    int index);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
