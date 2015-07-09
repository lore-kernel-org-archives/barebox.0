Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZD6D0-00020f-K6
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 07:25:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Jul 2015 09:24:05 +0200
Message-Id: <1436426657-5266-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1436426657-5266-1-git-send-email-s.hauer@pengutronix.de>
References: <1436426657-5266-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/13] of: base: implement of_get_next_child
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 17 +++++++++++++++++
 include/of.h      |  8 ++++++++
 2 files changed, 25 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 3e40a48..0eb1d6b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1570,6 +1570,23 @@ struct device_node *of_get_next_available_child(const struct device_node *node,
 EXPORT_SYMBOL(of_get_next_available_child);
 
 /**
+ *	of_get_next_child - Iterate a node childs
+ *	@node:  parent node
+ *	@prev:  previous child of the parent node, or NULL to get first
+ *
+ *	Returns a node pointer with refcount incremented.
+ */
+struct device_node *of_get_next_child(const struct device_node *node,
+	struct device_node *prev)
+{
+	prev = list_prepare_entry(prev, &node->children, parent_list);
+	list_for_each_entry_continue(prev, &node->children, parent_list)
+		return prev;
+	return NULL;
+}
+EXPORT_SYMBOL(of_get_next_available_child);
+
+/**
  *	of_get_child_count - Count child nodes of given parent node
  *	@parent:	parent node
  *
diff --git a/include/of.h b/include/of.h
index 1db210b..e0ebc39 100644
--- a/include/of.h
+++ b/include/of.h
@@ -153,6 +153,8 @@ extern int of_device_is_available(const struct device_node *device);
 extern struct device_node *of_get_parent(const struct device_node *node);
 extern struct device_node *of_get_next_available_child(
 	const struct device_node *node, struct device_node *prev);
+struct device_node *of_get_next_child(const struct device_node *node,
+	struct device_node *prev);
 extern int of_get_child_count(const struct device_node *parent);
 extern int of_get_available_child_count(const struct device_node *parent);
 extern struct device_node *of_get_child_by_name(const struct device_node *node,
@@ -308,6 +310,12 @@ static inline struct device_node *of_get_next_available_child(
 	return NULL;
 }
 
+static inline struct device_node *of_get_next_child(const struct device_node *node,
+	struct device_node *prev)
+{
+	return NULL;
+}
+
 static inline int of_get_child_count(const struct device_node *parent)
 {
 	return -ENOSYS;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
