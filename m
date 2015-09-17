Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZcUE2-0004Kv-Dc
 for barebox@lists.infradead.org; Thu, 17 Sep 2015 08:07:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Sep 2015 10:07:02 +0200
Message-Id: <1442477222-830-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i2c: fsl: Add bus recovery support
To: Barebox List <barebox@lists.infradead.org>

Useful for recovering busses. This needs additional device tree properties
describing the sda/scl gpios. The corresponding linux patch with the binding
description is currently under review.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 67 ++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 62 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 4cd03e1..7df4a26 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -35,11 +35,14 @@
 #include <driver.h>
 #include <init.h>
 #include <of.h>
+#include <gpio.h>
 #include <malloc.h>
 #include <types.h>
 #include <xfuncs.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <pinctrl.h>
+#include <of_gpio.h>
 
 #include <io.h>
 #include <i2c/i2c.h>
@@ -108,6 +111,7 @@ struct fsl_i2c_struct {
 	int			stopped;
 	unsigned int		ifdr;	/* FSL_I2C_IFDR */
 	unsigned int		dfsrr;  /* FSL_I2C_DFSRR */
+	struct i2c_bus_recovery_info rinfo;
 };
 #define to_fsl_i2c_struct(a)	container_of(a, struct fsl_i2c_struct, adapter)
 
@@ -232,8 +236,12 @@ static int i2c_fsl_start(struct i2c_adapter *adapter)
 	writeb(temp, base + FSL_I2C_I2CR);
 
 	result = i2c_fsl_bus_busy(adapter, 1);
-	if (result)
-		return result;
+	if (result) {
+		result = i2c_recover_bus(&i2c_fsl->adapter);
+		if (result)
+			return result;
+		return -EAGAIN;
+	}
 
 	i2c_fsl->stopped = 0;
 
@@ -494,9 +502,14 @@ static int i2c_fsl_xfer(struct i2c_adapter *adapter,
 	int result;
 
 	/* Start I2C transfer */
-	result = i2c_fsl_start(adapter);
-	if (result)
-		goto fail0;
+	for (i = 0; i < 3; i++) {
+		result = i2c_fsl_start(adapter);
+		if (!result)
+			break;
+		if (result == -EAGAIN)
+			continue;
+		return result;
+	}
 
 	/* read/write data */
 	for (i = 0; i < num; i++) {
@@ -527,6 +540,48 @@ fail0:
 	return (result < 0) ? result : num;
 }
 
+static void i2c_fsl_prepare_recovery(struct i2c_adapter *adapter)
+{
+	int ret;
+
+	ret = pinctrl_select_state(adapter->dev.parent, "gpio");
+	if (ret)
+		dev_err(adapter->dev.parent, "pinctrl failed: %s\n", strerror(-ret));
+}
+static void i2c_fsl_unprepare_recovery(struct i2c_adapter *adapter)
+{
+	int ret;
+
+	ret = pinctrl_select_state(adapter->dev.parent, "default");
+	if (ret)
+		dev_err(adapter->dev.parent, "pinctrl failed: %s\n", strerror(-ret));
+}
+
+static void i2c_fsl_init_recovery(struct fsl_i2c_struct *i2c_fsl, struct device_d *dev)
+{
+	if (!dev->device_node)
+		return;
+
+	i2c_fsl->rinfo.sda_gpio = of_get_named_gpio_flags(dev->device_node,
+			"sda-gpios", 0, NULL);
+	i2c_fsl->rinfo.scl_gpio = of_get_named_gpio_flags(dev->device_node,
+			"scl-gpios", 0, NULL);
+
+	if (!gpio_is_valid(i2c_fsl->rinfo.sda_gpio) ||
+	    !gpio_is_valid(i2c_fsl->rinfo.scl_gpio))
+		return;
+
+	i2c_fsl->rinfo.get_scl = i2c_get_scl_gpio_value;
+	i2c_fsl->rinfo.get_sda = i2c_get_sda_gpio_value;
+	i2c_fsl->rinfo.set_scl = i2c_set_scl_gpio_value;
+	i2c_fsl->rinfo.prepare_recovery = i2c_fsl_prepare_recovery;
+	i2c_fsl->rinfo.unprepare_recovery = i2c_fsl_unprepare_recovery;
+	i2c_fsl->rinfo.recover_bus = i2c_generic_gpio_recovery;
+	i2c_fsl->adapter.bus_recovery_info = &i2c_fsl->rinfo;
+
+	dev_dbg(dev, "initialized recovery info\n");
+}
+
 static int __init i2c_fsl_probe(struct device_d *pdev)
 {
 	struct fsl_i2c_struct *i2c_fsl;
@@ -555,6 +610,8 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
 		goto fail;
 	}
 
+	i2c_fsl_init_recovery(i2c_fsl, pdev);
+
 	i2c_fsl->dfsrr = -1;
 
 	/* Set up clock divider */
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
