Delivery-date: Mon, 07 Jun 2021 12:54:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCte-0006Bw-G5
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 12:54:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCtZ-0002mc-Jc
	for lore@pengutronix.de; Mon, 07 Jun 2021 12:54:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R3Is9pXs/Apfhbd/lSmnSwUHSkK+UmJ3Ml0nxxswAEE=; b=1XafRfmmb9CM2b
	MwZMLNB1YIrNtiLwiE8TunfjZ1s+MbChrcqVXc5EvpTTt1FwKmW5pNwIFUosUdpGpvG9esF5VcrGv
	ed/LtnkhqXyFzG9MFl4NdTF91n8xbPm9hdKF2x5Gb3Uba3M8FF+5tsAa02MEyrJPMBRoRAh2MqBwM
	+l7aot08WX8PQRPTR0udTYIZeINbzWV797AYUdZ2QS1DovVARdWUlglM5xw9zVSn/Uuk4vO6PYLZD
	+R3/KLNntcARoPUXmKaOFJ83FIYuQSlFz239ZO+wv36tEp6BO4viD3syW2ZnHQaedQCDuRaFR4EYp
	GaYgaIPdepEy2ma2SFPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqCrj-0034oG-IW; Mon, 07 Jun 2021 10:52:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqCk4-00326X-7H
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 10:44:25 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0000dk-Rf; Mon, 07 Jun 2021 12:44:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0008LH-18; Mon, 07 Jun 2021 12:44:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 12:44:07 +0200
Message-Id: <20210607104411.23071-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210607104411.23071-1-s.hauer@pengutronix.de>
References: <20210607104411.23071-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_034424_366530_E50BEADB 
X-CRM114-Status: GOOD (  10.67  )
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
Subject: [PATCH 08/12] mci: sdhci: arasan: Use sdhci_set_bus_width()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use common code rather than duplicating it in the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index acc2827f1d..7bd98c0a96 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -199,17 +199,9 @@ static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 				    val | SDHCI_SDCLOCK_EN);
 	}
 
-	val = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL) &
-			~(SDHCI_CTRL_8BITBUS | SDHCI_CTRL_8BITBUS);
-
-	switch (ios->bus_width) {
-	case MMC_BUS_WIDTH_8:
-		val |= SDHCI_CTRL_8BITBUS;
-		break;
-	case MMC_BUS_WIDTH_4:
-		val |= SDHCI_CTRL_8BITBUS;
-		break;
-	}
+	sdhci_set_bus_width(&host->sdhci, ios->bus_width);
+
+	val = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL);
 
 	if (ios->clock > 26000000)
 		val |= SDHCI_CTRL_HISPD;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

