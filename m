Delivery-date: Mon, 18 May 2026 15:15:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOxog-001979-22
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 15:15:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOxof-0003C3-MM
	for lore@pengutronix.de; Mon, 18 May 2026 15:15:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rocap0sTAQFSX9ZpUBxsRAk+AUf4VWlAQ5yuGHw38oA=; b=WxdBtlMfvug+uX6yEj23oV6nhN
	bbvAzjATRaLIN5caSqny1SslxltxeYOApioGIGZJxK+x4dfNeKG7x4EIiRS3qbyIW2aVAhNmv9S/o
	xW0fZ0alRBGDsH2ivy/UPOloPhtU00nuyS7edoPMYFgJGQyR2Ok/fLARuvz8GAgNHO1GJx5sNoJAB
	QX56dSR+WwAhQ0q2duERuB5Hggj8j2YP28lvy5nrFnksnVUBj8Y2LlplSPBKgQeGd/Jv2ddrTtTd2
	RG5a2ksLkUY54KZvEOHt8IIiM3CUCpdkEfO6wgHxrt5R93iPgf6mVyriqElfGAzJ44nlpBH3QfySn
	ukLb4N6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOxnC-0000000Fm7k-3MKt;
	Mon, 18 May 2026 13:13:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOxnA-0000000Fm5R-1bEj
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 13:13:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOxms-0002Ua-Pb; Mon, 18 May 2026 15:13:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOxmr-000bPM-1z;
	Mon, 18 May 2026 15:13:38 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOxmr-000000000ZS-46L0;
	Mon, 18 May 2026 15:13:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 May 2026 15:13:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260518-rockchip-emmc-hs400-v2-9-789ce495f70b@pengutronix.de>
References: <20260518-rockchip-emmc-hs400-v2-0-789ce495f70b@pengutronix.de>
In-Reply-To: <20260518-rockchip-emmc-hs400-v2-0-789ce495f70b@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779110017; l=2533;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=k9NYyKR5kdTewWeuyCaqbkWmnjaGhiXF/j573hF3zh4=;
 b=hVXuFJGyAYQvGizBgfJpp4TiZqlUGKBpdisIX3tJPdMlGPsnszXdAmr5P6W75vOcSgNdQk8Lg
 4oK22b3tNZWD/5O2/iyI3/V0c3Me1Jo8DMWTnfeT9o9d8qjG3AfgXkI
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_061356_445571_19B7062C 
X-CRM114-Status: GOOD (  12.26  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 09/10] mci: sdhci: rockchip: support HS400
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

After sdhci_set_clock() runs sdhci_set_uhs_signaling() (which writes
the standard SDHCI_CTRL_HS400 = 0x5 to HOST_CONTROL2's UHS field) and
the SDCLK is gated for the high-speed DLL config, fix up two things
that the dwcmshc controller needs in HS400:

- HOST_CONTROL2's UHS field needs DWCMSHC_CTRL_HS400 (0x7) instead of
  the standard SDHCI_CTRL_HS400 (0x5).
- EMMC_CONTROL.CARD_IS_EMMC (BIT 0 at offset 0x52c) must be set to
  enable the data-strobe sampling path that HS400 uses.

The high-speed DLL branch (>52 MHz) already programs DLL_TXCLK,
DLL_STRBIN and locks the DLL the same way HS200 does, which is what
HS400 needs as well. Together with the core HS200 -> HS -> HS400
transition, this lets HS400 run on rk3568 / rk3588.

Tested on a K3588 Radxa Rock5T board.

Assisted-by: Claude Opus 4.7
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 4b2ee03e9a..2b55456f05 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -18,6 +18,7 @@
 #define DWCMSHC_VER_TYPE		0x504
 #define DWCMSHC_HOST_CTRL3		0x508
 #define DWCMSHC_EMMC_CONTROL		0x52c
+#define  DWCMSHC_CARD_IS_EMMC		BIT(0)
 #define DWCMSHC_EMMC_ATCTRL		0x540
 
 /* Rockchip specific Registers */
@@ -183,6 +184,25 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 	/* Disable clock while config DLL */
 	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
 
+	/*
+	 * HS400 needs the dwcmshc-specific value (0x7) in HOST_CONTROL2's UHS
+	 * field rather than the standard SDHCI_CTRL_HS400 (0x5) the generic
+	 * sdhci_set_uhs_signaling() wrote. It also requires CARD_IS_EMMC in
+	 * EMMC_CONTROL to enable the data strobe sampling path.
+	 */
+	if (host->mci.ios.timing == MMC_TIMING_MMC_HS400) {
+		u16 ctrl_2;
+
+		ctrl_2 = sdhci_read16(&host->sdhci, SDHCI_HOST_CONTROL2);
+		ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
+		ctrl_2 |= DWCMSHC_CTRL_HS400;
+		sdhci_write16(&host->sdhci, SDHCI_HOST_CONTROL2, ctrl_2);
+
+		extra = sdhci_read16(&host->sdhci, DWCMSHC_EMMC_CONTROL);
+		extra |= DWCMSHC_CARD_IS_EMMC;
+		sdhci_write16(&host->sdhci, DWCMSHC_EMMC_CONTROL, extra);
+	}
+
 	if (clock <= 52000000) {
 		/*
 		 * Disable DLL and reset both of sample and drive clock.

-- 
2.47.3



