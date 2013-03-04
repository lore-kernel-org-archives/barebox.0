Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5Y-0006Vs-Vk
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:07 +0100
Message-Id: <1362390820-10333-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/37] of: Let of_find_node_by_path iterate over tree
To: barebox@lists.infradead.org

of_find_node_by_path iterates over the allnodes list. Depending on
where the node we look for is, this can be significantly slower than
using the tree structure to look for a node, so iterate over the tree
instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   37 ++++++++++++++++++++++++++++++-------
 1 file changed, 30 insertions(+), 7 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 01d4e4f..37d3128 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -491,17 +491,40 @@ EXPORT_SYMBOL(of_machine_is_compatible);
  */
 struct device_node *of_find_node_by_path(const char *path)
 {
-	struct device_node *np;
+	char *slash, *p, *freep;
+	struct device_node *dn = root_node;
+
+	if (!root_node)
+		return NULL;
+
+	if (*path != '/')
+		return NULL;
+
+	path++;
 
-	if (!strcmp(path, "/"))
-		return root_node;
+	freep = p = xstrdup(path);
 
-	list_for_each_entry(np, &allnodes, list) {
-		if (np->full_name && (strcmp(np->full_name, path) == 0))
-			return np;
+	while (1) {
+		if (!*p)
+			goto out;
+
+		slash = strchr(p, '/');
+		if (slash)
+			*slash = 0;
+
+		dn = of_find_child_by_name(dn, p);
+		if (!dn)
+			goto out;
+
+		if (!slash)
+			goto out;
+
+		p = slash + 1;
 	}
+out:
+	free(freep);
 
-	return NULL;
+	return dn;
 }
 EXPORT_SYMBOL(of_find_node_by_path);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
