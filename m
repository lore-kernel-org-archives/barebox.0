Delivery-date: Fri, 17 Feb 2023 10:41:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxFU-00A1oB-9v
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 10:41:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxFT-0007eG-C9
	for lore@pengutronix.de; Fri, 17 Feb 2023 10:41:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5hcg/M93Q652IoGBbaWGbwv63iDvo+kDQFPHSdVVs6U=; b=DoWFAVSLKMfjkEODkxisUlKy2y
	Ukq7pqGvEJnV/b9hCoqnKcgiATuXkq1mbogzLjCB1uB1mO125MRRNZ07CV+2ZTUQFbX1mSV/cag4V
	Ya54XQ2zp9U7j2Q1fweEGgEvreJFCcTDA9iRlBOVV1GlyhYC6w2exJsWySot4pFpd2lENFmkxgLo1
	skRMpb+Iwu8rmIlvD/xCfdq0z7Wvq2t7jywDYSKTuOiU1sZyymudNOUhYALv2EPRHsYGri1JAOpyQ
	ma2L85gtiVhdOOhSkOeRTz+VZVlW7VrdBoS4PxnQrRmAeBgXbocDCY8bGjUppbHA7cWrGvMu5XnSK
	cFGBpI7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxEn-00DWNo-WA; Fri, 17 Feb 2023 09:41:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxEj-00DWMX-34
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 09:41:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxEh-0007PM-Sy; Fri, 17 Feb 2023 10:40:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxEg-005YBy-1K; Fri, 17 Feb 2023 10:40:59 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxEg-007yrd-9d; Fri, 17 Feb 2023 10:40:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 17 Feb 2023 10:40:56 +0100
Message-Id: <20230217094056.1894461-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217094056.1894461-1-s.hauer@pengutronix.de>
References: <20230217094056.1894461-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_014101_173675_80F5C60A 
X-CRM114-Status: GOOD (  11.83  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] mci: rockchip-dwcmshc-sdhci: Print less errors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some commands are expected to return errors, for example when a non
SDIO card is tested for being an SDIO card. Lower the priority of
these error messages to dev_dbg().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 87cbe9836c..4b4e8b7bd6 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -224,7 +224,7 @@ static int rk_sdhci_wait_for_done(struct rk_sdhci_host *host, u32 mask)
 	do {
 		stat = sdhci_read16(&host->sdhci, SDHCI_INT_NORMAL_STATUS);
 		if (stat & SDHCI_INT_ERROR) {
-			dev_err(host->mci.hw_dev, "SDHCI_INT_ERROR: 0x%08x\n",
+			dev_dbg(host->mci.hw_dev, "SDHCI_INT_ERROR: 0x%08x\n",
 				sdhci_read16(&host->sdhci, SDHCI_INT_ERROR_STATUS));
 			return -EPERM;
 		}
@@ -241,9 +241,9 @@ static int rk_sdhci_wait_for_done(struct rk_sdhci_host *host, u32 mask)
 
 static void print_error(struct rk_sdhci_host *host, int cmdidx)
 {
-	dev_err(host->mci.hw_dev,
+	dev_dbg(host->mci.hw_dev,
 		"error while transfering data for command %d\n", cmdidx);
-	dev_err(host->mci.hw_dev, "state = 0x%08x , interrupt = 0x%08x\n",
+	dev_dbg(host->mci.hw_dev, "state = 0x%08x , interrupt = 0x%08x\n",
 		sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE),
 		sdhci_read32(&host->sdhci, SDHCI_INT_NORMAL_STATUS));
 }
-- 
2.30.2



