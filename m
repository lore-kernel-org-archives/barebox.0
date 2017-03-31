Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbV-0001eM-Id
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:31 +0200
Message-Id: <20170331070346.26878-28-s.hauer@pengutronix.de>
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
Subject: [PATCH 27/42] state: backend_storage: Rename variable desired_copies
 to desired_buckets
To: Barebox List <barebox@lists.infradead.org>

We defined what a bucket is, so rename the variable that holds the
number of desired buckets from desired_copies to desired_buckets.

While at it, make locally used variable static.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_storage.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index c29004071b..1310531dd1 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -216,8 +216,8 @@ static int mtd_get_meminfo(const char *path, struct mtd_info_user *meminfo)
 	return ret;
 }
 
-/* Number of copies that should be allocated */
-const int desired_copies = 3;
+/* Number of buckets that should be used */
+static const int desired_buckets = 3;
 
 /**
  * state_storage_mtd_buckets_init - Creates storage buckets for mtd devices
@@ -270,7 +270,7 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 
 		list_add_tail(&bucket->bucket_list, &storage->buckets);
 		++n_buckets;
-		if (n_buckets >= desired_copies)
+		if (n_buckets >= desired_buckets)
 			return 0;
 	}
 
@@ -280,7 +280,7 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 	}
 
 	dev_warn(storage->dev, "Failed to initialize desired amount of buckets, only %d of %d succeeded\n",
-		 n_buckets, desired_copies);
+		 n_buckets, desired_buckets);
 	return 0;
 }
 
@@ -306,12 +306,12 @@ static int state_storage_file_buckets_init(struct state_backend_storage *storage
 		return -EINVAL;
 	}
 
-	if (max_size && max_size < desired_copies * stridesize) {
-		dev_err(storage->dev, "device is too small to hold %d copies\n", desired_copies);
+	if (max_size && max_size < desired_buckets * stridesize) {
+		dev_err(storage->dev, "device is too small to hold %d copies\n", desired_buckets);
 		return -EINVAL;
 	}
 
-	for (n = 0; n < desired_copies; n++) {
+	for (n = 0; n < desired_buckets; n++) {
 		offset = storage->offset + n * stridesize;
 		ret = state_backend_bucket_direct_create(storage->dev, storage->path,
 							 &bucket, offset,
@@ -334,9 +334,9 @@ static int state_storage_file_buckets_init(struct state_backend_storage *storage
 		return -EIO;
 	}
 
-	if (n_buckets < desired_copies)
+	if (n_buckets < desired_buckets)
 		dev_warn(storage->dev, "Failed to initialize desired amount of direct buckets, only %d of %d succeeded\n",
-			n_buckets, desired_copies);
+			n_buckets, desired_buckets);
 
 	return 0;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
