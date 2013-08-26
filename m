Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDqix-0006bl-1I
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:55:44 +0200
Message-Id: <1377500163-28962-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/22] mci: omap: implement device detect callback
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/omap_hsmmc.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 014cb47..bb976e1 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -574,6 +574,13 @@ static void mmc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	writel(readl(&mmc_base->sysctl) | CEN_ENABLE, &mmc_base->sysctl);
 }
 
+static int omap_mmc_detect(struct device_d *dev)
+{
+	struct omap_hsmmc *hsmmc = dev->priv;
+
+	return mci_detect_card(&hsmmc->mci);
+}
+
 static int omap_mmc_probe(struct device_d *dev)
 {
 	struct omap_hsmmc *hsmmc;
@@ -609,6 +616,9 @@ static int omap_mmc_probe(struct device_d *dev)
 	else
 		hsmmc->mci.f_max = 52000000;
 
+	dev->priv = hsmmc;
+	dev->detect = omap_mmc_detect,
+
 	mci_register(&hsmmc->mci);
 
 	return 0;
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
