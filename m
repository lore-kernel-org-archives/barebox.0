Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkmse-0005uH-9M
 for barebox@lists.infradead.org; Fri, 16 Sep 2016 06:44:14 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 16 Sep 2016 08:43:39 +0200
Message-Id: <1474008220-7601-2-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1474008220-7601-1-git-send-email-m.olbrich@pengutronix.de>
References: <1474008220-7601-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH v2 2/3] state: don't keep pointers to device tree nodes
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Caching pointers to device tree nodes or is not save. The barebox internal
device tree may be changed by loading a new device tree or through fixup
handlers. As a result, the node may be deleted and replaced with a new one.
Keep a copy of the full path instead and resolve the node as needed.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
Changes since v1:
- First patch split into two patches

 common/state/state.c | 19 ++++++++++++-------
 common/state/state.h |  2 +-
 2 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 9b1d4edef132..0c329cd67548 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -202,15 +202,19 @@ struct device_node *state_to_node(struct state *state,
 				  enum state_convert conv)
 {
 	struct device_node *child;
-	struct device_node *root;
+	struct device_node *root, *state_root;
 	int ret;
 
-	root = of_new_node(parent, state->root->name);
+	state_root = of_find_node_by_path(state->of_path);
+	if (!state_root)
+		return ERR_PTR(-ENODEV);
+
+	root = of_new_node(parent, state_root->name);
 	ret = of_property_write_u32(root, "magic", state->magic);
 	if (ret)
 		goto out;
 
-	for_each_child_of_node(state->root, child) {
+	for_each_child_of_node(state_root, child) {
 		ret = state_convert_node_variable(state, child, root, "", conv);
 		if (ret)
 			goto out;
@@ -234,7 +238,7 @@ int state_from_node(struct state *state, struct device_node *node, bool create)
 
 	if (create) {
 		conv = STATE_CONVERT_FROM_NODE_CREATE;
-		state->root = node;
+		state->of_path = xstrdup(node->full_name);
 		state->magic = magic;
 	} else {
 		conv = STATE_CONVERT_FROM_NODE;
@@ -291,7 +295,7 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 	int ret;
 	phandle phandle;
 
-	node = of_find_node_by_path_from(root, state->root->full_name);
+	node = of_find_node_by_path_from(root, state->of_path);
 	if (node) {
 		/* replace existing node - it will be deleted later */
 		parent = node->parent;
@@ -299,7 +303,7 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 		char *of_path, *c;
 
 		/* look for parent, remove last '/' from path */
-		of_path = xstrdup(state->root->full_name);
+		of_path = xstrdup(state->of_path);
 		c = strrchr(of_path, '/');
 		if (!c)
 			return -ENODEV;
@@ -406,6 +410,7 @@ void state_release(struct state *state)
 	list_del(&state->list);
 	unregister_device(&state->dev);
 	state_backend_free(&state->backend);
+	free(state->of_path);
 	free(state);
 }
 
@@ -545,7 +550,7 @@ struct state *state_by_node(const struct device_node *node)
 	struct state *state;
 
 	list_for_each_entry(state, &state_list, list) {
-		if (state->root == node)
+		if (!strcmp(state->of_path, node->full_name))
 			return state;
 	}
 
diff --git a/common/state/state.h b/common/state/state.h
index f930d06195b2..7b3e49512e37 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -94,7 +94,7 @@ struct state {
 	struct list_head list; /* Entry to enqueue on list of states */
 
 	struct device_d dev;
-	struct device_node *root;
+	char *of_path;
 	const char *name;
 	uint32_t magic;
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
