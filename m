Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRkc9-0007Jt-DJ
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 22:14:24 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Nov 2019 23:14:05 +0100
Message-Id: <20191104221407.14791-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191104221407.14791-1-a.fatoum@pengutronix.de>
References: <20191104221407.14791-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 2/4] watchdog: implement generic support for .running
 device parameter
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Linux watchdog have an optional WDOG_HW_RUNNING bit that is used in
conjunction with CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED to automatically
ping running watchdogs until userspace takes over.

So far, when we ported Linux drivers, we dropped this detection, but it
would be useful to have this information in barebox as well:

The American Megatrends BIOS I am using allows configuring the hardware
watchdog from the BIOS. barebox enables the WDT as well, so in normal
operation we would never notice if after a BIOS update, the watchdog is
no longer enabled. If we maintain a running parameter on watchdog
devices, board code can be written to check whether the watchdog device
is indeed running.

To achieve this, add the necessary bits to the watchdog API. How we go
about it differs from Linux a little:

- We add a WDOG_HW_RUNNING_SUPPORTED bit to differentiate between
  watchdogs that are not running and watchdogs whose running status is
  unknown.
- Because we can check whether watchdog_hw_running is supported, it now
  can fail and return a negative value in that case
- We do the maintenance of the running parameter after barebox
  feeds/disables the watchdog in the core, so it doesn't need to
  be replicated across drivers. Drivers will only need to initialize the
  bitmask once at probe time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - WDOG_HW_RUNNING: add comment describing use
  - struct watchdog: drop status_supported member in favor of having a
    single WDOG_HW_RUNNING_SUPPORTED bit
  - watchdog_set_timeout: return 0 instead of ret, when we now that ret
    == 0
---
 drivers/watchdog/wd_core.c | 33 ++++++++++++++++++++++++++++++++-
 include/watchdog.h         | 19 +++++++++++++++++++
 2 files changed, 51 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 39cac6f6c494..034508d4ad73 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -37,6 +37,8 @@ static const char *watchdog_name(struct watchdog *wd)
  */
 int watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 {
+	int ret;
+
 	if (!wd)
 		return -ENODEV;
 
@@ -45,7 +47,18 @@ int watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 
 	pr_debug("setting timeout on %s to %ds\n", watchdog_name(wd), timeout);
 
-	return wd->set_timeout(wd, timeout);
+	ret = wd->set_timeout(wd, timeout);
+	if (ret)
+		return ret;
+
+	if (test_bit(WDOG_HW_RUNNING_SUPPORTED, &wd->status)) {
+		if (timeout)
+			set_bit(WDOG_HW_RUNNING, &wd->status);
+		else
+			clear_bit(WDOG_HW_RUNNING, &wd->status);
+	}
+
+	return 0;
 }
 EXPORT_SYMBOL(watchdog_set_timeout);
 
@@ -118,6 +131,15 @@ static int watchdog_register_poller(struct watchdog *wd)
 	return PTR_ERR_OR_ZERO(p);
 }
 
+static const char *watchdog_get_running(struct device_d *dev, struct param_d *p)
+{
+	/*
+	 * This won't ever fail, because the parameter is only registed when
+	 * test_bit(WDOG_HW_RUNNING_SUPPORTED, &w->status) is true
+	 */
+	return watchdog_hw_running((struct watchdog *)p->value) ? "1" : "0";
+}
+
 static int watchdog_register_dev(struct watchdog *wd, const char *name, int id)
 {
 	wd->dev.parent = wd->hwdev;
@@ -162,6 +184,15 @@ int watchdog_register(struct watchdog *wd)
 	if (ret)
 		return ret;
 
+	if (test_bit(WDOG_HW_RUNNING_SUPPORTED, &wd->status)) {
+		p = dev_add_param(&wd->dev, "running", NULL,
+				  watchdog_get_running, PARAM_FLAG_RO);
+		if (IS_ERR(p))
+			return PTR_ERR(p);
+
+		p->value = (char *)wd;
+	}
+
 	if (!wd->priority)
 		wd->priority = dev_get_watchdog_priority(wd->hwdev);
 
diff --git a/include/watchdog.h b/include/watchdog.h
index 105b7ca81093..25b9d6840922 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -15,6 +15,7 @@
 
 #include <poller.h>
 #include <driver.h>
+#include <linux/bitops.h>
 
 struct watchdog {
 	int (*set_timeout)(struct watchdog *, unsigned);
@@ -27,8 +28,26 @@ struct watchdog {
 	unsigned int poller_enable;
 	struct poller_async poller;
 	struct list_head list;
+/* Bit numbers for status flags */
+#define	WDOG_HW_RUNNING			3	/* True if HW watchdog running */
+#define	WDOG_HW_RUNNING_SUPPORTED	31	/* True if querying HW for
+						 * running status is supported
+						 */
+	unsigned long status;
 };
 
+/*
+ * Use the following function to check whether or not the hardware watchdog
+ * is running
+ */
+static inline int watchdog_hw_running(struct watchdog *w)
+{
+	if (!test_bit(WDOG_HW_RUNNING_SUPPORTED, &w->status))
+		return -ENOSYS;
+
+	return !!test_bit(WDOG_HW_RUNNING, &w->status);
+}
+
 #ifdef CONFIG_WATCHDOG
 int watchdog_register(struct watchdog *);
 int watchdog_deregister(struct watchdog *);
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
