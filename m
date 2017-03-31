Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbc-0001eh-7A
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:34 +0200
Message-Id: <20170331070346.26878-31-s.hauer@pengutronix.de>
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
Subject: [PATCH 30/42] state: backend_storage: rename more variables
To: Barebox List <barebox@lists.infradead.org>

Use "buckets" rather than "copies" in variable names.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_storage.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 8d0f285f77..a5688aa424 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -47,7 +47,7 @@
  * when storing a new state we can just write all buckets in order.
  */
 
-static const unsigned int min_copies_written = 1;
+static const unsigned int min_buckets_written = 1;
 
 /**
  * state_storage_write - Writes the given data to the storage
@@ -60,7 +60,7 @@ static const unsigned int min_copies_written = 1;
  * operation on all of them. Writes are always in the same sequence. This
  * ensures, that reading in the same sequence will always return the latest
  * written valid data first.
- * We try to at least write min_copies_written. If this fails we return with an
+ * We try to at least write min_buckets_written. If this fails we return with an
  * error.
  */
 int state_storage_write(struct state_backend_storage *storage,
@@ -68,7 +68,7 @@ int state_storage_write(struct state_backend_storage *storage,
 {
 	struct state_backend_storage_bucket *bucket;
 	int ret;
-	int copies_written = 0;
+	int buckets_written = 0;
 
 	if (storage->readonly)
 		return 0;
@@ -79,15 +79,15 @@ int state_storage_write(struct state_backend_storage *storage,
 			dev_warn(storage->dev, "Failed to write state backend bucket, %d\n",
 				 ret);
 		} else {
-			++copies_written;
+			++buckets_written;
 		}
 	}
 
-	if (copies_written >= min_copies_written)
+	if (buckets_written >= min_buckets_written)
 		return 0;
 
 	dev_err(storage->dev, "Failed to write state to at least %d buckets. Successfully written to %d buckets\n",
-		min_copies_written, copies_written);
+		min_buckets_written, buckets_written);
 	return -EIO;
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
