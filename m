Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTvXM-0000wd-PQ
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 14:14:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 15:14:21 +0100
Message-Id: <1351779261-10913-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] command: return 1 on unknown command
To: barebox@lists.infradead.org

hush now prints the error value if a command returns a value < 0,
so do not return -1 (EPERM) when we encounter an unknown command.
Instead, return 1 so that hush is quiet.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/command.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/command.c b/common/command.c
index 873b3ff..7f2b777 100644
--- a/common/command.c
+++ b/common/command.c
@@ -85,7 +85,7 @@ int execute_command(int argc, char **argv)
 #else
 		printf ("Unknown command '%s'\n", argv[0]);
 #endif
-		ret = -1;	/* give up after bad command */
+		ret = 1;	/* give up after bad command */
 	}
 
 	getopt_context_restore(&gc);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
