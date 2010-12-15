Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptm-0004Q6-M7
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:01 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:42 +0100
Message-Id: <1292413908-464-29-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 28/34] doc: add documentation for 'nfs' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 net/nfs.c                  |   14 +++++++++++---
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 9638728..8895e0e 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -78,7 +78,7 @@ available in @a Barebox:
 @li @subpage mycdev
 @li @subpage nand
 @li @subpage nand_boot_test
-@li @subpage nfs
+@li @subpage nfs_command
 @li @subpage passwd
 @li @subpage ping_command
 @li @subpage printenv_command
diff --git a/net/nfs.c b/net/nfs.c
index 4ca1d6e..d8e0bcc 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -725,9 +725,17 @@ err_udp:
 	return nfs_err == 0 ? 0 : 1;
 }
 
-static const __maybe_unused char cmd_nfs_help[] =
-"Usage: nfs <file> [localfile]\n"
-"Load a file via network using nfs protocol.\n";
+BAREBOX_CMD_HELP_START(nfs)
+BAREBOX_CMD_HELP_USAGE("nfs FILE [LOCALFILE]\n")
+BAREBOX_CMD_HELP_SHORT("Load a file via network, using the NFS protocol.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page nfs_command
+
+\todo Add more details and examples.
+
+ */
 
 BAREBOX_CMD_START(nfs)
 	.cmd		= do_nfs,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
