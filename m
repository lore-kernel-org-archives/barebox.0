Delivery-date: Wed, 07 May 2025 11:27:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3q-0035XG-09
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:27:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3m-0006KH-Ta
	for lore@pengutronix.de; Wed, 07 May 2025 11:27:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/hYVdYogfOvYpoYVbjmqV+hmgI8IfHtlfFFMYUphFOQ=; b=xbq5LMF2ntVliL6ZC1CNnL/MQA
	CwA2DI7+fwrR63tpPchWMe2HORL8vka6BldYwwwiAOMZ/vp4enBGtsruLcCGex9sm9JDk/xXUpGNn
	GU2hd02nYCbA1iDYFKg07Ewh47UNZdy9gOvNu0n2eVLZW70y/sufHP+IkCQJUSPVYg0JL92oBuF/R
	PzACqGGff2c34IZyeVNAVWa3ZgWfELkBPL1BR+DVoQxq19U5yXGUqb6griids3oWwC76NIe6uJ34q
	1Uc2A3tEdbHpR9+jQt63wWOLJfpVRwZC1jA4/zj82B3/fC+hIizkZEjFb+kGuzDnh2psE2mjH2c8T
	mXIPO9GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb3E-0000000Ewre-2yuN;
	Wed, 07 May 2025 09:26:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFB-0000000Elbu-3FFS
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:35:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-0003y2-Mr; Wed, 07 May 2025 10:35:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-001Wuc-1V;
	Wed, 07 May 2025 10:35:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-32;
	Wed, 07 May 2025 10:22:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:22:08 +0200
Message-Id: <20250507082209.3289972-30-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_013509_867930_87E91961 
X-CRM114-Status: GOOD (  18.89  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 29/30] mci: sdhci: support Linux SDHCI_QUIRK2_BROKEN_HS200 flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In Linux HS200 is opt-out for SDHCI. Let's do the same in barebox.
We intentionally keep MMC_CAP2_HS200 for Arasan, as I have not verified
on the hardware that the SDHCI implementation there correctly reports
SDR104 as supported (which would imply HS200 when used for eMMC).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/am654-sdhci.c            |  3 +++
 drivers/mci/arasan-sdhci.c           |  3 +++
 drivers/mci/dwcmshc-sdhci.c          |  2 ++
 drivers/mci/imx-esdhc.c              |  3 +++
 drivers/mci/rockchip-dwcmshc-sdhci.c |  3 +++
 drivers/mci/sdhci.c                  | 32 ++++++++++++++++++++++++++++
 drivers/mci/sdhci.h                  |  4 ++++
 7 files changed, 50 insertions(+)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index 13c8876573c7..be0a6e09f796 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -638,6 +638,9 @@ static int am654_sdhci_probe(struct device *dev)
 	if (ret)
 		return ret;
 
+	/* HS200 not supported by this driver at the moment */
+	plat->sdhci.quirks2 = SDHCI_QUIRK2_BROKEN_HS200;
+
 	plat->sdhci.mci = mci;
 	sdhci_setup_host(&plat->sdhci);
 
diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index ceef0b63a8b9..4adaaa243d2c 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -773,6 +773,9 @@ static int arasan_sdhci_probe(struct device *dev)
 			mci->ops.execute_tuning = arasan_zynqmp_execute_tuning;
 		mci->caps2 |= MMC_CAP2_HS200;
 		arasan_sdhci->quirks |= SDHCI_ARASAN_QUIRK_CLOCK_25_BROKEN;
+	} else {
+		/* HS200 only supported for ZynqMP at the moment */
+		arasan_sdhci->sdhci.quirks2 = SDHCI_QUIRK2_BROKEN_HS200;
 	}
 
 	/*
diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
index 174cc3f76816..6fdbb61565f2 100644
--- a/drivers/mci/dwcmshc-sdhci.c
+++ b/drivers/mci/dwcmshc-sdhci.c
@@ -325,6 +325,8 @@ static int dwcmshc_probe(struct device *dev)
 	host->sdhci.base = IOMEM(iores->start);
 	host->sdhci.mci = mci;
 	host->sdhci.max_clk = clk_get_rate(clk);
+	/* HS200 not supported by this driver at the moment */
+	host->sdhci.quirks2 = SDHCI_QUIRK2_BROKEN_HS200;
 	host->cb = dwcmshc_cb;
 
 	mci->hw_dev = dev;
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 00b7e0693fcc..4f2f02cfbdbe 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -466,6 +466,9 @@ static int fsl_esdhc_probe(struct device *dev)
 	host->mci.hw_dev = dev;
 	host->sdhci.mci = &host->mci;
 
