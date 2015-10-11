Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22a.google.com ([2607:f8b0:400e:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlLbd-0007re-W9
 for barebox@lists.infradead.org; Sun, 11 Oct 2015 18:44:26 +0000
Received: by pabve7 with SMTP id ve7so75356340pab.2
 for <barebox@lists.infradead.org>; Sun, 11 Oct 2015 11:44:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 11 Oct 2015 11:43:39 -0700
Message-Id: <1444589021-12727-6-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
References: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/8] common/command.c: Replace magic number with appropriate
 constant
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/command.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/command.c b/common/command.c
index dc2cb88..03c7083 100644
--- a/common/command.c
+++ b/common/command.c
@@ -83,7 +83,7 @@ int execute_command(int argc, char **argv)
 #else
 		printf ("Unknown command '%s'\n", argv[0]);
 #endif
-		ret = 1;	/* give up after bad command */
+		ret = COMMAND_ERROR;	/* give up after bad command */
 	}
 
 	getopt_context_restore(&gc);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
