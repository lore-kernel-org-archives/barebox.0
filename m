Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpu2-0004Q2-Hx
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:15 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:46 +0100
Message-Id: <1292413908-464-33-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 32/34] doc: add documentation for 'mw' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/mem.c             |   20 ++++++++++++++------
 2 files changed, 15 insertions(+), 7 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 881fc2c..c9a786d 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -74,7 +74,7 @@ available in @a Barebox:
 @li @subpage mkdir_command
 @li @subpage mount_command
 @li @subpage mtest
-@li @subpage mw
+@li @subpage mw_command
 @li @subpage mycdev
 @li @subpage nand_command
 @li @subpage nand_boot_test
diff --git a/commands/mem.c b/commands/mem.c
index 73bf915..dc778d3 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -289,12 +289,20 @@ static int do_mem_mw(struct command *cmdtp, int argc, char *argv[])
 	return errno;
 }
 
-static const __maybe_unused char cmd_mw_help[] =
-"Usage: mw [OPTIONS] <region> <value(s)>\n"
-"Write value(s) to the specifies region.\n"
-"options:\n"
-"  -b, -w, -l	use byte, halfword, or word accesses\n"
-"  -d <file>	write file (default /dev/mem)\n";
+BAREBOX_CMD_HELP_START(mw)
+BAREBOX_CMD_HELP_USAGE("mw [OPTIONS] REGION VALUE(s)\n")
+BAREBOX_CMD_HELP_SHORT("Write value(s) to the specified region.\n")
+BAREBOX_CMD_HELP_OPT  ("-b, -w, -l", "use byte, halfword or word accesses\n")
+BAREBOX_CMD_HELP_OPT  ("-d <file>", "write file (default: /dev/mem)\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page mw_command
+
+\todo Add more documentation, especially an example and more info about <region>
+
+ */
+
 
 BAREBOX_CMD_START(mw)
 	.cmd		= do_mem_mw,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
