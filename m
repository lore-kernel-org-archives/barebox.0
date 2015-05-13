Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsTes-0000Dm-GL
 for barebox@lists.infradead.org; Wed, 13 May 2015 10:13:02 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 13 May 2015 12:12:29 +0200
Message-Id: <1431511952-32124-4-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1431511952-32124-1-git-send-email-mkl@pengutronix.de>
References: <1431511952-32124-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 4/7] state: add functionality to export state description
To: barebox@lists.infradead.org

This patch adds the functionality to export the description of the state, but
not the contents of the variables to a DT node. This will be used in a later
patch to "copy" the state description to the kernel device tree during DT
fixup.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 61 ++++++++++++++++++++++++++++++++++++----------------------
 1 file changed, 38 insertions(+), 23 deletions(-)

diff --git a/common/state.c b/common/state.c
index 66620a892074..744a6f8250c4 100644
--- a/common/state.c
+++ b/common/state.c
@@ -74,12 +74,20 @@ struct state_variable {
 	void *raw;
 };
 
+enum state_convert {
+	STATE_CONVERT_FROM_NODE,
+	STATE_CONVERT_FROM_NODE_CREATE,
+	STATE_CONVERT_TO_NODE,
+	STATE_CONVERT_FIXUP,
+};
+
 /* A variable type (uint32, enum32) */
 struct variable_type {
 	enum state_variable_type type;
 	const char *type_name;
 	struct list_head list;
-	int (*export)(struct state_variable *, struct device_node *);
+	int (*export)(struct state_variable *, struct device_node *,
+			enum state_convert);
 	int (*import)(struct state_variable *, const struct device_node *);
 	struct state_variable *(*create)(struct state *state,
 			const char *name, struct device_node *);
@@ -126,15 +134,15 @@ static inline struct state_uint32 *to_state_uint32(struct state_variable *s)
 }
 
 static int state_uint32_export(struct state_variable *var,
-		struct device_node *node)
+		struct device_node *node, enum state_convert conv)
 {
 	struct state_uint32 *su32 = to_state_uint32(var);
 	int ret;
 
-	if (su32->value_default) {
+	if (su32->value_default || conv == STATE_CONVERT_FIXUP) {
 		ret = of_property_write_u32(node, "default",
 					    su32->value_default);
-		if (ret)
+		if (ret || conv == STATE_CONVERT_FIXUP)
 			return ret;
 	}
 
@@ -193,16 +201,16 @@ static inline struct state_enum32 *to_state_enum32(struct state_variable *s)
 }
 
 static int state_enum32_export(struct state_variable *var,
-		struct device_node *node)
+		struct device_node *node, enum state_convert conv)
 {
 	struct state_enum32 *enum32 = to_state_enum32(var);
 	int ret, i, len;
 	char *prop, *str;
 
-	if (enum32->value_default) {
+	if (enum32->value_default || conv == STATE_CONVERT_FIXUP) {
 		ret = of_property_write_u32(node, "default",
 					    enum32->value_default);
-		if (ret)
+		if (ret || conv == STATE_CONVERT_FIXUP)
 			return ret;
 	}
 
@@ -309,14 +317,14 @@ static inline struct state_mac *to_state_mac(struct state_variable *s)
 }
 
 static int state_mac_export(struct state_variable *var,
-		struct device_node *node)
+		struct device_node *node, enum state_convert conv)
 {
 	struct state_mac *mac = to_state_mac(var);
 	int ret;
 
 	ret = of_property_write_u8_array(node, "default", mac->value_default,
 					 ARRAY_SIZE(mac->value_default));
-	if (ret)
+	if (ret || conv == STATE_CONVERT_FIXUP)
 		return ret;
 
 	return of_property_write_u8_array(node, "value", mac->value,
@@ -446,12 +454,6 @@ static struct state_variable *state_find_var(struct state *state,
 	return ERR_PTR(-ENOENT);
 }
 
-enum state_convert {
-	STATE_CONVERT_FROM_NODE,
-	STATE_CONVERT_FROM_NODE_CREATE,
-	STATE_CONVERT_TO_NODE,
-};
-
 static int state_convert_node_variable(struct state *state,
 		struct device_node *node, struct device_node *parent,
 		const char *parent_name, enum state_convert conv)
@@ -476,7 +478,8 @@ static int state_convert_node_variable(struct state *state,
 			parent_name, parent_name[0] ? "." : "", short_name);
 	free(short_name);
 
-	if (conv == STATE_CONVERT_TO_NODE)
+	if ((conv == STATE_CONVERT_TO_NODE) ||
+	    (conv == STATE_CONVERT_FIXUP))
 		new_node = of_new_node(parent, node->name);
 
 	for_each_child_of_node(node, child) {
@@ -489,6 +492,15 @@ static int state_convert_node_variable(struct state *state,
 	/* parents are allowed to have no type */
 	ret = of_property_read_string(node, "type", &type_name);
 	if (!list_empty(&node->children) && ret == -EINVAL) {
+		if (conv == STATE_CONVERT_FIXUP) {
+			ret = of_property_write_u32(new_node, "#address-cells", 1);
+			if (ret)
+				goto out_free;
+
+			ret = of_property_write_u32(new_node, "#size-cells", 1);
+			if (ret)
+				goto out_free;
+		}
 		ret = 0;
 		goto out_free;
 	} else if (ret) {
@@ -542,7 +554,8 @@ static int state_convert_node_variable(struct state *state,
 		}
 		free(name);
 
-		if (conv == STATE_CONVERT_TO_NODE) {
+		if ((conv == STATE_CONVERT_TO_NODE) ||
+		    (conv == STATE_CONVERT_FIXUP)) {
 			ret = of_set_property(new_node, "type",
 					      vtype->type_name,
 					      strlen(vtype->type_name) + 1, 1);
@@ -559,8 +572,9 @@ static int state_convert_node_variable(struct state *state,
 		}
 	}
 
-	if (conv == STATE_CONVERT_TO_NODE)
-		ret = vtype->export(sv, new_node);
+	if ((conv == STATE_CONVERT_TO_NODE) ||
+	    (conv == STATE_CONVERT_FIXUP))
+		ret = vtype->export(sv, new_node, conv);
 	else
 		ret = vtype->import(sv, node);
 
@@ -574,20 +588,21 @@ out:
 	return ret;
 }
 
-static struct device_node *state_to_node(struct state *state)
+static struct device_node *state_to_node(struct state *state, struct device_node *parent,
+					 enum state_convert conv)
 {
 	struct device_node *child;
 	struct device_node *root;
 	int ret;
 
-	root = of_new_node(NULL, NULL);
+	root = of_new_node(parent, state->root->name);
 	ret = of_property_write_u32(root, "magic", state->magic);
 	if (ret)
 		goto out;
 
 	for_each_child_of_node(state->root, child) {
 		ret = state_convert_node_variable(state, child, root, "",
-						  STATE_CONVERT_TO_NODE);
+						  conv);
 		if (ret)
 			goto out;
 	}
@@ -845,7 +860,7 @@ static int state_backend_dtb_save(struct state_backend *backend,
 	struct device_node *root;
 	struct fdt_header *fdt;
 
-	root = state_to_node(state);
+	root = state_to_node(state, NULL, STATE_CONVERT_TO_NODE);
 	if (IS_ERR(root))
 		return PTR_ERR(root);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
