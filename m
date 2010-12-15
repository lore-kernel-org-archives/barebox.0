Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpti-0001uS-LZ
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:02 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:27 +0100
Message-Id: <1292413908-464-14-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 13/34] doc: add documentation for 'test' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 commands/test.c            |   16 ++++++++++------
 2 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 45947e9..0293edc 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -95,7 +95,7 @@ available in @a Barebox:
 @li @subpage sh
 @li @subpage sleep_command
 @li @subpage source
-@li @subpage test
+@li @subpage test_command
 @li @subpage timeout_command
 @li @subpage true_command
 @li @subpage tftp_command
diff --git a/commands/test.c b/commands/test.c
index 4af3515..89a1764 100644
--- a/commands/test.c
+++ b/commands/test.c
@@ -222,16 +222,20 @@ out:
 
 static const char *test_aliases[] = { "[", NULL};
 
-static const __maybe_unused char cmd_test_help[] =
-"Usage: test [OPTIONS]\n"
-"options: !, =, !=, -eq, -ne, -ge, -gt, -le, -lt, -o, -a, -z, -n, -d, -e, -f\n"
-"see 'man test' on your PC for more information.\n";
+BAREBOX_CMD_HELP_START(test)
+BAREBOX_CMD_HELP_USAGE("test [OPTIONS]\n")
+BAREBOX_CMD_HELP_SHORT("!, =, !=, -eq, -ne, -ge, -gt, -le, -lt, -o, -a, -z, -n, -d, -e, -f\n")
+BAREBOX_CMD_HELP_END
 
-static const __maybe_unused char cmd_test_usage[] = "minimal test like /bin/sh";
+/**
+ * @page test_command
+
+See 'man test' on your PC for more information.
+ */
 
 BAREBOX_CMD_START(test)
 	.aliases	= test_aliases,
 	.cmd		= do_test,
-	.usage		= cmd_test_usage,
+	.usage		= "test for a condition",
 	BAREBOX_CMD_HELP(cmd_test_help)
 BAREBOX_CMD_END
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
