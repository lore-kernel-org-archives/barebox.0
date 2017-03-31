Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbV-0001eP-IV
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:30 +0200
Message-Id: <20170331070346.26878-27-s.hauer@pengutronix.de>
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
Subject: [PATCH 26/42] state: backend_storage: Rename variable nr_copies to
 n_buckets
To: Barebox List <barebox@lists.infradead.org>

We defined what a bucket is, so use n_buckets when counting buckets,
and not nr_copies.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_storage.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index d29db36cca..c29004071b 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -235,7 +235,7 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 {
 	struct state_backend_storage_bucket *bucket;
 	ssize_t end = storage->offset + storage->max_size;
-	int nr_copies = 0;
+	int n_buckets = 0;
 	off_t offset;
 	ssize_t writesize;
 
@@ -266,21 +266,21 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 			continue;
 
 		bucket->offset = offset;
-		bucket->num = nr_copies;
+		bucket->num = n_buckets;
 
 		list_add_tail(&bucket->bucket_list, &storage->buckets);
-		++nr_copies;
-		if (nr_copies >= desired_copies)
+		++n_buckets;
+		if (n_buckets >= desired_copies)
 			return 0;
 	}
 
-	if (!nr_copies) {
+	if (!n_buckets) {
 		dev_err(storage->dev, "Failed to initialize any state storage bucket\n");
 		return -EIO;
 	}
 
 	dev_warn(storage->dev, "Failed to initialize desired amount of buckets, only %d of %d succeeded\n",
-		 nr_copies, desired_copies);
+		 n_buckets, desired_copies);
 	return 0;
 }
 
@@ -297,7 +297,7 @@ static int state_storage_file_buckets_init(struct state_backend_storage *storage
 	struct state_backend_storage_bucket *bucket;
 	int ret, n;
 	off_t offset;
-	int nr_copies = 0;
+	int n_buckets = 0;
 	uint32_t stridesize = storage->stridesize;
 	size_t max_size = storage->max_size;
 
@@ -323,20 +323,20 @@ static int state_storage_file_buckets_init(struct state_backend_storage *storage
 		}
 
 		bucket->offset = offset;
-		bucket->num = nr_copies;
+		bucket->num = n_buckets;
 
 		list_add_tail(&bucket->bucket_list, &storage->buckets);
-		++nr_copies;
+		++n_buckets;
 	}
 
-	if (!nr_copies) {
+	if (!n_buckets) {
 		dev_err(storage->dev, "Failed to initialize any state direct storage bucket\n");
 		return -EIO;
 	}
 
-	if (nr_copies < desired_copies)
+	if (n_buckets < desired_copies)
 		dev_warn(storage->dev, "Failed to initialize desired amount of direct buckets, only %d of %d succeeded\n",
-			nr_copies, desired_copies);
+			n_buckets, desired_copies);
 
 	return 0;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
