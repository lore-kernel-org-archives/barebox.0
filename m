Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq5-0007o9-GY
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:07 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:39 +0100
Message-Id: <1288600434-6112-7-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 06/21] doc: add documentation for 'dfu'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    1 +
 commands/dfu.c             |   28 ++++++++++++++++++----------
 2 files changed, 19 insertions(+), 10 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index bc1a428..17e034a 100644
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
index 66fd6ea..7043bd5 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -162,16 +162,24 @@ out:
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
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page dfu_command
+\<description> has the following form:
+device1(name1)[sr],device2)[sr]
+'s' means 'safe mode' (download the complete image before flashing) and
+'r' that readback of the firmware is allowed.
+
+\todo Add example, how to use dfu from a Linux or Windows host.
+ */
 
 BAREBOX_CMD_START(dfu)
 	.cmd		= do_dfu,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
