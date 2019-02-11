Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtEJf-0006hl-ER
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 16:20:21 +0000
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 11 Feb 2019 17:20:12 +0100
Message-Id: <20190211162013.5320-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 1/2] of: base: add helper to rename a node
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de

Sometimes it can be necessary to rename a node, e.g. to override/create
a node which gets renamed upstream.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/base.c | 18 ++++++++++++++++++
 include/of.h      |  5 +++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index b082f0c656..6644d9b96a 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2094,6 +2094,24 @@ void of_delete_node(struct device_node *node)
 		of_set_root_node(NULL);
 }
 
+void of_rename_node(struct device_node *node, char *name)
+{
+	struct device_node *parent;
+
+	if (!node)
+		return;
+
+	parent = node->parent;
+	if (parent) {
+		node->name = name;
+		node->full_name = basprintf("%s/%s", parent->full_name, name);
+	} else {
+		/* root node */
+		node->name = xstrdup("");
+		node->full_name = xstrdup("");
+	}
+}
+
 int of_device_is_stdout_path(struct device_d *dev)
 {
 	struct device_node *dn;
diff --git a/include/of.h b/include/of.h
index 184acb4741..403f399d95 100644
--- a/include/of.h
+++ b/include/of.h
@@ -158,6 +158,7 @@ extern struct device_node *of_create_node(struct device_node *root,
 extern struct device_node *of_copy_node(struct device_node *parent,
 				const struct device_node *other);
 extern void of_delete_node(struct device_node *node);
+extern void of_rename_node(struct device_node *node, char *name);
 
 extern const char *of_get_machine_compatible(void);
 extern int of_machine_is_compatible(const char *compat);
@@ -605,6 +606,10 @@ static inline void of_delete_node(struct device_node *node)
 {
 }
 
+static inline void of_rename_node(struct device_node *node, char *name)
+{
+}
+
 static inline int of_machine_is_compatible(const char *compat)
 {
 	return 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
