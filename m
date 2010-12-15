Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptk-0004Pw-2o
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:51:58 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:43 +0100
Message-Id: <1292413908-464-30-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 29/34] doc: add documentation for 'rarpboot' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 Doxyfile                   |    3 ++-
 commands/net.c             |   19 ++++++++++++++++---
 3 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 8895e0e..7a515c5 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -86,7 +86,7 @@ available in @a Barebox:
 @li @subpage pwd_command
 @li @subpage readline_command
 @li @subpage reset_command
-@li @subpage rarpboot
+@li @subpage rarpboot_command
 @li @subpage reginfo_command
 @li @subpage rm_command
 @li @subpage rmdir_command
diff --git a/Doxyfile b/Doxyfile
index 89151e3..73dbb6d 100644
--- a/Doxyfile
+++ b/Doxyfile
@@ -1070,7 +1070,8 @@ INCLUDE_FILE_PATTERNS  =
 PREDEFINED             = \
 			DOXYGEN_SHOULD_SKIP_THIS \
 			CONFIG_CMD_DEVINFO \
-			CONFIG_NET_TFTP_PUSH
+			CONFIG_NET_TFTP_PUSH \
+			CONFIG_NET_RARP
 
 # If the MACRO_EXPANSION and EXPAND_ONLY_PREDEF tags are set to YES then
 # this tag can be used to specify a list of macro names that should be expanded.
diff --git a/commands/net.c b/commands/net.c
index 938463c..3adf537 100644
--- a/commands/net.c
+++ b/commands/net.c
@@ -38,7 +38,7 @@
 #ifdef CONFIG_NET_RARP
 extern void RarpRequest(void);
 
-static int do_rarpb(struct command *cmdtp, int argc, char *argv[])
+static int do_rarpboot(struct command *cmdtp, int argc, char *argv[])
 {
 	int size;
 
@@ -57,11 +57,24 @@ static int do_rarpb(struct command *cmdtp, int argc, char *argv[])
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(rarpboot)
+BAREBOX_CMD_HELP_USAGE("rarpboot [LOADADDR] [BOOTFILENAME]\n")
+BAREBOX_CMD_HELP_SHORT("Boot an image via network using rarp/tftp protocol.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page rarpboot_command
+
+\todo Discuss this command with sha. The signature looks wrong.
+
+ */
+
 BAREBOX_CMD_START(rarpboot)
-	.cmd		= do_rarpb,
+	.cmd		= do_rarpboot,
 	.usage		= "boot image via network using rarp/tftp protocol",
-	BAREBOX_CMD_HELP("[loadAddress] [bootfilename]\n")
+	BAREBOX_CMD_HELP(cmd_rarpboot_help)
 BAREBOX_CMD_END
+
 #endif /* CONFIG_NET_RARP */
 
 static int do_ethact(struct command *cmdtp, int argc, char *argv[])
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
