Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpti-0001uM-LD
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:05 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:21 +0100
Message-Id: <1292413908-464-8-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 07/34] doc: add documentation for 'timeout' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/timeout.c         |   23 +++++++++++++++--------
 2 files changed, 16 insertions(+), 9 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 56edb43..e25dda0 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -96,7 +96,7 @@ available in @a Barebox:
 @li @subpage sleep
 @li @subpage source
 @li @subpage test
-@li @subpage timeout
+@li @subpage timeout_command
 @li @subpage true
 @li @subpage tftp_command
 @li @subpage ubiattach_command
diff --git a/commands/timeout.c b/commands/timeout.c
index 5f2ab9a..71a7716 100644
--- a/commands/timeout.c
+++ b/commands/timeout.c
@@ -93,14 +93,21 @@ out:
 	return ret;
 }
 
-static const __maybe_unused char cmd_timeout_help[] =
-"Usage: timeout [OPTION]... <timeout>\n"
-"Wait <timeout> seconds for a timeout. Return 1 if the user intervented\n"
-"or 0 if a timeout occured\n"
-"  -a  interrupt on any key\n"
-"  -c  interrupt on ctrl-c\n"
-"  -r  interrupt on return\n"
-"  -s  silent mode\n";
+BAREBOX_CMD_HELP_START(timeout)
+BAREBOX_CMD_HELP_USAGE("timeout [OPTIONS] <timeout>\n")
+BAREBOX_CMD_HELP_SHORT("Wait <timeout> seconds for a timeout, return 1 on user intervention and 0 on timeout.\n")
+BAREBOX_CMD_HELP_OPT  ("-a",        "interrupt on any key\n")
+BAREBOX_CMD_HELP_OPT  ("-c",        "interrupt on ctrl-c\n")
+BAREBOX_CMD_HELP_OPT  ("-r",        "interrupt on return\n")
+BAREBOX_CMD_HELP_OPT  ("-s",        "silent mode\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page timeout_command
+
+\todo Add an example
+
+ */
 
 BAREBOX_CMD_START(timeout)
 	.cmd		= do_timeout,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
