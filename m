Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbS-0008Fk-Cq
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:13 +0200
Message-Id: <20170331070346.26878-10-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/42] state: pass struct state * to storage functions
To: Barebox List <barebox@lists.infradead.org>

We can get a state_backend_storage * and the device * from struct state,
so pass this to the storage functions rather than the two pointers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_storage.c | 7 +++----
 common/state/state.c           | 2 +-
 common/state/state.h           | 3 +--
 3 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 5481f27df9..e1869830bd 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -454,7 +454,6 @@ static int state_storage_file_buckets_init(struct state_backend_storage *storage
 
 /**
  * state_storage_init - Init backend storage
- * @param storage Storage object
  * @param path Path to the backend storage file
  * @param dev_offset Offset in the device to start writing at.
  * @param max_size Maximum size of the data. May be 0 for infinite.
@@ -465,16 +464,16 @@ static int state_storage_file_buckets_init(struct state_backend_storage *storage
  *
  * Depending on the filetype, we create mtd buckets or normal file buckets.
  */
-int state_storage_init(struct state_backend_storage *storage,
-		       struct device_d *dev, const char *path,
+int state_storage_init(struct state *state, const char *path,
 		       off_t offset, size_t max_size, uint32_t stridesize,
 		       const char *storagetype)
 {
+	struct state_backend_storage *storage = &state->storage;
 	int ret = -ENODEV;
 	struct mtd_info_user meminfo;
 
 	INIT_LIST_HEAD(&storage->buckets);
-	storage->dev = dev;
+	storage->dev = &state->dev;
 	storage->name = storagetype;
 	storage->stridesize = stridesize;
 
diff --git a/common/state/state.c b/common/state/state.c
index 87b704feba..8d2dca2523 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -602,7 +602,7 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 	if (ret)
 		goto out_release_state;
 
-	ret = state_storage_init(&state->storage, &state->dev, path, offset,
+	ret = state_storage_init(state, path, offset,
 				 max_size, stridesize, storage_type);
 	if (ret)
 		goto out_release_state;
diff --git a/common/state/state.h b/common/state/state.h
index 254ff31a06..4ef46693c6 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -186,8 +186,7 @@ int backend_format_raw_create(struct state_backend_format **format,
 			      struct device_d *dev);
 int backend_format_dtb_create(struct state_backend_format **format,
 			      struct device_d *dev);
-int state_storage_init(struct state_backend_storage *storage,
-		       struct device_d *dev, const char *path,
+int state_storage_init(struct state *state, const char *path,
 		       off_t offset, size_t max_size, uint32_t stridesize,
 		       const char *storagetype);
 void state_storage_set_readonly(struct state_backend_storage *storage);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
