Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbV-0001eQ-I5
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:32 +0200
Message-Id: <20170331070346.26878-29-s.hauer@pengutronix.de>
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
Subject: [PATCH 28/42] state: backend_storage: rewrite function doc
To: Barebox List <barebox@lists.infradead.org>

The function documentation for state_storage_file_buckets_init() is not
very accurate. Rewrite it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_storage.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 1310531dd1..bc531ef991 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -289,8 +289,8 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
  * @param storage Storage object
  * @return 0 on success, -errno otherwise
  *
- * For blockdevices and other regular files we create direct buckets beginning
- * at offset 0. Direct buckets are simple and write data always to offset 0.
+ * direct buckets are simpler than circular buckets and can be used on blockdevices
+ * and mtd devices that don't need erase (MRAM). Also used for EEPROMs.
  */
 static int state_storage_file_buckets_init(struct state_backend_storage *storage)
 {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
