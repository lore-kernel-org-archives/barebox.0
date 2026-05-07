Delivery-date: Thu, 07 May 2026 09:09:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKsqy-001shQ-2S
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 09:09:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKsqs-0001Ub-7A
	for lore@pengutronix.de; Thu, 07 May 2026 09:08:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZKGLOKwgLxfklf8YLnVWXr2CiXkz8sonx3Iej19BLH4=; b=hTUY8wzs0fEa6Ph7QsSenqYLSQ
	mulXClxxYKk0zvy83N/3f7Y5+GLMoITuU/1UWkrSzO8FBVrJq5UzdtgEXiy8vKG7l4MhKPPvsBSAT
	jnYqsjBnnBtPgkcZEHcWCTNdruvlC/yKa+yXLFBY35VQU+uZ+n439XYXleZy8PO5e+3bvLgu0AIC2
	1iwADroraT/UpcGDu9IWoinSuuYW7FKkYMZiOca2LSc5LlEumL/JdQAO/TKlU4iAMcodg+Os91wGK
	bczAm/8Aq3cJ4N0qo+pDNXMWC5RZhtfhDltyST5ICQmowSJZnZ1ko/8gQDUmePlx06dt0WCgJO9xH
	uzfY6q3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKsl3-00000002yyU-16fc;
	Thu, 07 May 2026 07:02:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKsl2-00000002ywT-0id4
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 07:02:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-0006NT-US; Thu, 07 May 2026 09:02:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-000sMa-0Z;
	Thu, 07 May 2026 09:02:48 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-0000000BYFq-25yt;
	Thu, 07 May 2026 09:02:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 07 May 2026 09:02:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260507-rockchip-emmc-v1-2-5e8109e8059d@pengutronix.de>
References: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
In-Reply-To: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778137368; l=1928;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=GGudh1tkyfUbwG69fvlPYJusYUbpmXw6UjV8XvZ7ucI=;
 b=nYp8OQPvXpWS3t4AIGJSrWAk7y6SXozGGW23zxK/I10dMoG9EsHQf8kHCmfxkziNVIyLsPXBa
 u3AMJ/hT54nDtlIsmUCSL/6624EVJQI9Qr5OmDqcFIIqOmFYylWVec7
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_000252_225762_08A1892D 
X-CRM114-Status: GOOD (  10.14  )
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
Subject: [PATCH 2/6] mci: sdhci: rockchip: disable clock while setting DLL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

sdhci_set_clock() enabled the clock. Linux explicitly disables the clock
after that is called and before the DLL is configured. Do likewise in barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 981f90af63..398c258fb9 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -162,6 +162,9 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 	extra &= ~BIT(0);
 	sdhci_write32(&host->sdhci, DWCMSHC_HOST_CTRL3, extra);
 
+	/* Disable clock while config DLL */
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
+
 	if (clock <= 52000000) {
 		/*
 		 * Disable DLL and reset both of sample and drive clock.
@@ -181,7 +184,7 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 			DLL_STRBIN_DELAY_NUM_SEL |
 			DLL_STRBIN_DELAY_NUM_DEFAULT << DLL_STRBIN_DELAY_NUM_OFFSET;
 		sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_STRBIN, extra);
-		return;
+		goto enable_clock;
         }
 
 	/* Reset DLL */
@@ -199,7 +202,7 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 				 500 * USEC_PER_MSEC);
 	if (err) {
 		dev_err(host->mci.hw_dev, "DLL lock timeout!\n");
-		return;
+		goto enable_clock;
 	}
 
 	extra = 0x1 << 16 | /* tune clock stop en */
@@ -216,6 +219,10 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 		DLL_STRBIN_TAPNUM_DEFAULT |
 		DLL_STRBIN_TAPNUM_FROM_SW;
 	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_STRBIN, extra);
+enable_clock:
+	sdhci_enable_clk(&host->sdhci, 0);
+
+	return;
 }
 
 static void rk_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)

-- 
2.47.3



