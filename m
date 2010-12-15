Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpti-0001uH-Lu
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:51:55 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:17 +0100
Message-Id: <1292413908-464-4-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 03/34] doc: add documentation for 'unlzo' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/unlzo.c           |   14 +++++++++++---
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 6c2f59d..cc892d4 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -103,7 +103,7 @@ available in @a Barebox:
 @li @subpage ubimkvol
 @li @subpage ubirmvol
 @li @subpage umount
-@li @subpage unlzo
+@li @subpage unlzo_command
 @li @subpage unprotect_command
 @li @subpage usb
 @li @subpage version_command
diff --git a/commands/unlzo.c b/commands/unlzo.c
index 0b6dd4b..40225e6 100644
--- a/commands/unlzo.c
+++ b/commands/unlzo.c
@@ -57,9 +57,17 @@ exit_close:
 	return ret;
 }
 
-static const __maybe_unused char cmd_unlzo_help[] =
-"Usage: unlzo <infile> <outfile>\n"
-"Uncompress a lzo compressed file\n";
+BAREBOX_CMD_HELP_START(unlzo)
+BAREBOX_CMD_HELP_USAGE("unlzo <infile> <outfile>\n")
+BAREBOX_CMD_HELP_SHORT("Uncompress a lzo compressed file.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page unlzo_command
+
+\todo Add an example, how to handle LZO files in RAM.
+
+ */
 
 BAREBOX_CMD_START(unlzo)
         .cmd            = do_unlzo,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
