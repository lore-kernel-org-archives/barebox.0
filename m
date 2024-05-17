Delivery-date: Fri, 17 May 2024 08:10:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qnV-000suG-2g
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 08:10:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qnU-0001ki-7c
	for lore@pengutronix.de; Fri, 17 May 2024 08:10:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iPmsAv55KgwsKaddxhXDlczsv+0LHmYltyWexmTBNV8=; b=M1if7P9rVwtJVPLD+s7hgNVbdJ
	MhwV7Pvj2y9VrOuAFBEakNobtKCJhp23Hvl6hwziTZzNz0c9sPFo4HlZOxAooPlcj4mYaoWxMQxGO
	6K2nFKnoF0vgi3wIfs2ZUIcx1IY4DyEqA2VX0K8sxvkKyhxyOvX/kmARYu+//zi6pk2P/kSJhvOej
	1bDRVbAlz+3/xkAzUOc9bGDNIcxAieKE0L3oDPvV/tZI0YDoofWx+sooO2EkQt18xlsz53pM2z9+/
	u/pyp0sPUENi5+ApzxucoZljKxf1RP7j82n/0so0a6aPNyD5A2UPvdp0cqaih6J0V8bv9T36dIRob
	g0yZaagQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qms-00000006uou-3jZv;
	Fri, 17 May 2024 06:09:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qmp-00000006uoS-2IHn
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 06:09:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qmn-0001e7-RU; Fri, 17 May 2024 08:09:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qmn-001pYL-Ek; Fri, 17 May 2024 08:09:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qmn-00DqFk-1A;
	Fri, 17 May 2024 08:09:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 08:09:44 +0200
Message-Id: <20240517060944.3298926-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_230947_933424_F0FF4429 
X-CRM114-Status: GOOD (  14.57  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: collect host operation in struct mci_ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The number of ops implementable by MCI drivers increase due to HS200
support and will increase more for HS400. Collecting them into a common
struct makes it easier to specialize them for drivers that support
multiple variants and makes code more similar to Linux.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/am654-sdhci.c            | 10 +++++++---
 drivers/mci/arasan-sdhci.c           | 24 ++++++++++++----------
 drivers/mci/atmel-sdhci.c            | 12 +++++++----
 drivers/mci/atmel_mci.c              | 12 +++++++----
 drivers/mci/bcm2835-sdhost.c         | 10 +++++++---
 drivers/mci/dove-sdhci.c             | 10 +++++++---
 drivers/mci/dw_mmc.c                 | 12 +++++++----
 drivers/mci/dwcmshc-sdhci.c          | 12 +++++++----
 drivers/mci/imx-esdhc.c              | 12 +++++++----
 drivers/mci/imx.c                    | 10 +++++++---
 drivers/mci/mci-bcm2835.c            | 10 +++++++---
 drivers/mci/mci-core.c               | 14 ++++++-------
 drivers/mci/mci_spi.c                | 12 +++++++----
 drivers/mci/mmci.c                   | 10 +++++++---
 drivers/mci/mxs.c                    | 10 +++++++---
 drivers/mci/omap_hsmmc.c             | 10 +++++++---
 drivers/mci/pxamci.c                 | 10 +++++++---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 12 +++++++----
 drivers/mci/sdhci.c                  |  2 +-
 drivers/mci/stm32_sdmmc2.c           | 10 +++++++---
 drivers/mci/tegra-sdmmc.c            | 12 +++++++----
 include/mci.h                        | 30 ++++++++++++++++------------
 22 files changed, 173 insertions(+), 93 deletions(-)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index 391b65591cce..493fa73eeb50 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -539,6 +539,12 @@ static const struct regmap_config regmap_config = {
 	.max_register	= 0x400,
 };
 
+static const struct mci_ops am654_sdhci_ops = {
+	.send_cmd = am654_sdhci_send_cmd,
+	.set_ios = am654_sdhci_set_ios,
+	.init = am654_sdhci_init,
+};
+
 static int am654_sdhci_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
@@ -623,9 +629,7 @@ static int am654_sdhci_probe(struct device *dev)
 		}
 	}
 
-	mci->send_cmd = am654_sdhci_send_cmd;
-	mci->set_ios = am654_sdhci_set_ios;
-	mci->init = am654_sdhci_init;
+	mci->ops = am654_sdhci_ops;
 	mci->hw_dev = dev;
 
 	of_property_read_u32(np, "ti,strobe-sel", &plat->strb_sel);
diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index be1395454101..37be06dffdfe 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -711,6 +711,14 @@ static void arasan_dt_parse_clk_phases(struct device *dev,
 				 "clk-phase-mmc-hs400");
 }
 
+static const struct mci_ops arasan_sdhci_ops = {
+	.send_cmd = arasan_sdhci_send_cmd,
+	.set_ios = arasan_sdhci_set_ios,
+	.init = arasan_sdhci_init,
+	.card_present = arasan_sdhci_card_present,
+	.card_write_protected = arasan_sdhci_card_write_protected,
+};
+
 static int arasan_sdhci_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
@@ -728,6 +736,11 @@ static int arasan_sdhci_probe(struct device *dev)
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 
+	arasan_sdhci->sdhci.base = IOMEM(iores->start);
+	arasan_sdhci->sdhci.mci = mci;
+	mci->ops = arasan_sdhci_ops;
+	mci->hw_dev = dev;
+
 	clk_ahb = clk_get(dev, "clk_ahb");
 	if (IS_ERR(clk_ahb)) {
 		dev_err(dev, "clk_ahb clock not found.\n");
@@ -760,19 +773,10 @@ static int arasan_sdhci_probe(struct device *dev)
 
 	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a")) {
 		if (IS_ENABLED(CONFIG_MCI_TUNING))
-			mci->execute_tuning = arasan_zynqmp_execute_tuning;
+			mci->ops.execute_tuning = arasan_zynqmp_execute_tuning;
 		arasan_sdhci->quirks |= SDHCI_ARASAN_QUIRK_CLOCK_25_BROKEN;
 	}
 
