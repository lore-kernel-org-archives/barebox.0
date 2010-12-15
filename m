Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptm-0004Q4-Mv
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:04 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:45 +0100
Message-Id: <1292413908-464-32-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 31/34] doc: add documentation for 'nand' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/nand.c            |   22 +++++++++++++++-------
 2 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 44a72da..881fc2c 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -76,7 +76,7 @@ available in @a Barebox:
 @li @subpage mtest
 @li @subpage mw
 @li @subpage mycdev
-@li @subpage nand
+@li @subpage nand_command
 @li @subpage nand_boot_test
 @li @subpage nfs_command
 @li @subpage passwd_command
diff --git a/commands/nand.c b/commands/nand.c
index 0902f21..18c6bd3 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -354,15 +354,23 @@ static int do_nand(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_nand_help[] =
-"Usage: nand [OPTION]...\n"
-"nand related commands\n"
-"  -a  <dev>  register a bad block aware device ontop of a normal nand device\n"
-"  -d  <dev>  deregister a bad block aware device\n"
-"  -b  <ofs> <dev> mark block at offset ofs as bad\n";
+BAREBOX_CMD_HELP_START(nand)
+BAREBOX_CMD_HELP_USAGE("nand [OPTIONS]\n")
+BAREBOX_CMD_HELP_SHORT("NAND related commands.\n")
+BAREBOX_CMD_HELP_OPT  ("-a <dev>", "register a bad block aware device ontop of a normal nand device\n")
+BAREBOX_CMD_HELP_OPT  ("-d <dev>", "deregister a bad block aware device\n")
+BAREBOX_CMD_HELP_OPT  ("-b <ofs> <dev>", "mark block at offset ofs as bad\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page nand_command
+
+\todo This does definitely need more documentation.
+
+ */
 
 BAREBOX_CMD_START(nand)
 	.cmd		= do_nand,
-	.usage		= "NAND specific handling",
+	.usage		= "NAND related commands",
 	BAREBOX_CMD_HELP(cmd_nand_help)
 BAREBOX_CMD_END
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
