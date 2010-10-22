Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkY-0001xD-M5
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:51 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:13 +0200
Message-Id: <1287765924-1856-22-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 21/32] doc: add documentation for 'clear'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    1 +
 commands/clear.c           |    5 +++++
 2 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index da95e85..f829a3c 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -5,6 +5,7 @@
 @li @subpage bmp_command
 @li @subpage cat_command
 @li @subpage cd_command
+@li @subpage clear_command
 @li @subpage cp_command
 @li @subpage delpart_command
 @li @subpage devinfo_command
diff --git a/commands/clear.c b/commands/clear.c
index 7589a0c..6a6b6c5 100644
--- a/commands/clear.c
+++ b/commands/clear.c
@@ -31,6 +31,11 @@ static int do_clear(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(clear)
+BAREBOX_CMD_HELP_USAGE("clear\n")
+BAREBOX_CMD_HELP_SHORT("Clear the screen.\n")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(clear)
 	.cmd		= do_clear,
 	.usage		= "clear screen",
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
