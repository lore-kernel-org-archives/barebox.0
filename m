Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ynp6z-0007gE-1d
 for barebox@lists.infradead.org; Thu, 30 Apr 2015 14:06:45 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 30 Apr 2015 16:06:19 +0200
Message-Id: <1430402780-8327-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/2] state: fix pointer signess mismach warning
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/state.c b/common/state.c
index b677a9f01d25..637a15c66ad0 100644
--- a/common/state.c
+++ b/common/state.c
@@ -47,7 +47,7 @@ struct state {
 	struct list_head list;
 	struct state_backend *backend;
 	uint32_t magic;
-	unsigned int dirty;
+	int dirty;
 };
 
 struct state_backend {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
