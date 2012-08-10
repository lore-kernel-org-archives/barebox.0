Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Szmv6-00073I-TF
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 10:58:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Aug 2012 12:58:17 +0200
Message-Id: <1344596297-10781-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1344596297-10781-1-git-send-email-s.hauer@pengutronix.de>
References: <1344596297-10781-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] hush: catch errors from execute_binfmt
To: barebox@lists.infradead.org

execute_binfmt may return negative return values which hush interprets
as 'exit'. Catch this and print an error message instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |   11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 288114c..61aac13 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -785,12 +785,17 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 
 	remove_quotes(globbuf.gl_pathc, globbuf.gl_pathv);
 
-	if (!strcmp(globbuf.gl_pathv[0], "getopt"))
+	if (!strcmp(globbuf.gl_pathv[0], "getopt")) {
 		ret = builtin_getopt(ctx, child, globbuf.gl_pathc, globbuf.gl_pathv);
-	else if (!strcmp(globbuf.gl_pathv[0], "exit"))
+	} else if (!strcmp(globbuf.gl_pathv[0], "exit")) {
 		ret = builtin_exit(ctx, child, globbuf.gl_pathc, globbuf.gl_pathv);
-	else
+	} else {
 		ret = execute_binfmt(globbuf.gl_pathc, globbuf.gl_pathv);
+		if (ret < 0) {
+			printf("%s: %s\n", globbuf.gl_pathv[0], strerror(-ret));
+			ret = 127;
+		}
+	}
 
 	globfree(&globbuf);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
