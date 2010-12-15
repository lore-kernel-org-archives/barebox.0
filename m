Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptm-0001uX-JG
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:08 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:31 +0100
Message-Id: <1292413908-464-18-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 17/34] doc: add documentation for 'help' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/help.c            |   22 +++++++++++++++-------
 2 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index cf45b14..887c58f 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -50,7 +50,7 @@ available in @a Barebox:
 @li @subpage gpio_direction_input_command
 @li @subpage gpio_direction_output_command
 @li @subpage go
-@li @subpage help
+@li @subpage help_command
 @li @subpage host
 @li @subpage i2c_probe
 @li @subpage i2c_read
diff --git a/commands/help.c b/commands/help.c
index f8387bd..6d6e8e6 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -52,15 +52,23 @@ static int do_help(struct command * cmdtp, int argc, char *argv[])
 	}
 }
 
-static const __maybe_unused char cmd_help_help[] =
-"Show help information (for 'command')\n"
-"'help' prints online help for the monitor commands.\n\n"
-"Without arguments, it prints a short usage message for all commands.\n\n"
-"To get detailed help information for specific commands you can type\n"
-"'help' with one or more command names as arguments.\n";
-
 static const char *help_aliases[] = { "?", NULL};
 
+BAREBOX_CMD_HELP_START(help)
+BAREBOX_CMD_HELP_USAGE("help COMMAND\n")
+BAREBOX_CMD_HELP_SHORT("Show help information for 'command'.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page help_command
+
+'help' prints online help for the barebox commands. Without arguments,
+it prints a shoft usage message for all commands. To get detailed help
+information for specific commands, you can type 'help' with one or more
+command names as arguments.
+
+ */
+
 BAREBOX_CMD_START(help)
 	.cmd		= do_help,
 	.aliases	= help_aliases,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
