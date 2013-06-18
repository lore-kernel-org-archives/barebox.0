Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22c.google.com ([2a00:1450:4008:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uozk3-0006p7-LA
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 17:30:54 +0000
Received: by mail-bk0-f44.google.com with SMTP id r7so1916169bkg.3
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2013 10:30:29 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 18 Jun 2013 19:29:50 +0200
Message-Id: <1371576607-8090-6-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 05/22] OF: base: convert strcmp to default string compare
 functions
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Barebox compares compatible, node names, and property names with strcmp.
Linux by default compares compatible and node names with strcasecmp. To
avoid inconsitencies between Barebox and Linux dts files, we convert to
these default string compare functions.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |   25 +++++++++++++------------
 include/of.h      |    5 +++++
 2 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index f3ed836..1c9ef58 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -104,14 +104,15 @@ static void of_bus_count_cells(struct device_node *dev,
 
 struct property *of_find_property(const struct device_node *node, const char *name)
 {
-	struct property *p;
+	struct property *pp;
 
 	if (!node)
 		return NULL;
 
-	list_for_each_entry(p, &node->properties, list)
-		if (!strcmp(p->name, name))
-			return p;
+	list_for_each_entry(pp, &node->properties, list)
+		if (of_prop_cmp(pp->name, name) == 0)
+			return pp;
+
 	return NULL;
 }
 EXPORT_SYMBOL(of_find_property);
@@ -160,9 +161,9 @@ void of_alias_scan(void)
 		int id, len;
 
 		/* Skip those we do not want to proceed */
-		if (!strcmp(pp->name, "name") ||
-		    !strcmp(pp->name, "phandle") ||
-		    !strcmp(pp->name, "linux,phandle"))
+		if (!of_prop_cmp(pp->name, "name") ||
+		    !of_prop_cmp(pp->name, "phandle") ||
+		    !of_prop_cmp(pp->name, "linux,phandle"))
 			continue;
 
 		np = of_find_node_by_path(root_node, pp->value);
@@ -203,7 +204,7 @@ int of_alias_get_id(struct device_node *np, const char *stem)
 	int id = -ENODEV;
 
 	list_for_each_entry(app, &aliases_lookup, link) {
-		if (strcmp(app->stem, stem) != 0)
+		if (of_node_cmp(app->stem, stem) != 0)
 			continue;
 
 		if (np == app->np) {
@@ -221,7 +222,7 @@ const char *of_alias_get(struct device_node *np)
 	struct property *pp;
 
 	list_for_each_entry(pp, &of_aliases->properties, list) {
-		if (!strcmp(np->full_name, pp->value))
+		if (!of_node_cmp(np->full_name, pp->value))
 			return pp->name;
 	}
 
@@ -301,7 +302,7 @@ int of_device_is_compatible(const struct device_node *device,
 	if (cp == NULL)
 		return 0;
 	while (cplen > 0) {
-		if (strcmp(cp, compat) == 0)
+		if (of_compat_cmp(cp, compat, strlen(compat)) == 0)
 			return 1;
 		l = strlen(cp) + 1;
 		cp += l;
@@ -958,7 +959,7 @@ int of_add_memory(struct device_node *node, bool dump)
 	if (ret)
 		return -ENXIO;
 
-	if (strcmp(device_type, "memory"))
+	if (of_node_cmp(device_type, "memory"))
 		return -ENXIO;
 
 	of_bus_count_cells(node, &na, &nc);
@@ -1177,7 +1178,7 @@ struct device_node *of_find_child_by_name(struct device_node *node, const char *
 	struct device_node *_n;
 
 	device_node_for_nach_child(node, _n)
-		if (!strcmp(_n->name, name))
+		if (!of_node_cmp(_n->name, name))
 			return _n;
 
 	return NULL;
diff --git a/include/of.h b/include/of.h
index 8a69793..a91a4c9 100644
--- a/include/of.h
+++ b/include/of.h
@@ -5,6 +5,11 @@
 #include <errno.h>
 #include <asm/byteorder.h>
 
+/* Default string compare functions */
+#define of_compat_cmp(s1, s2, l)	strcasecmp((s1), (s2))
+#define of_prop_cmp(s1, s2)		strcmp((s1), (s2))
+#define of_node_cmp(s1, s2)		strcasecmp((s1), (s2))
+
 #define OF_BAD_ADDR      ((u64)-1)
 
 typedef u32 phandle;
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
