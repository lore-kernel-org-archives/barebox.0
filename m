Delivery-date: Wed, 16 Aug 2023 11:41:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD1v-0066bG-NT
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 11:41:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD1t-0001OS-PF
	for lore@pengutronix.de; Wed, 16 Aug 2023 11:41:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+Y/wzH3TpH47klIyFKSTc4cl0p4e8Mdgxi5lQILNlHs=; b=iALa7TY8WtRgEwvvf6wSPKTPXp
	gfo4G73cOaq/+HJHNFemKr0JEY+eRvlIexrvW/yhVKuFf0fGN6CDMZRKX6YrBKYPSo0ygsHGiW5tb
	LW1Mjyp6NG866kKEd8JCWKGF/g7Py/66yXgQQHcBDtBlZiGBvSXBLs6vq2kyWjIbmxWjd9AGJmxj+
	2p+FhjNEzlsCGyDyfHvGnGhg5Ua7g0NRPfKU/e3Rpka3hbbWWOXRvMvNcyTBodx/A1EPYYzJQFeLy
	vK5L3jJqpB9zkzZ32jicxN6d5PMF1aChg811Grv7UEMx8RgSIF70t5ARo8VUGjMj9y8cG7QfGo0oy
	+2ayF70w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWD0z-003cs6-2e;
	Wed, 16 Aug 2023 09:40:33 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWD0w-003cou-2f
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 09:40:32 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 35F7140004;
	Wed, 16 Aug 2023 09:40:23 +0000 (UTC)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 16 Aug 2023 11:39:39 +0200
Message-ID: <20230816093945.19974-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_024031_014368_D5412BAD 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH v2 1/7] mci: sdhci: Set 8-bit host caps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Set the mci::host_cap MMC_CAP_8_BIT_DATA if supported by the hardware.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mci/sdhci.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 635884e2a2..f6deea4020 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -568,6 +568,9 @@ int sdhci_setup_host(struct sdhci *host)
 	if (host->caps & SDHCI_CAN_DO_HISPD)
 		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED | MMC_CAP_SD_HIGHSPEED;
 
+	if (host->caps & SDHCI_CAN_DO_8BIT)
+		mci->host_caps |= MMC_CAP_8_BIT_DATA;
+
 	host->sdma_boundary = SDHCI_DMA_BOUNDARY_512K;
 
 	return 0;
-- 
2.41.0



