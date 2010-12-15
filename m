Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptk-0004Py-2R
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:51:57 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:35 +0100
Message-Id: <1292413908-464-22-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 21/34] doc: add documentation for 'reset' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/reset.c           |    5 +++++
 2 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 023a559..2d3d5f2 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -85,7 +85,7 @@ available in @a Barebox:
 @li @subpage protect_command
 @li @subpage pwd_command
 @li @subpage readline_command
-@li @subpage reset
+@li @subpage reset_command
 @li @subpage rarpboot
 @li @subpage reginfo
 @li @subpage rm_command
diff --git a/commands/reset.c b/commands/reset.c
index 46ab901..64c7f87 100644
--- a/commands/reset.c
+++ b/commands/reset.c
@@ -31,6 +31,11 @@ static int cmd_reset(struct command *cmdtp, int argc, char *argv[])
 	return 1;
 }
 
+BAREBOX_CMD_HELP_START(reset)
+BAREBOX_CMD_HELP_USAGE("reset\n")
+BAREBOX_CMD_HELP_SHORT("Perform a reset on the cpu.\n")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(reset)
 	.cmd		= cmd_reset,
 	.usage		= "Perform RESET of the CPU",
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
