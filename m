Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0ksP-0003XJ-Sw
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 08:22:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Apr 2017 10:21:51 +0200
Message-Id: <20170419082151.21841-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] state: backend_storage: Set needs_refresh back to 0 after
 refreshing
To: Barebox List <barebox@lists.infradead.org>

Set needs_refresh back to 0 after refreshing so that we do not refresh
it again without need. This would only happen when we read the state
from the storage multiple times, which normally is not the case.
However, it's more consistent like this.

Reported-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_storage.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 9ed6ad79ac..8d24f7053d 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -110,12 +110,14 @@ static int bucket_refresh(struct state_backend_storage *storage,
 refresh:
 	ret = bucket->write(bucket, buf, len);
 
-	if (ret)
+	if (ret) {
 		dev_warn(storage->dev, "Failed to restore bucket %d@0x%08lx\n",
 			 bucket->num, bucket->offset);
-	else
+	} else {
 		dev_info(storage->dev, "restored bucket %d@0x%08lx\n",
 			 bucket->num, bucket->offset);
+		bucket->needs_refresh = 0;
+	}
 
 	return ret;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
