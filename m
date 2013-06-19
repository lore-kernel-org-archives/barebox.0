Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22a.google.com ([2a00:1450:4008:c01::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEPL-0004zC-Pk
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:10:41 +0000
Received: by mail-bk0-f42.google.com with SMTP id jk13so2267397bkc.15
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 02:10:07 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 19 Jun 2013 11:09:49 +0200
Message-Id: <1371632991-1504-21-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 20/22] OF: base: remove of_find_child_by_name
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

With of_get_child_by_name from Linux API, we can now convert and remove
of_find_child_by_name.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/boards/at91sam9x5ek/hw_version.c |    2 +-
 drivers/of/base.c                         |   13 +------------
 drivers/of/fdt.c                          |    9 +++++----
 include/of.h                              |    2 --
 4 files changed, 7 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.c b/arch/arm/boards/at91sam9x5ek/hw_version.c
index 426bd35..1207a3e 100644
--- a/arch/arm/boards/at91sam9x5ek/hw_version.c
+++ b/arch/arm/boards/at91sam9x5ek/hw_version.c
@@ -236,7 +236,7 @@ static int cm_cogent_fixup(struct device_node *root)
 
 	for_each_compatible_node(node, NULL, "atmel,hsmci") {
 		struct device_node *slotnode =
-			of_find_child_by_name(node, "slot");
+			of_get_child_by_name(node, "slot");
 		if (!slotnode)
 			continue;
 
diff --git a/drivers/of/base.c b/drivers/of/base.c
index c8497f4..1b351ee 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1905,17 +1905,6 @@ int of_probe(void)
 	return 0;
 }
 
-struct device_node *of_find_child_by_name(struct device_node *node, const char *name)
-{
-	struct device_node *_n;
-
-	device_node_for_nach_child(node, _n)
-		if (!of_node_cmp(_n->name, name))
-			return _n;
-
-	return NULL;
-}
-
 /**
  * of_create_node - create a new node including its parents
  * @path - the nodepath to create
@@ -1940,7 +1929,7 @@ struct device_node *of_create_node(struct device_node *root, const char *path)
 		if (slash)
 			*slash = 0;
 
-		tmp = of_find_child_by_name(dn, p);
+		tmp = of_get_child_by_name(dn, p);
 		if (tmp)
 			dn = tmp;
 		else
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index a76396e..afaa4e0 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -61,7 +61,7 @@ struct device_node *of_unflatten_dtb(struct device_node *root, void *infdt)
 	int  len;		/* length of the property */
 	const struct fdt_property *fdt_prop;
 	const char *pathp, *name;
-	struct device_node *node = NULL, *n;
+	struct device_node *node = NULL;
 	struct property *p;
 	uint32_t dt_struct;
 	struct fdt_node_header *fnh;
@@ -135,9 +135,10 @@ struct device_node *of_unflatten_dtb(struct device_node *root, void *infdt)
 			if (!node) {
 				node = root;
 			} else {
-				if (merge && (n = of_find_child_by_name(node, pathp)))
-					node = n;
-				else
+				if (merge)
+					node = of_get_child_by_name(node,
+								    pathp);
+				if (!merge || !node)
 					node = of_new_node(node, pathp);
 			}
 
diff --git a/include/of.h b/include/of.h
index 2ef00be..c3bcabe 100644
--- a/include/of.h
+++ b/include/of.h
@@ -74,8 +74,6 @@ int of_add_initrd(struct device_node *root, resource_size_t start,
 int of_n_addr_cells(struct device_node *np);
 int of_n_size_cells(struct device_node *np);
 
-struct device_node *of_find_child_by_name(struct device_node *node, const char *name);
-
 struct fdt_header *fdt_get_tree(void);
 
 struct fdt_header *of_get_fixed_tree(struct device_node *node);
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
