Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khVUw-0006zs-Tq
 for barebox@lists.infradead.org; Tue, 24 Nov 2020 10:24:36 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 24 Nov 2020 11:24:29 +0100
Message-Id: <20201124102430.17407-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 1/2] watchdog: implement watchdog_get_alias_id_from
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

On device-tree enabled platforms, the Linux kernel will first attempt
to use watchdog%d as watchdog name, where %d is the alias id.

Add a function that given a barebox struct watchdog and the device tree
root node of the kernel device tree, computes the corresponding kernel
alias id.

This may then later be used to pass an appropriate argument on the
kernel command line.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - removed extern where unneeded (Sascha)
---
 drivers/of/base.c          | 77 ++++++++++++++++++++++++++++++--------
 drivers/watchdog/wd_core.c | 19 ++++++++++
 include/of.h               |  8 ++++
 include/watchdog.h         |  8 ++++
 4 files changed, 97 insertions(+), 15 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 5b45c2023f3b..acbae3d8c4bb 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -149,6 +149,31 @@ static void of_alias_add(struct alias_prop *ap, struct device_node *np,
 		 ap->alias, ap->stem, ap->id, np->full_name);
 }
 
+static struct device_node *of_alias_resolve(struct device_node *root, struct property *pp)
+{
+	/* Skip those we do not want to proceed */
+	if (!of_prop_cmp(pp->name, "name") ||
+	    !of_prop_cmp(pp->name, "phandle") ||
+	    !of_prop_cmp(pp->name, "linux,phandle"))
+		return NULL;
+
+	return of_find_node_by_path_from(root, of_property_get_value(pp));
+}
+
+static int of_alias_id_parse(const char *start, int *len)
+{
+	const char *end = start + strlen(start);
+
+	/* walk the alias backwards to extract the id and work out
+	 * the 'stem' string */
+	while (isdigit(*(end-1)) && end > start)
+		end--;
+
+	*len = end - start;
+
+	return simple_strtol(end, NULL, 10);
+}
+
 /**
  * of_alias_scan - Scan all properties of 'aliases' node
  *
@@ -175,28 +200,15 @@ void of_alias_scan(void)
 
 	list_for_each_entry(pp, &of_aliases->properties, list) {
 		const char *start = pp->name;
-		const char *end = start + strlen(start);
 		struct device_node *np;
 		struct alias_prop *ap;
 		int id, len;
 
-		/* Skip those we do not want to proceed */
-		if (!of_prop_cmp(pp->name, "name") ||
-		    !of_prop_cmp(pp->name, "phandle") ||
-		    !of_prop_cmp(pp->name, "linux,phandle"))
-			continue;
-
-		np = of_find_node_by_path(of_property_get_value(pp));
+		np = of_alias_resolve(root_node, pp);
 		if (!np)
 			continue;
 
-		/* walk the alias backwards to extract the id and work out
-		 * the 'stem' string */
-		while (isdigit(*(end-1)) && end > start)
-			end--;
-		len = end - start;
-
-		id = simple_strtol(end, NULL, 10);
+		id = of_alias_id_parse(start, &len);
 		if (id < 0)
 			continue;
 
@@ -235,6 +247,41 @@ int of_alias_get_id(struct device_node *np, const char *stem)
 }
 EXPORT_SYMBOL_GPL(of_alias_get_id);
 
+int of_alias_get_id_from(struct device_node *root, struct device_node *np,
+			 const char *stem)
+{
+	struct device_node *aliasnp, *entrynp;
+	struct property *pp;
+
+	if (!root)
+		return of_alias_get_id(np, stem);
+
+	aliasnp = of_find_node_by_path_from(root, "/aliases");
+	if (!aliasnp)
+		return -ENODEV;
+
+	for_each_property_of_node(aliasnp, pp) {
+		const char *start = pp->name;
+		int id, len;
+
+		entrynp = of_alias_resolve(root_node, pp);
+		if (entrynp != np)
+			continue;
+
+		id = of_alias_id_parse(start, &len);
+		if (id < 0)
+			continue;
+
+		if (strncasecmp(start, stem, len))
+			continue;
+
+		return id;
+	}
+
+	return -ENODEV;
+}
+EXPORT_SYMBOL_GPL(of_alias_get_id_from);
+
 const char *of_alias_get(struct device_node *np)
 {
 	struct alias_prop *app;
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 665338af6197..643c53268fc8 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -261,6 +261,25 @@ struct watchdog *watchdog_get_default(void)
 }
 EXPORT_SYMBOL(watchdog_get_default);
 
+int watchdog_get_alias_id_from(struct watchdog *wd, struct device_node *root)
+{
+	struct device_node *dstnp, *srcnp = wd->hwdev ? wd->hwdev->device_node : NULL;
+	char *name;
+
+	if (!srcnp)
+		return -ENODEV;
+
+	name = of_get_reproducible_name(srcnp);
+	dstnp = of_find_node_by_reproducible_name(root, name);
+	free(name);
+
+	if (!dstnp)
+		return -ENODEV;
+
+	return of_alias_get_id_from(root, wd->hwdev->device_node, "watchdog");
+}
+EXPORT_SYMBOL(watchdog_get_alias_id_from);
+
 struct watchdog *watchdog_get_by_name(const char *name)
 {
 	struct watchdog *tmp;
diff --git a/include/of.h b/include/of.h
index 08a02e110522..dc3aa0730bf7 100644
--- a/include/of.h
+++ b/include/of.h
@@ -254,6 +254,8 @@ extern int of_count_phandle_with_args(const struct device_node *np,
 
 extern void of_alias_scan(void);
 extern int of_alias_get_id(struct device_node *np, const char *stem);
+extern int of_alias_get_id_from(struct device_node *root, struct device_node *np,
+				const char *stem);
 extern const char *of_alias_get(struct device_node *np);
 extern int of_modalias_node(struct device_node *node, char *modalias, int len);
 
@@ -677,6 +679,12 @@ static inline int of_alias_get_id(struct device_node *np, const char *stem)
 	return -ENOSYS;
 }
 
+static inline int of_alias_get_id_from(struct device_node *root, struct device_node *np,
+				       const char *stem)
+{
+	return -ENOSYS
+}
+
 static inline const char *of_alias_get(struct device_node *np)
 {
 	return NULL;
diff --git a/include/watchdog.h b/include/watchdog.h
index 81414ef8ecaa..ee8efdecd030 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -13,6 +13,8 @@ enum wdog_hw_runnning {
 	 WDOG_HW_NOT_RUNNING = PARAM_TRISTATE_FALSE
 };
 
+struct device_node;
+
 struct watchdog {
 	int (*set_timeout)(struct watchdog *, unsigned);
 	const char *name;
@@ -44,6 +46,7 @@ int watchdog_register(struct watchdog *);
 int watchdog_deregister(struct watchdog *);
 struct watchdog *watchdog_get_default(void);
 struct watchdog *watchdog_get_by_name(const char *name);
+int watchdog_get_alias_id_from(struct watchdog *, struct device_node *);
 int watchdog_set_timeout(struct watchdog*, unsigned);
 int watchdog_inhibit_all(void);
 #else
@@ -76,6 +79,11 @@ static inline int watchdog_inhibit_all(void)
 {
 	return -ENOSYS;
 }
+
+static inline int watchdog_get_alias_id_from(struct watchdog *, struct device_node *)
+{
+	return -ENOSYS;
+}
 #endif
 
 #define WATCHDOG_DEFAULT_PRIORITY 100
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
