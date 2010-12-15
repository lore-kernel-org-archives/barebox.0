Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpti-0001uL-LU
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:51:57 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:20 +0100
Message-Id: <1292413908-464-7-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 06/34] doc: add documentation for ubi commands
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    6 +++---
 commands/ubi.c             |   39 +++++++++++++++++++++++++++++----------
 2 files changed, 32 insertions(+), 13 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index d5536d3..56edb43 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -99,9 +99,9 @@ available in @a Barebox:
 @li @subpage timeout
 @li @subpage true
 @li @subpage tftp_command
-@li @subpage ubiattach
-@li @subpage ubimkvol
-@li @subpage ubirmvol
+@li @subpage ubiattach_command
+@li @subpage ubimkvol_command
+@li @subpage ubirmvol_command
 @li @subpage umount_command
 @li @subpage unlzo_command
 @li @subpage unprotect_command
diff --git a/commands/ubi.c b/commands/ubi.c
index 3da0835..d896385 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -44,10 +44,17 @@ static int do_ubimkvol(struct command *cmdtp, int argc, char *argv[])
 	return ret ? 1 : 0;
 }
 
-static const __maybe_unused char cmd_ubimkvol_help[] =
-"Usage: ubimkvol <ubidev> <name> <size>\n"
-"Create an ubi volume on <ubidev> with name <name> and size <size>\n"
-"If size os zero all available space is used for the volume\n";
+BAREBOX_CMD_HELP_START(ubimkvol)
+BAREBOX_CMD_HELP_USAGE("ubimkvol <ubidev> <name> <size>\n")
+BAREBOX_CMD_HELP_SHORT("Create an ubi volume on <ubidev> with <name> and <size>.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page ubimkvol_command
+
+If size is zero, all available space is used for the volume.
+
+ */
 
 BAREBOX_CMD_START(ubimkvol)
 	.cmd		= do_ubimkvol,
@@ -82,9 +89,15 @@ static int do_ubiattach(struct command *cmdtp, int argc, char *argv[])
 	return ret ? 1 : 0;
 }
 
-static const __maybe_unused char cmd_ubiattach_help[] =
-"Usage: ubiattach <mtddev>\n"
-"Attach <mtddev> to ubi\n";
+BAREBOX_CMD_HELP_START(ubiattach)
+BAREBOX_CMD_HELP_USAGE("ubiattach <mtddev>\n")
+BAREBOX_CMD_HELP_SHORT("Attach <mtddev> to ubi.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page ubiattach_command
+
+ */
 
 BAREBOX_CMD_START(ubiattach)
 	.cmd		= do_ubiattach,
@@ -117,9 +130,15 @@ static int do_ubirmvol(struct command *cmdtp, int argc, char *argv[])
 	return ret ? 1 : 0;
 }
 
-static const __maybe_unused char cmd_ubirmvol_help[] =
-"Usage: ubirmvol <ubidev> <name>\n"
-"Delete ubi volume <name> from <ubidev>\n";
+BAREBOX_CMD_HELP_START(ubirmvol)
+BAREBOX_CMD_HELP_USAGE("ubirmvol <ubidev> <name>\n")
+BAREBOX_CMD_HELP_SHORT("Delete ubi volume <name> from <ubidev>.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page ubirmvol_command
+
+ */
 
 BAREBOX_CMD_START(ubirmvol)
 	.cmd		= do_ubirmvol,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