+	if (!(host->socdata->flags & ESDHC_FLAG_HS200))
+		host->sdhci.quirks2 |= SDHCI_QUIRK2_BROKEN_HS200;
+
 	ret = sdhci_setup_host(&host->sdhci);
 	if (ret)
 		goto err_clk_disable;
diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 2f8d5ec140b5..c4c03f703a15 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -341,6 +341,9 @@ static int rk_sdhci_probe(struct device *dev)
 
 	mci_of_parse(&host->mci);
 
+	/* HS200 not supported by this driver at the moment */
+	host->sdhci.quirks2 = SDHCI_QUIRK2_BROKEN_HS200;
+
 	sdhci_setup_host(&host->sdhci);
 
 	dev->priv = host;
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index c8fd78a5e62d..17847a13ed5f 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -1044,6 +1044,38 @@ int sdhci_setup_host(struct sdhci *host)
 	if (sdhci_can_64bit_dma(host))
 		host->flags |= SDHCI_USE_64_BIT_DMA;
 
+	if (host->quirks2 & SDHCI_QUIRK2_NO_1_8_V) {
+		host->caps1 &= ~(SDHCI_SUPPORT_SDR104 | SDHCI_SUPPORT_SDR50 |
+				 SDHCI_SUPPORT_DDR50);
+		/*
+		 * The SDHCI controller in a SoC might support HS200/HS400
+		 * (indicated using mmc-hs200-1_8v/mmc-hs400-1_8v dt property),
+		 * but if the board is modeled such that the IO lines are not
+		 * connected to 1.8v then HS200/HS400 cannot be supported.
+		 * Disable HS200/HS400 if the board does not have 1.8v connected
+		 * to the IO lines. (Applicable for other modes in 1.8v)
+		 */
+		mci->caps2 &= ~(MMC_CAP2_HSX00_1_8V | MMC_CAP2_HS400_ES);
+		mci->host_caps &= ~(MMC_CAP_1_8V_DDR | MMC_CAP_UHS);
+	}
+
+	/* Any UHS-I mode in caps implies SDR12 and SDR25 support. */
+	if (host->caps1 & (SDHCI_SUPPORT_SDR104 | SDHCI_SUPPORT_SDR50 |
+			   SDHCI_SUPPORT_DDR50))
+		mci->host_caps |= MMC_CAP_UHS_SDR12 | MMC_CAP_UHS_SDR25;
+
+	/* SDR104 supports also implies SDR50 support */
+	if (host->caps1 & SDHCI_SUPPORT_SDR104) {
+		mci->host_caps |= MMC_CAP_UHS_SDR104 | MMC_CAP_UHS_SDR50;
+		/* SD3.0: SDR104 is supported so (for eMMC) the caps2
+		 * field can be promoted to support HS200.
+		 */
+		if (!(host->quirks2 & SDHCI_QUIRK2_BROKEN_HS200))
+			mci->caps2 |= MMC_CAP2_HS200;
+	} else if (host->caps1 & SDHCI_SUPPORT_SDR50) {
+		mci->host_caps |= MMC_CAP_UHS_SDR50;
+	}
+
 	if ((mci->caps2 & (MMC_CAP2_HS200_1_8V_SDR | MMC_CAP2_HS400_1_8V)))
 		host->flags |= SDHCI_SIGNALING_180;
 
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 038b52cfe619..25d257b23145 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -249,6 +249,10 @@ struct sdhci {
 	unsigned int quirks;
 #define SDHCI_QUIRK_MISSING_CAPS		BIT(27)
 	unsigned int quirks2;
+/* The system physically doesn't support 1.8v, even if the host does */
+#define SDHCI_QUIRK2_NO_1_8_V				BIT(2)
+/* Controller does not support HS200 */
+#define SDHCI_QUIRK2_BROKEN_HS200			BIT(6)
 #define SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN	BIT(15)
 #define SDHCI_QUIRK2_ISSUE_CMD_DAT_RESET_TOGETHER	BIT(19)
 	u32 caps;	/* CAPABILITY_0 */
-- 
2.39.5



