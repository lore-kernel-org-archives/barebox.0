Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlHwx-0001VF-9B
 for barebox@lists.infradead.org; Fri, 16 May 2014 13:13:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 May 2014 15:13:06 +0200
Message-Id: <1400245986-1988-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] hush: setting variables may fail
To: barebox@lists.infradead.org

In case of device parameters setting variables may fail. return
the result of set_local_var so that the user has a chance to detect
the failure with $?.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 1447fdb..e6479b2 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -734,6 +734,7 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 	char *p;
 	glob_t globbuf = {};
 	int ret;
+	int rcode;
 # if __GNUC__
 	/* Avoid longjmp clobbering */
 	(void) &i;
@@ -753,8 +754,6 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 	child = &pi->progs[0];
 
 	if (child->group) {
-		int rcode;
-
 		debug("non-subshell grouping\n");
 		rcode = run_list_real(ctx, child->group);
 
@@ -789,7 +788,9 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 
 			free(name);
 			p = insert_var_value(child->argv[i]);
-			set_local_var(p, export_me);
+			rcode = set_local_var(p, export_me);
+			if (rcode)
+				return 1;
 
 			if (p != child->argv[i])
 				free(p);
@@ -798,7 +799,9 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 	}
 	for (i = 0; is_assignment(child->argv[i]); i++) {
 		p = insert_var_value(child->argv[i]);
-		set_local_var(p, 0);
+		rcode = set_local_var(p, 0);
+		if (rcode)
+			return 1;
 
 		if (p != child->argv[i]) {
 			child->sp--;
@@ -808,7 +811,6 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 	if (child->sp) {
 		char * str = NULL;
 		struct p_context ctx1;
-		int rcode;
 
 		str = make_string((child->argv + i));
 		rcode = parse_string_outer(&ctx1, str, FLAG_EXIT_FROM_LOOP | FLAG_REPARSING);
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
