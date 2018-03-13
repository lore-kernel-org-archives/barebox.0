Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1evfNS-00040W-78
 for barebox@lists.infradead.org; Tue, 13 Mar 2018 08:33:50 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 13 Mar 2018 09:33:23 +0100
Message-Id: <20180313083328.25705-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 1/6] watchdog: rename dev to hwdev
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/ar9344_wdt.c  | 2 +-
 drivers/watchdog/davinci_wdt.c | 2 +-
 drivers/watchdog/dw_wdt.c      | 4 ++--
 drivers/watchdog/im28wd.c      | 2 +-
 drivers/watchdog/imxwd.c       | 2 +-
 drivers/watchdog/orion_wdt.c   | 2 +-
 drivers/watchdog/wd_core.c     | 4 ++--
 include/watchdog.h             | 2 +-
 8 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/watchdog/ar9344_wdt.c b/drivers/watchdog/ar9344_wdt.c
index d570cb40f..c1dfc994a 100644
--- a/drivers/watchdog/ar9344_wdt.c
+++ b/drivers/watchdog/ar9344_wdt.c
@@ -95,7 +95,7 @@ static int ar9344_wdt_probe(struct device_d *dev)
 
 	priv->base = IOMEM(iores->start);
 	priv->wd.set_timeout = ar9344_watchdog_set_timeout;
-	priv->wd.dev = dev;
+	priv->wd.hwdev = dev;
 	priv->dev = dev;
 
 	dev->priv = priv;
diff --git a/drivers/watchdog/davinci_wdt.c b/drivers/watchdog/davinci_wdt.c
index 03dc83408..2ac5f8b38 100644
--- a/drivers/watchdog/davinci_wdt.c
+++ b/drivers/watchdog/davinci_wdt.c
@@ -149,7 +149,7 @@ static int davinci_wdt_probe(struct device_d *dev)
 	clk_enable(davinci_wdt->clk);
 
 	davinci_wdt->wd.set_timeout = davinci_wdt_set_timeout;
-	davinci_wdt->wd.dev = dev;
+	davinci_wdt->wd.hwdev = dev;
 
 	ret = watchdog_register(&davinci_wdt->wd);
 	if (ret < 0)
diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
index 8fd8c81e6..85e810f24 100644
--- a/drivers/watchdog/dw_wdt.c
+++ b/drivers/watchdog/dw_wdt.c
@@ -73,7 +73,7 @@ static int dw_wdt_stop(struct watchdog *wdd)
 	struct dw_wdt *dw_wdt = to_dw_wdt(wdd);
 
 	if (IS_ERR(dw_wdt->rst)) {
-		dev_warn(dw_wdt->wdd.dev, "No reset line. Will not stop.\n");
+		dev_warn(dw_wdt->wdd.hwdev, "No reset line. Will not stop.\n");
 		return PTR_ERR(dw_wdt->rst);
 	}
 
@@ -157,7 +157,7 @@ static int dw_wdt_drv_probe(struct device_d *dev)
 
 	wdd = &dw_wdt->wdd;
 	wdd->name = "dw_wdt";
-	wdd->dev = dev;
+	wdd->hwdev = dev;
 	wdd->set_timeout = dw_wdt_set_timeout;
 
 	ret = watchdog_register(wdd);
diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index 1956fdb73..43edea8d0 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -199,7 +199,7 @@ static int imx28_wd_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	priv->regs = IOMEM(iores->start);
 	priv->wd.set_timeout = imx28_watchdog_set_timeout;
-	priv->wd.dev = dev;
+	priv->wd.hwdev = dev;
 
 	if (!(readl(priv->regs + MXS_RTC_STAT) & MXS_RTC_STAT_WD_PRESENT)) {
 		rc = -ENODEV;
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index bd5e518bc..6b33834fe 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -218,7 +218,7 @@ static int imx_wd_probe(struct device_d *dev)
 	priv->base = IOMEM(iores->start);
 	priv->ops = ops;
 	priv->wd.set_timeout = imx_watchdog_set_timeout;
-	priv->wd.dev = dev;
+	priv->wd.hwdev = dev;
 	priv->dev = dev;
 
 	priv->ext_reset = of_property_read_bool(dev->device_node,
diff --git a/drivers/watchdog/orion_wdt.c b/drivers/watchdog/orion_wdt.c
index 2802033f7..4fe1ac1fd 100644
--- a/drivers/watchdog/orion_wdt.c
+++ b/drivers/watchdog/orion_wdt.c
@@ -88,7 +88,7 @@ static int orion_wdt_probe(struct device_d *dev)
 
 	ddata->wd.set_timeout = armada_xp_set_timeout;
 	ddata->wd.name = "orion_wdt";
-	ddata->wd.dev = dev;
+	ddata->wd.hwdev = dev;
 
 	res_timer = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(res_timer)) {
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 3a3f51964..56436e6f8 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -23,8 +23,8 @@ static LIST_HEAD(watchdog_list);
 
 static const char *watchdog_name(struct watchdog *wd)
 {
-	if (wd->dev)
-		return dev_name(wd->dev);
+	if (wd->hwdev)
+		return dev_name(wd->hwdev);
 	if (wd->name)
 		return wd->name;
 
diff --git a/include/watchdog.h b/include/watchdog.h
index 3e8a487a4..848981cc0 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -16,7 +16,7 @@
 struct watchdog {
 	int (*set_timeout)(struct watchdog *, unsigned);
 	const char *name;
-	struct device_d *dev;
+	struct device_d *hwdev;
 	unsigned int priority;
 	struct list_head list;
 };
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
