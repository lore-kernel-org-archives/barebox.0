Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmDgS-0001BI-Ga
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 06:05:53 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 10 Mar 2017 07:05:22 +0100
Message-Id: <20170310060523.25810-3-o.rempel@pengutronix.de>
In-Reply-To: <20170310060523.25810-1-o.rempel@pengutronix.de>
References: <20170309175832.20213-2-o.rempel@pengutronix.de>
 <20170310060523.25810-1-o.rempel@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 2/3] console_countdown: add possibility to abort countdown
 by external commands
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

From: Marc Kleine-Budde <mkl@pengutronix.de>

This patch makes it possible to abort a console countdown by an external
command, for example when fastboot is used. This requires additional
modifications in the external commands, a call to "console_countdown_abort()"
has to be inserted.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/timeout.c          |  8 ++++++--
 common/console_countdown.c  | 15 +++++++++++++++
 include/console_countdown.h |  2 ++
 3 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/commands/timeout.c b/commands/timeout.c
index ef1a037c1..d197cedd8 100644
--- a/commands/timeout.c
+++ b/commands/timeout.c
@@ -32,7 +32,7 @@ static int do_timeout(int argc, char *argv[])
 	char str[2] = { };
 	const char *varname = NULL;
 
-	while((opt = getopt(argc, argv, "crsav:")) > 0) {
+	while ((opt = getopt(argc, argv, "crsav:e")) > 0) {
 		switch(opt) {
 		case 'r':
 			flags |= CONSOLE_COUNTDOWN_RETURN;
@@ -46,6 +46,9 @@ static int do_timeout(int argc, char *argv[])
 		case 's':
 			flags |= CONSOLE_COUNTDOWN_SILENT;
 			break;
+		case 'e':
+			flags |= CONSOLE_COUNTDOWN_EXTERN;
+			break;
 		case 'v':
 			varname = optarg;
 			break;
@@ -73,6 +76,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-a", "interrupt on any key")
 BAREBOX_CMD_HELP_OPT("-c", "interrupt on Ctrl-C")
 BAREBOX_CMD_HELP_OPT("-r", "interrupt on RETURN")
+BAREBOX_CMD_HELP_OPT("-e", "interrupt on external commands (i.e. fastboot")
 BAREBOX_CMD_HELP_OPT("-s", "silent mode")
 BAREBOX_CMD_HELP_OPT("-v <VARIABLE>", "export pressed key to environment")
 BAREBOX_CMD_HELP_END
@@ -80,7 +84,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(timeout)
 	.cmd		= do_timeout,
 	BAREBOX_CMD_DESC("wait for a specified timeout")
-	BAREBOX_CMD_OPTS("[-acrsv] SECONDS")
+	BAREBOX_CMD_OPTS("[-acrsev] SECONDS")
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_timeout_help)
 BAREBOX_CMD_END
diff --git a/common/console_countdown.c b/common/console_countdown.c
index b2eec72b2..03b9b3353 100644
--- a/common/console_countdown.c
+++ b/common/console_countdown.c
@@ -23,6 +23,13 @@
 #include <console_countdown.h>
 #include <stdio.h>
 
+static bool console_countdown_timeout_abort;
+
+void console_countdown_abort(void)
+{
+	console_countdown_timeout_abort = true;
+}
+
 int console_countdown(int timeout_s, unsigned flags, char *out_key)
 {
 	uint64_t start, second;
@@ -48,6 +55,9 @@ int console_countdown(int timeout_s, unsigned flags, char *out_key)
 				goto out;
 			key = 0;
 		}
+		if ((flags & CONSOLE_COUNTDOWN_EXTERN) &&
+		    console_countdown_timeout_abort)
+			goto out;
 		if (!(flags & CONSOLE_COUNTDOWN_SILENT) &&
 		    is_timeout(second, SECOND)) {
 			printf("\b\b\b\b%4d", countdown--);
@@ -55,6 +65,10 @@ int console_countdown(int timeout_s, unsigned flags, char *out_key)
 		}
 	} while (!is_timeout(start, timeout_s * SECOND));
 
+	if ((flags & CONSOLE_COUNTDOWN_EXTERN) &&
+	    console_countdown_timeout_abort)
+		goto out;
+
 	ret = 0;
 
  out:
@@ -62,6 +76,7 @@ int console_countdown(int timeout_s, unsigned flags, char *out_key)
 		printf("\n");
 	if (key && out_key)
 		*out_key = key;
+	console_countdown_timeout_abort = false;
 
 	return ret;
 }
diff --git a/include/console_countdown.h b/include/console_countdown.h
index cb46964bc..c6c2d5c00 100644
--- a/include/console_countdown.h
+++ b/include/console_countdown.h
@@ -5,7 +5,9 @@
 #define CONSOLE_COUNTDOWN_ANYKEY (1 << 1)
 #define CONSOLE_COUNTDOWN_RETURN (1 << 3)
 #define CONSOLE_COUNTDOWN_CTRLC (1 << 4)
+#define CONSOLE_COUNTDOWN_EXTERN (1 << 5)
 
 int console_countdown(int timeout_s, unsigned flags, char *out_key);
+void console_countdown_abort(void);
 
 #endif /* __CONSOLE_COUNTDOWN_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
