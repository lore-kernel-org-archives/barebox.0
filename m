Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og112.obsmtp.com ([64.18.0.24])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGs0j-0001h4-Q2
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 14:55:18 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  3 Sep 2013 15:54:24 +0100
Message-Id: <1378220067-22296-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1378220067-22296-1-git-send-email-renaud.barbier@ge.com>
References: <1378220067-22296-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/4] of: base: import of_find_node_by_type
To: barebox@lists.infradead.org

Import of_find_node_by_type from Linux drivers/of/base.c -
commit id d8dfad3.
This function retrieves a node pointer based on the "device_type"
property of the node.

This is used by device tree update functions in PPC support.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 drivers/of/base.c |   29 +++++++++++++++++++++++++++++
 include/of.h      |    2 ++
 2 files changed, 31 insertions(+), 0 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index c2fb712..a261435 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -401,6 +401,35 @@ struct device_node *of_find_node_by_name(struct device_node *from,
 EXPORT_SYMBOL(of_find_node_by_name);
 
 /**
+ *	of_find_node_by_type - Find a node by its "device_type" property
+ *	@from:  The node to start searching from, or NULL to start searching
+ *		the entire device tree. The node you pass will not be
+ *		searched, only the next one will; typically, you pass
+ *		what the previous call returned.
+ *	@type:  The type string to match against.
+ *
+ *	Returns a pointer to the node found or NULL.
+ */
+struct device_node *of_find_node_by_type(struct device_node *from,
+		const char *type)
+{
+	struct device_node *np;
+	const char *device_type;
+	int ret;
+
+	if (!from)
+		from = root_node;
+
+	of_tree_for_each_node_from(np, from) {
+		ret = of_property_read_string(np, "device_type", &device_type);
+		if (!ret && !of_node_cmp(device_type, type))
+			return np;
+	}
+	return NULL;
+}
+EXPORT_SYMBOL(of_find_node_by_type)
+
+/**
  *	of_find_compatible_node - Find a node based on type and one of the
  *                                tokens in its "compatible" property
  *	@from:		The node to start searching from or NULL, the node
diff --git a/include/of.h b/include/of.h
index 2c77ee6..e5cd750 100644
--- a/include/of.h
+++ b/include/of.h
@@ -124,6 +124,8 @@ extern struct device_node *of_find_node_by_path_from(struct device_node *from,
 						const char *path);
 extern struct device_node *of_find_node_by_path(const char *path);
 extern struct device_node *of_find_node_by_phandle(phandle phandle);
+extern struct device_node *of_find_node_by_type(struct device_node *from,
+	const char *type);
 extern struct device_node *of_find_compatible_node(struct device_node *from,
 	const char *type, const char *compat);
 extern const struct of_device_id *of_match_node(
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
