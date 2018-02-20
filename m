Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eo8Em-0008M3-PH
 for barebox@lists.infradead.org; Tue, 20 Feb 2018 13:45:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Feb 2018 14:45:25 +0100
Message-Id: <20180220134526.18280-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] state: remove unused arguments from state_new_from_node()
To: Barebox List <barebox@lists.infradead.org>

state_new_from_node() has arguments describing the backend path. These
are never used in barebox, the backend path is always derived from the
device nodes backend description. Remove these arguments.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/efi/efi.c     |  2 +-
 common/state/state.c | 44 ++++++++++++++++----------------------------
 drivers/misc/state.c |  2 +-
 include/state.h      |  3 +--
 4 files changed, 19 insertions(+), 32 deletions(-)

diff --git a/common/efi/efi.c b/common/efi/efi.c
index 561ce4c081..1f451a157e 100644
--- a/common/efi/efi.c
+++ b/common/efi/efi.c
@@ -441,7 +441,7 @@ static int efi_late_init(void)
 
 		np = of_find_node_by_alias(root, "state");
 
-		state = state_new_from_node(np, NULL, 0, 0, false);
+		state = state_new_from_node(np, false);
 		if (IS_ERR(state))
 			return PTR_ERR(state);
 
diff --git a/common/state/state.c b/common/state/state.c
index 6399bd3736..fdf10991aa 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -557,17 +557,10 @@ void state_release(struct state *state)
 /*
  * state_new_from_node - create a new state instance from a device_node
  *
- * @node	The device_node describing the new state instance
- * @path	Path to the backend device. If NULL the path is constructed
- *		using the path in the backend property of the DT.
- * @offset	Offset in the device path. May be 0 to start at the beginning.
- * @max_size	Maximum size of the area used. This may be 0 to use the full
- *		size.
  * @readonly	This is a read-only state. Note that with this option set,
  *		there are no repairs done.
  */
-struct state *state_new_from_node(struct device_node *node, char *path,
-				  off_t offset, size_t max_size, bool readonly)
+struct state *state_new_from_node(struct device_node *node, bool readonly)
 {
 	struct state *state;
 	int ret = 0;
@@ -575,6 +568,7 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 	const char *storage_type = NULL;
 	const char *alias;
 	uint32_t stridesize;
+	struct device_node *partition_node;
 
 	alias = of_alias_get(node);
 	if (!alias) {
@@ -586,26 +580,20 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 	if (IS_ERR(state))
 		return state;
 
-	if (!path) {
-		struct device_node *partition_node;
-
-		partition_node = of_parse_phandle(node, "backend", 0);
-		if (!partition_node) {
-			dev_err(&state->dev, "Cannot resolve \"backend\" phandle\n");
-			ret = -EINVAL;
-			goto out_release_state;
-		}
-
-		ret = of_find_path_by_node(partition_node, &path, 0);
-		if (ret) {
-			if (ret != -EPROBE_DEFER)
-				dev_err(&state->dev, "state failed to parse path to backend: %s\n",
-				       strerror(-ret));
-			goto out_release_state;
-		}
+	partition_node = of_parse_phandle(node, "backend", 0);
+	if (!partition_node) {
+		dev_err(&state->dev, "Cannot resolve \"backend\" phandle\n");
+		ret = -EINVAL;
+		goto out_release_state;
 	}
 
-	state->backend_path = xstrdup(path);
+	ret = of_find_path_by_node(partition_node, &state->backend_path, 0);
+	if (ret) {
+		if (ret != -EPROBE_DEFER)
+			dev_err(&state->dev, "state failed to parse path to backend: %s\n",
+			       strerror(-ret));
+		goto out_release_state;
+	}
 
 	ret = of_property_read_string(node, "backend-type", &backend_type);
 	if (ret) {
@@ -625,8 +613,8 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 	if (ret)
 		goto out_release_state;
 
-	ret = state_storage_init(state, path, offset,
-				 max_size, stridesize, storage_type);
+	ret = state_storage_init(state, state->backend_path, 0,
+				 0, stridesize, storage_type);
 	if (ret)
 		goto out_release_state;
 
diff --git a/drivers/misc/state.c b/drivers/misc/state.c
index 98ed42e757..d7e385d0b5 100644
--- a/drivers/misc/state.c
+++ b/drivers/misc/state.c
@@ -28,7 +28,7 @@ static int state_probe(struct device_d *dev)
 	bool readonly = false;
 	int ret;
 
-	state = state_new_from_node(np, NULL, 0, 0, readonly);
+	state = state_new_from_node(np, readonly);
 	if (IS_ERR(state)) {
 		int ret = PTR_ERR(state);
 		if (ret == -ENODEV)
diff --git a/include/state.h b/include/state.h
index f1882ae026..4e995a19ef 100644
--- a/include/state.h
+++ b/include/state.h
@@ -10,8 +10,7 @@ int state_backend_dtb_file(struct state *state, const char *of_path,
 int state_backend_raw_file(struct state *state, const char *of_path,
 		const char *path, off_t offset, size_t size);
 
-struct state *state_new_from_node(struct device_node *node, char *path,
-				  off_t offset, size_t max_size, bool readonly);
+struct state *state_new_from_node(struct device_node *node, bool readonly);
 void state_release(struct state *state);
 
 struct state *state_by_name(const char *name);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