-	arasan_sdhci->sdhci.base = IOMEM(iores->start);
-	arasan_sdhci->sdhci.mci = mci;
-	mci->send_cmd = arasan_sdhci_send_cmd;
-	mci->set_ios = arasan_sdhci_set_ios;
-	mci->init = arasan_sdhci_init;
-	mci->card_present = arasan_sdhci_card_present;
-	mci->card_write_protected = arasan_sdhci_card_write_protected;
-	mci->hw_dev = dev;
-
 	/*
 	 * clk_rates on ZynqMP are rounded wrong. For HS200 clk_get_rate retunrs
 	 * 199999998 instead of 200000000
diff --git a/drivers/mci/atmel-sdhci.c b/drivers/mci/atmel-sdhci.c
index c124e736bb7d..a769128942d5 100644
--- a/drivers/mci/atmel-sdhci.c
+++ b/drivers/mci/atmel-sdhci.c
@@ -99,6 +99,13 @@ static int at91_sdhci_card_present(struct mci_host *mci)
 	return at91_sdhci_is_card_inserted(&to_priv(mci)->host);
 }
 
+static const struct mci_ops at91_sdhci_mci_ops = {
+	.send_cmd = at91_sdhci_mci_send_cmd,
+	.set_ios = at91_sdhci_mci_set_ios,
+	.init = at91_sdhci_mci_init,
+	.card_present = at91_sdhci_card_present,
+};
+
 static int at91_sdhci_probe(struct device *dev)
 {
 	struct at91_sdhci_priv *priv;
@@ -145,12 +152,9 @@ static int at91_sdhci_probe(struct device *dev)
 		return priv->gck_rate;
 
 	priv->mci.hw_dev = dev;
-	priv->mci.send_cmd = at91_sdhci_mci_send_cmd;
-	priv->mci.set_ios = at91_sdhci_mci_set_ios;
-	priv->mci.init = at91_sdhci_mci_init;
+	priv->mci.ops = at91_sdhci_mci_ops;
 	priv->mci.f_max = priv->gck_rate;
 	priv->mci.f_min = ATMEL_SDHC_MIN_FREQ;
-	priv->mci.card_present = at91_sdhci_card_present;
 
 	at91_sdhci_set_mci_caps(priv);
 
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 9021dba0f89b..2fa241168e79 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -67,6 +67,13 @@ static int atmci_card_present(struct mci_host *mci)
 	return ret == 0 ? 1 : 0;
 }
 
+static const struct mci_ops atmci_ops = {
+	.send_cmd = atmci_send_cmd,
+	.set_ios = atmci_set_ios,
+	.init = atmci_reset,
+	.card_present = atmci_card_present,
+};
+
 static int atmci_probe(struct device *hw_dev)
 {
 	struct resource *iores;
@@ -76,10 +83,7 @@ static int atmci_probe(struct device *hw_dev)
 	int ret;
 
 	host = xzalloc(sizeof(*host));
-	host->mci.send_cmd = atmci_send_cmd;
-	host->mci.set_ios = atmci_set_ios;
-	host->mci.init = atmci_reset;
-	host->mci.card_present = atmci_card_present;
+	host->mci.ops = atmci_ops;
 	host->mci.hw_dev = hw_dev;
 	host->detect_pin = -EINVAL;
 
diff --git a/drivers/mci/bcm2835-sdhost.c b/drivers/mci/bcm2835-sdhost.c
index 2b1336a7d315..9ed7cffb5520 100644
--- a/drivers/mci/bcm2835-sdhost.c
+++ b/drivers/mci/bcm2835-sdhost.c
@@ -579,6 +579,12 @@ static void bcm2835_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	writel(hcfg, host->regs + SDHCFG);
 }
 
+static const struct mci_ops bcm2835_sdhost_ops = {
+	.init = bcm2835_sdhost_init,
+	.set_ios = bcm2835_set_ios,
+	.send_cmd = bcm2835_send_cmd,
+};
+
 static int bcm2835_sdhost_probe(struct device *dev)
 {
 	struct bcm2835_host *host;
@@ -606,9 +612,7 @@ static int bcm2835_sdhost_probe(struct device *dev)
 	mci->host_caps |= MMC_CAP_MMC_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED_52MHZ |
 			  MMC_CAP_SD_HIGHSPEED;
 
-	mci->init = bcm2835_sdhost_init;
-	mci->set_ios = bcm2835_set_ios;
-	mci->send_cmd = bcm2835_send_cmd;
+	mci->ops = bcm2835_sdhost_ops;
 
 	mci_of_parse(mci);
 
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index d37046ad31bf..6d0247c3a11c 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -264,6 +264,12 @@ static void dove_sdhci_set_mci_caps(struct dove_sdhci *host)
 		host->mci.host_caps &= ~MMC_CAP_8_BIT_DATA;
 }
 
+static const struct mci_ops dove_sdhci_mci_ops = {
+	.send_cmd = dove_sdhci_mci_send_cmd,
+	.set_ios = dove_sdhci_mci_set_ios,
+	.init = dove_sdhci_mci_init,
+};
+
 static int dove_sdhci_probe(struct device *dev)
 {
 	struct dove_sdhci *host;
@@ -273,9 +279,7 @@ static int dove_sdhci_probe(struct device *dev)
 	host->sdhci.base = dev_request_mem_region(dev, 0);
 	host->mci.max_req_size = 0x8000;
 	host->mci.hw_dev = dev;
-	host->mci.send_cmd = dove_sdhci_mci_send_cmd;
-	host->mci.set_ios = dove_sdhci_mci_set_ios;
-	host->mci.init = dove_sdhci_mci_init;
+	host->mci.ops = dove_sdhci_mci_ops;
 	host->mci.f_max = 50000000;
 	host->mci.f_min = host->mci.f_max / 256;
 
diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index c49e839c943e..eec798a12077 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -547,6 +547,13 @@ static int dwmci_init(struct mci_host *mci, struct device *dev)
 	return 0;
 }
 
+static const struct mci_ops dw_mmc_ops = {
+	.send_cmd = dwmci_cmd,
+	.set_ios = dwmci_set_ios,
+	.init = dwmci_init,
+	.card_present = dwmci_card_present,
+};
+
 static int dw_mmc_probe(struct device *dev)
 {
 	struct reset_control	*rst;
@@ -589,10 +596,7 @@ static int dw_mmc_probe(struct device *dev)
 	if (!host->idmac)
 		return -ENOMEM;
 
-	host->mci.send_cmd = dwmci_cmd;
-	host->mci.set_ios = dwmci_set_ios;
-	host->mci.init = dwmci_init;
-	host->mci.card_present = dwmci_card_present;
+	host->mci.ops = dw_mmc_ops;
 	host->mci.hw_dev = dev;
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 	host->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA;
diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
index 7b367e02ee61..010d376421ed 100644
--- a/drivers/mci/dwcmshc-sdhci.c
+++ b/drivers/mci/dwcmshc-sdhci.c
@@ -295,6 +295,13 @@ static void dwcmshc_set_dma_mask(struct device *dev)
 		dma_set_mask(dev, DMA_BIT_MASK(32));
 }
 
+static const struct mci_ops dwcmshc_ops = {
+	.init = dwcmshc_mci_init,
+	.set_ios = dwcmshc_mci_set_ios,
+	.send_cmd = dwcmshc_mci_send_cmd,
+	.card_present = dwcmshc_mci_card_present,
+};
+
 static int dwcmshc_probe(struct device *dev)
 {
 	const struct dwcmshc_callbacks *dwcmshc_cb =
@@ -327,10 +334,7 @@ static int dwcmshc_probe(struct device *dev)
 	host->cb = dwcmshc_cb;
 
 	mci->hw_dev = dev;
-	mci->init = dwcmshc_mci_init;
-	mci->set_ios = dwcmshc_mci_set_ios;
-	mci->send_cmd = dwcmshc_mci_send_cmd;
-	mci->card_present = dwcmshc_mci_card_present;
+	mci->ops = dwcmshc_ops;
 
 	sdhci_setup_host(&host->sdhci);
 
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index fb52c7b893b5..b05934a20113 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -288,6 +288,13 @@ static int esdhc_init(struct mci_host *mci, struct device *dev)
 	return ret;
 }
 
+static const struct mci_ops fsl_esdhc_ops = {
+	.send_cmd = esdhc_send_cmd,
+	.set_ios = esdhc_set_ios,
+	.init = esdhc_init,
+	.card_present = esdhc_card_present,
+};
+
 static int fsl_esdhc_probe(struct device *dev)
 {
 	struct resource *iores;
@@ -337,10 +344,7 @@ static int fsl_esdhc_probe(struct device *dev)
 			mci->devname = pdata->devname;
 	}
 
-	host->mci.send_cmd = esdhc_send_cmd;
-	host->mci.set_ios = esdhc_set_ios;
-	host->mci.init = esdhc_init;
-	host->mci.card_present = esdhc_card_present;
+	host->mci.ops = fsl_esdhc_ops;
 	host->mci.hw_dev = dev;
 	host->sdhci.mci = &host->mci;
 
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 48a33783357b..480b758ba3ec 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -486,6 +486,12 @@ static int mxcmci_init(struct mci_host *mci, struct device *dev)
 	return 0;
 }
 
+static const struct mci_ops mxcmci_ops = {
+	.send_cmd = mxcmci_request,
+	.set_ios = mxcmci_set_ios,
+	.init = mxcmci_init,
+};
+
 static int mxcmci_probe(struct device *dev)
 {
 	struct resource *iores;
@@ -498,9 +504,7 @@ static int mxcmci_probe(struct device *dev)
 	if (IS_ERR(host->clk))
 		return PTR_ERR(host->clk);
 
-	host->mci.send_cmd = mxcmci_request;
-	host->mci.set_ios = mxcmci_set_ios;
-	host->mci.init = mxcmci_init;
+	host->mci.ops = mxcmci_ops;
 	host->mci.host_caps = MMC_CAP_4_BIT_DATA;
 	host->mci.hw_dev = dev;
 
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 3546cc3a3294..f63607355084 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -353,6 +353,12 @@ static int bcm2835_mci_reset(struct mci_host *mci, struct device *mci_dev)
 	return 0;
 }
 
+static const struct mci_ops bcm2835_mci_ops = {
+	.send_cmd = bcm2835_mci_request,
+	.set_ios = bcm2835_mci_set_ios,
+	.init = bcm2835_mci_reset,
+};
+
 static int bcm2835_mci_probe(struct device *hw_dev)
 {
 	struct resource *iores;
@@ -375,9 +381,7 @@ static int bcm2835_mci_probe(struct device *hw_dev)
 	}
 
 	host = xzalloc(sizeof(*host));
-	host->mci.send_cmd = bcm2835_mci_request;
-	host->mci.set_ios = bcm2835_mci_set_ios;
-	host->mci.init = bcm2835_mci_reset;
+	host->mci.ops = bcm2835_mci_ops;
 	host->mci.hw_dev = hw_dev;
 	host->hw_dev = hw_dev;
 	host->max_clock = clk_get_rate(clk);
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 66ca98a414ce..b4139be11edd 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -71,7 +71,7 @@ static int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd, struct mci_data *d
 {
 	struct mci_host *host = mci->host;
 
-	return host->send_cmd(mci->host, cmd, data);
+	return host->ops.send_cmd(mci->host, cmd, data);
 }
 
 /**
@@ -895,7 +895,7 @@ static void mci_set_ios(struct mci *mci)
 		.timing = host->timing,
 	};
 
-	host->set_ios(host, &ios);
+	host->ops.set_ios(host, &ios);
 
 	host->actual_clock = host->clock;
 }
@@ -1349,7 +1349,7 @@ int mci_execute_tuning(struct mci *mci)
 	struct mci_host *host = mci->host;
 	u32 opcode;
 
-	if (!host->execute_tuning) {
+	if (!host->ops.execute_tuning) {
 		/*
 		 * For us, implementing ->execute_tuning is mandatory to
 		 * support higher speed modes
@@ -1364,7 +1364,7 @@ int mci_execute_tuning(struct mci *mci)
 	else
 		return 0;
 
-	return host->execute_tuning(host, opcode);
+	return host->ops.execute_tuning(host, opcode);
 }
 
 int mci_send_abort_tuning(struct mci *mci, u32 opcode)
@@ -1813,7 +1813,7 @@ static int __maybe_unused mci_sd_write(struct block_device *blk,
 	mci_blk_part_switch(part);
 
 	if (!host->disable_wp &&
-	    host->card_write_protected && host->card_write_protected(host)) {
+	    host->ops.card_write_protected && host->ops.card_write_protected(host)) {
 		dev_err(&mci->dev, "card write protected\n");
 		return -EPERM;
 	}
@@ -2247,7 +2247,7 @@ static int mci_card_probe(struct mci *mci)
 	int i, rc, disknum, ret;
 	bool has_bootpart = false;
 
-	if (host->card_present && !host->card_present(host) && !host->non_removable) {
+	if (host->ops.card_present && !host->ops.card_present(host) && !host->non_removable) {
 		if (!host->broken_cd) {
 			dev_err(&mci->dev, "no card inserted\n");
 			return -ENODEV;
@@ -2264,7 +2264,7 @@ static int mci_card_probe(struct mci *mci)
 	}
 
 	/* start with a host interface reset */
