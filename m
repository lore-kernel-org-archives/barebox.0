Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOodo-000798-4h
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:19:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:19:27 +0200
Message-Id: <1335784768-9189-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/13] hush: allow to run interactive shell in do_sh
To: barebox@lists.infradead.org

This allows to call 'sh' in scripts without arguments in which
case an interactive shell will be started.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/hush.c b/common/hush.c
index ab513af..d915f9e 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1814,7 +1814,7 @@ int run_shell(void)
 static int do_sh(int argc, char *argv[])
 {
 	if (argc < 2)
-		return COMMAND_ERROR_USAGE;
+		return run_shell();
 
 	return execute_script(argv[1], argc - 1, argv + 1);
 }
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
