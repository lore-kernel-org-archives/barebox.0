Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXSLe-0006Ix-E5
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 13:15:36 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue, 18 Jul 2017 15:14:45 +0200
Message-Id: <20170718131445.6859-1-p.zabel@pengutronix.de>
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
Subject: [PATCH] state: backend_bucket_circular: fix old state reads
To: barebox@lists.infradead.org

When the circular bucket meta magic was not found, it is assumed that
the whole written state is in the old on-storage format. In that case,
the size of the circular bucket meta must not be subtracted from the
read length, or the (complete_len > len) check in the raw backend's
verify function will fail:

    state: Error, invalid data_len 16 in header, have data of len 24

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 common/state/backend_bucket_circular.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 7c81cdfaf..3dcff5cf0 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -279,7 +279,10 @@ static int state_backend_bucket_circular_read(struct state_backend_storage_bucke
 	}
 
 	*buf_out = buf;
-	*len_out = read_len - sizeof(struct state_backend_storage_bucket_circular_meta);
+	/* When reading old state there is no circular bucket metadata */
+	if (circ->last_written_length)
+		read_len -= sizeof(struct state_backend_storage_bucket_circular_meta);
+	*len_out = read_len;
 
 	return ret;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
