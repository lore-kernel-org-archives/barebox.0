Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WClVd-0001fW-4U
 for barebox@lists.infradead.org; Mon, 10 Feb 2014 07:42:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Feb 2014 08:41:58 +0100
Message-Id: <1392018119-20774-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392018119-20774-1-git-send-email-s.hauer@pengutronix.de>
References: <1392018119-20774-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] spi: imx: Use IS_ENABLED to drop ifdefs
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/imx_spi.c | 29 ++++++++---------------------
 1 file changed, 8 insertions(+), 21 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 80655a7..a1b91a9 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -136,7 +136,6 @@ static int imx_spi_setup(struct spi_device *spi)
 	return 0;
 }
 
-#ifdef CONFIG_DRIVER_SPI_IMX_0_0
 static unsigned int cspi_0_0_xchg_single(struct imx_spi *imx, unsigned int data)
 {
 	void __iomem *base = imx->regs;
@@ -206,9 +205,7 @@ static void cspi_0_0_init(struct imx_spi *imx)
 		readl(base + CSPI_0_0_RXDATA);
 	writel(0, base + CSPI_0_0_INT);
 }
-#endif
 
-#ifdef CONFIG_DRIVER_SPI_IMX_0_7
 static unsigned int cspi_0_7_xchg_single(struct imx_spi *imx, unsigned int data)
 {
 	void __iomem *base = imx->regs;
@@ -289,9 +286,7 @@ static void cspi_0_7_init(struct imx_spi *imx)
 	while (readl(base + CSPI_0_7_STAT) & CSPI_0_7_STAT_RR)
 		readl(base + CSPI_0_7_RXDATA);
 }
-#endif
 
-#ifdef CONFIG_DRIVER_SPI_IMX_2_3
 static unsigned int cspi_2_3_xchg_single(struct imx_spi *imx, unsigned int data)
 {
 	void __iomem *base = imx->regs;
@@ -393,7 +388,6 @@ static void cspi_2_3_chipselect(struct spi_device *spi, int is_active)
 static void cspi_2_3_init(struct imx_spi *imx)
 {
 }
-#endif
 
 static void imx_spi_do_transfer(struct spi_device *spi, struct spi_transfer *t)
 {
@@ -452,29 +446,23 @@ static int imx_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 	return 0;
 }
 
-#ifdef CONFIG_DRIVER_SPI_IMX_0_0
 static struct spi_imx_devtype_data spi_imx_devtype_data_0_0 = {
 	.chipselect = cspi_0_0_chipselect,
 	.xchg_single = cspi_0_0_xchg_single,
 	.init = cspi_0_0_init,
 };
-#endif
 
-#ifdef CONFIG_DRIVER_SPI_IMX_0_7
 static struct spi_imx_devtype_data spi_imx_devtype_data_0_7 = {
 	.chipselect = cspi_0_7_chipselect,
 	.xchg_single = cspi_0_7_xchg_single,
 	.init = cspi_0_7_init,
 };
-#endif
 
-#ifdef CONFIG_DRIVER_SPI_IMX_2_3
 static struct spi_imx_devtype_data spi_imx_devtype_data_2_3 = {
 	.chipselect = cspi_2_3_chipselect,
 	.xchg_single = cspi_2_3_xchg_single,
 	.init = cspi_2_3_init,
 };
-#endif
 
 static int imx_spi_dt_probe(struct imx_spi *imx)
 {
@@ -531,18 +519,17 @@ static int imx_spi_probe(struct device_d *dev)
 		goto err_free;
 	}
 
-#ifdef CONFIG_DRIVER_SPI_IMX_0_0
-	if (cpu_is_mx27())
+	if (IS_ENABLED(CONFIG_DRIVER_SPI_IMX_0_0) && cpu_is_mx27())
 		devdata = &spi_imx_devtype_data_0_0;
-#endif
-#ifdef CONFIG_DRIVER_SPI_IMX_0_7
-	if (cpu_is_mx25() || cpu_is_mx35())
+
+	if (IS_ENABLED(CONFIG_DRIVER_SPI_IMX_0_0) &&
+			(cpu_is_mx25() || cpu_is_mx35()))
 		devdata = &spi_imx_devtype_data_0_7;
-#endif
-#ifdef CONFIG_DRIVER_SPI_IMX_2_3
-	if (cpu_is_mx51() || cpu_is_mx53() || cpu_is_mx6())
+
+	if (IS_ENABLED(CONFIG_DRIVER_SPI_IMX_2_3) &&
+			(cpu_is_mx51() || cpu_is_mx53() || cpu_is_mx6()))
 		devdata = &spi_imx_devtype_data_2_3;
-#endif
+
 	imx->chipselect = devdata->chipselect;
 	imx->xchg_single = devdata->xchg_single;
 	imx->init = devdata->init;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
