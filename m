Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1es359-0008Km-MT
 for barebox@lists.infradead.org; Sat, 03 Mar 2018 09:03:57 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sat,  3 Mar 2018 10:03:28 +0100
Message-Id: <20180303090328.10026-1-linux@rempel-privat.de>
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
Subject: [PATCH] watchdog: add periodic watchdog ping
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

This patch should cover at least this use cases:
- For production, for example automotive: cover as match as possible of SoC
life time with watchdog. Since some SoCs do not provide enough control over
watchdog timer it is not enough to enable it in PBL and retrigger in linux.
Barebox may need to retrigger it a few times as well.
- For remote development. If there is no way to power cycle the target except
of manually unplug it.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/watchdog/wd_core.c | 57 ++++++++++++++++++++++++++++++++++++++++++++++
 include/watchdog.h         |  1 +
 2 files changed, 58 insertions(+)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 3a3f51964..e716a5f96 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -16,7 +16,11 @@
 #include <common.h>
 #include <command.h>
 #include <errno.h>
+#include <globalvar.h>
 #include <linux/ctype.h>
+#include <magicvar.h>
+#include <poller.h>
+#include <init.h>
 #include <watchdog.h>
 
 static LIST_HEAD(watchdog_list);
@@ -101,3 +105,56 @@ unsigned int of_get_watchdog_priority(struct device_node *node)
 
 	return priority;
 }
+
+static int watchdog_ping_enable;
+static unsigned int watchdog_ping_timeout;
+
+static void watchdog_ping_func(struct poller_struct *poller)
+{
+	struct watchdog *wd;
+	unsigned int timeout = watchdog_ping_timeout;
+
+	if (!watchdog_ping_enable)
+		return;
+
+	wd = watchdog_get_default();
+
+	if (!wd || wd->ping_next_event > get_time_ns())
+		return;
+
+	wd->ping_next_event = get_time_ns() + 500 * MSECOND;
+
+	pr_debug("setting timeout on %s to %ds\n", watchdog_name(wd), timeout);
+
+	wd->set_timeout(wd, timeout);
+}
+
+static struct poller_struct watchdog_poller = {
+	.func = watchdog_ping_func,
+};
+
+static int init_watchdog_ping_timeout(void)
+{
+	int err;
+
+	err = globalvar_add_simple_bool("watchdog.ping_enable",
+			&watchdog_ping_enable);
+	if (err)
+		return err;
+
+	err = globalvar_add_simple_int("watchdog.ping_timeout",
+			&watchdog_ping_timeout, "%u");
+	if (err)
+		return err;
+
+	return poller_register(&watchdog_poller);
+}
+late_initcall(init_watchdog_ping_timeout);
+
+BAREBOX_MAGICVAR_NAMED(global_watchdog_ping_enable,
+		       global.watchdog.ping_enable,
+		       "Enable periodic watchdog pings");
+
+BAREBOX_MAGICVAR_NAMED(global_watchdog_ping_timeout,
+		       global.watchdog.ping_timeout,
+		       "Periodic watchdog timeout in seconds");
diff --git a/include/watchdog.h b/include/watchdog.h
index 3e8a487a4..8966f0297 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -19,6 +19,7 @@ struct watchdog {
 	struct device_d *dev;
 	unsigned int priority;
 	struct list_head list;
+	uint64_t ping_next_event;
 };
 
 #ifdef CONFIG_WATCHDOG
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
