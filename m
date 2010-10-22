Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9Kkd-0002cP-Cf
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:59 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:19 +0200
Message-Id: <1287765924-1856-28-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 27/32] doc: add documentation for 'echo'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    1 +
 commands/echo.c            |   10 ++++++++++
 2 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 63ed480..28ddff4 100644
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
index dfa14d6..5cc150d 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -111,8 +111,18 @@ no_optarg_out:
 	return 1;
 }
 
+BAREBOX_CMD_HELP_START(echo)
+BAREBOX_CMD_HELP_USAGE("echo [OPTION]... [STRING]\n")
+BAREBOX_CMD_HELP_SHORT("Display a line of text.\n")
+BAREBOX_CMD_HELP_OPT  ("-n",  "do not output the trailing newline\n")
+BAREBOX_CMD_HELP_OPT  ("-a",  "FIXME\n")
+BAREBOX_CMD_HELP_OPT  ("-o",  "FIXME\n")
+BAREBOX_CMD_HELP_OPT  ("-e",  "FIXME\n")
+BAREBOX_CMD_HELP_END
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
