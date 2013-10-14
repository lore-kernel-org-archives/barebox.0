Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VVkxN-0004Kt-2V
 for barebox@lists.infradead.org; Mon, 14 Oct 2013 16:25:21 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 14 Oct 2013 18:24:52 +0200
Message-Id: <1381767893-13740-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 1/2] of: simplify phandle lookup
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Instead of populating an extra list containing all phandles just iterate
over the whole tree. This is done as preparation for more dynamic devicetrees
where parts are loaded at runtime. Here we don't want to keep the list of
phandles in sync.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 11 +++--------
 include/of.h      |  1 -
 2 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 116dd0c..ba929bc 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -67,8 +67,6 @@ struct alias_prop {
 
 static LIST_HEAD(aliases_lookup);
 
-static LIST_HEAD(phandle_list);
-
 struct device_node *root_node;
 
 struct device_node *of_aliases;
@@ -274,9 +272,10 @@ struct device_node *of_find_node_by_phandle(phandle phandle)
 {
 	struct device_node *node;
 
-	list_for_each_entry(node, &phandle_list, phandles)
+	of_tree_for_each_node_from(node, root_node)
 		if (node->phandle == phandle)
 			return node;
+
 	return NULL;
 }
 EXPORT_SYMBOL(of_find_node_by_phandle);
@@ -1719,7 +1718,7 @@ const struct of_device_id of_default_bus_match_table[] = {
 
 int of_probe(void)
 {
-	struct device_node *memory, *node;
+	struct device_node *memory;
 
 	if(!root_node)
 		return -ENODEV;
@@ -1730,10 +1729,6 @@ int of_probe(void)
 	if (of_model)
 		barebox_set_model(of_model);
 
-	of_tree_for_each_node_from(node, root_node)
-		if (node->phandle)
-			list_add_tail(&node->phandles, &phandle_list);
-
 	memory = of_find_node_by_path("/memory");
 	if (memory)
 		of_add_memory(memory, false);
diff --git a/include/of.h b/include/of.h
index e5cd750..3381e69 100644
--- a/include/of.h
+++ b/include/of.h
@@ -30,7 +30,6 @@ struct device_node {
 	struct list_head children;
 	struct list_head parent_list;
 	struct list_head list;
-	struct list_head phandles;
 	phandle phandle;
 };
 
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
