Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P4C07-00032c-AC
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 12:24:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Oct 2010 14:24:32 +0200
Message-Id: <1286540674-17174-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286540674-17174-1-git-send-email-s.hauer@pengutronix.de>
References: <1286540674-17174-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] hush: pass context around in shell
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |   18 +++++++++---------
 1 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 19e35f5..f22eca6 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -267,8 +267,8 @@ static void setup_string_in_str(struct in_str *i, const char *s);
 static int free_pipe_list(struct pipe *head, int indent);
 static int free_pipe(struct pipe *pi, int indent);
 /*  really run the final data structures: */
-static int run_list_real(struct pipe *pi);
-static int run_pipe_real(struct pipe *pi);
+static int run_list_real(struct p_context *ctx, struct pipe *pi);
+static int run_pipe_real(struct p_context *ctx, struct pipe *pi);
 /*   extended glob support: */
 /*   variable assignment: */
 static int is_assignment(const char *s);
@@ -515,7 +515,7 @@ static void setup_string_in_str(struct in_str *i, const char *s)
  * now has its stdout directed to the input of the appropriate pipe,
  * so this routine is noticeably simpler.
  */
-static int run_pipe_real(struct pipe *pi)
+static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 {
 	int i;
 	int nextin;
@@ -541,7 +541,7 @@ static int run_pipe_real(struct pipe *pi)
 	if (pi->num_progs == 1 && child->group) {
 		int rcode;
 		debug("non-subshell grouping\n");
-		rcode = run_list_real(child->group);
+		rcode = run_list_real(ctx, child->group);
 		return rcode;
 	} else if (pi->num_progs == 1 && pi->progs[0].argv != NULL) {
 		for (i=0; is_assignment(child->argv[i]); i++) { /* nothing */ }
@@ -601,7 +601,7 @@ static int run_pipe_real(struct pipe *pi)
 	return -1;
 }
 
-static int run_list_real(struct pipe *pi)
+static int run_list_real(struct p_context *ctx, struct pipe *pi)
 {
 	char *save_name = NULL;
 	char **list = NULL;
@@ -699,7 +699,7 @@ static int run_list_real(struct pipe *pi)
 		}
 		if (pi->num_progs == 0)
 			continue;
-		rcode = run_pipe_real(pi);
+		rcode = run_pipe_real(ctx, pi);
 		debug("run_pipe_real returned %d\n",rcode);
 		if (rcode < -1) {
 			last_return_code = -rcode - 2;
@@ -853,11 +853,11 @@ static int xglob(o_string *dest, int flags, glob_t *pglob)
 }
 
 /* Select which version we will use */
-static int run_list(struct pipe *pi)
+static int run_list(struct p_context *ctx, struct pipe *pi)
 {
 	int rcode = 0;
 
-	rcode = run_list_real(pi);
+	rcode = run_list_real(ctx, pi);
 
 	/* free_pipe_list has the side effect of clearing memory
 	 * In the long run that function can be merged with run_list_real,
@@ -1371,7 +1371,7 @@ static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int fla
 			done_word(&temp, ctx);
 			done_pipe(ctx,PIPE_SEQ);
 			if (ctx->list_head->num_progs) {
-				code = run_list(ctx->list_head);
+				code = run_list(ctx, ctx->list_head);
 			} else {
 				free_pipe_list(ctx->list_head, 0);
 				continue;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
