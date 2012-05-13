Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STf1d-0004hx-O6
 for barebox@lists.infradead.org; Sun, 13 May 2012 20:04:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 13 May 2012 22:04:11 +0200
Message-Id: <1336939451-9082-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] echo: Fix help
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/echo.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/echo.c b/commands/echo.c
index 114c1ba..a19d992 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -115,9 +115,9 @@ BAREBOX_CMD_HELP_START(echo)
 BAREBOX_CMD_HELP_USAGE("echo [OPTIONS] [STRING]\n")
 BAREBOX_CMD_HELP_SHORT("Display a line of text.\n")
 BAREBOX_CMD_HELP_OPT  ("-n",  "do not output the trailing newline\n")
-BAREBOX_CMD_HELP_OPT  ("-a",  "FIXME\n")
-BAREBOX_CMD_HELP_OPT  ("-o",  "FIXME\n")
-BAREBOX_CMD_HELP_OPT  ("-e",  "FIXME\n")
+BAREBOX_CMD_HELP_OPT  ("-a <file>",  "instead of outputting to stdout append to <file>\n")
+BAREBOX_CMD_HELP_OPT  ("-o <file>",  "instead of outputting to stdout overwrite <file>\n")
+BAREBOX_CMD_HELP_OPT  ("-e",  "recognize escape sequences\n")
 BAREBOX_CMD_HELP_END
 
 /**
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
