Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22a.google.com ([2a00:1450:4008:c01::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uq341-0005sb-GA
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 15:15:51 +0000
Received: by mail-bk0-f42.google.com with SMTP id jk13so3489402bkc.29
 for <barebox@lists.infradead.org>; Fri, 21 Jun 2013 08:15:27 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 21 Jun 2013 17:15:17 +0200
Message-Id: <1371827718-7928-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1371827718-7928-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1371827718-7928-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 2/3] OF: base: use of_delete_property where applicable
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This patch makes OF API use of_delete_property where applicable instead
of freeing allocated data in different places.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |   83 ++++++++++++++++------------------------------------
 1 files changed, 26 insertions(+), 57 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index bcfd73a..7926d5d 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -899,16 +899,11 @@ int of_property_write_u8_array(struct device_node *np,
 	struct property *prop = of_find_property(np, propname, NULL);
 	u8 *val;
 
-	if (!prop)
-		prop = of_new_property(np, propname, NULL, 0);
-	if (!prop)
-		return -ENOMEM;
-
-	free(prop->value);
+	if (prop)
+		of_delete_property(prop);
 
-	prop->length = sizeof(*val) * sz;
-	prop->value = malloc(prop->length);
-	if (!prop->value)
+	prop = of_new_property(np, propname, NULL, sizeof(*val) * sz);
+	if (!prop)
 		return -ENOMEM;
 
 	val = prop->value;
@@ -940,18 +935,13 @@ int of_property_write_u16_array(struct device_node *np,
 	struct property *prop = of_find_property(np, propname, NULL);
 	__be16 *val;
 
-	if (!prop)
-		prop = of_new_property(np, propname, NULL, 0);
+	if (prop)
+		of_delete_property(prop);
+		
+	prop = of_new_property(np, propname, NULL, sizeof(*val) * sz);
 	if (!prop)
 		return -ENOMEM;
 
-	free(prop->value);
-
-	prop->length = sizeof(*val) * sz;
-	prop->value = malloc(prop->length);
-	if (!prop->value)
-		return -ENOMEM;
-
 	val = prop->value;
 	while (sz--)
 		*val++ = cpu_to_be16(*values++);
@@ -981,16 +971,11 @@ int of_property_write_u32_array(struct device_node *np,
 	struct property *prop = of_find_property(np, propname, NULL);
 	__be32 *val;
 
-	if (!prop)
-		prop = of_new_property(np, propname, NULL, 0);
-	if (!prop)
-		return -ENOMEM;
-
-	free(prop->value);
+	if (prop)
+		of_delete_property(prop);
 
-	prop->length = sizeof(*val) * sz;
-	prop->value = malloc(prop->length);
-	if (!prop->value)
+	prop = of_new_property(np, propname, NULL, sizeof(*val) * sz);
+	if (!prop)
 		return -ENOMEM;
 
 	val = prop->value;
@@ -1022,16 +1007,11 @@ int of_property_write_u64_array(struct device_node *np,
 	struct property *prop = of_find_property(np, propname, NULL);
 	__be32 *val;
 
-	if (!prop)
-		prop = of_new_property(np, propname, NULL, 0);
-	if (!prop)
-		return -ENOMEM;
-
-	free(prop->value);
+	if (prop)
+		of_delete_property(prop);
 
-	prop->length = 2 * sizeof(*val) * sz;
-	prop->value = malloc(prop->length);
-	if (!prop->value)
+	prop = of_new_property(np, propname, NULL, 2 * sizeof(*val) * sz);
+	if (!prop)
 		return -ENOMEM;
 
 	val = prop->value;
@@ -1576,26 +1556,19 @@ void of_delete_property(struct property *pp)
 int of_set_property(struct device_node *np, const char *name, const void *val, int len,
 		int create)
 {
-	struct property *pp;
+	struct property *pp = of_find_property(np, name, NULL);
 
 	if (!np)
 		return -ENOENT;
 
-	pp = of_find_property(np, name, NULL);
-	if (pp) {
-		void *data;
-
-		free(pp->value);
-		data = xzalloc(len);
-		memcpy(data, val, len);
-		pp->value = data;
-		pp->length = len;
-	} else {
-		if (!create)
-			return -ENOENT;
+	if (!pp && !create)
+		return -ENOENT;
+		
+	of_delete_property(pp);
 
-		pp = of_new_property(np, name, val, len);
-	}
+	pp = of_new_property(np, name, val, len);
+	if (!pp)
+		return -ENOMEM;
 
 	return 0;
 }
@@ -1819,12 +1792,8 @@ void of_free(struct device_node *node)
 	if (!node)
 		return;
 
-	list_for_each_entry_safe(p, pt, &node->properties, list) {
-		list_del(&p->list);
-		free(p->name);
-		free(p->value);
-		free(p);
-	}
+	list_for_each_entry_safe(p, pt, &node->properties, list)
+		of_delete_property(p);
 
 	list_for_each_entry_safe(n, nt, &node->children, parent_list) {
 		of_free(n);
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
