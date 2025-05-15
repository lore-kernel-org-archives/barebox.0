Delivery-date: Thu, 15 May 2025 16:42:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uFZmf-005s3o-3C
	for lore@lore.pengutronix.de;
	Thu, 15 May 2025 16:42:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uFZmf-0006fC-FE
	for lore@pengutronix.de; Thu, 15 May 2025 16:42:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I8EDStS/MCCdyk44JoRS0RGJrEJdLDQNq4dhVyVJP9c=; b=jG2fHJFtB36KAf
	SbQXQNNNbgt9rmr675ZfMLprvRGz3hhXPOiJpvcfsAheT7D9Pq6CzUejuTYst9jJlkdIGci0vY7SB
	WC8D19I5ENa28TfZytC2B6W+tVA/cOTjKdemsgGqAAbD0jcX7Gneeh6KOzV3uuKqPZ9bmr+NgWQ4S
	9D1o11pn/iRN+Zq+QO/NwQTLMKeRdFe/hMcJHLgxOlTslXzVPa53ggSAtJqMQDrgYU2iXUkwbkLFK
	Wo2DjFLjemRAkrgxV/4cwuw6MpoHuenfLTBlyJNo+otd9Tn7uDrQXImmgizWsWAs0vrvev9sjO1X9
	Dyi1llyw4zKiW99oeNrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFZlx-00000000ul9-3JUj;
	Thu, 15 May 2025 14:41:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFZdQ-00000000tYT-2KS0
	for barebox@lists.infradead.org;
	Thu, 15 May 2025 14:32:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uFZdM-00013o-Um; Thu, 15 May 2025 16:32:28 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uFZdM-002tGE-12;
	Thu, 15 May 2025 16:32:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uFZdM-006qv7-21;
	Thu, 15 May 2025 16:32:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 15 May 2025 16:32:19 +0200
Message-Id: <20250515143219.1633351-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_073232_594842_8240407D 
X-CRM114-Status: GOOD (  12.47  )
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
Cc: Lars Schmidt <l.schmidt@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: am654-sdhci: Clear SDHCI_CTRL_HISPD bit for some speed modes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Normally we would set the SDHCI_CTRL_HISPD bit for MMC_TIMING_SD_HS and
MMC_TIMING_MMC_HS. This however doesn't seem to work on AM62x and AM62L
SoCs.

Based on U-Boot commit 27a87c834fd ("mmc: am654_sdhci: Fix HISPD bit
configuration in some lower speed modes") clear the SDHCI_CTRL_HISPD bit
in these modes. Unfortunately I can't find the information in the data
sheet referenced in that commit, so I can't verify it, but it seems
to be necessary not only on AM6548, but on other SoCs as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/am654-sdhci.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index 2c1fa5d804..8d6fa9c999 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -520,10 +520,20 @@ static void am654_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 
 	val = sdhci_read8(&plat->sdhci, SDHCI_HOST_CONTROL);
 
-	if (ios->clock > 26000000)
-		val |= SDHCI_CTRL_HISPD;
-	else
+	switch (ios->timing) {
+	/*
+	 * According to the data manual, HISPD bit
+	 * should not be set in these speed modes.
+	 */
+	case MMC_TIMING_SD_HS:
+	case MMC_TIMING_MMC_HS:
+	case MMC_TIMING_LEGACY:
 		val &= ~SDHCI_CTRL_HISPD;
+		break;
+	default:
+		val |= SDHCI_CTRL_HISPD;
+		break;
+	}
 
 	sdhci_write8(&plat->sdhci, SDHCI_HOST_CONTROL, val);
 
-- 
2.39.5



