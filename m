Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6YIA-0004rh-Mm
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 09:13:20 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id A98FBA0023F
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2018 11:13:20 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Thu, 12 Apr 2018 11:13:01 +0200
Message-Id: <1523524382-19217-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v2 1/2] common: state: Add property to protect existing data
To: barebox@lists.infradead.org

After an update to a newer barebox version with an enabled state
framework, existing data in storage memories could be overwritten.

Add a new property to check in front of every write task, if the meta
magic field only contains the magic number, zeros or ones.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
Changes:
	v2: Added check for circular backend
	    Improved error message if content was found

 .../devicetree/bindings/barebox/barebox,state.rst     |  3 +++
 common/state/backend_bucket_circular.c                |  8 +++++---
 common/state/backend_bucket_direct.c                  |  2 ++
 common/state/state.c                                  | 19 ++++++++++++++++++-
 common/state/state.h                                  |  2 ++
 5 files changed, 30 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index 872bac0..2893937 100644
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
diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 2324903..933493e 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -396,11 +396,13 @@ static int state_backend_bucket_circular_init(
 			meta = (struct state_backend_storage_bucket_circular_meta *)
 					(buf + sub_offset + circ->writesize - sizeof(*meta));
 
-			if (meta->magic != circular_magic)
+			if (meta->magic != circular_magic) {
 				written_length = 0;
-			else
+				if (meta->magic != ~0 && !!meta->magic)
+					bucket->wrong_magic = 1;
+			} else {
 				written_length = meta->written_length;
-
+			}
 			break;
 		}
 	}
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
diff --git a/common/state/state.c b/common/state/state.c
index 73dfb58..25d9502 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -44,6 +44,8 @@ int state_save(struct state *state)
 	void *buf;
 	ssize_t len;
 	int ret;
+	struct state_backend_storage_bucket *bucket;
+	struct state_backend_storage *storage;
 
 	if (!state->dirty)
 		return 0;
@@ -55,7 +57,19 @@ int state_save(struct state *state)
 		return ret;
 	}
 
-	ret = state_storage_write(&state->storage, buf, len);
+	storage = &state->storage;
+	if (state->keep_prev_content) {
+		bool has_content = 0;
+		list_for_each_entry(bucket, &storage->buckets, bucket_list)
+			has_content |= bucket->wrong_magic;
+		if (has_content) {
+			dev_err(&state->dev, "Found foreign content on backend, won't overwrite.\n");
+			ret = -EPERM;
+			goto out;
+		}
+	}
+
+	ret = state_storage_write(storage, buf, len);
 	if (ret) {
 		dev_err(&state->dev, "Failed to write packed state, %d\n", ret);
 		goto out;
@@ -623,6 +637,9 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 
 	of_property_read_string(node, "backend-storage-type", &storage_type);
 
+	state->keep_prev_content = of_property_read_bool(node,
+							"keep-previous-content");
+
 	ret = state_format_init(state, backend_type, node, alias);
 	if (ret)
 		goto out_release_state;
diff --git a/common/state/state.h b/common/state/state.h
index 6670523..3a0662f 100644
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
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
