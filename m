Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGO1X-0003Rd-4C
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 10:07:44 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Fri, 24 Jun 2016 12:06:02 +0200
Message-Id: <1466762762-15212-7-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1466762762-15212-1-git-send-email-mpa@pengutronix.de>
References: <1466762762-15212-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 6/6] barebox-state: handle flush errno correctly
To: barebox@lists.infradead.org
Cc: mgr@pengutronix.de

From: Michael Grzeschik <m.grzeschik@pengutronix.de>

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 common/state/backend_bucket_circular.c | 13 ++++++++++---
 common/state/backend_bucket_direct.c   | 11 +++++++++--
 2 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 64e9be2e9979..3e48733ba269 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -216,10 +216,17 @@ static int state_mtd_peb_write(struct state_backend_storage_bucket_circular *cir
 	}
 
 	/*
-	 * We keep the fd open, so flush is necessary. We ignore the return
-	 * value as flush is currently not supported for mtd under linux.
+	 * We keep the fd open, so flush is necessary. We ignore the
+	 * errno EINVAL as flush is currently not supported for
+	 * mtd under linux.
 	 */
-	flush(circ->fd);
+	ret = flush(circ->fd);
+	if (ret < 0) {
+		if (errno != EINVAL) {
+			dev_err(direct->dev, "Failed to flush file, %d\n", -errno);
+			return ret;
+		}
+	}
 
 	dev_dbg(circ->dev, "Written state to offset %ld length %zd data length %zd\n",
 		offset, len, len);
diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
index 772267f6dc1d..1f7fb1c8c2e4 100644
--- a/common/state/backend_bucket_direct.c
+++ b/common/state/backend_bucket_direct.c
@@ -183,10 +183,17 @@ static int state_backend_bucket_direct_write(struct state_backend_storage_bucket
 		return ret;
 	}
 
+	/*
+	 * We keep the fd open, so flush is necessary. We ignore the
+	 * errno EINVAL as flush is currently not supported for
+	 * mtd under linux.
+	 */
 	ret = flush(direct->fd);
 	if (ret < 0) {
-		dev_err(direct->dev, "Failed to flush file, %d\n", ret);
-		return ret;
+		if (errno != EINVAL) {
+			dev_err(direct->dev, "Failed to flush file, %d\n", -errno);
+			return ret;
+		}
 	}
 
 	return 0;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
