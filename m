Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpti-0001uK-LI
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:03 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:19 +0100
Message-Id: <1292413908-464-6-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 05/34] doc: add documentation for 'usb' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 drivers/usb/core/usb.c     |   14 +++++++++++---
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 07ae9d2..d5536d3 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -105,7 +105,7 @@ available in @a Barebox:
 @li @subpage umount_command
 @li @subpage unlzo_command
 @li @subpage unprotect_command
-@li @subpage usb
+@li @subpage usb_command
 @li @subpage version_command
 
 */
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 76e033e..38042a5 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -488,9 +488,17 @@ static int do_usb(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
-static const __maybe_unused char cmd_usb_help[] =
-"Usage: usb\n"
-"(re-)detect USB devices\n";
+BAREBOX_CMD_HELP_START(usb)
+BAREBOX_CMD_HELP_USAGE("usb\n")
+BAREBOX_CMD_HELP_SHORT("(re-)detect USB devices.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page usb_command
+
+\todo add examples
+
+ */
 
 BAREBOX_CMD_START(usb)
 	.cmd		= do_usb,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
