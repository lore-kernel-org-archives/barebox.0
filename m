Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7cGO-0008Fl-9M
 for barebox@lists.infradead.org; Thu, 04 Feb 2021 10:53:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  4 Feb 2021 11:53:25 +0100
Message-Id: <20210204105325.9970-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] watchdog: Print seconds to expire
To: Barebox List <barebox@lists.infradead.org>

This adds a parameter to the watchdog devices that shows what we think
when the watchdog expires. The watchdog should reset the system once the
counter hits zero. When the system resets earlier or the counter shows
negative values then there might be problems with the watchdog. Useful
for debugging watchdog related problems.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 29 +++++++++++++++++++++++++++++
 include/watchdog.h         |  3 +++
 2 files changed, 32 insertions(+)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 643c53268f..4b0ee31d5b 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -54,6 +54,9 @@ int watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 	if (ret)
 		return ret;
 
+	wd->last_ping = get_time_ns();
+	wd->timeout_cur = timeout;
+
 	wd->running = timeout ? WDOG_HW_RUNNING : WDOG_HW_NOT_RUNNING;
 
 	return 0;
@@ -155,6 +158,25 @@ static unsigned int dev_get_watchdog_priority(struct device_d *dev)
 	return priority;
 }
 
+static int seconds_to_expire_get(struct param_d *p, void *priv)
+{
+	struct watchdog *wd = priv;
+	uint64_t diff;
+
+	if (!wd->timeout_cur) {
+		wd->seconds_to_expire = -1;
+		return 0;
+	}
+
+	diff = get_time_ns() - wd->last_ping;
+
+	do_div(diff, 1000000000);
+
+	wd->seconds_to_expire = wd->timeout_cur - diff;
+
+	return 0;
+}
+
 int watchdog_register(struct watchdog *wd)
 {
 	struct param_d *p;
@@ -218,6 +240,13 @@ int watchdog_register(struct watchdog *wd)
 			goto error_unregister;
 	}
 
+	p = dev_add_param_uint32(&wd->dev, "seconds_to_expire", param_set_readonly,
+			seconds_to_expire_get, &wd->seconds_to_expire, "%d", wd);
+	if (IS_ERR(p)) {
+		ret = PTR_ERR(p);
+		goto error_unregister;
+	}
+
 	list_add_tail(&wd->list, &watchdog_list);
 
 	pr_debug("registering watchdog %s with priority %d\n", watchdog_name(wd),
diff --git a/include/watchdog.h b/include/watchdog.h
index 4d755a5a79..281885686e 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -22,8 +22,11 @@ struct watchdog {
 	struct device_d dev;
 	unsigned int priority;
 	unsigned int timeout_max;
+	unsigned int timeout_cur;
 	unsigned int poller_timeout_cur;
 	unsigned int poller_enable;
+	uint64_t last_ping;
+	int seconds_to_expire;
 	struct poller_async poller;
 	struct list_head list;
 	int running; /* enum wdog_hw_running */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
