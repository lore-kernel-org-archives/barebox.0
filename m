Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq9-0003Ea-QY
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:06 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:54 +0100
Message-Id: <1288600434-6112-22-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 21/21] doc: unify documentation for 'tftp'
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Doxyfile   |    3 ++-
 net/tftp.c |   49 +++++++++++++++++++++----------------------------
 2 files changed, 23 insertions(+), 29 deletions(-)

diff --git a/Doxyfile b/Doxyfile
index f030584..d9ce22c 100644
--- a/Doxyfile
+++ b/Doxyfile
@@ -1069,7 +1069,8 @@ INCLUDE_FILE_PATTERNS  =
 
 PREDEFINED             = \
 			DOXYGEN_SHOULD_SKIP_THIS \
-			CONFIG_CMD_DEVINFO
+			CONFIG_CMD_DEVINFO \
+			CONFIG_NET_TFTP_PUSH
 
 # If the MACRO_EXPANSION and EXPAND_ONLY_PREDEF tags are set to YES then
 # this tag can be used to specify a list of macro names that should be expanded.
diff --git a/net/tftp.c b/net/tftp.c
index 6345a72..c7f9b8c 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -364,15 +364,29 @@ out_close:
 	return tftp_err == 0 ? 0 : 1;
 }
 
-static const __maybe_unused char cmd_tftp_help[] =
-"Usage: tftp <remotefile> [localfile]\n"
-"Load a file from a TFTP server.\n"
+BAREBOX_CMD_HELP_START(tftp)
 #ifdef CONFIG_NET_TFTP_PUSH
-"or\n"
-"       tftp -p <localfile> [remotefile]\n"
-"Upload a file to a TFTP server\n"
+BAREBOX_CMD_HELP_USAGE("tftp <remotefile> [localfile], tftp -p <localfile> [remotefile]\n")
+BAREBOX_CMD_HELP_SHORT("Load a file from or upload to TFTP server.")
+BAREBOX_CMD_HELP_END
+#else
+BAREBOX_CMD_HELP_USAGE("tftp <remotefile> [localfile]\n")
+BAREBOX_CMD_HELP_SHORT("Load a file from a TFTP server.")
+BAREBOX_CMD_HELP_END
 #endif
-;
+
+/**
+ * @page tftp_command
+
+The second file argument can be skipped in which case the first filename
+is used (without the directory part).
+
+\<localfile> can be the local filename or a device file under /dev.
+This also works for flash memory. Refer to \ref erase_command and \ref
+unprotect_command for flash preparation.
+
+\note This command is available only if enabled in menuconfig.
+ */
 
 BAREBOX_CMD_START(tftp)
 	.cmd		= do_tftpb,
@@ -384,24 +398,3 @@ BAREBOX_CMD_START(tftp)
 	BAREBOX_CMD_HELP(cmd_tftp_help)
 BAREBOX_CMD_END
 
-/**
- * @page tftp_command tftp
- *
- * Usage:
- *	tftp \<remotefilename\> [\<localfilename\>]
- *
- * or
- *
- *	tftp -p \<localfilename\> [\<remotefilename\>]
- *
- * Load a file from a tftp server or upload a file to a tftp server if
- * the -p option is given. The second file argument can be skipped in
- * which case the first filename is used (without the directory part).
- *
- * \<localfile> can be the local filename or a device file under /dev.
- * This also works for flash memory. Refer to \b erase, \b unprotect for
- * flash preparation.
- *
- * Note: This command is available only if enabled in menuconfig.
- */
-
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
