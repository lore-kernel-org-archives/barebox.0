Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbS-0008Fi-Cj
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:09 +0200
Message-Id: <20170331070346.26878-6-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/42] state: Drop backend as extra struct type
To: Barebox List <barebox@lists.infradead.org>

struct state_backend is embedded into struct state. This additional
indirection does not have any real gain. Drop it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend.c | 48 +++++++++++++++++++++++-------------------------
 common/state/state.c   | 34 +++++++++++++++++-----------------
 common/state/state.h   | 23 ++++++-----------------
 3 files changed, 46 insertions(+), 59 deletions(-)

diff --git a/common/state/backend.c b/common/state/backend.c
index 803390e2aa..1773392e8d 100644
--- a/common/state/backend.c
+++ b/common/state/backend.c
@@ -31,19 +31,18 @@ int state_save(struct state *state)
 	uint8_t *buf;
 	ssize_t len;
 	int ret;
-	struct state_backend *backend = &state->backend;
 
 	if (!state->dirty)
 		return 0;
 
-	ret = backend->format->pack(backend->format, state, &buf, &len);
+	ret = state->format->pack(state->format, state, &buf, &len);
 	if (ret) {
 		dev_err(&state->dev, "Failed to pack state with backend format %s, %d\n",
-			backend->format->name, ret);
+			state->format->name, ret);
 		return ret;
 	}
 
-	ret = state_storage_write(&backend->storage, buf, len);
+	ret = state_storage_write(&state->storage, buf, len);
 	if (ret) {
 		dev_err(&state->dev, "Failed to write packed state, %d\n", ret);
 		goto out;
@@ -71,20 +70,19 @@ int state_load(struct state *state)
 	uint8_t *buf;
 	ssize_t len;
 	int ret;
-	struct state_backend *backend = &state->backend;
 
-	ret = state_storage_read(&backend->storage, backend->format,
+	ret = state_storage_read(&state->storage, state->format,
 				 state->magic, &buf, &len);
 	if (ret) {
 		dev_err(&state->dev, "Failed to read state with format %s, %d\n",
-			backend->format->name, ret);
+			state->format->name, ret);
 		return ret;
 	}
 
-	ret = backend->format->unpack(backend->format, state, buf, len);
+	ret = state->format->unpack(state->format, state, buf, len);
 	if (ret) {
 		dev_err(&state->dev, "Failed to unpack read data with format %s although verified, %d\n",
-			backend->format->name, ret);
+			state->format->name, ret);
 		goto out;
 	}
 
@@ -95,17 +93,17 @@ out:
 	return ret;
 }
 
