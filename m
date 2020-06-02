Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg1qt-0004ZQ-Vv
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 08:00:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jun 2020 10:00:48 +0200
Message-Id: <20200602080049.8451-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200602080049.8451-1-a.fatoum@pengutronix.de>
References: <20200602080049.8451-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/3] mci: remove now-duplicate dev->detect implementations in
 host drivers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Previous commit introduced a fall-back MCI hw_dev->detect
implementation. All drivers touched in this commit populate hw_dev, so
lets drop their now-superfluous detect implementations.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/bcm2835-sdhost.c | 10 ----------
 drivers/mci/dove-sdhci.c     |  8 --------
 drivers/mci/dw_mmc.c         | 11 -----------
 drivers/mci/imx-esdhc.c      | 11 -----------
 drivers/mci/mci-bcm2835.c    | 10 ----------
 drivers/mci/mxs.c            |  9 ---------
 drivers/mci/omap_hsmmc.c     | 10 ----------
 drivers/mci/tegra-sdmmc.c    | 10 ----------
 8 files changed, 79 deletions(-)

diff --git a/drivers/mci/bcm2835-sdhost.c b/drivers/mci/bcm2835-sdhost.c
index 1d3a6c096910..f935ed5ea713 100644
--- a/drivers/mci/bcm2835-sdhost.c
+++ b/drivers/mci/bcm2835-sdhost.c
@@ -579,13 +579,6 @@ static void bcm2835_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	writel(hcfg, host->regs + SDHCFG);
 }
 
-static int bcm2835_sdhost_detect(struct device_d *dev)
-{
-	struct bcm2835_host *host = dev->priv;
-
-	return mci_detect_card(&host->mci);
-}
-
 static int bcm2835_sdhost_probe(struct device_d *dev)
 {
 	struct bcm2835_host *host;
@@ -617,9 +610,6 @@ static int bcm2835_sdhost_probe(struct device_d *dev)
 	mci->set_ios = bcm2835_set_ios;
 	mci->send_cmd = bcm2835_send_cmd;
 
-	dev->priv = host;
-	dev->detect = bcm2835_sdhost_detect,
-
 	mci_of_parse(mci);
 
 	return mci_register(mci);
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index cb052e81b1e4..e09147fff9f7 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -324,12 +324,6 @@ static void dove_sdhci_set_mci_caps(struct dove_sdhci *host)
 		host->mci.host_caps &= ~MMC_CAP_8_BIT_DATA;
 }
 
-static int dove_sdhci_detect(struct device_d *dev)
-{
-	struct dove_sdhci *host = dev->priv;
-	return mci_detect_card(&host->mci);
-}
-
 static int dove_sdhci_probe(struct device_d *dev)
 {
 	struct dove_sdhci *host;
@@ -350,8 +344,6 @@ static int dove_sdhci_probe(struct device_d *dev)
 	host->sdhci.write32 = dove_sdhci_writel;
 	host->sdhci.write16 = dove_sdhci_writew;
 	host->sdhci.write8 = dove_sdhci_writeb;
-	dev->priv = host;
-	dev->detect = dove_sdhci_detect;
 
 	dove_sdhci_set_mci_caps(host);
 
diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index f035317ef285..ab8270814b86 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -553,13 +553,6 @@ static int dwmci_init(struct mci_host *mci, struct device_d *dev)
 	return 0;
 }
 
-static int dw_mmc_detect(struct device_d *dev)
-{
-	struct dwmci_host *host = dev->priv;
-
-	return mci_detect_card(&host->mci);
-}
-
 static int dw_mmc_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -615,8 +608,6 @@ static int dw_mmc_probe(struct device_d *dev)
 	else
 		host->pwren_value = 1;
 
-	dev->detect = dw_mmc_detect;
-
 	host->clkrate = clk_get_rate(host->clk_ciu);
 	host->mci.f_min = host->clkrate / 510 / host->ciu_div;
 	if (host->mci.f_min < 200000)
@@ -625,8 +616,6 @@ static int dw_mmc_probe(struct device_d *dev)
 
 	mci_of_parse(&host->mci);
 
