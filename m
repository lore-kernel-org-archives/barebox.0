Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUYi7-0004eq-OR
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 11:17:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Aug 2015 13:17:12 +0200
Message-Id: <1440587836-22105-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] watchdog: Give watchdogs a name
To: Barebox List <barebox@lists.infradead.org>

This adds a dev and name member to struct watchdog which helps distinguishing
between different watchdogs. Also add some debugging aids.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/davinci_wdt.c |  1 +
 drivers/watchdog/im28wd.c      |  1 +
 drivers/watchdog/imxwd.c       |  1 +
 drivers/watchdog/wd_core.c     | 15 ++++++++++++++-
 include/watchdog.h             |  2 ++
 5 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/davinci_wdt.c b/drivers/watchdog/davinci_wdt.c
index ecf6e89..dfabee2 100644
--- a/drivers/watchdog/davinci_wdt.c
+++ b/drivers/watchdog/davinci_wdt.c
@@ -147,6 +147,7 @@ static int davinci_wdt_probe(struct device_d *dev)
 	clk_enable(davinci_wdt->clk);
 
 	davinci_wdt->wd.set_timeout = davinci_wdt_set_timeout;
+	davinci_wdt->wd.dev = dev;
 
 	ret = watchdog_register(&davinci_wdt->wd);
 	if (ret < 0)
diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index a9093a7..3510776 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -197,6 +197,7 @@ static int imx28_wd_probe(struct device_d *dev)
 	if (IS_ERR(priv->regs))
 		return PTR_ERR(priv->regs);
 	priv->wd.set_timeout = imx28_watchdog_set_timeout;
+	priv->wd.dev = dev;
 
 	if (!(readl(priv->regs + MXS_RTC_STAT) & MXS_RTC_STAT_WD_PRESENT)) {
 		rc = -ENODEV;
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 4621d41..dd11a62 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -186,6 +186,7 @@ static int imx_wd_probe(struct device_d *dev)
 	}
 	priv->ops = ops;
 	priv->wd.set_timeout = imx_watchdog_set_timeout;
+	priv->wd.dev = dev;
 	priv->dev = dev;
 
 	if (IS_ENABLED(CONFIG_WATCHDOG_IMX)) {
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index b8473b7..0b75a51 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -21,6 +21,16 @@
 
 static LIST_HEAD(watchdog_list);
 
+static const char *watchdog_name(struct watchdog *wd)
+{
+	if (wd->dev)
+		return dev_name(wd->dev);
+	if (wd->name)
+		return wd->name;
+
+	return "unknown";
+}
+
 int watchdog_register(struct watchdog *wd)
 {
 	if (!wd->priority)
@@ -28,7 +38,8 @@ int watchdog_register(struct watchdog *wd)
 
 	list_add_tail(&wd->list, &watchdog_list);
 
-	pr_debug("registering watchdog with priority %d\n", wd->priority);
+	pr_debug("registering watchdog %s with priority %d\n", watchdog_name(wd),
+			wd->priority);
 
 	return 0;
 }
@@ -70,6 +81,8 @@ int watchdog_set_timeout(unsigned timeout)
 	if (!wd)
 		return -ENODEV;
 
+	pr_debug("setting timeout on %s to %ss\n", watchdog_name(wd), timeout);
+
 	return wd->set_timeout(wd, timeout);
 }
 EXPORT_SYMBOL(watchdog_set_timeout);
diff --git a/include/watchdog.h b/include/watchdog.h
index a833aea..fd24b5b 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -15,6 +15,8 @@
 
 struct watchdog {
 	int (*set_timeout)(struct watchdog *, unsigned);
+	const char *name;
+	struct device_d *dev;
 	unsigned int priority;
 	struct list_head list;
 };
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
