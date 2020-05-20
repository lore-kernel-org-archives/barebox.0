Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKSp-0003oQ-Ij
 for barebox@lists.infradead.org; Wed, 20 May 2020 08:52:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 May 2020 10:52:33 +0200
Message-Id: <20200520085233.1760-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ratp: Remove unnecessary poller_call()
To: Barebox List <barebox@lists.infradead.org>

poller_call() is called by is_timeout(), no need to do this again in a
timeout loop.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ratp/ratp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index def1ceb020..92ecb6b5d3 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -416,7 +416,6 @@ int barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx)
 	start = get_time_ns();
 
 	while (!ctx->fs_rx) {
-		poller_call();
 		if (ratp_closed(&ctx->ratp))
 			return -EIO;
 		if (is_timeout(start, 10 * SECOND))
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
