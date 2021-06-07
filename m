Delivery-date: Mon, 07 Jun 2021 12:51:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCqj-000673-Gj
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 12:51:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCqd-0001uO-Fr
	for lore@pengutronix.de; Mon, 07 Jun 2021 12:51:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xyh8wIsM/Ano8BabVS/H2X//iyHB88Y3vXB7beq7H7M=; b=qXCeS3DGs4Aebn
	K2DU6Jn+JMU9eCTNgGCqUEOG3mrWsg3OaQ4Ia0bX4EXL0cZD6ZCJ6SdmwGKOHjo/1D/HJsCz5aMgj
	0/gNjsjniqF9RovgjupOG8YMnms5YtMwwIm1SDAl1Li9ukgY5IGJzBeXYiKR/k7qY/uBebsQhctr3
	oXgau/aXo4DxeZqYUuhp4GBqsvEmHV/j4TRhRAOQRzWf4daXBZuHbQlrs6jjOk7s48n2jWk1WB1cc
	vHOeFT9IsLo60fANWfP/R6hetCz425f5FsFwc9atZUe+0VvkEyU9Lph2tpjSAFaZj1xxAOKwMbsMI
	xVeBDMCh0oCSeac0Ox2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqCoy-0033o4-N3; Mon, 07 Jun 2021 10:49:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqCjx-00322K-Fh
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 10:44:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0000dj-RL; Mon, 07 Jun 2021 12:44:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0008L4-0c; Mon, 07 Jun 2021 12:44:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 12:44:06 +0200
Message-Id: <20210607104411.23071-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210607104411.23071-1-s.hauer@pengutronix.de>
References: <20210607104411.23071-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_034417_651462_B75E459F 
X-CRM114-Status: GOOD (  12.04  )
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
Subject: [PATCH 07/12] mci: sdhci: arasan: Use sdhci_setup_host()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use common code instead of duplicating it in the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 32 +++++---------------------------
 1 file changed, 5 insertions(+), 27 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index e02f222345..acc2827f1d 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -311,32 +311,6 @@ error:
 	return ret;
 }
 
-
-static void arasan_sdhci_set_mci_caps(struct arasan_sdhci_host *host)
-{
-	u32 caps = sdhci_read32(&host->sdhci, SDHCI_CAPABILITIES);
-
-	if ((caps & SDHCI_CAN_VDD_180) &&
-	    !(host->quirks & SDHCI_ARASAN_QUIRK_NO_1_8_V))
-		host->mci.voltages |= MMC_VDD_165_195;
-	if (caps & SDHCI_CAN_VDD_300)
-		host->mci.voltages |= MMC_VDD_29_30 | MMC_VDD_30_31;
-	if (caps & SDHCI_CAN_VDD_330)
-		host->mci.voltages |= MMC_VDD_32_33 | MMC_VDD_33_34;
-
-	if (caps & SDHCI_CAN_DO_HISPD)
-		host->mci.host_caps |= (MMC_CAP_MMC_HIGHSPEED_52MHZ |
-					MMC_CAP_MMC_HIGHSPEED |
-					MMC_CAP_SD_HIGHSPEED);
-
-	/* parse board supported bus width capabilities */
-	mci_of_parse(&host->mci);
-
-	/* limit bus widths to controller capabilities */
-	if (!(caps & SDHCI_CAN_DO_8BIT))
-		host->mci.host_caps &= ~MMC_CAP_8_BIT_DATA;
-}
-
 static int arasan_sdhci_probe(struct device_d *dev)
 {
 	struct device_node *np = dev->device_node;
@@ -391,6 +365,7 @@ static int arasan_sdhci_probe(struct device_d *dev)
 	arasan_sdhci->sdhci.write32 = arasan_sdhci_writel;
 	arasan_sdhci->sdhci.write16 = arasan_sdhci_writew;
 	arasan_sdhci->sdhci.write8 = arasan_sdhci_writeb;
+	arasan_sdhci->sdhci.mci = mci;
 	mci->send_cmd = arasan_sdhci_send_cmd;
 	mci->set_ios = arasan_sdhci_set_ios;
 	mci->init = arasan_sdhci_init;
@@ -401,7 +376,10 @@ static int arasan_sdhci_probe(struct device_d *dev)
 	mci->f_max = clk_get_rate(clk_xin);
 	mci->f_min = 50000000 / 256;
 
-	arasan_sdhci_set_mci_caps(arasan_sdhci);
+	/* parse board supported bus width capabilities */
+	mci_of_parse(&arasan_sdhci->mci);
+
+	sdhci_setup_host(&arasan_sdhci->sdhci);
 
 	dev->priv = arasan_sdhci;
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

