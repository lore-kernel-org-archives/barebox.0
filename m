Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cUEG7-0002Ys-Es
 for barebox@lists.infradead.org; Thu, 19 Jan 2017 15:04:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Jan 2017 16:03:52 +0100
Message-Id: <20170119150352.5421-2-s.hauer@pengutronix.de>
In-Reply-To: <20170119150352.5421-1-s.hauer@pengutronix.de>
References: <20170119150352.5421-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] watchdog: i.MX: Fix internal/external reset
To: Barebox List <barebox@lists.infradead.org>

The watchdog can either reset only the SoC or assert the WDOG_B
output signal instead. On some boards it's necessary to use the
external WDOG_B output to make sure that external devices like the
PMIC are also properly resetted. This has been fixed in the Linux
driver which honours a fsl,ext-reset-output device tree property
to select between both ways. Do the same in the barebox driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index c736fdaa3..84dea802b 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -36,6 +36,7 @@ struct imx_wd {
 	struct device_d *dev;
 	const struct imx_wd_ops *ops;
 	struct restart_handler restart;
+	bool ext_reset;
 };
 
 #define to_imx_wd(h) container_of(h, struct imx_wd, wd)
@@ -51,6 +52,7 @@ struct imx_wd {
 #define IMX21_WDOG_WSTR	0x04 /* Watchdog Status Register  */
 #define IMX21_WDOG_WMCR	0x08 /* Misc Register */
 #define IMX21_WDOG_WCR_WDE	(1 << 2)
+#define IMX21_WDOG_WCR_WDT	(1 << 3)
 #define IMX21_WDOG_WCR_SRS	(1 << 4)
 #define IMX21_WDOG_WCR_WDA	(1 << 5)
 
@@ -109,6 +111,9 @@ static int imx21_watchdog_set_timeout(struct imx_wd *priv, int timeout)
 	val = ((timeout * 2 - 1) << 8) | IMX21_WDOG_WCR_SRS |
 		IMX21_WDOG_WCR_WDA;
 
+	if (priv->ext_reset)
+		val |= IMX21_WDOG_WCR_WDT;
+
 	writew(IMX21_WDOG_WCR_WDE | val, priv->base + IMX21_WDOG_WCR);
 
 	/* Write Service Sequence */
@@ -120,9 +125,13 @@ static int imx21_watchdog_set_timeout(struct imx_wd *priv, int timeout)
 
 static void imx21_soc_reset(struct imx_wd *priv)
 {
-	u16 val;
+	u16 val = 0;
 
-	val = IMX21_WDOG_WCR_SRS | IMX21_WDOG_WCR_WDA;
+	/* Use internal reset or external - not both */
+	if (priv->ext_reset)
+		val |= IMX21_WDOG_WCR_SRS; /* do not assert int reset */
+	else
+		val |= IMX21_WDOG_WCR_WDA; /* do not assert ext-reset */
 
 	writew(val, priv->base + IMX21_WDOG_WCR);
 }
@@ -202,6 +211,9 @@ static int imx_wd_probe(struct device_d *dev)
 	priv->wd.dev = dev;
 	priv->dev = dev;
 
+	priv->ext_reset = of_property_read_bool(dev->device_node,
+						"fsl,ext-reset-output");
+
 	if (IS_ENABLED(CONFIG_WATCHDOG_IMX)) {
 		ret = watchdog_register(&priv->wd);
 		if (ret)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
