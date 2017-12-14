Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1ePVnw-0008K3-6k
 for barebox@lists.infradead.org; Thu, 14 Dec 2017 15:52:19 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id A1BE7A003D8
 for <barebox@lists.infradead.org>; Thu, 14 Dec 2017 16:53:48 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Thu, 14 Dec 2017 16:51:36 +0100
Message-Id: <1513266697-324-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 1/2] common: state: Add property to protect existing data
To: barebox@lists.infradead.org

After an update to a newer barebox version with an enabled state
framework, existing data in storage memories could be overwritten.

Add a new property to check in front of every write task, if the meta
magic field only contains the magic number, zeros or ones.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 .../devicetree/bindings/barebox/barebox,state.rst     |  3 +++
 common/state/backend_bucket_direct.c                  |  2 ++
 common/state/backend_storage.c                        |  1 +
 common/state/state.c                                  | 19 ++++++++++++++++++-
 common/state/state.h                                  |  2 ++
 5 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index cebb5f8..db5b041 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -55,6 +55,9 @@ Optional Properties
 * ``algo``: A HMAC algorithm used to detect manipulation of the data
   or header, sensible values follow this pattern ``hmac(<HASH>)``,
   e.g. ``hmac(sha256)``. Only available for the ``backend-type`` ``raw``.
+* ``keep-previous-content``: Check if a the bucket meta magic field contains
+  other data than the magic value. If so, the backend will not write the state
+  to prevent unconditionally overwrites of existing data.
 
 .. note:: For the ``backend-storage-type`` the keyword ``noncircular`` is still
    supported as a fall back to an old storage format. Recommendation is to not
diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
index 958696e..9d6a337 100644
--- a/common/state/backend_bucket_direct.c
+++ b/common/state/backend_bucket_direct.c
@@ -69,6 +69,8 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
 	if (meta.magic == direct_magic) {
 		read_len = meta.written_length;
 	} else {
+		if (meta.magic != ~0 && !!meta.magic)
+			bucket->wrong_magic = 1;
 		if (!IS_ENABLED(CONFIG_STATE_BACKWARD_COMPATIBLE)) {
 			dev_err(direct->dev, "No meta data header found\n");
 			dev_dbg(direct->dev, "Enable backward compatibility or increase stride size\n");
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index c6ebe86..f0a169d 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -152,6 +152,7 @@ int state_storage_read(struct state_backend_storage *storage,
 	 * one we want to use.
 	 */
 	list_for_each_entry(bucket, &storage->buckets, bucket_list) {
+		bucket->wrong_magic = 0;
 		ret = bucket->read(bucket, &bucket->buf, &bucket->len);
 		if (ret == -EUCLEAN)
 			bucket->needs_refresh = 1;
diff --git a/common/state/state.c b/common/state/state.c
index 6399bd3..e110542 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -44,6 +44,9 @@ int state_save(struct state *state)
 	void *buf;
 	ssize_t len;
 	int ret;
+	struct state_backend_storage_bucket *bucket;
+	struct state_backend_storage *storage;
+	bool has_content;
 
 	if (!state->dirty)
 		return 0;
@@ -55,7 +58,18 @@ int state_save(struct state *state)
 		return ret;
 	}
 
-	ret = state_storage_write(&state->storage, buf, len);
+	storage = &state->storage;
+	if (state->keep_prev_content) {
+		has_content = 0;
+		list_for_each_entry(bucket, &storage->buckets, bucket_list)
+			has_content |= bucket->wrong_magic;
+		if (has_content) {
+			dev_dbg(&state->dev, "Found content on a backend.\n");
+			goto out;
+		}
+	}
+
+	ret = state_storage_write(storage, buf, len);
 	if (ret) {
 		dev_err(&state->dev, "Failed to write packed state, %d\n", ret);
 		goto out;
@@ -605,6 +619,9 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 		}
 	}
 
+	state->keep_prev_content = of_property_read_bool(node,
+							"keep-previous-content");
+
 	state->backend_path = xstrdup(path);
 
 	ret = of_property_read_string(node, "backend-type", &backend_type);
diff --git a/common/state/state.h b/common/state/state.h
index fcc6b9f..a411b96 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -46,6 +46,7 @@ struct state_backend_storage_bucket {
 	void *buf;
 	ssize_t len;
 	bool needs_refresh;
+	bool wrong_magic;
 };
 
 /**
@@ -105,6 +106,7 @@ struct state {
 	char *of_path;
 	const char *name;
 	uint32_t magic;
+	bool keep_prev_content;
 
 	struct list_head variables; /* Sorted list of variables */
 	unsigned int dirty;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
