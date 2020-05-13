Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqBt-0002TL-29
 for barebox@lists.infradead.org; Wed, 13 May 2020 12:08:50 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1jYqBr-0000cw-SX
 for barebox@lists.infradead.org; Wed, 13 May 2020 14:08:47 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 13 May 2020 14:08:47 +0200
Message-Id: <20200513120847.7894-1-l.stach@pengutronix.de>
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
Subject: [PATCH] mci: stm32_sdmmc2: add detect function
To: barebox@lists.infradead.org

This way we can avoid probing for the SD/MMC devices at startup
and just detect them when actually needed.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mci/stm32_sdmmc2.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 3ce3bb0f89d2..ac52b62fa0b7 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -571,6 +571,13 @@ static void stm32_sdmmc2_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	       priv->base + SDMMC_CLKCR);
 }
 
+static int stm32_sdmmc2_detect(struct device_d *dev)
+{
+	struct stm32_sdmmc2_priv *priv = dev->priv;
+
+	return mci_detect_card(&priv->mci);
+}
+
 static int stm32_sdmmc2_probe(struct amba_device *adev,
 			      const struct amba_id *id)
 {
@@ -591,6 +598,9 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
 	mci->init = stm32_sdmmc2_reset;
 	mci->hw_dev = dev;
 
+	dev->priv = priv;
+	dev->detect = stm32_sdmmc2_detect;
+
 	priv->clk = clk_get(dev, NULL);
 	if (IS_ERR(priv->clk)) {
 		ret = PTR_ERR(priv->clk);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
