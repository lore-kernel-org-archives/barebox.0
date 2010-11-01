Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq5-0007oB-Sm
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:07 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:40 +0100
Message-Id: <1288600434-6112-8-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 07/21] doc: unify documentation for 'ls'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    1 +
 commands/ls.c              |    9 +++++----
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 17e034a..4bcf548 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -17,6 +17,7 @@
 @li @subpage gpio_for_users
 @li @subpage tftp_command
 @li @subpage loadenv_command
+@li @subpage ls_command
 @li @subpage mount_command
 @li @subpage printenv_command
 @li @subpage protect_command
diff --git a/commands/ls.c b/commands/ls.c
index a02ccfe..2005178 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -194,10 +194,11 @@ static int do_ls(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_ls_help[] =
-"Usage: ls [OPTION]... [FILE]...\n"
-"List information about the FILEs (the current directory by default).\n"
-"  -R  list subdirectories recursively\n";
+BAREBOX_CMD_HELP_START(ls)
+BAREBOX_CMD_HELP_USAGE("ls [OPTION]... [FILE]...\n")
+BAREBOX_CMD_HELP_SHORT("List information about the FILEs (the current directory by default).\n")
+BAREBOX_CMD_HELP_OPT  ("-R",  "list subdirectories recursively\n")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(ls)
 	.cmd		= do_ls,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
