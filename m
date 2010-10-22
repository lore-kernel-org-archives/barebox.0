Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkV-0001xF-UE
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:52 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:18 +0200
Message-Id: <1287765924-1856-27-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
References: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 26/32] doc: unify documentation for 'cd'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/cd.c |   17 +++++------------
 1 files changed, 5 insertions(+), 12 deletions(-)

diff --git a/commands/cd.c b/commands/cd.c
index a842f4d..d73be32 100644
--- a/commands/cd.c
+++ b/commands/cd.c
@@ -47,21 +47,14 @@ static int do_cd(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_cd_help[] =
-"Usage: cd [directory]\n"
-"change to directory. If called without argument, change to /\n";
+BAREBOX_CMD_HELP_START(cd)
+BAREBOX_CMD_HELP_USAGE("cd [directory]\n")
+BAREBOX_CMD_HELP_SHORT("Change to directory.\n")
+BAREBOX_CMD_HELP_TEXT ("If called without an argument, change to the root directory /.\n")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(cd)
 	.cmd		= do_cd,
 	.usage		= "change working directory",
 	BAREBOX_CMD_HELP(cmd_cd_help)
 BAREBOX_CMD_END
-
-/**
- * @page cd_command cd (change working directory)
- *
- * Usage is: cd [\<directory name>]
- *
- * Change to \<directory name>. If called without argument, change to \b /
- * (root)
- */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
