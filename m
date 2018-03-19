Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exsAj-0005Vc-MR
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 10:37:47 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 19 Mar 2018 11:37:31 +0100
Message-Id: <20180319103731.5629-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v3] watchdog: add watchdog poller
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

In some cases it is practical to supervise as much as possible of
the barebox execution with a watchdog (or multiple watchdogs). This
patch provides an async poller for watchdog core framework which can
be enabled by the user and stores this configuration to nv.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
changes v3:
- rename variable to automatic_dog_feeder 

 drivers/watchdog/Kconfig   |  6 ++++
 drivers/watchdog/wd_core.c | 74 ++++++++++++++++++++++++++++++++++++++++++----
 include/watchdog.h         |  4 +++
 3 files changed, 78 insertions(+), 6 deletions(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 3defb9da6..1d6b15617 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -10,6 +10,12 @@ menuconfig WATCHDOG
 
 if WATCHDOG
 
+menuconfig WATCHDOG_POLLER
+	bool "Watchdog periodic feeder support"
+	select POLLER
+	help
+	  Provides support for periodic watchdog feeder.
+
 config WATCHDOG_AR9344
 	bool "QCA AR9344"
 	depends on SOC_QCA_AR9344 || SOC_QCA_AR9331
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 69663b39c..0ff09500c 100644
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
@@ -41,6 +51,55 @@ static int watchdog_set_cur(struct param_d *param, void *priv)
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
+	if (wd->poller_enable) {
+		dev_info(&wd->dev, "enable watchdog poller\n");
+		watchdog_poller_start(wd);
+	} else {
+		dev_info(&wd->dev, "disable watchdog poller\n");
+		poller_async_cancel(&wd->poller);
+	}
+
+	return 0;
+}
+
+static int watchdog_register_poller(struct watchdog *wd)
+{
+	struct param_d *p;
+	int ret;
+
+	ret = poller_async_register(&wd->poller);
+	if (ret)
+		return ret;
+
+	p = dev_add_param_bool(&wd->dev, "automatic_dog_feeder", watchdog_set_poller,
+			NULL, &wd->poller_enable, wd);
+
+	return PTR_ERR_OR_ZERO(p);
+}
+
 static int watchdog_register_dev(struct watchdog *wd, const char *name, int id)
 {
 	wd->dev.parent = wd->hwdev;
@@ -86,6 +145,12 @@ int watchdog_register(struct watchdog *wd)
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
+	if (IS_ENABLED(CONFIG_WATCHDOG_POLLER)) {
+		ret = watchdog_register_poller(wd);
+		if (ret)
+			return ret;
+	}
+
 	list_add_tail(&wd->list, &watchdog_list);
 
 	pr_debug("registering watchdog %s with priority %d\n", watchdog_name(wd),
@@ -97,6 +162,8 @@ EXPORT_SYMBOL(watchdog_register);
 
 int watchdog_deregister(struct watchdog *wd)
 {
+	poller_async_cancel(&wd->poller);
+	poller_async_unregister(&wd->poller);
 	unregister_device(&wd->dev);
 	list_del(&wd->list);
 
@@ -132,12 +199,7 @@ int watchdog_set_timeout(unsigned timeout)
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
