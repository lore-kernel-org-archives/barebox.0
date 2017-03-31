Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbS-0008Ff-Cm
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:06 +0200
Message-Id: <20170331070346.26878-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/42] state: Use positive logic
To: Barebox List <barebox@lists.infradead.org>

bools with "non" in the names are rather confusing. Switch to
positive logic.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_storage.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 5dc8c50267..d7bd147441 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -249,7 +249,7 @@ const int desired_copies = 3;
  * @param storage Storage object
  * @param meminfo Info about the mtd device
  * @param path Path to the device
- * @param non_circular Use non-circular mode to write data that is compatible with the old on-flash format
+ * @param circular If false, use non-circular mode to write data that is compatible with the old on-flash format
  * @param dev_offset Offset to start at in the device.
  * @param max_size Maximum size to use for data. May be 0 for infinite.
  * @return 0 on success, -errno otherwise
@@ -262,7 +262,7 @@ const int desired_copies = 3;
  */
 static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 					  struct mtd_info_user *meminfo,
-					  const char *path, bool non_circular,
+					  const char *path, bool circular,
 					  off_t dev_offset, size_t max_size)
 {
 	struct state_backend_storage_bucket *bucket;
@@ -285,7 +285,7 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 		unsigned int eraseblock = offset / meminfo->erasesize;
 		bool lazy_init = true;
 
-		if (non_circular)
+		if (!circular)
 			writesize = meminfo->erasesize;
 
 		ret = state_backend_bucket_circular_create(storage->dev, path,
@@ -483,16 +483,16 @@ int state_storage_init(struct state_backend_storage *storage,
 		ret = mtd_get_meminfo(path, &meminfo);
 
 	if (!ret && !(meminfo.flags & MTD_NO_ERASE)) {
-		bool non_circular = false;
+		bool circular = true;
 		if (!storagetype) {
-			non_circular = true;
+			circular = false;
 		} else if (strcmp(storagetype, "circular")) {
 			dev_warn(storage->dev, "Unknown storagetype '%s', falling back to old format circular storage type.\n",
 				 storagetype);
-			non_circular = true;
+			circular = false;
 		}
 		return state_storage_mtd_buckets_init(storage, &meminfo, path,
-						      non_circular, offset,
+						      circular, offset,
 						      max_size);
 	} else {
 		return state_storage_file_buckets_init(storage, path, offset,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
