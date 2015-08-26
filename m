Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUYi4-0004d8-IB
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 11:17:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Aug 2015 13:17:11 +0200
Message-Id: <1440587836-22105-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1440587836-22105-1-git-send-email-s.hauer@pengutronix.de>
References: <1440587836-22105-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] watchdog: Allow multiple watchdogs
To: Barebox List <barebox@lists.infradead.org>

Put watchdogs on a list to allow multiple watchdogs. Add a priority
field to be able to pick the highest priority watchdog.
This patch also provides a of_get_watchdog_priority() function to
allow configuring the watchdog priority from the device tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 57 ++++++++++++++++++++++++++++++++++++----------
 include/watchdog.h         |  6 +++++
 2 files changed, 51 insertions(+), 12 deletions(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 3d0cfc6..b8473b7 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -11,6 +11,7 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  */
+#define pr_fmt(fmt) "watchdog: " fmt
 
 #include <common.h>
 #include <command.h>
@@ -18,40 +19,72 @@
 #include <linux/ctype.h>
 #include <watchdog.h>
 
-/*
- * Note: this simple framework supports one watchdog only.
- */
-static struct watchdog *watchdog;
+static LIST_HEAD(watchdog_list);
 
 int watchdog_register(struct watchdog *wd)
 {
-	if (watchdog != NULL)
-		return -EBUSY;
+	if (!wd->priority)
+		wd->priority = WATCHDOG_DEFAULT_PRIORITY;
+
+	list_add_tail(&wd->list, &watchdog_list);
+
+	pr_debug("registering watchdog with priority %d\n", wd->priority);
 
-	watchdog = wd;
 	return 0;
 }
 EXPORT_SYMBOL(watchdog_register);
 
 int watchdog_deregister(struct watchdog *wd)
 {
-	if (watchdog == NULL || wd != watchdog)
-		return -ENODEV;
+	list_del(&wd->list);
 
-	watchdog = NULL;
 	return 0;
 }
 EXPORT_SYMBOL(watchdog_deregister);
 
+static struct watchdog *watchdog_get_default(void)
+{
+	struct watchdog *tmp, *wd = NULL;
+	int priority = 0;
+
+	list_for_each_entry(tmp, &watchdog_list, list) {
+		if (tmp->priority > priority) {
+			priority = tmp->priority;
+			wd = tmp;
+		}
+	}
+
+	return wd;
+}
+
 /*
  * start, stop or retrigger the watchdog
  * timeout in [seconds]. timeout of '0' will disable the watchdog (if possible)
  */
 int watchdog_set_timeout(unsigned timeout)
 {
-	if (watchdog == NULL)
+	struct watchdog *wd;
+
+	wd = watchdog_get_default();
+
+	if (!wd)
 		return -ENODEV;
 
-	return watchdog->set_timeout(watchdog, timeout);
+	return wd->set_timeout(wd, timeout);
 }
 EXPORT_SYMBOL(watchdog_set_timeout);
+
+/**
+ * of_get_watchdog_priority() - get the desired watchdog priority from device tree
+ * @node:	The device_node to read the property from
+ *
+ * return: The priority
+ */
+unsigned int of_get_watchdog_priority(struct device_node *node)
+{
+	unsigned int priority = WATCHDOG_DEFAULT_PRIORITY;
+
+	of_property_read_u32(node, "watchdog-priority", &priority);
+
+	return priority;
+}
diff --git a/include/watchdog.h b/include/watchdog.h
index 7e37b7c..a833aea 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -15,6 +15,8 @@
 
 struct watchdog {
 	int (*set_timeout)(struct watchdog *, unsigned);
+	unsigned int priority;
+	struct list_head list;
 };
 
 #ifdef CONFIG_WATCHDOG
@@ -38,4 +40,8 @@ int watchdog_set_timeout(unsigned t)
 }
 #endif
 
+#define WATCHDOG_DEFAULT_PRIORITY 100
+
+unsigned int of_get_watchdog_priority(struct device_node *node);
+
 #endif /* INCLUDE_WATCHDOG_H */
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
