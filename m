Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkV-0001xA-2L
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:48 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:17 +0200
Message-Id: <1287765924-1856-26-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 25/32] doc: unify documentation for 'cat'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/cat.c |   19 ++++++-------------
 1 files changed, 6 insertions(+), 13 deletions(-)

diff --git a/commands/cat.c b/commands/cat.c
index 41b3324..37e6505 100644
--- a/commands/cat.c
+++ b/commands/cat.c
@@ -85,22 +85,15 @@ out:
 	return err;
 }
 
-static const __maybe_unused char cmd_cat_help[] =
-"Usage: cat [FILES]\n"
-"Concatenate files on stdout. Currently only printable characters\n"
-"and \\n and \\t are printed, but this should be optional\n";
+BAREBOX_CMD_HELP_START(cat)
+BAREBOX_CMD_HELP_USAGE("cat [FILES]\n")
+BAREBOX_CMD_HELP_SHORT("Concatenate files on stdout.\n")
+BAREBOX_CMD_HELP_TEXT ("Currently only printable characters and \\ n and \\ t are printed,\n")
+BAREBOX_CMD_HELP_TEXT ("but this should be optional.\n")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(cat)
 	.cmd		= do_cat,
 	.usage		= "concatenate file(s)",
 	BAREBOX_CMD_HELP(cmd_cat_help)
 BAREBOX_CMD_END
-
-/**
- * @page cat_command cat (concatenate)
- *
- * Usage is: cat \<file\> [\<file\> ...]
- *
- * Concatenate files to stdout. Currently only printable characters
- * and \\n and \\t are printed, but this should be optional
- */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
