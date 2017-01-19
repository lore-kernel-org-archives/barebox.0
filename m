Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cUEG7-0002Yr-Er
 for barebox@lists.infradead.org; Thu, 19 Jan 2017 15:04:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Jan 2017 16:03:51 +0100
Message-Id: <20170119150352.5421-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] watchdog: i.MX: add soc_reset operation
To: Barebox List <barebox@lists.infradead.org>

On i.MX21 watchdog type the reset operation is really different
from the watchdog enable/set timeout operation, so create an
extra callback for this instead of folding both things together.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 32 +++++++++++++++++++++-----------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 03e116ea2..c736fdaa3 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -26,6 +26,7 @@ struct imx_wd;
 
 struct imx_wd_ops {
 	int (*set_timeout)(struct imx_wd *, int);
+	void (*soc_reset)(struct imx_wd *);
 	int (*init)(struct imx_wd *);
 };
 
@@ -76,10 +77,7 @@ static int imx1_watchdog_set_timeout(struct imx_wd *priv, int timeout)
 		return 0;
 	}
 
-	if (timeout > 0)
-		val = (timeout * 2 - 1) << 8;
-	else
-		val = 0;
+	val = (timeout * 2 - 1) << 8;
 
 	writew(val, priv->base + IMX1_WDOG_WCR);
 	writew(IMX1_WDOG_WCR_WDE | val, priv->base + IMX1_WDOG_WCR);
@@ -91,6 +89,11 @@ static int imx1_watchdog_set_timeout(struct imx_wd *priv, int timeout)
 	return 0;
 }
 
+static void imx1_soc_reset(struct imx_wd *priv)
+{
+	writew(IMX1_WDOG_WCR_WDE, priv->base + IMX1_WDOG_WCR);
+}
+
 static int imx21_watchdog_set_timeout(struct imx_wd *priv, int timeout)
 {
 	u16 val;
@@ -103,13 +106,9 @@ static int imx21_watchdog_set_timeout(struct imx_wd *priv, int timeout)
 	if (timeout == 0) /* bit 2 (WDE) cannot be set to 0 again */
 		return -ENOSYS;
 
-	if (timeout > 0)
-		val = ((timeout * 2 - 1) << 8) | IMX21_WDOG_WCR_SRS |
-			IMX21_WDOG_WCR_WDA;
-	else
-		val = 0;
+	val = ((timeout * 2 - 1) << 8) | IMX21_WDOG_WCR_SRS |
+		IMX21_WDOG_WCR_WDA;
 
-	writew(val, priv->base + IMX21_WDOG_WCR);
 	writew(IMX21_WDOG_WCR_WDE | val, priv->base + IMX21_WDOG_WCR);
 
 	/* Write Service Sequence */
@@ -119,6 +118,15 @@ static int imx21_watchdog_set_timeout(struct imx_wd *priv, int timeout)
 	return 0;
 }
 
+static void imx21_soc_reset(struct imx_wd *priv)
+{
+	u16 val;
+
+	val = IMX21_WDOG_WCR_SRS | IMX21_WDOG_WCR_WDA;
+
+	writew(val, priv->base + IMX21_WDOG_WCR);
+}
+
 static int imx_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 {
 	struct imx_wd *priv = (struct imx_wd *)to_imx_wd(wd);
@@ -130,7 +138,7 @@ static void __noreturn imxwd_force_soc_reset(struct restart_handler *rst)
 {
 	struct imx_wd *priv = container_of(rst, struct imx_wd, restart);
 
-	priv->ops->set_timeout(priv, -1);
+	priv->ops->soc_reset(priv);
 
 	mdelay(1000);
 
@@ -227,11 +235,13 @@ on_error:
 
 static const struct imx_wd_ops imx21_wd_ops = {
 	.set_timeout = imx21_watchdog_set_timeout,
+	.soc_reset = imx21_soc_reset,
 	.init = imx21_wd_init,
 };
 
 static const struct imx_wd_ops imx1_wd_ops = {
 	.set_timeout = imx1_watchdog_set_timeout,
+	.soc_reset = imx1_soc_reset,
 };
 
 static __maybe_unused struct of_device_id imx_wdt_dt_ids[] = {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
