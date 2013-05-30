Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui2A2-0006d1-Ni
 for barebox@lists.infradead.org; Thu, 30 May 2013 12:40:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 14:40:31 +0200
Message-Id: <1369917631-31436-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369917631-31436-1-git-send-email-s.hauer@pengutronix.de>
References: <1369917631-31436-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] mci fsl-esdhc: implement detect driver callback
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 1e3b307..1c710e8 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -495,6 +495,13 @@ static int esdhc_reset(void __iomem *regs)
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
 	struct fsl_esdhc_host *host;
@@ -552,15 +559,17 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	host->mci.card_present = esdhc_card_present;
 	host->mci.hw_dev = dev;
 
+	dev->detect = fsl_esdhc_detect,
+
 	rate = clk_get_rate(host->clk);
 	host->mci.f_min = rate >> 12;
 	if (host->mci.f_min < 200000)
 		host->mci.f_min = 200000;
 	host->mci.f_max = rate;
 
-	mci_register(&host->mci);
+	dev->priv = host;
 
-	return 0;
+	return mci_register(&host->mci);
 }
 
 static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
