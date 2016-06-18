Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.181.95])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEGJS-0000wG-Tw
 for barebox@lists.infradead.org; Sat, 18 Jun 2016 13:29:28 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 18 Jun 2016 16:28:58 +0300
Message-Id: <1466256538-4067-4-git-send-email-shc_work@mail.ru>
In-Reply-To: <1466256538-4067-1-git-send-email-shc_work@mail.ru>
References: <1466256538-4067-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 4/4] mci: imx-esdhc: Remove excess function
To: barebox@lists.infradead.org

Function detect() is defined in the MCI core and mci_detect_card() is
already called form mci_register(). Remove excess fuction.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mci/imx-esdhc.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 2e189fe..2a34bec 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -550,13 +550,6 @@ static int esdhc_reset(struct fsl_esdhc_host *host)
 	return 0;
 }
 
-static int fsl_esdhc_detect(struct device_d *dev)
-{
-	struct fsl_esdhc_host *host = dev->priv;
-
-	return mci_detect_card(&host->mci);
-}
-
 static int fsl_esdhc_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -618,8 +611,6 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	host->mci.card_present = esdhc_card_present;
 	host->mci.hw_dev = dev;
 
-	dev->detect = fsl_esdhc_detect,
-
 	rate = clk_get_rate(host->clk);
 	host->mci.f_min = rate >> 12;
 	if (host->mci.f_min < 200000)
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
