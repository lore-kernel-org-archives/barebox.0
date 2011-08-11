Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QrXV4-0001so-Oa
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 15:48:51 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 7D4D0100836B
	for <barebox@lists.infradead.org>;
	Thu, 11 Aug 2011 17:49:02 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 11 Aug 2011 17:30:01 +0200
Message-Id: <1313076601-30078-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] imx_spi: drop non usefull ifdef enum imx_spi_devtype and
	arround cpu_is_xx
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/spi/imx_spi.c |   18 ++----------------
 1 files changed, 2 insertions(+), 16 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 6dc41b9..f54f5b8 100644
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
@@ -368,14 +356,12 @@ static int imx_spi_probe(struct device_d *dev)
 	master->num_chipselect = pdata->num_chipselect;
 	imx->cs_array = pdata->chipselect;
 
-#ifdef CONFIG_DRIVER_SPI_IMX_0_0
 	if (cpu_is_mx27())
 		version = SPI_IMX_VER_0_0;
-#endif
-#ifdef CONFIG_DRIVER_SPI_IMX_2_3
+
 	if (cpu_is_mx51() || cpu_is_mx53())
 		version = SPI_IMX_VER_2_3;
-#endif
+
 	imx->chipselect = spi_imx_devtype_data[version].chipselect;
 	imx->xchg_single = spi_imx_devtype_data[version].xchg_single;
 	imx->init = spi_imx_devtype_data[version].init;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
