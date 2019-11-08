Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT23G-0000Sh-Mq
 for barebox@lists.infradead.org; Fri, 08 Nov 2019 11:03:41 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  8 Nov 2019 12:03:30 +0100
Message-Id: <20191108110332.32010-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191108110332.32010-1-a.fatoum@pengutronix.de>
References: <20191108110332.32010-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 2/4] watchdog: implement generic support for .running
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

- We use an enum instead of a single bit, so we can differentiate between
  watchdogs that are not running and watchdogs whose running status is
  unknown.
- Because we can check whether watchdog_hw_running is supported, it now
  can fail and return a negative value in that case
- We do the maintenance of the running parameter after barebox
  feeds/disables the watchdog in the core, so it doesn't need to
  be replicated across drivers. Drivers hould only initialize the
  running parameter once at probe time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - replace bitmask for running status with enum
  - use dev_add_param_enum_ro helper
v1 -> v2:
  - WDOG_HW_RUNNING: add comment describing use
  - struct watchdog: drop status_supported member in favor of having a
    single WDOG_HW_RUNNING_SUPPORTED bit
  - watchdog_set_timeout: return 0 instead of ret, when we now that ret
    == 0
---
 drivers/watchdog/wd_core.c | 21 ++++++++++++++++++++-
 include/watchdog.h         | 17 +++++++++++++++++
 2 files changed, 37 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 39cac6f6c494..fcead1175558 100644
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
 
@@ -45,7 +47,13 @@ int watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 
 	pr_debug("setting timeout on %s to %ds\n", watchdog_name(wd), timeout);
 
-	return wd->set_timeout(wd, timeout);
+	ret = wd->set_timeout(wd, timeout);
+	if (ret)
+		return ret;
+
+	wd->running = timeout ? WDOG_HW_RUNNING : WDOG_HW_NOT_RUNNING;
+
+	return 0;
 }
 EXPORT_SYMBOL(watchdog_set_timeout);
 
@@ -144,6 +152,12 @@ static unsigned int dev_get_watchdog_priority(struct device_d *dev)
 	return priority;
 }
 
+const char *running_names[] = {
+	[WDOG_HW_RUNNING_UNSUPPORTED] = "unknown",
+	[WDOG_HW_RUNNING] = "1",
+	[WDOG_HW_NOT_RUNNING] = "0",
+};
+
 int watchdog_register(struct watchdog *wd)
 {
 	struct param_d *p;
@@ -162,6 +176,11 @@ int watchdog_register(struct watchdog *wd)
 	if (ret)
 		return ret;
 
+	p = dev_add_param_enum_ro(&wd->dev, "running", &wd->running,
+				  running_names, ARRAY_SIZE(running_names));
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
 	if (!wd->priority)
 		wd->priority = dev_get_watchdog_priority(wd->hwdev);
 
diff --git a/include/watchdog.h b/include/watchdog.h
index 105b7ca81093..5790205a487b 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -16,6 +16,10 @@
 #include <poller.h>
 #include <driver.h>
 
+enum wdog_hw_runnning {
+	 WDOG_HW_RUNNING_UNSUPPORTED, WDOG_HW_RUNNING, WDOG_HW_NOT_RUNNING
+};
+
 struct watchdog {
 	int (*set_timeout)(struct watchdog *, unsigned);
 	const char *name;
@@ -27,8 +31,21 @@ struct watchdog {
 	unsigned int poller_enable;
 	struct poller_async poller;
 	struct list_head list;
+	int running; /* enum wdog_hw_running */
 };
 
+/*
+ * Use the following function to check whether or not the hardware watchdog
+ * is running
+ */
+static inline int watchdog_hw_running(struct watchdog *w)
+{
+	if (w->running == WDOG_HW_RUNNING_UNSUPPORTED)
+		return -ENOSYS;
+
+	return w->running == WDOG_HW_RUNNING;
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
