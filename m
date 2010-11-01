Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq5-0007oK-V1
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:10 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:47 +0100
Message-Id: <1288600434-6112-15-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 14/21] doc: unify documentation for 'cp'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 commands/cp.c |   30 ++++++++++++++----------------
 1 files changed, 14 insertions(+), 16 deletions(-)

diff --git a/commands/cp.c b/commands/cp.c
index 2c35ba1..ae8719b 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -51,7 +51,7 @@ static int do_cp(struct command *cmdtp, int argc, char *argv[])
 		if (S_ISDIR(statbuf.st_mode))
 			last_is_dir = 1;
 	}
-	
+
 	if (argc > 3 && !last_is_dir) {
 		printf("cp: target `%s' is not a directory\n", argv[argc - 1]);
 		return 1;
@@ -77,10 +77,19 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_cp_help[] =
-"Usage: cp <source> <destination>\n"
-"cp copies file <source> to <destination>.\n"
-"This command is file based only. See memcpy for memory copy\n";
+BAREBOX_CMD_HELP_START(cp)
+BAREBOX_CMD_HELP_USAGE("cp <source> <destination>\n")
+BAREBOX_CMD_HELP_SHORT("copy file from <source> to <destination>.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page cp_command
+This command operates on files.
+
+If you want to copy between memory blocks, use 'memcpy'.
+
+\todo What does this mean? Add examples.
+ */
 
 BAREBOX_CMD_START(cp)
 	.cmd		= do_cp,
@@ -88,14 +97,3 @@ BAREBOX_CMD_START(cp)
 	BAREBOX_CMD_HELP(cmd_cp_help)
 BAREBOX_CMD_END
 
-/**
- * @page cp_command cp: Copy file
- *
- * Usage: cp \<source> [\<source>] \<destination>
- *
- * \c cp copies file \<source> to \<destination>
- *
- * Currently only this form is supported and you have to specify the exact
- * target filename (not a target directory).\n
- * This command is file based only. See memcpy for generic memory copy
- */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
