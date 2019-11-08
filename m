Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT23G-0000Sj-8q
 for barebox@lists.infradead.org; Fri, 08 Nov 2019 11:03:39 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  8 Nov 2019 12:03:31 +0100
Message-Id: <20191108110332.32010-3-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 3/4] watchdog: imxwd: support .running device parameter on
 i.MX2+
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The i.MX can be fused to start the watchdog on power-on reset.
To give users an easy way to determine whether the watchdog is running,
implement support for WDOG_HW_RUNNING.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  Use new enum wdog_hw_running
v1 -> v2:
  Use new WDOG_HW_RUNNING_SUPPORTED
---
 drivers/watchdog/imxwd.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 77a3bd76cefa..b2cfd1cd3a31 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -28,6 +28,7 @@ struct imx_wd_ops {
 	int (*set_timeout)(struct imx_wd *, unsigned);
 	void (*soc_reset)(struct imx_wd *);
 	int (*init)(struct imx_wd *);
+	bool (*is_running)(struct imx_wd *);
 	unsigned int timeout_max;
 };
 
@@ -111,6 +112,11 @@ static void imx1_soc_reset(struct imx_wd *priv)
 	writew(IMX1_WDOG_WCR_WDE, priv->base + IMX1_WDOG_WCR);
 }
 
+static inline bool imx21_watchdog_is_running(struct imx_wd *priv)
+{
+	return imxwd_read(priv, IMX21_WDOG_WCR) & IMX21_WDOG_WCR_WDE;
+}
+
 static int imx21_watchdog_set_timeout(struct imx_wd *priv, unsigned timeout)
 {
 	u16 val;
@@ -243,6 +249,13 @@ static int imx_wd_probe(struct device_d *dev)
 						"fsl,ext-reset-output");
 
 	if (IS_ENABLED(CONFIG_WATCHDOG_IMX)) {
+		if (priv->ops->is_running) {
+			if (priv->ops->is_running(priv))
+				priv->wd.running = WDOG_HW_RUNNING;
+			else
+				priv->wd.running = WDOG_HW_NOT_RUNNING;
+		}
+
 		ret = watchdog_register(&priv->wd);
 		if (ret)
 			goto on_error;
@@ -277,6 +290,7 @@ static const struct imx_wd_ops imx21_wd_ops = {
 	.set_timeout = imx21_watchdog_set_timeout,
 	.soc_reset = imx21_soc_reset,
 	.init = imx21_wd_init,
+	.is_running = imx21_watchdog_is_running,
 	.timeout_max = 128,
 };
 
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
