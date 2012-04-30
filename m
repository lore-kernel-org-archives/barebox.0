Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOodi-00077O-RP
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:19:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:19:24 +0200
Message-Id: <1335784768-9189-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1335784768-9189-1-git-send-email-s.hauer@pengutronix.de>
References: <1335784768-9189-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/13] hush: pass GLOB_NOCHECK to glob
To: barebox@lists.infradead.org

By doing so glob will not return GLOB_NOMATCH anymore but instead
just does what fake_glob would do.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |    7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index ea6e53b..d7ed624 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -962,11 +962,6 @@ static int xglob(o_string *dest, int flags, glob_t *pglob)
 	} else if (glob_needed(dest->data)) {
 		gr = glob(dest->data, flags, NULL, pglob);
 		debug("glob returned %d\n",gr);
-		if (gr == GLOB_NOMATCH) {
-			/* quote removal, or more accurately, backslash removal */
-			gr = fake_glob(dest->data, flags, NULL, pglob);
-			debug("globhack returned %d\n",gr);
-		}
 	} else {
 		gr = fake_glob(dest->data, flags, NULL, pglob);
 		debug("globhack returned %d\n",gr);
@@ -1172,7 +1167,7 @@ static int done_word(o_string *dest, struct p_context *ctx)
 {
 	struct child_prog *child = ctx->child;
 	glob_t *glob_target;
-	int gr, flags = 0;
+	int gr, flags = GLOB_NOCHECK;
 
 	debug("%s: %s %p\n", __func__, dest->data, child);
 	if (dest->length == 0 && !dest->nonnull) {
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
