Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkV-0001x5-UB
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:50 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:21 +0200
Message-Id: <1287765924-1856-30-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 29/32] doc: add documentation for 'bootm'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    1 +
 commands/bootm.c           |   18 ++++++------------
 2 files changed, 7 insertions(+), 12 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 28ddff4..c1471fb 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -3,6 +3,7 @@
 
 @li @subpage addpart_command
 @li @subpage bmp_command
+@li @subpage bootm_command
 @li @subpage cat_command
 @li @subpage cd_command
 @li @subpage clear_command
diff --git a/commands/bootm.c b/commands/bootm.c
index 0d3649f..5cf97e8 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -368,18 +368,12 @@ err_out:
 	return 1;
 }
 
-static const __maybe_unused char cmd_bootm_help[] =
-"Usage: bootm [OPTION] image\n"
-"Boot application image\n"
-" -n             do not verify the images (speeds up boot process)\n"
-" -h             show advanced options\n";
-
-
-BAREBOX_CMD_START(bootm)
-	.cmd		= do_bootm,
-	.usage		= "boot application image",
-	BAREBOX_CMD_HELP(cmd_bootm_help)
-BAREBOX_CMD_END
+BAREBOX_CMD_HELP_START(bootm)
+BAREBOX_CMD_HELP_USAGE("bootm [OPTION] image\n")
+BAREBOX_CMD_HELP_SHORT("Boot an application image.\n")
+BAREBOX_CMD_HELP_OPT  ("-n",  "do not verify the images (speeds up boot process)")
+BAREBOX_CMD_HELP_END
+
 
 #ifdef CONFIG_CMD_IMI
 static int do_iminfo(struct command *cmdtp, int argc, char *argv[])
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
