Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1evfNS-00040U-8N
 for barebox@lists.infradead.org; Tue, 13 Mar 2018 08:33:49 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 13 Mar 2018 09:33:25 +0100
Message-Id: <20180313083328.25705-3-o.rempel@pengutronix.de>
In-Reply-To: <20180313083328.25705-1-o.rempel@pengutronix.de>
References: <20180313083328.25705-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 3/6] watchdog: register watchdog virtual device with short
 name wdog
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

the watchdog hwdev is usually named with devicetree schema
which is not practical for CLI.

On device registration "wdog" will be extended with some index number
extracted from devicetree (if awailable) or automatically assigned
first available number. End result will be "wdog0" .. etc.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 24 ++++++++++++++++++++++++
 include/watchdog.h         |  1 +
 2 files changed, 25 insertions(+)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 1d0f0de7d..0dc7aecf3 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -31,8 +31,31 @@ static const char *watchdog_name(struct watchdog *wd)
 	return "unknown";
 }
 
+static int watchdog_register_dev(struct watchdog *wd, const char *name, int id)
+{
+	wd->dev.parent = wd->hwdev;
+	wd->dev.id = id;
+	strncpy(wd->dev.name, name, MAX_DRIVER_NAME);
+
+	return register_device(&wd->dev);
+}
+
 int watchdog_register(struct watchdog *wd)
 {
+	struct param_d *p;
+	const char *alias;
+	int ret;
+
+	alias = of_alias_get(wd->hwdev->device_node);
+	if (alias)
+		ret = watchdog_register_dev(wd, alias, DEVICE_ID_SINGLE);
+
+	if (!alias || ret)
+		ret = watchdog_register_dev(wd, "wdog", DEVICE_ID_DYNAMIC);
+
+	if (ret)
+		return ret;
+
 	if (!wd->priority)
 		wd->priority = WATCHDOG_DEFAULT_PRIORITY;
 
@@ -50,6 +73,7 @@ EXPORT_SYMBOL(watchdog_register);
 
 int watchdog_deregister(struct watchdog *wd)
 {
+	unregister_device(&wd->dev);
 	list_del(&wd->list);
 
 	return 0;
diff --git a/include/watchdog.h b/include/watchdog.h
index 1e06fbc3f..a2459d255 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -17,6 +17,7 @@ struct watchdog {
 	int (*set_timeout)(struct watchdog *, unsigned);
 	const char *name;
 	struct device_d *hwdev;
+	struct device_d dev;
 	unsigned int priority;
 	unsigned int timeout_max;
 	struct list_head list;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
