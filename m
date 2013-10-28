Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp27.mail.ru ([94.100.176.180])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VaiAS-0006EO-7p
 for barebox@lists.infradead.org; Mon, 28 Oct 2013 08:27:21 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 28 Oct 2013 12:26:50 +0400
Message-Id: <1382948810-10374-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] SPI: i.MX: Fix incorrect bus number in case of DT probe.
To: barebox@lists.infradead.org

The SPI bus number is not assigned in DT case, so the device can
be attached to the wrong SPI bus.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/spi/imx_spi.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 6f942bf..5975dd6 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -534,17 +534,20 @@ static int imx_spi_probe(struct device_d *dev)
 
 	master = &imx->master;
 	master->dev = dev;
-	master->bus_num = dev->id;
 
 	master->setup = imx_spi_setup;
 	master->transfer = imx_spi_transfer;
 
 	if (pdata) {
+		master->bus_num = dev->id;
 		master->num_chipselect = pdata->num_chipselect;
 		imx->cs_array = pdata->chipselect;
 	} else {
-		if (IS_ENABLED(CONFIG_OFDEVICE))
-			imx_spi_dt_probe(imx);
+		ret = of_alias_get_id(dev->device_node, "spi");
+		if (ret < 0)
+			goto err_free;
+		master->bus_num = ret;
+		imx_spi_dt_probe(imx);
 	}
 
 	imx->clk = clk_get(dev, NULL);
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
