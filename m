Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq4-0007o6-S8
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:04 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:36 +0100
Message-Id: <1288600434-6112-4-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 03/21] doc: add documentation for 'bmp'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    1 +
 commands/bmp.c             |   27 +++++++++++++++++++--------
 2 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index e8ad177..ac280d6 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -2,6 +2,7 @@
  * @page command_reference Supported Shell Commands
 
 @li @subpage addpart_command
+@li @subpage bmp_command
 @li @subpage cat_command
 @li @subpage cd_command
 @li @subpage cp_command
diff --git a/commands/bmp.c b/commands/bmp.c
index 6e17200..9402c05 100644
--- a/commands/bmp.c
+++ b/commands/bmp.c
@@ -193,17 +193,28 @@ failed_memmap:
 	return 1;
 }
 
-static const __maybe_unused char cmd_bmp_help[] =
-"Usage: bmp [OPTION]... FILE\n"
-"show bmp image FILE.\n"
-"  -f <fb>   framebuffer device (/dev/fb0)\n"
-"  -x <xofs> x offset (default center)\n"
-"  -y <yofs> y offset (default center)\n"
-"  -o        render offscreen\n";
+BAREBOX_CMD_HELP_START(bmp)
+BAREBOX_CMD_HELP_USAGE("bmp [OPTIONS] FILE")
+BAREBOX_CMD_HELP_SHORT("Show the bitmap FILE on the framebuffer.")
+BAREBOX_CMD_HELP_OPT  ("-f <fb>",   "framebuffer device (/dev/fb0)")
+BAREBOX_CMD_HELP_OPT  ("-x <xofs>", "x offset (default center)")
+BAREBOX_CMD_HELP_OPT  ("-y <yofs>", "y offset (default center)")
+BAREBOX_CMD_HELP_OPT  ("-o",        "render offscreen")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page bmp_command
+
+This command displays a graphics in the bitmap (.bmp) format on the
+framebuffer. Currently the bmp command supports images with 8 and 24 bit
+color depth.
+
+\todo What does the -o (offscreen) option do?
+
+ */
 
 BAREBOX_CMD_START(bmp)
 	.cmd		= do_bmp,
 	.usage		= "show a bmp image",
 	BAREBOX_CMD_HELP(cmd_bmp_help)
 BAREBOX_CMD_END
-
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
