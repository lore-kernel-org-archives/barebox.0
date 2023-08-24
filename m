Delivery-date: Thu, 24 Aug 2023 16:05:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZAy0-007PxT-3g
	for lore@lore.pengutronix.de; Thu, 24 Aug 2023 16:05:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZAxy-0003w9-3n
	for lore@pengutronix.de; Thu, 24 Aug 2023 16:05:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gCJ1ZrdcwxjUyt/sWRjXchBtNSthqgtsrhnWb3DOzDQ=; b=hKGeTtPDB6e6P2LgJkrX2tbsKh
	+ePH/5a0mgWZMzaxJaGnzI3MUQ8PLe1Gzod9P1ZcUUr7S77Z+ixAPFuwI9pWH9jKjovW3v6vJmYsh
	tOQjYYpMHAO7qdvg8qf7lo3R/NPnx0+hhXUD+avVTyPNr7KYsp56mvxwTKlpj/y0i/tN65HA//NGt
	KAxSClvD936+CVbAfkWSRYv7IW6czpbAkFv/58yQDUqGIZOGErKGBNqLKjXq/GoESVIwuS0ToHGGE
	ybwe6TQON2rALEqyNEqj1F7KDfHmcxze6XW8BcSHY0t8kP2sKi9E2b8bIpvN8dWBmm8BwtKsCinjn
	e7QfnFXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZAwp-003Ciu-1Y;
	Thu, 24 Aug 2023 14:04:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZAwm-003CiY-1A
	for barebox@lists.infradead.org;
	Thu, 24 Aug 2023 14:04:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qZAwj-0003X2-I6; Thu, 24 Aug 2023 16:04:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qZAwi-001Ims-Td; Thu, 24 Aug 2023 16:04:24 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qZAwi-006qmT-1s;
	Thu, 24 Aug 2023 16:04:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 24 Aug 2023 15:59:39 +0200
Message-Id: <20230824135939.1614716-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_070428_404309_A2B8C6C5 
X-CRM114-Status: GOOD (  13.41  )
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
Subject: [PATCH] mci: sdhci: don't hang indefinitely waiting for DMA completion
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox was observed to hang on an i.MX8MP while reading ext_csd from
a broken eMMC that even bootROM refused to boot from. For PIO, we
already have a maximum wait time of 10s. Do the same for DMA.

It's unlikely that in that state any further communication with the card
will work, but at least, the system isn't stuck and the shell can be
reached. The reset is done on the off-chance that the DMA would've completed
after the 10s and corrupted memory if not disabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/sdhci.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index b0b83bfaa9a7..9829a78cb6c5 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -252,6 +252,7 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 			    dma_addr_t dma)
 {
 	struct device *dev = sdhci->mci->hw_dev;
+	u64 start;
 	int nbytes;
 	u32 irqstat;
 	int ret;
@@ -261,6 +262,8 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 
 	nbytes = data->blocks * data->blocksize;
 
+	start = get_time_ns();
+
 	do {
 		irqstat = sdhci_read32(sdhci, SDHCI_INT_STATUS);
 
@@ -304,6 +307,13 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 
 		if (irqstat & SDHCI_INT_XFER_COMPLETE)
 			break;
+
+		if (is_timeout(start, 10 * SECOND)) {
+			dev_alert(dev, "DMA wait timed out. Resetting, but recovery unlikely\n");
+			sdhci_reset(sdhci, SDHCI_RESET_ALL);
+			ret = -ETIMEDOUT;
+			goto out;
+		}
 	} while (1);
 
 	ret = 0;
-- 
2.39.2



