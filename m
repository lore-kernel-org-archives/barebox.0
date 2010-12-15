Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptm-0001uW-Ig
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:07 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:29 +0100
Message-Id: <1292413908-464-16-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1292413908-464-1-git-send-email-r.schwebel@pengutronix.de>
References: <1292413908-464-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 15/34] doc: add documentation for 'readline' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/readline.c        |   14 +++++++++++---
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 04718b8..2775b2d 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -84,7 +84,7 @@ available in @a Barebox:
 @li @subpage printenv_command
 @li @subpage protect_command
 @li @subpage pwd
-@li @subpage readline
+@li @subpage readline_command
 @li @subpage reset
 @li @subpage rarpboot
 @li @subpage reginfo
diff --git a/commands/readline.c b/commands/readline.c
index cf2625f..14f62dd 100644
--- a/commands/readline.c
+++ b/commands/readline.c
@@ -45,9 +45,17 @@ static int do_readline(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_readline_help[] =
-"Usage: readline <prompt> VAR\n"
-"readline reads a line of user input into variable VAR.\n";
+BAREBOX_CMD_HELP_START(readline)
+BAREBOX_CMD_HELP_USAGE("readline [PROMPT] VAR\n")
+BAREBOX_CMD_HELP_SHORT("Read a line of user input into variable VAR.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page readline_command
+
+\todo Add example.
+
+ */
 
 BAREBOX_CMD_START(readline)
 	.cmd		= do_readline,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
