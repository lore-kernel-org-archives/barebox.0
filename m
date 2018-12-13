Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp18.mail.ru ([94.100.176.155])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLwY-0005BA-FS
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 08:02:04 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 13 Dec 2018 11:01:43 +0300
Message-Id: <20181213080144.8401-1-shc_work@mail.ru>
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
Subject: [PATCH] spi: i.MX: Fix wrong bus nubering with devicetree
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 10621d00c..46e8955ab 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -605,17 +605,20 @@ static int imx_spi_probe(struct device_d *dev)
 
 	master = &imx->master;
 	master->dev = dev;
-	master->bus_num = dev->id;
 
 	master->setup = imx_spi_setup;
 	master->transfer = imx_spi_transfer;
 
 	if (pdata) {
+		master->bus_num = dev->id;
 		master->num_chipselect = pdata->num_chipselect;
 		imx->cs_array = pdata->chipselect;
-	} else {
-		if (IS_ENABLED(CONFIG_OFDEVICE))
-			imx_spi_dt_probe(imx);
+	} else if (IS_ENABLED(CONFIG_OFDEVICE)) {
+		ret = of_alias_get_id(dev->device_node, "spi");
+		if (ret < 0)
+			goto err_free;
+		master->bus_num = ret;
+		imx_spi_dt_probe(imx);
 	}
 
 	imx->clk = clk_get(dev, NULL);
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
