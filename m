Delivery-date: Mon, 07 Jun 2021 12:52:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCsF-00069k-CF
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 12:52:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCs9-0002NV-3k
	for lore@pengutronix.de; Mon, 07 Jun 2021 12:52:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ni18FNVzswnmSp1Fa0ZkHs09/nHThHxePEzGiudE6dE=; b=NF0et7d64GGD5b
	xOqRTJFyTxHJ0DRzJA+e4OpxGpdRFcPUm1uubJFyifQN+SbN5/Ssn+ZAIHHeLz/RKlfk8b0UjIwXv
	d4Wxqmhhb/5PWcBofEBJ0VpTrNj/qP7lmzX22Nx7nzBw1YqoRo81sPhjUwOTFzEpMMRpS6jIAqTeR
	ouEFDlN2sLjSjFcjTj3l6mNRG14ewldRq8eEQw/OQ6OibzqjYaEtvLR4CDUqrnpvhxBL24YXyORhO
	ZspoyVwRPOdUPU8alTU8MWFV2s3l6yH1X2qOoOZbfSKJt+91E+l2Zwl3hpUxFypaCK1Log0D6whQm
	RxnDaBv5OFi0uKlAOUiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqCqO-0034FU-CW; Mon, 07 Jun 2021 10:50:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqCjx-00322F-FX
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 10:44:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0000dh-LP; Mon, 07 Jun 2021 12:44:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCjt-0008KY-Vn; Mon, 07 Jun 2021 12:44:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 12:44:04 +0200
Message-Id: <20210607104411.23071-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210607104411.23071-1-s.hauer@pengutronix.de>
References: <20210607104411.23071-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_034417_710126_0092B754 
X-CRM114-Status: GOOD (  12.56  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/12] mci: sdhci: imx: Use sdhci_setup_host()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

sdhci_setup_host() handles reading the caps. Call it instead of doing it
in the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 18 +++++-------------
 1 file changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index fa858a9853..12e98ce26a 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -230,7 +230,6 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	struct resource *iores;
 	struct fsl_esdhc_host *host;
 	struct mci_host *mci;
-	u32 caps;
 	int ret;
 	unsigned long rate;
 	struct esdhc_platform_data *pdata = dev->platform_data;
@@ -269,29 +268,22 @@ static int fsl_esdhc_probe(struct device_d *dev)
 
 	esdhc_populate_sdhci(host);
 
-	caps = sdhci_read32(&host->sdhci, SDHCI_CAPABILITIES);
-
-	if (caps & SDHCI_CAN_VDD_180)
-		mci->voltages |= MMC_VDD_165_195;
-	if (caps & SDHCI_CAN_VDD_300)
-		mci->voltages |= MMC_VDD_29_30 | MMC_VDD_30_31;
-	if (caps & SDHCI_CAN_VDD_330)
-		mci->voltages |= MMC_VDD_32_33 | MMC_VDD_33_34;
-
 	if (pdata) {
 		mci->host_caps = pdata->caps;
 		if (pdata->devname)
 			mci->devname = pdata->devname;
 	}
 
-	if (caps & SDHCI_CAN_DO_HISPD)
-		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED | MMC_CAP_SD_HIGHSPEED;
-
 	host->mci.send_cmd = esdhc_send_cmd;
 	host->mci.set_ios = esdhc_set_ios;
 	host->mci.init = esdhc_init;
 	host->mci.card_present = esdhc_card_present;
 	host->mci.hw_dev = dev;
+	host->sdhci.mci = &host->mci;
+
+	ret = sdhci_setup_host(&host->sdhci);
+	if (ret)
+		goto err_clk_disable;
 
 	rate = clk_get_rate(host->clk);
 	host->mci.f_min = rate >> 12;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

