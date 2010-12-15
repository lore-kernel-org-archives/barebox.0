Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpti-0001uN-Kv
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:51:59 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:24 +0100
Message-Id: <1292413908-464-11-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 10/34] doc: add documentation for 'rm' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/rm.c              |    7 ++++---
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 6598002..b0919d0 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -88,7 +88,7 @@ available in @a Barebox:
 @li @subpage reset
 @li @subpage rarpboot
 @li @subpage reginfo
-@li @subpage rm
+@li @subpage rm_command
 @li @subpage rmdir
 @li @subpage saveenv_command
 @li @subpage setenv_command
diff --git a/commands/rm.c b/commands/rm.c
index 3437ae5..4a45fee 100644
--- a/commands/rm.c
+++ b/commands/rm.c
@@ -42,9 +42,10 @@ static int do_rm(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_rm_help[] =
-"Usage: rm [FILES]\n"
-"Remove files\n";
+BAREBOX_CMD_HELP_START(rm)
+BAREBOX_CMD_HELP_USAGE("rm FILE\n")
+BAREBOX_CMD_HELP_SHORT("Remove files.\n")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(rm)
 	.cmd		= do_rm,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
