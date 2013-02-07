Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f43.google.com ([74.125.83.43])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Z3i-0006Sm-2T
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 21:31:07 +0000
Received: by mail-ee0-f43.google.com with SMTP id c50so1682084eek.2
 for <barebox@lists.infradead.org>; Thu, 07 Feb 2013 13:31:04 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu,  7 Feb 2013 22:31:38 +0100
Message-Id: <1360272701-877-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1360272701-877-1-git-send-email-alex.aring@gmail.com>
References: <1360272701-877-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/4] hush: add getopt only if it enabled
To: barebox@lists.infradead.org

This patch add getopt to the command list if it enabled via
Kconfig. With this patch we get a 'command not found' error.
Otherwise getopt doing nothing.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 common/hush.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/hush.c b/common/hush.c
index 1f468f6..602f8f1 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -782,7 +782,8 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 
 	remove_quotes(globbuf.gl_pathc, globbuf.gl_pathv);
 
-	if (!strcmp(globbuf.gl_pathv[0], "getopt")) {
+	if (!strcmp(globbuf.gl_pathv[0], "getopt") &&
+			IS_ENABLED(CONFIG_HUSH_GETOPT)) {
 		ret = builtin_getopt(ctx, child, globbuf.gl_pathc, globbuf.gl_pathv);
 	} else if (!strcmp(globbuf.gl_pathv[0], "exit")) {
 		ret = builtin_exit(ctx, child, globbuf.gl_pathc, globbuf.gl_pathv);
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
