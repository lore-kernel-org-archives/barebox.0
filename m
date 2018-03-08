Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ettMd-0000ig-2D
 for barebox@lists.infradead.org; Thu, 08 Mar 2018 11:05:36 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  8 Mar 2018 12:05:15 +0100
Message-Id: <20180308110515.29574-6-o.rempel@pengutronix.de>
In-Reply-To: <20180308110515.29574-1-o.rempel@pengutronix.de>
References: <20180308110515.29574-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 6/6] watchdog: add watchdog poller
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

In some cases it is practical to supervise as match as possible of
barebox execution with watchdog (or multiple watchdogs). This
patch provide async poller for watchdog core framework which can
be enabled by user and store this configuration to nv.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 54 ++++++++++++++++++++++++++++++++++++++++------
 include/watchdog.h         |  4 ++++
 2 files changed, 52 insertions(+), 6 deletions(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 3162dd59c..6f1cadaf8 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -31,6 +31,16 @@ static const char *watchdog_name(struct watchdog *wd)
 	return "unknown";
 }
 
+static int _watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
+{
+	if (timeout > wd->timeout_max)
+		return -EINVAL;
+
+	pr_debug("setting timeout on %s to %ds\n", watchdog_name(wd), timeout);
+
+	return wd->set_timeout(wd, timeout);
+}
+
 static int watchdog_set_cur(struct param_d *param, void *priv)
 {
 	struct watchdog *wd = priv;
@@ -41,6 +51,37 @@ static int watchdog_set_cur(struct param_d *param, void *priv)
 	return 0;
 }
 
+static void watchdog_poller_cb(void *priv);
+
+static void watchdog_poller_start(struct watchdog *wd)
+{
+	_watchdog_set_timeout(wd, wd->timeout_cur);
+	poller_call_async(&wd->poller, 500 * MSECOND,
+			watchdog_poller_cb, wd);
+
+}
+
+static void watchdog_poller_cb(void *priv)
+{
+	struct watchdog *wd = priv;
+
+	if (wd->poller_enable)
+		watchdog_poller_start(wd);
+}
+
+static int watchdog_set_poller(struct param_d *param, void *priv)
+{
+	struct watchdog *wd = priv;
+
+
+	if (wd->poller_enable)
+		watchdog_poller_start(wd);
+	else
+		poller_async_cancel(&wd->poller);
+
+	return 0;
+}
+
 int watchdog_register(struct watchdog *wd)
 {
 
@@ -63,6 +104,10 @@ int watchdog_register(struct watchdog *wd)
 	dev_add_param_uint32(&wd->dev, "timeout_cur", watchdog_set_cur, NULL,
 			&wd->timeout_cur, "%u", wd);
 
+	poller_async_register(&wd->poller);
+	dev_add_param_bool(&wd->dev, "poller_enable", watchdog_set_poller, NULL,
+			&wd->poller_enable, wd);
+
 	list_add_tail(&wd->list, &watchdog_list);
 
 	pr_debug("registering watchdog %s with priority %d\n", watchdog_name(wd),
@@ -74,6 +119,8 @@ EXPORT_SYMBOL(watchdog_register);
 
 int watchdog_deregister(struct watchdog *wd)
 {
+	poller_async_cancel(&wd->poller);
+	poller_async_unregister(&wd->poller);
 	unregister_device(&wd->dev);
 	list_del(&wd->list);
 
@@ -109,12 +156,7 @@ int watchdog_set_timeout(unsigned timeout)
 	if (!wd)
 		return -ENODEV;
 
-	if (timeout > wd->timeout_max)
-		return -EINVAL;
-
-	pr_debug("setting timeout on %s to %ds\n", watchdog_name(wd), timeout);
-
-	return wd->set_timeout(wd, timeout);
+	return _watchdog_set_timeout(wd, timeout);
 }
 EXPORT_SYMBOL(watchdog_set_timeout);
 
diff --git a/include/watchdog.h b/include/watchdog.h
index 2f1874c19..0db4263a3 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -13,6 +13,8 @@
 #ifndef INCLUDE_WATCHDOG_H
 # define INCLUDE_WATCHDOG_H
 
+#include <poller.h>
+
 struct watchdog {
 	int (*set_timeout)(struct watchdog *, unsigned);
 	const char *name;
@@ -21,6 +23,8 @@ struct watchdog {
 	unsigned int priority;
 	unsigned int timeout_max;
 	unsigned int timeout_cur;
+	unsigned int poller_enable;
+	struct poller_async poller;
 	struct list_head list;
 };
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
