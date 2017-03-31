Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbT-0008Fy-U9
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:16 +0200
Message-Id: <20170331070346.26878-13-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/42] state: drop lazy_init
To: Barebox List <barebox@lists.infradead.org>

lazy_init is an optimization that makes it possible to read only up to
the first valid bucket when starting. However, when restoring consistency,
immediately afterwards we have we have to initialize all buckets anyway,
so being lazy doesn't give us any gain. Remove it to simplify the code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_bucket_cached.c   | 14 --------------
 common/state/backend_bucket_circular.c | 13 ++++---------
 common/state/backend_storage.c         | 34 +---------------------------------
 common/state/state.h                   |  5 +----
 4 files changed, 6 insertions(+), 60 deletions(-)

diff --git a/common/state/backend_bucket_cached.c b/common/state/backend_bucket_cached.c
index ba0af7f373..5e7f44c8f8 100644
--- a/common/state/backend_bucket_cached.c
+++ b/common/state/backend_bucket_cached.c
@@ -110,19 +110,6 @@ static int state_backend_bucket_cache_write(struct state_backend_storage_bucket
 	return 0;
 }
 
-static int state_backend_bucket_cache_init(
-		struct state_backend_storage_bucket *bucket)
-{
-	struct state_backend_storage_bucket_cache *cache =
-			get_bucket_cache(bucket);
-
-	if (cache->raw->init) {
-		return cache->raw->init(cache->raw);
-	}
-
-	return 0;
-}
-
 static void state_backend_bucket_cache_free(
 		struct state_backend_storage_bucket *bucket)
 {
@@ -147,7 +134,6 @@ int state_backend_bucket_cached_create(struct device_d *dev,
 	cache->bucket.free = state_backend_bucket_cache_free;
 	cache->bucket.read = state_backend_bucket_cache_read;
 	cache->bucket.write = state_backend_bucket_cache_write;
-	cache->bucket.init = state_backend_bucket_cache_init;
 
 	*out = &cache->bucket;
 
diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 53c2aae803..8eae86694a 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -456,8 +456,7 @@ int state_backend_bucket_circular_create(struct device_d *dev, const char *path,
 					 struct state_backend_storage_bucket **bucket,
 					 unsigned int eraseblock,
 					 ssize_t writesize,
-					 struct mtd_info_user *mtd_uinfo,
-					 bool lazy_init)
+					 struct mtd_info_user *mtd_uinfo)
 {
 	struct state_backend_storage_bucket_circular *circ;
 	int ret;
@@ -493,13 +492,9 @@ int state_backend_bucket_circular_create(struct device_d *dev, const char *path,
 	circ->bucket.free = state_backend_bucket_circular_free;
 	*bucket = &circ->bucket;
 
-	if (!lazy_init) {
-		ret = state_backend_bucket_circular_init(*bucket);
-		if (ret)
-			goto out_free;
-	} else {
-		circ->bucket.init = state_backend_bucket_circular_init;
-	}
+	ret = state_backend_bucket_circular_init(*bucket);
+	if (ret)
+		goto out_free;
 
 	return 0;
 
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 0808c5c0b4..04d9d8f0a7 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -27,23 +27,6 @@
 
 const unsigned int min_copies_written = 1;
 
-static int bucket_lazy_init(struct state_backend_storage_bucket *bucket)
-{
-	int ret;
-
-	if (bucket->initialized)
-		return 0;
-
-	if (bucket->init) {
-		ret = bucket->init(bucket);
-		if (ret)
-			return ret;
-	}
-	bucket->initialized = true;
-
-	return 0;
-}
-
 /**
  * state_storage_write - Writes the given data to the storage
  * @param storage Storage object
@@ -69,13 +52,6 @@ int state_storage_write(struct state_backend_storage *storage,
 		return 0;
 
 	list_for_each_entry(bucket, &storage->buckets, bucket_list) {
-		ret = bucket_lazy_init(bucket);
-		if (ret) {
-			dev_warn(storage->dev, "Failed to init bucket/write state backend bucket, %d\n",
-				 ret);
-			continue;
-		}
-
 		ret = bucket->write(bucket, buf, len);
 		if (ret) {
 			dev_warn(storage->dev, "Failed to write state backend bucket, %d\n",
@@ -136,12 +112,6 @@ int state_storage_read(struct state_backend_storage *storage,
 
 	list_for_each_entry(bucket, &storage->buckets, bucket_list) {
 		*len = 0;
-		ret = bucket_lazy_init(bucket);
-		if (ret) {
-			dev_warn(storage->dev, "Failed to init bucket/read state backend bucket, %d\n",
-				 ret);
-			continue;
-		}
 
 		ret = bucket->read(bucket, buf, len);
 		if (ret) {
@@ -287,14 +257,12 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 	for (offset = dev_offset; offset < end; offset += meminfo->erasesize) {
 		int ret;
 		unsigned int eraseblock = offset / meminfo->erasesize;
-		bool lazy_init = true;
 
 		ret = state_backend_bucket_circular_create(storage->dev, path,
 							   &bucket,
 							   eraseblock,
 							   writesize,
-							   meminfo,
-							   lazy_init);
+							   meminfo);
 		if (ret) {
 			dev_warn(storage->dev, "Failed to create bucket at '%s' eraseblock %u\n",
 				 path, eraseblock);
diff --git a/common/state/state.h b/common/state/state.h
index 4ef46693c6..6f5de31dff 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -20,14 +20,12 @@ struct mtd_info_user;
  * @bucket_list A list element struct to attach this bucket to a list
  */
 struct state_backend_storage_bucket {
-	int (*init) (struct state_backend_storage_bucket * bucket);
 	int (*write) (struct state_backend_storage_bucket * bucket,
 		      const uint8_t * buf, ssize_t len);
 	int (*read) (struct state_backend_storage_bucket * bucket,
 		     uint8_t ** buf, ssize_t * len_hint);
 	void (*free) (struct state_backend_storage_bucket * bucket);
 
-	bool initialized;
 	struct list_head bucket_list;
 };
 
@@ -196,8 +194,7 @@ int state_backend_bucket_circular_create(struct device_d *dev, const char *path,
 					 struct state_backend_storage_bucket **bucket,
 					 unsigned int eraseblock,
 					 ssize_t writesize,
-					 struct mtd_info_user *mtd_uinfo,
-					 bool lazy_init);
+					 struct mtd_info_user *mtd_uinfo);
 int state_backend_bucket_cached_create(struct device_d *dev,
 				       struct state_backend_storage_bucket *raw,
 				       struct state_backend_storage_bucket **out);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
