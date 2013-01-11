Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtebA-0000qW-Kp
 for barebox@lists.infradead.org; Fri, 11 Jan 2013 13:24:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jan 2013 14:24:24 +0100
Message-Id: <1357910676-4231-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1357910676-4231-1-git-send-email-s.hauer@pengutronix.de>
References: <1357910676-4231-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/16] of: of_free fixes
To: barebox@lists.infradead.org

- Add missing prototype for of_free()
- When root node is freed set root_node to NULL
- (re)scan aliases after freeing a node. This is necessary because
  the freed node may be an alias or point to an alias

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   11 +++++++++++
 include/of.h      |    1 +
 2 files changed, 12 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 399adc8..6c1ccd7 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -138,6 +138,12 @@ static void of_alias_add(struct alias_prop *ap, struct device_node *np,
 void of_alias_scan(void)
 {
 	struct property *pp;
+	struct alias_prop *app, *tmp;
+
+	list_for_each_entry_safe(app, tmp, &aliases_lookup, link)
+		free(app);
+
+	INIT_LIST_HEAD(&aliases_lookup);
 
 	of_aliases = of_find_node_by_path("/aliases");
 	if (!of_aliases)
@@ -777,6 +783,11 @@ void of_free(struct device_node *node)
 	free(node->name);
 	free(node->full_name);
 	free(node);
+
+	if (node == root_node)
+		root_node = NULL;
+
+	of_alias_scan();
 }
 
 static void __of_probe(struct device_node *node)
diff --git a/include/of.h b/include/of.h
index 3999ded..4054917 100644
--- a/include/of.h
+++ b/include/of.h
@@ -107,6 +107,7 @@ int of_machine_is_compatible(const char *compat);
 void of_print_nodes(struct device_node *node, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
+void of_free(struct device_node *node);
 
 int of_property_read_string(struct device_node *np, const char *propname,
 				const char **out_string);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
