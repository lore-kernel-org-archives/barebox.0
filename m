Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRh3A-0000Au-8p
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 18:26:03 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Nov 2019 19:25:52 +0100
Message-Id: <20191104182555.9874-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/4] watchdog: always populate watchdog priority from device
 tree if possible
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

So far, only the da9063 and da9053 have made use of the optional barebox
watchdog-priority binding. Move it into the core, so other device
drivers automatically have their watchdog-priority property parsed as
well. This patch doesn't introduce any functional changes for upstream
boards.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/da9053.c       |  1 -
 drivers/mfd/da9063.c       |  1 -
 drivers/watchdog/wd_core.c | 34 ++++++++++++++++++----------------
 include/watchdog.h         |  7 -------
 4 files changed, 18 insertions(+), 25 deletions(-)

diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index 1faba813bee8..f4bfb68d0301 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -271,7 +271,6 @@ static int da9053_probe(struct device_d *dev)
 	da9053->dev = dev;
 	da9053->client = to_i2c_client(dev);
 	da9053->wd.set_timeout = da9053_set_timeout;
-	da9053->wd.priority = of_get_watchdog_priority(dev->device_node);
 	da9053->wd.hwdev = dev;
 
 	ret = da9053_enable_multiwrite(da9053);
diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index b61e7648768e..342424a8b377 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -365,7 +365,6 @@ static int da9063_probe(struct device_d *dev)
 	dev_data = ret < 0 ? NULL : dev_data_tmp;
 
 	priv = xzalloc(sizeof(struct da9063));
-	priv->wd.priority = of_get_watchdog_priority(dev->device_node);
 	priv->wd.set_timeout = da9063_watchdog_set_timeout;
 	priv->wd.hwdev = dev;
 	priv->timeout = DA9063_INITIAL_TIMEOUT;
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 8b13950238c9..39cac6f6c494 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -127,6 +127,23 @@ static int watchdog_register_dev(struct watchdog *wd, const char *name, int id)
 	return register_device(&wd->dev);
 }
 
+/**
+ * dev_get_watchdog_priority() - get a device's desired watchdog priority
+ * @dev:	The device, which device_node to read the property from
+ *
+ * return: The priority
+ */
+static unsigned int dev_get_watchdog_priority(struct device_d *dev)
+{
+	unsigned int priority = WATCHDOG_DEFAULT_PRIORITY;
+
+	if (dev)
+		of_property_read_u32(dev->device_node, "watchdog-priority",
+				     &priority);
+
+	return priority;
+}
+
 int watchdog_register(struct watchdog *wd)
 {
 	struct param_d *p;
@@ -146,7 +163,7 @@ int watchdog_register(struct watchdog *wd)
 		return ret;
 
 	if (!wd->priority)
-		wd->priority = WATCHDOG_DEFAULT_PRIORITY;
+		wd->priority = dev_get_watchdog_priority(wd->hwdev);
 
 	p = dev_add_param_uint32(&wd->dev, "priority",
 				 watchdog_set_priority, NULL,
@@ -232,18 +249,3 @@ struct watchdog *watchdog_get_by_name(const char *name)
 	return NULL;
 }
 EXPORT_SYMBOL(watchdog_get_by_name);
-
-/**
- * of_get_watchdog_priority() - get the desired watchdog priority from device tree
- * @node:	The device_node to read the property from
- *
- * return: The priority
- */
-unsigned int of_get_watchdog_priority(struct device_node *node)
-{
-	unsigned int priority = WATCHDOG_DEFAULT_PRIORITY;
-
-	of_property_read_u32(node, "watchdog-priority", &priority);
-
-	return priority;
-}
diff --git a/include/watchdog.h b/include/watchdog.h
index 184a218916f4..105b7ca81093 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -35,7 +35,6 @@ int watchdog_deregister(struct watchdog *);
 struct watchdog *watchdog_get_default(void);
 struct watchdog *watchdog_get_by_name(const char *name);
 int watchdog_set_timeout(struct watchdog*, unsigned);
-unsigned int of_get_watchdog_priority(struct device_node *node);
 #else
 static inline int watchdog_register(struct watchdog *w)
 {
@@ -61,12 +60,6 @@ static inline int watchdog_set_timeout(struct watchdog*w, unsigned t)
 {
 	return 0;
 }
-
-
-static inline unsigned int of_get_watchdog_priority(struct device_node *node)
-{
-	return 0;
-}
 #endif
 
 #define WATCHDOG_DEFAULT_PRIORITY 100
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
