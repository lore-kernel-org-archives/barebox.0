Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptk-0004Pz-2w
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:51:58 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:38 +0100
Message-Id: <1292413908-464-25-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 24/34] doc: add documentation for 'go' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/go.c              |   17 ++++++++++++-----
 2 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 907818e..430cc52 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -49,7 +49,7 @@ available in @a Barebox:
 @li @subpage gpio_set_value_command
 @li @subpage gpio_direction_input_command
 @li @subpage gpio_direction_output_command
-@li @subpage go
+@li @subpage go_command
 @li @subpage help_command
 @li @subpage host
 @li @subpage i2c_probe
diff --git a/commands/go.c b/commands/go.c
index 0262940..cb0b72b 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -77,11 +77,18 @@ out:
 	return rcode;
 }
 
-static const __maybe_unused char cmd_go_help[] =
-"Usage: go addr [arg ...]\n"
-"Start application at address 'addr' passing 'arg' as arguments.\n"
-"If addr does not start with a digit it is interpreted as a filename\n"
-"in which case the file is memmapped and executed\n";
+BAREBOX_CMD_HELP_START(go)
+BAREBOX_CMD_HELP_USAGE("go ADDR [ARGS]\n")
+BAREBOX_CMD_HELP_SHORT("Start application at address ADDR, passing ARGS as arguments.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page go_command
+
+If ADDR does not start with a digit, it is interpreted as a filename. In
+this case the file is memory mapped and executed.
+
+ */
 
 BAREBOX_CMD_START(go)
 	.cmd		= do_go,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
