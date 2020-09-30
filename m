Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNWPK-0002mn-8c
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 07:20:17 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Sep 2020 09:19:57 +0200
Message-Id: <20200930072005.1407-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200930072005.1407-1-a.fatoum@pengutronix.de>
References: <20200930072005.1407-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 04/12] watchdog: fix division-by-zero when clock rate == 0
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Instead of storing the clk into the driver's device-specific private
data, just store the rate and make sure it's != 0 on probe.

This aligns us with what Linux does for the STM32 IWDG and DW WDT.

Reported-by: clang-analyzer-10
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/ar9344_wdt.c | 21 ++++++++++++++-------
 drivers/watchdog/dw_wdt.c     | 19 ++++++++++++-------
 drivers/watchdog/stm32_iwdg.c |  2 ++
 3 files changed, 28 insertions(+), 14 deletions(-)

diff --git a/drivers/watchdog/ar9344_wdt.c b/drivers/watchdog/ar9344_wdt.c
index 4615288631d6..c7cd552dc711 100644
--- a/drivers/watchdog/ar9344_wdt.c
+++ b/drivers/watchdog/ar9344_wdt.c
@@ -34,8 +34,8 @@
 struct ar9344_wd {
 	struct watchdog		wd;
 	void __iomem		*base;
-	struct clk		*clk;
 	struct device_d		*dev;
+	unsigned int		rate;
 };
 
 static int ar9344_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
@@ -45,7 +45,7 @@ static int ar9344_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 
 	if (timeout) {
 		ctrl = AR9344_WD_CTRL_ACTION_FCR;
-		val = timeout * clk_get_rate(priv->clk);
+		val = timeout * priv->rate;
 	} else {
 		ctrl = AR9344_WD_CTRL_ACTION_NONE;
 		val = U32_MAX;
@@ -74,6 +74,7 @@ static int ar9344_wdt_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct ar9344_wd *priv;
+	struct clk *clk;
 	int ret;
 
 	priv = xzalloc(sizeof(struct ar9344_wd));
@@ -93,16 +94,22 @@ static int ar9344_wdt_probe(struct device_d *dev)
 
 	ar9344_watchdog_detect_reset_source(priv);
 
-	priv->clk = clk_get(dev, NULL);
-	if (IS_ERR(priv->clk)) {
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk)) {
 		dev_err(dev, "could not get clk\n");
-		ret = PTR_ERR(priv->clk);
+		ret = PTR_ERR(clk);
 		goto on_error;
 	}
 
-	clk_enable(priv->clk);
+	clk_enable(clk);
 
-	priv->wd.timeout_max = U32_MAX / clk_get_rate(priv->clk);
+	priv->rate = clk_get_rate(clk);
+	if (priv->rate == 0) {
+		ret = -EINVAL;
+		goto on_error;
+	}
+
+	priv->wd.timeout_max = U32_MAX / priv->rate;
 
 	ret = watchdog_register(&priv->wd);
 	if (ret)
diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
index cb0d17e3610b..17771c712644 100644
--- a/drivers/watchdog/dw_wdt.c
+++ b/drivers/watchdog/dw_wdt.c
@@ -41,10 +41,10 @@
 
 struct dw_wdt {
 	void __iomem		*regs;
-	struct clk		*clk;
 	struct restart_handler	restart;
 	struct watchdog		wdd;
 	struct reset_control	*rst;
+	unsigned int		rate;
 };
 
 #define to_dw_wdt(wdd)	container_of(wdd, struct dw_wdt, wdd)
@@ -55,7 +55,7 @@ static inline int dw_wdt_top_in_seconds(struct dw_wdt *dw_wdt, unsigned top)
 	 * There are 16 possible timeout values in 0..15 where the number of
 	 * cycles is 2 ^ (16 + i) and the watchdog counts down.
 	 */
-	return (1U << (16 + top)) / clk_get_rate(dw_wdt->clk);
+	return (1U << (16 + top)) / dw_wdt->rate;
 }
 
 static int dw_wdt_start(struct watchdog *wdd)
@@ -134,6 +134,7 @@ static int dw_wdt_drv_probe(struct device_d *dev)
 	struct watchdog *wdd;
 	struct dw_wdt *dw_wdt;
 	struct resource *mem;
+	struct clk *clk;
 	int ret;
 
 	dw_wdt = xzalloc(sizeof(*dw_wdt));
@@ -143,11 +144,11 @@ static int dw_wdt_drv_probe(struct device_d *dev)
 	if (IS_ERR(dw_wdt->regs))
 		return PTR_ERR(dw_wdt->regs);
 
-	dw_wdt->clk = clk_get(dev, NULL);
-	if (IS_ERR(dw_wdt->clk))
-		return PTR_ERR(dw_wdt->clk);
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
 
-	ret = clk_enable(dw_wdt->clk);
+	ret = clk_enable(clk);
 	if (ret)
 		return ret;
 
@@ -160,6 +161,10 @@ static int dw_wdt_drv_probe(struct device_d *dev)
 	wdd->hwdev = dev;
 	wdd->set_timeout = dw_wdt_set_timeout;
 
+	dw_wdt->rate = clk_get_rate(clk);
+	if (dw_wdt->rate == 0)
+		return -EINVAL;
+
 	ret = watchdog_register(wdd);
 	if (ret)
 		goto out_disable_clk;
@@ -179,7 +184,7 @@ static int dw_wdt_drv_probe(struct device_d *dev)
 	return 0;
 
 out_disable_clk:
-	clk_disable(dw_wdt->clk);
+	clk_disable(clk);
 	return ret;
 }
 
diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
index 9e38f1a669f2..4d7a263b7e62 100644
--- a/drivers/watchdog/stm32_iwdg.c
+++ b/drivers/watchdog/stm32_iwdg.c
@@ -157,6 +157,8 @@ static int stm32_iwdg_probe(struct device_d *dev)
 		return ret;
 
 	wd->rate = clk_get_rate(clk);
+	if (wd->rate == 0)
+		return -EINVAL;
 
 	if (data->has_pclk) {
 		clk = clk_get(dev, "pclk");
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
