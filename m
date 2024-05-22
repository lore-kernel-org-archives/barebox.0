Delivery-date: Wed, 22 May 2024 10:08:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9h1W-00DPU9-2n
	for lore@lore.pengutronix.de;
	Wed, 22 May 2024 10:08:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9h1U-0004ic-6h
	for lore@pengutronix.de; Wed, 22 May 2024 10:08:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TULJEM0S1XwNR2XJtuQispY+GyX/1kL1zGqlmsDrxUk=; b=WhsnmbKV4skQzPuZtlp9L3Djdu
	Jg5G3kezRv+8xdtqr81NbBlhj13dqGbYRvS85+zQBXVAwvOSBX4/M+zwtOKf6ZygMHVM99SEeRIcQ
	H2HxnLPIQ+76GbyVOp1haOEPd0Y1SNuI6ZbMC9YRbeF0GAulPdXOFCozOZCTGMpXXGyV6VwUQG+ne
	oKyDiAPG07KCQIjHAtTTg60zxEJ6GPi5eguyfLVHmncsrDXUpxZm1vR33K0VlIr+YCIZ52+pXzCvV
	/aP43IqD6mRqUN6cfp38UjgetmiEc03Dx8WrCzw8BFoopJP6sPEYbSZJTCH+G/sAEB28bLr142wn0
	h0W2xNjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9h0x-00000002JFD-3HJS;
	Wed, 22 May 2024 08:07:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9h0t-00000002JDY-3aKY
	for barebox@lists.infradead.org;
	Wed, 22 May 2024 08:07:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9h0c-0004Kw-BF; Wed, 22 May 2024 10:07:38 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9h0a-002Uq4-2a; Wed, 22 May 2024 10:07:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9h0Z-008FGq-3D;
	Wed, 22 May 2024 10:07:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jonas Richardsen <jonasrichardsen@emlix.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 May 2024 10:07:34 +0200
Message-Id: <20240522080734.1965257-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240522080734.1965257-1-a.fatoum@pengutronix.de>
References: <20240522080734.1965257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240522_010756_170661_2D127B02 
X-CRM114-Status: UNSURE (   9.37  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] mci: sdhci: populate struct sdhci::mci in drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

sdhci_wait_idle will make use of the mci's device to prefix error
messages, thus populate the field where it's still missing.

Reported-by: Jonas Richardsen <jonasrichardsen@emlix.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/atmel-sdhci.c | 1 +
 drivers/mci/dove-sdhci.c  | 1 +
 drivers/mci/tegra-sdmmc.c | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/mci/atmel-sdhci.c b/drivers/mci/atmel-sdhci.c
index c124e736bb7d..4082d1769537 100644
--- a/drivers/mci/atmel-sdhci.c
+++ b/drivers/mci/atmel-sdhci.c
@@ -139,6 +139,7 @@ static int at91_sdhci_probe(struct device *dev)
 						    "microchip,sdcal-inverted");
 
 	at91_sdhci_mmio_init(&priv->host, IOMEM(iores->start));
+	priv->host.sdhci.mci = &priv->mci;
 
 	priv->gck_rate = at91_sdhci_conf_clks(priv);
 	if (priv->gck_rate < 0)
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index d37046ad31bf..c370ace9e8f8 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -271,6 +271,7 @@ static int dove_sdhci_probe(struct device *dev)
 
 	host = xzalloc(sizeof(*host));
 	host->sdhci.base = dev_request_mem_region(dev, 0);
+	host->sdhci.mci = &host->mci;
 	host->mci.max_req_size = 0x8000;
 	host->mci.hw_dev = dev;
 	host->mci.send_cmd = dove_sdhci_mci_send_cmd;
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index e940edf3227a..10017146417d 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -401,6 +401,7 @@ static int tegra_sdmmc_probe(struct device *dev)
 
 	host->sdhci.read32 = tegra_sdmmc_read32;
 	host->sdhci.write32 = tegra_sdmmc_write32;
+	host->sdhci.mci = mci;
 
 	mci->hw_dev = dev;
 	mci->f_max = 48000000;
-- 
2.39.2



