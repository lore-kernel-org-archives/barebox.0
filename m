Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXSLv-0006KD-JY
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 13:15:54 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue, 18 Jul 2017 15:15:34 +0200
Message-Id: <20170718131534.26564-1-p.zabel@pengutronix.de>
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
Subject: [PATCH] state: backend_storage: remove unreachable error message
To: barebox@lists.infradead.org

This looks like a leftover.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 common/state/backend_storage.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 8d24f7053..1abf8c866 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -392,8 +392,6 @@ int state_storage_init(struct state *state, const char *path,
 	} else {
 		return state_storage_file_buckets_init(storage);
 	}
-
-	dev_err(storage->dev, "storage init done\n");
 }
 
 void state_storage_set_readonly(struct state_backend_storage *storage)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
