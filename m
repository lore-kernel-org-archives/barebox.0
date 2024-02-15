Delivery-date: Thu, 15 Feb 2024 17:31:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raedd-007dAk-2L
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 17:31:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raedb-0005iB-Rz
	for lore@pengutronix.de; Thu, 15 Feb 2024 17:31:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nbs4qHyus/d4uyVy8LJ9HHCx77eRI+mlOUKB0QM2NcE=; b=GKxFeI93uu9myeW/5a1Y9MnbNq
	skS35s+PxTw3e+ypVnwMT6xIQ/JHGV8TMe0JdzCTV7yr8qXvptpLMQRflCFWRRI5JyrIo1m3QFwe9
	6DjHOZc57zhrhelr56N7sMYvSAPbxyHy5RVzMIuK1uN9o1R1d71kE9iBlM6x37iAvSBf5oT+VDbS2
	5eZpAo0tpzAQlz5JiLA7FwRH6JyB0rnPerhz1f5sNtaBoTdGz2bdtVApLDrykYdAHNnDEx3TiQ8Pq
	q9Y4a3xb3hBzU3XNw5PlvBHOV2i50/PgzGwazu+9P3InKd6D7cjLGtdTpCm+AsqMkhZkiGJvrN2Az
	Ux37uDNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raecw-0000000GyP1-0gWK;
	Thu, 15 Feb 2024 16:30:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raecr-0000000GyLg-2GGu
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 16:30:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-0005H2-Ht; Thu, 15 Feb 2024 17:30:13 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-000uzI-1S; Thu, 15 Feb 2024 17:30:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecm-009YG0-36;
	Thu, 15 Feb 2024 17:30:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 17:29:55 +0100
Message-Id: <20240215163009.2172795-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_083017_644513_6544C912 
X-CRM114-Status: GOOD (  12.07  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 01/15] mci: atmel_mci: disable power save mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Power saving mode will clock down the MCI clock according to the value
of the PWSDIV (Power Saving Divider) field of the mode register.

No where in Linux or barebox do we set a value for PWSDIV however, so
the safe thing to do is disabling power saving mode.

This aligns barebox with what AT91Bootstrap and the U-Boot driver are
doing and fixes SD-Card block write failures when using barebox as first
stage bootloader on the AT91SAM9263.

Without this change, writing the environment would fail in barebox,
an ext4 fsck in Linux would hang and barebox PBL chainloading of barebox
proper would hang when CONFIG_DEBUG_PBL is disabled.

Fixes: 6cf02124b10d ("mci: add Atmel AT91 MCI driver")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v3:
  - new patch
---
 drivers/mci/atmel_mci.c     | 1 +
 drivers/mci/atmel_mci_pbl.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 431331ddc310..9021dba0f89b 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -151,6 +151,7 @@ static int atmci_probe(struct device *hw_dev)
 
 	clk_enable(host->clk);
 	atmci_writel(host, ATMCI_CR, ATMCI_CR_SWRST);
+	atmci_writel(host, ATMCI_CR, ATMCI_CR_PWSDIS);
 	atmci_writel(host, ATMCI_IDR, ~0UL);
 	host->bus_hz = clk_get_rate(host->clk);
 	clk_disable(host->clk);
diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
index 7483e9375f1d..bd4faa4de5f0 100644
--- a/drivers/mci/atmel_mci_pbl.c
+++ b/drivers/mci/atmel_mci_pbl.c
@@ -106,6 +106,7 @@ int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
 	else
 		host->sdc_reg = ATMCI_SDCSEL_SLOT_A;
 
+	atmci_writel(host, ATMCI_CR, ATMCI_CR_PWSDIS);
 	atmci_writel(host, ATMCI_DTOR, 0x7f);
 
 	atmci_common_set_ios(host, &ios);
-- 
2.39.2



