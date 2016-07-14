Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNftN-0006kM-E2
 for barebox@lists.infradead.org; Thu, 14 Jul 2016 12:37:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Jul 2016 14:37:00 +0200
Message-Id: <1468499820-30171-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Revert "mci: imx-esdhc: Remove excess function"
To: Barebox List <barebox@lists.infradead.org>

This reverts commit 8a6896971d093b9d8d1c36eb0d7af891b6ca5369.

With this patch it's no longer possible to call detect on the
physical device which is necessary for example to make environment
on MMC work. Unlike the commit message for 8a6896971d claims
mci_detect_card() is not called from mci_register().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 4c45e92..66786ff 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -550,6 +550,13 @@ static int esdhc_reset(struct fsl_esdhc_host *host)
 	return 0;
 }
 
+static int fsl_esdhc_detect(struct device_d *dev)
+{
+	struct fsl_esdhc_host *host = dev->priv;
+
+	return mci_detect_card(&host->mci);
+}
+
 static int fsl_esdhc_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -608,6 +615,8 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	host->mci.card_present = esdhc_card_present;
 	host->mci.hw_dev = dev;
 
+	dev->detect = fsl_esdhc_detect,
+
 	rate = clk_get_rate(host->clk);
 	host->mci.f_min = rate >> 12;
 	if (host->mci.f_min < 200000)
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