-	dev->priv = host;
-
 	return mci_register(&host->mci);
 }
 
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index bff8dd67ada2..314a2264f952 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -236,13 +236,6 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 	return ret;
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
@@ -311,8 +304,6 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	host->mci.card_present = esdhc_card_present;
 	host->mci.hw_dev = dev;
 
-	dev->detect = fsl_esdhc_detect;
-
 	rate = clk_get_rate(host->clk);
 	host->mci.f_min = rate >> 12;
 	if (host->mci.f_min < 200000)
@@ -325,8 +316,6 @@ static int fsl_esdhc_probe(struct device_d *dev)
 
 	mci_of_parse(&host->mci);
 
-	dev->priv = host;
-
 	ret = mci_register(&host->mci);
 	if (ret)
 		goto err_release_res;
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index b18d681870a5..c463c623e75f 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -366,13 +366,6 @@ static int bcm2835_mci_reset(struct mci_host *mci, struct device_d *mci_dev)
 	return bcm2835_mci_wait_command_done(host);
 }
 
-static int bcm2835_mci_detect(struct device_d *dev)
-{
-	struct bcm2835_mci_host *host = dev->priv;
-
-	return mci_detect_card(&host->mci);
-}
-
 static int bcm2835_mci_probe(struct device_d *hw_dev)
 {
 	struct resource *iores;
@@ -422,9 +415,6 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 	host->mci.f_min = MIN_FREQ;
 	host->mci.f_max = host->max_clock;
 
-	hw_dev->priv = host;
-	hw_dev->detect = bcm2835_mci_detect,
-
 	/*
 	 * The Arasan has a bugette whereby it may lose the content of
 	 * successive writes to registers that are within two SD-card clock
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 5e9f17def8eb..afd6a563970d 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -542,13 +542,6 @@ static void mxs_mci_info(struct device_d *hw_dev)
 	printf("\n");
 }
 
-static int mxs_mmc_detect(struct device_d *dev)
-{
-	struct mxs_mci_host *mxs_mci = dev->priv;
-
-	return mci_detect_card(&mxs_mci->host);
-}
-
 static int mxs_mci_probe(struct device_d *hw_dev)
 {
 	struct resource *iores;
@@ -584,8 +577,6 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 		mci_of_parse(host);
 	}
 
-	hw_dev->detect = mxs_mmc_detect;
-
 	mxs_mci->clk = clk_get(hw_dev, NULL);
 	if (IS_ERR(mxs_mci->clk))
 		return PTR_ERR(mxs_mci->clk);
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index fe0cd47a2822..b14161032594 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -581,13 +581,6 @@ static void mmc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	writel(readl(&mmc_base->sysctl) | CEN_ENABLE, &mmc_base->sysctl);
 }
 
-static int omap_mmc_detect(struct device_d *dev)
-{
-	struct omap_hsmmc *hsmmc = dev->priv;
-
-	return mci_detect_card(&hsmmc->mci);
-}
-
 static int omap_mmc_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -633,9 +626,6 @@ static int omap_mmc_probe(struct device_d *dev)
 
 	mci_of_parse(&hsmmc->mci);
 
-	dev->priv = hsmmc;
-	dev->detect = omap_mmc_detect,
-
 	mci_register(&hsmmc->mci);
 
 	return 0;
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 1cc75dc524d4..15e33b85c598 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -379,13 +379,6 @@ static int tegra_sdmmc_card_present(struct mci_host *mci)
 	return !(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_WRITE_PROTECT);
 }
 
-static int tegra_sdmmc_detect(struct device_d *dev)
-{
-	struct tegra_sdmmc_host *host = dev->priv;
-
-	return mci_detect_card(&host->mci);
-}
-
 static void tegra_sdmmc_parse_dt(struct tegra_sdmmc_host *host)
 {
 	struct device_node *np = host->mci.hw_dev->device_node;
@@ -459,9 +452,6 @@ static int tegra_sdmmc_probe(struct device_d *dev)
 	mci->host_caps |= MMC_CAP_MMC_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED_52MHZ |
 	                  MMC_CAP_SD_HIGHSPEED;
 
-	dev->priv = host;
-	dev->detect = tegra_sdmmc_detect;
-
 	return mci_register(&host->mci);
 }
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
