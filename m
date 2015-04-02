Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YdhBK-0000Mu-Jo
 for barebox@lists.infradead.org; Thu, 02 Apr 2015 15:37:24 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Thu,  2 Apr 2015 17:36:50 +0200
Message-Id: <1427989011-26503-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH 1/2] wdog: imx-wd: Introduce ops struct for imx21/imx1
To: barebox@lists.infradead.org

Replace the set_timeout function in the device platform data by an ops
struct which stores a set_timeout and init function.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 54 +++++++++++++++++++++++++++++++++++++-----------
 1 file changed, 42 insertions(+), 12 deletions(-)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 31c3d0d85353..42edfe00d2bc 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -21,11 +21,18 @@
 #include <watchdog.h>
 #include <reset_source.h>
 
+struct imx_wd;
+
+struct imx_wd_ops {
+	int (*set_timeout)(struct imx_wd *, int);
+	int (*init)(struct imx_wd *);
+};
+
 struct imx_wd {
 	struct watchdog wd;
 	void __iomem *base;
 	struct device_d *dev;
-	int (*set_timeout)(struct imx_wd *, unsigned);
+	const struct imx_wd_ops *ops;
 };
 
 #define to_imx_wd(h) container_of(h, struct imx_wd, wd)
@@ -110,7 +117,7 @@ static int imx_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 {
 	struct imx_wd *priv = (struct imx_wd *)to_imx_wd(wd);
 
-	return priv->set_timeout(priv, timeout);
+	return priv->ops->set_timeout(priv, timeout);
 }
 
 static struct imx_wd *reset_wd;
@@ -118,7 +125,7 @@ static struct imx_wd *reset_wd;
 void __noreturn reset_cpu(unsigned long addr)
 {
 	if (reset_wd)
-		reset_wd->set_timeout(reset_wd, -1);
+		reset_wd->ops->set_timeout(reset_wd, -1);
 
 	mdelay(1000);
 
@@ -147,13 +154,20 @@ static void imx_watchdog_detect_reset_source(struct imx_wd *priv)
 	/* else keep the default 'unknown' state */
 }
 
+static int imx21_wd_init(struct imx_wd *priv)
+{
+	imx_watchdog_detect_reset_source(priv);
+
+	return 0;
+}
+
 static int imx_wd_probe(struct device_d *dev)
 {
 	struct imx_wd *priv;
-	void *fn;
+	void *ops;
 	int ret;
 
-	ret = dev_get_drvdata(dev, (unsigned long *)&fn);
+	ret = dev_get_drvdata(dev, (unsigned long *)&ops);
 	if (ret)
 		return ret;
 
@@ -163,7 +177,7 @@ static int imx_wd_probe(struct device_d *dev)
 		dev_err(dev, "could not get memory region\n");
 		return -ENODEV;
 	}
-	priv->set_timeout = fn;
+	priv->ops = ops;
 	priv->wd.set_timeout = imx_watchdog_set_timeout;
 	priv->dev = dev;
 
@@ -176,13 +190,20 @@ static int imx_wd_probe(struct device_d *dev)
 			goto on_error;
 	}
 
-	if (fn != imx1_watchdog_set_timeout)
-		imx_watchdog_detect_reset_source(priv);
+	if (priv->ops->init) {
+		ret = priv->ops->init(priv);
+		if (ret) {
+			dev_err(dev, "Failed to init watchdog device %d\n", ret);
+			goto error_unregister;
+		}
+	}
 
 	dev->priv = priv;
 
 	return 0;
 
+error_unregister:
+	watchdog_deregister(&priv->wd);
 on_error:
 	if (reset_wd && reset_wd != priv)
 		free(priv);
@@ -200,13 +221,22 @@ static void imx_wd_remove(struct device_d *dev)
 		free(priv);
 }
 
+static const struct imx_wd_ops imx21_wd_ops = {
+	.set_timeout = imx21_watchdog_set_timeout,
+	.init = imx21_wd_init,
+};
+
+static const struct imx_wd_ops imx1_wd_ops = {
+	.set_timeout = imx1_watchdog_set_timeout,
+};
+
 static __maybe_unused struct of_device_id imx_wdt_dt_ids[] = {
 	{
 		.compatible = "fsl,imx1-wdt",
-		.data = (unsigned long)&imx1_watchdog_set_timeout,
+		.data = (unsigned long)&imx1_wd_ops,
 	}, {
 		.compatible = "fsl,imx21-wdt",
-		.data = (unsigned long)&imx21_watchdog_set_timeout,
+		.data = (unsigned long)&imx21_wd_ops,
 	}, {
 		/* sentinel */
 	}
@@ -215,10 +245,10 @@ static __maybe_unused struct of_device_id imx_wdt_dt_ids[] = {
 static struct platform_device_id imx_wdt_ids[] = {
 	{
 		.name = "imx1-wdt",
-		.driver_data = (unsigned long)&imx1_watchdog_set_timeout,
+		.driver_data = (unsigned long)&imx1_wd_ops,
 	}, {
 		.name = "imx21-wdt",
-		.driver_data = (unsigned long)&imx21_watchdog_set_timeout,
+		.driver_data = (unsigned long)&imx21_wd_ops,
 	}, {
 		/* sentinel */
 	},
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
