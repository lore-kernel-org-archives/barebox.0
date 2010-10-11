Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5GYQ-0003G0-Pz
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:28:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Oct 2010 13:28:13 +0200
Message-Id: <1286796505-16049-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/17] spi i.MX: redirect functions to version specific
	functions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/imx_spi.c |   72 ++++++++++++++++++++++++++++++++++++++++++-------
 1 files changed, 62 insertions(+), 10 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 809a5f8..1abab5f 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -26,6 +26,7 @@
 #include <asm/io.h>
 #include <gpio.h>
 #include <mach/spi.h>
+#include <mach/generic.h>
 
 #define CSPI_0_0_RXDATA		0x00
 #define CSPI_0_0_TXDATA		0x04
@@ -64,9 +65,39 @@
 
 #define CSPI_0_0_TEST_LBC		(1 << 14)
 
+enum imx_spi_devtype {
+#ifdef CONFIG_DRIVER_SPI_IMX1
+	SPI_IMX_VER_IMX1,
+#endif
+#ifdef CONFIG_DRIVER_SPI_IMX_0_0
+	SPI_IMX_VER_0_0,
+#endif
+#ifdef CONFIG_DRIVER_SPI_IMX_0_4
+	SPI_IMX_VER_0_4,
+#endif
+#ifdef CONFIG_DRIVER_SPI_IMX_0_5
+	SPI_IMX_VER_0_5,
+#endif
+#ifdef CONFIG_DRIVER_SPI_IMX_0_7
+	SPI_IMX_VER_0_7,
+#endif
+#ifdef CONFIG_DRIVER_SPI_IMX_2_3
+	SPI_IMX_VER_2_3,
+#endif
+};
+
 struct imx_spi {
-	struct spi_master master;
-	int *chipselect;
+	struct spi_master	master;
+	int			*cs_array;
+	void __iomem		*regs;
+
+	unsigned int		(*xchg_single)(struct imx_spi *imx, u32 data);
+	void			(*chipselect)(struct spi_device *spi, int active);
+};
+
+struct spi_imx_devtype_data {
+	unsigned int		(*xchg_single)(struct imx_spi *imx, u32 data);
+	void			(*chipselect)(struct spi_device *spi, int active);
 };
 
 static int imx_spi_setup(struct spi_device *spi)
@@ -77,8 +108,10 @@ static int imx_spi_setup(struct spi_device *spi)
 	return 0;
 }
 
-static unsigned int spi_xchg_single(ulong base, unsigned int data)
+#ifdef CONFIG_DRIVER_SPI_IMX_0_0
+static unsigned int cspi_0_0_xchg_single(struct imx_spi *imx, unsigned int data)
 {
+	void __iomem *base = imx->regs;
 
 	unsigned int cfg_reg = readl(base + CSPI_0_0_CTRL);
 
@@ -93,13 +126,13 @@ static unsigned int spi_xchg_single(ulong base, unsigned int data)
 	return readl(base + CSPI_0_0_RXDATA);
 }
 
-static void mxc_spi_chipselect(struct spi_device *spi, int is_active)
+static void cspi_0_0_chipselect(struct spi_device *spi, int is_active)
 {
 	struct spi_master *master = spi->master;
 	struct imx_spi *imx = container_of(master, struct imx_spi, master);
 	ulong base = master->dev->map_base;
 	unsigned int cs = 0;
-	int gpio = imx->chipselect[spi->chip_select];
+	int gpio = imx->cs_array[spi->chip_select];
 	u32 ctrl_reg;
 
 	if (spi->mode & SPI_CS_HIGH)
@@ -132,14 +165,15 @@ static void mxc_spi_chipselect(struct spi_device *spi, int is_active)
 	if (gpio >= 0)
 		gpio_set_value(gpio, cs);
 }
+#endif
 
 static int imx_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 {
 	struct spi_master *master = spi->master;
-	ulong base = master->dev->map_base;
+	struct imx_spi *imx = container_of(master, struct imx_spi, master);
 	struct spi_transfer	*t = NULL;
 
-	mxc_spi_chipselect(spi, 1);
+	imx->chipselect(spi, 1);
 
 	list_for_each_entry (t, &mesg->transfers, transfer_list) {
 		const u32 *txbuf = t->tx_buf;
@@ -147,21 +181,31 @@ static int imx_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 		int i = 0;
 
 		while(i < t->len >> 2) {
-			rxbuf[i] = spi_xchg_single(base, txbuf[i]);
+			rxbuf[i] = imx->xchg_single(imx, txbuf[i]);
 			i++;
 		}
 	}
 
-	mxc_spi_chipselect(spi, 0);
+	imx->chipselect(spi, 0);
 
 	return 0;
 }
 
+static struct spi_imx_devtype_data spi_imx_devtype_data[] = {
+#ifdef CONFIG_DRIVER_SPI_IMX_0_0
+	[SPI_IMX_VER_0_0] = {
+		.chipselect = cspi_0_0_chipselect,
+		.xchg_single = cspi_0_0_xchg_single,
+	},
+#endif
+};
+
 static int imx_spi_probe(struct device_d *dev)
 {
 	struct spi_master *master;
 	struct imx_spi *imx;
 	struct spi_imx_master *pdata = dev->platform_data;
+	enum imx_spi_devtype version;
 
 	imx = xzalloc(sizeof(*imx));
 
@@ -171,7 +215,15 @@ static int imx_spi_probe(struct device_d *dev)
 	master->setup = imx_spi_setup;
 	master->transfer = imx_spi_transfer;
 	master->num_chipselect = pdata->num_chipselect;
-	imx->chipselect = pdata->chipselect;
+	imx->cs_array = pdata->chipselect;
+
+#ifdef CONFIG_DRIVER_SPI_IMX_0_0
+	if (cpu_is_mx27())
+		version = SPI_IMX_VER_0_0;
+#endif
+	imx->chipselect = spi_imx_devtype_data[version].chipselect;
+	imx->xchg_single = spi_imx_devtype_data[version].xchg_single;
+	imx->regs = (void __iomem *)dev->map_base;
 
 	writel(CSPI_0_0_CTRL_ENABLE | CSPI_0_0_CTRL_MASTER,
 		     dev->map_base + CSPI_0_0_CTRL);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
