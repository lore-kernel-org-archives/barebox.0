Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIbeG-0008IX-Vf
 for barebox@lists.infradead.org; Mon, 11 Jan 2016 12:32:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Jan 2016 13:32:13 +0100
Message-Id: <1452515533-26114-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] hush: fix indentation
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 832bc7b..d3f7bf3 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -863,29 +863,29 @@ static int run_list_real(struct p_context *ctx, struct pipe *pi)
 		if ((rpipe->r_mode == RES_IN ||
 		    rpipe->r_mode == RES_FOR) &&
 		    (rpipe->next == NULL)) {
-				syntax();
-				return 1;
+			syntax();
+			return 1;
 		}
 		if ((rpipe->r_mode == RES_IN &&
-			(rpipe->next->r_mode == RES_IN &&
-			rpipe->next->progs->argv != NULL))||
-			(rpipe->r_mode == RES_FOR &&
-			rpipe->next->r_mode != RES_IN)) {
-				syntax();
-				return 1;
+				(rpipe->next->r_mode == RES_IN &&
+				rpipe->next->progs->argv != NULL))||
+				(rpipe->r_mode == RES_FOR &&
+				rpipe->next->r_mode != RES_IN)) {
+			syntax();
+			return 1;
 		}
 	}
 	for (; pi; pi = (flag_restore != 0) ? rpipe : pi->next) {
 		if (pi->r_mode == RES_WHILE || pi->r_mode == RES_UNTIL ||
-			pi->r_mode == RES_FOR) {
-				/* check Ctrl-C */
-				if (ctrlc())
-					return 1;
-				flag_restore = 0;
-				if (!rpipe) {
-					flag_rep = 0;
-					rpipe = pi;
-				}
+				pi->r_mode == RES_FOR) {
+			/* check Ctrl-C */
+			if (ctrlc())
+				return 1;
+			flag_restore = 0;
+			if (!rpipe) {
+				flag_rep = 0;
+				rpipe = pi;
+			}
 		}
 		rmode = pi->r_mode;
 		debug("rmode=%d  if_code=%d  next_if_code=%d skip_more=%d\n",
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
