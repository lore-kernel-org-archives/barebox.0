Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOodw-0007AE-4l
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:19:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:19:20 +0200
Message-Id: <1335784768-9189-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/13] hush: run_pipe_real must have num_progs == 1
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |   16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 4e78577..362f544 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -596,14 +596,16 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 
 	nextin = 0;
 
-	/* Check if this is a simple builtin (not part of a pipe).
-	 * Builtins within pipes have to fork anyway, and are handled in
-	 * pseudo_exec.  "echo foo | read bar" doesn't work on bash, either.
+	/*
+	 * We do not support pipes in barebox, so pi->num_progs can't
+	 * be bigger than 1. pi->num_progs == 0 is already catched in
+	 * the caller, so everything else than 1 is a bug.
 	 */
-	if (pi->num_progs == 1)
-		child = &pi->progs[0];
+	BUG_ON(pi->num_progs != 1);
+
+	child = &pi->progs[0];
 
-	if (pi->num_progs == 1 && child->group) {
+	if (child->group) {
 		int rcode;
 
 		debug("non-subshell grouping\n");
@@ -612,7 +614,7 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 		return rcode;
 	}
 
-	if (pi->num_progs == 1 && pi->progs[0].argv != NULL) {
+	if (pi->progs[0].argv != NULL) {
 
 		for (i = 0; is_assignment(child->argv[i]); i++)
 			{ /* nothing */ }
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
