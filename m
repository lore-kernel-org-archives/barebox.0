Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCnlh-0002aU-By
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 10:39:30 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XCnlJ-0001QL-4A
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 12:39:05 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <jbe@pengutronix.de>)
 id 1XCnlJ-0005GM-2m
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 12:39:05 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Thu, 31 Jul 2014 12:39:00 +0200
Message-Id: <1406803143-27630-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1406803143-27630-1-git-send-email-jbe@pengutronix.de>
References: <1406803143-27630-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/4] saveenv: make clear how to use the command's parameters
To: barebox@lists.infradead.org

Both parameters can be omitted and DIRECTORY can be omitted, but the
DIRECTORY parameter requires the ENVFS parameter as well.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 commands/saveenv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/saveenv.c b/commands/saveenv.c
index 54b6fa1..29a29c1 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -55,7 +55,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(saveenv)
 	.cmd		= do_saveenv,
 	BAREBOX_CMD_DESC("save environment to persistent storage")
-	BAREBOX_CMD_OPTS("[ENVFS] [DIRECTORY]")
+	BAREBOX_CMD_OPTS("[ENVFS [DIRECTORY]]")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_saveenv_help)
 BAREBOX_CMD_END
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
