Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZuEWh-00078d-EH
 for barebox@lists.infradead.org; Thu, 05 Nov 2015 07:00:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Nov 2015 07:59:38 +0100
Message-Id: <1446706778-30658-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <20151104154142.GA27677@gmail.com>
References: <20151104154142.GA27677@gmail.com>
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
Subject: [PATCH] hush: Add missing initialize_context() in some places
To: Barebox List <barebox@lists.infradead.org>

Before a context can be used it must be initialized. This was forgotten
in several places. Add the missing calls to initialize_context().
This fixes crashes when sourcing empty files

Reported-by: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

This patch should fix this issue.

 common/hush.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/common/hush.c b/common/hush.c
index abe8713..084dd85 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -814,6 +814,8 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 		char * str = NULL;
 		struct p_context ctx1;
 
+		initialize_context(&ctx1);
+
 		str = make_string((child->argv + i));
 		rcode = parse_string_outer(&ctx1, str, FLAG_EXIT_FROM_LOOP | FLAG_REPARSING);
 		release_context(&ctx1);
@@ -1866,6 +1868,8 @@ int run_command(const char *cmd)
 	struct p_context ctx;
 	int ret;
 
+	initialize_context(&ctx);
+
 	ret = parse_string_outer(&ctx, cmd, FLAG_PARSE_SEMICOLON);
 	release_context(&ctx);
 
@@ -1889,6 +1893,8 @@ static int source_script(const char *path, int argc, char *argv[])
 	char *script;
 	int ret;
 
+	initialize_context(&ctx);
+
 	ctx.global_argc = argc;
 	ctx.global_argv = argv;
 
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
