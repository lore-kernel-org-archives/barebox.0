Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp36.i.mail.ru ([94.100.177.96])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYHly-0002dN-9T
 for barebox@lists.infradead.org; Thu, 10 Apr 2014 16:24:19 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 10 Apr 2014 20:23:42 +0400
Message-Id: <1397147022-20116-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1397147022-20116-1-git-send-email-shc_work@mail.ru>
References: <1397147022-20116-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] spi: i.MX: Optimise driver private structure
To: barebox@lists.infradead.org

No need to store init() function in the driver private structure
since it called only once during startup.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/spi/imx_spi.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 3c1ba61..bd8fe35 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -117,7 +117,6 @@ struct imx_spi {
 
 	unsigned int		(*xchg_single)(struct imx_spi *imx, u32 data);
 	void			(*chipselect)(struct spi_device *spi, int active);
-	void			(*init)(struct imx_spi *imx);
 };
 
 struct spi_imx_devtype_data {
@@ -383,10 +382,6 @@ static void cspi_2_3_chipselect(struct spi_device *spi, int is_active)
 		gpio_set_value(gpio, gpio_cs);
 }
 
-static void cspi_2_3_init(struct imx_spi *imx)
-{
-}
-
 static void imx_spi_do_transfer(struct spi_device *spi, struct spi_transfer *t)
 {
 	struct imx_spi *imx = container_of(spi->master, struct imx_spi, master);
@@ -459,7 +454,6 @@ static __maybe_unused struct spi_imx_devtype_data spi_imx_devtype_data_0_7 = {
 static __maybe_unused struct spi_imx_devtype_data spi_imx_devtype_data_2_3 = {
 	.chipselect = cspi_2_3_chipselect,
 	.xchg_single = cspi_2_3_xchg_single,
-	.init = cspi_2_3_init,
 };
 
 static int imx_spi_dt_probe(struct imx_spi *imx)
@@ -523,10 +517,10 @@ static int imx_spi_probe(struct device_d *dev)
 
 	imx->chipselect = devdata->chipselect;
 	imx->xchg_single = devdata->xchg_single;
-	imx->init = devdata->init;
 	imx->regs = dev_request_mem_region(dev, 0);
 
-	imx->init(imx);
+	if (devdata->init)
+		devdata->init(imx);
 
 	spi_register_master(master);
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
