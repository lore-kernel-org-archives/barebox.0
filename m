Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXSLq-0006Jr-Jo
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 13:15:48 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue, 18 Jul 2017 15:15:23 +0200
Message-Id: <20170718131523.23296-1-p.zabel@pengutronix.de>
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
Subject: [PATCH] state: backend_bucket_circular: promote old state debug
 message to info
To: barebox@lists.infradead.org

A report about the changed on-storage state format might be interesting
to the user.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 common/state/backend_bucket_circular.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 3dcff5cf0..f83bd679d 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -246,7 +246,7 @@ static int state_backend_bucket_circular_read(struct state_backend_storage_bucke
 		read_len = min(circ->write_area, (off_t)(circ->max_size -
 			       sizeof(struct state_backend_storage_bucket_circular_meta)));
 		circ->write_area = 0;
-		dev_dbg(circ->dev, "Detected old on-storage format\n");
+		dev_info(circ->dev, "Detected old on-storage format\n");
 	} else if (circ->last_written_length > circ->write_area
 		   || !IS_ALIGNED(circ->last_written_length, circ->writesize)) {
 		circ->write_area = 0;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
