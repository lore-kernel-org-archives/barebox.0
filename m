Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i84D7-00068Q-4s
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 15:07:10 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1i84D5-0004B0-Og
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 17:07:07 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1i84D5-000256-H2
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 17:07:07 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 11 Sep 2019 17:07:06 +0200
Message-Id: <20190911150706.7927-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mci: imx-esdhc: fix error handling during probe
To: barebox@lists.infradead.org

Currently the the driver don't handle any error and return immediately.
Handling the errors correctly is a must to support defered probing.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 30 ++++++++++++++++++++++++------
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index f71ca539ed..db3450a26d 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -653,20 +653,24 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	dma_set_mask(dev, DMA_BIT_MASK(32));
 
 	host->clk = clk_get(dev, socdata->clkidx);
-	if (IS_ERR(host->clk))
-		return PTR_ERR(host->clk);
+	if (IS_ERR(host->clk)) {
+		ret = PTR_ERR(host->clk);
+		goto err_free;
+	}
 
 	ret = clk_enable(host->clk);
 	if (ret) {
 		dev_err(dev, "Failed to enable clock: %s\n",
 			strerror(ret));
-		return ret;
+		goto err_clk_put;
 	}
 
 	host->dev = dev;
 	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
+	if (IS_ERR(iores)) {
+		ret = PTR_ERR(iores);
+		goto err_clk_disable;
+	}
 	host->regs = IOMEM(iores->start);
 
 	caps = esdhc_read32(host, SDHCI_CAPABILITIES);
@@ -709,7 +713,21 @@ static int fsl_esdhc_probe(struct device_d *dev)
 
 	dev->priv = host;
 
-	return mci_register(&host->mci);
+	ret = mci_register(&host->mci);
+	if (ret)
+		goto err_release_res;
+
+	return 0;
+
+err_release_res:
+	release_region(iores);
+err_clk_disable:
+	clk_disable(host->clk);
+err_clk_put:
+	clk_put(host->clk);
+err_free:
+	free(host);
+	return ret;
 }
 
 static struct esdhc_soc_data esdhc_imx25_data = {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
