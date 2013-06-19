Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x234.google.com ([2a00:1450:4008:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEPM-0004zG-1z
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:10:48 +0000
Received: by mail-bk0-f52.google.com with SMTP id d7so2234067bkh.25
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 02:10:07 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 19 Jun 2013 11:09:51 +0200
Message-Id: <1371632991-1504-23-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 22/22] OF: base: cleanup base function include
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This cleans up include/of.h by moving some function prototypes below
CONFIG_OFTREE and provide bogus stubs for !CONFIG_OFTREE.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 include/of.h |  138 +++++++++++++++++++++++++++++++++++++++++++++------------
 1 files changed, 109 insertions(+), 29 deletions(-)

diff --git a/include/of.h b/include/of.h
index c61d002..b392ca9 100644
--- a/include/of.h
+++ b/include/of.h
@@ -71,15 +71,10 @@ int of_match(struct device_d *dev, struct driver_d *drv);
 int of_add_initrd(struct device_node *root, resource_size_t start,
 		resource_size_t end);
 
-int of_n_addr_cells(struct device_node *np);
-int of_n_size_cells(struct device_node *np);
-
 struct fdt_header *fdt_get_tree(void);
 
 struct fdt_header *of_get_fixed_tree(struct device_node *node);
 
-int of_modalias_node(struct device_node *node, char *modalias, int len);
-
 /* Helper to read a big number; size is in cells (not bytes) */
 static inline u64 of_read_number(const __be32 *cell, int size)
 {
@@ -100,21 +95,12 @@ static inline void of_write_number(void *__cell, u64 val, int size)
 	}
 }
 
-const void *of_get_property(const struct device_node *np, const char *name,
-			 int *lenp);
-
 int of_get_named_gpio(struct device_node *np,
                                    const char *propname, int index);
 
-struct device_node *of_find_node_by_phandle(phandle phandle);
 void of_print_property(const void *data, int len);
 void of_print_cmdline(struct device_node *root);
 
-int of_device_is_compatible(const struct device_node *device,
-		const char *compat);
-
-int of_machine_is_compatible(const char *compat);
-
 u64 of_translate_address(struct device_node *node, const __be32 *in_addr);
 
 #define OF_ROOT_NODE_SIZE_CELLS_DEFAULT 1
