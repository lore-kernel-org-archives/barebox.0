Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpti-0001uI-LO
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:01 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:18 +0100
Message-Id: <1292413908-464-5-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 04/34] doc: add documentation for 'umount' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/umount.c          |   14 +++++++++++---
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index cc892d4..07ae9d2 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -102,7 +102,7 @@ available in @a Barebox:
 @li @subpage ubiattach
 @li @subpage ubimkvol
 @li @subpage ubirmvol
-@li @subpage umount
+@li @subpage umount_command
 @li @subpage unlzo_command
 @li @subpage unprotect_command
 @li @subpage usb
diff --git a/commands/umount.c b/commands/umount.c
index 6ae5844..5295604 100644
--- a/commands/umount.c
+++ b/commands/umount.c
@@ -38,9 +38,17 @@ static int do_umount(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_umount_help[] =
-"Usage: umount <mountpoint>\n"
-"umount a filesystem mounted on a specific mountpoint\n";
+BAREBOX_CMD_HELP_START(umount)
+BAREBOX_CMD_HELP_USAGE("umount <mountpoint>\n")
+BAREBOX_CMD_HELP_SHORT("Unmount a filesystem mounted on a specific mountpoint.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page umount_command
+
+\todo Add an example
+
+ */
 
 BAREBOX_CMD_START(umount)
 	.cmd		= do_umount,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
