Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbV-0001eL-GU
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:29 +0200
Message-Id: <20170331070346.26878-26-s.hauer@pengutronix.de>
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
Subject: [PATCH 25/42] state: backend_circular: rewrite function doc
To: Barebox List <barebox@lists.infradead.org>

The commment talks about copies where buckets are meant and also
claims we start at offset 0, which may not be true. Rewrite comment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_storage.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 036204c188..d29db36cca 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -226,11 +226,9 @@ const int desired_copies = 3;
  * @param circular If false, use non-circular mode to write data that is compatible with the old on-flash format
  * @return 0 on success, -errno otherwise
  *
- * Starting from offset 0 this function tries to create circular buckets on
- * different offsets in the device. Different copies of the data are located in
- * different eraseblocks.
- * For MTD devices we use circular buckets to minimize the number of erases.
- * Circular buckets write new data always in the next free space.
+ * This function iterates over the eraseblocks and creates one bucket on
+ * each eraseblock until we have the number of desired buckets. Bad blocks
+ * will be skipped and the next block will be used.
  */
 static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 					  struct mtd_info_user *meminfo, bool circular)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
