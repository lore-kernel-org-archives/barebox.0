Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkY-0001x7-ME
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:51 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:15 +0200
Message-Id: <1287765924-1856-24-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 23/32] doc: add documentation for 'dfu'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    1 +
 commands/dfu.c             |   21 +++++++++++----------
 2 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index cfff884..f3b5028 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -10,6 +10,7 @@
 @li @subpage crc_command
 @li @subpage delpart_command
 @li @subpage devinfo_command
+@li @subpage dfu_command
 @li @subpage edit_command
 @li @subpage erase_command
 @li @subpage export_command
diff --git a/commands/dfu.c b/commands/dfu.c
index 66fd6ea..6750130 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -162,16 +162,17 @@ out:
 	return 1;
 }
 
-static const __maybe_unused char cmd_dfu_help[] =
-"Usage: dfu [OPTION]... description\n"
-"start dfu firmware update\n"
-" -m <str> Manufacturer string (barebox)\n"
-" -p <str> product string (" CONFIG_BOARDINFO ")\n"
-" -V <id>  vendor id\n"
-" -P <id>  product id\n"
-"description has the form\n"
-"device1(name1)[sr],device2(name2)[sr]\n"
-"where s is for save mode and r for read back of firmware\n";
+BAREBOX_CMD_HELP_START(dfu)
+BAREBOX_CMD_HELP_USAGE("dfu [OPTIONS] <description>\n")
+BAREBOX_CMD_HELP_SHORT("Start firmware update with the Device Firmware Update (DFU) protocol.")
+BAREBOX_CMD_HELP_OPT  ("-m <str>",  "Manufacturer string (barebox)\n")
+BAREBOX_CMD_HELP_OPT  ("-p <str>",  "product string (" CONFIG_BOARDINFO ")\n")
+BAREBOX_CMD_HELP_OPT  ("-V <id>",   "vendor id\n")
+BAREBOX_CMD_HELP_OPT  ("-P <id>",   "product id\n")
+BAREBOX_CMD_HELP_TEXT ("<description> has the form:")
+BAREBOX_CMD_HELP_TEXT ("device1(name1)[sr],device2(name2)[sr]")
+BAREBOX_CMD_HELP_TEXT ("where "s" means "safe mode" and "r" readback of firmware.")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(dfu)
 	.cmd		= do_dfu,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
