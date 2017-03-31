Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbS-0008Fj-Cl
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:11 +0200
Message-Id: <20170331070346.26878-8-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/42] state: open code state_backend_init in caller
To: Barebox List <barebox@lists.infradead.org>

Safes a lot of argument passing to a function that is used
only once.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.c | 70 ++++++++++------------------------------------------
 1 file changed, 13 insertions(+), 57 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 570fa498c5..fce8fcc943 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -132,69 +132,18 @@ static int state_format_init(struct state *state,
 
 static void state_format_free(struct state_backend_format *format)
 {
+	if (!format)
+		return;
+
 	if (format->free)
 		format->free(format);
 }
 
-/**
- * state_backend_init - Initiates the backend storage and format using the
- * passed arguments
- * @param backend state backend
- * @param dev Device pointer used for prints
- * @param node the DT device node corresponding to the state
- * @param backend_format a string describing the format. Valid values are 'raw'
- * and 'dtb' currently
- * @param storage_path Path to the backend storage file/device/partition/...
- * @param state_name Name of the state
- * @param of_path Path in the devicetree
- * @param stridesize stridesize in case we have a medium without eraseblocks.
- * stridesize describes how far apart copies of the same data should be stored.
- * For blockdevices it makes sense to align them on blocksize.
- * @param storagetype Type of the storage backend. This may be NULL where we
- * autoselect some backwardscompatible backend options
- * @return 0 on success, -errno otherwise
- */
-static int state_backend_init(struct state *state, struct device_d *dev,
-		       struct device_node *node, const char *backend_format,
-		       const char *storage_path, const char *state_name, const
-		       char *of_path, off_t offset, size_t max_size,
-		       uint32_t stridesize, const char *storagetype)
-{
-	int ret;
-
-	ret = state_format_init(state, dev, backend_format, node, state_name);
-	if (ret)
-		return ret;
-
-	ret = state_storage_init(&state->storage, dev, storage_path, offset,
-				 max_size, stridesize, storagetype);
-	if (ret)
-		goto out_free_format;
-
-	state->of_backend_path = xstrdup(of_path);
-
-	return 0;
-
-out_free_format:
-	state_format_free(state->format);
-	state->format = NULL;
-
-	return ret;
-}
-
 void state_backend_set_readonly(struct state *state)
 {
 	state_storage_set_readonly(&state->storage);
 }
 
-void state_backend_free(struct state *state)
-{
-	state_storage_free(&state->storage);
-	if (state->format)
-		state_format_free(state->format);
-	free(state->of_path);
-}
-
 static struct state *state_new(const char *name)
 {
 	struct state *state;
@@ -569,7 +518,9 @@ void state_release(struct state *state)
 	of_unregister_fixup(of_state_fixup, state);
 	list_del(&state->list);
 	unregister_device(&state->dev);
-	state_backend_free(state);
+	state_storage_free(&state->storage);
+	state_format_free(state->format);
+	free(state->of_backend_path);
 	free(state->of_path);
 	free(state);
 }
@@ -648,12 +599,17 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 		dev_info(&state->dev, "No backend-storage-type found, using default.\n");
 	}
 
-	ret = state_backend_init(state, &state->dev, node,
-				 backend_type, path, alias, of_path, offset,
+	ret = state_format_init(state, &state->dev, backend_type, node, alias);
+	if (ret)
+		goto out_release_state;
+
+	ret = state_storage_init(&state->storage, &state->dev, path, offset,
 				 max_size, stridesize, storage_type);
 	if (ret)
 		goto out_release_state;
 
+	state->of_backend_path = xstrdup(of_path);
+
 	if (readonly)
 		state_backend_set_readonly(state);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
