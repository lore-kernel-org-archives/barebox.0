Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpti-0001uQ-Le
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:51:55 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:26 +0100
Message-Id: <1292413908-464-13-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 12/34] doc: add documentation for 'mkdir' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/mkdir.c           |   16 +++++++++++++---
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index db3be1a..45947e9 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -71,7 +71,7 @@ available in @a Barebox:
 @li @subpage meminfo
 @li @subpage memset
 @li @subpage menu
-@li @subpage mkdir
+@li @subpage mkdir_command
 @li @subpage mount_command
 @li @subpage mtest
 @li @subpage mw
diff --git a/commands/mkdir.c b/commands/mkdir.c
index b66795b..9e37775 100644
--- a/commands/mkdir.c
+++ b/commands/mkdir.c
@@ -59,9 +59,19 @@ static int do_mkdir(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_mkdir_help[] =
-"Usage: mkdir [directories]\n"
-"Create new directories\n";
+BAREBOX_CMD_HELP_START(mkdir)
+BAREBOX_CMD_HELP_USAGE("mkdir DIRECTORIES\n")
+BAREBOX_CMD_HELP_SHORT("Create new directories.\n")
+BAREBOX_CMD_HELP_OPT  ("-p", "create all parent directories\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page mkdir_command
+
+When called with the '-p' option, mkdir creates all non-existing parent
+directories.
+
+ */
 
 BAREBOX_CMD_START(mkdir)
 	.cmd		= do_mkdir,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