-	rc = (host->init)(host, &mci->dev);
+	rc = (host->ops.init)(host, &mci->dev);
 	if (rc) {
 		dev_err(&mci->dev, "Cannot reset the SD/MMC interface\n");
 		goto on_error;
diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index ad743d19d9f8..41d8c25e2736 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -368,6 +368,13 @@ static int spi_mci_card_present(struct mci_host *mci)
 	return ret == 0 ? 1 : 0;
 }
 
+static const struct mci_ops spi_mci_ops = {
+	.send_cmd = mmc_spi_request,
+	.set_ios = mmc_spi_set_ios,
+	.init = mmc_spi_init,
+	.card_present = spi_mci_card_present,
+};
+
 static int spi_mci_probe(struct device *dev)
 {
 	struct device_node	*np = dev_of_node(dev);
@@ -377,10 +384,7 @@ static int spi_mci_probe(struct device *dev)
 	int			status;
 
 	host = xzalloc(sizeof(*host));
-	host->mci.send_cmd = mmc_spi_request;
-	host->mci.set_ios = mmc_spi_set_ios;
-	host->mci.init = mmc_spi_init;
-	host->mci.card_present = spi_mci_card_present;
+	host->mci.ops = spi_mci_ops;
 	host->mci.hw_dev = dev;
 
 	/* MMC and SD specs only seem to care that sampling is on the
diff --git a/drivers/mci/mmci.c b/drivers/mci/mmci.c
index a16deba8543c..c811d3980f98 100644
--- a/drivers/mci/mmci.c
+++ b/drivers/mci/mmci.c
@@ -549,6 +549,12 @@ static int mmci_of_parse(struct device_node *np,
 	return 0;
 }
 
+static const struct mci_ops mmci_ops = {
+	.send_cmd = mci_request,
+	.set_ios = mci_set_ios,
+	.init = mci_reset,
+};
+
 static int mmci_probe(struct amba_device *dev, const struct amba_id *id)
 {
 	struct device *hw_dev = &dev->dev;
@@ -573,9 +579,7 @@ static int mmci_probe(struct amba_device *dev, const struct amba_id *id)
 	host = xzalloc(sizeof(*host));
 
 	host->base = amba_get_mem_region(dev);
-	host->mci.send_cmd = mci_request;
-	host->mci.set_ios = mci_set_ios;
-	host->mci.init = mci_reset;
+	host->mci.ops = mmci_ops;
 	host->hw_dev = host->mci.hw_dev = hw_dev;
 
 	clk = clk_get(hw_dev, NULL);
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 6883b78d5c62..36224c682a19 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -528,6 +528,12 @@ static void mxs_mci_info(struct device *hw_dev)
 	printf("\n");
 }
 
+static const struct mci_ops mxs_mci_ops = {
+	.send_cmd = mxs_mci_request,
+	.set_ios = mxs_mci_set_ios,
+	.init = mxs_mci_initialize,
+};
+
 static int mxs_mci_probe(struct device *hw_dev)
 {
 	struct resource *iores;
@@ -541,9 +547,7 @@ static int mxs_mci_probe(struct device *hw_dev)
 
 	hw_dev->priv = mxs_mci;
 	host->hw_dev = hw_dev;
-	host->send_cmd = mxs_mci_request;
-	host->set_ios = mxs_mci_set_ios;
-	host->init = mxs_mci_initialize;
+	host->ops = mxs_mci_ops;
 	iores = dev_request_mem_resource(hw_dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 41d5a62f3247..7a5135131cda 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -568,6 +568,12 @@ static void mmc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	writel(readl(&mmc_base->sysctl) | CEN_ENABLE, &mmc_base->sysctl);
 }
 
+static const struct mci_ops omap_mmc_ops = {
+	.send_cmd = mmc_send_cmd,
+	.set_ios = mmc_set_ios,
+	.init = mmc_init_setup,
+};
+
 static int omap_mmc_probe(struct device *dev)
 {
 	struct resource *iores;
@@ -584,9 +590,7 @@ static int omap_mmc_probe(struct device *dev)
 	hsmmc = xzalloc(sizeof(*hsmmc));
 
 	hsmmc->dev = dev;
-	hsmmc->mci.send_cmd = mmc_send_cmd;
-	hsmmc->mci.set_ios = mmc_set_ios;
-	hsmmc->mci.init = mmc_init_setup;
+	hsmmc->mci.ops = omap_mmc_ops;
 	hsmmc->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED |
 		MMC_CAP_MMC_HIGHSPEED | MMC_CAP_8_BIT_DATA;
 	hsmmc->mci.hw_dev = dev;
diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index 5df1ef5cb6fb..6b3e213be596 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -328,6 +328,12 @@ static int pxamci_init(struct mci_host *mci, struct device *dev)
 	return 0;
 }
 
+static const struct mci_ops pxamci_ops = {
+	.init = pxamci_init,
+	.send_cmd = pxamci_request,
+	.set_ios = pxamci_set_ios,
+};
+
 static int pxamci_probe(struct device *dev)
 {
 	struct resource *iores;
@@ -341,9 +347,7 @@ static int pxamci_probe(struct device *dev)
 		return PTR_ERR(iores);
 	host->base = IOMEM(iores->start);
 
-	host->mci.init = pxamci_init;
-	host->mci.send_cmd = pxamci_request;
-	host->mci.set_ios = pxamci_set_ios;
+	host->mci.ops = pxamci_ops;
 	host->mci.host_caps = MMC_CAP_4_BIT_DATA;
 	host->mci.hw_dev = dev;
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index f503dbae659a..41cdaa60dd59 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -288,6 +288,13 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	return ret;
 }
 
+static const struct mci_ops rk_sdhci_ops = {
+	.send_cmd = rk_sdhci_send_cmd,
+	.set_ios = rk_sdhci_set_ios,
+	.init = rk_sdhci_init,
+	.card_present = rk_sdhci_card_present,
+};
+
 static int rk_sdhci_probe(struct device *dev)
 {
 	struct rk_sdhci_host *host;
@@ -305,10 +312,7 @@ static int rk_sdhci_probe(struct device *dev)
 
 	host->sdhci.base = IOMEM(iores->start);
 	host->sdhci.mci = mci;
-	mci->send_cmd = rk_sdhci_send_cmd;
-	mci->set_ios = rk_sdhci_set_ios;
-	mci->init = rk_sdhci_init;
-	mci->card_present = rk_sdhci_card_present;
+	mci->ops = rk_sdhci_ops;
 	mci->hw_dev = dev;
 
 	host->clks[CLK_CORE].id = "core";
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index ba1e07e966ae..7ba84fb21692 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -58,7 +58,7 @@ static int sdhci_send_command_retry(struct sdhci *host, struct mci_cmd *cmd)
 		mdelay(1);
 	}
 
-	return host->mci->send_cmd(host->mci, cmd, NULL);
+	return host->mci->ops.send_cmd(host->mci, cmd, NULL);
 }
 
 /*
diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 418213a1b334..822416c457c2 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -579,6 +579,12 @@ static void stm32_sdmmc2_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	       priv->base + SDMMC_CLKCR);
 }
 
+static const struct mci_ops stm32_sdmmc2_ops = {
+	.send_cmd = stm32_sdmmc2_send_cmd,
+	.set_ios = stm32_sdmmc2_set_ios,
+	.init = stm32_sdmmc2_reset,
+};
+
 static int stm32_sdmmc2_probe(struct amba_device *adev,
 			      const struct amba_id *id)
 {
@@ -594,9 +600,7 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
 	priv->dev = dev;
 
 	mci = &priv->mci;
-	mci->send_cmd = stm32_sdmmc2_send_cmd;
-	mci->set_ios = stm32_sdmmc2_set_ios;
-	mci->init = stm32_sdmmc2_reset;
+	mci->ops = stm32_sdmmc2_ops;
 	mci->hw_dev = dev;
 
 	priv->clk = clk_get(dev, NULL);
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index e940edf3227a..052e1fb7a1e8 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -374,6 +374,13 @@ static void tegra_sdmmc_parse_dt(struct tegra_sdmmc_host *host)
 	mci_of_parse(&host->mci);
 }
 
+static const struct mci_ops tegra_sdmmc_ops = {
+	.init = tegra_sdmmc_init,
+	.card_present = tegra_sdmmc_card_present,
+	.set_ios = tegra_sdmmc_set_ios,
+	.send_cmd = tegra_sdmmc_send_cmd,
+};
+
 static int tegra_sdmmc_probe(struct device *dev)
 {
 	struct resource *iores;
@@ -430,10 +437,7 @@ static int tegra_sdmmc_probe(struct device *dev)
 	udelay(2);
 	reset_control_deassert(host->reset);
 
-	mci->init = tegra_sdmmc_init;
-	mci->card_present = tegra_sdmmc_card_present;
-	mci->set_ios = tegra_sdmmc_set_ios;
-	mci->send_cmd = tegra_sdmmc_send_cmd;
+	mci->ops = tegra_sdmmc_ops;
 	mci->voltages = MMC_VDD_32_33 | MMC_VDD_33_34 | MMC_VDD_165_195;
 	mci->host_caps |= MMC_CAP_MMC_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED_52MHZ |
 	                  MMC_CAP_SD_HIGHSPEED;
diff --git a/include/mci.h b/include/mci.h
index b87301f97d47..157d72fe141f 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -467,6 +467,22 @@ struct mci_ios {
 };
 
 struct mci;
+struct mci_host;
+
+struct mci_ops {
+	/** init the host interface */
+	int (*init)(struct mci_host*, struct device*);
+	/** change host interface settings */
+	void (*set_ios)(struct mci_host*, struct mci_ios *);
+	/** handle a command */
+	int (*send_cmd)(struct mci_host*, struct mci_cmd*, struct mci_data*);
+	/** check if a card is inserted */
+	int (*card_present)(struct mci_host *);
+	/** check if a card is write protected */
+	int (*card_write_protected)(struct mci_host *);
+	/* The tuning command opcode value is different for SD and eMMC cards */
+	int (*execute_tuning)(struct mci_host *, u32);
+};
 
 /** host information */
 struct mci_host {
@@ -520,19 +536,7 @@ struct mci_host {
 	bool non_removable;	/**< device is non removable */
 	bool disable_wp;	/**< ignore write-protect detection logic */
 	struct regulator *supply;
-
-	/** init the host interface */
-	int (*init)(struct mci_host*, struct device*);
-	/** change host interface settings */
-	void (*set_ios)(struct mci_host*, struct mci_ios *);
-	/** handle a command */
-	int (*send_cmd)(struct mci_host*, struct mci_cmd*, struct mci_data*);
-	/** check if a card is inserted */
-	int (*card_present)(struct mci_host *);
-	/** check if a card is write protected */
-	int (*card_write_protected)(struct mci_host *);
-	/* The tuning command opcode value is different for SD and eMMC cards */
-	int (*execute_tuning)(struct mci_host *, u32);
+	struct mci_ops ops;
 };
 
 #define MMC_NUM_BOOT_PARTITION	2
-- 
2.39.2



