Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twrfq-0006Fr-UV
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 09:58:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 10:58:42 +0100
Message-Id: <1358675923-13628-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358675923-13628-1-git-send-email-s.hauer@pengutronix.de>
References: <1358675923-13628-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] mci i.MX esdhc: implement card_present callback
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c |   14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index dfeb509..aad1b86 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -421,8 +421,9 @@ static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 
 }
 
-static int esdhc_card_detect(struct fsl_esdhc_host *host)
+static int esdhc_card_present(struct mci_host *mci)
 {
+	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	struct fsl_esdhc __iomem *regs = host->regs;
 	struct esdhc_platform_data *pdata = host->dev->platform_data;
 	int ret;
@@ -453,16 +454,6 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 	int timeout = 1000;
 	int ret = 0;
 
-	ret = esdhc_card_detect(host);
-
-	if (ret == 0)
-		return -ENODEV;
-
-	if (ret < 0)
-		return ret;
-
-	ret = 0;
-
 	/* Enable cache snooping */
 	if (host && !host->no_snoop)
 		esdhc_write32(&regs->scr, 0x00000040);
@@ -561,6 +552,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	host->mci.send_cmd = esdhc_send_cmd;
 	host->mci.set_ios = esdhc_set_ios;
 	host->mci.init = esdhc_init;
+	host->mci.card_present = esdhc_card_present;
 	host->mci.hw_dev = dev;
 
 	rate = clk_get_rate(host->clk);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
