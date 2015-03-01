Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YS339-0004dQ-Nd
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 12:32:51 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sun,  1 Mar 2015 13:32:12 +0100
Message-Id: <1425213143-4529-7-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425213143-4529-1-git-send-email-mkl@pengutronix.de>
References: <1425213143-4529-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 06/17] of: add no-op functions for of_find_node_by_alias()
 and of_find_node_by_path_or_alias()
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 include/of.h | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/include/of.h b/include/of.h
index 46eecee70035..764a2e5939b7 100644
--- a/include/of.h
+++ b/include/of.h
@@ -240,6 +240,10 @@ void of_add_memory_bank(struct device_node *node, bool dump, int r,
 struct device_d *of_find_device_by_node_path(const char *path);
 int of_find_path(struct device_node *node, const char *propname, char **outpath);
 int of_register_fixup(int (*fixup)(struct device_node *, void *), void *context);
+struct device_node *of_find_node_by_alias(struct device_node *root,
+		const char *alias);
+struct device_node *of_find_node_by_path_or_alias(struct device_node *root,
+		const char *str);
 #else
 static inline int of_parse_partitions(struct cdev *cdev,
 					  struct device_node *node)
@@ -602,6 +606,18 @@ static inline int of_register_fixup(int (*fixup)(struct device_node *, void *),
 {
 	return -ENOSYS;
 }
+
+static inline struct device_node *of_find_node_by_alias(
+				struct device_node *root, const char *alias)
+{
+	return NULL;
+}
+
+static inline struct device_node *of_find_node_by_path_or_alias(
+				struct device_node *root, const char *str)
+{
+	return NULL;
+}
 #endif
 
 #define for_each_node_by_name(dn, name) \
@@ -737,10 +753,6 @@ int of_device_disable_path(const char *path);
 phandle of_get_tree_max_phandle(struct device_node *root);
 phandle of_node_create_phandle(struct device_node *node);
 int of_set_property_to_child_phandle(struct device_node *node, char *prop_name);
-struct device_node *of_find_node_by_alias(struct device_node *root,
-		const char *alias);
-struct device_node *of_find_node_by_path_or_alias(struct device_node *root,
-		const char *str);
 
 static inline struct device_node *of_find_root_node(struct device_node *node)
 {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
