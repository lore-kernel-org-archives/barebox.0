Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cr2gm-0003wL-S9
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 13:22:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 Mar 2017 14:21:41 +0100
Message-Id: <20170323132142.28871-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] state: bucket_cached: Fix reading pages which need cleanup
To: Barebox List <barebox@lists.infradead.org>

When the raw device returns -EUCLEAN we have to return
successfully to the upper layer, otherwise it will discard the
data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_bucket_cached.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/state/backend_bucket_cached.c b/common/state/backend_bucket_cached.c
index 781ac2debd..ba0af7f373 100644
--- a/common/state/backend_bucket_cached.c
+++ b/common/state/backend_bucket_cached.c
@@ -52,12 +52,12 @@ static int state_backend_bucket_cache_fill(
 	int ret;
 
 	ret = cache->raw->read(cache->raw, &cache->data, &cache->data_len);
-	if (ret == -EUCLEAN)
+	if (ret == -EUCLEAN) {
 		cache->force_write = true;
-	else if (ret)
-		return ret;
+		ret = 0;
+	}
 
-	return 0;
+	return ret;
 }
 
 static int state_backend_bucket_cache_read(struct state_backend_storage_bucket *bucket,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
