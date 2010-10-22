Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkV-0001x9-Tv
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:50 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:14 +0200
Message-Id: <1287765924-1856-23-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 22/32] doc: add documentation for 'crc32'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    1 +
 commands/crc.c             |   15 +++++++--------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index f829a3c..cfff884 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -7,6 +7,7 @@
 @li @subpage cd_command
 @li @subpage clear_command
 @li @subpage cp_command
+@li @subpage crc_command
 @li @subpage delpart_command
 @li @subpage devinfo_command
 @li @subpage edit_command
diff --git a/commands/crc.c b/commands/crc.c
index d3e0865..0873a1c 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -143,19 +143,18 @@ static int do_crc(struct command *cmdtp, int argc, char *argv[])
 	return err;
 }
 
-static const __maybe_unused char cmd_crc_help[] =
-"Usage: crc32 [OPTION] [AREA]\n"
-"Calculate a crc32 checksum of a memory area\n"
-"Options:\n"
-"  -f <file>   Use file instead of memory\n"
+BAREBOX_CMD_HELP_START(crc)
+BAREBOX_CMD_HELP_USAGE("crc32 [OPTION] [AREA]\n")
+BAREBOX_CMD_HELP_SHORT("Calculate a crc32 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_OPT  ("-f <file>", "Use file instead of memory.\n")
 #ifdef CONFIG_CMD_CRC_CMP
-"  -F <file>   Use file to compare\n"
+BAREBOX_CMD_HELP_OPT  ("-F <file>", "Use file to compare.\n")
 #endif
-"  -v <crc>    Verfify\n";
+BAREBOX_CMD_HELP_OPT  ("-v <crc>",  "Verfify\n")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(crc32)
 	.cmd		= do_crc,
 	.usage		= "crc32 checksum calculation",
 	BAREBOX_CMD_HELP(cmd_crc_help)
 BAREBOX_CMD_END
-
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
