Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbZ-0001eW-6K
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:20 +0200
Message-Id: <20170331070346.26878-17-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/42] state: Drop cache bucket
To: Barebox List <barebox@lists.infradead.org>

The cache bucket sits between the storage functions and the backend
storage. We only read from the storage once, so there is no need to cache
anything. The real purpose of the cache bucket is to keep the -EUCLEAN
information when a NAND block needs to be rewritten and to keep the read
buffers as long as the backend iterates over all buckets trying to find
the one we want to use.

This can be coded easier and more obvious in the backend code, so drop
the cache bucket.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/Makefile                |   1 -
 common/state/backend_bucket_cached.c | 141 -----------------------------------
 common/state/backend_storage.c       | 112 +++++++++++++++++-----------
 common/state/state.h                 |   7 +-
 4 files changed, 71 insertions(+), 190 deletions(-)
 delete mode 100644 common/state/backend_bucket_cached.c

diff --git a/common/state/Makefile b/common/state/Makefile
index d3518feab4..fcf9add52c 100644
--- a/common/state/Makefile
+++ b/common/state/Makefile
@@ -5,4 +5,3 @@ obj-y += backend_format_raw.o
 obj-y += backend_storage.o
 obj-y += backend_bucket_direct.o
 obj-$(CONFIG_MTD) += backend_bucket_circular.o
-obj-y += backend_bucket_cached.o
diff --git a/common/state/backend_bucket_cached.c b/common/state/backend_bucket_cached.c
deleted file mode 100644
index f8a7785387..0000000000
--- a/common/state/backend_bucket_cached.c
+++ /dev/null
@@ -1,141 +0,0 @@
-/*
- * Copyright (C) 2016 Pengutronix, Markus Pargmann <mpa@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include "state.h"
-
-struct state_backend_storage_bucket_cache {
-	struct state_backend_storage_bucket bucket;
-
-	struct state_backend_storage_bucket *raw;
-
-	void *data;
-	ssize_t data_len;
-	bool force_write;
-
-	/* For outputs */
-	struct device_d *dev;
-};
-
-static inline struct state_backend_storage_bucket_cache
-    *get_bucket_cache(struct state_backend_storage_bucket *bucket)
-{
-	return container_of(bucket,
-			    struct state_backend_storage_bucket_cache,
-			    bucket);
-}
-
-static inline void state_backend_bucket_cache_drop(
-		struct state_backend_storage_bucket_cache *cache)
-{
-	if (cache->data) {
-		free(cache->data);
-		cache->data = NULL;
-		cache->data_len = 0;
-	}
-}
-
-static int state_backend_bucket_cache_fill(
-		struct state_backend_storage_bucket_cache *cache)
-{
-	int ret;
-
-	ret = cache->raw->read(cache->raw, &cache->data, &cache->data_len);
-	if (ret == -EUCLEAN) {
-		cache->force_write = true;
-		ret = 0;
-	}
-
-	return ret;
-}
-
-static int state_backend_bucket_cache_read(struct state_backend_storage_bucket *bucket,
-					   void ** buf_out,
-					   ssize_t * len_hint)
-{
-	struct state_backend_storage_bucket_cache *cache =
-			get_bucket_cache(bucket);
-	int ret;
-
-	if (!cache->data) {
-		ret = state_backend_bucket_cache_fill(cache);
-		if (ret)
-			return ret;
-	}
-
-	if (cache->data) {
-		*buf_out = xmemdup(cache->data, cache->data_len);
-		if (!*buf_out)
-			return -ENOMEM;
-		*len_hint = cache->data_len;
-	}
-
-	return 0;
-}
-
-static int state_backend_bucket_cache_write(struct state_backend_storage_bucket *bucket,
-					    const void * buf, ssize_t len)
-{
-	struct state_backend_storage_bucket_cache *cache =
-			get_bucket_cache(bucket);
-	int ret;
-
-	if (!cache->force_write) {
-		if (!cache->data)
-			ret = state_backend_bucket_cache_fill(cache);
-
-		if (cache->data_len == len && !memcmp(cache->data, buf, len))
-			return 0;
-	}
-
-	state_backend_bucket_cache_drop(cache);
-
-	ret = cache->raw->write(cache->raw, buf, len);
-	if (ret)
-		return ret;
-
-	cache->data = xmemdup(buf, len);
-	cache->data_len = len;
-	return 0;
-}
-
-static void state_backend_bucket_cache_free(
-		struct state_backend_storage_bucket *bucket)
-{
-	struct state_backend_storage_bucket_cache *cache =
-			get_bucket_cache(bucket);
-
-	state_backend_bucket_cache_drop(cache);
-	cache->raw->free(cache->raw);
-	free(cache);
-}
-
-int state_backend_bucket_cached_create(struct device_d *dev,
-				       struct state_backend_storage_bucket *raw,
-				       struct state_backend_storage_bucket **out)
-{
-	struct state_backend_storage_bucket_cache *cache;
-
-	cache = xzalloc(sizeof(*cache));
-	cache->raw = raw;
-	cache->dev = dev;
-
-	cache->bucket.free = state_backend_bucket_cache_free;
-	cache->bucket.read = state_backend_bucket_cache_read;
-	cache->bucket.write = state_backend_bucket_cache_write;
-
-	*out = &cache->bucket;
-
-	return 0;
-}
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 6ec58a0c97..218c67f2d7 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -69,22 +69,29 @@ int state_storage_write(struct state_backend_storage *storage,
 	return -EIO;
 }
 
