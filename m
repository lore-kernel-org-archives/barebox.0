Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x235.google.com ([2a00:1450:4008:c01::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEPK-0004z7-Pn
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:10:36 +0000
Received: by mail-bk0-f53.google.com with SMTP id e11so2220637bkh.12
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 02:10:05 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 19 Jun 2013 11:09:40 +0200
Message-Id: <1371632991-1504-12-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 11/22] OF: base: import of_find_matching_node_and_match
 from Linux OF API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This imports of_find_matching_node_and_match and corresponding helpers
from Linux OF API.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |   37 +++++++++++++++++++++++++++++++++++++
 include/of.h      |   24 ++++++++++++++++++++++++
 2 files changed, 61 insertions(+), 0 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 50a4df0..38d6789 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -389,6 +389,43 @@ const struct of_device_id *of_match_node(const struct of_device_id *matches,
 	return NULL;
 }
 
+/**
+ *	of_find_matching_node_and_match - Find a node based on an of_device_id
+ *					  match table.
+ *	@from:		The node to start searching from or NULL, the node
+ *			you pass will not be searched, only the next one
+ *			will; typically, you pass what the previous call
+ *			returned.
+ *	@matches:	array of of device match structures to search in
+ *	@match		Updated to point at the matches entry which matched
+ *
+ *	Returns a pointer to the node found or NULL.
+ */
+struct device_node *of_find_matching_node_and_match(struct device_node *from,
+					const struct of_device_id *matches,
+					const struct of_device_id **match)
+{
+	struct device_node *np;
+
+	if (match)
+		*match = NULL;
+
+	if (!from)
+		from = root_node;
+
+	of_tree_for_each_node(np, from) {
+		const struct of_device_id *m = of_match_node(matches, np);
+		if (m) {
+			if (match)
+				*match = m;
+			return np;
+		}
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL(of_find_matching_node_and_match);
+
 int of_match(struct device_d *dev, struct driver_d *drv)
 {
 	const struct of_device_id *id;
diff --git a/include/of.h b/include/of.h
index b334e3a..a33ccfa 100644
--- a/include/of.h
+++ b/include/of.h
@@ -189,6 +189,10 @@ extern struct device_node *of_find_node_by_path_from(struct device_node *from,
 extern struct device_node *of_find_node_by_path(const char *path);
 extern struct device_node *of_find_compatible_node(struct device_node *from,
 	const char *type, const char *compat);
+extern struct device_node *of_find_matching_node_and_match(
+	struct device_node *from,
+	const struct of_device_id *matches,
+	const struct of_device_id **match);
 extern int of_device_is_available(const struct device_node *device);
 
 extern void of_alias_scan(void);
@@ -267,6 +271,14 @@ static inline struct device_node *of_find_compatible_node(
 	return NULL;
 }
 
+static inline struct device_node *of_find_matching_node_and_match(
+					struct device_node *from,
+					const struct of_device_id *matches,
+					const struct of_device_id **match)
+{
+	return NULL;
+}
+
 static inline int of_device_is_available(const struct device_node *device)
 {
 	return 0;
@@ -293,5 +305,17 @@ static inline const char *of_alias_get(struct device_node *np)
 #define for_each_compatible_node(dn, type, compatible) \
 	for (dn = of_find_compatible_node(NULL, type, compatible); dn; \
 	     dn = of_find_compatible_node(dn, type, compatible))
+static inline struct device_node *of_find_matching_node(
+	struct device_node *from,
+	const struct of_device_id *matches)
+{
+	return of_find_matching_node_and_match(from, matches, NULL);
+}
+#define for_each_matching_node(dn, matches) \
+	for (dn = of_find_matching_node(NULL, matches); dn; \
+	     dn = of_find_matching_node(dn, matches))
+#define for_each_matching_node_and_match(dn, matches, match) \
+	for (dn = of_find_matching_node_and_match(NULL, matches, match); \
+	     dn; dn = of_find_matching_node_and_match(dn, matches, match))
 
 #endif /* __OF_H */
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
