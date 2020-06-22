Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnHwg-00047P-VR
 for barebox@lists.infradead.org; Mon, 22 Jun 2020 08:36:51 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jun 2020 10:36:45 +0200
Message-Id: <20200622083645.19986-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] startup: inhibit watchdogs on non-interactive autoboot abort
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

nv.autoboot=abort has been added as development aid to have barebox stop
at the shell prompt automatically. It makes sense to inhibit all watchdogs
in this mode, so the user can later use the shell in peace.

This also applies to fastboot aborting the shell prompt. If this
happens, watchdog will be automatically inhibited as well.
Behavior on user aborting the shell prompt via keypad or uart input
remains unchanged for backwards-compatibility.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/startup.c           |  4 ++++
 drivers/watchdog/wd_core.c | 27 +++++++++++++++++++++++++++
 include/watchdog.h         |  6 ++++++
 3 files changed, 37 insertions(+)

diff --git a/common/startup.c b/common/startup.c
index 511675ed55d4..fa66fe086edb 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -43,6 +43,7 @@
 #include <console_countdown.h>
 #include <environment.h>
 #include <linux/ctype.h>
+#include <watchdog.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
@@ -351,6 +352,9 @@ static int run_init(void)
 	if (autoboot == AUTOBOOT_MENU)
 		run_command(MENUFILE);
 
+	if (autoboot == AUTOBOOT_ABORT && autoboot == global_autoboot_state)
+		watchdog_inhibit_all();
+
 	run_shell();
 	run_command(MENUFILE);
 
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index a17234f4b6c1..e50703ce9b60 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -273,3 +273,30 @@ struct watchdog *watchdog_get_by_name(const char *name)
 	return NULL;
 }
 EXPORT_SYMBOL(watchdog_get_by_name);
+
+int watchdog_inhibit_all(void)
+{
+	struct watchdog *wd;
+	int ret = 0;
+
+	list_for_each_entry(wd, &watchdog_list, list) {
+		int err;
+		if (!wd->priority || wd->running == WDOG_HW_NOT_RUNNING)
+			continue;
+
+		err = watchdog_set_timeout(wd, 0);
+		if (!err)
+			continue;
+
+		if (err != -ENOSYS || !IS_ENABLED(CONFIG_WATCHDOG_POLLER)) {
+			ret = err;
+			continue;
+		}
+
+		wd->poller_enable = true;
+		watchdog_poller_start(wd);
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL(watchdog_inhibit_all);
diff --git a/include/watchdog.h b/include/watchdog.h
index 419c1cdf469e..81414ef8ecaa 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -45,6 +45,7 @@ int watchdog_deregister(struct watchdog *);
 struct watchdog *watchdog_get_default(void);
 struct watchdog *watchdog_get_by_name(const char *name);
 int watchdog_set_timeout(struct watchdog*, unsigned);
+int watchdog_inhibit_all(void);
 #else
 static inline int watchdog_register(struct watchdog *w)
 {
@@ -70,6 +71,11 @@ static inline int watchdog_set_timeout(struct watchdog*w, unsigned t)
 {
 	return 0;
 }
+
+static inline int watchdog_inhibit_all(void)
+{
+	return -ENOSYS;
+}
 #endif
 
 #define WATCHDOG_DEFAULT_PRIORITY 100
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
