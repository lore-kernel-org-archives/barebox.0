Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptm-0001uT-Iy
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:06 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:30 +0100
Message-Id: <1292413908-464-17-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 16/34] doc: add documentation for 'insmod' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/insmod.c          |   13 +++++++++++--
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 2775b2d..cf45b14 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -57,7 +57,7 @@ available in @a Barebox:
 @li @subpage i2c_write
 @li @subpage icache
 @li @subpage iminfo
-@li @subpage insmod
+@li @subpage insmod_command
 @li @subpage linux16_command
 @li @subpage loadenv_command
 @li @subpage loadb
diff --git a/commands/insmod.c b/commands/insmod.c
index d3b4d1a..65a7d36 100644
--- a/commands/insmod.c
+++ b/commands/insmod.c
@@ -32,8 +32,17 @@ static int do_insmod(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_insmod_help[] =
-"Usage: insmod <module>\n"; 
+BAREBOX_CMD_HELP_START(insmod)
+BAREBOX_CMD_HELP_USAGE("insmod MODULE\n")
+BAREBOX_CMD_HELP_SHORT("Insert a module.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page insmod_command
+
+\todo Add example for module handling.
+
+ */
 
 BAREBOX_CMD_START(insmod)
 	.cmd		= do_insmod,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
