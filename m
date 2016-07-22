Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQa4J-0005Bu-FU
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 13:00:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bQa3x-0001fI-Ek
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 15:00:21 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 22 Jul 2016 15:00:19 +0200
Message-Id: <1469192421-15748-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] state: only build circular backend if MTD is enabled
To: barebox@lists.infradead.org

The circular backend depends on MTD symbols and is only useful
if MTD is present. Exclude it from the build if MTD is not enabled.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/state/Makefile          | 2 +-
 common/state/backend_storage.c | 6 ++++--
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/common/state/Makefile b/common/state/Makefile
index 23f72862b995..3e0e2c6e5516 100644
--- a/common/state/Makefile
+++ b/common/state/Makefile
@@ -5,5 +5,5 @@ obj-y += backend_format_dtb.o
 obj-y += backend_format_raw.o
 obj-y += backend_storage.o
 obj-y += backend_bucket_direct.o
-obj-y += backend_bucket_circular.o
+obj-$(CONFIG_MTD) += backend_bucket_circular.o
 obj-y += backend_bucket_cached.o
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index c4508a8aba67..5dc8c5026733 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -471,7 +471,7 @@ int state_storage_init(struct state_backend_storage *storage,
 		       off_t offset, size_t max_size, uint32_t stridesize,
 		       const char *storagetype)
 {
-	int ret;
+	int ret = -ENODEV;
 	struct mtd_info_user meminfo;
 
 	INIT_LIST_HEAD(&storage->buckets);
@@ -479,7 +479,9 @@ int state_storage_init(struct state_backend_storage *storage,
 	storage->name = storagetype;
 	storage->stridesize = stridesize;
 
-	ret = mtd_get_meminfo(path, &meminfo);
+	if (IS_ENABLED(CONFIG_MTD))
+		ret = mtd_get_meminfo(path, &meminfo);
+
 	if (!ret && !(meminfo.flags & MTD_NO_ERASE)) {
 		bool non_circular = false;
 		if (!storagetype) {
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
