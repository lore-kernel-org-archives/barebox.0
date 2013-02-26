Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzN-0000cE-73
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:31 +0100
Message-Id: <1361909936-2665-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
References: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/29] of: Let of_find_node_by_path iterate over tree
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
index 704ba8e..1c33be1 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -490,17 +490,40 @@ EXPORT_SYMBOL(of_machine_is_compatible);
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
