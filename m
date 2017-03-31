Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbS-0008Fm-Ci
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:14 +0200
Message-Id: <20170331070346.26878-11-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/42] state: storage: initialize variable once outside loop
To: Barebox List <barebox@lists.infradead.org>

writesize is initialized with the same value in each loop iteration,
Instead, initialize it once outside the loop.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_storage.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index e1869830bd..0808c5c0b4 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -268,6 +268,7 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 	ssize_t end = dev_offset + max_size;
 	int nr_copies = 0;
 	off_t offset;
+	ssize_t writesize;
 
 	if (!end || end > meminfo->size)
 		end = meminfo->size;
@@ -278,15 +279,16 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 		return -EINVAL;
 	}
 
+	if (circular)
+		writesize = meminfo->writesize;
+	else
+		writesize = meminfo->erasesize;
+
 	for (offset = dev_offset; offset < end; offset += meminfo->erasesize) {
 		int ret;
-		ssize_t writesize = meminfo->writesize;
 		unsigned int eraseblock = offset / meminfo->erasesize;
 		bool lazy_init = true;
 
-		if (!circular)
-			writesize = meminfo->erasesize;
-
 		ret = state_backend_bucket_circular_create(storage->dev, path,
 							   &bucket,
 							   eraseblock,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
