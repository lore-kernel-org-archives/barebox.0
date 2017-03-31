Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbZ-0001eX-6I
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:22 +0200
Message-Id: <20170331070346.26878-19-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/42] state: bucket: Make output more informative
To: Barebox List <barebox@lists.infradead.org>

Print offset and number of the bucket along with the bucket
specific messages to give a hint which bucket a message is for.

Also it's pretty much expected that buckets sometimes have no
data or need cleanup, so instead of complaining loudly, only
write which bucket is used and which buckets are cleaned up.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_storage.c | 25 +++++++++++++++----------
 common/state/state.h           |  3 +++
 2 files changed, 18 insertions(+), 10 deletions(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 218c67f2d7..4e0548af85 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -89,7 +89,11 @@ refresh:
 	ret = bucket->write(bucket, buf, len);
 
 	if (ret)
-		dev_warn(storage->dev, "Failed to restore bucket\n");
+		dev_warn(storage->dev, "Failed to restore bucket %d@0x%08lx\n",
+			 bucket->num, bucket->offset);
+	else
+		dev_info(storage->dev, "restored bucket %d@0x%08lx\n",
+			 bucket->num, bucket->offset);
 
 	return ret;
 }
@@ -122,13 +126,10 @@ int state_storage_read(struct state_backend_storage *storage,
 	 */
 	list_for_each_entry(bucket, &storage->buckets, bucket_list) {
 		ret = bucket->read(bucket, &bucket->buf, &bucket->len);
-		if (ret == -EUCLEAN) {
+		if (ret == -EUCLEAN)
 			bucket->needs_refresh = 1;
-		} else if (ret) {
-			dev_warn(storage->dev, "Failed to read from state backend bucket, trying next, %d\n",
-				 ret);
+		else if (ret)
 			continue;
-		}
 
 		/*
 		 * Verify the buffer crcs. The buffer length is passed in the len argument,
@@ -137,10 +138,6 @@ int state_storage_read(struct state_backend_storage *storage,
 		ret = format->verify(format, magic, bucket->buf, &bucket->len);
 		if (!ret && !bucket_used)
 			bucket_used = bucket;
-
-		if (ret)
-			dev_warn(storage->dev, "Failed to verify read copy, trying next bucket, %d\n",
-				 ret);
 	}
 
 	if (!bucket_used) {
@@ -149,6 +146,8 @@ int state_storage_read(struct state_backend_storage *storage,
 		return -ENOENT;
 	}
 
+	dev_info(storage->dev, "Using bucket %d@0x%08lx\n", bucket_used->num, bucket_used->offset);
+
 	/*
 	 * Restore/refresh all buckets except the one we currently use (in case
 	 * it's the only usable bucket at the moment)
@@ -254,6 +253,9 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 			continue;
 		}
 
+		bucket->offset = offset;
+		bucket->num = nr_copies;
+
 		list_add_tail(&bucket->bucket_list, &storage->buckets);
 		++nr_copies;
 		if (nr_copies >= desired_copies)
@@ -313,6 +315,9 @@ static int state_storage_file_buckets_init(struct state_backend_storage *storage
 			continue;
 		}
 
+		bucket->offset = offset;
+		bucket->num = nr_copies;
+
 		list_add_tail(&bucket->bucket_list, &storage->buckets);
 		++nr_copies;
 	}
diff --git a/common/state/state.h b/common/state/state.h
index 62544a207c..f6ab2009cc 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -26,6 +26,9 @@ struct state_backend_storage_bucket {
 		     void ** buf, ssize_t * len_hint);
 	void (*free) (struct state_backend_storage_bucket * bucket);
 
+	int num;
+	off_t offset;
+
 	struct list_head bucket_list;
 
 	void *buf;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
