Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBtE6-000493-Ir
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 20:07:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2012 22:06:42 +0200
Message-Id: <1347480407-16865-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
References: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 10/15] spi imx: dt support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/imx_spi.c |   49 +++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 47 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 80a1450..299c1a4 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -24,6 +24,7 @@
 #include <spi/spi.h>
 #include <xfuncs.h>
 #include <io.h>
+#include <errno.h>
 #include <gpio.h>
 #include <mach/spi.h>
 #include <mach/generic.h>
@@ -495,6 +496,32 @@ static struct spi_imx_devtype_data spi_imx_devtype_data[] = {
 #endif
 };
 
+static int imx_spi_dt_probe(struct imx_spi *imx)
+{
+	struct device_node *node = imx->master.dev->device_node;
+	int ret, i;
+	u32 num_cs;
+
+	if (!node)
+		return -ENODEV;
+
+	ret = of_property_read_u32(node, "fsl,spi-num-chipselects", &num_cs);
+	if (ret)
+		return ret;
+
+	imx->master.num_chipselect = num_cs;
+	imx->cs_array = xzalloc(sizeof(u32) * num_cs);
+
+	for (i = 0; i < num_cs; i++) {
+		int cs_gpio = of_get_named_gpio(node, "cs-gpios", i);
+		imx->cs_array[i] = cs_gpio;
+	}
+
+	spi_of_register_slaves(&imx->master, node);
+
+	return 0;
+}
+
 static int imx_spi_probe(struct device_d *dev)
 {
 	struct spi_master *master;
@@ -509,8 +536,13 @@ static int imx_spi_probe(struct device_d *dev)
 
 	master->setup = imx_spi_setup;
 	master->transfer = imx_spi_transfer;
-	master->num_chipselect = pdata->num_chipselect;
-	imx->cs_array = pdata->chipselect;
+	if (pdata) {
+		master->num_chipselect = pdata->num_chipselect;
+		imx->cs_array = pdata->chipselect;
+	} else {
+		if (IS_ENABLED(CONFIG_OFDEVICE))
+			imx_spi_dt_probe(imx);
+	}
 
 #ifdef CONFIG_DRIVER_SPI_IMX_0_0
 	if (cpu_is_mx27())
@@ -536,9 +568,22 @@ static int imx_spi_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx_spi_dt_ids[] = {
+	{
+		.compatible = "fsl,imx27-cspi",
+	}, {
+		.compatible = "fsl,imx35-cspi",
+	}, {
+		.compatible = "fsl,imx51-ecspi",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx_spi_driver = {
 	.name  = "imx_spi",
 	.probe = imx_spi_probe,
+	.of_compatible = DRV_OF_COMPAT(imx_spi_dt_ids),
 };
 
 static int imx_spi_init(void)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