-/**
- * state_storage_restore_consistency - Restore consistency on all storage backends
- * @param storage Storage object
- * @param buf Buffer with valid data that should be on all buckets after this operation
- * @param len Length of the buffer
- * @return 0 on success, -errno otherwise
- *
- * This function brings valid data onto all buckets we have to ensure that all
- * data copies are in sync. In the current implementation we just write the data
- * to all buckets. Bucket implementations that need to keep the number of writes
- * low, can read their own copy first and compare it.
- */
-int state_storage_restore_consistency(struct state_backend_storage *storage,
-				      const void * buf, ssize_t len)
+static int bucket_refresh(struct state_backend_storage *storage,
+			  struct state_backend_storage_bucket *bucket, void *buf, ssize_t len)
 {
-	return state_storage_write(storage, buf, len);
+	int ret;
+
+	if (bucket->needs_refresh)
+		goto refresh;
+
+	if (bucket->len != len)
+		goto refresh;
+
+	if (memcmp(bucket->buf, buf, len))
+		goto refresh;
+
+	return 0;
+
+refresh:
+	ret = bucket->write(bucket, buf, len);
+
+	if (ret)
+		dev_warn(storage->dev, "Failed to restore bucket\n");
+
+	return ret;
 }
 
 /**
@@ -94,7 +101,6 @@ int state_storage_restore_consistency(struct state_backend_storage *storage,
  * @param magic state magic value
  * @param buf The newly allocated data area will be stored in this pointer
  * @param len The resulting length of the buffer
- * @param len_hint Hint of how big the data may be.
  * @return 0 on success, -errno otherwise. buf and len will be set to valid
  * values on success.
  *
@@ -107,12 +113,18 @@ int state_storage_read(struct state_backend_storage *storage,
 		       struct state_backend_format *format,
 		       uint32_t magic, void **buf, ssize_t *len)
 {
-	struct state_backend_storage_bucket *bucket;
+	struct state_backend_storage_bucket *bucket, *bucket_used = NULL;
 	int ret;
 
+	/*
+	 * Iterate over all buckets. The first valid one we find is the
+	 * one we want to use.
+	 */
 	list_for_each_entry(bucket, &storage->buckets, bucket_list) {
-		ret = bucket->read(bucket, buf, len);
-		if (ret) {
+		ret = bucket->read(bucket, &bucket->buf, &bucket->len);
+		if (ret == -EUCLEAN) {
+			bucket->needs_refresh = 1;
+		} else if (ret) {
 			dev_warn(storage->dev, "Failed to read from state backend bucket, trying next, %d\n",
 				 ret);
 			continue;
@@ -122,22 +134,46 @@ int state_storage_read(struct state_backend_storage *storage,
 		 * Verify the buffer crcs. The buffer length is passed in the len argument,
 		 * .verify overwrites it with the length actually used.
 		 */
-		ret = format->verify(format, magic, *buf, len);
-		if (!ret) {
-			goto found;
-		}
-		free(*buf);
-		dev_warn(storage->dev, "Failed to verify read copy, trying next bucket, %d\n",
-			 ret);
+		ret = format->verify(format, magic, bucket->buf, &bucket->len);
+		if (!ret && !bucket_used)
+			bucket_used = bucket;
+
+		if (ret)
+			dev_warn(storage->dev, "Failed to verify read copy, trying next bucket, %d\n",
+				 ret);
+	}
+
+	if (!bucket_used) {
+		dev_err(storage->dev, "Failed to find any valid state copy in any bucket\n");
+
+		return -ENOENT;
 	}
 
-	dev_err(storage->dev, "Failed to find any valid state copy in any bucket\n");
+	/*
+	 * Restore/refresh all buckets except the one we currently use (in case
+	 * it's the only usable bucket at the moment)
+	 */
+	list_for_each_entry(bucket, &storage->buckets, bucket_list) {
+		if (bucket == bucket_used)
+			continue;
+
+		ret = bucket_refresh(storage, bucket, bucket_used->buf, bucket_used->len);
+
+		/* Free buffer from the unused buckets */
+		free(bucket->buf);
+		bucket->buf = NULL;
+	}
 
-	return -ENOENT;
+	/*
+	 * Restore/refresh the bucket we currently use
+	 */
+	ret = bucket_refresh(storage, bucket_used, bucket_used->buf, bucket_used->len);
 
-found:
-	/* A failed restore consistency is not a failure of reading the state */
-	state_storage_restore_consistency(storage, *buf, *len);
+	*buf = bucket_used->buf;
+	*len = bucket_used->len;
+
+	/* buffer from the used bucket is passed to the caller, do not free */
+	bucket_used->buf = NULL;
 
 	return 0;
 }
@@ -218,13 +254,6 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 			continue;
 		}
 
-		ret = state_backend_bucket_cached_create(storage->dev, bucket,
-							 &bucket);
-		if (ret) {
-			dev_warn(storage->dev, "Failed to setup cache bucket, continuing without cache, %d\n",
-				 ret);
-		}
-
 		list_add_tail(&bucket->bucket_list, &storage->buckets);
 		++nr_copies;
 		if (nr_copies >= desired_copies)
@@ -284,13 +313,6 @@ static int state_storage_file_buckets_init(struct state_backend_storage *storage
 			continue;
 		}
 
-		ret = state_backend_bucket_cached_create(storage->dev, bucket,
-							 &bucket);
-		if (ret) {
-			dev_warn(storage->dev, "Failed to setup cache bucket, continuing without cache, %d\n",
-				 ret);
-		}
-
 		list_add_tail(&bucket->bucket_list, &storage->buckets);
 		++nr_copies;
 	}
diff --git a/common/state/state.h b/common/state/state.h
index 52d332e27d..62544a207c 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -27,6 +27,10 @@ struct state_backend_storage_bucket {
 	void (*free) (struct state_backend_storage_bucket * bucket);
 
 	struct list_head bucket_list;
+
+	void *buf;
+	ssize_t len;
+	bool needs_refresh;
 };
 
 /**
@@ -208,9 +212,6 @@ int state_backend_bucket_direct_create(struct device_d *dev, const char *path,
 				       off_t offset, ssize_t max_size);
 int state_storage_write(struct state_backend_storage *storage,
 			const void * buf, ssize_t len);
-int state_storage_restore_consistency(struct state_backend_storage
-				      *storage, const void * buf,
-				      ssize_t len);
 int state_storage_read(struct state_backend_storage *storage,
 		       struct state_backend_format *format,
 		       uint32_t magic, void **buf, ssize_t *len);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
