Delivery-date: Wed, 22 May 2024 08:19:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9fKQ-00DJ6e-2H
	for lore@lore.pengutronix.de;
	Wed, 22 May 2024 08:19:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9fKQ-00029X-4u
	for lore@pengutronix.de; Wed, 22 May 2024 08:19:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tL3N9+9noRtkeSBwkhUigUQqqb27PNVhT8CM5uF+/IM=; b=RVRHmFXJnwaTMJiFKzSMrgjXj7
	a1AalCTimJpVihzr+HACgWLuMjUMxDXFHcDO0Y8MFseHlBGNlGcMmhwom1cNTIlcynyV4lAZ/furv
	3efAa8DSIDHkzzCLgy2/ZR0/OkZUbYv+dTRQRfB8ywVKfQGCcLau/NAcSHB/DX19tgvjE0756G9z7
	jyj3d4leoaSD2a9J77a9YW9lxvr6vwnJNgr+GFU9elAYmnb+70y3pDq7Dg6IMy5iVUo4UWcx6UI+K
	44Y5oeHtPkrilU5LOwsN3Dc2lf5K2Cs1GUHHATfs6xsmvwrEDUe8iXDKPlNDrk0NgGMj/Ul73hsbd
	vipwIFbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9fJt-000000026KA-0Yqd;
	Wed, 22 May 2024 06:19:25 +0000
Received: from mx1.emlix.com ([178.63.209.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9fJo-000000026Jd-2SJz
	for barebox@lists.infradead.org;
	Wed, 22 May 2024 06:19:22 +0000
Received: from mailer.emlix.com (unknown [81.20.112.87])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.emlix.com (Postfix) with ESMTPS id D21E15FC10
	for <barebox@lists.infradead.org>; Wed, 22 May 2024 08:19:13 +0200 (CEST)
From: Jonas Richardsen <jonasrichardsen@emlix.com>
To: barebox@lists.infradead.org
Cc: Jonas Richardsen <jonasrichardsen@emlix.com>
Date: Wed, 22 May 2024 08:15:27 +0200
Message-ID: <20240522061819.6150-1-jonasrichardsen@emlix.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_231920_800160_AE4195BF 
X-CRM114-Status: UNSURE (   9.20  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] mci: bcm2835: Set mci host for sdhci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The pointer `sdhci.mci` is currently not being set for the bcm2835. This
leads to a null pointer dereference for example in `sdhci_wait_idle()`
if the `sdhci_read` function fails or times out.

Set the pointer within the `bcm2835_mci_probe` function. This is
analogous to the behaviour seen in `arasan_sdhci_probe`,
`fsl_esdhc_probe`, `rk_sdhci_probe` and other, similar functions.

Signed-off-by: Jonas Richardsen <jonasrichardsen@emlix.com>
---
 drivers/mci/mci-bcm2835.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 3546cc3a32..7fcf4f905b 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -382,6 +382,7 @@ static int bcm2835_mci_probe(struct device *hw_dev)
 	host->hw_dev = hw_dev;
 	host->max_clock = clk_get_rate(clk);
 
+	host->sdhci.mci = &host->mci;
 	host->sdhci.read32 = bcm2835_sdhci_read32;
 	host->sdhci.write32 = bcm2835_sdhci_write32;
 
-- 
2.42.0



