Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZEFA-0002SG-3H
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 08:59:25 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 451BEA002B6
 for <barebox@lists.infradead.org>; Fri, 26 Feb 2016 09:59:24 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 26 Feb 2016 09:56:50 +0100
Message-Id: <1456477010-15629-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH for next] fixup! common: oftree: Add fuction to register set
 status fixup
To: barebox@lists.infradead.org

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 common/oftree.c | 10 +++++-----
 include/of.h    |  2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/common/oftree.c b/common/oftree.c
index 3103bb1..e98b908 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -140,16 +140,16 @@ static int of_register_bootargs_fixup(void)
 late_initcall(of_register_bootargs_fixup);
 
 struct of_fixup_status_data {
-	char *node;
+	const char *path;
 	bool status;
 };
 
 static int of_fixup_status(struct device_node *root, void *context)
 {
-	struct of_fixup_status_data *data = context;
+	const struct of_fixup_status_data *data = context;
 	struct device_node *node;
 
-	node = of_find_node_by_path_or_alias(root, data->node);
+	node = of_find_node_by_path_or_alias(root, data->path);
 	if (!node)
 		return -ENODEV;
 
@@ -164,12 +164,12 @@ static int of_fixup_status(struct device_node *root, void *context)
  * Register a fixup to enable or disable a node in the devicet tree by
  * passing the path or alias.
  */
-int of_register_set_status_fixup(char *node, bool status)
+int of_register_set_status_fixup(const char *path, bool status)
 {
 	struct of_fixup_status_data *data;
 
 	data = xzalloc(sizeof(*data));
-	data->node = node;
+	data->path = path;
 	data->status = status;
 
 	return of_register_fixup(of_fixup_status, (void *)data);
diff --git a/include/of.h b/include/of.h
index ae65409..8c8f57a 100644
--- a/include/of.h
+++ b/include/of.h
@@ -249,7 +249,7 @@ int of_find_path(struct device_node *node, const char *propname, char **outpath,
 int of_find_path_by_node(struct device_node *node, char **outpath, unsigned flags);
 int of_register_fixup(int (*fixup)(struct device_node *, void *), void *context);
 int of_unregister_fixup(int (*fixup)(struct device_node *, void *), void *context);
-int of_register_set_status_fixup(char *node, bool status);
+int of_register_set_status_fixup(const char *node, bool status);
 struct device_node *of_find_node_by_alias(struct device_node *root,
 		const char *alias);
 struct device_node *of_find_node_by_path_or_alias(struct device_node *root,
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
