Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq5-0007oF-Td
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:11 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:45 +0100
Message-Id: <1288600434-6112-13-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 12/21] doc: add documentation for 'bootm'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    1 +
 commands/bootm.c           |   38 ++++++++++++++++++++------------------
 2 files changed, 21 insertions(+), 18 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 38968b5..2679ed7 100644
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
index 0d3649f..eab23d9 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -368,18 +368,18 @@ err_out:
 	return 1;
 }
 
-static const __maybe_unused char cmd_bootm_help[] =
-"Usage: bootm [OPTION] image\n"
-"Boot application image\n"
-" -n             do not verify the images (speeds up boot process)\n"
-" -h             show advanced options\n";
+BAREBOX_CMD_HELP_START(bootm)
+BAREBOX_CMD_HELP_USAGE("bootm [-n] image\n")
+BAREBOX_CMD_HELP_SHORT("Boot an application image.\n")
+BAREBOX_CMD_HELP_OPT  ("-n",  "Do not verify the image (speeds up boot process)")
+BAREBOX_CMD_HELP_END
 
+/**
+ * @page bootm_command
 
-BAREBOX_CMD_START(bootm)
-	.cmd		= do_bootm,
-	.usage		= "boot application image",
-	BAREBOX_CMD_HELP(cmd_bootm_help)
-BAREBOX_CMD_END
+\todo What does bootm do, what kind of image does it boot?
+
+ */
 
 #ifdef CONFIG_CMD_IMI
 static int do_iminfo(struct command *cmdtp, int argc, char *argv[])
@@ -440,14 +440,16 @@ static int image_info (ulong addr)
 	return 0;
 }
 
-BAREBOX_CMD(
-	iminfo,		1,	do_iminfo,
-	"iminfo  - print header information for application image\n",
-	"addr [addr ...]\n"
-	"    - print header information for application image starting at\n"
-	"      address 'addr' in memory; this includes verification of the\n"
-	"      image contents (magic number, header and payload checksums)\n"
-);
+BAREBOX_CMD_HELP_START(iminfo)
+BAREBOX_CMD_HELP_USAGE("iminfo")
+BAREBOX_CMD_HELP_SHORT("Print header information for an application image.")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(iminfo)
+	.cmd		= do_iminfo,
+	.usage		= "print header information for an application image",
+	BAREBOX_CMD_HELP(cmd_iminfo_help)
+BAREBOX_CMD_END
 
 #endif	/* CONFIG_CMD_IMI */
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
