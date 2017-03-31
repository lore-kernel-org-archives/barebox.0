Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbV-0001eO-ER
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:25 +0200
Message-Id: <20170331070346.26878-22-s.hauer@pengutronix.de>
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
Subject: [PATCH 21/42] state: backend_circular: remove unnecessary warning
To: Barebox List <barebox@lists.infradead.org>

It's expected that NAND flashes contain bad blocks, do not warn
about them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_storage.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 17013855b4..deae9c325b 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -242,11 +242,8 @@ static int state_storage_mtd_buckets_init(struct state_backend_storage *storage,
 							   eraseblock,
 							   writesize,
 							   meminfo);
-		if (ret) {
-			dev_warn(storage->dev, "Failed to create bucket at '%s' eraseblock %u\n",
-				 storage->path, eraseblock);
+		if (ret)
 			continue;
-		}
 
 		bucket->offset = offset;
 		bucket->num = nr_copies;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
