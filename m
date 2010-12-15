Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpti-0001uG-Kk
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:51:57 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:16 +0100
Message-Id: <1292413908-464-3-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 02/34] doc: add documentation for 'version' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/version.c         |   15 ++++++++++++++-
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 5ef7829..6c2f59d 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -106,6 +106,6 @@ available in @a Barebox:
 @li @subpage unlzo
 @li @subpage unprotect_command
 @li @subpage usb
-@li @subpage version
+@li @subpage version_command
 
 */
diff --git a/commands/version.c b/commands/version.c
index 2b3ac05..baec60f 100644
--- a/commands/version.c
+++ b/commands/version.c
@@ -29,9 +29,22 @@ static int do_version(struct command *cmdtp, int argc, char *argv[])
 	printf ("\n%s\n", version_string);
 	return 0;
 }
+BAREBOX_CMD_HELP_START(version)
+BAREBOX_CMD_HELP_USAGE("version\n")
+BAREBOX_CMD_HELP_SHORT("Print the Barebox version.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page version_command
+
+The version string follows the version information from the Linux
+kernel, so for code coming from git you get an information about the
+commit ID and the number of patches applied ontop of the last release.
+
+ */
 
 BAREBOX_CMD_START(version)
 	.cmd		= do_version,
-	.usage		= "print monitor version",
+	.usage		= "print barebox version",
 BAREBOX_CMD_END
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
