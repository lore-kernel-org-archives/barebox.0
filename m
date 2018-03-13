Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1evfNS-00040V-76
 for barebox@lists.infradead.org; Tue, 13 Mar 2018 08:33:48 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 13 Mar 2018 09:33:27 +0100
Message-Id: <20180313083328.25705-5-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 5/6] watchdog: provide timeout_cur value
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

timeout_cur will be used for watchdog poller.
Provided values should be good enough for most users
and still can be changed for separate projects and
fit to needed requirements.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/watchdog/wd_core.c | 18 ++++++++++++++++++
 include/watchdog.h         |  1 +
 2 files changed, 19 insertions(+)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 31a88a377..69663b39c 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -31,6 +31,16 @@ static const char *watchdog_name(struct watchdog *wd)
 	return "unknown";
 }
 
+static int watchdog_set_cur(struct param_d *param, void *priv)
+{
+	struct watchdog *wd = priv;
+
+	if (wd->timeout_cur > wd->timeout_max)
+		return -EINVAL;
+
+	return 0;
+}
+
 static int watchdog_register_dev(struct watchdog *wd, const char *name, int id)
 {
 	wd->dev.parent = wd->hwdev;
@@ -63,11 +73,19 @@ int watchdog_register(struct watchdog *wd)
 	if (!wd->timeout_max)
 		wd->timeout_max = 60 * 60 * 24;
 
+	if (!wd->timeout_cur || wd->timeout_cur > wd->timeout_max)
+		wd->timeout_cur = wd->timeout_max;
+
 	p = dev_add_param_uint32_ro(&wd->dev, "timeout_max",
 			&wd->timeout_max, "%u");
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
+	p = dev_add_param_uint32(&wd->dev, "timeout_cur", watchdog_set_cur, NULL,
+			&wd->timeout_cur, "%u", wd);
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
 	list_add_tail(&wd->list, &watchdog_list);
 
 	pr_debug("registering watchdog %s with priority %d\n", watchdog_name(wd),
diff --git a/include/watchdog.h b/include/watchdog.h
index a2459d255..2f1874c19 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -20,6 +20,7 @@ struct watchdog {
 	struct device_d dev;
 	unsigned int priority;
 	unsigned int timeout_max;
+	unsigned int timeout_cur;
 	struct list_head list;
 };
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
