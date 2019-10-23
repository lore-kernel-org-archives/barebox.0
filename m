Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJvw-0002oy-Mp
 for barebox@lists.infradead.org; Wed, 23 Oct 2019 16:56:30 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 23 Oct 2019 18:56:00 +0200
Message-Id: <20191023165601.16441-5-a.fatoum@pengutronix.de>
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
Subject: [PATCH 5/6] watchdog: export API to configure watchdogs by name
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

So far watchdog users could only configure the watchdog with the highest
priority. In preparation for having the wd command configure a watchdog
by name, extend watchdog_set_timeout with a struct watchdog *parameter
and export functions to query default watchdog and to find watchdog by
name.
No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/wd.c              |  2 +-
 common/boot.c              |  3 ++-
 drivers/watchdog/wd_core.c | 40 +++++++++++++++++++++++---------------
 include/watchdog.h         | 18 +++++++++++++++--
 4 files changed, 43 insertions(+), 20 deletions(-)

diff --git a/commands/wd.c b/commands/wd.c
index 26823f869afb..f857291f0362 100644
--- a/commands/wd.c
+++ b/commands/wd.c
@@ -34,7 +34,7 @@ static int do_wd(int argc, char *argv[])
 		}
 	}
 
-	rc = watchdog_set_timeout(timeout);
+	rc = watchdog_set_timeout(watchdog_get_default(), timeout);
 	if (rc < 0) {
 		switch (rc) {
 		case -EINVAL:
diff --git a/common/boot.c b/common/boot.c
index 14d4fe9d6460..dcbe5cc2ec7d 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -146,7 +146,8 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 	printf("Booting entry '%s'\n", be->title);
 
 	if (IS_ENABLED(CONFIG_WATCHDOG) && boot_watchdog_timeout) {
-		ret = watchdog_set_timeout(boot_watchdog_timeout);
+		ret = watchdog_set_timeout(watchdog_get_default(),
+					   boot_watchdog_timeout);
 		if (ret)
 			pr_warn("Failed to enable watchdog: %s\n", strerror(-ret));
 	}
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index ae29a76064aa..80bde82f7cdd 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -31,8 +31,15 @@ static const char *watchdog_name(struct watchdog *wd)
 	return "unknown";
 }
 
-static int _watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
+/*
+ * start, stop or retrigger the watchdog
+ * timeout in [seconds]. timeout of '0' will disable the watchdog (if possible)
+ */
+int watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 {
+	if (!wd)
+		return -ENODEV;
+
 	if (timeout > wd->timeout_max)
 		return -EINVAL;
 
@@ -40,13 +47,14 @@ static int _watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 
 	return wd->set_timeout(wd, timeout);
 }
+EXPORT_SYMBOL(watchdog_set_timeout);
 
 static int watchdog_set_priority(struct param_d *param, void *priv)
 {
 	struct watchdog *wd = priv;
 
 	if (wd->priority == 0)
-		return _watchdog_set_timeout(wd, 0);
+		return watchdog_set_timeout(wd, 0);
 
 	return 0;
 }
@@ -65,7 +73,7 @@ static void watchdog_poller_cb(void *priv);
 
 static void watchdog_poller_start(struct watchdog *wd)
 {
-	_watchdog_set_timeout(wd, wd->timeout_cur);
+	watchdog_set_timeout(wd, wd->timeout_cur);
 	poller_call_async(&wd->poller, 500 * MSECOND,
 			watchdog_poller_cb, wd);
 
@@ -192,7 +200,7 @@ int watchdog_deregister(struct watchdog *wd)
 }
 EXPORT_SYMBOL(watchdog_deregister);
 
-static struct watchdog *watchdog_get_default(void)
+struct watchdog *watchdog_get_default(void)
 {
 	struct watchdog *tmp, *wd = NULL;
 	int priority = 0;
@@ -206,23 +214,23 @@ static struct watchdog *watchdog_get_default(void)
 
 	return wd;
 }
+EXPORT_SYMBOL(watchdog_get_default);
 
-/*
- * start, stop or retrigger the watchdog
- * timeout in [seconds]. timeout of '0' will disable the watchdog (if possible)
- */
-int watchdog_set_timeout(unsigned timeout)
+struct watchdog *watchdog_get_by_name(const char *name)
 {
-	struct watchdog *wd;
+	struct watchdog *tmp;
+	struct device_d *dev = get_device_by_name(name);
+	if (!dev)
+		return NULL;
 
-	wd = watchdog_get_default();
-
-	if (!wd)
-		return -ENODEV;
+	list_for_each_entry(tmp, &watchdog_list, list) {
+		if (dev == tmp->hwdev || dev == &tmp->dev)
+			return tmp;
+	}
 
-	return _watchdog_set_timeout(wd, timeout);
+	return NULL;
 }
-EXPORT_SYMBOL(watchdog_set_timeout);
+EXPORT_SYMBOL(watchdog_get_by_name);
 
 /**
  * of_get_watchdog_priority() - get the desired watchdog priority from device tree
diff --git a/include/watchdog.h b/include/watchdog.h
index 0db4263a31ce..1455cc923c2d 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -14,6 +14,7 @@
 # define INCLUDE_WATCHDOG_H
 
 #include <poller.h>
+#include <driver.h>
 
 struct watchdog {
 	int (*set_timeout)(struct watchdog *, unsigned);
@@ -31,7 +32,9 @@ struct watchdog {
 #ifdef CONFIG_WATCHDOG
 int watchdog_register(struct watchdog *);
 int watchdog_deregister(struct watchdog *);
-int watchdog_set_timeout(unsigned);
+struct watchdog *watchdog_get_default(void);
+struct watchdog *watchdog_get_by_name(const char *name);
+int watchdog_set_timeout(struct watchdog*, unsigned);
 unsigned int of_get_watchdog_priority(struct device_node *node);
 #else
 static inline int watchdog_register(struct watchdog *w)
@@ -44,11 +47,22 @@ static inline int watchdog_deregister(struct watchdog *w)
 	return 0;
 }
 
-static inline int watchdog_set_timeout(unsigned t)
+static inline struct watchdog *watchdog_get_default(void)
+{
+	return NULL;
+}
+
+struct watchdog *watchdog_get_by_name(const char *name)
+{
+	return NULL;
+}
+
+static inline int watchdog_set_timeout(struct watchdog*w, unsigned t)
 {
 	return 0;
 }
 
+
 static inline unsigned int of_get_watchdog_priority(struct device_node *node)
 {
 	return 0;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