@@ -123,41 +109,51 @@ u64 of_translate_address(struct device_node *node, const __be32 *in_addr);
 void of_print_nodes(struct device_node *node, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
-void of_free(struct device_node *node);
 struct device_node *of_unflatten_dtb(struct device_node *root, void *fdt);
-struct device_node *of_new_node(struct device_node *parent, const char *name);
-struct property *of_new_property(struct device_node *node, const char *name,
-		const void *data, int len);
-void of_delete_property(struct property *pp);
-
-int of_set_property(struct device_node *node, const char *p, const void *val, int len,
-		int create);
-struct device_node *of_create_node(struct device_node *root, const char *path);
-
-int of_set_root_node(struct device_node *);
-
-const struct of_device_id *of_match_node(const struct of_device_id *matches,
-					 const struct device_node *node);
 
 struct cdev;
 
 #ifdef CONFIG_OFTREE
+extern int of_n_addr_cells(struct device_node *np);
+extern int of_n_size_cells(struct device_node *np);
+
 extern struct property *of_find_property(const struct device_node *np,
 					const char *name, int *lenp);
+extern const void *of_get_property(const struct device_node *np,
+				const char *name, int *lenp);
+
+extern int of_set_property(struct device_node *node, const char *p,
+			const void *val, int len, int create);
+extern struct property *of_new_property(struct device_node *node,
+				const char *name, const void *data, int len);
+extern void of_delete_property(struct property *pp);
 
 extern struct device_node *of_find_node_by_name(struct device_node *from,
 	const char *name);
 extern struct device_node *of_find_node_by_path_from(struct device_node *from,
 						const char *path);
 extern struct device_node *of_find_node_by_path(const char *path);
+extern struct device_node *of_find_node_by_phandle(phandle phandle);
 extern struct device_node *of_find_compatible_node(struct device_node *from,
 	const char *type, const char *compat);
+extern const struct of_device_id *of_match_node(
+	const struct of_device_id *matches, const struct device_node *node);
 extern struct device_node *of_find_matching_node_and_match(
 	struct device_node *from,
 	const struct of_device_id *matches,
 	const struct of_device_id **match);
 extern struct device_node *of_find_node_with_property(
 	struct device_node *from, const char *prop_name);
+
+extern struct device_node *of_new_node(struct device_node *parent,
+				const char *name);
+extern struct device_node *of_create_node(struct device_node *root,
+					const char *path);
+extern void of_free(struct device_node *node);
+
+extern int of_machine_is_compatible(const char *compat);
+extern int of_device_is_compatible(const struct device_node *device,
+		const char *compat);
 extern int of_device_is_available(const struct device_node *device);
 
 extern struct device_node *of_get_parent(const struct device_node *node);
@@ -225,6 +221,10 @@ extern int of_count_phandle_with_args(const struct device_node *np,
 extern void of_alias_scan(void);
 extern int of_alias_get_id(struct device_node *np, const char *stem);
 extern const char *of_alias_get(struct device_node *np);
+extern int of_modalias_node(struct device_node *node, char *modalias, int len);
+
+extern struct device_node *of_get_root_node(void);
+extern int of_set_root_node(struct device_node *node);
 
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
 int of_device_is_stdout_path(struct device_d *dev);
@@ -233,7 +233,6 @@ void *of_flatten_dtb(struct device_node *node);
 int of_add_memory(struct device_node *node, bool dump);
 void of_add_memory_bank(struct device_node *node, bool dump, int r,
 		u64 base, u64 size);
-struct device_node *of_get_root_node(void);
 #else
 static inline int of_parse_partitions(struct cdev *cdev,
 					  struct device_node *node)
@@ -266,6 +265,21 @@ static inline struct device_node *of_get_root_node(void)
 	return NULL;
 }
 
+static inline int of_set_root_node(struct device_node *node)
+{
+	return -ENOSYS;
+}
+
+static inline int of_n_addr_cells(struct device_node *np)
+{
+	return 0;
+}
+
+static inline int of_n_size_cells(struct device_node *np)
+{
+	return 0;
+}
+
 static inline struct device_node *of_get_parent(const struct device_node *node)
 {
 	return NULL;
@@ -300,6 +314,28 @@ static inline struct property *of_find_property(const struct device_node *np,
 	return NULL;
 }
 
+static inline const void *of_get_property(const struct device_node *np,
+				const char *name, int *lenp)
+{
+	return NULL;
+}
+
+static inline int of_set_property(struct device_node *node, const char *p,
+			const void *val, int len, int create)
+{
+	return -ENOSYS;
+}
+
+static inline struct property *of_new_property(struct device_node *node,
+				const char *name, const void *data, int len)
+{
+	return NULL;
+}
+
+static inline void of_delete_property(struct property *pp)
+{
+}
+
 static inline int of_property_read_u32_index(const struct device_node *np,
 				const char *propname, u32 index, u32 *out_value)
 {
@@ -432,6 +468,11 @@ static inline struct device_node *of_find_node_by_name(struct device_node *from,
 	return NULL;
 }
 
+static inline struct device_node *of_find_node_by_phandle(phandle phandle)
+{
+	return NULL;
+}
+
 static inline struct device_node *of_find_compatible_node(
 						struct device_node *from,
 						const char *type,
@@ -440,6 +481,12 @@ static inline struct device_node *of_find_compatible_node(
 	return NULL;
 }
 
+static inline const struct of_device_id *of_match_node(
+	const struct of_device_id *matches, const struct device_node *node)
+{
+	return NULL;
+}
+
 static inline struct device_node *of_find_matching_node_and_match(
 					struct device_node *from,
 					const struct of_device_id *matches,
@@ -454,6 +501,33 @@ static inline struct device_node *of_find_node_with_property(
 	return NULL;
 }
 
+static inline struct device_node *of_new_node(struct device_node *parent,
+				const char *name)
+{
+	return NULL;
+}
+
+static inline struct device_node *of_create_node(struct device_node *root,
+					const char *path)
+{
+	return NULL;
+}
+
+static inline void of_free(struct device_node *node)
+{
+}
+
+static inline int of_machine_is_compatible(const char *compat)
+{
+	return 0;
+}
+
+static inline int of_device_is_compatible(const struct device_node *device,
+		const char *compat)
+{
+	return 0;
+}
+
 static inline int of_device_is_available(const struct device_node *device)
 {
 	return 0;
@@ -472,6 +546,12 @@ static inline const char *of_alias_get(struct device_node *np)
 {
 	return NULL;
 }
+
+static inline int of_modalias_node(struct device_node *node, char *modalias,
+				int len)
+{
+	return -ENOSYS;
+}
 #endif
 
 #define for_each_node_by_name(dn, name) \
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
