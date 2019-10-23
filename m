Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJva-0002H0-Kr
 for barebox@lists.infradead.org; Wed, 23 Oct 2019 16:56:08 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 23 Oct 2019 18:56:01 +0200
Message-Id: <20191023165601.16441-6-a.fatoum@pengutronix.de>
In-Reply-To: <20191023165601.16441-1-a.fatoum@pengutronix.de>
References: <20191023165601.16441-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 6/6] commands: wd: support configuring watchdog by name
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

So far, wd has always configured the highest-priority watchdog when
multiple are available. Add an optional -d parameter to support
configuring the other watchdogs as well. The name passed can be either
the watchdog device name (e.g. wdog0) or the hardware device name (e.g.
efi-wdt).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/wd.c | 34 +++++++++++++++++++++++++++-------
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/commands/wd.c b/commands/wd.c
index f857291f0362..8029bab1ce19 100644
--- a/commands/wd.c
+++ b/commands/wd.c
@@ -16,6 +16,8 @@
 #include <command.h>
 #include <errno.h>
 #include <linux/ctype.h>
+#include <getopt.h>
+#include <complete.h>
 #include <watchdog.h>
 
 /* default timeout in [sec] */
@@ -23,18 +25,30 @@ static unsigned timeout = CONFIG_CMD_WD_DEFAULT_TIMOUT;
 
 static int do_wd(int argc, char *argv[])
 {
+	struct watchdog *wd = watchdog_get_default();
+	int opt;
 	int rc;
 
-	if (argc > 1) {
-		if (isdigit(*argv[1])) {
-			timeout = simple_strtoul(argv[1], NULL, 0);
+	while ((opt = getopt(argc, argv, "d:")) > 0) {
+		switch (opt) {
+		case 'd':
+			wd = watchdog_get_by_name(optarg);
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind < argc) {
+		if (isdigit(*argv[optind])) {
+			timeout = simple_strtoul(argv[optind], NULL, 0);
 		} else {
 			printf("numerical parameter expected\n");
-			return 1;
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
-	rc = watchdog_set_timeout(watchdog_get_default(), timeout);
+	rc = watchdog_set_timeout(wd, timeout);
 	if (rc < 0) {
 		switch (rc) {
 		case -EINVAL:
@@ -43,12 +57,15 @@ static int do_wd(int argc, char *argv[])
 		case -ENOSYS:
 			printf("Watchdog cannot be disabled\n");
 			break;
+		case -ENODEV:
+			printf("Watchdog device doesn't exist.\n");
+			break;
 		default:
 			printf("Watchdog fails: '%s'\n", strerror(-rc));
 			break;
 		}
 
-		return 1;
+		return COMMAND_ERROR;
 	}
 
 	return 0;
@@ -58,12 +75,15 @@ BAREBOX_CMD_HELP_START(wd)
 BAREBOX_CMD_HELP_TEXT("Enable the watchdog to bark in TIME seconds.")
 BAREBOX_CMD_HELP_TEXT("When TIME is 0, the watchdog gets disabled,")
 BAREBOX_CMD_HELP_TEXT("Without a parameter the watchdog will be re-triggered.")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-d DEVICE\t", "watchdog name (default is highest priority watchdog)")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(wd)
 	.cmd = do_wd,
 	BAREBOX_CMD_DESC("enable/disable/trigger the watchdog")
-	BAREBOX_CMD_OPTS("[TIME]")
+	BAREBOX_CMD_OPTS("[-d DEVICE] [TIME]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_wd_help)
+	BAREBOX_CMD_COMPLETE(device_complete)
 BAREBOX_CMD_END
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
