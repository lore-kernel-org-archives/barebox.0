Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptk-0004Pt-2s
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:01 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:36 +0100
Message-Id: <1292413908-464-23-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 22/34] doc: add documentation for 'reginfo' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/reginfo.c         |   12 ++++++++++++
 2 files changed, 13 insertions(+), 1 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 2d3d5f2..c26abc2 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -87,7 +87,7 @@ available in @a Barebox:
 @li @subpage readline_command
 @li @subpage reset_command
 @li @subpage rarpboot
-@li @subpage reginfo
+@li @subpage reginfo_command
 @li @subpage rm_command
 @li @subpage rmdir_command
 @li @subpage saveenv_command
diff --git a/commands/reginfo.c b/commands/reginfo.c
index 90651d5..6e5be31 100644
--- a/commands/reginfo.c
+++ b/commands/reginfo.c
@@ -29,6 +29,18 @@ static int do_reginfo(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(reginfo)
+BAREBOX_CMD_HELP_USAGE("reginfo\n")
+BAREBOX_CMD_HELP_SHORT("Print register information.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page reginfo_command
+
+\todo Add more reginfo documentation.
+
+ */
+
 BAREBOX_CMD_START(reginfo)
 	.cmd		= do_reginfo,
 	.usage		= "print register information",
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
