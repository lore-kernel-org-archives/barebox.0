Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WClVY-0001e9-GO
 for barebox@lists.infradead.org; Mon, 10 Feb 2014 07:42:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Feb 2014 08:41:57 +0100
Message-Id: <1392018119-20774-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] spi: imx: drop use of enum
To: barebox@lists.infradead.org

enum imx_spi_devtype is used as index into an array of controller types.
This makes the controller type handling unnecessarily complicated. Just
drop the enum and instead of an array use different statically initialized
structs and referene them by name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/imx_spi.c | 69 ++++++++++++++++++---------------------------------
 1 file changed, 24 insertions(+), 45 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index c0c2ed7..80655a7 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -107,27 +107,6 @@
 #define CSPI_2_3_STAT		0x18
 #define CSPI_2_3_STAT_RR		(1 <<  3)
 
-enum imx_spi_devtype {
-#ifdef CONFIG_DRIVER_SPI_IMX1
-	SPI_IMX_VER_IMX1,
-#endif
-#ifdef CONFIG_DRIVER_SPI_IMX_0_0
-	SPI_IMX_VER_0_0,
-#endif
-#ifdef CONFIG_DRIVER_SPI_IMX_0_4
-	SPI_IMX_VER_0_4,
-#endif
-#ifdef CONFIG_DRIVER_SPI_IMX_0_5
-	SPI_IMX_VER_0_5,
-#endif
-#ifdef CONFIG_DRIVER_SPI_IMX_0_7
-	SPI_IMX_VER_0_7,
-#endif
-#ifdef CONFIG_DRIVER_SPI_IMX_2_3
-	SPI_IMX_VER_2_3,
-#endif
-};
-
 struct imx_spi {
 	struct spi_master	master;
 	int			*cs_array;
@@ -473,29 +452,29 @@ static int imx_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 	return 0;
 }
 
-static struct spi_imx_devtype_data spi_imx_devtype_data[] = {
 #ifdef CONFIG_DRIVER_SPI_IMX_0_0
-	[SPI_IMX_VER_0_0] = {
-		.chipselect = cspi_0_0_chipselect,
-		.xchg_single = cspi_0_0_xchg_single,
-		.init = cspi_0_0_init,
-	},
+static struct spi_imx_devtype_data spi_imx_devtype_data_0_0 = {
+	.chipselect = cspi_0_0_chipselect,
+	.xchg_single = cspi_0_0_xchg_single,
+	.init = cspi_0_0_init,
+};
 #endif
+
 #ifdef CONFIG_DRIVER_SPI_IMX_0_7
-	[SPI_IMX_VER_0_7] = {
-		.chipselect = cspi_0_7_chipselect,
-		.xchg_single = cspi_0_7_xchg_single,
-		.init = cspi_0_7_init,
-	},
+static struct spi_imx_devtype_data spi_imx_devtype_data_0_7 = {
+	.chipselect = cspi_0_7_chipselect,
+	.xchg_single = cspi_0_7_xchg_single,
+	.init = cspi_0_7_init,
+};
 #endif
+
 #ifdef CONFIG_DRIVER_SPI_IMX_2_3
-	[SPI_IMX_VER_2_3] = {
-		.chipselect = cspi_2_3_chipselect,
-		.xchg_single = cspi_2_3_xchg_single,
-		.init = cspi_2_3_init,
-	},
-#endif
+static struct spi_imx_devtype_data spi_imx_devtype_data_2_3 = {
+	.chipselect = cspi_2_3_chipselect,
+	.xchg_single = cspi_2_3_xchg_single,
+	.init = cspi_2_3_init,
 };
+#endif
 
 static int imx_spi_dt_probe(struct imx_spi *imx)
 {
@@ -526,7 +505,7 @@ static int imx_spi_probe(struct device_d *dev)
 	struct spi_master *master;
 	struct imx_spi *imx;
 	struct spi_imx_master *pdata = dev->platform_data;
-	enum imx_spi_devtype version;
+	struct spi_imx_devtype_data *devdata;
 	int ret;
 
 	imx = xzalloc(sizeof(*imx));
@@ -554,19 +533,19 @@ static int imx_spi_probe(struct device_d *dev)
 
 #ifdef CONFIG_DRIVER_SPI_IMX_0_0
 	if (cpu_is_mx27())
-		version = SPI_IMX_VER_0_0;
+		devdata = &spi_imx_devtype_data_0_0;
 #endif
 #ifdef CONFIG_DRIVER_SPI_IMX_0_7
 	if (cpu_is_mx25() || cpu_is_mx35())
-		version = SPI_IMX_VER_0_7;
+		devdata = &spi_imx_devtype_data_0_7;
 #endif
 #ifdef CONFIG_DRIVER_SPI_IMX_2_3
 	if (cpu_is_mx51() || cpu_is_mx53() || cpu_is_mx6())
-		version = SPI_IMX_VER_2_3;
+		devdata = &spi_imx_devtype_data_2_3;
 #endif
-	imx->chipselect = spi_imx_devtype_data[version].chipselect;
-	imx->xchg_single = spi_imx_devtype_data[version].xchg_single;
-	imx->init = spi_imx_devtype_data[version].init;
+	imx->chipselect = devdata->chipselect;
+	imx->xchg_single = devdata->xchg_single;
+	imx->init = devdata->init;
 	imx->regs = dev_request_mem_region(dev, 0);
 
 	imx->init(imx);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
