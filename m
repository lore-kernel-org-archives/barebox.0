Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cUEZV-00038c-P5
 for barebox@lists.infradead.org; Thu, 19 Jan 2017 15:24:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Jan 2017 16:23:52 +0100
Message-Id: <20170119152355.2280-3-s.hauer@pengutronix.de>
In-Reply-To: <20170119152355.2280-1-s.hauer@pengutronix.de>
References: <20170119152355.2280-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] pinmmux: i.MX: add pin mux support for i.MX7
To: Barebox List <barebox@lists.infradead.org>
Cc: Juergen Borleis <jbe@pengutronix.de>

From: Juergen Borleis <jbe@pengutronix.de>

Signed-off-by Juergen Borleis <jbe@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/imx-iomux-v3.c | 40 ++++++++++++++++++++++++++++++++--------
 1 file changed, 32 insertions(+), 8 deletions(-)

diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index bc9314083..b5fa23560 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -24,14 +24,19 @@
 #include <pinctrl.h>
 #include <malloc.h>
 #include <mach/iomux-v3.h>
+#include <mach/generic.h>
 
 struct imx_iomux_v3 {
 	void __iomem *base;
 	struct pinctrl_device pinctrl;
+	unsigned int flags;
 };
 
-static void __iomem *iomuxv3_base;
+struct imx_iomux_v3_data {
+	unsigned int flags;
+};
 
+static void __iomem *iomuxv3_base;
 
 /*
  * configures a single pad in the iomuxer
@@ -111,7 +116,7 @@ static int imx_iomux_v3_set_state(struct pinctrl_device *pdev, struct device_nod
 		if (conf_val & IMX_DT_NO_PAD_CTL)
 			conf_reg = 0;
 
-		iomux_v3_setup_pad(iomux->base, 0,
+		iomux_v3_setup_pad(iomux->base, iomux->flags,
 				   mux_reg, conf_reg, input_reg,
 				   mux_val, conf_val, input_val);
 	}
@@ -126,14 +131,18 @@ static struct pinctrl_ops imx_iomux_v3_ops = {
 static int imx_pinctrl_dt(struct device_d *dev, void __iomem *base)
 {
 	struct imx_iomux_v3 *iomux;
+	struct imx_iomux_v3_data *drvdata = NULL;
 	int ret;
 
+	dev_get_drvdata(dev, (const void **)&drvdata);
 	iomux = xzalloc(sizeof(*iomux));
 
 	iomux->base = base;
 
 	iomux->pinctrl.dev = dev;
 	iomux->pinctrl.ops = &imx_iomux_v3_ops;
+	if (drvdata)
+		iomux->flags = drvdata->flags;
 
 	ret = pinctrl_register(&iomux->pinctrl);
 	if (ret)
@@ -144,23 +153,33 @@ static int imx_pinctrl_dt(struct device_d *dev, void __iomem *base)
 
 static int imx_iomux_v3_probe(struct device_d *dev)
 {
+	void __iomem *base;
 	struct resource *iores;
 	int ret = 0;
 
-	if (iomuxv3_base)
-		return -EBUSY;
-
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-	iomuxv3_base = IOMEM(iores->start);
+	base = IOMEM(iores->start);
+
+	if (!iomuxv3_base)
+		/*
+		 * Uh, this works only for the older controllers, not for
+		 * i.MX7 which has two iomux controllers. i.MX7 based boards
+		 * should not use mxc_iomux_v3_setup_pad anyway.
+		 */
+		iomuxv3_base = base;
 
 	if (IS_ENABLED(CONFIG_PINCTRL) && dev->device_node)
-		ret = imx_pinctrl_dt(dev, iomuxv3_base);
+		ret = imx_pinctrl_dt(dev, base);
 
 	return ret;
 }
 
+static struct imx_iomux_v3_data imx_iomux_imx7_lpsr_data = {
+	.flags = ZERO_OFFSET_VALID,
+};
+
 static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
 	{
 		.compatible = "fsl,imx25-iomuxc",
@@ -172,13 +191,18 @@ static __maybe_unused struct of_device_id imx_iomux_v3_dt_ids[] = {
 		.compatible = "fsl,imx53-iomuxc",
 	}, {
 		.compatible = "fsl,imx6q-iomuxc",
-	},  {
+	}, {
 		.compatible = "fsl,imx6dl-iomuxc",
 	}, {
 		.compatible = "fsl,imx6sx-iomuxc",
 	}, {
 		.compatible = "fsl,imx6ul-iomuxc",
 	}, {
+		.compatible = "fsl,imx7d-iomuxc",
+	}, {
+		.compatible = "fsl,imx7d-iomuxc-lpsr",
+		.data = &imx_iomux_imx7_lpsr_data,
+	}, {
 		/* sentinel */
 	}
 };
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
