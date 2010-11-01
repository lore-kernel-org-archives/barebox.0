Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq9-0003EZ-Qe
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:06 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:53 +0100
Message-Id: <1288600434-6112-21-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 20/21] doc: unify documentation for 'export'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/export.c |   14 ++++----------
 1 files changed, 4 insertions(+), 10 deletions(-)

diff --git a/commands/export.c b/commands/export.c
index 31259cc..ce8a61a 100644
--- a/commands/export.c
+++ b/commands/export.c
@@ -51,9 +51,10 @@ static int do_export(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_export_help[] =
-"Usage: export <var>[=value]...\n"
-"export an environment variable to subsequently executed scripts\n";
+BAREBOX_CMD_HELP_START(export)
+BAREBOX_CMD_HELP_USAGE("export <var>[=value]")
+BAREBOX_CMD_HELP_SHORT("export an environment variable to subsequently executed scripts")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(export)
 	.cmd		= do_export,
@@ -61,10 +62,3 @@ BAREBOX_CMD_START(export)
 	BAREBOX_CMD_HELP(cmd_export_help)
 BAREBOX_CMD_END
 
-/**
- * @page export_command export: Export an environment variable
- *
- * Usage: export \<var>[=value]...
- *
- * Export an environment variable to subsequently executed scripts.
- */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