-static int state_format_init(struct state_backend *backend,
+static int state_format_init(struct state *state,
 			     struct device_d *dev, const char *backend_format,
 			     struct device_node *node, const char *state_name)
 {
 	int ret;
 
 	if (!strcmp(backend_format, "raw")) {
-		ret = backend_format_raw_create(&backend->format, node,
+		ret = backend_format_raw_create(&state->format, node,
 						state_name, dev);
 	} else if (!strcmp(backend_format, "dtb")) {
-		ret = backend_format_dtb_create(&backend->format, dev);
+		ret = backend_format_dtb_create(&state->format, dev);
 	} else {
 		dev_err(dev, "Invalid backend format %s\n",
 			backend_format);
@@ -143,7 +141,7 @@ static void state_format_free(struct state_backend_format *format)
  * autoselect some backwardscompatible backend options
  * @return 0 on success, -errno otherwise
  */
-int state_backend_init(struct state_backend *backend, struct device_d *dev,
+int state_backend_init(struct state *state, struct device_d *dev,
 		       struct device_node *node, const char *backend_format,
 		       const char *storage_path, const char *state_name, const
 		       char *of_path, off_t offset, size_t max_size,
@@ -151,35 +149,35 @@ int state_backend_init(struct state_backend *backend, struct device_d *dev,
 {
 	int ret;
 
-	ret = state_format_init(backend, dev, backend_format, node, state_name);
+	ret = state_format_init(state, dev, backend_format, node, state_name);
 	if (ret)
 		return ret;
 
-	ret = state_storage_init(&backend->storage, dev, storage_path, offset,
+	ret = state_storage_init(&state->storage, dev, storage_path, offset,
 				 max_size, stridesize, storagetype);
 	if (ret)
 		goto out_free_format;
 
-	backend->of_path = xstrdup(of_path);
+	state->of_backend_path = xstrdup(of_path);
 
 	return 0;
 
 out_free_format:
-	state_format_free(backend->format);
-	backend->format = NULL;
+	state_format_free(state->format);
+	state->format = NULL;
 
 	return ret;
 }
 
-void state_backend_set_readonly(struct state_backend *backend)
+void state_backend_set_readonly(struct state *state)
 {
-	state_storage_set_readonly(&backend->storage);
+	state_storage_set_readonly(&state->storage);
 }
 
-void state_backend_free(struct state_backend *backend)
+void state_backend_free(struct state *state)
 {
-	state_storage_free(&backend->storage);
-	if (backend->format)
-		state_format_free(backend->format);
-	free(backend->of_path);
+	state_storage_free(&state->storage);
+	if (state->format)
+		state_format_free(state->format);
+	free(state->of_path);
 }
diff --git a/common/state/state.c b/common/state/state.c
index 6e6b3a6f08..62357fb248 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -328,21 +328,21 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 	}
 
 	/* backend-type */
-	if (!state->backend.format) {
+	if (!state->format) {
 		ret = -ENODEV;
 		goto out;
 	}
 
 	p = of_new_property(new_node, "backend-type",
-			    state->backend.format->name,
-			    strlen(state->backend.format->name) + 1);
+			    state->format->name,
+			    strlen(state->format->name) + 1);
 	if (!p) {
 		ret = -ENOMEM;
 		goto out;
 	}
 
 	/* backend phandle */
-	backend_node = of_find_node_by_path_from(root, state->backend.of_path);
+	backend_node = of_find_node_by_path_from(root, state->of_backend_path);
 	if (!backend_node) {
 		ret = -ENODEV;
 		goto out;
@@ -353,9 +353,9 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 	if (ret)
 		goto out;
 
-	if (!strcmp("raw", state->backend.format->name)) {
+	if (!strcmp("raw", state->format->name)) {
 		struct digest *digest =
-		    state_backend_format_raw_get_digest(state->backend.format);
+		    state_backend_format_raw_get_digest(state->format);
 		if (digest) {
 			p = of_new_property(new_node, "algo",
 					    digest_name(digest),
@@ -367,19 +367,19 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 		}
 	}
 
-	if (state->backend.storage.name) {
+	if (state->storage.name) {
 		p = of_new_property(new_node, "backend-storage-type",
-				    state->backend.storage.name,
-				    strlen(state->backend.storage.name) + 1);
+				    state->storage.name,
+				    strlen(state->storage.name) + 1);
 		if (!p) {
 			ret = -ENOMEM;
 			goto out;
 		}
 	}
 
-	if (state->backend.storage.stridesize) {
+	if (state->storage.stridesize) {
 		ret = of_property_write_u32(new_node, "backend-stridesize",
-				state->backend.storage.stridesize);
+				state->storage.stridesize);
 		if (ret)
 			goto out;
 	}
@@ -408,7 +408,7 @@ void state_release(struct state *state)
 	of_unregister_fixup(of_state_fixup, state);
 	list_del(&state->list);
 	unregister_device(&state->dev);
-	state_backend_free(&state->backend);
+	state_backend_free(state);
 	free(state->of_path);
 	free(state);
 }
@@ -487,14 +487,14 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 		dev_info(&state->dev, "No backend-storage-type found, using default.\n");
 	}
 
-	ret = state_backend_init(&state->backend, &state->dev, node,
+	ret = state_backend_init(state, &state->dev, node,
 				 backend_type, path, alias, of_path, offset,
 				 max_size, stridesize, storage_type);
 	if (ret)
 		goto out_release_state;
 
 	if (readonly)
-		state_backend_set_readonly(&state->backend);
+		state_backend_set_readonly(state);
 
 	ret = state_from_node(state, node, 1);
 	if (ret) {
@@ -569,10 +569,10 @@ void state_info(void)
 
 	list_for_each_entry(state, &state_list, list) {
 		printf("%-20s ", state->name);
-		if (state->backend.format)
+		if (state->format)
 			printf("(backend: %s, path: %s)\n",
-			       state->backend.format->name,
-			       state->backend.of_path);
+			       state->format->name,
+			       state->of_backend_path);
 		else
 			printf("(no backend)\n");
 	}
diff --git a/common/state/state.h b/common/state/state.h
index ddf45239eb..cb248fc609 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -75,19 +75,6 @@ struct state_backend_storage {
 	bool readonly;
 };
 
-/**
- * state_backend - State Backend object
- *
- * @format Backend format object
- * @storage Backend storage object
- * @of_path Path to the DT node
- */
-struct state_backend {
-	struct state_backend_format *format;
-	struct state_backend_storage storage;
-	char *of_path;
-};
-
 struct state {
 	struct list_head list; /* Entry to enqueue on list of states */
 
@@ -100,7 +87,9 @@ struct state {
 	unsigned int dirty;
 	unsigned int save_on_shutdown;
 
-	struct state_backend backend;
+	struct state_backend_format *format;
+	struct state_backend_storage storage;
+	char *of_backend_path;
 };
 
 enum state_convert {
@@ -216,13 +205,13 @@ int state_backend_bucket_cached_create(struct device_d *dev,
 struct state_variable *state_find_var(struct state *state, const char *name);
 struct digest *state_backend_format_raw_get_digest(struct state_backend_format
 						   *format);
-int state_backend_init(struct state_backend *backend, struct device_d *dev,
+int state_backend_init(struct state *state, struct device_d *dev,
 		       struct device_node *node, const char *backend_format,
 		       const char *storage_path, const char *state_name, const
 		       char *of_path, off_t offset, size_t max_size,
 		       uint32_t stridesize, const char *storagetype);
-void state_backend_set_readonly(struct state_backend *backend);
-void state_backend_free(struct state_backend *backend);
+void state_backend_set_readonly(struct state *state);
+void state_backend_free(struct state *state);
 void state_storage_free(struct state_backend_storage *storage);
 int state_backend_bucket_direct_create(struct device_d *dev, const char *path,
 				       struct state_backend_storage_bucket **bucket,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
