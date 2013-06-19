Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x235.google.com ([2a00:1450:4008:c01::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEPK-0004zB-Pp
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:10:40 +0000
Received: by mail-bk0-f53.google.com with SMTP id e11so2220655bkh.12
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 02:10:06 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 19 Jun 2013 11:09:41 +0200
Message-Id: <1371632991-1504-13-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 12/22] OF: base: import of_find_node_with_property from
 Linux OF API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This imports of_find_node_with_property and corresponding helpers
from Linux OF API.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |   26 ++++++++++++++++++++++++++
 include/of.h      |   11 +++++++++++
 2 files changed, 37 insertions(+), 0 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 38d6789..39eddb2 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -368,6 +368,32 @@ struct device_node *of_find_compatible_node(struct device_node *from,
 EXPORT_SYMBOL(of_find_compatible_node);
 
 /**
+ *	of_find_node_with_property - Find a node which has a property with
+ *                                   the given name.
+ *	@from:		The node to start searching from or NULL, the node
+ *			you pass will not be searched, only the next one
+ *			will; typically, you pass what the previous call
+ *			returned.
+ *	@prop_name:	The name of the property to look for.
+ *
+ *	Returns a pointer to the node found or NULL.
+ */
+struct device_node *of_find_node_with_property(struct device_node *from,
+	const char *prop_name)
+{
+	struct device_node *np;
+
+	of_tree_for_each_node(np, from) {
+		struct property *pp = of_find_property(np, prop_name, NULL);
+		if (pp)
+			return np;
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL(of_find_node_with_property);
+
+/**
  * of_match_node - Tell if an device_node has a matching of_match structure
  *      @matches:       array of of device match structures to search in
  *      @node:          the of device structure to match against
diff --git a/include/of.h b/include/of.h
index a33ccfa..f508435 100644
--- a/include/of.h
+++ b/include/of.h
@@ -193,6 +193,8 @@ extern struct device_node *of_find_matching_node_and_match(
 	struct device_node *from,
 	const struct of_device_id *matches,
 	const struct of_device_id **match);
+extern struct device_node *of_find_node_with_property(
+	struct device_node *from, const char *prop_name);
 extern int of_device_is_available(const struct device_node *device);
 
 extern void of_alias_scan(void);
@@ -279,6 +281,12 @@ static inline struct device_node *of_find_matching_node_and_match(
 	return NULL;
 }
 
+static inline struct device_node *of_find_node_with_property(
+			struct device_node *from, const char *prop_name)
+{
+	return NULL;
+}
+
 static inline int of_device_is_available(const struct device_node *device)
 {
 	return 0;
@@ -317,5 +325,8 @@ static inline struct device_node *of_find_matching_node(
 #define for_each_matching_node_and_match(dn, matches, match) \
 	for (dn = of_find_matching_node_and_match(NULL, matches, match); \
 	     dn; dn = of_find_matching_node_and_match(dn, matches, match))
+#define for_each_node_with_property(dn, prop_name) \
+	for (dn = of_find_node_with_property(NULL, prop_name); dn; \
+	     dn = of_find_node_with_property(dn, prop_name))
 
 #endif /* __OF_H */
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
