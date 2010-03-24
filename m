Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NuKyU-0000Te-I7
	for barebox@lists.infradead.org; Wed, 24 Mar 2010 07:26:03 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1NuKyQ-0004G6-99
	for barebox@lists.infradead.org; Wed, 24 Mar 2010 08:25:54 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1NuKyQ-0005k8-6L
	for barebox@lists.infradead.org; Wed, 24 Mar 2010 08:25:54 +0100
Date: Wed, 24 Mar 2010 08:25:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100324072554.GQ2241@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] hush: Fix return code when calling 'exit' inside loops
To: barebox@lists.infradead.org




This fixes the case:

barebox:/ cat /test
if [ 0 = 0 ]; then
	exit 1
fi
barebox:/ /test
barebox:/ echo $?
0
barebox:/

Also, remove code to not allow exit from main shell. The for(;;) loop
in common/startup.c will bring us back anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |   14 +++-----------
 1 files changed, 3 insertions(+), 11 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index cf6704b..5459224 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -699,7 +699,7 @@ static int run_list_real(struct pipe *pi)
 		debug("run_pipe_real returned %d\n",rcode);
 		if (rcode < -1) {
 			last_return_code = -rcode - 2;
-			return -2;	/* exit */
+			return rcode;	/* exit */
 		}
 		last_return_code=rcode;
 		if ( rmode == RES_IF || rmode == RES_ELIF )
@@ -1371,17 +1371,9 @@ static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int fla
 				free_pipe_list(ctx->list_head, 0);
 				continue;
 			}
-			if (code == -2) {	/* exit */
+			if (code < -1) {	/* exit */
 				b_free(&temp);
-
-				/* XXX hackish way to not allow exit from main loop */
-				if (inp->peek == file_peek) {
-					printf("exit not allowed from main input shell.\n");
-					code = 0;
-					continue;
-				}
-				code = last_return_code;
-				break;
+				return code;
 			}
 		} else {
 			if (ctx->old_flag != 0) {
-- 
1.7.0

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
