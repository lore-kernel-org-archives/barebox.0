Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYqWA-00038c-4p
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 07:39:23 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 5C453A003E7
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2016 08:39:20 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Thu, 25 Feb 2016 08:36:47 +0100
Message-Id: <1456385809-46968-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 1/3] common: oftree: Add fuction to register set status
 fixup
To: barebox@lists.infradead.org

Added a function to register a fixup to enable or disable
device tree nodes.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 common/oftree.c | 36 ++++++++++++++++++++++++++++++++++++
 include/of.h    |  1 +
 2 files changed, 37 insertions(+)

diff --git a/common/oftree.c b/common/oftree.c
index d408f14..3103bb1 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -139,6 +139,42 @@ static int of_register_bootargs_fixup(void)
 }
 late_initcall(of_register_bootargs_fixup);
 
+struct of_fixup_status_data {
+	char *node;
+	bool status;
+};
+
+static int of_fixup_status(struct device_node *root, void *context)
+{
+	struct of_fixup_status_data *data = context;
+	struct device_node *node;
+
+	node = of_find_node_by_path_or_alias(root, data->node);
+	if (!node)
+		return -ENODEV;
+
+	if (data->status)
+		return of_device_enable(node);
+	else
+		return of_device_disable(node);
+}
+
+/**
+ * of_register_set_status_fixup - register fix up to set status of nodes
+ * Register a fixup to enable or disable a node in the devicet tree by
+ * passing the path or alias.
+ */
+int of_register_set_status_fixup(char *node, bool status)
+{
+	struct of_fixup_status_data *data;
+
+	data = xzalloc(sizeof(*data));
+	data->node = node;
+	data->status = status;
+
+	return of_register_fixup(of_fixup_status, (void *)data);
+}
+
 struct of_fixup {
 	int (*fixup)(struct device_node *, void *);
 	void *context;
diff --git a/include/of.h b/include/of.h
index 75cc3c1..ae65409 100644
--- a/include/of.h
+++ b/include/of.h
@@ -249,6 +249,7 @@ int of_find_path(struct device_node *node, const char *propname, char **outpath,
 int of_find_path_by_node(struct device_node *node, char **outpath, unsigned flags);
 int of_register_fixup(int (*fixup)(struct device_node *, void *), void *context);
 int of_unregister_fixup(int (*fixup)(struct device_node *, void *), void *context);
+int of_register_set_status_fixup(char *node, bool status);
 struct device_node *of_find_node_by_alias(struct device_node *root,
 		const char *alias);
 struct device_node *of_find_node_by_path_or_alias(struct device_node *root,
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
