Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TC-0000ej-7M
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:45 +0200
Message-Id: <1348484692-24993-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/23] spi i.MX: Switch to clk support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/imx_spi.c |   12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index c3dc6cc..14d2b28 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -25,6 +25,8 @@
 #include <mach/spi.h>
 #include <mach/generic.h>
 #include <mach/clock.h>
+#include <linux/clk.h>
+#include <linux/err.h>
 
 #define CSPI_0_0_RXDATA		0x00
 #define CSPI_0_0_TXDATA		0x04
@@ -128,6 +130,7 @@ struct imx_spi {
 	struct spi_master	master;
 	int			*cs_array;
 	void __iomem		*regs;
+	struct clk		*clk;
 
 	unsigned int		(*xchg_single)(struct imx_spi *imx, u32 data);
 	void			(*chipselect)(struct spi_device *spi, int active);
@@ -276,7 +279,7 @@ static void cspi_0_7_chipselect(struct spi_device *spi, int is_active)
 		return;
 	}
 
-	reg |= spi_imx_clkdiv_2(imx_get_cspiclk(), spi->max_speed_hz) <<
+	reg |= spi_imx_clkdiv_2(clk_get_rate(imx->clk), spi->max_speed_hz) <<
 		CSPI_0_7_CTRL_DR_SHIFT;
 
 	reg |= (spi->bits_per_word - 1) << CSPI_0_7_CTRL_BL_SHIFT;
@@ -381,7 +384,7 @@ static void cspi_2_3_chipselect(struct spi_device *spi, int is_active)
 	ctrl |= CSPI_2_3_CTRL_MODE(cs);
 
 	/* set clock speed */
-	ctrl |= cspi_2_3_clkdiv(imx_get_cspiclk(), spi->max_speed_hz);
+	ctrl |= cspi_2_3_clkdiv(clk_get_rate(imx->clk), spi->max_speed_hz);
 
 	/* set chip select to use */
 	ctrl |= CSPI_2_3_CTRL_CS(cs);
@@ -532,6 +535,7 @@ static int imx_spi_probe(struct device_d *dev)
 
 	master->setup = imx_spi_setup;
 	master->transfer = imx_spi_transfer;
+
 	if (pdata) {
 		master->num_chipselect = pdata->num_chipselect;
 		imx->cs_array = pdata->chipselect;
@@ -540,6 +544,10 @@ static int imx_spi_probe(struct device_d *dev)
 			imx_spi_dt_probe(imx);
 	}
 
+	imx->clk = clk_get(dev, NULL);
+	if (IS_ERR(imx->clk))
+		return PTR_ERR(imx->clk);
+
 #ifdef CONFIG_DRIVER_SPI_IMX_0_0
 	if (cpu_is_mx27())
 		version = SPI_IMX_VER_0_0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
