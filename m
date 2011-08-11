Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QrXtf-0002Bh-G7
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 16:14:16 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 30EEE1008596
	for <barebox@lists.infradead.org>;
	Thu, 11 Aug 2011 18:14:26 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 11 Aug 2011 17:55:24 +0200
Message-Id: <1313078124-32663-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1313076601-30078-1-git-send-email-plagnioj@jcrosoft.com>
References: <1313076601-30078-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH v2] imx_spi: drop non usefull ifdef
To: barebox@lists.infradead.org

drop CONFIG_DRIVER_SPI_IMX_<version>

this will not reduce barebox size as the compiler will do for us

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/spi/Kconfig   |   12 +--------
 drivers/spi/imx_spi.c |   63 +++++++++---------------------------------------
 2 files changed, 13 insertions(+), 62 deletions(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 9ab03f6..b48f9aa 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -6,17 +6,7 @@ config SPI
 
 config DRIVER_SPI_IMX
 	bool "i.MX SPI Master driver"
-	depends on ARCH_IMX
+	depends on ARCH_IMX && (ARCH_IMX27 || ARCH_IMX51 || ARCH_IMX53)
 	depends on SPI
 
-config DRIVER_SPI_IMX_0_0
-	bool
-	depends on ARCH_IMX27
-	default y
-
-config DRIVER_SPI_IMX_2_3
-	bool
-	depends on ARCH_IMX51 || ARCH_IMX53
-	default y
-
 endmenu
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 6dc41b9..0e2ea7e 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -90,24 +90,12 @@
 #define CSPI_2_3_STAT_RR		(1 <<  3)
 
 enum imx_spi_devtype {
-#ifdef CONFIG_DRIVER_SPI_IMX1
 	SPI_IMX_VER_IMX1,
-#endif
-#ifdef CONFIG_DRIVER_SPI_IMX_0_0
 	SPI_IMX_VER_0_0,
-#endif
-#ifdef CONFIG_DRIVER_SPI_IMX_0_4
 	SPI_IMX_VER_0_4,
-#endif
-#ifdef CONFIG_DRIVER_SPI_IMX_0_5
 	SPI_IMX_VER_0_5,
-#endif
-#ifdef CONFIG_DRIVER_SPI_IMX_0_7
 	SPI_IMX_VER_0_7,
-#endif
-#ifdef CONFIG_DRIVER_SPI_IMX_2_3
 	SPI_IMX_VER_2_3,
-#endif
 };
 
 struct imx_spi {
@@ -120,12 +108,6 @@ struct imx_spi {
 	void			(*init)(struct imx_spi *imx);
 };
 
-struct spi_imx_devtype_data {
-	unsigned int		(*xchg_single)(struct imx_spi *imx, u32 data);
-	void			(*chipselect)(struct spi_device *spi, int active);
-	void			(*init)(struct imx_spi *imx);
-};
-
 static int imx_spi_setup(struct spi_device *spi)
 {
 	debug("%s mode 0x%08x bits_per_word: %d speed: %d\n",
@@ -134,7 +116,6 @@ static int imx_spi_setup(struct spi_device *spi)
 	return 0;
 }
 
-#ifdef CONFIG_DRIVER_SPI_IMX_0_0
 static unsigned int cspi_0_0_xchg_single(struct imx_spi *imx, unsigned int data)
 {
 	void __iomem *base = imx->regs;
@@ -204,9 +185,7 @@ static void cspi_0_0_init(struct imx_spi *imx)
 		readl(base + CSPI_0_0_RXDATA);
 	writel(0, base + CSPI_0_0_INT);
 }
-#endif
 
-#ifdef CONFIG_DRIVER_SPI_IMX_2_3
 static unsigned int cspi_2_3_xchg_single(struct imx_spi *imx, unsigned int data)
 {
 	void __iomem *base = imx->regs;
@@ -308,7 +287,6 @@ static void cspi_2_3_chipselect(struct spi_device *spi, int is_active)
 static void cspi_2_3_init(struct imx_spi *imx)
 {
 }
-#endif
 
 static int imx_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 {
@@ -334,29 +312,11 @@ static int imx_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 	return 0;
 }
 
-static struct spi_imx_devtype_data spi_imx_devtype_data[] = {
-#ifdef CONFIG_DRIVER_SPI_IMX_0_0
-	[SPI_IMX_VER_0_0] = {
-		.chipselect = cspi_0_0_chipselect,
-		.xchg_single = cspi_0_0_xchg_single,
-		.init = cspi_0_0_init,
-	},
-#endif
-#ifdef CONFIG_DRIVER_SPI_IMX_2_3
-	[SPI_IMX_VER_2_3] = {
-		.chipselect = cspi_2_3_chipselect,
-		.xchg_single = cspi_2_3_xchg_single,
-		.init = cspi_2_3_init,
-	},
-#endif
-};
-
 static int imx_spi_probe(struct device_d *dev)
 {
 	struct spi_master *master;
 	struct imx_spi *imx;
 	struct spi_imx_master *pdata = dev->platform_data;
-	enum imx_spi_devtype version;
 
 	imx = xzalloc(sizeof(*imx));
 
@@ -368,17 +328,18 @@ static int imx_spi_probe(struct device_d *dev)
 	master->num_chipselect = pdata->num_chipselect;
 	imx->cs_array = pdata->chipselect;
 
-#ifdef CONFIG_DRIVER_SPI_IMX_0_0
-	if (cpu_is_mx27())
-		version = SPI_IMX_VER_0_0;
-#endif
-#ifdef CONFIG_DRIVER_SPI_IMX_2_3
-	if (cpu_is_mx51() || cpu_is_mx53())
-		version = SPI_IMX_VER_2_3;
-#endif
-	imx->chipselect = spi_imx_devtype_data[version].chipselect;
-	imx->xchg_single = spi_imx_devtype_data[version].xchg_single;
-	imx->init = spi_imx_devtype_data[version].init;
+	if (cpu_is_mx27()) {
+		imx->chipselect = cspi_0_0_chipselect;
+		imx->xchg_single = cspi_0_0_xchg_single;
+		imx->init = cspi_0_0_init;
+	}
+
+	if (cpu_is_mx51() || cpu_is_mx53()) {
+		imx->chipselect = cspi_2_3_chipselect;
+		imx->xchg_single = cspi_2_3_xchg_single;
+		imx->init = cspi_2_3_init;
+	}
+
 	imx->regs = dev_request_mem_region(dev, 0);
 
 	imx->init(imx);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
