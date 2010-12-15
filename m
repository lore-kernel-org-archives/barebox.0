Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpu2-0004Ps-8j
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:14 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:34 +0100
Message-Id: <1292413908-464-21-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 20/34] doc: add documentation for 'exec' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/exec.c            |    5 +++++
 2 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 087ab4e..023a559 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -40,7 +40,7 @@ available in @a Barebox:
 @li @subpage edit_command
 @li @subpage erase_command
 @li @subpage ethact
-@li @subpage exec
+@li @subpage exec_command
 @li @subpage exit
 @li @subpage export_command
 @li @subpage false_command
diff --git a/commands/exec.c b/commands/exec.c
index 5f093b7..7f655b6 100644
--- a/commands/exec.c
+++ b/commands/exec.c
@@ -53,6 +53,11 @@ out:
 	return 1;
 }
 
+BAREBOX_CMD_HELP_START(exec)
+BAREBOX_CMD_HELP_USAGE("exec SCRIPT\n")
+BAREBOX_CMD_HELP_SHORT("Execute a script.\n")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(exec)
 	.cmd		= do_exec,
 	.usage		= "execute a script",
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
