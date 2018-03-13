Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1evfNS-00040Y-7F
 for barebox@lists.infradead.org; Tue, 13 Mar 2018 08:33:50 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 13 Mar 2018 09:33:24 +0100
Message-Id: <20180313083328.25705-2-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 2/6] watchdog: move max timeout test in to wd_core
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

this also will be needed for watchdog poller as well

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/watchdog/ar9344_wdt.c | 15 ++++-----------
 drivers/watchdog/im28wd.c     |  4 +---
 drivers/watchdog/imxwd.c      | 10 ++++------
 drivers/watchdog/orion_wdt.c  |  4 +---
 drivers/watchdog/wd_core.c    |  6 ++++++
 include/watchdog.h            |  1 +
 6 files changed, 17 insertions(+), 23 deletions(-)

diff --git a/drivers/watchdog/ar9344_wdt.c b/drivers/watchdog/ar9344_wdt.c
index c1dfc994a..461528863 100644
--- a/drivers/watchdog/ar9344_wdt.c
+++ b/drivers/watchdog/ar9344_wdt.c
@@ -41,20 +41,11 @@ struct ar9344_wd {
 static int ar9344_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 {
 	struct ar9344_wd *priv = to_ar9344_wd(wd);
-	u32 val, ctrl, rate, max_timout;
-
-	rate = clk_get_rate(priv->clk);
-	max_timout = U32_MAX / rate;
-
-	if (timeout > max_timout) {
-		dev_err(priv->dev, "timeout value out of range: %d > %d\n",
-			timeout, max_timout);
-		return -EINVAL;
-	}
+	u32 val, ctrl;
 
 	if (timeout) {
 		ctrl = AR9344_WD_CTRL_ACTION_FCR;
-		val = timeout * rate;
+		val = timeout * clk_get_rate(priv->clk);
 	} else {
 		ctrl = AR9344_WD_CTRL_ACTION_NONE;
 		val = U32_MAX;
@@ -111,6 +102,8 @@ static int ar9344_wdt_probe(struct device_d *dev)
 
 	clk_enable(priv->clk);
 
+	priv->wd.timeout_max = U32_MAX / clk_get_rate(priv->clk);
+
 	ret = watchdog_register(&priv->wd);
 	if (ret)
 		goto on_error;
diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index 43edea8d0..2b233ede2 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -133,9 +133,6 @@ static int imx28_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 	struct imx28_wd *pwd = (struct imx28_wd *)to_imx28_wd(wd);
 	void __iomem *base;
 
-	if (timeout > (ULONG_MAX / WDOG_TICK_RATE))
-		return -EINVAL;
-
 	if (timeout) {
 		writel(timeout * WDOG_TICK_RATE, pwd->regs + MXS_RTC_WATCHDOG);
 		base = pwd->regs + MXS_RTC_SET_ADDR;
@@ -199,6 +196,7 @@ static int imx28_wd_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	priv->regs = IOMEM(iores->start);
 	priv->wd.set_timeout = imx28_watchdog_set_timeout;
+	priv->wd.timeout_max = ULONG_MAX / WDOG_TICK_RATE;
 	priv->wd.hwdev = dev;
 
 	if (!(readl(priv->regs + MXS_RTC_STAT) & MXS_RTC_STAT_WD_PRESENT)) {
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 6b33834fe..a66fae400 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -28,6 +28,7 @@ struct imx_wd_ops {
 	int (*set_timeout)(struct imx_wd *, unsigned);
 	void (*soc_reset)(struct imx_wd *);
 	int (*init)(struct imx_wd *);
+	unsigned int timeout_max;
 };
 
 struct imx_wd {
@@ -71,9 +72,6 @@ static int imx1_watchdog_set_timeout(struct imx_wd *priv, unsigned timeout)
 
 	dev_dbg(priv->dev, "%s: %d\n", __func__, timeout);
 
-	if (timeout > 64)
-		return -EINVAL;
-
 	if (!timeout) {
 		writew(IMX1_WDOG_WCR_WHALT, priv->base + IMX1_WDOG_WCR);
 		return 0;
@@ -102,9 +100,6 @@ static int imx21_watchdog_set_timeout(struct imx_wd *priv, unsigned timeout)
 
 	dev_dbg(priv->dev, "%s: %d\n", __func__, timeout);
 
-	if (timeout > 128)
-		return -EINVAL;
-
 	if (timeout == 0) /* bit 2 (WDE) cannot be set to 0 again */
 		return -ENOSYS;
 
@@ -218,6 +213,7 @@ static int imx_wd_probe(struct device_d *dev)
 	priv->base = IOMEM(iores->start);
 	priv->ops = ops;
 	priv->wd.set_timeout = imx_watchdog_set_timeout;
+	priv->wd.timeout_max = priv->ops->timeout_max;
 	priv->wd.hwdev = dev;
 	priv->dev = dev;
 
@@ -259,11 +255,13 @@ static const struct imx_wd_ops imx21_wd_ops = {
 	.set_timeout = imx21_watchdog_set_timeout,
 	.soc_reset = imx21_soc_reset,
 	.init = imx21_wd_init,
+	.timeout_max = 128,
 };
 
 static const struct imx_wd_ops imx1_wd_ops = {
 	.set_timeout = imx1_watchdog_set_timeout,
 	.soc_reset = imx1_soc_reset,
+	.timeout_max = 64,
 };
 
 static __maybe_unused struct of_device_id imx_wdt_dt_ids[] = {
diff --git a/drivers/watchdog/orion_wdt.c b/drivers/watchdog/orion_wdt.c
index 4fe1ac1fd..dd1fa3a04 100644
--- a/drivers/watchdog/orion_wdt.c
+++ b/drivers/watchdog/orion_wdt.c
@@ -49,9 +49,6 @@ static int armada_xp_set_timeout(struct watchdog *wd, unsigned timeout)
 		container_of(wd, struct orion_wdt_ddata, wd);
 	u32 ctrl;
 
-	if (0xffffffff / CLKRATE < timeout)
-		return -EINVAL;
-
 	ctrl = readl(ddata->timer_base + TIMER_CTRL);
 
 	if (timeout == 0) {
@@ -89,6 +86,7 @@ static int orion_wdt_probe(struct device_d *dev)
 	ddata->wd.set_timeout = armada_xp_set_timeout;
 	ddata->wd.name = "orion_wdt";
 	ddata->wd.hwdev = dev;
+	ddata->wd.timeout_max = U32_MAX / CLKRATE;
 
 	res_timer = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(res_timer)) {
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 56436e6f8..1d0f0de7d 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -36,6 +36,9 @@ int watchdog_register(struct watchdog *wd)
 	if (!wd->priority)
 		wd->priority = WATCHDOG_DEFAULT_PRIORITY;
 
+	dev_add_param_uint32_ro(&wd->dev, "timeout_max",
+			&wd->timeout_max, "%u");
+
 	list_add_tail(&wd->list, &watchdog_list);
 
 	pr_debug("registering watchdog %s with priority %d\n", watchdog_name(wd),
@@ -81,6 +84,9 @@ int watchdog_set_timeout(unsigned timeout)
 	if (!wd)
 		return -ENODEV;
 
+	if (timeout > wd->timeout_max)
+		return -EINVAL;
+
 	pr_debug("setting timeout on %s to %ds\n", watchdog_name(wd), timeout);
 
 	return wd->set_timeout(wd, timeout);
diff --git a/include/watchdog.h b/include/watchdog.h
index 848981cc0..1e06fbc3f 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -18,6 +18,7 @@ struct watchdog {
 	const char *name;
 	struct device_d *hwdev;
 	unsigned int priority;
+	unsigned int timeout_max;
 	struct list_head list;
 };
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
