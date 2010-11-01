Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq5-0007oD-T3
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:08 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:43 +0100
Message-Id: <1288600434-6112-11-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 10/21] doc: add documentation for 'echo'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    1 +
 commands/echo.c            |   17 +++++++++++++++++
 2 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 4bcf548..38968b5 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -11,6 +11,7 @@
 @li @subpage delpart_command
 @li @subpage devinfo_command
 @li @subpage dfu_command
+@li @subpage echo_command
 @li @subpage edit_command
 @li @subpage erase_command
 @li @subpage export_command
diff --git a/commands/echo.c b/commands/echo.c
index dfa14d6..3e098df 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -111,8 +111,25 @@ no_optarg_out:
 	return 1;
 }
 
+BAREBOX_CMD_HELP_START(echo)
+BAREBOX_CMD_HELP_USAGE("echo [OPTIONS] [STRING]\n")
+BAREBOX_CMD_HELP_SHORT("Display a line of text.\n")
+BAREBOX_CMD_HELP_OPT  ("-n",  "do not output the trailing newline\n")
+BAREBOX_CMD_HELP_OPT  ("-a",  "FIXME\n")
+BAREBOX_CMD_HELP_OPT  ("-o",  "FIXME\n")
+BAREBOX_CMD_HELP_OPT  ("-e",  "FIXME\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page echo_command
+
+\todo Add documentation for -a, -o and -e.
+
+ */
+
 BAREBOX_CMD_START(echo)
 	.cmd		= do_echo,
 	.usage		= "echo args to console",
+	BAREBOX_CMD_HELP(cmd_echo_help)
 BAREBOX_CMD_END
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
