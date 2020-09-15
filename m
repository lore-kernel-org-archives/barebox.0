Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI9lB-0005s0-E6
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:08:34 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 15 Sep 2020 14:08:30 +0200
Message-Id: <20200915120831.20549-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] commands: setenv: support setenv dev.var=VAL syntax
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

In preparation for making setenv selectable under CONFIG_SHELL_HUSH,
allow a `setenv dev.var=VAL syntax`:
  - makes command use less surprising for hush users
  - allows seamless integration with current device parameter complete

While at it, propagate setenv's return code to the calling shell.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/setenv.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/commands/setenv.c b/commands/setenv.c
index 3cf769d24a68..a70a0de4cebc 100644
--- a/commands/setenv.c
+++ b/commands/setenv.c
@@ -8,12 +8,20 @@
 
 static int do_setenv(int argc, char *argv[])
 {
+	char *equal;
+
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
-	setenv(argv[1], argv[2]);
+	equal = strrchr(argv[1], '=');
+	if (equal) {
+		equal[0] = '\0';
+		if (equal[1])
+			argv[2] = &equal[1];
+	}
+
 
-	return 0;
+	return setenv(argv[1], argv[2]) ? COMMAND_ERROR : COMMAND_SUCCESS;
 }
 
 BAREBOX_CMD_HELP_START(setenv)
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
