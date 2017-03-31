Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbb-0005fa-Nf
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:24 +0200
Message-Id: <20170331070346.26878-21-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/42] state: backend: Add more fields to struct
 state_backend_storage
To: Barebox List <barebox@lists.infradead.org>

To save a few function arguments.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_storage.c | 48 ++++++++++++++++++------------------------
 common/state/state.h           |  6 ++++++
 2 files changed, 26 insertions(+), 28 deletions(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 4e0548af85..17013855b4 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -201,10 +201,7 @@ const int desired_copies = 3;
  * state_storage_mtd_buckets_init - Creates storage buckets for mtd devices
  * @param storage Storage object
  * @param meminfo Info about the mtd device
- * @param path Path to the device
  * @param circular If false, use non-circular mode to write data that is compatible with the old on-flash format
- * @param dev_offset Offset to start at in the device.
- * @param max_size Maximum size to use for data. May be 0 for infinite.
  * @return 0 on success, -errno otherwise
  *
  * Starting from offset 0 this function tries to create circular buckets on
@@ -214,12 +211,10 @@ const int desired_copies = 3;
  * Circular buckets write new data always in the next free space.
  */
 static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
-					  struct mtd_info_user *meminfo,
-					  const char *path, bool circular,
-					  off_t dev_offset, size_t max_size)
+					  struct mtd_info_user *meminfo, bool circular)
 {
 	struct state_backend_storage_bucket *bucket;
-	ssize_t end = dev_offset + max_size;
+	ssize_t end = storage->offset + storage->max_size;
 	int nr_copies = 0;
 	off_t offset;
 	ssize_t writesize;
@@ -227,9 +222,9 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 	if (!end || end > meminfo->size)
 		end = meminfo->size;
 
-	if (!IS_ALIGNED(dev_offset, meminfo->erasesize)) {
+	if (!IS_ALIGNED(storage->offset, meminfo->erasesize)) {
 		dev_err(storage->dev, "Offset within the device is not aligned to eraseblocks. Offset is %ld, erasesize %zu\n",
-			dev_offset, meminfo->erasesize);
+			storage->offset, meminfo->erasesize);
 		return -EINVAL;
 	}
 
@@ -238,18 +233,18 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 	else
 		writesize = meminfo->erasesize;
 
-	for (offset = dev_offset; offset < end; offset += meminfo->erasesize) {
+	for (offset = storage->offset; offset < end; offset += meminfo->erasesize) {
 		int ret;
 		unsigned int eraseblock = offset / meminfo->erasesize;
 
-		ret = state_backend_bucket_circular_create(storage->dev, path,
+		ret = state_backend_bucket_circular_create(storage->dev, storage->path,
 							   &bucket,
 							   eraseblock,
 							   writesize,
 							   meminfo);
 		if (ret) {
 			dev_warn(storage->dev, "Failed to create bucket at '%s' eraseblock %u\n",
-				 path, eraseblock);
+				 storage->path, eraseblock);
 			continue;
 		}
 
@@ -275,24 +270,19 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 /**
  * state_storage_file_buckets_init - Create buckets for a conventional file descriptor
  * @param storage Storage object
- * @param path Path to file/device
- * @param dev_offset Offset in the device to start writing at.
- * @param max_size Maximum size of the data. May be 0 for infinite.
- * @param stridesize How far apart the different data copies are placed. If
- * stridesize is 0, only one copy can be created.
  * @return 0 on success, -errno otherwise
  *
  * For blockdevices and other regular files we create direct buckets beginning
  * at offset 0. Direct buckets are simple and write data always to offset 0.
  */
-static int state_storage_file_buckets_init(struct state_backend_storage *storage,
-					   const char *path, off_t dev_offset,
-					   size_t max_size, uint32_t stridesize)
+static int state_storage_file_buckets_init(struct state_backend_storage *storage)
 {
 	struct state_backend_storage_bucket *bucket;
 	int ret, n;
 	off_t offset;
 	int nr_copies = 0;
+	uint32_t stridesize = storage->stridesize;
+	size_t max_size = storage->max_size;
 
 	if (!stridesize) {
 		dev_err(storage->dev, "stridesize unspecified\n");
@@ -305,13 +295,13 @@ static int state_storage_file_buckets_init(struct state_backend_storage *storage
 	}
 
 	for (n = 0; n < desired_copies; n++) {
-		offset = dev_offset + n * stridesize;
-		ret = state_backend_bucket_direct_create(storage->dev, path,
+		offset = storage->offset + n * stridesize;
+		ret = state_backend_bucket_direct_create(storage->dev, storage->path,
 							 &bucket, offset,
 							 stridesize);
 		if (ret) {
 			dev_warn(storage->dev, "Failed to create direct bucket at '%s' offset %ld\n",
-				 path, offset);
+				 storage->path, offset);
 			continue;
 		}
 
@@ -359,6 +349,9 @@ int state_storage_init(struct state *state, const char *path,
 	storage->dev = &state->dev;
 	storage->name = storagetype;
 	storage->stridesize = stridesize;
+	storage->offset = offset;
+	storage->max_size = max_size;
+	storage->path = xstrdup(path);
 
 	if (IS_ENABLED(CONFIG_MTD))
 		ret = mtd_get_meminfo(path, &meminfo);
@@ -372,12 +365,9 @@ int state_storage_init(struct state *state, const char *path,
 				 storagetype);
 			circular = false;
 		}
-		return state_storage_mtd_buckets_init(storage, &meminfo, path,
-						      circular, offset,
-						      max_size);
+		return state_storage_mtd_buckets_init(storage, &meminfo, circular);
 	} else {
-		return state_storage_file_buckets_init(storage, path, offset,
-						       max_size, stridesize);
+		return state_storage_file_buckets_init(storage);
 	}
 
 	dev_err(storage->dev, "storage init done\n");
@@ -405,4 +395,6 @@ void state_storage_free(struct state_backend_storage *storage)
 		list_del(&bucket->bucket_list);
 		bucket->free(bucket);
 	}
+
+	free(storage->path);
 }
diff --git a/common/state/state.h b/common/state/state.h
index f6ab2009cc..a2737abeb6 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -66,6 +66,9 @@ struct state_backend_format {
  * state_backend_storage - Storage backend of the state.
  *
  * @buckets List of storage buckets that are available
+ * @stridesize The distance between copies
+ * @offset Offset in the backend device where the data starts
+ * @max_size The maximum size of the data we can use
  */
 struct state_backend_storage {
 	struct list_head buckets;
@@ -76,6 +79,9 @@ struct state_backend_storage {
 	const char *name;
 
 	uint32_t stridesize;
+	off_t offset;
+	size_t max_size;
+	char *path;
 
 	bool readonly;
 };
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
