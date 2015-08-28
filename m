Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZVDJe-0006ey-UZ
 for barebox@lists.infradead.org; Fri, 28 Aug 2015 06:39:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Aug 2015 08:38:48 +0200
Message-Id: <1440743928-1995-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] boot command: Allow to enable watchdog
To: Barebox List <barebox@lists.infradead.org>

Enabling the watchdog before booting the kernel is a common usecase.
Add an option to the boot command and also add a global variable for
it to make it configurable easily.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 26 +++++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/commands/boot.c b/commands/boot.c
index 3341a05..fd58824 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -14,6 +14,7 @@
 #include <environment.h>
 #include <globalvar.h>
 #include <magicvar.h>
+#include <watchdog.h>
 #include <command.h>
 #include <readkey.h>
 #include <common.h>
@@ -24,6 +25,7 @@
 #include <clock.h>
 #include <boot.h>
 #include <glob.h>
+#include <init.h>
 #include <menu.h>
 #include <fs.h>
 #include <complete.h>
@@ -71,10 +73,28 @@ out:
 	return ret;
 }
 
+static unsigned int boot_watchdog_timeout;
+
+static int init_boot_watchdog_timeout(void)
+{
+	return globalvar_add_simple_int("boot.watchdog_timeout",
+			&boot_watchdog_timeout, "%u");
+}
+late_initcall(init_boot_watchdog_timeout);
+
+BAREBOX_MAGICVAR_NAMED(global_watchdog_timeout, global.boot.watchdog_timeout,
+		"Watchdog enable timeout in seconds before booting");
+
 static int boot_entry(struct blspec_entry *be)
 {
 	int ret;
 
+	if (IS_ENABLED(CONFIG_WATCHDOG) && boot_watchdog_timeout) {
+		ret = watchdog_set_timeout(boot_watchdog_timeout);
+		if (ret)
+			pr_warn("Failed to enable watchdog: %s\n", strerror(-ret));
+	}
+
 	if (be->scriptpath) {
 		ret = boot_script(be->scriptpath);
 	} else {
@@ -375,7 +395,7 @@ static int do_boot(int argc, char *argv[])
 	dryrun = 0;
 	timeout = -1;
 
-	while ((opt = getopt(argc, argv, "vldmt:")) > 0) {
+	while ((opt = getopt(argc, argv, "vldmt:w:")) > 0) {
 		switch (opt) {
 		case 'v':
 			verbose++;
@@ -392,6 +412,9 @@ static int do_boot(int argc, char *argv[])
 		case 't':
 			timeout = simple_strtoul(optarg, NULL, 0);
 			break;
+		case 'w':
+			boot_watchdog_timeout = simple_strtoul(optarg, NULL, 0);
+			break;
 		}
 	}
 
@@ -477,6 +500,7 @@ BAREBOX_CMD_HELP_OPT ("-v","Increase verbosity")
 BAREBOX_CMD_HELP_OPT ("-d","Dryrun. See what happens but do no actually boot")
 BAREBOX_CMD_HELP_OPT ("-l","List available boot sources")
 BAREBOX_CMD_HELP_OPT ("-m","Show a menu with boot options")
+BAREBOX_CMD_HELP_OPT ("-w SECS","Start watchdog with timeout SECS before booting")
 BAREBOX_CMD_HELP_OPT ("-t SECS","specify timeout in SECS")
 BAREBOX_CMD_HELP_END
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
